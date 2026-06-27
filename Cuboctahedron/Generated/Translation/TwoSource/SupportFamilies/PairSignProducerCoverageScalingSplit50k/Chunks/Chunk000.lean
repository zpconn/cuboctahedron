import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Source
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Row

/-!
Pair-sign producer-coverage descriptor chunk.

Generated bounded smoke evidence. This is not global coverage.
Phase: 6Z.6K.8AM.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Chunks.Chunk000

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Source
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Row

set_option linter.unusedVariables false

/-- Pair-sign producer coverage key `a9c85d3d6e44b215a28bb60fdfa44d57307c74d1fef19ff6c080d2299a790531`.
Observed representative GoodDirection cases: 1024. -/
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
Observed representative GoodDirection cases: 399. -/
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

/-- Pair-sign producer coverage key `1e7fea08c0f0687ccf3374a0decd7681fa8fa126c599606f3ddb4c546fab2a4b`.
Observed representative GoodDirection cases: 117. -/
private def fam_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_008_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 15
  support := fam_008_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_008_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 15 source_008_support r mask) :
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
        0 15 source_008_support r mask)
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
        0 15 source_008_support r mask)
    (hrows : EqEqPosVarSecondRows fam_008_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_008_key.goodKilled_of_source_row
    (source_008_producer.sourceFacts
      (fam_008_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_008_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8091c0e1dc28305cd10a569ab32a31ad560134ee230e6f93c77595ef1620b33f`.
Observed representative GoodDirection cases: 115. -/
private def fam_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_009_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 11
  support := fam_009_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_009_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 11 source_009_support r mask) :
    source_009_producer.Applies fam_009_key r mask := by
  unfold source_009_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_009_key, fam_009_support, source_009_support],
    hsource⟩⟩⟩

theorem fam_009_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_009_key.support r mask) :
    row_002_producer.Applies fam_009_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_009_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 11 source_009_support r mask)
    (hrows : EqEqPosVarSecondRows fam_009_key.support r mask) :
    SourceIndexStateKeyFacts fam_009_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_009_producer.sourceFacts
      (fam_009_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_009_rowApplies_of_rows hrows))

theorem fam_009_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 11 source_009_support r mask)
    (hrows : EqEqPosVarSecondRows fam_009_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_009_key.goodKilled_of_source_row
    (source_009_producer.sourceFacts
      (fam_009_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_009_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a0a84a8450ad0f1ba6ca9cb2f07a3cd3ec2ce8a4584354c6a0c481c00898ee9a`.
Observed representative GoodDirection cases: 109. -/
private def fam_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_010_key : SourceIndexStateKey where
  firstIndex := 50
  secondIndex := 2
  support := fam_010_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_010_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        50 2 source_010_support r mask) :
    source_010_producer.Applies fam_010_key r mask := by
  unfold source_010_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_010_key, fam_010_support, source_010_support],
    hsource⟩⟩⟩

theorem fam_010_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_010_key.support r mask) :
    row_003_producer.Applies fam_010_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_010_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        50 2 source_010_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_010_key.support r mask) :
    SourceIndexStateKeyFacts fam_010_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_010_producer.sourceFacts
      (fam_010_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_010_rowApplies_of_rows hrows))

theorem fam_010_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        50 2 source_010_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_010_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_010_key.goodKilled_of_source_row
    (source_010_producer.sourceFacts
      (fam_010_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_010_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `54d9751320b2945766ccad09043b2fbd49fa7f68c11088ac95297208c3eaac97`.
Observed representative GoodDirection cases: 93. -/
private def fam_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_011_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 13
  support := fam_011_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_011_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 13 source_011_support r mask) :
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
        0 13 source_011_support r mask)
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
        0 13 source_011_support r mask)
    (hrows : EqEqPosVarSecondRows fam_011_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_011_key.goodKilled_of_source_row
    (source_011_producer.sourceFacts
      (fam_011_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_011_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `215d250904345a406f359e21d7279c48890a8382cbf9f4542b80af6541ea31e7`.
Observed representative GoodDirection cases: 93. -/
private def fam_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_012_key : SourceIndexStateKey where
  firstIndex := 70
  secondIndex := 2
  support := fam_012_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_012_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        70 2 source_012_support r mask) :
    source_012_producer.Applies fam_012_key r mask := by
  unfold source_012_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_012_key, fam_012_support, source_012_support],
    hsource⟩⟩⟩

theorem fam_012_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_012_key.support r mask) :
    row_003_producer.Applies fam_012_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_012_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        70 2 source_012_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_012_key.support r mask) :
    SourceIndexStateKeyFacts fam_012_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_012_producer.sourceFacts
      (fam_012_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_012_rowApplies_of_rows hrows))

theorem fam_012_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        70 2 source_012_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_012_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_012_key.goodKilled_of_source_row
    (source_012_producer.sourceFacts
      (fam_012_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_012_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `1f67765c3056fb95c85720f14cbecdf8ca17f0c763076273d8c85286126303dd`.
Observed representative GoodDirection cases: 92. -/
private def fam_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_013_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 10
  support := fam_013_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_013_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 10 source_013_support r mask) :
    source_013_producer.Applies fam_013_key r mask := by
  unfold source_013_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_013_key, fam_013_support, source_013_support],
    hsource⟩⟩⟩

theorem fam_013_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_013_key.support r mask) :
    row_002_producer.Applies fam_013_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_013_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 10 source_013_support r mask)
    (hrows : EqEqPosVarSecondRows fam_013_key.support r mask) :
    SourceIndexStateKeyFacts fam_013_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_013_producer.sourceFacts
      (fam_013_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_013_rowApplies_of_rows hrows))

theorem fam_013_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 10 source_013_support r mask)
    (hrows : EqEqPosVarSecondRows fam_013_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_013_key.goodKilled_of_source_row
    (source_013_producer.sourceFacts
      (fam_013_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_013_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `fbadcb6b4d7876f5e23098783dd8173fca93b8b373cdbba7ae20d14bffb14fff`.
Observed representative GoodDirection cases: 82. -/
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

/-- Pair-sign producer coverage key `9e4c7d40508f756c78c4f7f1ef21bad13204b66b3afbdd96109e646fe1c31102`.
Observed representative GoodDirection cases: 79. -/
private def fam_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_015_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 5
  support := fam_015_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_015_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 5 source_015_support r mask) :
    source_015_producer.Applies fam_015_key r mask := by
  unfold source_015_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_015_key, fam_015_support, source_015_support],
    hsource⟩⟩⟩

theorem fam_015_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_015_key.support r mask) :
    row_005_producer.Applies fam_015_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_015_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 5 source_015_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_015_key.support r mask) :
    SourceIndexStateKeyFacts fam_015_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_015_producer.sourceFacts
      (fam_015_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_015_rowApplies_of_rows hrows))

theorem fam_015_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 5 source_015_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_015_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_015_key.goodKilled_of_source_row
    (source_015_producer.sourceFacts
      (fam_015_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_015_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `45c7c17ea15024b7144eb0684c9a7a63344c888808b4afcc33b5cc6448dfac69`.
Observed representative GoodDirection cases: 73. -/
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

/-- Pair-sign producer coverage key `1e4b51557f977673d7b96e011cacc8e7fad17c5469b237589f0acb70bfb48421`.
Observed representative GoodDirection cases: 72. -/
private def fam_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_017_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 0
  support := fam_017_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_017_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 0 source_017_support r mask) :
    source_017_producer.Applies fam_017_key r mask := by
  unfold source_017_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_017_key, fam_017_support, source_017_support],
    hsource⟩⟩⟩

theorem fam_017_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_017_key.support r mask) :
    row_000_producer.Applies fam_017_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_017_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 0 source_017_support r mask)
    (hrows : EqEqPosVarFirstRows fam_017_key.support r mask) :
    SourceIndexStateKeyFacts fam_017_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_017_producer.sourceFacts
      (fam_017_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_017_rowApplies_of_rows hrows))

theorem fam_017_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 0 source_017_support r mask)
    (hrows : EqEqPosVarFirstRows fam_017_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_017_key.goodKilled_of_source_row
    (source_017_producer.sourceFacts
      (fam_017_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_017_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8df102f5a0a90f97d60f2652976e91573fa50c98a41b8b39dfb807ce9a90185a`.
Observed representative GoodDirection cases: 70. -/
private def fam_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_018_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 0
  support := fam_018_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_018_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 0 source_018_support r mask) :
    source_018_producer.Applies fam_018_key r mask := by
  unfold source_018_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_018_key, fam_018_support, source_018_support],
    hsource⟩⟩⟩

theorem fam_018_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_018_key.support r mask) :
    row_000_producer.Applies fam_018_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_018_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 0 source_018_support r mask)
    (hrows : EqEqPosVarFirstRows fam_018_key.support r mask) :
    SourceIndexStateKeyFacts fam_018_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_018_producer.sourceFacts
      (fam_018_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_018_rowApplies_of_rows hrows))

theorem fam_018_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 0 source_018_support r mask)
    (hrows : EqEqPosVarFirstRows fam_018_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_018_key.goodKilled_of_source_row
    (source_018_producer.sourceFacts
      (fam_018_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_018_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b262fbb3ec3a90332364035f2306b73246563f9815da042889ecc813f517c606`.
Observed representative GoodDirection cases: 69. -/
private def fam_019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_019_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 10
  support := fam_019_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_019_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 10 source_019_support r mask) :
    source_019_producer.Applies fam_019_key r mask := by
  unfold source_019_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_019_key, fam_019_support, source_019_support],
    hsource⟩⟩⟩

theorem fam_019_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_019_key.support r mask) :
    row_004_producer.Applies fam_019_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_019_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 10 source_019_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_019_key.support r mask) :
    SourceIndexStateKeyFacts fam_019_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_019_producer.sourceFacts
      (fam_019_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_019_rowApplies_of_rows hrows))

theorem fam_019_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 10 source_019_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_019_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_019_key.goodKilled_of_source_row
    (source_019_producer.sourceFacts
      (fam_019_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_019_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `5c472a34166d7f104d7879b996ad49d96cb0aa77f2e3f5bb88694d71b53f5483`.
Observed representative GoodDirection cases: 68. -/
private def fam_020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_020_key : SourceIndexStateKey where
  firstIndex := 26
  secondIndex := 3
  support := fam_020_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_020_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        26 3 source_020_support r mask) :
    source_020_producer.Applies fam_020_key r mask := by
  unfold source_020_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_020_key, fam_020_support, source_020_support],
    hsource⟩⟩⟩

theorem fam_020_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_020_key.support r mask) :
    row_006_producer.Applies fam_020_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_020_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        26 3 source_020_support r mask)
    (hrows : EqEqNegVarFirstRows fam_020_key.support r mask) :
    SourceIndexStateKeyFacts fam_020_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_020_producer.sourceFacts
      (fam_020_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_020_rowApplies_of_rows hrows))

theorem fam_020_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        26 3 source_020_support r mask)
    (hrows : EqEqNegVarFirstRows fam_020_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_020_key.goodKilled_of_source_row
    (source_020_producer.sourceFacts
      (fam_020_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_020_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `cc8ca5d0fc2c2db74ea8cf06ba88b6e33fd01b21b30be9cf8b02a8af1a6bc7eb`.
Observed representative GoodDirection cases: 65. -/
private def fam_021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_021_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 15
  support := fam_021_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_021_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 15 source_021_support r mask) :
    source_021_producer.Applies fam_021_key r mask := by
  unfold source_021_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_021_key, fam_021_support, source_021_support],
    hsource⟩⟩⟩

theorem fam_021_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_021_key.support r mask) :
    row_004_producer.Applies fam_021_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_021_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 15 source_021_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_021_key.support r mask) :
    SourceIndexStateKeyFacts fam_021_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_021_producer.sourceFacts
      (fam_021_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_021_rowApplies_of_rows hrows))

theorem fam_021_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 15 source_021_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_021_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_021_key.goodKilled_of_source_row
    (source_021_producer.sourceFacts
      (fam_021_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_021_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4fd2c6d716718d15e14268942ea542fa2c81953e23c6fbdc765850f7a971713c`.
Observed representative GoodDirection cases: 61. -/
private def fam_022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_022_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 0
  support := fam_022_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_022_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        109 0 source_022_support r mask) :
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
        109 0 source_022_support r mask)
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
        109 0 source_022_support r mask)
    (hrows : EqEqPosVarFirstRows fam_022_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_022_key.goodKilled_of_source_row
    (source_022_producer.sourceFacts
      (fam_022_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_022_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a88d31452b0302cb0c43dfba7ced9a458beab5d560b2fc998fcc7ea1dcfa7170`.
Observed representative GoodDirection cases: 59. -/
private def fam_023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_023_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 0
  support := fam_023_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_023_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 0 source_023_support r mask) :
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
        148 0 source_023_support r mask)
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
        148 0 source_023_support r mask)
    (hrows : EqEqPosVarFirstRows fam_023_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_023_key.goodKilled_of_source_row
    (source_023_producer.sourceFacts
      (fam_023_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_023_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `db00d78c6f0f431fefe44ac0bd37328bf1a5b6554916b0ee2408f5aa436a30a2`.
Observed representative GoodDirection cases: 59. -/
private def fam_024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_024_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 0
  support := fam_024_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_024_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 0 source_024_support r mask) :
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
        161 0 source_024_support r mask)
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
        161 0 source_024_support r mask)
    (hrows : EqEqPosVarFirstRows fam_024_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_024_key.goodKilled_of_source_row
    (source_024_producer.sourceFacts
      (fam_024_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_024_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b1f315d3f9761f8e6db0cebf7739b59e499ff3066fa540d7f17a4b71f65af145`.
Observed representative GoodDirection cases: 55. -/
private def fam_025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_025_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 0
  support := fam_025_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_025_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 0 source_025_support r mask) :
    source_025_producer.Applies fam_025_key r mask := by
  unfold source_025_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_025_key, fam_025_support, source_025_support],
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
        136 0 source_025_support r mask)
    (hrows : EqEqPosVarFirstRows fam_025_key.support r mask) :
    SourceIndexStateKeyFacts fam_025_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_025_producer.sourceFacts
      (fam_025_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_025_rowApplies_of_rows hrows))

theorem fam_025_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 0 source_025_support r mask)
    (hrows : EqEqPosVarFirstRows fam_025_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_025_key.goodKilled_of_source_row
    (source_025_producer.sourceFacts
      (fam_025_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_025_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f0260915116830cdee4479e0ba120e2345afce1dd4b432687b3459ab0a8c7217`.
Observed representative GoodDirection cases: 54. -/
private def fam_026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_026_key : SourceIndexStateKey where
  firstIndex := 183
  secondIndex := 0
  support := fam_026_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_026_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        183 0 source_026_support r mask) :
    source_026_producer.Applies fam_026_key r mask := by
  unfold source_026_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_026_key, fam_026_support, source_026_support],
    hsource⟩⟩⟩

theorem fam_026_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_026_key.support r mask) :
    row_000_producer.Applies fam_026_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_026_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        183 0 source_026_support r mask)
    (hrows : EqEqPosVarFirstRows fam_026_key.support r mask) :
    SourceIndexStateKeyFacts fam_026_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_026_producer.sourceFacts
      (fam_026_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_026_rowApplies_of_rows hrows))

theorem fam_026_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        183 0 source_026_support r mask)
    (hrows : EqEqPosVarFirstRows fam_026_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_026_key.goodKilled_of_source_row
    (source_026_producer.sourceFacts
      (fam_026_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_026_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2439de6f0b777e4cc736c05012dc6ad5c4f965cbc1b24ed407455cf2737070f7`.
Observed representative GoodDirection cases: 52. -/
private def fam_027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_027_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 13
  support := fam_027_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_027_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 13 source_027_support r mask) :
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
        1 13 source_027_support r mask)
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
        1 13 source_027_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_027_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_027_key.goodKilled_of_source_row
    (source_027_producer.sourceFacts
      (fam_027_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_027_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c7daec541a59938059b6b7336130cf10dee6d86d506a0a8e8f1dd2a6eb207757`.
Observed representative GoodDirection cases: 51. -/
private def fam_028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_028_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 14
  support := fam_028_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_028_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 14 source_028_support r mask) :
    source_028_producer.Applies fam_028_key r mask := by
  unfold source_028_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_028_key, fam_028_support, source_028_support],
    hsource⟩⟩⟩

theorem fam_028_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_028_key.support r mask) :
    row_004_producer.Applies fam_028_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_028_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 14 source_028_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_028_key.support r mask) :
    SourceIndexStateKeyFacts fam_028_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_028_producer.sourceFacts
      (fam_028_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_028_rowApplies_of_rows hrows))

theorem fam_028_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 14 source_028_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_028_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_028_key.goodKilled_of_source_row
    (source_028_producer.sourceFacts
      (fam_028_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_028_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4274bdafc404e0e1fecf6459ef92a7903f8f9e4dacc0b5d75d7a77305ffff4ea`.
Observed representative GoodDirection cases: 50. -/
private def fam_029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_029_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 16
  support := fam_029_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_029_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 16 source_030_support r mask) :
    source_030_producer.Applies fam_029_key r mask := by
  unfold source_030_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_029_key, fam_029_support, source_030_support],
    hsource⟩⟩⟩

theorem fam_029_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_029_key.support r mask) :
    row_002_producer.Applies fam_029_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_029_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 16 source_030_support r mask)
    (hrows : EqEqPosVarSecondRows fam_029_key.support r mask) :
    SourceIndexStateKeyFacts fam_029_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_030_producer.sourceFacts
      (fam_029_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_029_rowApplies_of_rows hrows))

theorem fam_029_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 16 source_030_support r mask)
    (hrows : EqEqPosVarSecondRows fam_029_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_029_key.goodKilled_of_source_row
    (source_030_producer.sourceFacts
      (fam_029_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_029_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4ddebe84b37b759c7c35af6b67962ca3122e8996e78c12dee46578cfefdbf6e6`.
Observed representative GoodDirection cases: 50. -/
private def fam_030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_030_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 1
  support := fam_030_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_030_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 1 source_031_support r mask) :
    source_031_producer.Applies fam_030_key r mask := by
  unfold source_031_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_030_key, fam_030_support, source_031_support],
    hsource⟩⟩⟩

theorem fam_030_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_030_key.support r mask) :
    row_001_producer.Applies fam_030_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_030_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 1 source_031_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_030_key.support r mask) :
    SourceIndexStateKeyFacts fam_030_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_031_producer.sourceFacts
      (fam_030_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_030_rowApplies_of_rows hrows))

theorem fam_030_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        162 1 source_031_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_030_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_030_key.goodKilled_of_source_row
    (source_031_producer.sourceFacts
      (fam_030_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_030_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2cc74ca6dcf453d30173de7ab6ba408c54fb8cc3211ebbaca2f91495312617ac`.
Observed representative GoodDirection cases: 50. -/
private def fam_031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_031_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 12
  support := fam_031_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_031_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 12 source_029_support r mask) :
    source_029_producer.Applies fam_031_key r mask := by
  unfold source_029_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_031_key, fam_031_support, source_029_support],
    hsource⟩⟩⟩

theorem fam_031_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_031_key.support r mask) :
    row_004_producer.Applies fam_031_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_031_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 12 source_029_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_031_key.support r mask) :
    SourceIndexStateKeyFacts fam_031_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_029_producer.sourceFacts
      (fam_031_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_031_rowApplies_of_rows hrows))

theorem fam_031_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 12 source_029_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_031_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_031_key.goodKilled_of_source_row
    (source_029_producer.sourceFacts
      (fam_031_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_031_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `582ae5f7332e483b5b742a2b48608c35158bf2515b8a265aaf3d1ff06c7c2c78`.
Observed representative GoodDirection cases: 49. -/
private def fam_032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_032_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 0
  support := fam_032_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_032_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        122 0 source_032_support r mask) :
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
        122 0 source_032_support r mask)
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
        122 0 source_032_support r mask)
    (hrows : EqEqPosVarFirstRows fam_032_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_032_key.goodKilled_of_source_row
    (source_032_producer.sourceFacts
      (fam_032_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_032_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `1f99a51da0266b5f986c5abc34cd20986949fecc29ff21415b195d1ebbe71a75`.
Observed representative GoodDirection cases: 48. -/
private def fam_033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_033_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 15
  support := fam_033_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_033_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 15 source_034_support r mask) :
    source_034_producer.Applies fam_033_key r mask := by
  unfold source_034_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_033_key, fam_033_support, source_034_support],
    hsource⟩⟩⟩

theorem fam_033_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_033_key.support r mask) :
    row_005_producer.Applies fam_033_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_033_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 15 source_034_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_033_key.support r mask) :
    SourceIndexStateKeyFacts fam_033_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_034_producer.sourceFacts
      (fam_033_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_033_rowApplies_of_rows hrows))

theorem fam_033_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 15 source_034_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_033_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_033_key.goodKilled_of_source_row
    (source_034_producer.sourceFacts
      (fam_033_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_033_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `54e546a4bdb558dace5714844d7837c44ad6154f0336ec1ba619519c4ecbd5ea`.
Observed representative GoodDirection cases: 48. -/
private def fam_034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_034_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 10
  support := fam_034_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_034_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 10 source_033_support r mask) :
    source_033_producer.Applies fam_034_key r mask := by
  unfold source_033_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_034_key, fam_034_support, source_033_support],
    hsource⟩⟩⟩

theorem fam_034_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_034_key.support r mask) :
    row_005_producer.Applies fam_034_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_034_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 10 source_033_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_034_key.support r mask) :
    SourceIndexStateKeyFacts fam_034_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_033_producer.sourceFacts
      (fam_034_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_034_rowApplies_of_rows hrows))

theorem fam_034_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 10 source_033_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_034_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_034_key.goodKilled_of_source_row
    (source_033_producer.sourceFacts
      (fam_034_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_034_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `df22064af643aad235f9a9166e7b689a6734e88981457906fca0ca0ee09756fe`.
Observed representative GoodDirection cases: 44. -/
private def fam_035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_035_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 1
  support := fam_035_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_035_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        109 1 source_035_support r mask) :
    source_035_producer.Applies fam_035_key r mask := by
  unfold source_035_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_035_key, fam_035_support, source_035_support],
    hsource⟩⟩⟩

theorem fam_035_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_035_key.support r mask) :
    row_001_producer.Applies fam_035_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_035_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        109 1 source_035_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_035_key.support r mask) :
    SourceIndexStateKeyFacts fam_035_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_035_producer.sourceFacts
      (fam_035_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_035_rowApplies_of_rows hrows))

theorem fam_035_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        109 1 source_035_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_035_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_035_key.goodKilled_of_source_row
    (source_035_producer.sourceFacts
      (fam_035_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_035_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `82aec83bad69a688021327e001de0a98cd86f5d66bcd210f14fa93727ca9bdd1`.
Observed representative GoodDirection cases: 43. -/
private def fam_036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_036_key : SourceIndexStateKey where
  firstIndex := 18
  secondIndex := 1
  support := fam_036_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_036_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        18 1 source_036_support r mask) :
    source_036_producer.Applies fam_036_key r mask := by
  unfold source_036_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_036_key, fam_036_support, source_036_support],
    hsource⟩⟩⟩

theorem fam_036_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_036_key.support r mask) :
    row_001_producer.Applies fam_036_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_036_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        18 1 source_036_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_036_key.support r mask) :
    SourceIndexStateKeyFacts fam_036_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_036_producer.sourceFacts
      (fam_036_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_036_rowApplies_of_rows hrows))

theorem fam_036_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        18 1 source_036_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_036_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_036_key.goodKilled_of_source_row
    (source_036_producer.sourceFacts
      (fam_036_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_036_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `9536c12c7c0159cf45323ae74dc9266140f956597a0894244ec57c197212859f`.
Observed representative GoodDirection cases: 42. -/
private def fam_037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_037_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 0
  support := fam_037_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_037_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 0 source_037_support r mask) :
    source_037_producer.Applies fam_037_key r mask := by
  unfold source_037_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_037_key, fam_037_support, source_037_support],
    hsource⟩⟩⟩

theorem fam_037_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_037_key.support r mask) :
    row_000_producer.Applies fam_037_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_037_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 0 source_037_support r mask)
    (hrows : EqEqPosVarFirstRows fam_037_key.support r mask) :
    SourceIndexStateKeyFacts fam_037_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_037_producer.sourceFacts
      (fam_037_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_037_rowApplies_of_rows hrows))

theorem fam_037_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 0 source_037_support r mask)
    (hrows : EqEqPosVarFirstRows fam_037_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_037_key.goodKilled_of_source_row
    (source_037_producer.sourceFacts
      (fam_037_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_037_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `d5fb70a848c7493d9a717a226ab641a4976a092c0a36b32962d2846ceec5177e`.
Observed representative GoodDirection cases: 41. -/
private def fam_038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_038_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 1
  support := fam_038_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_038_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 1 source_038_support r mask) :
    source_038_producer.Applies fam_038_key r mask := by
  unfold source_038_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_038_key, fam_038_support, source_038_support],
    hsource⟩⟩⟩

theorem fam_038_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_038_key.support r mask) :
    row_001_producer.Applies fam_038_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_038_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 1 source_038_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_038_key.support r mask) :
    SourceIndexStateKeyFacts fam_038_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_038_producer.sourceFacts
      (fam_038_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_038_rowApplies_of_rows hrows))

theorem fam_038_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 1 source_038_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_038_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_038_key.goodKilled_of_source_row
    (source_038_producer.sourceFacts
      (fam_038_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_038_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4c9a529025b5f0d2a2561ce7b4e4aea056b49a29694fa598b4642e9b4b6aea39`.
Observed representative GoodDirection cases: 41. -/
private def fam_039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_039_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 7
  support := fam_039_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_039_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 7 source_039_support r mask) :
    source_039_producer.Applies fam_039_key r mask := by
  unfold source_039_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_039_key, fam_039_support, source_039_support],
    hsource⟩⟩⟩

theorem fam_039_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_039_key.support r mask) :
    row_004_producer.Applies fam_039_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_039_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 7 source_039_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_039_key.support r mask) :
    SourceIndexStateKeyFacts fam_039_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_039_producer.sourceFacts
      (fam_039_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_039_rowApplies_of_rows hrows))

theorem fam_039_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 7 source_039_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_039_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_039_key.goodKilled_of_source_row
    (source_039_producer.sourceFacts
      (fam_039_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_039_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ce351c894c24d0e7934e685ded4df531a3fde648aa0b4af5b6c980817065e54a`.
Observed representative GoodDirection cases: 40. -/
private def fam_040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_040_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 1
  support := fam_040_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_040_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 1 source_040_support r mask) :
    source_040_producer.Applies fam_040_key r mask := by
  unfold source_040_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_040_key, fam_040_support, source_040_support],
    hsource⟩⟩⟩

theorem fam_040_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_040_key.support r mask) :
    row_001_producer.Applies fam_040_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_040_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 1 source_040_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_040_key.support r mask) :
    SourceIndexStateKeyFacts fam_040_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_040_producer.sourceFacts
      (fam_040_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_040_rowApplies_of_rows hrows))

theorem fam_040_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        96 1 source_040_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_040_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_040_key.goodKilled_of_source_row
    (source_040_producer.sourceFacts
      (fam_040_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_040_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4202ea64074ef5e9557956ab72646f128e8ceb69dce405a080f38316dd5bbd6b`.
Observed representative GoodDirection cases: 36. -/
private def fam_041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_041_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 7
  support := fam_041_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_041_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 7 source_041_support r mask) :
    source_041_producer.Applies fam_041_key r mask := by
  unfold source_041_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_041_key, fam_041_support, source_041_support],
    hsource⟩⟩⟩

theorem fam_041_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_041_key.support r mask) :
    row_005_producer.Applies fam_041_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_041_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 7 source_041_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_041_key.support r mask) :
    SourceIndexStateKeyFacts fam_041_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_041_producer.sourceFacts
      (fam_041_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_041_rowApplies_of_rows hrows))

theorem fam_041_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 7 source_041_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_041_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_041_key.goodKilled_of_source_row
    (source_041_producer.sourceFacts
      (fam_041_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_041_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a8ec4854eb063539742df8e5a71e443d2c6d8dc89461d041fb100f0c0980745a`.
Observed representative GoodDirection cases: 35. -/
private def fam_042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_042_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 0
  support := fam_042_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_042_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 0 source_042_support r mask) :
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
        135 0 source_042_support r mask)
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
        135 0 source_042_support r mask)
    (hrows : EqEqPosVarFirstRows fam_042_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_042_key.goodKilled_of_source_row
    (source_042_producer.sourceFacts
      (fam_042_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_042_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0c7becc7afaaffef44c6b08308dddf8d70981c3f52f18cdb8abbaa0124985429`.
Observed representative GoodDirection cases: 35. -/
private def fam_043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_043_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 1
  support := fam_043_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_043_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 1 source_043_support r mask) :
    source_043_producer.Applies fam_043_key r mask := by
  unfold source_043_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_043_key, fam_043_support, source_043_support],
    hsource⟩⟩⟩

theorem fam_043_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_043_key.support r mask) :
    row_001_producer.Applies fam_043_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_043_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 1 source_043_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_043_key.support r mask) :
    SourceIndexStateKeyFacts fam_043_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_043_producer.sourceFacts
      (fam_043_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_043_rowApplies_of_rows hrows))

theorem fam_043_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 1 source_043_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_043_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_043_key.goodKilled_of_source_row
    (source_043_producer.sourceFacts
      (fam_043_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_043_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f6372e655bd1e080f715a75f5998002a7c4eb5c48c53c25dce5244b50fc611b2`.
Observed representative GoodDirection cases: 34. -/
private def fam_044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_044_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 12
  support := fam_044_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_044_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 12 source_044_support r mask) :
    source_044_producer.Applies fam_044_key r mask := by
  unfold source_044_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_044_key, fam_044_support, source_044_support],
    hsource⟩⟩⟩

theorem fam_044_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_044_key.support r mask) :
    row_005_producer.Applies fam_044_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_044_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 12 source_044_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_044_key.support r mask) :
    SourceIndexStateKeyFacts fam_044_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_044_producer.sourceFacts
      (fam_044_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_044_rowApplies_of_rows hrows))

theorem fam_044_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 12 source_044_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_044_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_044_key.goodKilled_of_source_row
    (source_044_producer.sourceFacts
      (fam_044_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_044_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `bd12e0674f599c36efe9cc8fd7020aa104c87901dbb70490d11e7116bde049fa`.
Observed representative GoodDirection cases: 31. -/
private def fam_045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_045_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 0
  support := fam_045_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_045_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 0 source_046_support r mask) :
    source_046_producer.Applies fam_045_key r mask := by
  unfold source_046_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_045_key, fam_045_support, source_046_support],
    hsource⟩⟩⟩

theorem fam_045_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_045_key.support r mask) :
    row_000_producer.Applies fam_045_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_045_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 0 source_046_support r mask)
    (hrows : EqEqPosVarFirstRows fam_045_key.support r mask) :
    SourceIndexStateKeyFacts fam_045_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_046_producer.sourceFacts
      (fam_045_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_045_rowApplies_of_rows hrows))

theorem fam_045_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 0 source_046_support r mask)
    (hrows : EqEqPosVarFirstRows fam_045_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_045_key.goodKilled_of_source_row
    (source_046_producer.sourceFacts
      (fam_045_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_045_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b0a5564e00896691f459069bb50edc7dd6f634de7e62119cb94def93d2f5024f`.
Observed representative GoodDirection cases: 31. -/
private def fam_046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_046_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 11
  support := fam_046_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_046_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 11 source_045_support r mask) :
    source_045_producer.Applies fam_046_key r mask := by
  unfold source_045_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_046_key, fam_046_support, source_045_support],
    hsource⟩⟩⟩

theorem fam_046_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_046_key.support r mask) :
    row_004_producer.Applies fam_046_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_046_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 11 source_045_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_046_key.support r mask) :
    SourceIndexStateKeyFacts fam_046_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_045_producer.sourceFacts
      (fam_046_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_046_rowApplies_of_rows hrows))

theorem fam_046_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 11 source_045_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_046_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_046_key.goodKilled_of_source_row
    (source_045_producer.sourceFacts
      (fam_046_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_046_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `25e6873ca7c450b2c4bf7a2548883cfe32c017b9260e2a47aafb9217d4e29871`.
Observed representative GoodDirection cases: 30. -/
private def fam_047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_047_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 0
  support := fam_047_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_047_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 0 source_047_support r mask) :
    source_047_producer.Applies fam_047_key r mask := by
  unfold source_047_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_047_key, fam_047_support, source_047_support],
    hsource⟩⟩⟩

theorem fam_047_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_047_key.support r mask) :
    row_000_producer.Applies fam_047_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_047_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 0 source_047_support r mask)
    (hrows : EqEqPosVarFirstRows fam_047_key.support r mask) :
    SourceIndexStateKeyFacts fam_047_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_047_producer.sourceFacts
      (fam_047_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_047_rowApplies_of_rows hrows))

theorem fam_047_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 0 source_047_support r mask)
    (hrows : EqEqPosVarFirstRows fam_047_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_047_key.goodKilled_of_source_row
    (source_047_producer.sourceFacts
      (fam_047_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_047_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c1136f3d6dcaf1282882f919bae09c48dd0cb7e7c1486fe27f92688bf5dd73cd`.
Observed representative GoodDirection cases: 30. -/
private def fam_048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_048_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 1
  support := fam_048_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_048_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 1 source_048_support r mask) :
    source_048_producer.Applies fam_048_key r mask := by
  unfold source_048_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_048_key, fam_048_support, source_048_support],
    hsource⟩⟩⟩

theorem fam_048_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_048_key.support r mask) :
    row_001_producer.Applies fam_048_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_048_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 1 source_048_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_048_key.support r mask) :
    SourceIndexStateKeyFacts fam_048_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_048_producer.sourceFacts
      (fam_048_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_048_rowApplies_of_rows hrows))

theorem fam_048_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 1 source_048_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_048_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_048_key.goodKilled_of_source_row
    (source_048_producer.sourceFacts
      (fam_048_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_048_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `56f164b10153fec1fc38a63bbd3e0e90892fbbcda01d6bdaf5e8aaadf94a1630`.
Observed representative GoodDirection cases: 29. -/
private def fam_049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_049_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 1
  support := fam_049_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_049_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 1 source_050_support r mask) :
    source_050_producer.Applies fam_049_key r mask := by
  unfold source_050_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_049_key, fam_049_support, source_050_support],
    hsource⟩⟩⟩

theorem fam_049_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_049_key.support r mask) :
    row_001_producer.Applies fam_049_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_049_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 1 source_050_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_049_key.support r mask) :
    SourceIndexStateKeyFacts fam_049_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_050_producer.sourceFacts
      (fam_049_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_049_rowApplies_of_rows hrows))

theorem fam_049_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        136 1 source_050_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_049_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_049_key.goodKilled_of_source_row
    (source_050_producer.sourceFacts
      (fam_049_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_049_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4f609b8005159381f497d911ce9158755f74bc5ea46357143e85a64bf601e2bf`.
Observed representative GoodDirection cases: 29. -/
private def fam_050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_050_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 2
  support := fam_050_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_050_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 2 source_049_support r mask) :
    source_049_producer.Applies fam_050_key r mask := by
  unfold source_049_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_050_key, fam_050_support, source_049_support],
    hsource⟩⟩⟩

theorem fam_050_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_050_key.support r mask) :
    row_003_producer.Applies fam_050_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_050_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 2 source_049_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_050_key.support r mask) :
    SourceIndexStateKeyFacts fam_050_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_049_producer.sourceFacts
      (fam_050_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_050_rowApplies_of_rows hrows))

theorem fam_050_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        84 2 source_049_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_050_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_050_key.goodKilled_of_source_row
    (source_049_producer.sourceFacts
      (fam_050_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_050_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2b253f19b0568b2d787c036c76183c1aa727a0f469e235fbb42418bc8d844b84`.
Observed representative GoodDirection cases: 29. -/
private def fam_051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_051_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 13
  support := fam_051_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_051_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 13 source_051_support r mask) :
    source_051_producer.Applies fam_051_key r mask := by
  unfold source_051_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_051_key, fam_051_support, source_051_support],
    hsource⟩⟩⟩

theorem fam_051_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_051_key.support r mask) :
    row_005_producer.Applies fam_051_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_051_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 13 source_051_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_051_key.support r mask) :
    SourceIndexStateKeyFacts fam_051_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_051_producer.sourceFacts
      (fam_051_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_051_rowApplies_of_rows hrows))

theorem fam_051_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 13 source_051_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_051_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_051_key.goodKilled_of_source_row
    (source_051_producer.sourceFacts
      (fam_051_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_051_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `56c9f8c82f4ce133096841e6b99ef9d5ae2abcb4af8a62347313fdbbb088d80b`.
Observed representative GoodDirection cases: 28. -/
private def fam_052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_052_key : SourceIndexStateKey where
  firstIndex := 174
  secondIndex := 0
  support := fam_052_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_052_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        174 0 source_052_support r mask) :
    source_052_producer.Applies fam_052_key r mask := by
  unfold source_052_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_052_key, fam_052_support, source_052_support],
    hsource⟩⟩⟩

theorem fam_052_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_052_key.support r mask) :
    row_000_producer.Applies fam_052_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_052_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        174 0 source_052_support r mask)
    (hrows : EqEqPosVarFirstRows fam_052_key.support r mask) :
    SourceIndexStateKeyFacts fam_052_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_052_producer.sourceFacts
      (fam_052_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_052_rowApplies_of_rows hrows))

theorem fam_052_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        174 0 source_052_support r mask)
    (hrows : EqEqPosVarFirstRows fam_052_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_052_key.goodKilled_of_source_row
    (source_052_producer.sourceFacts
      (fam_052_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_052_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `561c18e9c09f8b6b63975005dbb3f97e58761fac0cbe5e8ff8e448b41a1c3805`.
Observed representative GoodDirection cases: 27. -/
private def fam_053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_053_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 14
  support := fam_053_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_053_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 14 source_053_support r mask) :
    source_053_producer.Applies fam_053_key r mask := by
  unfold source_053_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_053_key, fam_053_support, source_053_support],
    hsource⟩⟩⟩

theorem fam_053_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_053_key.support r mask) :
    row_005_producer.Applies fam_053_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_053_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 14 source_053_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_053_key.support r mask) :
    SourceIndexStateKeyFacts fam_053_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_053_producer.sourceFacts
      (fam_053_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_053_rowApplies_of_rows hrows))

theorem fam_053_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 14 source_053_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_053_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_053_key.goodKilled_of_source_row
    (source_053_producer.sourceFacts
      (fam_053_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_053_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8ab709ac13cc6f0efe79f981a5e94488a201fd07d9794497ffb559f5b64a0b83`.
Observed representative GoodDirection cases: 26. -/
private def fam_054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.zm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_054_key : SourceIndexStateKey where
  firstIndex := 61
  secondIndex := 0
  support := fam_054_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_054_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        61 0 source_054_support r mask) :
    source_054_producer.Applies fam_054_key r mask := by
  unfold source_054_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_054_key, fam_054_support, source_054_support],
    hsource⟩⟩⟩

theorem fam_054_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_054_key.support r mask) :
    row_000_producer.Applies fam_054_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_054_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        61 0 source_054_support r mask)
    (hrows : EqEqPosVarFirstRows fam_054_key.support r mask) :
    SourceIndexStateKeyFacts fam_054_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_054_producer.sourceFacts
      (fam_054_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_054_rowApplies_of_rows hrows))

theorem fam_054_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        61 0 source_054_support r mask)
    (hrows : EqEqPosVarFirstRows fam_054_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_054_key.goodKilled_of_source_row
    (source_054_producer.sourceFacts
      (fam_054_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_054_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b6ed4a6c3471880f9c7efcd3dbc12c073964d261bc2e2dd65ba49e0bbfa2e0fc`.
Observed representative GoodDirection cases: 25. -/
private def fam_055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_055_key : SourceIndexStateKey where
  firstIndex := 76
  secondIndex := 1
  support := fam_055_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_055_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        76 1 source_055_support r mask) :
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
        76 1 source_055_support r mask)
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
        76 1 source_055_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_055_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_055_key.goodKilled_of_source_row
    (source_055_producer.sourceFacts
      (fam_055_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_055_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `aaf0c94ac777e38df6704e10e5b134474fbdaee67e45dbecaf0a75839e4051c4`.
Observed representative GoodDirection cases: 23. -/
private def fam_056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_056_key : SourceIndexStateKey where
  firstIndex := 49
  secondIndex := 3
  support := fam_056_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_056_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        49 3 source_058_support r mask) :
    source_058_producer.Applies fam_056_key r mask := by
  unfold source_058_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_056_key, fam_056_support, source_058_support],
    hsource⟩⟩⟩

theorem fam_056_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_056_key.support r mask) :
    row_006_producer.Applies fam_056_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_056_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        49 3 source_058_support r mask)
    (hrows : EqEqNegVarFirstRows fam_056_key.support r mask) :
    SourceIndexStateKeyFacts fam_056_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_058_producer.sourceFacts
      (fam_056_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_056_rowApplies_of_rows hrows))

theorem fam_056_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        49 3 source_058_support r mask)
    (hrows : EqEqNegVarFirstRows fam_056_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_056_key.goodKilled_of_source_row
    (source_058_producer.sourceFacts
      (fam_056_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_056_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `35ae4c9b84c1b658848646268cbdb6a8c2c6900e1ce948dcf13257f0ad4ed6cb`.
Observed representative GoodDirection cases: 23. -/
private def fam_057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_057_key : SourceIndexStateKey where
  firstIndex := 174
  secondIndex := 1
  support := fam_057_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_057_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        174 1 source_061_support r mask) :
    source_061_producer.Applies fam_057_key r mask := by
  unfold source_061_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_057_key, fam_057_support, source_061_support],
    hsource⟩⟩⟩

theorem fam_057_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_057_key.support r mask) :
    row_001_producer.Applies fam_057_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_057_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        174 1 source_061_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_057_key.support r mask) :
    SourceIndexStateKeyFacts fam_057_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_061_producer.sourceFacts
      (fam_057_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_057_rowApplies_of_rows hrows))

theorem fam_057_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        174 1 source_061_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_057_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_057_key.goodKilled_of_source_row
    (source_061_producer.sourceFacts
      (fam_057_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_057_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4df2c1afc8653a5a33c6429c8ffbc66bad80de7112fa60ace57c33c9b9a56adf`.
Observed representative GoodDirection cases: 23. -/
private def fam_058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_058_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 5
  support := fam_058_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_058_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 5 source_059_support r mask) :
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
        1 5 source_059_support r mask)
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
        1 5 source_059_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_058_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_058_key.goodKilled_of_source_row
    (source_059_producer.sourceFacts
      (fam_058_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_058_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `fd750ba67415f9eb7fe69c3f1d2565eff175952a54d289265d0e5ca4ca6e002b`.
Observed representative GoodDirection cases: 23. -/
private def fam_059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_059_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 16
  support := fam_059_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

theorem fam_059_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 16 source_060_support r mask) :
    source_060_producer.Applies fam_059_key r mask := by
  unfold source_060_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_059_key, fam_059_support, source_060_support],
    hsource⟩⟩⟩

theorem fam_059_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_059_key.support r mask) :
    row_004_producer.Applies fam_059_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_059_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 16 source_060_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_059_key.support r mask) :
    SourceIndexStateKeyFacts fam_059_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_060_producer.sourceFacts
      (fam_059_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_059_rowApplies_of_rows hrows))

theorem fam_059_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        1 16 source_060_support r mask)
    (hrows : OppOneMinusVarSecondRows fam_059_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_059_key.goodKilled_of_source_row
    (source_060_producer.sourceFacts
      (fam_059_sourceApplies_of_sourcePredicate hsource))
    (row_004_producer.rowFacts
      (fam_059_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3b12b6c3f181c7911dd6e6c306705dbca793915b3d792bed6f6b96f76da986fd`.
Observed representative GoodDirection cases: 23. -/
private def fam_060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_060_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 2
  support := fam_060_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_060_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 2 source_057_support r mask) :
    source_057_producer.Applies fam_060_key r mask := by
  unfold source_057_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_060_key, fam_060_support, source_057_support],
    hsource⟩⟩⟩

theorem fam_060_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_060_key.support r mask) :
    row_003_producer.Applies fam_060_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_060_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 2 source_057_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_060_key.support r mask) :
    SourceIndexStateKeyFacts fam_060_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_057_producer.sourceFacts
      (fam_060_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_060_rowApplies_of_rows hrows))

theorem fam_060_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        83 2 source_057_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_060_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_060_key.goodKilled_of_source_row
    (source_057_producer.sourceFacts
      (fam_060_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_060_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7a1e0cd0a6c58ec13f08757d346780672ca91ff5432cda2588fef008da40a32c`.
Observed representative GoodDirection cases: 22. -/
private def fam_061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_061_key : SourceIndexStateKey where
  firstIndex := 167
  secondIndex := 0
  support := fam_061_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_061_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 0 source_062_support r mask) :
    source_062_producer.Applies fam_061_key r mask := by
  unfold source_062_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_061_key, fam_061_support, source_062_support],
    hsource⟩⟩⟩

theorem fam_061_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_061_key.support r mask) :
    row_000_producer.Applies fam_061_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_061_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 0 source_062_support r mask)
    (hrows : EqEqPosVarFirstRows fam_061_key.support r mask) :
    SourceIndexStateKeyFacts fam_061_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_062_producer.sourceFacts
      (fam_061_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_061_rowApplies_of_rows hrows))

theorem fam_061_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        167 0 source_062_support r mask)
    (hrows : EqEqPosVarFirstRows fam_061_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_061_key.goodKilled_of_source_row
    (source_062_producer.sourceFacts
      (fam_061_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_061_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c67abe35431fba0be0a441cef037ef15a1a697ccab035166f7031568a7d4052e`.
Observed representative GoodDirection cases: 21. -/
private def fam_062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_062_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 6
  support := fam_062_support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem fam_062_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 6 source_063_support r mask) :
    source_063_producer.Applies fam_062_key r mask := by
  unfold source_063_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_062_key, fam_062_support, source_063_support],
    hsource⟩⟩⟩

theorem fam_062_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_062_key.support r mask) :
    row_002_producer.Applies fam_062_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_062_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 6 source_063_support r mask)
    (hrows : EqEqPosVarSecondRows fam_062_key.support r mask) :
    SourceIndexStateKeyFacts fam_062_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_063_producer.sourceFacts
      (fam_062_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_062_rowApplies_of_rows hrows))

theorem fam_062_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        0 6 source_063_support r mask)
    (hrows : EqEqPosVarSecondRows fam_062_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_062_key.goodKilled_of_source_row
    (source_063_producer.sourceFacts
      (fam_062_sourceApplies_of_sourcePredicate hsource))
    (row_002_producer.rowFacts
      (fam_062_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `6af2d41d3c2ee178f41f1e043d7b4c346ce2ba5b36e5152d9b0c67d6528bd6bc`.
Observed representative GoodDirection cases: 20. -/
private def fam_063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_063_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 0
  support := fam_063_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_063_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 0 source_064_support r mask) :
    source_064_producer.Applies fam_063_key r mask := by
  unfold source_064_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_063_key, fam_063_support, source_064_support],
    hsource⟩⟩⟩

theorem fam_063_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_063_key.support r mask) :
    row_000_producer.Applies fam_063_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_063_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 0 source_064_support r mask)
    (hrows : EqEqPosVarFirstRows fam_063_key.support r mask) :
    SourceIndexStateKeyFacts fam_063_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_064_producer.sourceFacts
      (fam_063_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_063_rowApplies_of_rows hrows))

theorem fam_063_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 0 source_064_support r mask)
    (hrows : EqEqPosVarFirstRows fam_063_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_063_key.goodKilled_of_source_row
    (source_064_producer.sourceFacts
      (fam_063_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_063_rowApplies_of_rows hrows))

theorem chunk_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Chunks.Chunk000
