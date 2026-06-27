import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Source
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Row

/-!
Pair-sign producer-coverage descriptor chunk.

Generated bounded smoke evidence. This is not global coverage.
Phase: 6Z.6K.8AL.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Chunks.Chunk001

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Source
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Row

set_option linter.unusedVariables false

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

theorem chunk_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Chunks.Chunk001
