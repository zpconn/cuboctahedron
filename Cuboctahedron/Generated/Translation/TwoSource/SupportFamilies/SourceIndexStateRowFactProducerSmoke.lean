import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Generated row-fact producer smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded member replay. Each producer turns a reusable row-template
predicate into `SourceIndexStateRowFacts`; source agreement remains a
separate theorem obligation.
Phase: 6Z.6K.8R.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateRowFactProducerSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

/-- Row-fact producer for row group `27981d7fe4aff67a4b376d24bcb887dfcc7de046716ab6582858839111fd367d`.
Observed bounded GoodDirection cases: 711. -/
def row_000_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqPosVarFirst /\
      EqEqPosVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqPosVarFirst) h.1 h.2

theorem row_000_rowFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : row_000_producer.Applies key r mask) :
    SourceIndexStateRowFacts key r mask :=
  row_000_producer.rowFacts h

/-- Row-fact producer for row group `a6659fc752d0d0dc0894d106bf45c0c40ea0229a7cea1c0408d3b2e9ae992906`.
Observed bounded GoodDirection cases: 240. -/
def row_001_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqPosVarSecond /\
      EqEqPosVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqPosVarSecond) h.1 h.2

theorem row_001_rowFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : row_001_producer.Applies key r mask) :
    SourceIndexStateRowFacts key r mask :=
  row_001_producer.rowFacts h

/-- Row-fact producer for row group `b8de738ef91751c8edd6750009b155fcb173041087e4eb649c02101d7b981651`.
Observed bounded GoodDirection cases: 227. -/
def row_002_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppOneMinusVarFirst /\
      OppOneMinusVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppOneMinusVarFirst) h.1 h.2

theorem row_002_rowFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : row_002_producer.Applies key r mask) :
    SourceIndexStateRowFacts key r mask :=
  row_002_producer.rowFacts h

/-- Row-fact producer for row group `41d14fa5c54bdb86c8a57664c1c7350b32e408aad949d6f68791f765c07175e2`.
Observed bounded GoodDirection cases: 126. -/
def row_003_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppMinusOneVarFirst /\
      OppMinusOneVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppMinusOneVarFirst) h.1 h.2

theorem row_003_rowFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : row_003_producer.Applies key r mask) :
    SourceIndexStateRowFacts key r mask :=
  row_003_producer.rowFacts h

/-- Row-fact producer for row group `5866527521d1cd86b4d528c518448d7b3e40b2bfb8a72d71c5b40b9e48e93f7d`.
Observed bounded GoodDirection cases: 73. -/
def row_004_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppOneMinusVarSecond /\
      OppOneMinusVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppOneMinusVarSecond) h.1 h.2

theorem row_004_rowFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : row_004_producer.Applies key r mask) :
    SourceIndexStateRowFacts key r mask :=
  row_004_producer.rowFacts h

/-- Row-fact producer for row group `01ef342f8b3eccbcf838de2272e3e0a618591c1f735c69fabb94c6c2f2cedabf`.
Observed bounded GoodDirection cases: 44. -/
def row_005_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppMinusOneVarSecond /\
      OppMinusOneVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppMinusOneVarSecond) h.1 h.2

theorem row_005_rowFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : row_005_producer.Applies key r mask) :
    SourceIndexStateRowFacts key r mask :=
  row_005_producer.rowFacts h

/-- Row-fact producer for row group `ab58d270064eefa002683f651a0d6bfcfa613500a91016f81015c7bbfc9bfb9d`.
Observed bounded GoodDirection cases: 32. -/
def row_006_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqNegVarFirst /\
      EqEqNegVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqNegVarFirst) h.1 h.2

theorem row_006_rowFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : row_006_producer.Applies key r mask) :
    SourceIndexStateRowFacts key r mask :=
  row_006_producer.rowFacts h

/-- Row-fact producer for row group `7d9e6f246fd2ff58074eff2e9a128514417de91d61a5aaea2b2d365f8aaf48db`.
Observed bounded GoodDirection cases: 4. -/
def row_007_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

theorem row_007_rowFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : row_007_producer.Applies key r mask) :
    SourceIndexStateRowFacts key r mask :=
  row_007_producer.rowFacts h

/-- Row-fact producer for row group `3beed738f15a25af0630f30ade1b42fffce6993851c9692587843c0ee7214e89`.
Observed bounded GoodDirection cases: 3. -/
def row_008_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

theorem row_008_rowFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : row_008_producer.Applies key r mask) :
    SourceIndexStateRowFacts key r mask :=
  row_008_producer.rowFacts h

/-- Row-fact producer for row group `aa6ee8c6fd34af113194c2f37bcaa4ecb38560551b8ab398bf66c361ff434dac`.
Observed bounded GoodDirection cases: 3. -/
def row_009_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqNegVarSecond /\
      EqEqNegVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqNegVarSecond) h.1 h.2

theorem row_009_rowFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : row_009_producer.Applies key r mask) :
    SourceIndexStateRowFacts key r mask :=
  row_009_producer.rowFacts h

/-- Row-fact producer for row group `7004acc1337b24940623e18b8c13c02b05202309d9ebace2dce850072f93a061`.
Observed bounded GoodDirection cases: 2. -/
def row_010_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

theorem row_010_rowFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : row_010_producer.Applies key r mask) :
    SourceIndexStateRowFacts key r mask :=
  row_010_producer.rowFacts h

theorem sourceIndexStateRowFactProducerSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateRowFactProducerSmoke
