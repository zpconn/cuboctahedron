import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerGlueSmoke

/-!
Generated source-position producer-applicability smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded member replay.  It derives the 8Z producer `Applies` premises
from source-position predicates and row-template predicates.
Phase: 6Z.6K.8AE.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionApplicabilitySmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateRowFactProducerSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerGlueSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

set_option linter.unusedVariables false

/-- Producer applicability for bounded family `01630a20f4bc0763aa95de21589f5f9c8b3363fb3730266afffd5b30c79f5714`.
Observed bounded GoodDirection cases: 497. -/
theorem fam_000_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_000_positionPredicate r mask) :
    source_000_producer.Applies fam_000_key r mask := by
  unfold source_000_producer
  simp [fam_000_key, hsource]

theorem fam_000_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_000_key.support r mask) :
    row_000_producer.Applies fam_000_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_000_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_000_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_000_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_000_producerFactsGoodKilled
    (fam_000_sourceApplies_of_position hsource)
    (fam_000_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `8fdf87b4a1e5d605f85018aae0772f29d4a32e98a10f9ac2559a073aa64bfee6`.
Observed bounded GoodDirection cases: 185. -/
theorem fam_001_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_001_positionPredicate r mask) :
    source_001_producer.Applies fam_001_key r mask := by
  unfold source_001_producer
  simp [fam_001_key, hsource]

theorem fam_001_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_001_key.support r mask) :
    row_001_producer.Applies fam_001_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_001_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_001_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_001_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_001_producerFactsGoodKilled
    (fam_001_sourceApplies_of_position hsource)
    (fam_001_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `ad68f1bb9b0315772fae5e354b9b7ad4a3d53402b6aee2a888356422665afcf8`.
Observed bounded GoodDirection cases: 131. -/
theorem fam_002_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_002_positionPredicate r mask) :
    source_002_producer.Applies fam_002_key r mask := by
  unfold source_002_producer
  simp [fam_002_key, hsource]

theorem fam_002_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_002_key.support r mask) :
    row_000_producer.Applies fam_002_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_002_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_002_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_002_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_002_producerFactsGoodKilled
    (fam_002_sourceApplies_of_position hsource)
    (fam_002_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `a0a84a8450ad0f1ba6ca9cb2f07a3cd3ec2ce8a4584354c6a0c481c00898ee9a`.
Observed bounded GoodDirection cases: 107. -/
theorem fam_003_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_003_positionPredicate r mask) :
    source_003_producer.Applies fam_003_key r mask := by
  unfold source_003_producer
  simp [fam_003_key, hsource]

theorem fam_003_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_003_key.support r mask) :
    row_002_producer.Applies fam_003_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_003_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_003_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_003_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_003_producerFactsGoodKilled
    (fam_003_sourceApplies_of_position hsource)
    (fam_003_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `215d250904345a406f359e21d7279c48890a8382cbf9f4542b80af6541ea31e7`.
Observed bounded GoodDirection cases: 83. -/
theorem fam_004_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_004_positionPredicate r mask) :
    source_004_producer.Applies fam_004_key r mask := by
  unfold source_004_producer
  simp [fam_004_key, hsource]

theorem fam_004_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_004_key.support r mask) :
    row_002_producer.Applies fam_004_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_004_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_004_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_004_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_004_producerFactsGoodKilled
    (fam_004_sourceApplies_of_position hsource)
    (fam_004_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `8091c0e1dc28305cd10a569ab32a31ad560134ee230e6f93c77595ef1620b33f`.
Observed bounded GoodDirection cases: 50. -/
theorem fam_005_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_005_positionPredicate r mask) :
    source_005_producer.Applies fam_005_key r mask := by
  unfold source_005_producer
  simp [fam_005_key, hsource]

theorem fam_005_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_005_key.support r mask) :
    row_003_producer.Applies fam_005_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_005_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_005_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_005_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_005_producerFactsGoodKilled
    (fam_005_sourceApplies_of_position hsource)
    (fam_005_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `54e546a4bdb558dace5714844d7837c44ad6154f0336ec1ba619519c4ecbd5ea`.
Observed bounded GoodDirection cases: 36. -/
theorem fam_006_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_006_positionPredicate r mask) :
    source_006_producer.Applies fam_006_key r mask := by
  unfold source_006_producer
  simp [fam_006_key, hsource]

theorem fam_006_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_006_key.support r mask) :
    row_005_producer.Applies fam_006_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_006_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_006_positionPredicate r mask)
    (hrows : OppMinusOneVarSecondRows fam_006_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_006_producerFactsGoodKilled
    (fam_006_sourceApplies_of_position hsource)
    (fam_006_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `fbadcb6b4d7876f5e23098783dd8173fca93b8b373cdbba7ae20d14bffb14fff`.
Observed bounded GoodDirection cases: 33. -/
theorem fam_007_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_007_positionPredicate r mask) :
    source_007_producer.Applies fam_007_key r mask := by
  unfold source_007_producer
  simp [fam_007_key, hsource]

theorem fam_007_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_007_key.support r mask) :
    row_003_producer.Applies fam_007_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_007_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_007_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_007_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_007_producerFactsGoodKilled
    (fam_007_sourceApplies_of_position hsource)
    (fam_007_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `1e4b51557f977673d7b96e011cacc8e7fad17c5469b237589f0acb70bfb48421`.
Observed bounded GoodDirection cases: 30. -/
theorem fam_008_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_010_positionPredicate r mask) :
    source_010_producer.Applies fam_008_key r mask := by
  unfold source_010_producer
  simp [fam_008_key, hsource]

theorem fam_008_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_008_key.support r mask) :
    row_000_producer.Applies fam_008_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_008_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_010_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_008_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_008_producerFactsGoodKilled
    (fam_008_sourceApplies_of_position hsource)
    (fam_008_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `45c7c17ea15024b7144eb0684c9a7a63344c888808b4afcc33b5cc6448dfac69`.
Observed bounded GoodDirection cases: 30. -/
theorem fam_009_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_009_positionPredicate r mask) :
    source_009_producer.Applies fam_009_key r mask := by
  unfold source_009_producer
  simp [fam_009_key, hsource]

theorem fam_009_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_009_key.support r mask) :
    row_003_producer.Applies fam_009_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_009_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_009_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_009_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_009_producerFactsGoodKilled
    (fam_009_sourceApplies_of_position hsource)
    (fam_009_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `cc8ca5d0fc2c2db74ea8cf06ba88b6e33fd01b21b30be9cf8b02a8af1a6bc7eb`.
Observed bounded GoodDirection cases: 30. -/
theorem fam_010_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_008_positionPredicate r mask) :
    source_008_producer.Applies fam_010_key r mask := by
  unfold source_008_producer
  simp [fam_010_key, hsource]

theorem fam_010_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_010_key.support r mask) :
    row_004_producer.Applies fam_010_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_010_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_008_positionPredicate r mask)
    (hrows : OppOneMinusVarSecondRows fam_010_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_010_producerFactsGoodKilled
    (fam_010_sourceApplies_of_position hsource)
    (fam_010_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `a340539b4a9b2de6e046ab2e1f0be8328761e0e3c7c229dd5c481f9f2d19c90e`.
Observed bounded GoodDirection cases: 29. -/
theorem fam_011_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_011_positionPredicate r mask) :
    source_011_producer.Applies fam_011_key r mask := by
  unfold source_011_producer
  simp [fam_011_key, hsource]

theorem fam_011_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_011_key.support r mask) :
    row_001_producer.Applies fam_011_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_011_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_011_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_011_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_011_producerFactsGoodKilled
    (fam_011_sourceApplies_of_position hsource)
    (fam_011_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `1e7fea08c0f0687ccf3374a0decd7681fa8fa126c599606f3ddb4c546fab2a4b`.
Observed bounded GoodDirection cases: 28. -/
theorem fam_012_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_013_positionPredicate r mask) :
    source_013_producer.Applies fam_012_key r mask := by
  unfold source_013_producer
  simp [fam_012_key, hsource]

theorem fam_012_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_012_key.support r mask) :
    row_003_producer.Applies fam_012_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_012_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_013_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_012_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_012_producerFactsGoodKilled
    (fam_012_sourceApplies_of_position hsource)
    (fam_012_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `54d9751320b2945766ccad09043b2fbd49fa7f68c11088ac95297208c3eaac97`.
Observed bounded GoodDirection cases: 28. -/
theorem fam_013_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_012_positionPredicate r mask) :
    source_012_producer.Applies fam_013_key r mask := by
  unfold source_012_producer
  simp [fam_013_key, hsource]

theorem fam_013_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_013_key.support r mask) :
    row_003_producer.Applies fam_013_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_013_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_012_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_013_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_013_producerFactsGoodKilled
    (fam_013_sourceApplies_of_position hsource)
    (fam_013_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `f0260915116830cdee4479e0ba120e2345afce1dd4b432687b3459ab0a8c7217`.
Observed bounded GoodDirection cases: 26. -/
theorem fam_014_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_014_positionPredicate r mask) :
    source_014_producer.Applies fam_014_key r mask := by
  unfold source_014_producer
  simp [fam_014_key, hsource]

theorem fam_014_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_014_key.support r mask) :
    row_000_producer.Applies fam_014_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_014_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_014_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_014_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_014_producerFactsGoodKilled
    (fam_014_sourceApplies_of_position hsource)
    (fam_014_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `a88d31452b0302cb0c43dfba7ced9a458beab5d560b2fc998fcc7ea1dcfa7170`.
Observed bounded GoodDirection cases: 25. -/
theorem fam_015_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_017_positionPredicate r mask) :
    source_017_producer.Applies fam_015_key r mask := by
  unfold source_017_producer
  simp [fam_015_key, hsource]

theorem fam_015_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_015_key.support r mask) :
    row_000_producer.Applies fam_015_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_015_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_017_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_015_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_015_producerFactsGoodKilled
    (fam_015_sourceApplies_of_position hsource)
    (fam_015_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `db00d78c6f0f431fefe44ac0bd37328bf1a5b6554916b0ee2408f5aa436a30a2`.
Observed bounded GoodDirection cases: 25. -/
theorem fam_016_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_018_positionPredicate r mask) :
    source_018_producer.Applies fam_016_key r mask := by
  unfold source_018_producer
  simp [fam_016_key, hsource]

theorem fam_016_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_016_key.support r mask) :
    row_000_producer.Applies fam_016_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_016_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_018_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_016_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_016_producerFactsGoodKilled
    (fam_016_sourceApplies_of_position hsource)
    (fam_016_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `b6ed4a6c3471880f9c7efcd3dbc12c073964d261bc2e2dd65ba49e0bbfa2e0fc`.
Observed bounded GoodDirection cases: 25. -/
theorem fam_017_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_015_positionPredicate r mask) :
    source_015_producer.Applies fam_017_key r mask := by
  unfold source_015_producer
  simp [fam_017_key, hsource]

theorem fam_017_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_017_key.support r mask) :
    row_001_producer.Applies fam_017_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_017_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_015_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_017_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_017_producerFactsGoodKilled
    (fam_017_sourceApplies_of_position hsource)
    (fam_017_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `1f99a51da0266b5f986c5abc34cd20986949fecc29ff21415b195d1ebbe71a75`.
Observed bounded GoodDirection cases: 25. -/
theorem fam_018_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_016_positionPredicate r mask) :
    source_016_producer.Applies fam_018_key r mask := by
  unfold source_016_producer
  simp [fam_018_key, hsource]

theorem fam_018_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_018_key.support r mask) :
    row_005_producer.Applies fam_018_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_018_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_016_positionPredicate r mask)
    (hrows : OppMinusOneVarSecondRows fam_018_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_018_producerFactsGoodKilled
    (fam_018_sourceApplies_of_position hsource)
    (fam_018_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `2cc74ca6dcf453d30173de7ab6ba408c54fb8cc3211ebbaca2f91495312617ac`.
Observed bounded GoodDirection cases: 24. -/
theorem fam_019_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_020_positionPredicate r mask) :
    source_020_producer.Applies fam_019_key r mask := by
  unfold source_020_producer
  simp [fam_019_key, hsource]

theorem fam_019_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_019_key.support r mask) :
    row_004_producer.Applies fam_019_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_019_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_020_positionPredicate r mask)
    (hrows : OppOneMinusVarSecondRows fam_019_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_019_producerFactsGoodKilled
    (fam_019_sourceApplies_of_position hsource)
    (fam_019_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `b262fbb3ec3a90332364035f2306b73246563f9815da042889ecc813f517c606`.
Observed bounded GoodDirection cases: 24. -/
theorem fam_020_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_019_positionPredicate r mask) :
    source_019_producer.Applies fam_020_key r mask := by
  unfold source_019_producer
  simp [fam_020_key, hsource]

theorem fam_020_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_020_key.support r mask) :
    row_004_producer.Applies fam_020_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_020_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_019_positionPredicate r mask)
    (hrows : OppOneMinusVarSecondRows fam_020_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_020_producerFactsGoodKilled
    (fam_020_sourceApplies_of_position hsource)
    (fam_020_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `aaf0c94ac777e38df6704e10e5b134474fbdaee67e45dbecaf0a75839e4051c4`.
Observed bounded GoodDirection cases: 23. -/
theorem fam_021_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_021_positionPredicate r mask) :
    source_021_producer.Applies fam_021_key r mask := by
  unfold source_021_producer
  simp [fam_021_key, hsource]

theorem fam_021_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_021_key.support r mask) :
    row_006_producer.Applies fam_021_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_021_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_021_positionPredicate r mask)
    (hrows : EqEqNegVarFirstRows fam_021_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_021_producerFactsGoodKilled
    (fam_021_sourceApplies_of_position hsource)
    (fam_021_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `df22064af643aad235f9a9166e7b689a6734e88981457906fca0ca0ee09756fe`.
Observed bounded GoodDirection cases: 21. -/
theorem fam_022_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_023_positionPredicate r mask) :
    source_023_producer.Applies fam_022_key r mask := by
  unfold source_023_producer
  simp [fam_022_key, hsource]

theorem fam_022_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_022_key.support r mask) :
    row_001_producer.Applies fam_022_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_022_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_023_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_022_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_022_producerFactsGoodKilled
    (fam_022_sourceApplies_of_position hsource)
    (fam_022_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `f6372e655bd1e080f715a75f5998002a7c4eb5c48c53c25dce5244b50fc611b2`.
Observed bounded GoodDirection cases: 21. -/
theorem fam_023_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_022_positionPredicate r mask) :
    source_022_producer.Applies fam_023_key r mask := by
  unfold source_022_producer
  simp [fam_023_key, hsource]

theorem fam_023_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_023_key.support r mask) :
    row_005_producer.Applies fam_023_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_023_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_022_positionPredicate r mask)
    (hrows : OppMinusOneVarSecondRows fam_023_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_023_producerFactsGoodKilled
    (fam_023_sourceApplies_of_position hsource)
    (fam_023_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `a8ec4854eb063539742df8e5a71e443d2c6d8dc89461d041fb100f0c0980745a`.
Observed bounded GoodDirection cases: 19. -/
theorem fam_024_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_024_positionPredicate r mask) :
    source_024_producer.Applies fam_024_key r mask := by
  unfold source_024_producer
  simp [fam_024_key, hsource]

theorem fam_024_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_024_key.support r mask) :
    row_000_producer.Applies fam_024_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_024_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_024_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_024_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_024_producerFactsGoodKilled
    (fam_024_sourceApplies_of_position hsource)
    (fam_024_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `4fd2c6d716718d15e14268942ea542fa2c81953e23c6fbdc765850f7a971713c`.
Observed bounded GoodDirection cases: 18. -/
theorem fam_025_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_027_positionPredicate r mask) :
    source_027_producer.Applies fam_025_key r mask := by
  unfold source_027_producer
  simp [fam_025_key, hsource]

theorem fam_025_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_025_key.support r mask) :
    row_000_producer.Applies fam_025_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_025_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_027_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_025_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_025_producerFactsGoodKilled
    (fam_025_sourceApplies_of_position hsource)
    (fam_025_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `8df102f5a0a90f97d60f2652976e91573fa50c98a41b8b39dfb807ce9a90185a`.
Observed bounded GoodDirection cases: 18. -/
theorem fam_026_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_025_positionPredicate r mask) :
    source_025_producer.Applies fam_026_key r mask := by
  unfold source_025_producer
  simp [fam_026_key, hsource]

theorem fam_026_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_026_key.support r mask) :
    row_000_producer.Applies fam_026_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_026_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_025_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_026_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_026_producerFactsGoodKilled
    (fam_026_sourceApplies_of_position hsource)
    (fam_026_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `4ddebe84b37b759c7c35af6b67962ca3122e8996e78c12dee46578cfefdbf6e6`.
Observed bounded GoodDirection cases: 18. -/
theorem fam_027_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_026_positionPredicate r mask) :
    source_026_producer.Applies fam_027_key r mask := by
  unfold source_026_producer
  simp [fam_027_key, hsource]

theorem fam_027_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_027_key.support r mask) :
    row_001_producer.Applies fam_027_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_027_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_026_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_027_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_027_producerFactsGoodKilled
    (fam_027_sourceApplies_of_position hsource)
    (fam_027_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `582ae5f7332e483b5b742a2b48608c35158bf2515b8a265aaf3d1ff06c7c2c78`.
Observed bounded GoodDirection cases: 17. -/
theorem fam_028_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_030_positionPredicate r mask) :
    source_030_producer.Applies fam_028_key r mask := by
  unfold source_030_producer
  simp [fam_028_key, hsource]

theorem fam_028_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_028_key.support r mask) :
    row_000_producer.Applies fam_028_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_028_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_030_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_028_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_028_producerFactsGoodKilled
    (fam_028_sourceApplies_of_position hsource)
    (fam_028_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `2439de6f0b777e4cc736c05012dc6ad5c4f965cbc1b24ed407455cf2737070f7`.
Observed bounded GoodDirection cases: 17. -/
theorem fam_029_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_028_positionPredicate r mask) :
    source_028_producer.Applies fam_029_key r mask := by
  unfold source_028_producer
  simp [fam_029_key, hsource]

theorem fam_029_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_029_key.support r mask) :
    row_004_producer.Applies fam_029_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_029_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_028_positionPredicate r mask)
    (hrows : OppOneMinusVarSecondRows fam_029_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_029_producerFactsGoodKilled
    (fam_029_sourceApplies_of_position hsource)
    (fam_029_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `c7daec541a59938059b6b7336130cf10dee6d86d506a0a8e8f1dd2a6eb207757`.
Observed bounded GoodDirection cases: 17. -/
theorem fam_030_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_029_positionPredicate r mask) :
    source_029_producer.Applies fam_030_key r mask := by
  unfold source_029_producer
  simp [fam_030_key, hsource]

theorem fam_030_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_030_key.support r mask) :
    row_004_producer.Applies fam_030_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_030_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_029_positionPredicate r mask)
    (hrows : OppOneMinusVarSecondRows fam_030_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_030_producerFactsGoodKilled
    (fam_030_sourceApplies_of_position hsource)
    (fam_030_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `1f67765c3056fb95c85720f14cbecdf8ca17f0c763076273d8c85286126303dd`.
Observed bounded GoodDirection cases: 16. -/
theorem fam_031_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_031_positionPredicate r mask) :
    source_031_producer.Applies fam_031_key r mask := by
  unfold source_031_producer
  simp [fam_031_key, hsource]

theorem fam_031_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_031_key.support r mask) :
    row_003_producer.Applies fam_031_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_031_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_031_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_031_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_031_producerFactsGoodKilled
    (fam_031_sourceApplies_of_position hsource)
    (fam_031_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `d5fb70a848c7493d9a717a226ab641a4976a092c0a36b32962d2846ceec5177e`.
Observed bounded GoodDirection cases: 15. -/
theorem fam_032_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_032_positionPredicate r mask) :
    source_032_producer.Applies fam_032_key r mask := by
  unfold source_032_producer
  simp [fam_032_key, hsource]

theorem fam_032_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_032_key.support r mask) :
    row_001_producer.Applies fam_032_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_032_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_032_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_032_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_032_producerFactsGoodKilled
    (fam_032_sourceApplies_of_position hsource)
    (fam_032_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `4274bdafc404e0e1fecf6459ef92a7903f8f9e4dacc0b5d75d7a77305ffff4ea`.
Observed bounded GoodDirection cases: 14. -/
theorem fam_033_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_035_positionPredicate r mask) :
    source_035_producer.Applies fam_033_key r mask := by
  unfold source_035_producer
  simp [fam_033_key, hsource]

theorem fam_033_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_033_key.support r mask) :
    row_003_producer.Applies fam_033_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_033_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_035_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_033_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_033_producerFactsGoodKilled
    (fam_033_sourceApplies_of_position hsource)
    (fam_033_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `ce351c894c24d0e7934e685ded4df531a3fde648aa0b4af5b6c980817065e54a`.
Observed bounded GoodDirection cases: 14. -/
theorem fam_034_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_036_positionPredicate r mask) :
    source_036_producer.Applies fam_034_key r mask := by
  unfold source_036_producer
  simp [fam_034_key, hsource]

theorem fam_034_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_034_key.support r mask) :
    row_001_producer.Applies fam_034_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_034_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_036_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_034_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_034_producerFactsGoodKilled
    (fam_034_sourceApplies_of_position hsource)
    (fam_034_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `561c18e9c09f8b6b63975005dbb3f97e58761fac0cbe5e8ff8e448b41a1c3805`.
Observed bounded GoodDirection cases: 14. -/
theorem fam_035_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_034_positionPredicate r mask) :
    source_034_producer.Applies fam_035_key r mask := by
  unfold source_034_producer
  simp [fam_035_key, hsource]

theorem fam_035_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_035_key.support r mask) :
    row_005_producer.Applies fam_035_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_035_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_034_positionPredicate r mask)
    (hrows : OppMinusOneVarSecondRows fam_035_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_035_producerFactsGoodKilled
    (fam_035_sourceApplies_of_position hsource)
    (fam_035_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `f9b8992d74a2bab1f882aa9e4086b7c8119bb6223309678613400c81182d3f4d`.
Observed bounded GoodDirection cases: 13. -/
theorem fam_036_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_038_positionPredicate r mask) :
    source_038_producer.Applies fam_036_key r mask := by
  unfold source_038_producer
  simp [fam_036_key, hsource]

theorem fam_036_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_036_key.support r mask) :
    row_000_producer.Applies fam_036_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_036_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_038_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_036_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_036_producerFactsGoodKilled
    (fam_036_sourceApplies_of_position hsource)
    (fam_036_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `2b253f19b0568b2d787c036c76183c1aa727a0f469e235fbb42418bc8d844b84`.
Observed bounded GoodDirection cases: 13. -/
theorem fam_037_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_037_positionPredicate r mask) :
    source_037_producer.Applies fam_037_key r mask := by
  unfold source_037_producer
  simp [fam_037_key, hsource]

theorem fam_037_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_037_key.support r mask) :
    row_005_producer.Applies fam_037_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_037_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_037_positionPredicate r mask)
    (hrows : OppMinusOneVarSecondRows fam_037_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_037_producerFactsGoodKilled
    (fam_037_sourceApplies_of_position hsource)
    (fam_037_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `b1f315d3f9761f8e6db0cebf7739b59e499ff3066fa540d7f17a4b71f65af145`.
Observed bounded GoodDirection cases: 11. -/
theorem fam_038_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_039_positionPredicate r mask) :
    source_039_producer.Applies fam_038_key r mask := by
  unfold source_039_producer
  simp [fam_038_key, hsource]

theorem fam_038_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_038_key.support r mask) :
    row_000_producer.Applies fam_038_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_038_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_039_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_038_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_038_producerFactsGoodKilled
    (fam_038_sourceApplies_of_position hsource)
    (fam_038_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `84cbf583a8d3dad09d61d062b4f77758321b9574ea5c3d469d2fe7b9ff6500ef`.
Observed bounded GoodDirection cases: 11. -/
theorem fam_039_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_033_positionPredicate r mask) :
    source_033_producer.Applies fam_039_key r mask := by
  unfold source_033_producer
  simp [fam_039_key, hsource]

theorem fam_039_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_039_key.support r mask) :
    row_007_producer.Applies fam_039_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_039_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_033_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_039_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_039_producerFactsGoodKilled
    (fam_039_sourceApplies_of_position hsource)
    (fam_039_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `6b77eeef1471b90640a4845f2e7b7b4a3d02289c82b7c304ef9116544d18b9ad`.
Observed bounded GoodDirection cases: 11. -/
theorem fam_040_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_040_positionPredicate r mask) :
    source_040_producer.Applies fam_040_key r mask := by
  unfold source_040_producer
  simp [fam_040_key, hsource]

theorem fam_040_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_040_key.support r mask) :
    row_002_producer.Applies fam_040_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_040_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_040_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_040_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_040_producerFactsGoodKilled
    (fam_040_sourceApplies_of_position hsource)
    (fam_040_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `76d5d3ad3b190c9f6e119b8a88c041a9008a492b90dba38b5f0bdfa2c0b545ca`.
Observed bounded GoodDirection cases: 11. -/
theorem fam_041_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_041_positionPredicate r mask) :
    source_041_producer.Applies fam_041_key r mask := by
  unfold source_041_producer
  simp [fam_041_key, hsource]

theorem fam_041_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_041_key.support r mask) :
    row_002_producer.Applies fam_041_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_041_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_041_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_041_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_041_producerFactsGoodKilled
    (fam_041_sourceApplies_of_position hsource)
    (fam_041_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `33ae86e96c56e24d88c051575221526a33c0b89000b45938f30611ab5a4e41a6`.
Observed bounded GoodDirection cases: 9. -/
theorem fam_042_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_044_positionPredicate r mask) :
    source_044_producer.Applies fam_042_key r mask := by
  unfold source_044_producer
  simp [fam_042_key, hsource]

theorem fam_042_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_042_key.support r mask) :
    row_000_producer.Applies fam_042_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_042_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_044_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_042_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_042_producerFactsGoodKilled
    (fam_042_sourceApplies_of_position hsource)
    (fam_042_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `917a64473dc71e3b13a5fe31410ca315f01367affff4bb98206b476cf7fb8c0c`.
Observed bounded GoodDirection cases: 9. -/
theorem fam_043_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_042_positionPredicate r mask) :
    source_042_producer.Applies fam_043_key r mask := by
  unfold source_042_producer
  simp [fam_043_key, hsource]

theorem fam_043_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_043_key.support r mask) :
    row_000_producer.Applies fam_043_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_043_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_042_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_043_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_043_producerFactsGoodKilled
    (fam_043_sourceApplies_of_position hsource)
    (fam_043_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `7774b30a46b90263474d77dc6a2719b61517977b9e6fdab6ab7e98c1f7a4b6da`.
Observed bounded GoodDirection cases: 9. -/
theorem fam_044_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_043_positionPredicate r mask) :
    source_043_producer.Applies fam_044_key r mask := by
  unfold source_043_producer
  simp [fam_044_key, hsource]

theorem fam_044_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_044_key.support r mask) :
    row_001_producer.Applies fam_044_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_044_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_043_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_044_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_044_producerFactsGoodKilled
    (fam_044_sourceApplies_of_position hsource)
    (fam_044_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `6af2d41d3c2ee178f41f1e043d7b4c346ce2ba5b36e5152d9b0c67d6528bd6bc`.
Observed bounded GoodDirection cases: 8. -/
theorem fam_045_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_045_positionPredicate r mask) :
    source_045_producer.Applies fam_045_key r mask := by
  unfold source_045_producer
  simp [fam_045_key, hsource]

theorem fam_045_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_045_key.support r mask) :
    row_000_producer.Applies fam_045_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_045_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_045_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_045_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_045_producerFactsGoodKilled
    (fam_045_sourceApplies_of_position hsource)
    (fam_045_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `f0b753dfc3deda1191c063efe7934e2675b3263e4504222ab184c757c4b0da85`.
Observed bounded GoodDirection cases: 8. -/
theorem fam_046_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_048_positionPredicate r mask) :
    source_048_producer.Applies fam_046_key r mask := by
  unfold source_048_producer
  simp [fam_046_key, hsource]

theorem fam_046_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_046_key.support r mask) :
    row_000_producer.Applies fam_046_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_046_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_048_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_046_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_046_producerFactsGoodKilled
    (fam_046_sourceApplies_of_position hsource)
    (fam_046_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `c1136f3d6dcaf1282882f919bae09c48dd0cb7e7c1486fe27f92688bf5dd73cd`.
Observed bounded GoodDirection cases: 8. -/
theorem fam_047_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_046_positionPredicate r mask) :
    source_046_producer.Applies fam_047_key r mask := by
  unfold source_046_producer
  simp [fam_047_key, hsource]

theorem fam_047_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_047_key.support r mask) :
    row_001_producer.Applies fam_047_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_047_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_046_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_047_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_047_producerFactsGoodKilled
    (fam_047_sourceApplies_of_position hsource)
    (fam_047_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `60ede019af700f7f4cd0110f34256fe8ffc7dfdb1dc30add788ef06392ab0d22`.
Observed bounded GoodDirection cases: 8. -/
theorem fam_048_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_047_positionPredicate r mask) :
    source_047_producer.Applies fam_048_key r mask := by
  unfold source_047_producer
  simp [fam_048_key, hsource]

theorem fam_048_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_048_key.support r mask) :
    row_002_producer.Applies fam_048_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_048_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_047_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_048_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_048_producerFactsGoodKilled
    (fam_048_sourceApplies_of_position hsource)
    (fam_048_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `d7d264c0e3ad46aaf9b9b576e0654381201768312415e3f1a37f4245a134d5a2`.
Observed bounded GoodDirection cases: 7. -/
theorem fam_049_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_052_positionPredicate r mask) :
    source_052_producer.Applies fam_049_key r mask := by
  unfold source_052_producer
  simp [fam_049_key, hsource]

theorem fam_049_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_049_key.support r mask) :
    row_011_producer.Applies fam_049_key r mask := by
  unfold row_011_producer
  exact ⟨rfl, hrows⟩

theorem fam_049_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_052_positionPredicate r mask)
    (hrows : AxisAOnlyRows fam_049_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_049_producerFactsGoodKilled
    (fam_049_sourceApplies_of_position hsource)
    (fam_049_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `375736f26d4c2eddd65c7402f9bd7e1e12036ad7fab7b73c152ce03e5af39b52`.
Observed bounded GoodDirection cases: 7. -/
theorem fam_050_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_050_positionPredicate r mask) :
    source_050_producer.Applies fam_050_key r mask := by
  unfold source_050_producer
  simp [fam_050_key, hsource]

theorem fam_050_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_050_key.support r mask) :
    row_001_producer.Applies fam_050_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_050_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_050_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_050_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_050_producerFactsGoodKilled
    (fam_050_sourceApplies_of_position hsource)
    (fam_050_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `56f164b10153fec1fc38a63bbd3e0e90892fbbcda01d6bdaf5e8aaadf94a1630`.
Observed bounded GoodDirection cases: 7. -/
theorem fam_051_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_049_positionPredicate r mask) :
    source_049_producer.Applies fam_051_key r mask := by
  unfold source_049_producer
  simp [fam_051_key, hsource]

theorem fam_051_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_051_key.support r mask) :
    row_001_producer.Applies fam_051_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_051_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_049_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_051_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_051_producerFactsGoodKilled
    (fam_051_sourceApplies_of_position hsource)
    (fam_051_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `fd750ba67415f9eb7fe69c3f1d2565eff175952a54d289265d0e5ca4ca6e002b`.
Observed bounded GoodDirection cases: 7. -/
theorem fam_052_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_051_positionPredicate r mask) :
    source_051_producer.Applies fam_052_key r mask := by
  unfold source_051_producer
  simp [fam_052_key, hsource]

theorem fam_052_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_052_key.support r mask) :
    row_004_producer.Applies fam_052_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_052_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_051_positionPredicate r mask)
    (hrows : OppOneMinusVarSecondRows fam_052_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_052_producerFactsGoodKilled
    (fam_052_sourceApplies_of_position hsource)
    (fam_052_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `25e6873ca7c450b2c4bf7a2548883cfe32c017b9260e2a47aafb9217d4e29871`.
Observed bounded GoodDirection cases: 6. -/
theorem fam_053_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_053_positionPredicate r mask) :
    source_053_producer.Applies fam_053_key r mask := by
  unfold source_053_producer
  simp [fam_053_key, hsource]

theorem fam_053_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_053_key.support r mask) :
    row_000_producer.Applies fam_053_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_053_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_053_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_053_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_053_producerFactsGoodKilled
    (fam_053_sourceApplies_of_position hsource)
    (fam_053_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `bd12e0674f599c36efe9cc8fd7020aa104c87901dbb70490d11e7116bde049fa`.
Observed bounded GoodDirection cases: 6. -/
theorem fam_054_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_054_positionPredicate r mask) :
    source_054_producer.Applies fam_054_key r mask := by
  unfold source_054_producer
  simp [fam_054_key, hsource]

theorem fam_054_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_054_key.support r mask) :
    row_000_producer.Applies fam_054_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_054_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_054_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_054_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_054_producerFactsGoodKilled
    (fam_054_sourceApplies_of_position hsource)
    (fam_054_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `fdcb921c6ebe7ecdd2123df586ceb90e441220452ab12763063432bab1d8ebf8`.
Observed bounded GoodDirection cases: 6. -/
theorem fam_055_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_056_positionPredicate r mask) :
    source_056_producer.Applies fam_055_key r mask := by
  unfold source_056_producer
  simp [fam_055_key, hsource]

theorem fam_055_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_055_key.support r mask) :
    row_000_producer.Applies fam_055_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_055_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_056_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_055_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_055_producerFactsGoodKilled
    (fam_055_sourceApplies_of_position hsource)
    (fam_055_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `11d95b2850994406b719844e1957d6fb11c787de83d20182bdfdf7196ee4358d`.
Observed bounded GoodDirection cases: 6. -/
theorem fam_056_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_055_positionPredicate r mask) :
    source_055_producer.Applies fam_056_key r mask := by
  unfold source_055_producer
  simp [fam_056_key, hsource]

theorem fam_056_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_056_key.support r mask) :
    row_002_producer.Applies fam_056_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_056_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_055_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_056_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_056_producerFactsGoodKilled
    (fam_056_sourceApplies_of_position hsource)
    (fam_056_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `0778794abff7963aa45155a23d08d63dcfd67784fce58a6c55db98e53c880497`.
Observed bounded GoodDirection cases: 5. -/
theorem fam_057_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_057_positionPredicate r mask) :
    source_057_producer.Applies fam_057_key r mask := by
  unfold source_057_producer
  simp [fam_057_key, hsource]

theorem fam_057_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_057_key.support r mask) :
    row_000_producer.Applies fam_057_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_057_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_057_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_057_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_057_producerFactsGoodKilled
    (fam_057_sourceApplies_of_position hsource)
    (fam_057_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `0c7becc7afaaffef44c6b08308dddf8d70981c3f52f18cdb8abbaa0124985429`.
Observed bounded GoodDirection cases: 5. -/
theorem fam_058_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_059_positionPredicate r mask) :
    source_059_producer.Applies fam_058_key r mask := by
  unfold source_059_producer
  simp [fam_058_key, hsource]

theorem fam_058_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_058_key.support r mask) :
    row_001_producer.Applies fam_058_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_058_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_059_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_058_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_058_producerFactsGoodKilled
    (fam_058_sourceApplies_of_position hsource)
    (fam_058_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `3aaf4a23dc13f1f0e44e262c79902cb6dd8604a2bb3ce8eb6952bdaa6df8736b`.
Observed bounded GoodDirection cases: 5. -/
theorem fam_059_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_058_positionPredicate r mask) :
    source_058_producer.Applies fam_059_key r mask := by
  unfold source_058_producer
  simp [fam_059_key, hsource]

theorem fam_059_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_059_key.support r mask) :
    row_001_producer.Applies fam_059_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_059_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_058_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_059_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_059_producerFactsGoodKilled
    (fam_059_sourceApplies_of_position hsource)
    (fam_059_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `3bfda27fc01458d2f389e7f2c54bc8b1ccbe1f08a7582d881305cbba7f775712`.
Observed bounded GoodDirection cases: 4. -/
theorem fam_060_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_067_positionPredicate r mask) :
    source_067_producer.Applies fam_060_key r mask := by
  unfold source_067_producer
  simp [fam_060_key, hsource]

theorem fam_060_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_060_key.support r mask) :
    row_013_producer.Applies fam_060_key r mask := by
  unfold row_013_producer
  exact ⟨rfl, hrows⟩

theorem fam_060_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_067_positionPredicate r mask)
    (hrows : AxisAOnlyRows fam_060_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_060_producerFactsGoodKilled
    (fam_060_sourceApplies_of_position hsource)
    (fam_060_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `17977d6940b4f9b3cd69d726764fbc1b74e3cc88634752afc69080c10d28229e`.
Observed bounded GoodDirection cases: 4. -/
theorem fam_061_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_063_positionPredicate r mask) :
    source_063_producer.Applies fam_061_key r mask := by
  unfold source_063_producer
  simp [fam_061_key, hsource]

theorem fam_061_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_061_key.support r mask) :
    row_006_producer.Applies fam_061_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_061_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_063_positionPredicate r mask)
    (hrows : EqEqNegVarFirstRows fam_061_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_061_producerFactsGoodKilled
    (fam_061_sourceApplies_of_position hsource)
    (fam_061_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `2b13ec450d4e16701ee460dbb55d845bd603427f2235572a3df3ee8e915caa6c`.
Observed bounded GoodDirection cases: 4. -/
theorem fam_062_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_066_positionPredicate r mask) :
    source_066_producer.Applies fam_062_key r mask := by
  unfold source_066_producer
  simp [fam_062_key, hsource]

theorem fam_062_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_062_key.support r mask) :
    row_006_producer.Applies fam_062_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_062_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_066_positionPredicate r mask)
    (hrows : EqEqNegVarFirstRows fam_062_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_062_producerFactsGoodKilled
    (fam_062_sourceApplies_of_position hsource)
    (fam_062_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `8382ddd9bd9da8912d9a8e90d4b12f57e9d5a8174160d8ddfc87346c5e94d05d`.
Observed bounded GoodDirection cases: 4. -/
theorem fam_063_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_069_positionPredicate r mask) :
    source_069_producer.Applies fam_063_key r mask := by
  unfold source_069_producer
  simp [fam_063_key, hsource]

theorem fam_063_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_063_key.support r mask) :
    row_006_producer.Applies fam_063_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_063_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_069_positionPredicate r mask)
    (hrows : EqEqNegVarFirstRows fam_063_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_063_producerFactsGoodKilled
    (fam_063_sourceApplies_of_position hsource)
    (fam_063_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `39004b075b2d62a7ab782a5bd13ffb6c869a6a98a769f9380559dbab6c97eb26`.
Observed bounded GoodDirection cases: 4. -/
theorem fam_064_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_065_positionPredicate r mask) :
    source_065_producer.Applies fam_064_key r mask := by
  unfold source_065_producer
  simp [fam_064_key, hsource]

theorem fam_064_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_064_key.support r mask) :
    row_009_producer.Applies fam_064_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_064_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_065_positionPredicate r mask)
    (hrows : EqEqNegVarSecondRows fam_064_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_064_producerFactsGoodKilled
    (fam_064_sourceApplies_of_position hsource)
    (fam_064_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `3a888576ba3bfcde7a8d90f15a809c0953309774e01d898ae3ca1bf3606a85ed`.
Observed bounded GoodDirection cases: 4. -/
theorem fam_065_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_068_positionPredicate r mask) :
    source_068_producer.Applies fam_065_key r mask := by
  unfold source_068_producer
  simp [fam_065_key, hsource]

theorem fam_065_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_065_key.support r mask) :
    row_009_producer.Applies fam_065_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_065_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_068_positionPredicate r mask)
    (hrows : EqEqNegVarSecondRows fam_065_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_065_producerFactsGoodKilled
    (fam_065_sourceApplies_of_position hsource)
    (fam_065_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `163648196897c06ef9d3da61435ef10e6cc3fdd49678b00a392ece04621568a4`.
Observed bounded GoodDirection cases: 4. -/
theorem fam_066_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_061_positionPredicate r mask) :
    source_061_producer.Applies fam_066_key r mask := by
  unfold source_061_producer
  simp [fam_066_key, hsource]

theorem fam_066_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_066_key.support r mask) :
    row_000_producer.Applies fam_066_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_066_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_061_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_066_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_066_producerFactsGoodKilled
    (fam_066_sourceApplies_of_position hsource)
    (fam_066_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `7a1e0cd0a6c58ec13f08757d346780672ca91ff5432cda2588fef008da40a32c`.
Observed bounded GoodDirection cases: 4. -/
theorem fam_067_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_060_positionPredicate r mask) :
    source_060_producer.Applies fam_067_key r mask := by
  unfold source_060_producer
  simp [fam_067_key, hsource]

theorem fam_067_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_067_key.support r mask) :
    row_000_producer.Applies fam_067_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_067_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_060_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_067_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_067_producerFactsGoodKilled
    (fam_067_sourceApplies_of_position hsource)
    (fam_067_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `770c17db81a00d2cc196f1c69403cf77853451677532a5501a7f235477ca92e8`.
Observed bounded GoodDirection cases: 4. -/
theorem fam_068_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_033_positionPredicate r mask) :
    source_033_producer.Applies fam_068_key r mask := by
  unfold source_033_producer
  simp [fam_068_key, hsource]

theorem fam_068_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_068_key.support r mask) :
    row_008_producer.Applies fam_068_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_068_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_033_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_068_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_068_producerFactsGoodKilled
    (fam_068_sourceApplies_of_position hsource)
    (fam_068_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `328d73ce8a190744522e85bc8f47a707f38936922eb4b41db316b099fb887eb1`.
Observed bounded GoodDirection cases: 4. -/
theorem fam_069_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_062_positionPredicate r mask) :
    source_062_producer.Applies fam_069_key r mask := by
  unfold source_062_producer
  simp [fam_069_key, hsource]

theorem fam_069_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_069_key.support r mask) :
    row_001_producer.Applies fam_069_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_069_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_062_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_069_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_069_producerFactsGoodKilled
    (fam_069_sourceApplies_of_position hsource)
    (fam_069_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `6027493b9647f3827454b1c8fb782e3a3bb8516cea6a93c3c9a88a1edd1288dd`.
Observed bounded GoodDirection cases: 4. -/
theorem fam_070_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_064_positionPredicate r mask) :
    source_064_producer.Applies fam_070_key r mask := by
  unfold source_064_producer
  simp [fam_070_key, hsource]

theorem fam_070_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_070_key.support r mask) :
    row_001_producer.Applies fam_070_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_070_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_064_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_070_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_070_producerFactsGoodKilled
    (fam_070_sourceApplies_of_position hsource)
    (fam_070_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `b8abf83a701501202948c3cfb9cc50a419f9d23ff90c75b8eeba2f8faa967288`.
Observed bounded GoodDirection cases: 3. -/
theorem fam_071_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_072_positionPredicate r mask) :
    source_072_producer.Applies fam_071_key r mask := by
  unfold source_072_producer
  simp [fam_071_key, hsource]

theorem fam_071_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_071_key.support r mask) :
    row_006_producer.Applies fam_071_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_071_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_072_positionPredicate r mask)
    (hrows : EqEqNegVarFirstRows fam_071_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_071_producerFactsGoodKilled
    (fam_071_sourceApplies_of_position hsource)
    (fam_071_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `c0a8bed3299f97c821eb8f330b39581b75a6d7d57458fdddb59020ed6f3e2ef1`.
Observed bounded GoodDirection cases: 3. -/
theorem fam_072_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_073_positionPredicate r mask) :
    source_073_producer.Applies fam_072_key r mask := by
  unfold source_073_producer
  simp [fam_072_key, hsource]

theorem fam_072_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_072_key.support r mask) :
    row_006_producer.Applies fam_072_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_072_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_073_positionPredicate r mask)
    (hrows : EqEqNegVarFirstRows fam_072_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_072_producerFactsGoodKilled
    (fam_072_sourceApplies_of_position hsource)
    (fam_072_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `e3871a481d56fba6bedc69f62f83f3cb2b6631d5b3ea08fb09a295dbe1b4f6f1`.
Observed bounded GoodDirection cases: 3. -/
theorem fam_073_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_071_positionPredicate r mask) :
    source_071_producer.Applies fam_073_key r mask := by
  unfold source_071_producer
  simp [fam_073_key, hsource]

theorem fam_073_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_073_key.support r mask) :
    row_001_producer.Applies fam_073_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_073_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_071_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_073_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_073_producerFactsGoodKilled
    (fam_073_sourceApplies_of_position hsource)
    (fam_073_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `fe40eaf2bcebcb7eaed0568bb6a20fdf03226d067433b81a0f8226bf09be6a30`.
Observed bounded GoodDirection cases: 3. -/
theorem fam_074_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_070_positionPredicate r mask) :
    source_070_producer.Applies fam_074_key r mask := by
  unfold source_070_producer
  simp [fam_074_key, hsource]

theorem fam_074_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_074_key.support r mask) :
    row_001_producer.Applies fam_074_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_074_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_070_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_074_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_074_producerFactsGoodKilled
    (fam_074_sourceApplies_of_position hsource)
    (fam_074_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `53cd41bf3302a8a8cc8c551bfcc56a659913aaec03841da83a3b835370382133`.
Observed bounded GoodDirection cases: 3. -/
theorem fam_075_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_074_positionPredicate r mask) :
    source_074_producer.Applies fam_075_key r mask := by
  unfold source_074_producer
  simp [fam_075_key, hsource]

theorem fam_075_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_075_key.support r mask) :
    row_002_producer.Applies fam_075_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_075_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_074_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_075_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_075_producerFactsGoodKilled
    (fam_075_sourceApplies_of_position hsource)
    (fam_075_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `bae141b5dd11114ffab1e610b2bd7eac3fa9828745b16bd54c063c4fe626dab2`.
Observed bounded GoodDirection cases: 3. -/
theorem fam_076_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_075_positionPredicate r mask) :
    source_075_producer.Applies fam_076_key r mask := by
  unfold source_075_producer
  simp [fam_076_key, hsource]

theorem fam_076_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_076_key.support r mask) :
    row_002_producer.Applies fam_076_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_076_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_075_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_076_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_076_producerFactsGoodKilled
    (fam_076_sourceApplies_of_position hsource)
    (fam_076_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `307b518bdefa532ce9207f935557e93cb89dbbdbfb0929ac9f926eee7b7f88a7`.
Observed bounded GoodDirection cases: 3. -/
theorem fam_077_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_076_positionPredicate r mask) :
    source_076_producer.Applies fam_077_key r mask := by
  unfold source_076_producer
  simp [fam_077_key, hsource]

theorem fam_077_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_077_key.support r mask) :
    row_005_producer.Applies fam_077_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_077_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_076_positionPredicate r mask)
    (hrows : OppMinusOneVarSecondRows fam_077_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_077_producerFactsGoodKilled
    (fam_077_sourceApplies_of_position hsource)
    (fam_077_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `176a6f5cde928d4c056b2b27f4236130f38d8b4b1697cedc9d7872ca728c9dc0`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_078_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_092_positionPredicate r mask) :
    source_092_producer.Applies fam_078_key r mask := by
  unfold source_092_producer
  simp [fam_078_key, hsource]

theorem fam_078_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_078_key.support r mask) :
    row_014_producer.Applies fam_078_key r mask := by
  unfold row_014_producer
  exact ⟨rfl, hrows⟩

theorem fam_078_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_092_positionPredicate r mask)
    (hrows : AxisAOnlyRows fam_078_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_078_producerFactsGoodKilled
    (fam_078_sourceApplies_of_position hsource)
    (fam_078_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `a6a31f751351ebb4e60512e2b32d6628586215d4259dbfe9d2fe299bba1b8a1c`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_079_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_083_positionPredicate r mask) :
    source_083_producer.Applies fam_079_key r mask := by
  unfold source_083_producer
  simp [fam_079_key, hsource]

theorem fam_079_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_079_key.support r mask) :
    row_016_producer.Applies fam_079_key r mask := by
  unfold row_016_producer
  exact ⟨rfl, hrows⟩

theorem fam_079_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_083_positionPredicate r mask)
    (hrows : AxisAOnlyRows fam_079_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_079_producerFactsGoodKilled
    (fam_079_sourceApplies_of_position hsource)
    (fam_079_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `646c6bc7f18e68e95287ee82b7443b597812247d0cdf72e65e8c74347cff221c`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_080_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_093_positionPredicate r mask) :
    source_093_producer.Applies fam_080_key r mask := by
  unfold source_093_producer
  simp [fam_080_key, hsource]

theorem fam_080_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_080_key.support r mask) :
    row_012_producer.Applies fam_080_key r mask := by
  unfold row_012_producer
  exact ⟨rfl, hrows⟩

theorem fam_080_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_093_positionPredicate r mask)
    (hrows : AxisBOnlyRows fam_080_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_080_producerFactsGoodKilled
    (fam_080_sourceApplies_of_position hsource)
    (fam_080_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `bb557a47819ccd5bfcd16195b358e1dbdd60929380c98b284cb0b8d8188086a6`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_081_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_090_positionPredicate r mask) :
    source_090_producer.Applies fam_081_key r mask := by
  unfold source_090_producer
  simp [fam_081_key, hsource]

theorem fam_081_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_081_key.support r mask) :
    row_015_producer.Applies fam_081_key r mask := by
  unfold row_015_producer
  exact ⟨rfl, hrows⟩

theorem fam_081_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_090_positionPredicate r mask)
    (hrows : AxisBOnlyRows fam_081_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_081_producerFactsGoodKilled
    (fam_081_sourceApplies_of_position hsource)
    (fam_081_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `6d6f0e6c2872db37c306c1d0c15d180d34faf5817d71c829337c9f6066252ccf`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_082_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_081_positionPredicate r mask) :
    source_081_producer.Applies fam_082_key r mask := by
  unfold source_081_producer
  simp [fam_082_key, hsource]

theorem fam_082_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_082_key.support r mask) :
    row_006_producer.Applies fam_082_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_082_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_081_positionPredicate r mask)
    (hrows : EqEqNegVarFirstRows fam_082_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_082_producerFactsGoodKilled
    (fam_082_sourceApplies_of_position hsource)
    (fam_082_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `b29d18bb938d1e0b97d174ddfef79896e0171d7809c44b9931041bf951838947`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_083_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_089_positionPredicate r mask) :
    source_089_producer.Applies fam_083_key r mask := by
  unfold source_089_producer
  simp [fam_083_key, hsource]

theorem fam_083_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_083_key.support r mask) :
    row_006_producer.Applies fam_083_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_083_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_089_positionPredicate r mask)
    (hrows : EqEqNegVarFirstRows fam_083_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_083_producerFactsGoodKilled
    (fam_083_sourceApplies_of_position hsource)
    (fam_083_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `bf716cac2fc8e0d40e4382f654c5fae6f4510b2536c34193c531520fa82aa1e6`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_084_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_085_positionPredicate r mask) :
    source_085_producer.Applies fam_084_key r mask := by
  unfold source_085_producer
  simp [fam_084_key, hsource]

theorem fam_084_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_084_key.support r mask) :
    row_000_producer.Applies fam_084_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_084_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_085_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_084_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_084_producerFactsGoodKilled
    (fam_084_sourceApplies_of_position hsource)
    (fam_084_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `48038dc101c048930f554be5a91e6fe62258d506fff57340597ff92e26ecfa21`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_085_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_088_positionPredicate r mask) :
    source_088_producer.Applies fam_085_key r mask := by
  unfold source_088_producer
  simp [fam_085_key, hsource]

theorem fam_085_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_085_key.support r mask) :
    row_008_producer.Applies fam_085_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_085_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_088_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_085_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_085_producerFactsGoodKilled
    (fam_085_sourceApplies_of_position hsource)
    (fam_085_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `54abd5a283a8ebf0f7808b920e7326763748f6411dad3136fa5f8676ebf4327d`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_086_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_084_positionPredicate r mask) :
    source_084_producer.Applies fam_086_key r mask := by
  unfold source_084_producer
  simp [fam_086_key, hsource]

theorem fam_086_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_086_key.support r mask) :
    row_008_producer.Applies fam_086_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_086_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_084_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_086_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_086_producerFactsGoodKilled
    (fam_086_sourceApplies_of_position hsource)
    (fam_086_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `a9acae98018f2876953edf07894ef6f663c7bac68c07a4d1bcfa1cec39be4b11`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_087_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_086_positionPredicate r mask) :
    source_086_producer.Applies fam_087_key r mask := by
  unfold source_086_producer
  simp [fam_087_key, hsource]

theorem fam_087_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_087_key.support r mask) :
    row_007_producer.Applies fam_087_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_087_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_086_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_087_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_087_producerFactsGoodKilled
    (fam_087_sourceApplies_of_position hsource)
    (fam_087_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `0e085619323e511c868e6951154f492225320904b520d2caa33b7c57f3a455da`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_088_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_082_positionPredicate r mask) :
    source_082_producer.Applies fam_088_key r mask := by
  unfold source_082_producer
  simp [fam_088_key, hsource]

theorem fam_088_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_088_key.support r mask) :
    row_001_producer.Applies fam_088_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_088_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_082_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_088_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_088_producerFactsGoodKilled
    (fam_088_sourceApplies_of_position hsource)
    (fam_088_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `7e4bd5a1d841b78bc92b42afc69d49e1218781f7afa213140d3312c870ed66b5`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_089_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_087_positionPredicate r mask) :
    source_087_producer.Applies fam_089_key r mask := by
  unfold source_087_producer
  simp [fam_089_key, hsource]

theorem fam_089_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_089_key.support r mask) :
    row_001_producer.Applies fam_089_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_089_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_087_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_089_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_089_producerFactsGoodKilled
    (fam_089_sourceApplies_of_position hsource)
    (fam_089_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `a4e779f35722c820b078dd239298815fae71de8b9b9b79e7e766750f35c03be6`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_090_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_091_positionPredicate r mask) :
    source_091_producer.Applies fam_090_key r mask := by
  unfold source_091_producer
  simp [fam_090_key, hsource]

theorem fam_090_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_090_key.support r mask) :
    row_001_producer.Applies fam_090_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_090_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_091_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_090_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_090_producerFactsGoodKilled
    (fam_090_sourceApplies_of_position hsource)
    (fam_090_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `3b12b6c3f181c7911dd6e6c306705dbca793915b3d792bed6f6b96f76da986fd`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_091_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_077_positionPredicate r mask) :
    source_077_producer.Applies fam_091_key r mask := by
  unfold source_077_producer
  simp [fam_091_key, hsource]

theorem fam_091_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_091_key.support r mask) :
    row_002_producer.Applies fam_091_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_091_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_077_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_091_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_091_producerFactsGoodKilled
    (fam_091_sourceApplies_of_position hsource)
    (fam_091_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `3c4186faefc59d7714cb2ce7a5de0d25e1f37c12178a1720c25be74edfab60f4`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_092_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_078_positionPredicate r mask) :
    source_078_producer.Applies fam_092_key r mask := by
  unfold source_078_producer
  simp [fam_092_key, hsource]

theorem fam_092_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_092_key.support r mask) :
    row_002_producer.Applies fam_092_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_092_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_078_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_092_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_092_producerFactsGoodKilled
    (fam_092_sourceApplies_of_position hsource)
    (fam_092_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `62cde10d5755a010df2d40ce24e0de7f19367d9ff063f6d52f46ca443cb41ae4`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_093_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_080_positionPredicate r mask) :
    source_080_producer.Applies fam_093_key r mask := by
  unfold source_080_producer
  simp [fam_093_key, hsource]

theorem fam_093_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_093_key.support r mask) :
    row_002_producer.Applies fam_093_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_093_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_080_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_093_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_093_producerFactsGoodKilled
    (fam_093_sourceApplies_of_position hsource)
    (fam_093_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `636c01a26809afbda9a061eb37f65b50827f40ffffed1c7542fe2a86bf5bfae6`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_094_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_079_positionPredicate r mask) :
    source_079_producer.Applies fam_094_key r mask := by
  unfold source_079_producer
  simp [fam_094_key, hsource]

theorem fam_094_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_094_key.support r mask) :
    row_002_producer.Applies fam_094_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_094_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_079_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_094_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_094_producerFactsGoodKilled
    (fam_094_sourceApplies_of_position hsource)
    (fam_094_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `71e3ad528373844c11c154df7a1c687f874e9406d9a35e40463e415d66404b66`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_095_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_107_positionPredicate r mask) :
    source_107_producer.Applies fam_095_key r mask := by
  unfold source_107_producer
  simp [fam_095_key, hsource]

theorem fam_095_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_095_key.support r mask) :
    row_014_producer.Applies fam_095_key r mask := by
  unfold row_014_producer
  exact ⟨rfl, hrows⟩

theorem fam_095_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_107_positionPredicate r mask)
    (hrows : AxisAOnlyRows fam_095_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_095_producerFactsGoodKilled
    (fam_095_sourceApplies_of_position hsource)
    (fam_095_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `adfd7e89c920e311d60870c08633b54c785db45d159b4fd2abdf7c89fe8cdb47`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_096_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_125_positionPredicate r mask) :
    source_125_producer.Applies fam_096_key r mask := by
  unfold source_125_producer
  simp [fam_096_key, hsource]

theorem fam_096_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_096_key.support r mask) :
    row_014_producer.Applies fam_096_key r mask := by
  unfold row_014_producer
  exact ⟨rfl, hrows⟩

theorem fam_096_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_125_positionPredicate r mask)
    (hrows : AxisAOnlyRows fam_096_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_096_producerFactsGoodKilled
    (fam_096_sourceApplies_of_position hsource)
    (fam_096_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `c0c4f8c4270ccb5fdb6be4c285762053c1e68378c304374a58b5a4defe3c393f`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_097_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_105_positionPredicate r mask) :
    source_105_producer.Applies fam_097_key r mask := by
  unfold source_105_producer
  simp [fam_097_key, hsource]

theorem fam_097_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_097_key.support r mask) :
    row_013_producer.Applies fam_097_key r mask := by
  unfold row_013_producer
  exact ⟨rfl, hrows⟩

theorem fam_097_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_105_positionPredicate r mask)
    (hrows : AxisAOnlyRows fam_097_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_097_producerFactsGoodKilled
    (fam_097_sourceApplies_of_position hsource)
    (fam_097_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `ea15f28d1c5665a8d2a9dc3b6db8d2fb91ff08b2b069103b426fc07c20e2cba9`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_098_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_116_positionPredicate r mask) :
    source_116_producer.Applies fam_098_key r mask := by
  unfold source_116_producer
  simp [fam_098_key, hsource]

theorem fam_098_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_098_key.support r mask) :
    row_014_producer.Applies fam_098_key r mask := by
  unfold row_014_producer
  exact ⟨rfl, hrows⟩

theorem fam_098_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_116_positionPredicate r mask)
    (hrows : AxisAOnlyRows fam_098_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_098_producerFactsGoodKilled
    (fam_098_sourceApplies_of_position hsource)
    (fam_098_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `2c872c6dbd1776a2b1dec52274fe2eb0c49bec62c8202bdc3b28f9bdbd5397e5`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_099_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_127_positionPredicate r mask) :
    source_127_producer.Applies fam_099_key r mask := by
  unfold source_127_producer
  simp [fam_099_key, hsource]

theorem fam_099_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_099_key.support r mask) :
    row_012_producer.Applies fam_099_key r mask := by
  unfold row_012_producer
  exact ⟨rfl, hrows⟩

theorem fam_099_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_127_positionPredicate r mask)
    (hrows : AxisBOnlyRows fam_099_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_099_producerFactsGoodKilled
    (fam_099_sourceApplies_of_position hsource)
    (fam_099_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `69bc7c3517157185f772d7d69611a7b13e98049ded09ed5cdadce666e18f9b52`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_100_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_128_positionPredicate r mask) :
    source_128_producer.Applies fam_100_key r mask := by
  unfold source_128_producer
  simp [fam_100_key, hsource]

theorem fam_100_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_100_key.support r mask) :
    row_018_producer.Applies fam_100_key r mask := by
  unfold row_018_producer
  exact ⟨rfl, hrows⟩

theorem fam_100_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_128_positionPredicate r mask)
    (hrows : AxisBOnlyRows fam_100_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_100_producerFactsGoodKilled
    (fam_100_sourceApplies_of_position hsource)
    (fam_100_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `af434ef1e28c4e9374e80e31bdac5132c4122299fdf6297c00b77e81462ef215`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_101_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_123_positionPredicate r mask) :
    source_123_producer.Applies fam_101_key r mask := by
  unfold source_123_producer
  simp [fam_101_key, hsource]

theorem fam_101_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_101_key.support r mask) :
    row_017_producer.Applies fam_101_key r mask := by
  unfold row_017_producer
  exact ⟨rfl, hrows⟩

theorem fam_101_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_123_positionPredicate r mask)
    (hrows : AxisBOnlyRows fam_101_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_101_producerFactsGoodKilled
    (fam_101_sourceApplies_of_position hsource)
    (fam_101_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `c8cabab02f21f094bfbcc9f8e6089f1a1dd557fd810e328ccdf8d15df743d5b0`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_102_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_099_positionPredicate r mask) :
    source_099_producer.Applies fam_102_key r mask := by
  unfold source_099_producer
  simp [fam_102_key, hsource]

theorem fam_102_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_102_key.support r mask) :
    row_012_producer.Applies fam_102_key r mask := by
  unfold row_012_producer
  exact ⟨rfl, hrows⟩

theorem fam_102_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_099_positionPredicate r mask)
    (hrows : AxisBOnlyRows fam_102_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_102_producerFactsGoodKilled
    (fam_102_sourceApplies_of_position hsource)
    (fam_102_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `ca84b89b0f6ddf05518b1edae25c6870b88d9fac02b265344bf98adf0431a536`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_103_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_133_positionPredicate r mask) :
    source_133_producer.Applies fam_103_key r mask := by
  unfold source_133_producer
  simp [fam_103_key, hsource]

theorem fam_103_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisBOnlyRows fam_103_key.support r mask) :
    row_012_producer.Applies fam_103_key r mask := by
  unfold row_012_producer
  exact ⟨rfl, hrows⟩

theorem fam_103_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_133_positionPredicate r mask)
    (hrows : AxisBOnlyRows fam_103_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_103_producerFactsGoodKilled
    (fam_103_sourceApplies_of_position hsource)
    (fam_103_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `3470de88c3bb9a115ac302df9a176bfee11086cf10630f460eac52948997c5dd`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_104_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_119_positionPredicate r mask) :
    source_119_producer.Applies fam_104_key r mask := by
  unfold source_119_producer
  simp [fam_104_key, hsource]

theorem fam_104_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_104_key.support r mask) :
    row_006_producer.Applies fam_104_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_104_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_119_positionPredicate r mask)
    (hrows : EqEqNegVarFirstRows fam_104_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_104_producerFactsGoodKilled
    (fam_104_sourceApplies_of_position hsource)
    (fam_104_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `7756892e1bbc5bf2e1f84a76378de3a1fb4a581c106d3ab4ed5f9be83c94a898`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_105_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_095_positionPredicate r mask) :
    source_095_producer.Applies fam_105_key r mask := by
  unfold source_095_producer
  simp [fam_105_key, hsource]

theorem fam_105_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_105_key.support r mask) :
    row_006_producer.Applies fam_105_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_105_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_095_positionPredicate r mask)
    (hrows : EqEqNegVarFirstRows fam_105_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_105_producerFactsGoodKilled
    (fam_105_sourceApplies_of_position hsource)
    (fam_105_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `6c41c02549ae4d2775d47f5e083cf12723ea4da308c4ba5294e6d2e42013e537`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_106_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_126_positionPredicate r mask) :
    source_126_producer.Applies fam_106_key r mask := by
  unfold source_126_producer
  simp [fam_106_key, hsource]

theorem fam_106_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_106_key.support r mask) :
    row_009_producer.Applies fam_106_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_106_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_126_positionPredicate r mask)
    (hrows : EqEqNegVarSecondRows fam_106_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_106_producerFactsGoodKilled
    (fam_106_sourceApplies_of_position hsource)
    (fam_106_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `6feeb6884d5e0b667d64bdfb21d087168ae5b53bfbf4cc4ff400605a833e93ac`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_107_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_117_positionPredicate r mask) :
    source_117_producer.Applies fam_107_key r mask := by
  unfold source_117_producer
  simp [fam_107_key, hsource]

theorem fam_107_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_107_key.support r mask) :
    row_009_producer.Applies fam_107_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_107_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_117_positionPredicate r mask)
    (hrows : EqEqNegVarSecondRows fam_107_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_107_producerFactsGoodKilled
    (fam_107_sourceApplies_of_position hsource)
    (fam_107_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `fe0d2c6fdbd1d260cde0f0ef6ef8c8ab6debf4bb5b70ceda4ae92266d21ce8d2`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_108_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_130_positionPredicate r mask) :
    source_130_producer.Applies fam_108_key r mask := by
  unfold source_130_producer
  simp [fam_108_key, hsource]

theorem fam_108_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_108_key.support r mask) :
    row_009_producer.Applies fam_108_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_108_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_130_positionPredicate r mask)
    (hrows : EqEqNegVarSecondRows fam_108_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_108_producerFactsGoodKilled
    (fam_108_sourceApplies_of_position hsource)
    (fam_108_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `b0f0ca5a98035b6b28d04137c8ccc38f11ac1d979835852b354aeb5200758f8f`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_109_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_120_positionPredicate r mask) :
    source_120_producer.Applies fam_109_key r mask := by
  unfold source_120_producer
  simp [fam_109_key, hsource]

theorem fam_109_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_109_key.support r mask) :
    row_000_producer.Applies fam_109_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_109_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_120_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_109_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_109_producerFactsGoodKilled
    (fam_109_sourceApplies_of_position hsource)
    (fam_109_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `c181ba9bc80ff1e0af2cb891a63228397f40a8cc53b0148a4d2ff9db5b15c352`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_110_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_134_positionPredicate r mask) :
    source_134_producer.Applies fam_110_key r mask := by
  unfold source_134_producer
  simp [fam_110_key, hsource]

theorem fam_110_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_110_key.support r mask) :
    row_000_producer.Applies fam_110_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_110_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_134_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_110_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_110_producerFactsGoodKilled
    (fam_110_sourceApplies_of_position hsource)
    (fam_110_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `e7278ff9089a5d682777b11eb2c3af769e059c934a6a5e3488182bf47823624c`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_111_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_113_positionPredicate r mask) :
    source_113_producer.Applies fam_111_key r mask := by
  unfold source_113_producer
  simp [fam_111_key, hsource]

theorem fam_111_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_111_key.support r mask) :
    row_000_producer.Applies fam_111_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_111_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_113_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_111_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_111_producerFactsGoodKilled
    (fam_111_sourceApplies_of_position hsource)
    (fam_111_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `ef0a95dd96247ea793a096835c8ac82b1f26f432b2913914cd43d44ef34770be`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_112_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_115_positionPredicate r mask) :
    source_115_producer.Applies fam_112_key r mask := by
  unfold source_115_producer
  simp [fam_112_key, hsource]

theorem fam_112_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_112_key.support r mask) :
    row_000_producer.Applies fam_112_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_112_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_115_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_112_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_112_producerFactsGoodKilled
    (fam_112_sourceApplies_of_position hsource)
    (fam_112_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `02b127e3afcd56f6775e889cb82626bf61f0f0e26ca3fce84e1c8a0b89d4f727`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_113_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_121_positionPredicate r mask) :
    source_121_producer.Applies fam_113_key r mask := by
  unfold source_121_producer
  simp [fam_113_key, hsource]

theorem fam_113_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_113_key.support r mask) :
    row_008_producer.Applies fam_113_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_113_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_121_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_113_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_113_producerFactsGoodKilled
    (fam_113_sourceApplies_of_position hsource)
    (fam_113_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `096c11a7f13d19ea5a6a4ab1463bd9f484b703b8a1f141e0db5cbd58289a8018`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_114_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_097_positionPredicate r mask) :
    source_097_producer.Applies fam_114_key r mask := by
  unfold source_097_producer
  simp [fam_114_key, hsource]

theorem fam_114_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_114_key.support r mask) :
    row_008_producer.Applies fam_114_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_114_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_097_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_114_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_114_producerFactsGoodKilled
    (fam_114_sourceApplies_of_position hsource)
    (fam_114_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `1bf27e236f383e1d81ddc6f288a9df726aba812efff0325f683ca79ca4172c7b`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_115_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_101_positionPredicate r mask) :
    source_101_producer.Applies fam_115_key r mask := by
  unfold source_101_producer
  simp [fam_115_key, hsource]

theorem fam_115_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_115_key.support r mask) :
    row_008_producer.Applies fam_115_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_115_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_101_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_115_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_115_producerFactsGoodKilled
    (fam_115_sourceApplies_of_position hsource)
    (fam_115_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `264b9cd7d7fcb257e5fce6e2479524e2d5771f79a2680568564ffb5a0f7151e4`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_116_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_108_positionPredicate r mask) :
    source_108_producer.Applies fam_116_key r mask := by
  unfold source_108_producer
  simp [fam_116_key, hsource]

theorem fam_116_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_116_key.support r mask) :
    row_010_producer.Applies fam_116_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_116_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_108_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_116_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_116_producerFactsGoodKilled
    (fam_116_sourceApplies_of_position hsource)
    (fam_116_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `2d7aafa6d90a976cfbbdcec38eb55e5706411aa12f2c996088719de38bd31150`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_117_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_131_positionPredicate r mask) :
    source_131_producer.Applies fam_117_key r mask := by
  unfold source_131_producer
  simp [fam_117_key, hsource]

theorem fam_117_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_117_key.support r mask) :
    row_010_producer.Applies fam_117_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_117_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_131_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_117_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_117_producerFactsGoodKilled
    (fam_117_sourceApplies_of_position hsource)
    (fam_117_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `314eee03483b488c04e72aafd9c8df371e25368287c67ecd85a4254c364733ad`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_118_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_096_positionPredicate r mask) :
    source_096_producer.Applies fam_118_key r mask := by
  unfold source_096_producer
  simp [fam_118_key, hsource]

theorem fam_118_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_118_key.support r mask) :
    row_008_producer.Applies fam_118_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_118_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_096_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_118_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_118_producerFactsGoodKilled
    (fam_118_sourceApplies_of_position hsource)
    (fam_118_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `39ee2997250107122e7eea24dc0a941a697f6601faf64ab54cf0f400444dbf6a`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_119_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_094_positionPredicate r mask) :
    source_094_producer.Applies fam_119_key r mask := by
  unfold source_094_producer
  simp [fam_119_key, hsource]

theorem fam_119_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_119_key.support r mask) :
    row_010_producer.Applies fam_119_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_119_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_094_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_119_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_119_producerFactsGoodKilled
    (fam_119_sourceApplies_of_position hsource)
    (fam_119_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `5eb0c3d816e9ae0244f9f8027a8608d0a114355a14521202f75873951bb8882c`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_120_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_114_positionPredicate r mask) :
    source_114_producer.Applies fam_120_key r mask := by
  unfold source_114_producer
  simp [fam_120_key, hsource]

theorem fam_120_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_120_key.support r mask) :
    row_010_producer.Applies fam_120_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_120_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_114_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_120_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_120_producerFactsGoodKilled
    (fam_120_sourceApplies_of_position hsource)
    (fam_120_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `ab17eb62ebc9155177b5f3b559b923fcbe279d923845cf917f0575e00d74b0b3`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_121_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_104_positionPredicate r mask) :
    source_104_producer.Applies fam_121_key r mask := by
  unfold source_104_producer
  simp [fam_121_key, hsource]

theorem fam_121_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_121_key.support r mask) :
    row_010_producer.Applies fam_121_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_121_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_104_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_121_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_121_producerFactsGoodKilled
    (fam_121_sourceApplies_of_position hsource)
    (fam_121_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `aba7fa5bfdfe17c46ab677e2d650fecb0bc52213a611e16ace70c35c8679d47a`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_122_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_102_positionPredicate r mask) :
    source_102_producer.Applies fam_122_key r mask := by
  unfold source_102_producer
  simp [fam_122_key, hsource]

theorem fam_122_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_122_key.support r mask) :
    row_007_producer.Applies fam_122_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_122_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_102_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_122_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_122_producerFactsGoodKilled
    (fam_122_sourceApplies_of_position hsource)
    (fam_122_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `b8248b1400ddb058def30d5ca482158301acec6ff5100850d22be74a6c079c75`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_123_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_100_positionPredicate r mask) :
    source_100_producer.Applies fam_123_key r mask := by
  unfold source_100_producer
  simp [fam_123_key, hsource]

theorem fam_123_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_123_key.support r mask) :
    row_010_producer.Applies fam_123_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_123_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_100_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_123_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_123_producerFactsGoodKilled
    (fam_123_sourceApplies_of_position hsource)
    (fam_123_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `cb2e15e9246e382459d6da526a0cf8f3848c6b7f8c78755a67db3f1f3aa1aa6d`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_124_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_110_positionPredicate r mask) :
    source_110_producer.Applies fam_124_key r mask := by
  unfold source_110_producer
  simp [fam_124_key, hsource]

theorem fam_124_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_124_key.support r mask) :
    row_010_producer.Applies fam_124_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_124_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_110_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_124_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_124_producerFactsGoodKilled
    (fam_124_sourceApplies_of_position hsource)
    (fam_124_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `f3c7a8ec44844a731c5fb1b73fad620f2beb88bd6d2401a81a56f7175b67c3b0`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_125_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_122_positionPredicate r mask) :
    source_122_producer.Applies fam_125_key r mask := by
  unfold source_122_producer
  simp [fam_125_key, hsource]

theorem fam_125_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : ExactTwoSourceValidRows fam_125_key.support r mask) :
    row_008_producer.Applies fam_125_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_125_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_122_positionPredicate r mask)
    (hrows : ExactTwoSourceValidRows fam_125_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_125_producerFactsGoodKilled
    (fam_125_sourceApplies_of_position hsource)
    (fam_125_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `0ef325aa5f194e8152bb2705a7ce4afd942ac91769581519a273ef2ec457b397`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_126_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_103_positionPredicate r mask) :
    source_103_producer.Applies fam_126_key r mask := by
  unfold source_103_producer
  simp [fam_126_key, hsource]

theorem fam_126_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_126_key.support r mask) :
    row_001_producer.Applies fam_126_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_126_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_103_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_126_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_126_producerFactsGoodKilled
    (fam_126_sourceApplies_of_position hsource)
    (fam_126_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `68349f4960996eb872474e6425823c92d46ab71ea0403d8afb96cb9e1fb6c727`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_127_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_118_positionPredicate r mask) :
    source_118_producer.Applies fam_127_key r mask := by
  unfold source_118_producer
  simp [fam_127_key, hsource]

theorem fam_127_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_127_key.support r mask) :
    row_001_producer.Applies fam_127_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_127_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_118_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_127_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_127_producerFactsGoodKilled
    (fam_127_sourceApplies_of_position hsource)
    (fam_127_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `bf3f56735c5b9f02d6ab2dc2b24b4bbca8f1e7c3e32701f49a0d2f16d06a3039`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_128_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_098_positionPredicate r mask) :
    source_098_producer.Applies fam_128_key r mask := by
  unfold source_098_producer
  simp [fam_128_key, hsource]

theorem fam_128_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_128_key.support r mask) :
    row_001_producer.Applies fam_128_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_128_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_098_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_128_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_128_producerFactsGoodKilled
    (fam_128_sourceApplies_of_position hsource)
    (fam_128_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `ce62a5a32da0ce9b356319d9cc14d4301fa465fa4ed9fa9f592069cf587ab847`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_129_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_132_positionPredicate r mask) :
    source_132_producer.Applies fam_129_key r mask := by
  unfold source_132_producer
  simp [fam_129_key, hsource]

theorem fam_129_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_129_key.support r mask) :
    row_001_producer.Applies fam_129_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_129_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_132_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_129_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_129_producerFactsGoodKilled
    (fam_129_sourceApplies_of_position hsource)
    (fam_129_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `f420382d3e753e535efd2c83096f0edacb2a1d4da789375289b021326989b18e`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_130_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_106_positionPredicate r mask) :
    source_106_producer.Applies fam_130_key r mask := by
  unfold source_106_producer
  simp [fam_130_key, hsource]

theorem fam_130_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_130_key.support r mask) :
    row_001_producer.Applies fam_130_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_130_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_106_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_130_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_130_producerFactsGoodKilled
    (fam_130_sourceApplies_of_position hsource)
    (fam_130_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `17f7cba927576d1e3ce1e0f22719fdf34efbf487621330fb2634f56699f2d27b`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_131_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_109_positionPredicate r mask) :
    source_109_producer.Applies fam_131_key r mask := by
  unfold source_109_producer
  simp [fam_131_key, hsource]

theorem fam_131_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_131_key.support r mask) :
    row_002_producer.Applies fam_131_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_131_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_109_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_131_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_131_producerFactsGoodKilled
    (fam_131_sourceApplies_of_position hsource)
    (fam_131_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `92d9193d31b543a801877c6f75375b5227fa136d33b657c03e9d44160efc21d2`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_132_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_112_positionPredicate r mask) :
    source_112_producer.Applies fam_132_key r mask := by
  unfold source_112_producer
  simp [fam_132_key, hsource]

theorem fam_132_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_132_key.support r mask) :
    row_002_producer.Applies fam_132_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_132_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_112_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_132_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_132_producerFactsGoodKilled
    (fam_132_sourceApplies_of_position hsource)
    (fam_132_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `94bc8df8c46833a2fe7952fbbc9fc5a3641d8142061c5eb5f8307bd3f0c48ce7`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_133_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_111_positionPredicate r mask) :
    source_111_producer.Applies fam_133_key r mask := by
  unfold source_111_producer
  simp [fam_133_key, hsource]

theorem fam_133_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_133_key.support r mask) :
    row_002_producer.Applies fam_133_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_133_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_111_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_133_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_133_producerFactsGoodKilled
    (fam_133_sourceApplies_of_position hsource)
    (fam_133_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `b1194ee972047bfa27cfb188b029f1ef4073b09adad7ba549ac65f1c74bd0542`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_134_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_129_positionPredicate r mask) :
    source_129_producer.Applies fam_134_key r mask := by
  unfold source_129_producer
  simp [fam_134_key, hsource]

theorem fam_134_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_134_key.support r mask) :
    row_002_producer.Applies fam_134_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_134_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_129_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_134_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_134_producerFactsGoodKilled
    (fam_134_sourceApplies_of_position hsource)
    (fam_134_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `d0abb996a8c7c064d297e64339d5260e39d9936ed47ab5760d3a9be060927986`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_135_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_124_positionPredicate r mask) :
    source_124_producer.Applies fam_135_key r mask := by
  unfold source_124_producer
  simp [fam_135_key, hsource]

theorem fam_135_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_135_key.support r mask) :
    row_002_producer.Applies fam_135_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_135_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_124_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_135_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_135_producerFactsGoodKilled
    (fam_135_sourceApplies_of_position hsource)
    (fam_135_rowApplies_of_rows hrows)

theorem sourcePositionApplicabilitySmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionApplicabilitySmoke
