import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Source
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Row

/-!
Pair-sign producer-coverage descriptor chunk.

Generated bounded smoke evidence. This is not global coverage.
Phase: 6Z.6K.8AM.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Chunks.Chunk004

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Source
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Row

set_option linter.unusedVariables false

/-- Pair-sign producer coverage key `4a8d2b3cfc4c86105889db959af8fcec1421219acbba9683a9f989a36c732901`.
Observed representative GoodDirection cases: 1. -/
private def fam_256_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_256_key : SourceIndexStateKey where
  firstIndex := 52
  secondIndex := 5
  support := fam_256_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_256_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        52 5 source_201_support r mask) :
    source_201_producer.Applies fam_256_key r mask := by
  unfold source_201_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_256_key, fam_256_support, source_201_support],
    hsource⟩⟩⟩

theorem fam_256_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_256_key.support r mask) :
    row_008_producer.Applies fam_256_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_256_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        52 5 source_201_support r mask)
    (hrows : ExactTwoSourceValidRows fam_256_key.support r mask) :
    SourceIndexStateKeyFacts fam_256_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_201_producer.sourceFacts
      (fam_256_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_256_rowApplies_of_rows hrows))

theorem fam_256_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        52 5 source_201_support r mask)
    (hrows : ExactTwoSourceValidRows fam_256_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_256_key.goodKilled_of_source_row
    (source_201_producer.sourceFacts
      (fam_256_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_256_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `5d1cb9b8446a011ca56b627e2304b5827adde7e7912fdd3b2f1155df4c4a6564`.
Observed representative GoodDirection cases: 1. -/
private def fam_257_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_257_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 6
  support := fam_257_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_257_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 6 source_294_support r mask) :
    source_294_producer.Applies fam_257_key r mask := by
  unfold source_294_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_257_key, fam_257_support, source_294_support],
    hsource⟩⟩⟩

theorem fam_257_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_257_key.support r mask) :
    row_009_producer.Applies fam_257_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_257_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 6 source_294_support r mask)
    (hrows : ExactTwoSourceValidRows fam_257_key.support r mask) :
    SourceIndexStateKeyFacts fam_257_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_294_producer.sourceFacts
      (fam_257_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_257_rowApplies_of_rows hrows))

theorem fam_257_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 6 source_294_support r mask)
    (hrows : ExactTwoSourceValidRows fam_257_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_257_key.goodKilled_of_source_row
    (source_294_producer.sourceFacts
      (fam_257_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_257_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `5eb0c3d816e9ae0244f9f8027a8608d0a114355a14521202f75873951bb8882c`.
Observed representative GoodDirection cases: 1. -/
private def fam_258_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_258_key : SourceIndexStateKey where
  firstIndex := 126
  secondIndex := 9
  support := fam_258_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_258_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        126 9 source_252_support r mask) :
    source_252_producer.Applies fam_258_key r mask := by
  unfold source_252_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_258_key, fam_258_support, source_252_support],
    hsource⟩⟩⟩

theorem fam_258_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_258_key.support r mask) :
    row_008_producer.Applies fam_258_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_258_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        126 9 source_252_support r mask)
    (hrows : ExactTwoSourceValidRows fam_258_key.support r mask) :
    SourceIndexStateKeyFacts fam_258_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_252_producer.sourceFacts
      (fam_258_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_258_rowApplies_of_rows hrows))

theorem fam_258_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        126 9 source_252_support r mask)
    (hrows : ExactTwoSourceValidRows fam_258_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_258_key.goodKilled_of_source_row
    (source_252_producer.sourceFacts
      (fam_258_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_258_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `629a62da3465ba6b899d24d161da03ceca234eceb0421f760e2eb5b0b7a43605`.
Observed representative GoodDirection cases: 1. -/
private def fam_259_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_259_key : SourceIndexStateKey where
  firstIndex := 165
  secondIndex := 8
  support := fam_259_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_259_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 8 source_240_support r mask) :
    source_240_producer.Applies fam_259_key r mask := by
  unfold source_240_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_259_key, fam_259_support, source_240_support],
    hsource⟩⟩⟩

theorem fam_259_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_259_key.support r mask) :
    row_009_producer.Applies fam_259_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_259_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 8 source_240_support r mask)
    (hrows : ExactTwoSourceValidRows fam_259_key.support r mask) :
    SourceIndexStateKeyFacts fam_259_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_240_producer.sourceFacts
      (fam_259_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_259_rowApplies_of_rows hrows))

theorem fam_259_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 8 source_240_support r mask)
    (hrows : ExactTwoSourceValidRows fam_259_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_259_key.goodKilled_of_source_row
    (source_240_producer.sourceFacts
      (fam_259_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_259_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `67631e38e5e1a4a1f9da811292e7dfcd992022df0ac5818d1b87e4abf3030053`.
Observed representative GoodDirection cases: 1. -/
private def fam_260_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_260_key : SourceIndexStateKey where
  firstIndex := 52
  secondIndex := 5
  support := fam_260_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_260_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        52 5 source_201_support r mask) :
    source_201_producer.Applies fam_260_key r mask := by
  unfold source_201_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_260_key, fam_260_support, source_201_support],
    hsource⟩⟩⟩

theorem fam_260_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_260_key.support r mask) :
    row_010_producer.Applies fam_260_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_260_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        52 5 source_201_support r mask)
    (hrows : ExactTwoSourceValidRows fam_260_key.support r mask) :
    SourceIndexStateKeyFacts fam_260_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_201_producer.sourceFacts
      (fam_260_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_260_rowApplies_of_rows hrows))

theorem fam_260_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        52 5 source_201_support r mask)
    (hrows : ExactTwoSourceValidRows fam_260_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_260_key.goodKilled_of_source_row
    (source_201_producer.sourceFacts
      (fam_260_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_260_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `6da034321ddb7b7f2a15958b4dea89d4cafddf0a6df0df9fea409ba6db8b7072`.
Observed representative GoodDirection cases: 1. -/
private def fam_261_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨12, by decide⟩
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_261_key : SourceIndexStateKey where
  firstIndex := 16
  secondIndex := 6
  support := fam_261_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_261_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 6 source_143_support r mask) :
    source_143_producer.Applies fam_261_key r mask := by
  unfold source_143_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_261_key, fam_261_support, source_143_support],
    hsource⟩⟩⟩

theorem fam_261_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_261_key.support r mask) :
    row_010_producer.Applies fam_261_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_261_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 6 source_143_support r mask)
    (hrows : ExactTwoSourceValidRows fam_261_key.support r mask) :
    SourceIndexStateKeyFacts fam_261_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_143_producer.sourceFacts
      (fam_261_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_261_rowApplies_of_rows hrows))

theorem fam_261_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 6 source_143_support r mask)
    (hrows : ExactTwoSourceValidRows fam_261_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_261_key.goodKilled_of_source_row
    (source_143_producer.sourceFacts
      (fam_261_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_261_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `75fde4820070e219ff99d69617daa3b2dfea40d323098416ca0acb1281883461`.
Observed representative GoodDirection cases: 1. -/
private def fam_262_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_262_key : SourceIndexStateKey where
  firstIndex := 154
  secondIndex := 6
  support := fam_262_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_262_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 6 source_232_support r mask) :
    source_232_producer.Applies fam_262_key r mask := by
  unfold source_232_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_262_key, fam_262_support, source_232_support],
    hsource⟩⟩⟩

theorem fam_262_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_262_key.support r mask) :
    row_013_producer.Applies fam_262_key r mask := by
  unfold row_013_producer
  exact ⟨rfl, hrows⟩

theorem fam_262_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 6 source_232_support r mask)
    (hrows : ExactTwoSourceValidRows fam_262_key.support r mask) :
    SourceIndexStateKeyFacts fam_262_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_232_producer.sourceFacts
      (fam_262_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_262_rowApplies_of_rows hrows))

theorem fam_262_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 6 source_232_support r mask)
    (hrows : ExactTwoSourceValidRows fam_262_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_262_key.goodKilled_of_source_row
    (source_232_producer.sourceFacts
      (fam_262_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_262_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7ebf4bdf0a90abfb11ce48e2d9448beb9620c51f2b4409bad2bdd9a5b11d39f4`.
Observed representative GoodDirection cases: 1. -/
private def fam_263_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_263_key : SourceIndexStateKey where
  firstIndex := 6
  secondIndex := 9
  support := fam_263_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_263_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 9 source_293_support r mask) :
    source_293_producer.Applies fam_263_key r mask := by
  unfold source_293_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_263_key, fam_263_support, source_293_support],
    hsource⟩⟩⟩

theorem fam_263_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_263_key.support r mask) :
    row_010_producer.Applies fam_263_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_263_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 9 source_293_support r mask)
    (hrows : ExactTwoSourceValidRows fam_263_key.support r mask) :
    SourceIndexStateKeyFacts fam_263_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_293_producer.sourceFacts
      (fam_263_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_263_rowApplies_of_rows hrows))

theorem fam_263_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        6 9 source_293_support r mask)
    (hrows : ExactTwoSourceValidRows fam_263_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_263_key.goodKilled_of_source_row
    (source_293_producer.sourceFacts
      (fam_263_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_263_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7f318e07e8a6320afd7cfab8309db295263b9233f01638a00f866b9f4dd1a165`.
Observed representative GoodDirection cases: 1. -/
private def fam_264_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_264_key : SourceIndexStateKey where
  firstIndex := 35
  secondIndex := 8
  support := fam_264_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_264_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        35 8 source_270_support r mask) :
    source_270_producer.Applies fam_264_key r mask := by
  unfold source_270_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_264_key, fam_264_support, source_270_support],
    hsource⟩⟩⟩

theorem fam_264_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_264_key.support r mask) :
    row_009_producer.Applies fam_264_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_264_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        35 8 source_270_support r mask)
    (hrows : ExactTwoSourceValidRows fam_264_key.support r mask) :
    SourceIndexStateKeyFacts fam_264_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_270_producer.sourceFacts
      (fam_264_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_264_rowApplies_of_rows hrows))

theorem fam_264_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        35 8 source_270_support r mask)
    (hrows : ExactTwoSourceValidRows fam_264_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_264_key.goodKilled_of_source_row
    (source_270_producer.sourceFacts
      (fam_264_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_264_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `83da0f0ceac418b1902f4c6fb43f8091fab8118f5e9bbe590c75367336b3e032`.
Observed representative GoodDirection cases: 1. -/
private def fam_265_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_265_key : SourceIndexStateKey where
  firstIndex := 5
  secondIndex := 9
  support := fam_265_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_265_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 9 source_297_support r mask) :
    source_297_producer.Applies fam_265_key r mask := by
  unfold source_297_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_265_key, fam_265_support, source_297_support],
    hsource⟩⟩⟩

theorem fam_265_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_265_key.support r mask) :
    row_013_producer.Applies fam_265_key r mask := by
  unfold row_013_producer
  exact ⟨rfl, hrows⟩

theorem fam_265_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 9 source_297_support r mask)
    (hrows : ExactTwoSourceValidRows fam_265_key.support r mask) :
    SourceIndexStateKeyFacts fam_265_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_297_producer.sourceFacts
      (fam_265_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_265_rowApplies_of_rows hrows))

theorem fam_265_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 9 source_297_support r mask)
    (hrows : ExactTwoSourceValidRows fam_265_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_265_key.goodKilled_of_source_row
    (source_297_producer.sourceFacts
      (fam_265_sourceApplies_of_sourcePredicate hsource))
    (row_013_producer.rowFacts
      (fam_265_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `87e66ab09ff1fe651bfca813836f7a25f7b21d39823cde48d754052969c4a9fa`.
Observed representative GoodDirection cases: 1. -/
private def fam_266_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_266_key : SourceIndexStateKey where
  firstIndex := 15
  secondIndex := 5
  support := fam_266_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_266_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 5 source_107_support r mask) :
    source_107_producer.Applies fam_266_key r mask := by
  unfold source_107_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_266_key, fam_266_support, source_107_support],
    hsource⟩⟩⟩

theorem fam_266_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_266_key.support r mask) :
    row_010_producer.Applies fam_266_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_266_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 5 source_107_support r mask)
    (hrows : ExactTwoSourceValidRows fam_266_key.support r mask) :
    SourceIndexStateKeyFacts fam_266_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_107_producer.sourceFacts
      (fam_266_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_266_rowApplies_of_rows hrows))

theorem fam_266_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 5 source_107_support r mask)
    (hrows : ExactTwoSourceValidRows fam_266_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_266_key.goodKilled_of_source_row
    (source_107_producer.sourceFacts
      (fam_266_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_266_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8a6582eab83215c4aed1a62d3c947075a736b6755ee21be4b771cb4478609544`.
Observed representative GoodDirection cases: 1. -/
private def fam_267_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_267_key : SourceIndexStateKey where
  firstIndex := 102
  secondIndex := 5
  support := fam_267_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_267_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        102 5 source_279_support r mask) :
    source_279_producer.Applies fam_267_key r mask := by
  unfold source_279_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_267_key, fam_267_support, source_279_support],
    hsource⟩⟩⟩

theorem fam_267_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_267_key.support r mask) :
    row_010_producer.Applies fam_267_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_267_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        102 5 source_279_support r mask)
    (hrows : ExactTwoSourceValidRows fam_267_key.support r mask) :
    SourceIndexStateKeyFacts fam_267_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_279_producer.sourceFacts
      (fam_267_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_267_rowApplies_of_rows hrows))

theorem fam_267_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        102 5 source_279_support r mask)
    (hrows : ExactTwoSourceValidRows fam_267_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_267_key.goodKilled_of_source_row
    (source_279_producer.sourceFacts
      (fam_267_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_267_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8afc37703c8382469ef17f5607e307859529f1ae4ed3da198185464573b9dfbe`.
Observed representative GoodDirection cases: 1. -/
private def fam_268_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
private def fam_268_key : SourceIndexStateKey where
  firstIndex := 97
  secondIndex := 70
  support := fam_268_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_268_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 70 source_231_support r mask) :
    source_231_producer.Applies fam_268_key r mask := by
  unfold source_231_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_268_key, fam_268_support, source_231_support],
    hsource⟩⟩⟩

theorem fam_268_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_268_key.support r mask) :
    row_008_producer.Applies fam_268_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_268_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 70 source_231_support r mask)
    (hrows : ExactTwoSourceValidRows fam_268_key.support r mask) :
    SourceIndexStateKeyFacts fam_268_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_231_producer.sourceFacts
      (fam_268_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_268_rowApplies_of_rows hrows))

theorem fam_268_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 70 source_231_support r mask)
    (hrows : ExactTwoSourceValidRows fam_268_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_268_key.goodKilled_of_source_row
    (source_231_producer.sourceFacts
      (fam_268_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_268_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8ce4319ccc35b0838e05ad7c28a31f20d1bd5772aa82370639218547d18e26e2`.
Observed representative GoodDirection cases: 1. -/
private def fam_269_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_269_key : SourceIndexStateKey where
  firstIndex := 34
  secondIndex := 8
  support := fam_269_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_269_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        34 8 source_260_support r mask) :
    source_260_producer.Applies fam_269_key r mask := by
  unfold source_260_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_269_key, fam_269_support, source_260_support],
    hsource⟩⟩⟩

theorem fam_269_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_269_key.support r mask) :
    row_009_producer.Applies fam_269_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_269_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        34 8 source_260_support r mask)
    (hrows : ExactTwoSourceValidRows fam_269_key.support r mask) :
    SourceIndexStateKeyFacts fam_269_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_260_producer.sourceFacts
      (fam_269_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_269_rowApplies_of_rows hrows))

theorem fam_269_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        34 8 source_260_support r mask)
    (hrows : ExactTwoSourceValidRows fam_269_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_269_key.goodKilled_of_source_row
    (source_260_producer.sourceFacts
      (fam_269_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_269_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `9240b74a199ddbbb1ce85f2daf889165b2010684edd3e546834d540b97326edf`.
Observed representative GoodDirection cases: 1. -/
private def fam_270_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_270_key : SourceIndexStateKey where
  firstIndex := 166
  secondIndex := 5
  support := fam_270_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_270_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 5 source_262_support r mask) :
    source_262_producer.Applies fam_270_key r mask := by
  unfold source_262_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_270_key, fam_270_support, source_262_support],
    hsource⟩⟩⟩

theorem fam_270_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_270_key.support r mask) :
    row_008_producer.Applies fam_270_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_270_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 5 source_262_support r mask)
    (hrows : ExactTwoSourceValidRows fam_270_key.support r mask) :
    SourceIndexStateKeyFacts fam_270_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_262_producer.sourceFacts
      (fam_270_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_270_rowApplies_of_rows hrows))

theorem fam_270_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 5 source_262_support r mask)
    (hrows : ExactTwoSourceValidRows fam_270_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_270_key.goodKilled_of_source_row
    (source_262_producer.sourceFacts
      (fam_270_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_270_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `9565acf7d7f7e3c90a4fb216737848d49a109fc364b9cff54ef3761f4d602b14`.
Observed representative GoodDirection cases: 1. -/
private def fam_271_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_271_key : SourceIndexStateKey where
  firstIndex := 114
  secondIndex := 6
  support := fam_271_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_271_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        114 6 source_233_support r mask) :
    source_233_producer.Applies fam_271_key r mask := by
  unfold source_233_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_271_key, fam_271_support, source_233_support],
    hsource⟩⟩⟩

theorem fam_271_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_271_key.support r mask) :
    row_009_producer.Applies fam_271_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_271_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        114 6 source_233_support r mask)
    (hrows : ExactTwoSourceValidRows fam_271_key.support r mask) :
    SourceIndexStateKeyFacts fam_271_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_233_producer.sourceFacts
      (fam_271_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_271_rowApplies_of_rows hrows))

theorem fam_271_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        114 6 source_233_support r mask)
    (hrows : ExactTwoSourceValidRows fam_271_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_271_key.goodKilled_of_source_row
    (source_233_producer.sourceFacts
      (fam_271_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_271_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ab17eb62ebc9155177b5f3b559b923fcbe279d923845cf917f0575e00d74b0b3`.
Observed representative GoodDirection cases: 1. -/
private def fam_272_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_272_key : SourceIndexStateKey where
  firstIndex := 138
  secondIndex := 8
  support := fam_272_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_272_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        138 8 source_238_support r mask) :
    source_238_producer.Applies fam_272_key r mask := by
  unfold source_238_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_272_key, fam_272_support, source_238_support],
    hsource⟩⟩⟩

theorem fam_272_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_272_key.support r mask) :
    row_008_producer.Applies fam_272_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_272_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        138 8 source_238_support r mask)
    (hrows : ExactTwoSourceValidRows fam_272_key.support r mask) :
    SourceIndexStateKeyFacts fam_272_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_238_producer.sourceFacts
      (fam_272_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_272_rowApplies_of_rows hrows))

theorem fam_272_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        138 8 source_238_support r mask)
    (hrows : ExactTwoSourceValidRows fam_272_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_272_key.goodKilled_of_source_row
    (source_238_producer.sourceFacts
      (fam_272_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_272_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `aba7fa5bfdfe17c46ab677e2d650fecb0bc52213a611e16ace70c35c8679d47a`.
Observed representative GoodDirection cases: 1. -/
private def fam_273_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_273_key : SourceIndexStateKey where
  firstIndex := 15
  secondIndex := 9
  support := fam_273_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_273_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 9 source_166_support r mask) :
    source_166_producer.Applies fam_273_key r mask := by
  unfold source_166_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_273_key, fam_273_support, source_166_support],
    hsource⟩⟩⟩

theorem fam_273_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_273_key.support r mask) :
    row_009_producer.Applies fam_273_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_273_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 9 source_166_support r mask)
    (hrows : ExactTwoSourceValidRows fam_273_key.support r mask) :
    SourceIndexStateKeyFacts fam_273_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_166_producer.sourceFacts
      (fam_273_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_273_rowApplies_of_rows hrows))

theorem fam_273_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 9 source_166_support r mask)
    (hrows : ExactTwoSourceValidRows fam_273_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_273_key.goodKilled_of_source_row
    (source_166_producer.sourceFacts
      (fam_273_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_273_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ababd8a2218ea0976eb765face622405e11e8dc5962f3ea775f0de48f556d1f5`.
Observed representative GoodDirection cases: 1. -/
private def fam_274_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_274_key : SourceIndexStateKey where
  firstIndex := 125
  secondIndex := 8
  support := fam_274_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_274_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 8 source_195_support r mask) :
    source_195_producer.Applies fam_274_key r mask := by
  unfold source_195_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_274_key, fam_274_support, source_195_support],
    hsource⟩⟩⟩

theorem fam_274_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_274_key.support r mask) :
    row_008_producer.Applies fam_274_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_274_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 8 source_195_support r mask)
    (hrows : ExactTwoSourceValidRows fam_274_key.support r mask) :
    SourceIndexStateKeyFacts fam_274_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_195_producer.sourceFacts
      (fam_274_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_274_rowApplies_of_rows hrows))

theorem fam_274_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 8 source_195_support r mask)
    (hrows : ExactTwoSourceValidRows fam_274_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_274_key.goodKilled_of_source_row
    (source_195_producer.sourceFacts
      (fam_274_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_274_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b1fd9664f3b3d93369a1f5fd85da78643afef631931bdacbc4fe91b7aad3d5fd`.
Observed representative GoodDirection cases: 1. -/
private def fam_275_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tppp
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_275_key : SourceIndexStateKey where
  firstIndex := 173
  secondIndex := 6
  support := fam_275_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_275_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        173 6 source_292_support r mask) :
    source_292_producer.Applies fam_275_key r mask := by
  unfold source_292_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_275_key, fam_275_support, source_292_support],
    hsource⟩⟩⟩

theorem fam_275_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_275_key.support r mask) :
    row_008_producer.Applies fam_275_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_275_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        173 6 source_292_support r mask)
    (hrows : ExactTwoSourceValidRows fam_275_key.support r mask) :
    SourceIndexStateKeyFacts fam_275_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_292_producer.sourceFacts
      (fam_275_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_275_rowApplies_of_rows hrows))

theorem fam_275_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        173 6 source_292_support r mask)
    (hrows : ExactTwoSourceValidRows fam_275_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_275_key.goodKilled_of_source_row
    (source_292_producer.sourceFacts
      (fam_275_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_275_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b2742b242565b696524bacec4b91e5d1514fc20f9fd6b4c225ef8da6fbfa68b4`.
Observed representative GoodDirection cases: 1. -/
private def fam_276_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_276_key : SourceIndexStateKey where
  firstIndex := 125
  secondIndex := 6
  support := fam_276_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_276_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 6 source_256_support r mask) :
    source_256_producer.Applies fam_276_key r mask := by
  unfold source_256_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_276_key, fam_276_support, source_256_support],
    hsource⟩⟩⟩

theorem fam_276_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_276_key.support r mask) :
    row_008_producer.Applies fam_276_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_276_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 6 source_256_support r mask)
    (hrows : ExactTwoSourceValidRows fam_276_key.support r mask) :
    SourceIndexStateKeyFacts fam_276_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_256_producer.sourceFacts
      (fam_276_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_276_rowApplies_of_rows hrows))

theorem fam_276_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 6 source_256_support r mask)
    (hrows : ExactTwoSourceValidRows fam_276_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_276_key.goodKilled_of_source_row
    (source_256_producer.sourceFacts
      (fam_276_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_276_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b8248b1400ddb058def30d5ca482158301acec6ff5100850d22be74a6c079c75`.
Observed representative GoodDirection cases: 1. -/
private def fam_277_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_277_key : SourceIndexStateKey where
  firstIndex := 150
  secondIndex := 9
  support := fam_277_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_277_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        150 9 source_223_support r mask) :
    source_223_producer.Applies fam_277_key r mask := by
  unfold source_223_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_277_key, fam_277_support, source_223_support],
    hsource⟩⟩⟩

theorem fam_277_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_277_key.support r mask) :
    row_008_producer.Applies fam_277_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_277_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        150 9 source_223_support r mask)
    (hrows : ExactTwoSourceValidRows fam_277_key.support r mask) :
    SourceIndexStateKeyFacts fam_277_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_223_producer.sourceFacts
      (fam_277_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_277_rowApplies_of_rows hrows))

theorem fam_277_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        150 9 source_223_support r mask)
    (hrows : ExactTwoSourceValidRows fam_277_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_277_key.goodKilled_of_source_row
    (source_223_producer.sourceFacts
      (fam_277_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_277_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `bab623074c7190879210838f27ff14eb9122e1941c6bea7309714fb2f00d3062`.
Observed representative GoodDirection cases: 1. -/
private def fam_278_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_278_key : SourceIndexStateKey where
  firstIndex := 15
  secondIndex := 5
  support := fam_278_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_278_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 5 source_107_support r mask) :
    source_107_producer.Applies fam_278_key r mask := by
  unfold source_107_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_278_key, fam_278_support, source_107_support],
    hsource⟩⟩⟩

theorem fam_278_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_278_key.support r mask) :
    row_009_producer.Applies fam_278_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_278_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 5 source_107_support r mask)
    (hrows : ExactTwoSourceValidRows fam_278_key.support r mask) :
    SourceIndexStateKeyFacts fam_278_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_107_producer.sourceFacts
      (fam_278_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_278_rowApplies_of_rows hrows))

theorem fam_278_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        15 5 source_107_support r mask)
    (hrows : ExactTwoSourceValidRows fam_278_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_278_key.goodKilled_of_source_row
    (source_107_producer.sourceFacts
      (fam_278_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_278_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `be8dead86cc6ca5a5ad69334800b184686ef94e109cb3189e9e94c535f0abf23`.
Observed representative GoodDirection cases: 1. -/
private def fam_279_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_279_key : SourceIndexStateKey where
  firstIndex := 113
  secondIndex := 8
  support := fam_279_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_279_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        113 8 source_234_support r mask) :
    source_234_producer.Applies fam_279_key r mask := by
  unfold source_234_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_279_key, fam_279_support, source_234_support],
    hsource⟩⟩⟩

theorem fam_279_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_279_key.support r mask) :
    row_008_producer.Applies fam_279_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_279_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        113 8 source_234_support r mask)
    (hrows : ExactTwoSourceValidRows fam_279_key.support r mask) :
    SourceIndexStateKeyFacts fam_279_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_234_producer.sourceFacts
      (fam_279_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_279_rowApplies_of_rows hrows))

theorem fam_279_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        113 8 source_234_support r mask)
    (hrows : ExactTwoSourceValidRows fam_279_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_279_key.goodKilled_of_source_row
    (source_234_producer.sourceFacts
      (fam_279_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_279_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c2e7c932dc16952a106215cbab0810644ac6ac0dabf8b0942bfda532ee3f7b27`.
Observed representative GoodDirection cases: 1. -/
private def fam_280_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_280_key : SourceIndexStateKey where
  firstIndex := 102
  secondIndex := 5
  support := fam_280_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_280_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        102 5 source_286_support r mask) :
    source_286_producer.Applies fam_280_key r mask := by
  unfold source_286_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_280_key, fam_280_support, source_286_support],
    hsource⟩⟩⟩

theorem fam_280_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_280_key.support r mask) :
    row_010_producer.Applies fam_280_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_280_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        102 5 source_286_support r mask)
    (hrows : ExactTwoSourceValidRows fam_280_key.support r mask) :
    SourceIndexStateKeyFacts fam_280_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_286_producer.sourceFacts
      (fam_280_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_280_rowApplies_of_rows hrows))

theorem fam_280_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        102 5 source_286_support r mask)
    (hrows : ExactTwoSourceValidRows fam_280_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_280_key.goodKilled_of_source_row
    (source_286_producer.sourceFacts
      (fam_280_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_280_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `cb2e15e9246e382459d6da526a0cf8f3848c6b7f8c78755a67db3f1f3aa1aa6d`.
Observed representative GoodDirection cases: 1. -/
private def fam_281_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_281_key : SourceIndexStateKey where
  firstIndex := 166
  secondIndex := 12
  support := fam_281_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_281_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 12 source_246_support r mask) :
    source_246_producer.Applies fam_281_key r mask := by
  unfold source_246_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_281_key, fam_281_support, source_246_support],
    hsource⟩⟩⟩

theorem fam_281_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_281_key.support r mask) :
    row_008_producer.Applies fam_281_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_281_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 12 source_246_support r mask)
    (hrows : ExactTwoSourceValidRows fam_281_key.support r mask) :
    SourceIndexStateKeyFacts fam_281_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_246_producer.sourceFacts
      (fam_281_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_281_rowApplies_of_rows hrows))

theorem fam_281_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        166 12 source_246_support r mask)
    (hrows : ExactTwoSourceValidRows fam_281_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_281_key.goodKilled_of_source_row
    (source_246_producer.sourceFacts
      (fam_281_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_281_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ccba268ea11cc92304cd3e47a0455c911f4c14da16138db251700a70e7f26747`.
Observed representative GoodDirection cases: 1. -/
private def fam_282_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_282_key : SourceIndexStateKey where
  firstIndex := 153
  secondIndex := 5
  support := fam_282_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_282_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        153 5 source_274_support r mask) :
    source_274_producer.Applies fam_282_key r mask := by
  unfold source_274_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_282_key, fam_282_support, source_274_support],
    hsource⟩⟩⟩

theorem fam_282_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_282_key.support r mask) :
    row_010_producer.Applies fam_282_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_282_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        153 5 source_274_support r mask)
    (hrows : ExactTwoSourceValidRows fam_282_key.support r mask) :
    SourceIndexStateKeyFacts fam_282_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_274_producer.sourceFacts
      (fam_282_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_282_rowApplies_of_rows hrows))

theorem fam_282_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        153 5 source_274_support r mask)
    (hrows : ExactTwoSourceValidRows fam_282_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_282_key.goodKilled_of_source_row
    (source_274_producer.sourceFacts
      (fam_282_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_282_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `d04c1ee67a3dd6b0ddb94e8a48caaedf5c77f10b8d3aba7b2eea8df2f33fa805`.
Observed representative GoodDirection cases: 1. -/
private def fam_283_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_283_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 6
  support := fam_283_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_283_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 6 source_235_support r mask) :
    source_235_producer.Applies fam_283_key r mask := by
  unfold source_235_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_283_key, fam_283_support, source_235_support],
    hsource⟩⟩⟩

theorem fam_283_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_283_key.support r mask) :
    row_009_producer.Applies fam_283_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_283_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 6 source_235_support r mask)
    (hrows : ExactTwoSourceValidRows fam_283_key.support r mask) :
    SourceIndexStateKeyFacts fam_283_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_235_producer.sourceFacts
      (fam_283_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_283_rowApplies_of_rows hrows))

theorem fam_283_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 6 source_235_support r mask)
    (hrows : ExactTwoSourceValidRows fam_283_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_283_key.goodKilled_of_source_row
    (source_235_producer.sourceFacts
      (fam_283_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_283_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `d0dc9753b818d0013a271e452474fdc158bdae63ad088d43dfde15fb7ceb5a9c`.
Observed representative GoodDirection cases: 1. -/
private def fam_284_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_284_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 7
  support := fam_284_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_284_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 7 source_222_support r mask) :
    source_222_producer.Applies fam_284_key r mask := by
  unfold source_222_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_284_key, fam_284_support, source_222_support],
    hsource⟩⟩⟩

theorem fam_284_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_284_key.support r mask) :
    row_010_producer.Applies fam_284_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_284_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 7 source_222_support r mask)
    (hrows : ExactTwoSourceValidRows fam_284_key.support r mask) :
    SourceIndexStateKeyFacts fam_284_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_222_producer.sourceFacts
      (fam_284_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_284_rowApplies_of_rows hrows))

theorem fam_284_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 7 source_222_support r mask)
    (hrows : ExactTwoSourceValidRows fam_284_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_284_key.goodKilled_of_source_row
    (source_222_producer.sourceFacts
      (fam_284_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_284_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `d31160103be0ec536b2c8ee02b2cdd8e25f1c61b395c775ebbd1b97124540942`.
Observed representative GoodDirection cases: 1. -/
private def fam_285_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_285_key : SourceIndexStateKey where
  firstIndex := 176
  secondIndex := 6
  support := fam_285_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_285_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        176 6 source_217_support r mask) :
    source_217_producer.Applies fam_285_key r mask := by
  unfold source_217_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_285_key, fam_285_support, source_217_support],
    hsource⟩⟩⟩

theorem fam_285_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_285_key.support r mask) :
    row_009_producer.Applies fam_285_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_285_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        176 6 source_217_support r mask)
    (hrows : ExactTwoSourceValidRows fam_285_key.support r mask) :
    SourceIndexStateKeyFacts fam_285_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_217_producer.sourceFacts
      (fam_285_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_285_rowApplies_of_rows hrows))

theorem fam_285_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        176 6 source_217_support r mask)
    (hrows : ExactTwoSourceValidRows fam_285_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_285_key.goodKilled_of_source_row
    (source_217_producer.sourceFacts
      (fam_285_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_285_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `d67725873cbb8e415a4f291c7d4f80a0057a070d0a1716cb64061e34ba7a729f`.
Observed representative GoodDirection cases: 1. -/
private def fam_286_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_286_key : SourceIndexStateKey where
  firstIndex := 123
  secondIndex := 6
  support := fam_286_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_286_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 6 source_285_support r mask) :
    source_285_producer.Applies fam_286_key r mask := by
  unfold source_285_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_286_key, fam_286_support, source_285_support],
    hsource⟩⟩⟩

theorem fam_286_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_286_key.support r mask) :
    row_009_producer.Applies fam_286_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_286_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 6 source_285_support r mask)
    (hrows : ExactTwoSourceValidRows fam_286_key.support r mask) :
    SourceIndexStateKeyFacts fam_286_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_285_producer.sourceFacts
      (fam_286_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_286_rowApplies_of_rows hrows))

theorem fam_286_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 6 source_285_support r mask)
    (hrows : ExactTwoSourceValidRows fam_286_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_286_key.goodKilled_of_source_row
    (source_285_producer.sourceFacts
      (fam_286_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_286_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `dad3aab98a9a2cf7af3230b18b5b3d786065bef4049c16587c8650cab0db459f`.
Observed representative GoodDirection cases: 1. -/
private def fam_287_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨10, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_287_key : SourceIndexStateKey where
  firstIndex := 14
  secondIndex := 10
  support := fam_287_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_287_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 10 source_248_support r mask) :
    source_248_producer.Applies fam_287_key r mask := by
  unfold source_248_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_287_key, fam_287_support, source_248_support],
    hsource⟩⟩⟩

theorem fam_287_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_287_key.support r mask) :
    row_008_producer.Applies fam_287_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_287_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 10 source_248_support r mask)
    (hrows : ExactTwoSourceValidRows fam_287_key.support r mask) :
    SourceIndexStateKeyFacts fam_287_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_248_producer.sourceFacts
      (fam_287_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_287_rowApplies_of_rows hrows))

theorem fam_287_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 10 source_248_support r mask)
    (hrows : ExactTwoSourceValidRows fam_287_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_287_key.goodKilled_of_source_row
    (source_248_producer.sourceFacts
      (fam_287_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_287_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `def59cab3ac5f2d2aad4406b35cbc8a618fae48910d373419d0cf24da65c0033`.
Observed representative GoodDirection cases: 1. -/
private def fam_288_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tppp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
private def fam_288_key : SourceIndexStateKey where
  firstIndex := 173
  secondIndex := 9
  support := fam_288_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_288_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        173 9 source_287_support r mask) :
    source_287_producer.Applies fam_288_key r mask := by
  unfold source_287_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_288_key, fam_288_support, source_287_support],
    hsource⟩⟩⟩

theorem fam_288_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_288_key.support r mask) :
    row_009_producer.Applies fam_288_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_288_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        173 9 source_287_support r mask)
    (hrows : ExactTwoSourceValidRows fam_288_key.support r mask) :
    SourceIndexStateKeyFacts fam_288_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_287_producer.sourceFacts
      (fam_288_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_288_rowApplies_of_rows hrows))

theorem fam_288_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        173 9 source_287_support r mask)
    (hrows : ExactTwoSourceValidRows fam_288_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_288_key.goodKilled_of_source_row
    (source_287_producer.sourceFacts
      (fam_288_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_288_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f3c7a8ec44844a731c5fb1b73fad620f2beb88bd6d2401a81a56f7175b67c3b0`.
Observed representative GoodDirection cases: 1. -/
private def fam_289_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_289_key : SourceIndexStateKey where
  firstIndex := 85
  secondIndex := 8
  support := fam_289_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_289_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        85 8 source_273_support r mask) :
    source_273_producer.Applies fam_289_key r mask := by
  unfold source_273_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_289_key, fam_289_support, source_273_support],
    hsource⟩⟩⟩

theorem fam_289_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_289_key.support r mask) :
    row_010_producer.Applies fam_289_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_289_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        85 8 source_273_support r mask)
    (hrows : ExactTwoSourceValidRows fam_289_key.support r mask) :
    SourceIndexStateKeyFacts fam_289_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_273_producer.sourceFacts
      (fam_289_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_289_rowApplies_of_rows hrows))

theorem fam_289_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        85 8 source_273_support r mask)
    (hrows : ExactTwoSourceValidRows fam_289_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_289_key.goodKilled_of_source_row
    (source_273_producer.sourceFacts
      (fam_289_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_289_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `fb0bad54ddc1e8b6bbe0b7045215c0802f4e21ff2e1ba06d41169065575bc4e3`.
Observed representative GoodDirection cases: 1. -/
private def fam_290_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_290_key : SourceIndexStateKey where
  firstIndex := 99
  secondIndex := 5
  support := fam_290_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_290_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        99 5 source_244_support r mask) :
    source_244_producer.Applies fam_290_key r mask := by
  unfold source_244_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_290_key, fam_290_support, source_244_support],
    hsource⟩⟩⟩

theorem fam_290_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_290_key.support r mask) :
    row_008_producer.Applies fam_290_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_290_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        99 5 source_244_support r mask)
    (hrows : ExactTwoSourceValidRows fam_290_key.support r mask) :
    SourceIndexStateKeyFacts fam_290_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_244_producer.sourceFacts
      (fam_290_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_290_rowApplies_of_rows hrows))

theorem fam_290_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        99 5 source_244_support r mask)
    (hrows : ExactTwoSourceValidRows fam_290_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_290_key.goodKilled_of_source_row
    (source_244_producer.sourceFacts
      (fam_290_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_290_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0ef325aa5f194e8152bb2705a7ce4afd942ac91769581519a273ef2ec457b397`.
Observed representative GoodDirection cases: 1. -/
private def fam_291_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_291_key : SourceIndexStateKey where
  firstIndex := 82
  secondIndex := 1
  support := fam_291_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_291_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        82 1 source_228_support r mask) :
    source_228_producer.Applies fam_291_key r mask := by
  unfold source_228_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_291_key, fam_291_support, source_228_support],
    hsource⟩⟩⟩

theorem fam_291_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_291_key.support r mask) :
    row_001_producer.Applies fam_291_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_291_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        82 1 source_228_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_291_key.support r mask) :
    SourceIndexStateKeyFacts fam_291_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_228_producer.sourceFacts
      (fam_291_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_291_rowApplies_of_rows hrows))

theorem fam_291_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        82 1 source_228_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_291_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_291_key.goodKilled_of_source_row
    (source_228_producer.sourceFacts
      (fam_291_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_291_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `39ff594dd4adc4cbfa96eafbecd603e98194d7713a7d081b0d2de4136d94539e`.
Observed representative GoodDirection cases: 1. -/
private def fam_292_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_292_key : SourceIndexStateKey where
  firstIndex := 180
  secondIndex := 1
  support := fam_292_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_292_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        180 1 source_277_support r mask) :
    source_277_producer.Applies fam_292_key r mask := by
  unfold source_277_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_292_key, fam_292_support, source_277_support],
    hsource⟩⟩⟩

theorem fam_292_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_292_key.support r mask) :
    row_001_producer.Applies fam_292_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_292_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        180 1 source_277_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_292_key.support r mask) :
    SourceIndexStateKeyFacts fam_292_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_277_producer.sourceFacts
      (fam_292_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_292_rowApplies_of_rows hrows))

theorem fam_292_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        180 1 source_277_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_292_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_292_key.goodKilled_of_source_row
    (source_277_producer.sourceFacts
      (fam_292_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_292_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `46301f834b4c600cd13872206cd8aee0d02663ee7b535f8bc3c0519f8beeefc7`.
Observed representative GoodDirection cases: 1. -/
private def fam_293_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_293_key : SourceIndexStateKey where
  firstIndex := 95
  secondIndex := 1
  support := fam_293_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_293_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        95 1 source_229_support r mask) :
    source_229_producer.Applies fam_293_key r mask := by
  unfold source_229_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_293_key, fam_293_support, source_229_support],
    hsource⟩⟩⟩

theorem fam_293_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_293_key.support r mask) :
    row_001_producer.Applies fam_293_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_293_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        95 1 source_229_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_293_key.support r mask) :
    SourceIndexStateKeyFacts fam_293_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_229_producer.sourceFacts
      (fam_293_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_293_rowApplies_of_rows hrows))

theorem fam_293_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        95 1 source_229_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_293_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_293_key.goodKilled_of_source_row
    (source_229_producer.sourceFacts
      (fam_293_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_293_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `6552de7aa34151a5689ee1831f44eb044d3e9d76bc39807a7c85002bb07e467d`.
Observed representative GoodDirection cases: 1. -/
private def fam_294_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_294_key : SourceIndexStateKey where
  firstIndex := 165
  secondIndex := 1
  support := fam_294_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_294_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 1 source_237_support r mask) :
    source_237_producer.Applies fam_294_key r mask := by
  unfold source_237_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_294_key, fam_294_support, source_237_support],
    hsource⟩⟩⟩

theorem fam_294_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_294_key.support r mask) :
    row_001_producer.Applies fam_294_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_294_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 1 source_237_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_294_key.support r mask) :
    SourceIndexStateKeyFacts fam_294_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_237_producer.sourceFacts
      (fam_294_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_294_rowApplies_of_rows hrows))

theorem fam_294_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        165 1 source_237_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_294_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_294_key.goodKilled_of_source_row
    (source_237_producer.sourceFacts
      (fam_294_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_294_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8236b7da1e56589885fd0302f63204a29345e332f50cb38d0d9edb8721fb43b6`.
Observed representative GoodDirection cases: 1. -/
private def fam_295_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_295_key : SourceIndexStateKey where
  firstIndex := 131
  secondIndex := 1
  support := fam_295_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_295_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 1 source_271_support r mask) :
    source_271_producer.Applies fam_295_key r mask := by
  unfold source_271_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_295_key, fam_295_support, source_271_support],
    hsource⟩⟩⟩

theorem fam_295_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_295_key.support r mask) :
    row_001_producer.Applies fam_295_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_295_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 1 source_271_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_295_key.support r mask) :
    SourceIndexStateKeyFacts fam_295_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_271_producer.sourceFacts
      (fam_295_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_295_rowApplies_of_rows hrows))

theorem fam_295_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 1 source_271_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_295_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_295_key.goodKilled_of_source_row
    (source_271_producer.sourceFacts
      (fam_295_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_295_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a3204c2392af3796d5069862a841bb9bfb937d80bbed2f3b8c4a391818563ba3`.
Observed representative GoodDirection cases: 1. -/
private def fam_296_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_296_key : SourceIndexStateKey where
  firstIndex := 154
  secondIndex := 1
  support := fam_296_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_296_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 1 source_261_support r mask) :
    source_261_producer.Applies fam_296_key r mask := by
  unfold source_261_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_296_key, fam_296_support, source_261_support],
    hsource⟩⟩⟩

theorem fam_296_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_296_key.support r mask) :
    row_001_producer.Applies fam_296_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_296_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 1 source_261_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_296_key.support r mask) :
    SourceIndexStateKeyFacts fam_296_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_261_producer.sourceFacts
      (fam_296_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_296_rowApplies_of_rows hrows))

theorem fam_296_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 1 source_261_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_296_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_296_key.goodKilled_of_source_row
    (source_261_producer.sourceFacts
      (fam_296_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_296_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b308cca418f738078e4e9ed3995c014b5d95667c941978586a35bb1c9a59b17e`.
Observed representative GoodDirection cases: 1. -/
private def fam_297_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_297_key : SourceIndexStateKey where
  firstIndex := 134
  secondIndex := 1
  support := fam_297_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_297_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        134 1 source_236_support r mask) :
    source_236_producer.Applies fam_297_key r mask := by
  unfold source_236_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_297_key, fam_297_support, source_236_support],
    hsource⟩⟩⟩

theorem fam_297_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_297_key.support r mask) :
    row_001_producer.Applies fam_297_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_297_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        134 1 source_236_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_297_key.support r mask) :
    SourceIndexStateKeyFacts fam_297_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_236_producer.sourceFacts
      (fam_297_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_297_rowApplies_of_rows hrows))

theorem fam_297_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        134 1 source_236_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_297_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_297_key.goodKilled_of_source_row
    (source_236_producer.sourceFacts
      (fam_297_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_297_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c2474f01b3b155a63a5c6464064a29659697664c89d9e8cb8332935954f998d6`.
Observed representative GoodDirection cases: 1. -/
private def fam_298_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_298_key : SourceIndexStateKey where
  firstIndex := 32
  secondIndex := 1
  support := fam_298_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_298_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        32 1 source_250_support r mask) :
    source_250_producer.Applies fam_298_key r mask := by
  unfold source_250_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_298_key, fam_298_support, source_250_support],
    hsource⟩⟩⟩

theorem fam_298_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_298_key.support r mask) :
    row_001_producer.Applies fam_298_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_298_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        32 1 source_250_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_298_key.support r mask) :
    SourceIndexStateKeyFacts fam_298_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_250_producer.sourceFacts
      (fam_298_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_298_rowApplies_of_rows hrows))

theorem fam_298_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        32 1 source_250_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_298_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_298_key.goodKilled_of_source_row
    (source_250_producer.sourceFacts
      (fam_298_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_298_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ce62a5a32da0ce9b356319d9cc14d4301fa465fa4ed9fa9f592069cf587ab847`.
Observed representative GoodDirection cases: 1. -/
private def fam_299_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_299_key : SourceIndexStateKey where
  firstIndex := 132
  secondIndex := 1
  support := fam_299_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_299_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        132 1 source_290_support r mask) :
    source_290_producer.Applies fam_299_key r mask := by
  unfold source_290_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_299_key, fam_299_support, source_290_support],
    hsource⟩⟩⟩

theorem fam_299_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_299_key.support r mask) :
    row_001_producer.Applies fam_299_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_299_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        132 1 source_290_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_299_key.support r mask) :
    SourceIndexStateKeyFacts fam_299_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_290_producer.sourceFacts
      (fam_299_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_299_rowApplies_of_rows hrows))

theorem fam_299_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        132 1 source_290_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_299_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_299_key.goodKilled_of_source_row
    (source_290_producer.sourceFacts
      (fam_299_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_299_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ea9ae2dc3a37d6be2fc16ab89548495da30204c3b3511530048f77478cfc5625`.
Observed representative GoodDirection cases: 1. -/
private def fam_300_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_300_key : SourceIndexStateKey where
  firstIndex := 131
  secondIndex := 1
  support := fam_300_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_300_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 1 source_288_support r mask) :
    source_288_producer.Applies fam_300_key r mask := by
  unfold source_288_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_300_key, fam_300_support, source_288_support],
    hsource⟩⟩⟩

theorem fam_300_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_300_key.support r mask) :
    row_001_producer.Applies fam_300_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_300_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 1 source_288_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_300_key.support r mask) :
    SourceIndexStateKeyFacts fam_300_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_288_producer.sourceFacts
      (fam_300_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_300_rowApplies_of_rows hrows))

theorem fam_300_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 1 source_288_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_300_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_300_key.goodKilled_of_source_row
    (source_288_producer.sourceFacts
      (fam_300_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_300_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `efad8a0829ddfb24f4d585b6563eb1fe2e5da3d23dba340bd8d90d139c908cb9`.
Observed representative GoodDirection cases: 1. -/
private def fam_301_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_301_key : SourceIndexStateKey where
  firstIndex := 121
  secondIndex := 1
  support := fam_301_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_301_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        121 1 source_264_support r mask) :
    source_264_producer.Applies fam_301_key r mask := by
  unfold source_264_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_301_key, fam_301_support, source_264_support],
    hsource⟩⟩⟩

theorem fam_301_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_301_key.support r mask) :
    row_001_producer.Applies fam_301_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_301_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        121 1 source_264_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_301_key.support r mask) :
    SourceIndexStateKeyFacts fam_301_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_264_producer.sourceFacts
      (fam_301_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_301_rowApplies_of_rows hrows))

theorem fam_301_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        121 1 source_264_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_301_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_301_key.goodKilled_of_source_row
    (source_264_producer.sourceFacts
      (fam_301_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_301_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f420382d3e753e535efd2c83096f0edacb2a1d4da789375289b021326989b18e`.
Observed representative GoodDirection cases: 1. -/
private def fam_302_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_302_key : SourceIndexStateKey where
  firstIndex := 144
  secondIndex := 1
  support := fam_302_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_302_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 1 source_241_support r mask) :
    source_241_producer.Applies fam_302_key r mask := by
  unfold source_241_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_302_key, fam_302_support, source_241_support],
    hsource⟩⟩⟩

theorem fam_302_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_302_key.support r mask) :
    row_001_producer.Applies fam_302_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_302_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 1 source_241_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_302_key.support r mask) :
    SourceIndexStateKeyFacts fam_302_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_241_producer.sourceFacts
      (fam_302_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_302_rowApplies_of_rows hrows))

theorem fam_302_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 1 source_241_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_302_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_302_key.goodKilled_of_source_row
    (source_241_producer.sourceFacts
      (fam_302_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_302_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `16fadf7a1c20d3e6c199e43ba1aff7ddf2ebd310b52396a5b2ce5133fd71b462`.
Observed representative GoodDirection cases: 1. -/
private def fam_303_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.yp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_303_key : SourceIndexStateKey where
  firstIndex := 72
  secondIndex := 2
  support := fam_303_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_303_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        72 2 source_268_support r mask) :
    source_268_producer.Applies fam_303_key r mask := by
  unfold source_268_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_303_key, fam_303_support, source_268_support],
    hsource⟩⟩⟩

theorem fam_303_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_303_key.support r mask) :
    row_003_producer.Applies fam_303_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_303_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        72 2 source_268_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_303_key.support r mask) :
    SourceIndexStateKeyFacts fam_303_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_268_producer.sourceFacts
      (fam_303_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_303_rowApplies_of_rows hrows))

theorem fam_303_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        72 2 source_268_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_303_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_303_key.goodKilled_of_source_row
    (source_268_producer.sourceFacts
      (fam_303_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_303_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `17f7cba927576d1e3ce1e0f22719fdf34efbf487621330fb2634f56699f2d27b`.
Observed representative GoodDirection cases: 1. -/
private def fam_304_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_304_key : SourceIndexStateKey where
  firstIndex := 131
  secondIndex := 2
  support := fam_304_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_304_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 2 source_245_support r mask) :
    source_245_producer.Applies fam_304_key r mask := by
  unfold source_245_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_304_key, fam_304_support, source_245_support],
    hsource⟩⟩⟩

theorem fam_304_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_304_key.support r mask) :
    row_003_producer.Applies fam_304_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_304_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 2 source_245_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_304_key.support r mask) :
    SourceIndexStateKeyFacts fam_304_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_245_producer.sourceFacts
      (fam_304_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_304_rowApplies_of_rows hrows))

theorem fam_304_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 2 source_245_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_304_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_304_key.goodKilled_of_source_row
    (source_245_producer.sourceFacts
      (fam_304_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_304_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `38d9c8a2047efd6dff949a89db8a05389b5870477b5d188fc6b8b047863879fb`.
Observed representative GoodDirection cases: 1. -/
private def fam_305_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.zp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_305_key : SourceIndexStateKey where
  firstIndex := 34
  secondIndex := 2
  support := fam_305_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_305_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        34 2 source_266_support r mask) :
    source_266_producer.Applies fam_305_key r mask := by
  unfold source_266_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_305_key, fam_305_support, source_266_support],
    hsource⟩⟩⟩

theorem fam_305_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_305_key.support r mask) :
    row_003_producer.Applies fam_305_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_305_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        34 2 source_266_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_305_key.support r mask) :
    SourceIndexStateKeyFacts fam_305_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_266_producer.sourceFacts
      (fam_305_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_305_rowApplies_of_rows hrows))

theorem fam_305_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        34 2 source_266_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_305_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_305_key.goodKilled_of_source_row
    (source_266_producer.sourceFacts
      (fam_305_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_305_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `60f52a9403a8de03fa48d2af0a4b7cc1affe2a6dd123ff28c258981c3a47ca67`.
Observed representative GoodDirection cases: 1. -/
private def fam_306_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_306_key : SourceIndexStateKey where
  firstIndex := 54
  secondIndex := 2
  support := fam_306_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_306_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        54 2 source_257_support r mask) :
    source_257_producer.Applies fam_306_key r mask := by
  unfold source_257_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_306_key, fam_306_support, source_257_support],
    hsource⟩⟩⟩

theorem fam_306_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_306_key.support r mask) :
    row_003_producer.Applies fam_306_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_306_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        54 2 source_257_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_306_key.support r mask) :
    SourceIndexStateKeyFacts fam_306_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_257_producer.sourceFacts
      (fam_306_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_306_rowApplies_of_rows hrows))

theorem fam_306_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        54 2 source_257_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_306_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_306_key.goodKilled_of_source_row
    (source_257_producer.sourceFacts
      (fam_306_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_306_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `94bc8df8c46833a2fe7952fbbc9fc5a3641d8142061c5eb5f8307bd3f0c48ce7`.
Observed representative GoodDirection cases: 1. -/
private def fam_307_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_307_key : SourceIndexStateKey where
  firstIndex := 169
  secondIndex := 2
  support := fam_307_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_307_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        169 2 source_249_support r mask) :
    source_249_producer.Applies fam_307_key r mask := by
  unfold source_249_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_307_key, fam_307_support, source_249_support],
    hsource⟩⟩⟩

theorem fam_307_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_307_key.support r mask) :
    row_003_producer.Applies fam_307_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_307_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        169 2 source_249_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_307_key.support r mask) :
    SourceIndexStateKeyFacts fam_307_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_249_producer.sourceFacts
      (fam_307_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_307_rowApplies_of_rows hrows))

theorem fam_307_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        169 2 source_249_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_307_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_307_key.goodKilled_of_source_row
    (source_249_producer.sourceFacts
      (fam_307_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_307_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `972c07ccadec33f45a136a27aad6878ae131e85312f6c2d5032f3502d605bf09`.
Observed representative GoodDirection cases: 1. -/
private def fam_308_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_308_key : SourceIndexStateKey where
  firstIndex := 143
  secondIndex := 2
  support := fam_308_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_308_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        143 2 source_276_support r mask) :
    source_276_producer.Applies fam_308_key r mask := by
  unfold source_276_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_308_key, fam_308_support, source_276_support],
    hsource⟩⟩⟩

theorem fam_308_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_308_key.support r mask) :
    row_003_producer.Applies fam_308_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_308_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        143 2 source_276_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_308_key.support r mask) :
    SourceIndexStateKeyFacts fam_308_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_276_producer.sourceFacts
      (fam_308_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_308_rowApplies_of_rows hrows))

theorem fam_308_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        143 2 source_276_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_308_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_308_key.goodKilled_of_source_row
    (source_276_producer.sourceFacts
      (fam_308_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_308_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ae8604316ceca8fa21b376c9f180ad2c936fc375cb0a134f53ef1adcb362ae0d`.
Observed representative GoodDirection cases: 1. -/
private def fam_309_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_309_key : SourceIndexStateKey where
  firstIndex := 133
  secondIndex := 2
  support := fam_309_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_309_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        133 2 source_275_support r mask) :
    source_275_producer.Applies fam_309_key r mask := by
  unfold source_275_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_309_key, fam_309_support, source_275_support],
    hsource⟩⟩⟩

theorem fam_309_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_309_key.support r mask) :
    row_003_producer.Applies fam_309_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_309_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        133 2 source_275_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_309_key.support r mask) :
    SourceIndexStateKeyFacts fam_309_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_275_producer.sourceFacts
      (fam_309_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_309_rowApplies_of_rows hrows))

theorem fam_309_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        133 2 source_275_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_309_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_309_key.goodKilled_of_source_row
    (source_275_producer.sourceFacts
      (fam_309_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_309_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b5791ce378f59bf91188ce12a5cee4bd9ce095fd83d04c5d996eb00712f281e6`.
Observed representative GoodDirection cases: 1. -/
private def fam_310_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_310_key : SourceIndexStateKey where
  firstIndex := 102
  secondIndex := 2
  support := fam_310_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_310_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        102 2 source_254_support r mask) :
    source_254_producer.Applies fam_310_key r mask := by
  unfold source_254_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_310_key, fam_310_support, source_254_support],
    hsource⟩⟩⟩

theorem fam_310_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_310_key.support r mask) :
    row_003_producer.Applies fam_310_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_310_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        102 2 source_254_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_310_key.support r mask) :
    SourceIndexStateKeyFacts fam_310_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_254_producer.sourceFacts
      (fam_310_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_310_rowApplies_of_rows hrows))

theorem fam_310_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        102 2 source_254_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_310_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_310_key.goodKilled_of_source_row
    (source_254_producer.sourceFacts
      (fam_310_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_310_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b9a6a00de0957f9bb3748a62f7b93c219682fd9d3427cee415a4dc649682662f`.
Observed representative GoodDirection cases: 1. -/
private def fam_311_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_311_key : SourceIndexStateKey where
  firstIndex := 181
  secondIndex := 2
  support := fam_311_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_311_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        181 2 source_215_support r mask) :
    source_215_producer.Applies fam_311_key r mask := by
  unfold source_215_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_311_key, fam_311_support, source_215_support],
    hsource⟩⟩⟩

theorem fam_311_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_311_key.support r mask) :
    row_003_producer.Applies fam_311_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_311_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        181 2 source_215_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_311_key.support r mask) :
    SourceIndexStateKeyFacts fam_311_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_215_producer.sourceFacts
      (fam_311_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_311_rowApplies_of_rows hrows))

theorem fam_311_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        181 2 source_215_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_311_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_311_key.goodKilled_of_source_row
    (source_215_producer.sourceFacts
      (fam_311_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_311_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c50b5ceea29b7a9eb805d6f61cc2f1ec21fc90ea3772fce5d2ad7f008dcfc750`.
Observed representative GoodDirection cases: 1. -/
private def fam_312_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_312_key : SourceIndexStateKey where
  firstIndex := 145
  secondIndex := 2
  support := fam_312_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_312_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        145 2 source_258_support r mask) :
    source_258_producer.Applies fam_312_key r mask := by
  unfold source_258_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_312_key, fam_312_support, source_258_support],
    hsource⟩⟩⟩

theorem fam_312_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_312_key.support r mask) :
    row_003_producer.Applies fam_312_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_312_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        145 2 source_258_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_312_key.support r mask) :
    SourceIndexStateKeyFacts fam_312_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_258_producer.sourceFacts
      (fam_312_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_312_rowApplies_of_rows hrows))

theorem fam_312_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        145 2 source_258_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_312_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_312_key.goodKilled_of_source_row
    (source_258_producer.sourceFacts
      (fam_312_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_312_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c6918f7ac7801266eb6582ce3ed2d94c58b9959746d321ec9b6de0e09732bff9`.
Observed representative GoodDirection cases: 1. -/
private def fam_313_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_313_key : SourceIndexStateKey where
  firstIndex := 18
  secondIndex := 2
  support := fam_313_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_313_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        18 2 source_212_support r mask) :
    source_212_producer.Applies fam_313_key r mask := by
  unfold source_212_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_313_key, fam_313_support, source_212_support],
    hsource⟩⟩⟩

theorem fam_313_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_313_key.support r mask) :
    row_003_producer.Applies fam_313_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_313_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        18 2 source_212_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_313_key.support r mask) :
    SourceIndexStateKeyFacts fam_313_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_212_producer.sourceFacts
      (fam_313_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_313_rowApplies_of_rows hrows))

theorem fam_313_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        18 2 source_212_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_313_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_313_key.goodKilled_of_source_row
    (source_212_producer.sourceFacts
      (fam_313_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_313_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `d0abb996a8c7c064d297e64339d5260e39d9936ed47ab5760d3a9be060927986`.
Observed representative GoodDirection cases: 1. -/
private def fam_314_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_314_key : SourceIndexStateKey where
  firstIndex := 119
  secondIndex := 2
  support := fam_314_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_314_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        119 2 source_278_support r mask) :
    source_278_producer.Applies fam_314_key r mask := by
  unfold source_278_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_314_key, fam_314_support, source_278_support],
    hsource⟩⟩⟩

theorem fam_314_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_314_key.support r mask) :
    row_003_producer.Applies fam_314_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_314_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        119 2 source_278_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_314_key.support r mask) :
    SourceIndexStateKeyFacts fam_314_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_278_producer.sourceFacts
      (fam_314_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_314_rowApplies_of_rows hrows))

theorem fam_314_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        119 2 source_278_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_314_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_314_key.goodKilled_of_source_row
    (source_278_producer.sourceFacts
      (fam_314_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_314_rowApplies_of_rows hrows))

theorem chunk_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Chunks.Chunk004
