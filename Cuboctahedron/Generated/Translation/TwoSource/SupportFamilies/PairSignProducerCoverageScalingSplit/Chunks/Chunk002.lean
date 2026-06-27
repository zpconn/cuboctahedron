import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Source
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Row

/-!
Pair-sign producer-coverage descriptor chunk.

Generated bounded smoke evidence. This is not global coverage.
Phase: 6Z.6K.8AL.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Chunks.Chunk002

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Source
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Row

set_option linter.unusedVariables false

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

theorem chunk_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.Chunks.Chunk002
