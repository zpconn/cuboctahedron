import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Source
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Row

/-!
Pair-sign producer-coverage descriptor chunk.

Generated bounded smoke evidence. This is not global coverage.
Phase: 6Z.6K.8AM.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Chunks.Chunk002

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Source
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Row

set_option linter.unusedVariables false

/-- Pair-sign producer coverage key `5befadd8e6f7dc553501dfd8235a1fe5b23538a0756b0a76a7512061304ec15d`.
Observed representative GoodDirection cases: 5. -/
private def fam_128_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_128_key : SourceIndexStateKey where
  firstIndex := 71
  secondIndex := 1
  support := fam_128_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_128_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        71 1 source_120_support r mask) :
    source_120_producer.Applies fam_128_key r mask := by
  unfold source_120_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_128_key, fam_128_support, source_120_support],
    hsource⟩⟩⟩

theorem fam_128_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_128_key.support r mask) :
    row_001_producer.Applies fam_128_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_128_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        71 1 source_120_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_128_key.support r mask) :
    SourceIndexStateKeyFacts fam_128_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_120_producer.sourceFacts
      (fam_128_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_128_rowApplies_of_rows hrows))

theorem fam_128_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        71 1 source_120_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_128_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_128_key.goodKilled_of_source_row
    (source_120_producer.sourceFacts
      (fam_128_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_128_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `cba2ce8929570b082d2a2ba9136e750df56c46ff6eb2c3dae94e36fe81eb5aee`.
Observed representative GoodDirection cases: 5. -/
private def fam_129_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_129_key : SourceIndexStateKey where
  firstIndex := 19
  secondIndex := 1
  support := fam_129_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_129_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        19 1 source_122_support r mask) :
    source_122_producer.Applies fam_129_key r mask := by
  unfold source_122_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_129_key, fam_129_support, source_122_support],
    hsource⟩⟩⟩

theorem fam_129_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_129_key.support r mask) :
    row_001_producer.Applies fam_129_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_129_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        19 1 source_122_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_129_key.support r mask) :
    SourceIndexStateKeyFacts fam_129_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_122_producer.sourceFacts
      (fam_129_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_129_rowApplies_of_rows hrows))

theorem fam_129_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        19 1 source_122_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_129_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_129_key.goodKilled_of_source_row
    (source_122_producer.sourceFacts
      (fam_129_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_129_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `307b518bdefa532ce9207f935557e93cb89dbbdbfb0929ac9f926eee7b7f88a7`.
Observed representative GoodDirection cases: 5. -/
private def fam_130_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_130_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 16
  support := fam_130_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

theorem fam_130_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 16 source_126_support r mask) :
    source_126_producer.Applies fam_130_key r mask := by
  unfold source_126_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_130_key, fam_130_support, source_126_support],
    hsource⟩⟩⟩

theorem fam_130_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_130_key.support r mask) :
    row_005_producer.Applies fam_130_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_130_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 16 source_126_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_130_key.support r mask) :
    SourceIndexStateKeyFacts fam_130_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_126_producer.sourceFacts
      (fam_130_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_130_rowApplies_of_rows hrows))

theorem fam_130_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        2 16 source_126_support r mask)
    (hrows : OppMinusOneVarSecondRows fam_130_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_130_key.goodKilled_of_source_row
    (source_126_producer.sourceFacts
      (fam_130_sourceApplies_of_sourcePredicate hsource))
    (row_005_producer.rowFacts
      (fam_130_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0c34bfb49af24ec42a1f42fc5b9a3786787b736bc27930a770584a07964c05b6`.
Observed representative GoodDirection cases: 4. -/
private def fam_131_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_131_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_131_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_131_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_056_support r mask) :
    source_056_producer.Applies fam_131_key r mask := by
  unfold source_056_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_131_key, fam_131_support, source_056_support],
    hsource⟩⟩⟩

theorem fam_131_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_131_key.support r mask) :
    row_016_producer.Applies fam_131_key r mask := by
  unfold row_016_producer
  exact ⟨rfl, hrows⟩

theorem fam_131_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_056_support r mask)
    (hrows : AxisAOnlyRows fam_131_key.support r mask) :
    SourceIndexStateKeyFacts fam_131_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_056_producer.sourceFacts
      (fam_131_sourceApplies_of_sourcePredicate hsource))
    (row_016_producer.rowFacts
      (fam_131_rowApplies_of_rows hrows))

theorem fam_131_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_056_support r mask)
    (hrows : AxisAOnlyRows fam_131_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_131_key.goodKilled_of_source_row
    (source_056_producer.sourceFacts
      (fam_131_sourceApplies_of_sourcePredicate hsource))
    (row_016_producer.rowFacts
      (fam_131_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3bfda27fc01458d2f389e7f2c54bc8b1ccbe1f08a7582d881305cbba7f775712`.
Observed representative GoodDirection cases: 4. -/
private def fam_132_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
private def fam_132_key : SourceIndexStateKey where
  firstIndex := 101
  secondIndex := 4
  support := fam_132_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_132_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        101 4 source_139_support r mask) :
    source_139_producer.Applies fam_132_key r mask := by
  unfold source_139_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_132_key, fam_132_support, source_139_support],
    hsource⟩⟩⟩

theorem fam_132_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_132_key.support r mask) :
    row_012_producer.Applies fam_132_key r mask := by
  unfold row_012_producer
  exact ⟨rfl, hrows⟩

theorem fam_132_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        101 4 source_139_support r mask)
    (hrows : AxisAOnlyRows fam_132_key.support r mask) :
    SourceIndexStateKeyFacts fam_132_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_139_producer.sourceFacts
      (fam_132_sourceApplies_of_sourcePredicate hsource))
    (row_012_producer.rowFacts
      (fam_132_rowApplies_of_rows hrows))

theorem fam_132_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        101 4 source_139_support r mask)
    (hrows : AxisAOnlyRows fam_132_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_132_key.goodKilled_of_source_row
    (source_139_producer.sourceFacts
      (fam_132_sourceApplies_of_sourcePredicate hsource))
    (row_012_producer.rowFacts
      (fam_132_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b2f94cef1231145b0abb80b6b95b9f12d3bb817aff4c2bb4216b58a051217172`.
Observed representative GoodDirection cases: 4. -/
private def fam_133_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_133_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_133_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_133_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_056_support r mask) :
    source_056_producer.Applies fam_133_key r mask := by
  unfold source_056_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_133_key, fam_133_support, source_056_support],
    hsource⟩⟩⟩

theorem fam_133_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_133_key.support r mask) :
    row_017_producer.Applies fam_133_key r mask := by
  unfold row_017_producer
  exact ⟨rfl, hrows⟩

theorem fam_133_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_056_support r mask)
    (hrows : AxisAOnlyRows fam_133_key.support r mask) :
    SourceIndexStateKeyFacts fam_133_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_056_producer.sourceFacts
      (fam_133_sourceApplies_of_sourcePredicate hsource))
    (row_017_producer.rowFacts
      (fam_133_rowApplies_of_rows hrows))

theorem fam_133_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 5 source_056_support r mask)
    (hrows : AxisAOnlyRows fam_133_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_133_key.goodKilled_of_source_row
    (source_056_producer.sourceFacts
      (fam_133_sourceApplies_of_sourcePredicate hsource))
    (row_017_producer.rowFacts
      (fam_133_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2b13ec450d4e16701ee460dbb55d845bd603427f2235572a3df3ee8e915caa6c`.
Observed representative GoodDirection cases: 4. -/
private def fam_134_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_134_key : SourceIndexStateKey where
  firstIndex := 92
  secondIndex := 3
  support := fam_134_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_134_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        92 3 source_137_support r mask) :
    source_137_producer.Applies fam_134_key r mask := by
  unfold source_137_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_134_key, fam_134_support, source_137_support],
    hsource⟩⟩⟩

theorem fam_134_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_134_key.support r mask) :
    row_006_producer.Applies fam_134_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_134_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        92 3 source_137_support r mask)
    (hrows : EqEqNegVarFirstRows fam_134_key.support r mask) :
    SourceIndexStateKeyFacts fam_134_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_137_producer.sourceFacts
      (fam_134_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_134_rowApplies_of_rows hrows))

theorem fam_134_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        92 3 source_137_support r mask)
    (hrows : EqEqNegVarFirstRows fam_134_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_134_key.goodKilled_of_source_row
    (source_137_producer.sourceFacts
      (fam_134_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_134_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f65ecfcd11f59ce4bc09bca2fbb17b2920d0bf8e0c7ac556d404c1c2650bbb40`.
Observed representative GoodDirection cases: 4. -/
private def fam_135_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_135_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 3
  support := fam_135_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_135_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 3 source_134_support r mask) :
    source_134_producer.Applies fam_135_key r mask := by
  unfold source_134_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_135_key, fam_135_support, source_134_support],
    hsource⟩⟩⟩

theorem fam_135_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_135_key.support r mask) :
    row_006_producer.Applies fam_135_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_135_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 3 source_134_support r mask)
    (hrows : EqEqNegVarFirstRows fam_135_key.support r mask) :
    SourceIndexStateKeyFacts fam_135_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_134_producer.sourceFacts
      (fam_135_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_135_rowApplies_of_rows hrows))

theorem fam_135_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 3 source_134_support r mask)
    (hrows : EqEqNegVarFirstRows fam_135_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_135_key.goodKilled_of_source_row
    (source_134_producer.sourceFacts
      (fam_135_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_135_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `38cc8114161857e38f6b7164abe83ffb864ee363af423e1438055feb17227e38`.
Observed representative GoodDirection cases: 4. -/
private def fam_136_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_136_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 16
  support := fam_136_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_136_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 16 source_135_support r mask) :
    source_135_producer.Applies fam_136_key r mask := by
  unfold source_135_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_136_key, fam_136_support, source_135_support],
    hsource⟩⟩⟩

theorem fam_136_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_136_key.support r mask) :
    row_007_producer.Applies fam_136_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_136_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 16 source_135_support r mask)
    (hrows : EqEqNegVarSecondRows fam_136_key.support r mask) :
    SourceIndexStateKeyFacts fam_136_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_135_producer.sourceFacts
      (fam_136_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_136_rowApplies_of_rows hrows))

theorem fam_136_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 16 source_135_support r mask)
    (hrows : EqEqNegVarSecondRows fam_136_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_136_key.goodKilled_of_source_row
    (source_135_producer.sourceFacts
      (fam_136_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_136_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `219ccc4850692397dcce0b52d769bac44be881aa4a1d26942b57d075a9518e0e`.
Observed representative GoodDirection cases: 4. -/
private def fam_137_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_137_key : SourceIndexStateKey where
  firstIndex := 131
  secondIndex := 0
  support := fam_137_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_137_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 0 source_133_support r mask) :
    source_133_producer.Applies fam_137_key r mask := by
  unfold source_133_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_137_key, fam_137_support, source_133_support],
    hsource⟩⟩⟩

theorem fam_137_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_137_key.support r mask) :
    row_000_producer.Applies fam_137_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_137_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 0 source_133_support r mask)
    (hrows : EqEqPosVarFirstRows fam_137_key.support r mask) :
    SourceIndexStateKeyFacts fam_137_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_133_producer.sourceFacts
      (fam_137_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_137_rowApplies_of_rows hrows))

theorem fam_137_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        131 0 source_133_support r mask)
    (hrows : EqEqPosVarFirstRows fam_137_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_137_key.goodKilled_of_source_row
    (source_133_producer.sourceFacts
      (fam_137_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_137_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `770c17db81a00d2cc196f1c69403cf77853451677532a5501a7f235477ca92e8`.
Observed representative GoodDirection cases: 4. -/
private def fam_138_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_138_key : SourceIndexStateKey where
  firstIndex := 5
  secondIndex := 8
  support := fam_138_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_138_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 8 source_076_support r mask) :
    source_076_producer.Applies fam_138_key r mask := by
  unfold source_076_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_138_key, fam_138_support, source_076_support],
    hsource⟩⟩⟩

theorem fam_138_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_138_key.support r mask) :
    row_010_producer.Applies fam_138_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_138_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 8 source_076_support r mask)
    (hrows : ExactTwoSourceValidRows fam_138_key.support r mask) :
    SourceIndexStateKeyFacts fam_138_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_076_producer.sourceFacts
      (fam_138_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_138_rowApplies_of_rows hrows))

theorem fam_138_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 8 source_076_support r mask)
    (hrows : ExactTwoSourceValidRows fam_138_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_138_key.goodKilled_of_source_row
    (source_076_producer.sourceFacts
      (fam_138_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_138_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a48f7244748fb2b5d6b99537ebea0e8e6ecfeb92e94d96e4983baf7034d33578`.
Observed representative GoodDirection cases: 4. -/
private def fam_139_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_139_key : SourceIndexStateKey where
  firstIndex := 63
  secondIndex := 5
  support := fam_139_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_139_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        63 5 source_141_support r mask) :
    source_141_producer.Applies fam_139_key r mask := by
  unfold source_141_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_139_key, fam_139_support, source_141_support],
    hsource⟩⟩⟩

theorem fam_139_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_139_key.support r mask) :
    row_008_producer.Applies fam_139_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_139_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        63 5 source_141_support r mask)
    (hrows : ExactTwoSourceValidRows fam_139_key.support r mask) :
    SourceIndexStateKeyFacts fam_139_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_141_producer.sourceFacts
      (fam_139_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_139_rowApplies_of_rows hrows))

theorem fam_139_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        63 5 source_141_support r mask)
    (hrows : ExactTwoSourceValidRows fam_139_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_139_key.goodKilled_of_source_row
    (source_141_producer.sourceFacts
      (fam_139_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_139_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `dc7ee6966182758392ba8c93ee7187a14eff9c4b58f01538af7ddd92fb5e1f04`.
Observed representative GoodDirection cases: 4. -/
private def fam_140_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_140_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 6
  support := fam_140_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_140_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 6 source_131_support r mask) :
    source_131_producer.Applies fam_140_key r mask := by
  unfold source_131_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_140_key, fam_140_support, source_131_support],
    hsource⟩⟩⟩

theorem fam_140_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_140_key.support r mask) :
    row_009_producer.Applies fam_140_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_140_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 6 source_131_support r mask)
    (hrows : ExactTwoSourceValidRows fam_140_key.support r mask) :
    SourceIndexStateKeyFacts fam_140_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_131_producer.sourceFacts
      (fam_140_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_140_rowApplies_of_rows hrows))

theorem fam_140_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 6 source_131_support r mask)
    (hrows : ExactTwoSourceValidRows fam_140_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_140_key.goodKilled_of_source_row
    (source_131_producer.sourceFacts
      (fam_140_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_140_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7c398943bfe7f776983d0a4611f2d24c7a26d43a7a36ec62a9d317e4e445a888`.
Observed representative GoodDirection cases: 4. -/
private def fam_141_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_141_key : SourceIndexStateKey where
  firstIndex := 94
  secondIndex := 1
  support := fam_141_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_141_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        94 1 source_140_support r mask) :
    source_140_producer.Applies fam_141_key r mask := by
  unfold source_140_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_141_key, fam_141_support, source_140_support],
    hsource⟩⟩⟩

theorem fam_141_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_141_key.support r mask) :
    row_001_producer.Applies fam_141_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_141_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        94 1 source_140_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_141_key.support r mask) :
    SourceIndexStateKeyFacts fam_141_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_140_producer.sourceFacts
      (fam_141_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_141_rowApplies_of_rows hrows))

theorem fam_141_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        94 1 source_140_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_141_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_141_key.goodKilled_of_source_row
    (source_140_producer.sourceFacts
      (fam_141_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_141_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `808e287953dcc53499fbbc7f0640515f95f4a607fbfdbaab9db2a777a8a3700b`.
Observed representative GoodDirection cases: 4. -/
private def fam_142_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_142_key : SourceIndexStateKey where
  firstIndex := 141
  secondIndex := 1
  support := fam_142_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_142_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        141 1 source_142_support r mask) :
    source_142_producer.Applies fam_142_key r mask := by
  unfold source_142_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_142_key, fam_142_support, source_142_support],
    hsource⟩⟩⟩

theorem fam_142_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_142_key.support r mask) :
    row_001_producer.Applies fam_142_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_142_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        141 1 source_142_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_142_key.support r mask) :
    SourceIndexStateKeyFacts fam_142_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_142_producer.sourceFacts
      (fam_142_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_142_rowApplies_of_rows hrows))

theorem fam_142_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        141 1 source_142_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_142_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_142_key.goodKilled_of_source_row
    (source_142_producer.sourceFacts
      (fam_142_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_142_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `e3871a481d56fba6bedc69f62f83f3cb2b6631d5b3ea08fb09a295dbe1b4f6f1`.
Observed representative GoodDirection cases: 4. -/
private def fam_143_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_143_key : SourceIndexStateKey where
  firstIndex := 144
  secondIndex := 1
  support := fam_143_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_143_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 1 source_132_support r mask) :
    source_132_producer.Applies fam_143_key r mask := by
  unfold source_132_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_143_key, fam_143_support, source_132_support],
    hsource⟩⟩⟩

theorem fam_143_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_143_key.support r mask) :
    row_001_producer.Applies fam_143_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_143_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 1 source_132_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_143_key.support r mask) :
    SourceIndexStateKeyFacts fam_143_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_132_producer.sourceFacts
      (fam_143_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_143_rowApplies_of_rows hrows))

theorem fam_143_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 1 source_132_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_143_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_143_key.goodKilled_of_source_row
    (source_132_producer.sourceFacts
      (fam_143_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_143_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `733e6cc269358dc2bf15722b05a15fa8bcf753757c958483e781382a19a799bb`.
Observed representative GoodDirection cases: 4. -/
private def fam_144_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_144_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 2
  support := fam_144_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_144_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 2 source_130_support r mask) :
    source_130_producer.Applies fam_144_key r mask := by
  unfold source_130_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_144_key, fam_144_support, source_130_support],
    hsource⟩⟩⟩

theorem fam_144_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_144_key.support r mask) :
    row_003_producer.Applies fam_144_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_144_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 2 source_130_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_144_key.support r mask) :
    SourceIndexStateKeyFacts fam_144_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_130_producer.sourceFacts
      (fam_144_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_144_rowApplies_of_rows hrows))

theorem fam_144_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        44 2 source_130_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_144_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_144_key.goodKilled_of_source_row
    (source_130_producer.sourceFacts
      (fam_144_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_144_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `bc85655f9c2838076ef73e8c888506c6bdaf04bcb58e07b08fcec4c7da8981da`.
Observed representative GoodDirection cases: 4. -/
private def fam_145_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_145_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 2
  support := fam_145_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_145_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 2 source_136_support r mask) :
    source_136_producer.Applies fam_145_key r mask := by
  unfold source_136_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_145_key, fam_145_support, source_136_support],
    hsource⟩⟩⟩

theorem fam_145_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_145_key.support r mask) :
    row_003_producer.Applies fam_145_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_145_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 2 source_136_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_145_key.support r mask) :
    SourceIndexStateKeyFacts fam_145_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_136_producer.sourceFacts
      (fam_145_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_145_rowApplies_of_rows hrows))

theorem fam_145_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 2 source_136_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_145_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_145_key.goodKilled_of_source_row
    (source_136_producer.sourceFacts
      (fam_145_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_145_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3470de88c3bb9a115ac302df9a176bfee11086cf10630f460eac52948997c5dd`.
Observed representative GoodDirection cases: 3. -/
private def fam_146_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_146_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 3
  support := fam_146_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_146_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 3 source_156_support r mask) :
    source_156_producer.Applies fam_146_key r mask := by
  unfold source_156_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_146_key, fam_146_support, source_156_support],
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
        135 3 source_156_support r mask)
    (hrows : EqEqNegVarFirstRows fam_146_key.support r mask) :
    SourceIndexStateKeyFacts fam_146_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_156_producer.sourceFacts
      (fam_146_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_146_rowApplies_of_rows hrows))

theorem fam_146_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        135 3 source_156_support r mask)
    (hrows : EqEqNegVarFirstRows fam_146_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_146_key.goodKilled_of_source_row
    (source_156_producer.sourceFacts
      (fam_146_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_146_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b8abf83a701501202948c3cfb9cc50a419f9d23ff90c75b8eeba2f8faa967288`.
Observed representative GoodDirection cases: 3. -/
private def fam_147_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_147_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 3
  support := fam_147_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_147_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 3 source_153_support r mask) :
    source_153_producer.Applies fam_147_key r mask := by
  unfold source_153_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_147_key, fam_147_support, source_153_support],
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
        110 3 source_153_support r mask)
    (hrows : EqEqNegVarFirstRows fam_147_key.support r mask) :
    SourceIndexStateKeyFacts fam_147_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_153_producer.sourceFacts
      (fam_147_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_147_rowApplies_of_rows hrows))

theorem fam_147_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        110 3 source_153_support r mask)
    (hrows : EqEqNegVarFirstRows fam_147_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_147_key.goodKilled_of_source_row
    (source_153_producer.sourceFacts
      (fam_147_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_147_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7b3584380159ae7b69dba30e7b0a0b033a457a6fff390587f2a3320523728830`.
Observed representative GoodDirection cases: 3. -/
private def fam_148_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_148_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 5
  support := fam_148_support
  template := SourceIndexTemplate.eqEqNegVarSecond

theorem fam_148_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 5 source_148_support r mask) :
    source_148_producer.Applies fam_148_key r mask := by
  unfold source_148_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_148_key, fam_148_support, source_148_support],
    hsource⟩⟩⟩

theorem fam_148_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_148_key.support r mask) :
    row_007_producer.Applies fam_148_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_148_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 5 source_148_support r mask)
    (hrows : EqEqNegVarSecondRows fam_148_key.support r mask) :
    SourceIndexStateKeyFacts fam_148_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_148_producer.sourceFacts
      (fam_148_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_148_rowApplies_of_rows hrows))

theorem fam_148_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        3 5 source_148_support r mask)
    (hrows : EqEqNegVarSecondRows fam_148_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_148_key.goodKilled_of_source_row
    (source_148_producer.sourceFacts
      (fam_148_sourceApplies_of_sourcePredicate hsource))
    (row_007_producer.rowFacts
      (fam_148_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `242c2617f243881445680768f3741073f1038f4c2907ea97125881f135b34fa1`.
Observed representative GoodDirection cases: 3. -/
private def fam_149_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_149_key : SourceIndexStateKey where
  firstIndex := 118
  secondIndex := 0
  support := fam_149_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_149_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        118 0 source_150_support r mask) :
    source_150_producer.Applies fam_149_key r mask := by
  unfold source_150_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_149_key, fam_149_support, source_150_support],
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
        118 0 source_150_support r mask)
    (hrows : EqEqPosVarFirstRows fam_149_key.support r mask) :
    SourceIndexStateKeyFacts fam_149_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_150_producer.sourceFacts
      (fam_149_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_149_rowApplies_of_rows hrows))

theorem fam_149_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        118 0 source_150_support r mask)
    (hrows : EqEqPosVarFirstRows fam_149_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_149_key.goodKilled_of_source_row
    (source_150_producer.sourceFacts
      (fam_149_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_149_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `9d1e64462716bf012317f5f8dcfdddb3e55cb6fc75d7f4da626b445f2d96fd3a`.
Observed representative GoodDirection cases: 3. -/
private def fam_150_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_150_key : SourceIndexStateKey where
  firstIndex := 170
  secondIndex := 0
  support := fam_150_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_150_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 0 source_158_support r mask) :
    source_158_producer.Applies fam_150_key r mask := by
  unfold source_158_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_150_key, fam_150_support, source_158_support],
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
        170 0 source_158_support r mask)
    (hrows : EqEqPosVarFirstRows fam_150_key.support r mask) :
    SourceIndexStateKeyFacts fam_150_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_158_producer.sourceFacts
      (fam_150_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_150_rowApplies_of_rows hrows))

theorem fam_150_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 0 source_158_support r mask)
    (hrows : EqEqPosVarFirstRows fam_150_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_150_key.goodKilled_of_source_row
    (source_158_producer.sourceFacts
      (fam_150_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_150_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `b9288f536564a1a4815d5642a491b876f71d7efa07a01f5bd52046d7ce1fc608`.
Observed representative GoodDirection cases: 3. -/
private def fam_151_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_151_key : SourceIndexStateKey where
  firstIndex := 130
  secondIndex := 0
  support := fam_151_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_151_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        130 0 source_145_support r mask) :
    source_145_producer.Applies fam_151_key r mask := by
  unfold source_145_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_151_key, fam_151_support, source_145_support],
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
        130 0 source_145_support r mask)
    (hrows : EqEqPosVarFirstRows fam_151_key.support r mask) :
    SourceIndexStateKeyFacts fam_151_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_145_producer.sourceFacts
      (fam_151_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_151_rowApplies_of_rows hrows))

theorem fam_151_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        130 0 source_145_support r mask)
    (hrows : EqEqPosVarFirstRows fam_151_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_151_key.goodKilled_of_source_row
    (source_145_producer.sourceFacts
      (fam_151_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_151_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `c5ea6cfc1f1743bf4c6077c53cf61e36921b992a5537e82e0beb9313117170bc`.
Observed representative GoodDirection cases: 3. -/
private def fam_152_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.zm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_152_key : SourceIndexStateKey where
  firstIndex := 113
  secondIndex := 0
  support := fam_152_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_152_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        113 0 source_160_support r mask) :
    source_160_producer.Applies fam_152_key r mask := by
  unfold source_160_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_152_key, fam_152_support, source_160_support],
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
        113 0 source_160_support r mask)
    (hrows : EqEqPosVarFirstRows fam_152_key.support r mask) :
    SourceIndexStateKeyFacts fam_152_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_160_producer.sourceFacts
      (fam_152_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_152_rowApplies_of_rows hrows))

theorem fam_152_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        113 0 source_160_support r mask)
    (hrows : EqEqPosVarFirstRows fam_152_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_152_key.goodKilled_of_source_row
    (source_160_producer.sourceFacts
      (fam_152_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_152_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0fbed6936e3e2b3594f002dc7eb583d58069846c6c3b20d7ed06cde2bc0770b3`.
Observed representative GoodDirection cases: 3. -/
private def fam_153_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨10, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_153_key : SourceIndexStateKey where
  firstIndex := 14
  secondIndex := 5
  support := fam_153_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_153_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 5 source_091_support r mask) :
    source_091_producer.Applies fam_153_key r mask := by
  unfold source_091_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_153_key, fam_153_support, source_091_support],
    hsource⟩⟩⟩

theorem fam_153_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_153_key.support r mask) :
    row_010_producer.Applies fam_153_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_153_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 5 source_091_support r mask)
    (hrows : ExactTwoSourceValidRows fam_153_key.support r mask) :
    SourceIndexStateKeyFacts fam_153_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_091_producer.sourceFacts
      (fam_153_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_153_rowApplies_of_rows hrows))

theorem fam_153_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        14 5 source_091_support r mask)
    (hrows : ExactTwoSourceValidRows fam_153_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_153_key.goodKilled_of_source_row
    (source_091_producer.sourceFacts
      (fam_153_sourceApplies_of_sourcePredicate hsource))
    (row_010_producer.rowFacts
      (fam_153_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3613934d83ed2cb2ec244ec3739fd98d8f9e4e9144e9d1e3e2dfe2ce8bd82297`.
Observed representative GoodDirection cases: 3. -/
private def fam_154_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_154_key : SourceIndexStateKey where
  firstIndex := 45
  secondIndex := 5
  support := fam_154_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_154_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        45 5 source_149_support r mask) :
    source_149_producer.Applies fam_154_key r mask := by
  unfold source_149_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_154_key, fam_154_support, source_149_support],
    hsource⟩⟩⟩

theorem fam_154_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_154_key.support r mask) :
    row_008_producer.Applies fam_154_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_154_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        45 5 source_149_support r mask)
    (hrows : ExactTwoSourceValidRows fam_154_key.support r mask) :
    SourceIndexStateKeyFacts fam_154_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_149_producer.sourceFacts
      (fam_154_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_154_rowApplies_of_rows hrows))

theorem fam_154_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        45 5 source_149_support r mask)
    (hrows : ExactTwoSourceValidRows fam_154_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_154_key.goodKilled_of_source_row
    (source_149_producer.sourceFacts
      (fam_154_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_154_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3ba8a8fccd97698172785570efd9574e459b257c671091d3318a6fde7eed756a`.
Observed representative GoodDirection cases: 3. -/
private def fam_155_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_155_key : SourceIndexStateKey where
  firstIndex := 5
  secondIndex := 13
  support := fam_155_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_155_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 13 source_127_support r mask) :
    source_127_producer.Applies fam_155_key r mask := by
  unfold source_127_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_155_key, fam_155_support, source_127_support],
    hsource⟩⟩⟩

theorem fam_155_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_155_key.support r mask) :
    row_008_producer.Applies fam_155_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_155_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 13 source_127_support r mask)
    (hrows : ExactTwoSourceValidRows fam_155_key.support r mask) :
    SourceIndexStateKeyFacts fam_155_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_127_producer.sourceFacts
      (fam_155_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_155_rowApplies_of_rows hrows))

theorem fam_155_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 13 source_127_support r mask)
    (hrows : ExactTwoSourceValidRows fam_155_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_155_key.goodKilled_of_source_row
    (source_127_producer.sourceFacts
      (fam_155_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_155_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `50b954ff1a49a4564bdc1a9872b61c822c1c2394c6b0b8f408c68f7355572634`.
Observed representative GoodDirection cases: 3. -/
private def fam_156_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨12, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_156_key : SourceIndexStateKey where
  firstIndex := 16
  secondIndex := 5
  support := fam_156_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_156_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 5 source_073_support r mask) :
    source_073_producer.Applies fam_156_key r mask := by
  unfold source_073_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_156_key, fam_156_support, source_073_support],
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
        16 5 source_073_support r mask)
    (hrows : ExactTwoSourceValidRows fam_156_key.support r mask) :
    SourceIndexStateKeyFacts fam_156_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_073_producer.sourceFacts
      (fam_156_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_156_rowApplies_of_rows hrows))

theorem fam_156_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 5 source_073_support r mask)
    (hrows : ExactTwoSourceValidRows fam_156_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_156_key.goodKilled_of_source_row
    (source_073_producer.sourceFacts
      (fam_156_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_156_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `0e085619323e511c868e6951154f492225320904b520d2caa33b7c57f3a455da`.
Observed representative GoodDirection cases: 3. -/
private def fam_157_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_157_key : SourceIndexStateKey where
  firstIndex := 170
  secondIndex := 1
  support := fam_157_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_157_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 1 source_152_support r mask) :
    source_152_producer.Applies fam_157_key r mask := by
  unfold source_152_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_157_key, fam_157_support, source_152_support],
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
        170 1 source_152_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_157_key.support r mask) :
    SourceIndexStateKeyFacts fam_157_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_152_producer.sourceFacts
      (fam_157_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_157_rowApplies_of_rows hrows))

theorem fam_157_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        170 1 source_152_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_157_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_157_key.goodKilled_of_source_row
    (source_152_producer.sourceFacts
      (fam_157_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_157_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3d88277b106dc442535dcdf19951dcbf5675180fa1a156f09d37d72a2135ee64`.
Observed representative GoodDirection cases: 3. -/
private def fam_158_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.zm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_158_key : SourceIndexStateKey where
  firstIndex := 61
  secondIndex := 1
  support := fam_158_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_158_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        61 1 source_154_support r mask) :
    source_154_producer.Applies fam_158_key r mask := by
  unfold source_154_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_158_key, fam_158_support, source_154_support],
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
        61 1 source_154_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_158_key.support r mask) :
    SourceIndexStateKeyFacts fam_158_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_154_producer.sourceFacts
      (fam_158_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_158_rowApplies_of_rows hrows))

theorem fam_158_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        61 1 source_154_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_158_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_158_key.goodKilled_of_source_row
    (source_154_producer.sourceFacts
      (fam_158_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_158_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7e4bd5a1d841b78bc92b42afc69d49e1218781f7afa213140d3312c870ed66b5`.
Observed representative GoodDirection cases: 3. -/
private def fam_159_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_159_key : SourceIndexStateKey where
  firstIndex := 118
  secondIndex := 1
  support := fam_159_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_159_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        118 1 source_155_support r mask) :
    source_155_producer.Applies fam_159_key r mask := by
  unfold source_155_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_159_key, fam_159_support, source_155_support],
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
        118 1 source_155_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_159_key.support r mask) :
    SourceIndexStateKeyFacts fam_159_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_155_producer.sourceFacts
      (fam_159_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_159_rowApplies_of_rows hrows))

theorem fam_159_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        118 1 source_155_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_159_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_159_key.goodKilled_of_source_row
    (source_155_producer.sourceFacts
      (fam_159_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_159_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7f6b1c8d100de8d401852666890798a1894623a86f345b2ba8e9624ee53e1080`.
Observed representative GoodDirection cases: 3. -/
private def fam_160_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_160_key : SourceIndexStateKey where
  firstIndex := 142
  secondIndex := 1
  support := fam_160_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_160_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        142 1 source_161_support r mask) :
    source_161_producer.Applies fam_160_key r mask := by
  unfold source_161_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_160_key, fam_160_support, source_161_support],
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
        142 1 source_161_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_160_key.support r mask) :
    SourceIndexStateKeyFacts fam_160_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_161_producer.sourceFacts
      (fam_160_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_160_rowApplies_of_rows hrows))

theorem fam_160_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        142 1 source_161_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_160_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_160_key.goodKilled_of_source_row
    (source_161_producer.sourceFacts
      (fam_160_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_160_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a951a90bc13ad1fef2e612c213c593bac3331e79fef45847f2ee6ea884ae156d`.
Observed representative GoodDirection cases: 3. -/
private def fam_161_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_161_key : SourceIndexStateKey where
  firstIndex := 106
  secondIndex := 1
  support := fam_161_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_161_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        106 1 source_157_support r mask) :
    source_157_producer.Applies fam_161_key r mask := by
  unfold source_157_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_161_key, fam_161_support, source_157_support],
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
        106 1 source_157_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_161_key.support r mask) :
    SourceIndexStateKeyFacts fam_161_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_157_producer.sourceFacts
      (fam_161_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_161_rowApplies_of_rows hrows))

theorem fam_161_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        106 1 source_157_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_161_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_161_key.goodKilled_of_source_row
    (source_157_producer.sourceFacts
      (fam_161_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_161_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `bf3f56735c5b9f02d6ab2dc2b24b4bbca8f1e7c3e32701f49a0d2f16d06a3039`.
Observed representative GoodDirection cases: 3. -/
private def fam_162_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_162_key : SourceIndexStateKey where
  firstIndex := 156
  secondIndex := 1
  support := fam_162_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

theorem fam_162_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        156 1 source_146_support r mask) :
    source_146_producer.Applies fam_162_key r mask := by
  unfold source_146_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_162_key, fam_162_support, source_146_support],
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
        156 1 source_146_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_162_key.support r mask) :
    SourceIndexStateKeyFacts fam_162_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_146_producer.sourceFacts
      (fam_162_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_162_rowApplies_of_rows hrows))

theorem fam_162_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        156 1 source_146_support r mask)
    (hrows : OppOneMinusVarFirstRows fam_162_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_162_key.goodKilled_of_source_row
    (source_146_producer.sourceFacts
      (fam_162_sourceApplies_of_sourcePredicate hsource))
    (row_001_producer.rowFacts
      (fam_162_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `1f60eb5c43f5755e94a97ed6e3f48177db410ad278899112ecc354a552ff4c53`.
Observed representative GoodDirection cases: 3. -/
private def fam_163_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_163_key : SourceIndexStateKey where
  firstIndex := 31
  secondIndex := 2
  support := fam_163_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_163_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        31 2 source_151_support r mask) :
    source_151_producer.Applies fam_163_key r mask := by
  unfold source_151_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_163_key, fam_163_support, source_151_support],
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
        31 2 source_151_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_163_key.support r mask) :
    SourceIndexStateKeyFacts fam_163_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_151_producer.sourceFacts
      (fam_163_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_163_rowApplies_of_rows hrows))

theorem fam_163_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        31 2 source_151_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_163_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_163_key.goodKilled_of_source_row
    (source_151_producer.sourceFacts
      (fam_163_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_163_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `726be38c6eab0244d5eeda53eb225e9bf83c895975a1ab72b7dfe44e332124ca`.
Observed representative GoodDirection cases: 3. -/
private def fam_164_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_164_key : SourceIndexStateKey where
  firstIndex := 107
  secondIndex := 2
  support := fam_164_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_164_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        107 2 source_147_support r mask) :
    source_147_producer.Applies fam_164_key r mask := by
  unfold source_147_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_164_key, fam_164_support, source_147_support],
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
        107 2 source_147_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_164_key.support r mask) :
    SourceIndexStateKeyFacts fam_164_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_147_producer.sourceFacts
      (fam_164_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_164_rowApplies_of_rows hrows))

theorem fam_164_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        107 2 source_147_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_164_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_164_key.goodKilled_of_source_row
    (source_147_producer.sourceFacts
      (fam_164_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_164_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8d0b16e49fb9107841cfd0acc8232348de2d74b4ebe12bbc41dd9fb4bdac6092`.
Observed representative GoodDirection cases: 3. -/
private def fam_165_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_165_key : SourceIndexStateKey where
  firstIndex := 123
  secondIndex := 2
  support := fam_165_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_165_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        123 2 source_159_support r mask) :
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
        123 2 source_159_support r mask)
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
        123 2 source_159_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_165_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_165_key.goodKilled_of_source_row
    (source_159_producer.sourceFacts
      (fam_165_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_165_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `8ee9e4cb7eef33d5ad73b02533c2d7d09e45be13a18e9388c56d8f7165f731fa`.
Observed representative GoodDirection cases: 3. -/
private def fam_166_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_166_key : SourceIndexStateKey where
  firstIndex := 155
  secondIndex := 2
  support := fam_166_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

theorem fam_166_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        155 2 source_144_support r mask) :
    source_144_producer.Applies fam_166_key r mask := by
  unfold source_144_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_166_key, fam_166_support, source_144_support],
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
        155 2 source_144_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_166_key.support r mask) :
    SourceIndexStateKeyFacts fam_166_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_144_producer.sourceFacts
      (fam_166_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_166_rowApplies_of_rows hrows))

theorem fam_166_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        155 2 source_144_support r mask)
    (hrows : OppMinusOneVarFirstRows fam_166_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_166_key.goodKilled_of_source_row
    (source_144_producer.sourceFacts
      (fam_166_sourceApplies_of_sourcePredicate hsource))
    (row_003_producer.rowFacts
      (fam_166_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `176a6f5cde928d4c056b2b27f4236130f38d8b4b1697cedc9d7872ca728c9dc0`.
Observed representative GoodDirection cases: 2. -/
private def fam_167_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_167_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 13
  support := fam_167_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_167_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 13 source_209_support r mask) :
    source_209_producer.Applies fam_167_key r mask := by
  unfold source_209_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_167_key, fam_167_support, source_209_support],
    hsource⟩⟩⟩

theorem fam_167_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_167_key.support r mask) :
    row_015_producer.Applies fam_167_key r mask := by
  unfold row_015_producer
  exact ⟨rfl, hrows⟩

theorem fam_167_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 13 source_209_support r mask)
    (hrows : AxisAOnlyRows fam_167_key.support r mask) :
    SourceIndexStateKeyFacts fam_167_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_209_producer.sourceFacts
      (fam_167_sourceApplies_of_sourcePredicate hsource))
    (row_015_producer.rowFacts
      (fam_167_rowApplies_of_rows hrows))

theorem fam_167_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 13 source_209_support r mask)
    (hrows : AxisAOnlyRows fam_167_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_167_key.goodKilled_of_source_row
    (source_209_producer.sourceFacts
      (fam_167_sourceApplies_of_sourcePredicate hsource))
    (row_015_producer.rowFacts
      (fam_167_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `a6a31f751351ebb4e60512e2b32d6628586215d4259dbfe9d2fe299bba1b8a1c`.
Observed representative GoodDirection cases: 2. -/
private def fam_168_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_168_key : SourceIndexStateKey where
  firstIndex := 4
  secondIndex := 12
  support := fam_168_support
  template := SourceIndexTemplate.axisAOnly

theorem fam_168_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 12 source_183_support r mask) :
    source_183_producer.Applies fam_168_key r mask := by
  unfold source_183_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_168_key, fam_168_support, source_183_support],
    hsource⟩⟩⟩

theorem fam_168_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_168_key.support r mask) :
    row_019_producer.Applies fam_168_key r mask := by
  unfold row_019_producer
  exact ⟨rfl, hrows⟩

theorem fam_168_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 12 source_183_support r mask)
    (hrows : AxisAOnlyRows fam_168_key.support r mask) :
    SourceIndexStateKeyFacts fam_168_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_183_producer.sourceFacts
      (fam_168_sourceApplies_of_sourcePredicate hsource))
    (row_019_producer.rowFacts
      (fam_168_rowApplies_of_rows hrows))

theorem fam_168_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        4 12 source_183_support r mask)
    (hrows : AxisAOnlyRows fam_168_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_168_key.goodKilled_of_source_row
    (source_183_producer.sourceFacts
      (fam_168_sourceApplies_of_sourcePredicate hsource))
    (row_019_producer.rowFacts
      (fam_168_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `646c6bc7f18e68e95287ee82b7443b597812247d0cdf72e65e8c74347cff221c`.
Observed representative GoodDirection cases: 2. -/
private def fam_169_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_169_key : SourceIndexStateKey where
  firstIndex := 99
  secondIndex := 7
  support := fam_169_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_169_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        99 7 source_210_support r mask) :
    source_210_producer.Applies fam_169_key r mask := by
  unfold source_210_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_169_key, fam_169_support, source_210_support],
    hsource⟩⟩⟩

theorem fam_169_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_169_key.support r mask) :
    row_014_producer.Applies fam_169_key r mask := by
  unfold row_014_producer
  exact ⟨rfl, hrows⟩

theorem fam_169_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        99 7 source_210_support r mask)
    (hrows : AxisBOnlyRows fam_169_key.support r mask) :
    SourceIndexStateKeyFacts fam_169_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_210_producer.sourceFacts
      (fam_169_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_169_rowApplies_of_rows hrows))

theorem fam_169_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        99 7 source_210_support r mask)
    (hrows : AxisBOnlyRows fam_169_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_169_key.goodKilled_of_source_row
    (source_210_producer.sourceFacts
      (fam_169_sourceApplies_of_sourcePredicate hsource))
    (row_014_producer.rowFacts
      (fam_169_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `bb557a47819ccd5bfcd16195b358e1dbdd60929380c98b284cb0b8d8188086a6`.
Observed representative GoodDirection cases: 2. -/
private def fam_170_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_170_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 6
  support := fam_170_support
  template := SourceIndexTemplate.axisBOnly

theorem fam_170_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 6 source_207_support r mask) :
    source_207_producer.Applies fam_170_key r mask := by
  unfold source_207_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_170_key, fam_170_support, source_207_support],
    hsource⟩⟩⟩

theorem fam_170_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_170_key.support r mask) :
    row_018_producer.Applies fam_170_key r mask := by
  unfold row_018_producer
  exact ⟨rfl, hrows⟩

theorem fam_170_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 6 source_207_support r mask)
    (hrows : AxisBOnlyRows fam_170_key.support r mask) :
    SourceIndexStateKeyFacts fam_170_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_207_producer.sourceFacts
      (fam_170_sourceApplies_of_sourcePredicate hsource))
    (row_018_producer.rowFacts
      (fam_170_rowApplies_of_rows hrows))

theorem fam_170_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        175 6 source_207_support r mask)
    (hrows : AxisBOnlyRows fam_170_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_170_key.goodKilled_of_source_row
    (source_207_producer.sourceFacts
      (fam_170_sourceApplies_of_sourcePredicate hsource))
    (row_018_producer.rowFacts
      (fam_170_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `37cc37e6d0eefe0a7ca7a24b590cd35a69792915f5378577213b3b6c520dc61f`.
Observed representative GoodDirection cases: 2. -/
private def fam_171_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_171_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 3
  support := fam_171_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_171_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 3 source_169_support r mask) :
    source_169_producer.Applies fam_171_key r mask := by
  unfold source_169_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_171_key, fam_171_support, source_169_support],
    hsource⟩⟩⟩

theorem fam_171_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_171_key.support r mask) :
    row_006_producer.Applies fam_171_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_171_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 3 source_169_support r mask)
    (hrows : EqEqNegVarFirstRows fam_171_key.support r mask) :
    SourceIndexStateKeyFacts fam_171_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_169_producer.sourceFacts
      (fam_171_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_171_rowApplies_of_rows hrows))

theorem fam_171_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        148 3 source_169_support r mask)
    (hrows : EqEqNegVarFirstRows fam_171_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_171_key.goodKilled_of_source_row
    (source_169_producer.sourceFacts
      (fam_171_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_171_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `4347f7acbc2727778becb0bce2f43a2ed6dd9c3e10fd7a668e1e6004ee7cae5d`.
Observed representative GoodDirection cases: 2. -/
private def fam_172_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_172_key : SourceIndexStateKey where
  firstIndex := 154
  secondIndex := 3
  support := fam_172_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_172_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 3 source_191_support r mask) :
    source_191_producer.Applies fam_172_key r mask := by
  unfold source_191_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_172_key, fam_172_support, source_191_support],
    hsource⟩⟩⟩

theorem fam_172_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_172_key.support r mask) :
    row_006_producer.Applies fam_172_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_172_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 3 source_191_support r mask)
    (hrows : EqEqNegVarFirstRows fam_172_key.support r mask) :
    SourceIndexStateKeyFacts fam_172_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_191_producer.sourceFacts
      (fam_172_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_172_rowApplies_of_rows hrows))

theorem fam_172_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        154 3 source_191_support r mask)
    (hrows : EqEqNegVarFirstRows fam_172_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_172_key.goodKilled_of_source_row
    (source_191_producer.sourceFacts
      (fam_172_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_172_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `6d6f0e6c2872db37c306c1d0c15d180d34faf5817d71c829337c9f6066252ccf`.
Observed representative GoodDirection cases: 2. -/
private def fam_173_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_173_key : SourceIndexStateKey where
  firstIndex := 97
  secondIndex := 3
  support := fam_173_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_173_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 3 source_180_support r mask) :
    source_180_producer.Applies fam_173_key r mask := by
  unfold source_180_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_173_key, fam_173_support, source_180_support],
    hsource⟩⟩⟩

theorem fam_173_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_173_key.support r mask) :
    row_006_producer.Applies fam_173_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_173_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 3 source_180_support r mask)
    (hrows : EqEqNegVarFirstRows fam_173_key.support r mask) :
    SourceIndexStateKeyFacts fam_173_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_180_producer.sourceFacts
      (fam_173_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_173_rowApplies_of_rows hrows))

theorem fam_173_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        97 3 source_180_support r mask)
    (hrows : EqEqNegVarFirstRows fam_173_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_173_key.goodKilled_of_source_row
    (source_180_producer.sourceFacts
      (fam_173_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_173_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7048c6e32f190ec83faaa9c5c3278b7d5cf60e625e31a30423d15d8a2dddd42c`.
Observed representative GoodDirection cases: 2. -/
private def fam_174_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_174_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 3
  support := fam_174_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_174_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 3 source_162_support r mask) :
    source_162_producer.Applies fam_174_key r mask := by
  unfold source_162_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_174_key, fam_174_support, source_162_support],
    hsource⟩⟩⟩

theorem fam_174_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_174_key.support r mask) :
    row_006_producer.Applies fam_174_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_174_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 3 source_162_support r mask)
    (hrows : EqEqNegVarFirstRows fam_174_key.support r mask) :
    SourceIndexStateKeyFacts fam_174_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_162_producer.sourceFacts
      (fam_174_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_174_rowApplies_of_rows hrows))

theorem fam_174_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        161 3 source_162_support r mask)
    (hrows : EqEqNegVarFirstRows fam_174_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_174_key.goodKilled_of_source_row
    (source_162_producer.sourceFacts
      (fam_174_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_174_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `89dc36d7ca96399cffdf21fced77fce0b85fb0e82d6769b7e3d66a74dd261924`.
Observed representative GoodDirection cases: 2. -/
private def fam_175_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_175_key : SourceIndexStateKey where
  firstIndex := 141
  secondIndex := 3
  support := fam_175_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_175_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        141 3 source_187_support r mask) :
    source_187_producer.Applies fam_175_key r mask := by
  unfold source_187_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_175_key, fam_175_support, source_187_support],
    hsource⟩⟩⟩

theorem fam_175_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_175_key.support r mask) :
    row_006_producer.Applies fam_175_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_175_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        141 3 source_187_support r mask)
    (hrows : EqEqNegVarFirstRows fam_175_key.support r mask) :
    SourceIndexStateKeyFacts fam_175_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_187_producer.sourceFacts
      (fam_175_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_175_rowApplies_of_rows hrows))

theorem fam_175_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        141 3 source_187_support r mask)
    (hrows : EqEqNegVarFirstRows fam_175_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_175_key.goodKilled_of_source_row
    (source_187_producer.sourceFacts
      (fam_175_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_175_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f3dcd4d07ed1312fdcbb42a437fb6c3e1b375e7b0d72e4a5b0efc1139ae09332`.
Observed representative GoodDirection cases: 2. -/
private def fam_176_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_176_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 3
  support := fam_176_support
  template := SourceIndexTemplate.eqEqNegVarFirst

theorem fam_176_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        149 3 source_177_support r mask) :
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
        149 3 source_177_support r mask)
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
        149 3 source_177_support r mask)
    (hrows : EqEqNegVarFirstRows fam_176_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_176_key.goodKilled_of_source_row
    (source_177_producer.sourceFacts
      (fam_176_sourceApplies_of_sourcePredicate hsource))
    (row_006_producer.rowFacts
      (fam_176_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `397eef5c2b5cdd6ae094af7831739fd3099fcbc91050f096784781a6132b1024`.
Observed representative GoodDirection cases: 2. -/
private def fam_177_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_177_key : SourceIndexStateKey where
  firstIndex := 168
  secondIndex := 0
  support := fam_177_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_177_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        168 0 source_194_support r mask) :
    source_194_producer.Applies fam_177_key r mask := by
  unfold source_194_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_177_key, fam_177_support, source_194_support],
    hsource⟩⟩⟩

theorem fam_177_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_177_key.support r mask) :
    row_000_producer.Applies fam_177_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_177_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        168 0 source_194_support r mask)
    (hrows : EqEqPosVarFirstRows fam_177_key.support r mask) :
    SourceIndexStateKeyFacts fam_177_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_194_producer.sourceFacts
      (fam_177_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_177_rowApplies_of_rows hrows))

theorem fam_177_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        168 0 source_194_support r mask)
    (hrows : EqEqPosVarFirstRows fam_177_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_177_key.goodKilled_of_source_row
    (source_194_producer.sourceFacts
      (fam_177_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_177_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `487483082f859de4fc483b3f472833f98c5c9ad1cda62b23c86bb5e5551fa8b7`.
Observed representative GoodDirection cases: 2. -/
private def fam_178_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_178_key : SourceIndexStateKey where
  firstIndex := 168
  secondIndex := 0
  support := fam_178_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_178_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        168 0 source_172_support r mask) :
    source_172_producer.Applies fam_178_key r mask := by
  unfold source_172_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_178_key, fam_178_support, source_172_support],
    hsource⟩⟩⟩

theorem fam_178_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_178_key.support r mask) :
    row_000_producer.Applies fam_178_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_178_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        168 0 source_172_support r mask)
    (hrows : EqEqPosVarFirstRows fam_178_key.support r mask) :
    SourceIndexStateKeyFacts fam_178_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_172_producer.sourceFacts
      (fam_178_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_178_rowApplies_of_rows hrows))

theorem fam_178_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        168 0 source_172_support r mask)
    (hrows : EqEqPosVarFirstRows fam_178_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_178_key.goodKilled_of_source_row
    (source_172_producer.sourceFacts
      (fam_178_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_178_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `706b178982dc5246bb89e37e99b713a8c989d63af6bff2e24958156290309dd6`.
Observed representative GoodDirection cases: 2. -/
private def fam_179_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_179_key : SourceIndexStateKey where
  firstIndex := 155
  secondIndex := 0
  support := fam_179_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_179_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        155 0 source_179_support r mask) :
    source_179_producer.Applies fam_179_key r mask := by
  unfold source_179_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_179_key, fam_179_support, source_179_support],
    hsource⟩⟩⟩

theorem fam_179_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_179_key.support r mask) :
    row_000_producer.Applies fam_179_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_179_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        155 0 source_179_support r mask)
    (hrows : EqEqPosVarFirstRows fam_179_key.support r mask) :
    SourceIndexStateKeyFacts fam_179_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_179_producer.sourceFacts
      (fam_179_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_179_rowApplies_of_rows hrows))

theorem fam_179_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        155 0 source_179_support r mask)
    (hrows : EqEqPosVarFirstRows fam_179_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_179_key.goodKilled_of_source_row
    (source_179_producer.sourceFacts
      (fam_179_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_179_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `7a82cafc1d9c8d48f2cc9fc4206697d381e807d6876b9b77a8130129fc8be8e1`.
Observed representative GoodDirection cases: 2. -/
private def fam_180_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_180_key : SourceIndexStateKey where
  firstIndex := 157
  secondIndex := 0
  support := fam_180_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_180_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        157 0 source_174_support r mask) :
    source_174_producer.Applies fam_180_key r mask := by
  unfold source_174_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_180_key, fam_180_support, source_174_support],
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
        157 0 source_174_support r mask)
    (hrows : EqEqPosVarFirstRows fam_180_key.support r mask) :
    SourceIndexStateKeyFacts fam_180_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_174_producer.sourceFacts
      (fam_180_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_180_rowApplies_of_rows hrows))

theorem fam_180_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        157 0 source_174_support r mask)
    (hrows : EqEqPosVarFirstRows fam_180_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_180_key.goodKilled_of_source_row
    (source_174_producer.sourceFacts
      (fam_180_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_180_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `bf716cac2fc8e0d40e4382f654c5fae6f4510b2536c34193c531520fa82aa1e6`.
Observed representative GoodDirection cases: 2. -/
private def fam_181_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_181_key : SourceIndexStateKey where
  firstIndex := 132
  secondIndex := 0
  support := fam_181_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_181_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        132 0 source_186_support r mask) :
    source_186_producer.Applies fam_181_key r mask := by
  unfold source_186_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_181_key, fam_181_support, source_186_support],
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
        132 0 source_186_support r mask)
    (hrows : EqEqPosVarFirstRows fam_181_key.support r mask) :
    SourceIndexStateKeyFacts fam_181_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_186_producer.sourceFacts
      (fam_181_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_181_rowApplies_of_rows hrows))

theorem fam_181_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        132 0 source_186_support r mask)
    (hrows : EqEqPosVarFirstRows fam_181_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_181_key.goodKilled_of_source_row
    (source_186_producer.sourceFacts
      (fam_181_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_181_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `dfd89508d02003376a54ee3d746b9ce585c3c6409c17618b1b2329f8fff54bfb`.
Observed representative GoodDirection cases: 2. -/
private def fam_182_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.yp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_182_key : SourceIndexStateKey where
  firstIndex := 111
  secondIndex := 0
  support := fam_182_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_182_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        111 0 source_200_support r mask) :
    source_200_producer.Applies fam_182_key r mask := by
  unfold source_200_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_182_key, fam_182_support, source_200_support],
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
        111 0 source_200_support r mask)
    (hrows : EqEqPosVarFirstRows fam_182_key.support r mask) :
    SourceIndexStateKeyFacts fam_182_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_200_producer.sourceFacts
      (fam_182_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_182_rowApplies_of_rows hrows))

theorem fam_182_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        111 0 source_200_support r mask)
    (hrows : EqEqPosVarFirstRows fam_182_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_182_key.goodKilled_of_source_row
    (source_200_producer.sourceFacts
      (fam_182_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_182_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `e7f54997045c8a98ee08eb73a18a4dbf3f2dab51585545f728521963c09f6a5a`.
Observed representative GoodDirection cases: 2. -/
private def fam_183_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_183_key : SourceIndexStateKey where
  firstIndex := 144
  secondIndex := 0
  support := fam_183_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_183_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 0 source_163_support r mask) :
    source_163_producer.Applies fam_183_key r mask := by
  unfold source_163_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_183_key, fam_183_support, source_163_support],
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
        144 0 source_163_support r mask)
    (hrows : EqEqPosVarFirstRows fam_183_key.support r mask) :
    SourceIndexStateKeyFacts fam_183_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_163_producer.sourceFacts
      (fam_183_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_183_rowApplies_of_rows hrows))

theorem fam_183_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        144 0 source_163_support r mask)
    (hrows : EqEqPosVarFirstRows fam_183_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_183_key.goodKilled_of_source_row
    (source_163_producer.sourceFacts
      (fam_183_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_183_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `f484fd7e23d13df9db9749af56b03008d9140946d3811ddeb090cc2fcb339ae2`.
Observed representative GoodDirection cases: 2. -/
private def fam_184_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.ym
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_184_key : SourceIndexStateKey where
  firstIndex := 112
  secondIndex := 0
  support := fam_184_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_184_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        112 0 source_165_support r mask) :
    source_165_producer.Applies fam_184_key r mask := by
  unfold source_165_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_184_key, fam_184_support, source_165_support],
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
        112 0 source_165_support r mask)
    (hrows : EqEqPosVarFirstRows fam_184_key.support r mask) :
    SourceIndexStateKeyFacts fam_184_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_165_producer.sourceFacts
      (fam_184_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_184_rowApplies_of_rows hrows))

theorem fam_184_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        112 0 source_165_support r mask)
    (hrows : EqEqPosVarFirstRows fam_184_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_184_key.goodKilled_of_source_row
    (source_165_producer.sourceFacts
      (fam_184_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_184_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `ff75a2bb3b1a7fb1eb0546ea061c781644ebe17e5a1ce2e380b17cc34372dc4a`.
Observed representative GoodDirection cases: 2. -/
private def fam_185_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.ym
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_185_key : SourceIndexStateKey where
  firstIndex := 125
  secondIndex := 0
  support := fam_185_support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem fam_185_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 0 source_189_support r mask) :
    source_189_producer.Applies fam_185_key r mask := by
  unfold source_189_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_185_key, fam_185_support, source_189_support],
    hsource⟩⟩⟩

theorem fam_185_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_185_key.support r mask) :
    row_000_producer.Applies fam_185_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_185_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 0 source_189_support r mask)
    (hrows : EqEqPosVarFirstRows fam_185_key.support r mask) :
    SourceIndexStateKeyFacts fam_185_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_189_producer.sourceFacts
      (fam_185_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_185_rowApplies_of_rows hrows))

theorem fam_185_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        125 0 source_189_support r mask)
    (hrows : EqEqPosVarFirstRows fam_185_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_185_key.goodKilled_of_source_row
    (source_189_producer.sourceFacts
      (fam_185_sourceApplies_of_sourcePredicate hsource))
    (row_000_producer.rowFacts
      (fam_185_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `1b238b0dbf66985058a43ce2406c3a33f688f0ecb4addf278511665800ee54b8`.
Observed representative GoodDirection cases: 2. -/
private def fam_186_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨12, by decide⟩
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_186_key : SourceIndexStateKey where
  firstIndex := 16
  secondIndex := 6
  support := fam_186_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_186_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 6 source_143_support r mask) :
    source_143_producer.Applies fam_186_key r mask := by
  unfold source_143_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_186_key, fam_186_support, source_143_support],
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
        16 6 source_143_support r mask)
    (hrows : ExactTwoSourceValidRows fam_186_key.support r mask) :
    SourceIndexStateKeyFacts fam_186_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_143_producer.sourceFacts
      (fam_186_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_186_rowApplies_of_rows hrows))

theorem fam_186_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        16 6 source_143_support r mask)
    (hrows : ExactTwoSourceValidRows fam_186_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_186_key.goodKilled_of_source_row
    (source_143_producer.sourceFacts
      (fam_186_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_186_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `203ccdc2ce2e08c2b64ff4cc9afeaa226ce622d3317e0fdb1a7a025bc37311be`.
Observed representative GoodDirection cases: 2. -/
private def fam_187_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨5, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_187_key : SourceIndexStateKey where
  firstIndex := 9
  secondIndex := 13
  support := fam_187_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_187_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        9 13 source_197_support r mask) :
    source_197_producer.Applies fam_187_key r mask := by
  unfold source_197_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_187_key, fam_187_support, source_197_support],
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
        9 13 source_197_support r mask)
    (hrows : ExactTwoSourceValidRows fam_187_key.support r mask) :
    SourceIndexStateKeyFacts fam_187_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_197_producer.sourceFacts
      (fam_187_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_187_rowApplies_of_rows hrows))

theorem fam_187_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        9 13 source_197_support r mask)
    (hrows : ExactTwoSourceValidRows fam_187_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_187_key.goodKilled_of_source_row
    (source_197_producer.sourceFacts
      (fam_187_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_187_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `264b9cd7d7fcb257e5fce6e2479524e2d5771f79a2680568564ffb5a0f7151e4`.
Observed representative GoodDirection cases: 2. -/
private def fam_188_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_188_key : SourceIndexStateKey where
  firstIndex := 151
  secondIndex := 8
  support := fam_188_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_188_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        151 8 source_181_support r mask) :
    source_181_producer.Applies fam_188_key r mask := by
  unfold source_181_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_188_key, fam_188_support, source_181_support],
    hsource⟩⟩⟩

theorem fam_188_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_188_key.support r mask) :
    row_008_producer.Applies fam_188_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_188_keyFacts_of_sourcePredicate_rows
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        151 8 source_181_support r mask)
    (hrows : ExactTwoSourceValidRows fam_188_key.support r mask) :
    SourceIndexStateKeyFacts fam_188_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_181_producer.sourceFacts
      (fam_188_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_188_rowApplies_of_rows hrows))

theorem fam_188_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        151 8 source_181_support r mask)
    (hrows : ExactTwoSourceValidRows fam_188_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_188_key.goodKilled_of_source_row
    (source_181_producer.sourceFacts
      (fam_188_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_188_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `2d79217758a89d2a679b3f5a685d0a9e7a6be0cc8aa8202f4b4d834f3a50de3c`.
Observed representative GoodDirection cases: 2. -/
private def fam_189_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_189_key : SourceIndexStateKey where
  firstIndex := 5
  secondIndex := 11
  support := fam_189_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_189_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 11 source_199_support r mask) :
    source_199_producer.Applies fam_189_key r mask := by
  unfold source_199_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_189_key, fam_189_support, source_199_support],
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
        5 11 source_199_support r mask)
    (hrows : ExactTwoSourceValidRows fam_189_key.support r mask) :
    SourceIndexStateKeyFacts fam_189_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_199_producer.sourceFacts
      (fam_189_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_189_rowApplies_of_rows hrows))

theorem fam_189_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        5 11 source_199_support r mask)
    (hrows : ExactTwoSourceValidRows fam_189_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_189_key.goodKilled_of_source_row
    (source_199_producer.sourceFacts
      (fam_189_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_189_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `31fb7aa54039bcaa3faf197e1addfddb2580b1301bfba961f9c270327921bf65`.
Observed representative GoodDirection cases: 2. -/
private def fam_190_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_190_key : SourceIndexStateKey where
  firstIndex := 113
  secondIndex := 7
  support := fam_190_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_190_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        113 7 source_203_support r mask) :
    source_203_producer.Applies fam_190_key r mask := by
  unfold source_203_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_190_key, fam_190_support, source_203_support],
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
        113 7 source_203_support r mask)
    (hrows : ExactTwoSourceValidRows fam_190_key.support r mask) :
    SourceIndexStateKeyFacts fam_190_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_203_producer.sourceFacts
      (fam_190_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_190_rowApplies_of_rows hrows))

theorem fam_190_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        113 7 source_203_support r mask)
    (hrows : ExactTwoSourceValidRows fam_190_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_190_key.goodKilled_of_source_row
    (source_203_producer.sourceFacts
      (fam_190_sourceApplies_of_sourcePredicate hsource))
    (row_008_producer.rowFacts
      (fam_190_rowApplies_of_rows hrows))

/-- Pair-sign producer coverage key `3c1ab16cbcd8a48144561127c5a6e88e716d15d46940fc74220197ce5ea1f544`.
Observed representative GoodDirection cases: 2. -/
private def fam_191_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
private def fam_191_key : SourceIndexStateKey where
  firstIndex := 26
  secondIndex := 6
  support := fam_191_support
  template := SourceIndexTemplate.exactTwoSourceValid

theorem fam_191_sourceApplies_of_sourcePredicate
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        26 6 source_168_support r mask) :
    source_168_producer.Applies fam_191_key r mask := by
  unfold source_168_producer
  exact ⟨rfl, ⟨rfl, ⟨by
    simp [fam_191_key, fam_191_support, source_168_support],
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
        26 6 source_168_support r mask)
    (hrows : ExactTwoSourceValidRows fam_191_key.support r mask) :
    SourceIndexStateKeyFacts fam_191_key r mask :=
  SourceIndexStateKeyFacts.of_source_row
    (source_168_producer.sourceFacts
      (fam_191_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_191_rowApplies_of_rows hrows))

theorem fam_191_goodKilled_of_sourcePredicate_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourcePredicate
        26 6 source_168_support r mask)
    (hrows : ExactTwoSourceValidRows fam_191_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_191_key.goodKilled_of_source_row
    (source_168_producer.sourceFacts
      (fam_191_sourceApplies_of_sourcePredicate hsource))
    (row_009_producer.rowFacts
      (fam_191_rowApplies_of_rows hrows))

theorem chunk_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Chunks.Chunk002
