import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Shared pair-sign row producers.

Generated bounded smoke evidence. This is not global coverage.
Phase: 6Z.6K.8AM.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Row

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

set_option linter.unusedVariables false

/-- Row producer `27981d7fe4aff67a4b376d24bcb887dfcc7de046716ab6582858839111fd367d`.
Observed bounded GoodDirection cases: 2682. -/
def row_000_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqPosVarFirst /\
      EqEqPosVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqPosVarFirst) h.1 h.2

/-- Row producer `b8de738ef91751c8edd6750009b155fcb173041087e4eb649c02101d7b981651`.
Observed bounded GoodDirection cases: 1317. -/
def row_001_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppOneMinusVarFirst /\
      OppOneMinusVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppOneMinusVarFirst) h.1 h.2

/-- Row producer `a6659fc752d0d0dc0894d106bf45c0c40ea0229a7cea1c0408d3b2e9ae992906`.
Observed bounded GoodDirection cases: 869. -/
def row_002_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqPosVarSecond /\
      EqEqPosVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqPosVarSecond) h.1 h.2

/-- Row producer `41d14fa5c54bdb86c8a57664c1c7350b32e408aad949d6f68791f765c07175e2`.
Observed bounded GoodDirection cases: 654. -/
def row_003_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppMinusOneVarFirst /\
      OppMinusOneVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppMinusOneVarFirst) h.1 h.2

/-- Row producer `5866527521d1cd86b4d528c518448d7b3e40b2bfb8a72d71c5b40b9e48e93f7d`.
Observed bounded GoodDirection cases: 405. -/
def row_004_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppOneMinusVarSecond /\
      OppOneMinusVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppOneMinusVarSecond) h.1 h.2

/-- Row producer `01ef342f8b3eccbcf838de2272e3e0a618591c1f735c69fabb94c6c2f2cedabf`.
Observed bounded GoodDirection cases: 326. -/
def row_005_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.oppMinusOneVarSecond /\
      OppMinusOneVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.oppMinusOneVarSecond) h.1 h.2

/-- Row producer `ab58d270064eefa002683f651a0d6bfcfa613500a91016f81015c7bbfc9bfb9d`.
Observed bounded GoodDirection cases: 171. -/
def row_006_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqNegVarFirst /\
      EqEqNegVarFirstRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqNegVarFirst) h.1 h.2

/-- Row producer `aa6ee8c6fd34af113194c2f37bcaa4ecb38560551b8ab398bf66c361ff434dac`.
Observed bounded GoodDirection cases: 90. -/
def row_007_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.eqEqNegVarSecond /\
      EqEqNegVarSecondRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.eqEqNegVarSecond) h.1 h.2

/-- Row producer `2049ebbee6bbf2d1ded8999d1329c79130dca9db14a62ff0fcd41bc8b7a3fe3c`.
Observed bounded GoodDirection cases: 64. -/
def row_008_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.exactTwoSourceValid /\
      ExactTwoSourceValidRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.exactTwoSourceValid) h.1 h.2

/-- Row producer `562ff0c45e5c0528ea789ea204eba3b4146d73ffae0e9b54da6a3a710bde9c33`.
Observed bounded GoodDirection cases: 53. -/
def row_009_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.exactTwoSourceValid /\
      ExactTwoSourceValidRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.exactTwoSourceValid) h.1 h.2

/-- Row producer `523642c364059c21d649a28a5030e10f3e8d86c3905a4cc916d8562511e882f6`.
Observed bounded GoodDirection cases: 41. -/
def row_010_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.exactTwoSourceValid /\
      ExactTwoSourceValidRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.exactTwoSourceValid) h.1 h.2

/-- Row producer `7d9e6f246fd2ff58074eff2e9a128514417de91d61a5aaea2b2d365f8aaf48db`.
Observed bounded GoodDirection cases: 15. -/
def row_011_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Row producer `7004acc1337b24940623e18b8c13c02b05202309d9ebace2dce850072f93a061`.
Observed bounded GoodDirection cases: 13. -/
def row_012_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Row producer `bce8e3820f203988985fcedef0b4ac36116689c03e3296836cdbf6b3ae5f6234`.
Observed bounded GoodDirection cases: 10. -/
def row_013_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.exactTwoSourceValid /\
      ExactTwoSourceValidRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.exactTwoSourceValid) h.1 h.2

/-- Row producer `00621f89fefce6223c8a4ba8320e9f078086f13412a5127e0f4f62e1fad6df16`.
Observed bounded GoodDirection cases: 5. -/
def row_014_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisBOnly /\
      AxisBOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisBOnly) h.1 h.2

/-- Row producer `ef988bf5329f02fde86143eba244d2c48095d3772daffbcf05a3220e88bb6152`.
Observed bounded GoodDirection cases: 5. -/
def row_015_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Row producer `05b5ea616b6c9601c4abb80744a9ce2720fe2348bd2266b926171141c3c65898`.
Observed bounded GoodDirection cases: 4. -/
def row_016_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Row producer `3beed738f15a25af0630f30ade1b42fffce6993851c9692587843c0ee7214e89`.
Observed bounded GoodDirection cases: 4. -/
def row_017_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Row producer `3810676fed6e48b30935a034db1cd780ca9c99af6375bf13a5537f3ed7c4ce40`.
Observed bounded GoodDirection cases: 2. -/
def row_018_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisBOnly /\
      AxisBOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisBOnly) h.1 h.2

/-- Row producer `4e68ab662a028c0f92c81fe5711201eca3ffc425b51b8de8b00f42bd0edccefa`.
Observed bounded GoodDirection cases: 2. -/
def row_019_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisAOnly /\
      AxisAOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisAOnly) h.1 h.2

/-- Row producer `d44f94eb1867f97107b94cb154e946dee5feb29aace477abb538ee2f4d2fd2f0`.
Observed bounded GoodDirection cases: 1. -/
def row_020_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisBOnly /\
      AxisBOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisBOnly) h.1 h.2

/-- Row producer `f9687380c0b6df0c13b296b9be6a7101c393a12ef6726f18f2431280e581af90`.
Observed bounded GoodDirection cases: 1. -/
def row_021_producer : SourceIndexStateRowProducer where
  Applies := fun key r mask =>
    key.template = SourceIndexTemplate.axisBOnly /\
      AxisBOnlyRows key.support r mask
  rowFacts := by
    intro key r mask h
    exact SourceIndexStateRowFacts.of_template_rows
      (template := SourceIndexTemplate.axisBOnly) h.1 h.2

theorem rowProducers_build : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.Row
