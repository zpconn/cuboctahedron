import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerGlueSmoke

/-!
Generated source-position producer-applicability smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded member replay.  It derives the 8Z producer `Applies` premises
from source-position predicates and row-template predicates.
Phase: 6Z.6K.8AA.
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

/-- Producer applicability for bounded family `07df79ba535ad420c5b600b5315e79c9af7b32caa4c46b14074a0a6f51780199`.
Observed bounded GoodDirection cases: 421. -/
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

/-- Producer applicability for bounded family `eb4c456fc66410a7b8aa45c64cb8e7e30799ef477fdc1b2697e1e1f95417a217`.
Observed bounded GoodDirection cases: 134. -/
theorem fam_001_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_001_positionPredicate r mask) :
    source_001_producer.Applies fam_001_key r mask := by
  unfold source_001_producer
  simp [fam_001_key, hsource]

theorem fam_001_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_001_key.support r mask) :
    row_002_producer.Applies fam_001_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_001_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_001_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_001_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_001_producerFactsGoodKilled
    (fam_001_sourceApplies_of_position hsource)
    (fam_001_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `54d0c8c40e9b0d9f9519cb7c7408f01fbde155d55fa47406050bae66230fa261`.
Observed bounded GoodDirection cases: 128. -/
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

/-- Producer applicability for bounded family `a781759219e5c92e7bf68c6cb4c21987fb5a17290c17eb050d2c16c071373e07`.
Observed bounded GoodDirection cases: 102. -/
theorem fam_003_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_003_positionPredicate r mask) :
    source_003_producer.Applies fam_003_key r mask := by
  unfold source_003_producer
  simp [fam_003_key, hsource]

theorem fam_003_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_003_key.support r mask) :
    row_003_producer.Applies fam_003_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_003_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_003_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_003_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_003_producerFactsGoodKilled
    (fam_003_sourceApplies_of_position hsource)
    (fam_003_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `976bc3a2ee25ce8a02c2dddf48cec166060bf46e866b86a4ef0107b559468085`.
Observed bounded GoodDirection cases: 79. -/
theorem fam_004_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_004_positionPredicate r mask) :
    source_004_producer.Applies fam_004_key r mask := by
  unfold source_004_producer
  simp [fam_004_key, hsource]

theorem fam_004_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_004_key.support r mask) :
    row_001_producer.Applies fam_004_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_004_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_004_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_004_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_004_producerFactsGoodKilled
    (fam_004_sourceApplies_of_position hsource)
    (fam_004_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `09a0b955cbaf1d58fbed56d6ff63cad1629744eb298c9fcb4a18ba2a45e61494`.
Observed bounded GoodDirection cases: 44. -/
theorem fam_005_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_005_positionPredicate r mask) :
    source_005_producer.Applies fam_005_key r mask := by
  unfold source_005_producer
  simp [fam_005_key, hsource]

theorem fam_005_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_005_key.support r mask) :
    row_002_producer.Applies fam_005_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_005_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_005_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_005_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_005_producerFactsGoodKilled
    (fam_005_sourceApplies_of_position hsource)
    (fam_005_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `fb009e73e064ec37183f65545575cf3f84cf3e090c82d717d7c5e1e800b62f41`.
Observed bounded GoodDirection cases: 30. -/
theorem fam_006_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_006_positionPredicate r mask) :
    source_006_producer.Applies fam_006_key r mask := by
  unfold source_006_producer
  simp [fam_006_key, hsource]

theorem fam_006_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_006_key.support r mask) :
    row_001_producer.Applies fam_006_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_006_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_006_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_006_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_006_producerFactsGoodKilled
    (fam_006_sourceApplies_of_position hsource)
    (fam_006_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `69a677d29b138362a0f675eaa8c179b8b353ce6abbab1d2f9d604aa09b4e00db`.
Observed bounded GoodDirection cases: 29. -/
theorem fam_007_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_007_positionPredicate r mask) :
    source_007_producer.Applies fam_007_key r mask := by
  unfold source_007_producer
  simp [fam_007_key, hsource]

theorem fam_007_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_007_key.support r mask) :
    row_001_producer.Applies fam_007_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_007_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_007_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_007_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_007_producerFactsGoodKilled
    (fam_007_sourceApplies_of_position hsource)
    (fam_007_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `fd9ce00531fecbcf8326b152478e0b00bff3405c9eb247ee8d463229b8d70112`.
Observed bounded GoodDirection cases: 23. -/
theorem fam_008_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_008_positionPredicate r mask) :
    source_008_producer.Applies fam_008_key r mask := by
  unfold source_008_producer
  simp [fam_008_key, hsource]

theorem fam_008_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_008_key.support r mask) :
    row_001_producer.Applies fam_008_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_008_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_008_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_008_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_008_producerFactsGoodKilled
    (fam_008_sourceApplies_of_position hsource)
    (fam_008_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `eafef9e31856b5e1ccfdc5629c05195138270da7d876e45835853904fb264986`.
Observed bounded GoodDirection cases: 22. -/
theorem fam_009_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_010_positionPredicate r mask) :
    source_010_producer.Applies fam_009_key r mask := by
  unfold source_010_producer
  simp [fam_009_key, hsource]

theorem fam_009_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_009_key.support r mask) :
    row_006_producer.Applies fam_009_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_009_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_010_positionPredicate r mask)
    (hrows : EqEqNegVarFirstRows fam_009_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_009_producerFactsGoodKilled
    (fam_009_sourceApplies_of_position hsource)
    (fam_009_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `7e4254e8e8a89467666d4f70d090bb4af72f4df73a95a4ab07e2be3aaf5aa1e9`.
Observed bounded GoodDirection cases: 22. -/
theorem fam_010_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_009_positionPredicate r mask) :
    source_009_producer.Applies fam_010_key r mask := by
  unfold source_009_producer
  simp [fam_010_key, hsource]

theorem fam_010_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_010_key.support r mask) :
    row_001_producer.Applies fam_010_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_010_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_009_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_010_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_010_producerFactsGoodKilled
    (fam_010_sourceApplies_of_position hsource)
    (fam_010_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `a445f3e2b5975118165424df3ba770aae54b1007aa5a3f120a1a1d8614499c3b`.
Observed bounded GoodDirection cases: 21. -/
theorem fam_011_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_011_positionPredicate r mask) :
    source_011_producer.Applies fam_011_key r mask := by
  unfold source_011_producer
  simp [fam_011_key, hsource]

theorem fam_011_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_011_key.support r mask) :
    row_000_producer.Applies fam_011_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_011_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_011_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_011_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_011_producerFactsGoodKilled
    (fam_011_sourceApplies_of_position hsource)
    (fam_011_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `158dc5c1e36d751952d13ae96d984e2aa1489e8060db73a4fe1355bf35743158`.
Observed bounded GoodDirection cases: 20. -/
theorem fam_012_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_012_positionPredicate r mask) :
    source_012_producer.Applies fam_012_key r mask := by
  unfold source_012_producer
  simp [fam_012_key, hsource]

theorem fam_012_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_012_key.support r mask) :
    row_001_producer.Applies fam_012_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_012_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_012_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_012_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_012_producerFactsGoodKilled
    (fam_012_sourceApplies_of_position hsource)
    (fam_012_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `0de4b553cb365d97c53ec9cdcf885e866e1c74c6bf37a6a1ce09dd25e2072981`.
Observed bounded GoodDirection cases: 19. -/
theorem fam_013_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_015_positionPredicate r mask) :
    source_015_producer.Applies fam_013_key r mask := by
  unfold source_015_producer
  simp [fam_013_key, hsource]

theorem fam_013_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_013_key.support r mask) :
    row_000_producer.Applies fam_013_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_013_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_015_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_013_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_013_producerFactsGoodKilled
    (fam_013_sourceApplies_of_position hsource)
    (fam_013_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `9ee6b2e564d663d2a48b04a5f6c09a2f659d7008458c98b9a5c078536ec01da9`.
Observed bounded GoodDirection cases: 19. -/
theorem fam_014_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_013_positionPredicate r mask) :
    source_013_producer.Applies fam_014_key r mask := by
  unfold source_013_producer
  simp [fam_014_key, hsource]

theorem fam_014_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_014_key.support r mask) :
    row_000_producer.Applies fam_014_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_014_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_013_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_014_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_014_producerFactsGoodKilled
    (fam_014_sourceApplies_of_position hsource)
    (fam_014_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `bcaa49bdf67db120feb9ad4dda9a69450799ee1076adb235c86f602b449e273d`.
Observed bounded GoodDirection cases: 19. -/
theorem fam_015_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_016_positionPredicate r mask) :
    source_016_producer.Applies fam_015_key r mask := by
  unfold source_016_producer
  simp [fam_015_key, hsource]

theorem fam_015_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_015_key.support r mask) :
    row_001_producer.Applies fam_015_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_015_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_016_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_015_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_015_producerFactsGoodKilled
    (fam_015_sourceApplies_of_position hsource)
    (fam_015_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `be3dd4a888d16f51b23fd34ec28e9487d7bfc244316bb453c8d15aed5684bede`.
Observed bounded GoodDirection cases: 19. -/
theorem fam_016_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_014_positionPredicate r mask) :
    source_014_producer.Applies fam_016_key r mask := by
  unfold source_014_producer
  simp [fam_016_key, hsource]

theorem fam_016_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_016_key.support r mask) :
    row_004_producer.Applies fam_016_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_016_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_014_positionPredicate r mask)
    (hrows : OppOneMinusVarSecondRows fam_016_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_016_producerFactsGoodKilled
    (fam_016_sourceApplies_of_position hsource)
    (fam_016_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `5651cb30a48af7c1f0528abbffbbcf4eb1954a09872946c492757538dfa5516f`.
Observed bounded GoodDirection cases: 18. -/
theorem fam_017_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_017_positionPredicate r mask) :
    source_017_producer.Applies fam_017_key r mask := by
  unfold source_017_producer
  simp [fam_017_key, hsource]

theorem fam_017_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarSecondRows fam_017_key.support r mask) :
    row_001_producer.Applies fam_017_key r mask := by
  unfold row_001_producer
  exact ⟨rfl, hrows⟩

theorem fam_017_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_017_positionPredicate r mask)
    (hrows : EqEqPosVarSecondRows fam_017_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_017_producerFactsGoodKilled
    (fam_017_sourceApplies_of_position hsource)
    (fam_017_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `16806f7f8e27292c741217ef7a837fcf043172e9fbaeff17cd706c9d4f669c70`.
Observed bounded GoodDirection cases: 17. -/
theorem fam_018_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_018_positionPredicate r mask) :
    source_018_producer.Applies fam_018_key r mask := by
  unfold source_018_producer
  simp [fam_018_key, hsource]

theorem fam_018_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_018_key.support r mask) :
    row_000_producer.Applies fam_018_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_018_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_018_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_018_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_018_producerFactsGoodKilled
    (fam_018_sourceApplies_of_position hsource)
    (fam_018_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `b3cef9b2770de6d05c9b1eefe272e6cabbdf7ba5411cb17f52e5f16d0c879231`.
Observed bounded GoodDirection cases: 15. -/
theorem fam_019_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_019_positionPredicate r mask) :
    source_019_producer.Applies fam_019_key r mask := by
  unfold source_019_producer
  simp [fam_019_key, hsource]

theorem fam_019_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_019_key.support r mask) :
    row_000_producer.Applies fam_019_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_019_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_019_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_019_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_019_producerFactsGoodKilled
    (fam_019_sourceApplies_of_position hsource)
    (fam_019_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `361051690e66824158e97e2c729d59a1207b25b91c241331954e3400c134e0d0`.
Observed bounded GoodDirection cases: 14. -/
theorem fam_020_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_020_positionPredicate r mask) :
    source_020_producer.Applies fam_020_key r mask := by
  unfold source_020_producer
  simp [fam_020_key, hsource]

theorem fam_020_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_020_key.support r mask) :
    row_003_producer.Applies fam_020_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_020_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_020_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_020_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_020_producerFactsGoodKilled
    (fam_020_sourceApplies_of_position hsource)
    (fam_020_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `5d42d8292a7d7142ba67583f3d246cb5b3891e05248fcb95384cdeaf865d0757`.
Observed bounded GoodDirection cases: 13. -/
theorem fam_021_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_021_positionPredicate r mask) :
    source_021_producer.Applies fam_021_key r mask := by
  unfold source_021_producer
  simp [fam_021_key, hsource]

theorem fam_021_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_021_key.support r mask) :
    row_005_producer.Applies fam_021_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_021_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_021_positionPredicate r mask)
    (hrows : OppMinusOneVarSecondRows fam_021_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_021_producerFactsGoodKilled
    (fam_021_sourceApplies_of_position hsource)
    (fam_021_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `07cbb2ceea4f8ff57a4ac592b07a0a13ffcbc802d180f8be174645bd87902851`.
Observed bounded GoodDirection cases: 12. -/
theorem fam_022_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_022_positionPredicate r mask) :
    source_022_producer.Applies fam_022_key r mask := by
  unfold source_022_producer
  simp [fam_022_key, hsource]

theorem fam_022_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_022_key.support r mask) :
    row_004_producer.Applies fam_022_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_022_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_022_positionPredicate r mask)
    (hrows : OppOneMinusVarSecondRows fam_022_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_022_producerFactsGoodKilled
    (fam_022_sourceApplies_of_position hsource)
    (fam_022_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `eec6cea09d6d89c03f3c4577319600781c82fe093551478e4074800b6ef59c13`.
Observed bounded GoodDirection cases: 11. -/
theorem fam_023_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_023_positionPredicate r mask) :
    source_023_producer.Applies fam_023_key r mask := by
  unfold source_023_producer
  simp [fam_023_key, hsource]

theorem fam_023_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_023_key.support r mask) :
    row_000_producer.Applies fam_023_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_023_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_023_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_023_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_023_producerFactsGoodKilled
    (fam_023_sourceApplies_of_position hsource)
    (fam_023_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `1051d2b13a449cbd9f9812d12bc8463552e4a275d660b1b6ee617c733cf3b31c`.
Observed bounded GoodDirection cases: 11. -/
theorem fam_024_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_024_positionPredicate r mask) :
    source_024_producer.Applies fam_024_key r mask := by
  unfold source_024_producer
  simp [fam_024_key, hsource]

theorem fam_024_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_024_key.support r mask) :
    row_004_producer.Applies fam_024_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_024_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_024_positionPredicate r mask)
    (hrows : OppOneMinusVarSecondRows fam_024_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_024_producerFactsGoodKilled
    (fam_024_sourceApplies_of_position hsource)
    (fam_024_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `532409d578c514296ef6541d25a6ab0d243fafccca9374ece710a7e0db264366`.
Observed bounded GoodDirection cases: 10. -/
theorem fam_025_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_025_positionPredicate r mask) :
    source_025_producer.Applies fam_025_key r mask := by
  unfold source_025_producer
  simp [fam_025_key, hsource]

theorem fam_025_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarFirstRows fam_025_key.support r mask) :
    row_006_producer.Applies fam_025_key r mask := by
  unfold row_006_producer
  exact ⟨rfl, hrows⟩

theorem fam_025_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_025_positionPredicate r mask)
    (hrows : EqEqNegVarFirstRows fam_025_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_025_producerFactsGoodKilled
    (fam_025_sourceApplies_of_position hsource)
    (fam_025_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `1f4f8742fa2970d296e3fbf12e541c66c254d7c7dd433859bf0e6d97828c2309`.
Observed bounded GoodDirection cases: 10. -/
theorem fam_026_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_027_positionPredicate r mask) :
    source_027_producer.Applies fam_026_key r mask := by
  unfold source_027_producer
  simp [fam_026_key, hsource]

theorem fam_026_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_026_key.support r mask) :
    row_000_producer.Applies fam_026_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_026_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_027_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_026_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_026_producerFactsGoodKilled
    (fam_026_sourceApplies_of_position hsource)
    (fam_026_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `49dc29bc5a3a346e57575f61d2b4fdb2f12956835c68063381b703d6ac1f887b`.
Observed bounded GoodDirection cases: 10. -/
theorem fam_027_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_026_positionPredicate r mask) :
    source_026_producer.Applies fam_027_key r mask := by
  unfold source_026_producer
  simp [fam_027_key, hsource]

theorem fam_027_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_027_key.support r mask) :
    row_000_producer.Applies fam_027_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_027_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_026_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_027_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_027_producerFactsGoodKilled
    (fam_027_sourceApplies_of_position hsource)
    (fam_027_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `173645791fcf6158993df04a06cad8e6c9277a4a5116eeeae8320100bc7ad399`.
Observed bounded GoodDirection cases: 9. -/
theorem fam_028_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_028_positionPredicate r mask) :
    source_028_producer.Applies fam_028_key r mask := by
  unfold source_028_producer
  simp [fam_028_key, hsource]

theorem fam_028_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_028_key.support r mask) :
    row_004_producer.Applies fam_028_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_028_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_028_positionPredicate r mask)
    (hrows : OppOneMinusVarSecondRows fam_028_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_028_producerFactsGoodKilled
    (fam_028_sourceApplies_of_position hsource)
    (fam_028_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `34387ab3bfde9bdfb349636d90cee3997629820bb8557064c077fb0b72f06add`.
Observed bounded GoodDirection cases: 9. -/
theorem fam_029_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_029_positionPredicate r mask) :
    source_029_producer.Applies fam_029_key r mask := by
  unfold source_029_producer
  simp [fam_029_key, hsource]

theorem fam_029_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_029_key.support r mask) :
    row_005_producer.Applies fam_029_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_029_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_029_positionPredicate r mask)
    (hrows : OppMinusOneVarSecondRows fam_029_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_029_producerFactsGoodKilled
    (fam_029_sourceApplies_of_position hsource)
    (fam_029_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `5d9efeb0452e392fa179cd0e334cda41a13e7d69baa6637ee7b719a887e6e56d`.
Observed bounded GoodDirection cases: 9. -/
theorem fam_030_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_031_positionPredicate r mask) :
    source_031_producer.Applies fam_030_key r mask := by
  unfold source_031_producer
  simp [fam_030_key, hsource]

theorem fam_030_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_030_key.support r mask) :
    row_005_producer.Applies fam_030_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_030_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_031_positionPredicate r mask)
    (hrows : OppMinusOneVarSecondRows fam_030_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_030_producerFactsGoodKilled
    (fam_030_sourceApplies_of_position hsource)
    (fam_030_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `cb6f6bc2af727b7b07a1a5f93b6bb4b547714996ae906018ac0e2560d8102162`.
Observed bounded GoodDirection cases: 8. -/
theorem fam_031_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_032_positionPredicate r mask) :
    source_032_producer.Applies fam_031_key r mask := by
  unfold source_032_producer
  simp [fam_031_key, hsource]

theorem fam_031_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_031_key.support r mask) :
    row_000_producer.Applies fam_031_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_031_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_032_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_031_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_031_producerFactsGoodKilled
    (fam_031_sourceApplies_of_position hsource)
    (fam_031_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `6d2e4128c784627b01fdf6513ed433ec6ab2c1c8a0fcf082c21e14a67526bbd1`.
Observed bounded GoodDirection cases: 7. -/
theorem fam_032_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_036_positionPredicate r mask) :
    source_036_producer.Applies fam_032_key r mask := by
  unfold source_036_producer
  simp [fam_032_key, hsource]

theorem fam_032_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_032_key.support r mask) :
    row_000_producer.Applies fam_032_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_032_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_036_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_032_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_032_producerFactsGoodKilled
    (fam_032_sourceApplies_of_position hsource)
    (fam_032_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `47d53ad973ee3257ce12e4c767a004934ccfea4a0a38986e4f22ff0a1aed0ca2`.
Observed bounded GoodDirection cases: 7. -/
theorem fam_033_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_034_positionPredicate r mask) :
    source_034_producer.Applies fam_033_key r mask := by
  unfold source_034_producer
  simp [fam_033_key, hsource]

theorem fam_033_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_033_key.support r mask) :
    row_002_producer.Applies fam_033_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_033_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_034_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_033_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_033_producerFactsGoodKilled
    (fam_033_sourceApplies_of_position hsource)
    (fam_033_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `cb8990495e80e4e83ff3dd6dbc52d2311080437714265957a3e06912a1fb84fc`.
Observed bounded GoodDirection cases: 7. -/
theorem fam_034_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_035_positionPredicate r mask) :
    source_035_producer.Applies fam_034_key r mask := by
  unfold source_035_producer
  simp [fam_034_key, hsource]

theorem fam_034_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_034_key.support r mask) :
    row_002_producer.Applies fam_034_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_034_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_035_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_034_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_034_producerFactsGoodKilled
    (fam_034_sourceApplies_of_position hsource)
    (fam_034_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `f4720b9b7c334ff3bd51b6ed20a9ebe7147a3827ee0d000ff0ef889dbb1da232`.
Observed bounded GoodDirection cases: 7. -/
theorem fam_035_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_033_positionPredicate r mask) :
    source_033_producer.Applies fam_035_key r mask := by
  unfold source_033_producer
  simp [fam_035_key, hsource]

theorem fam_035_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_035_key.support r mask) :
    row_005_producer.Applies fam_035_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_035_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_033_positionPredicate r mask)
    (hrows : OppMinusOneVarSecondRows fam_035_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_035_producerFactsGoodKilled
    (fam_035_sourceApplies_of_position hsource)
    (fam_035_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `1fbb3ca1bb9f9d06de3fcfe2b546b99940e647fba253b01170c57f26e4cf605e`.
Observed bounded GoodDirection cases: 6. -/
theorem fam_036_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_041_positionPredicate r mask) :
    source_041_producer.Applies fam_036_key r mask := by
  unfold source_041_producer
  simp [fam_036_key, hsource]

theorem fam_036_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_036_key.support r mask) :
    row_000_producer.Applies fam_036_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_036_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_041_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_036_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_036_producerFactsGoodKilled
    (fam_036_sourceApplies_of_position hsource)
    (fam_036_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `969bdd36c0ff690c62a0b53d598d08baaaffcf117b705925f574eaf39d9931f0`.
Observed bounded GoodDirection cases: 6. -/
theorem fam_037_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_040_positionPredicate r mask) :
    source_040_producer.Applies fam_037_key r mask := by
  unfold source_040_producer
  simp [fam_037_key, hsource]

theorem fam_037_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_037_key.support r mask) :
    row_000_producer.Applies fam_037_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_037_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_040_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_037_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_037_producerFactsGoodKilled
    (fam_037_sourceApplies_of_position hsource)
    (fam_037_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `46754c731c77c053bab64c67da53dcc1b5f174fe3ff8b9895806bf6c39f4d95a`.
Observed bounded GoodDirection cases: 6. -/
theorem fam_038_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_038_positionPredicate r mask) :
    source_038_producer.Applies fam_038_key r mask := by
  unfold source_038_producer
  simp [fam_038_key, hsource]

theorem fam_038_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_038_key.support r mask) :
    row_002_producer.Applies fam_038_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_038_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_038_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_038_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_038_producerFactsGoodKilled
    (fam_038_sourceApplies_of_position hsource)
    (fam_038_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `4fda77f1bb3ebbed92f40e150884471b84d123e5b2d9d45e0eaff7690fb57cc9`.
Observed bounded GoodDirection cases: 6. -/
theorem fam_039_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_037_positionPredicate r mask) :
    source_037_producer.Applies fam_039_key r mask := by
  unfold source_037_producer
  simp [fam_039_key, hsource]

theorem fam_039_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_039_key.support r mask) :
    row_002_producer.Applies fam_039_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_039_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_037_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_039_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_039_producerFactsGoodKilled
    (fam_039_sourceApplies_of_position hsource)
    (fam_039_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `5b8f1619d9cedeebccbff7692bcab9431eb53ed757cb015fe838ebbaead6de0b`.
Observed bounded GoodDirection cases: 6. -/
theorem fam_040_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_042_positionPredicate r mask) :
    source_042_producer.Applies fam_040_key r mask := by
  unfold source_042_producer
  simp [fam_040_key, hsource]

theorem fam_040_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_040_key.support r mask) :
    row_004_producer.Applies fam_040_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_040_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_042_positionPredicate r mask)
    (hrows : OppOneMinusVarSecondRows fam_040_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_040_producerFactsGoodKilled
    (fam_040_sourceApplies_of_position hsource)
    (fam_040_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `bbbd1b52ffaff83f416f83cf6570a124f64b171786df2a706b8e6f478a7c5e6a`.
Observed bounded GoodDirection cases: 6. -/
theorem fam_041_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_039_positionPredicate r mask) :
    source_039_producer.Applies fam_041_key r mask := by
  unfold source_039_producer
  simp [fam_041_key, hsource]

theorem fam_041_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_041_key.support r mask) :
    row_004_producer.Applies fam_041_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_041_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_039_positionPredicate r mask)
    (hrows : OppOneMinusVarSecondRows fam_041_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_041_producerFactsGoodKilled
    (fam_041_sourceApplies_of_position hsource)
    (fam_041_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `001142d72c22dac0fd41e429a47c6f32d0f7456e0dce2c45057120b7f77f0162`.
Observed bounded GoodDirection cases: 5. -/
theorem fam_042_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_044_positionPredicate r mask) :
    source_044_producer.Applies fam_042_key r mask := by
  unfold source_044_producer
  simp [fam_042_key, hsource]

theorem fam_042_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_042_key.support r mask) :
    row_002_producer.Applies fam_042_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_042_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_044_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_042_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_042_producerFactsGoodKilled
    (fam_042_sourceApplies_of_position hsource)
    (fam_042_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `8a4f0d011c71c3855f0555c3626724c8b000efab7f757f1019e23747d7b7642b`.
Observed bounded GoodDirection cases: 5. -/
theorem fam_043_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_043_positionPredicate r mask) :
    source_043_producer.Applies fam_043_key r mask := by
  unfold source_043_producer
  simp [fam_043_key, hsource]

theorem fam_043_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_043_key.support r mask) :
    row_004_producer.Applies fam_043_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_043_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_043_positionPredicate r mask)
    (hrows : OppOneMinusVarSecondRows fam_043_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_043_producerFactsGoodKilled
    (fam_043_sourceApplies_of_position hsource)
    (fam_043_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `d408ca12e5b1e62c0ed7e2950cfaaa0b4af5f29e1ebdca8a0e7d97d1091eecab`.
Observed bounded GoodDirection cases: 5. -/
theorem fam_044_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_045_positionPredicate r mask) :
    source_045_producer.Applies fam_044_key r mask := by
  unfold source_045_producer
  simp [fam_044_key, hsource]

theorem fam_044_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarSecondRows fam_044_key.support r mask) :
    row_004_producer.Applies fam_044_key r mask := by
  unfold row_004_producer
  exact ⟨rfl, hrows⟩

theorem fam_044_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_045_positionPredicate r mask)
    (hrows : OppOneMinusVarSecondRows fam_044_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_044_producerFactsGoodKilled
    (fam_044_sourceApplies_of_position hsource)
    (fam_044_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `b2c2b4aeb41065c716685a0856f222542bb43aa5316afe386195f7f1197aebb9`.
Observed bounded GoodDirection cases: 4. -/
theorem fam_045_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_030_positionPredicate r mask) :
    source_030_producer.Applies fam_045_key r mask := by
  unfold source_030_producer
  simp [fam_045_key, hsource]

theorem fam_045_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_045_key.support r mask) :
    row_007_producer.Applies fam_045_key r mask := by
  unfold row_007_producer
  exact ⟨rfl, hrows⟩

theorem fam_045_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_030_positionPredicate r mask)
    (hrows : AxisAOnlyRows fam_045_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_045_producerFactsGoodKilled
    (fam_045_sourceApplies_of_position hsource)
    (fam_045_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `4c6ff9165c9b0df23d40bbb5ff34c1a7b846bc771a0a38da6434f7fa604e061a`.
Observed bounded GoodDirection cases: 4. -/
theorem fam_046_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_046_positionPredicate r mask) :
    source_046_producer.Applies fam_046_key r mask := by
  unfold source_046_producer
  simp [fam_046_key, hsource]

theorem fam_046_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_046_key.support r mask) :
    row_000_producer.Applies fam_046_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_046_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_046_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_046_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_046_producerFactsGoodKilled
    (fam_046_sourceApplies_of_position hsource)
    (fam_046_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `62f5ae522c0e7133d5843c313ca60aeae4e0b20c912d1f80286ac540b2b6eb8a`.
Observed bounded GoodDirection cases: 4. -/
theorem fam_047_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_047_positionPredicate r mask) :
    source_047_producer.Applies fam_047_key r mask := by
  unfold source_047_producer
  simp [fam_047_key, hsource]

theorem fam_047_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_047_key.support r mask) :
    row_000_producer.Applies fam_047_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_047_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_047_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_047_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_047_producerFactsGoodKilled
    (fam_047_sourceApplies_of_position hsource)
    (fam_047_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `bb0db39a94e945010710a13b20ce302ef100c2c9d34f71cf3b7a51b2570971f5`.
Observed bounded GoodDirection cases: 3. -/
theorem fam_048_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_030_positionPredicate r mask) :
    source_030_producer.Applies fam_048_key r mask := by
  unfold source_030_producer
  simp [fam_048_key, hsource]

theorem fam_048_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_048_key.support r mask) :
    row_008_producer.Applies fam_048_key r mask := by
  unfold row_008_producer
  exact ⟨rfl, hrows⟩

theorem fam_048_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_030_positionPredicate r mask)
    (hrows : AxisAOnlyRows fam_048_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_048_producerFactsGoodKilled
    (fam_048_sourceApplies_of_position hsource)
    (fam_048_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `2331829ae5f9c9473447cdc0d7e31e8e2c9371e462f2a7f75cdaa02627990bfb`.
Observed bounded GoodDirection cases: 3. -/
theorem fam_049_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_051_positionPredicate r mask) :
    source_051_producer.Applies fam_049_key r mask := by
  unfold source_051_producer
  simp [fam_049_key, hsource]

theorem fam_049_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_049_key.support r mask) :
    row_000_producer.Applies fam_049_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_049_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_051_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_049_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_049_producerFactsGoodKilled
    (fam_049_sourceApplies_of_position hsource)
    (fam_049_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `698bc5fc0b761af936d02e66853f313943632c3c9abf425807a742b732b440f1`.
Observed bounded GoodDirection cases: 3. -/
theorem fam_050_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_053_positionPredicate r mask) :
    source_053_producer.Applies fam_050_key r mask := by
  unfold source_053_producer
  simp [fam_050_key, hsource]

theorem fam_050_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_050_key.support r mask) :
    row_002_producer.Applies fam_050_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_050_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_053_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_050_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_050_producerFactsGoodKilled
    (fam_050_sourceApplies_of_position hsource)
    (fam_050_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `7a15080fd1fc18351ab493b05ba7ccdff63eef25273e8bd050bd328d075d5e21`.
Observed bounded GoodDirection cases: 3. -/
theorem fam_051_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_049_positionPredicate r mask) :
    source_049_producer.Applies fam_051_key r mask := by
  unfold source_049_producer
  simp [fam_051_key, hsource]

theorem fam_051_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_051_key.support r mask) :
    row_002_producer.Applies fam_051_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_051_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_049_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_051_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_051_producerFactsGoodKilled
    (fam_051_sourceApplies_of_position hsource)
    (fam_051_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `c7ecaa84912e11bf981f33a9429149f9aabf3ad114bccc532cfcca21be76d3b9`.
Observed bounded GoodDirection cases: 3. -/
theorem fam_052_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_048_positionPredicate r mask) :
    source_048_producer.Applies fam_052_key r mask := by
  unfold source_048_producer
  simp [fam_052_key, hsource]

theorem fam_052_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_052_key.support r mask) :
    row_002_producer.Applies fam_052_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_052_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_048_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_052_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_052_producerFactsGoodKilled
    (fam_052_sourceApplies_of_position hsource)
    (fam_052_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `1e08e15088e7db1c3371fea0a75c650ee857b2d52d2b26d85d58092c011ca83b`.
Observed bounded GoodDirection cases: 3. -/
theorem fam_053_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_050_positionPredicate r mask) :
    source_050_producer.Applies fam_053_key r mask := by
  unfold source_050_producer
  simp [fam_053_key, hsource]

theorem fam_053_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_053_key.support r mask) :
    row_003_producer.Applies fam_053_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_053_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_050_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_053_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_053_producerFactsGoodKilled
    (fam_053_sourceApplies_of_position hsource)
    (fam_053_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `68ca43ad6da1bf21837ad43de8916779d8c9b7674f02fd42c9fb46275e56520c`.
Observed bounded GoodDirection cases: 3. -/
theorem fam_054_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_052_positionPredicate r mask) :
    source_052_producer.Applies fam_054_key r mask := by
  unfold source_052_producer
  simp [fam_054_key, hsource]

theorem fam_054_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_054_key.support r mask) :
    row_003_producer.Applies fam_054_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_054_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_052_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_054_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_054_producerFactsGoodKilled
    (fam_054_sourceApplies_of_position hsource)
    (fam_054_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `83c116b44a85395f6e8bb8fc0165b509e6bf845face95355ce26acb6aa1b1fc3`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_055_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_030_positionPredicate r mask) :
    source_030_producer.Applies fam_055_key r mask := by
  unfold source_030_producer
  simp [fam_055_key, hsource]

theorem fam_055_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : AxisAOnlyRows fam_055_key.support r mask) :
    row_010_producer.Applies fam_055_key r mask := by
  unfold row_010_producer
  exact ⟨rfl, hrows⟩

theorem fam_055_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_030_positionPredicate r mask)
    (hrows : AxisAOnlyRows fam_055_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_055_producerFactsGoodKilled
    (fam_055_sourceApplies_of_position hsource)
    (fam_055_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `29c29249413755d9d6fbbc65c672e06248f54014ce6ad4eaf1d254591260718a`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_056_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_057_positionPredicate r mask) :
    source_057_producer.Applies fam_056_key r mask := by
  unfold source_057_producer
  simp [fam_056_key, hsource]

theorem fam_056_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_056_key.support r mask) :
    row_009_producer.Applies fam_056_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_056_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_057_positionPredicate r mask)
    (hrows : EqEqNegVarSecondRows fam_056_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_056_producerFactsGoodKilled
    (fam_056_sourceApplies_of_position hsource)
    (fam_056_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `843502ed659adec3e8be559efd41763a66b8f79a231413413bfc62074b30741b`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_057_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_055_positionPredicate r mask) :
    source_055_producer.Applies fam_057_key r mask := by
  unfold source_055_producer
  simp [fam_057_key, hsource]

theorem fam_057_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_057_key.support r mask) :
    row_002_producer.Applies fam_057_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_057_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_055_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_057_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_057_producerFactsGoodKilled
    (fam_057_sourceApplies_of_position hsource)
    (fam_057_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `e123e95ce12fb8512a98acdcdc060cc8e1427e5e426c456b02f2df50bb835096`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_058_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_056_positionPredicate r mask) :
    source_056_producer.Applies fam_058_key r mask := by
  unfold source_056_producer
  simp [fam_058_key, hsource]

theorem fam_058_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_058_key.support r mask) :
    row_003_producer.Applies fam_058_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_058_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_056_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_058_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_058_producerFactsGoodKilled
    (fam_058_sourceApplies_of_position hsource)
    (fam_058_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `3b759ab3163ba9496a7005928678cb5a209032fa5b627ee33ba282b0bdd0155e`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_059_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_059_positionPredicate r mask) :
    source_059_producer.Applies fam_059_key r mask := by
  unfold source_059_producer
  simp [fam_059_key, hsource]

theorem fam_059_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_059_key.support r mask) :
    row_005_producer.Applies fam_059_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_059_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_059_positionPredicate r mask)
    (hrows : OppMinusOneVarSecondRows fam_059_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_059_producerFactsGoodKilled
    (fam_059_sourceApplies_of_position hsource)
    (fam_059_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `548ef76c4ca70a698bc32c47af5db80f61529e06e13bb8e3a7091ea372d4cad6`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_060_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_058_positionPredicate r mask) :
    source_058_producer.Applies fam_060_key r mask := by
  unfold source_058_producer
  simp [fam_060_key, hsource]

theorem fam_060_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_060_key.support r mask) :
    row_005_producer.Applies fam_060_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_060_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_058_positionPredicate r mask)
    (hrows : OppMinusOneVarSecondRows fam_060_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_060_producerFactsGoodKilled
    (fam_060_sourceApplies_of_position hsource)
    (fam_060_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `f2d8c0c0c4893e42bc01b07592ca364b1399a95bed0c91aeb13cc2c01b1ebad2`.
Observed bounded GoodDirection cases: 2. -/
theorem fam_061_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_054_positionPredicate r mask) :
    source_054_producer.Applies fam_061_key r mask := by
  unfold source_054_producer
  simp [fam_061_key, hsource]

theorem fam_061_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarSecondRows fam_061_key.support r mask) :
    row_005_producer.Applies fam_061_key r mask := by
  unfold row_005_producer
  exact ⟨rfl, hrows⟩

theorem fam_061_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_054_positionPredicate r mask)
    (hrows : OppMinusOneVarSecondRows fam_061_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_061_producerFactsGoodKilled
    (fam_061_sourceApplies_of_position hsource)
    (fam_061_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `533c62403ad2eb955c1259cebc86a5a3d5b25f9f764082c9d2fa9e95e2e6b1dc`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_062_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_061_positionPredicate r mask) :
    source_061_producer.Applies fam_062_key r mask := by
  unfold source_061_producer
  simp [fam_062_key, hsource]

theorem fam_062_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqNegVarSecondRows fam_062_key.support r mask) :
    row_009_producer.Applies fam_062_key r mask := by
  unfold row_009_producer
  exact ⟨rfl, hrows⟩

theorem fam_062_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_061_positionPredicate r mask)
    (hrows : EqEqNegVarSecondRows fam_062_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_062_producerFactsGoodKilled
    (fam_062_sourceApplies_of_position hsource)
    (fam_062_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `dbcf419ae9e07ff307f82ab76c38130544ba6f8432769e038bdb3f3cb3d892f1`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_063_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_068_positionPredicate r mask) :
    source_068_producer.Applies fam_063_key r mask := by
  unfold source_068_producer
  simp [fam_063_key, hsource]

theorem fam_063_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_063_key.support r mask) :
    row_000_producer.Applies fam_063_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_063_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_068_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_063_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_063_producerFactsGoodKilled
    (fam_063_sourceApplies_of_position hsource)
    (fam_063_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `f58e8057dc1ef59724f47203d7b7cee139d6b386b440a531b6e8043e0830769d`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_064_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_067_positionPredicate r mask) :
    source_067_producer.Applies fam_064_key r mask := by
  unfold source_067_producer
  simp [fam_064_key, hsource]

theorem fam_064_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : EqEqPosVarFirstRows fam_064_key.support r mask) :
    row_000_producer.Applies fam_064_key r mask := by
  unfold row_000_producer
  exact ⟨rfl, hrows⟩

theorem fam_064_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_067_positionPredicate r mask)
    (hrows : EqEqPosVarFirstRows fam_064_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_064_producerFactsGoodKilled
    (fam_064_sourceApplies_of_position hsource)
    (fam_064_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `1720c5c6897de884a3f69d37a00482f5017602df26b88e99a3a0e35b3b08aa9f`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_065_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_064_positionPredicate r mask) :
    source_064_producer.Applies fam_065_key r mask := by
  unfold source_064_producer
  simp [fam_065_key, hsource]

theorem fam_065_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_065_key.support r mask) :
    row_002_producer.Applies fam_065_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_065_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_064_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_065_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_065_producerFactsGoodKilled
    (fam_065_sourceApplies_of_position hsource)
    (fam_065_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `29c667e5aa818ea6f1b958dd1d1050e310d4a3d40eb8ec4a842957f47cc4fc73`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_066_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_070_positionPredicate r mask) :
    source_070_producer.Applies fam_066_key r mask := by
  unfold source_070_producer
  simp [fam_066_key, hsource]

theorem fam_066_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_066_key.support r mask) :
    row_002_producer.Applies fam_066_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_066_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_070_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_066_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_066_producerFactsGoodKilled
    (fam_066_sourceApplies_of_position hsource)
    (fam_066_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `323821661c9a96d8517395d7e2ed673c7ac9f6e241d41aa3d6f0c54b617725bc`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_067_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_069_positionPredicate r mask) :
    source_069_producer.Applies fam_067_key r mask := by
  unfold source_069_producer
  simp [fam_067_key, hsource]

theorem fam_067_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_067_key.support r mask) :
    row_002_producer.Applies fam_067_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_067_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_069_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_067_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_067_producerFactsGoodKilled
    (fam_067_sourceApplies_of_position hsource)
    (fam_067_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `4295d2e8233f5dbac79b0d712f2b60b2c1f9bbb4a65b79e19eb3b7beac461229`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_068_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_063_positionPredicate r mask) :
    source_063_producer.Applies fam_068_key r mask := by
  unfold source_063_producer
  simp [fam_068_key, hsource]

theorem fam_068_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_068_key.support r mask) :
    row_002_producer.Applies fam_068_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_068_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_063_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_068_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_068_producerFactsGoodKilled
    (fam_068_sourceApplies_of_position hsource)
    (fam_068_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `7659a13ad32f460ad82d3854a24dec02c246f9199e2b5034f1f0eccddebb8b43`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_069_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_060_positionPredicate r mask) :
    source_060_producer.Applies fam_069_key r mask := by
  unfold source_060_producer
  simp [fam_069_key, hsource]

theorem fam_069_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_069_key.support r mask) :
    row_002_producer.Applies fam_069_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_069_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_060_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_069_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_069_producerFactsGoodKilled
    (fam_069_sourceApplies_of_position hsource)
    (fam_069_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `c05b3d59255e1cb9689a33957c160b34cf7f5fb51fa9849d03bfcac29208d36a`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_070_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_065_positionPredicate r mask) :
    source_065_producer.Applies fam_070_key r mask := by
  unfold source_065_producer
  simp [fam_070_key, hsource]

theorem fam_070_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_070_key.support r mask) :
    row_002_producer.Applies fam_070_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_070_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_065_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_070_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_070_producerFactsGoodKilled
    (fam_070_sourceApplies_of_position hsource)
    (fam_070_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `fe6dcb0e1d5af6cc7f6e5b61abf78e5a6c655ce793a9a24af1459862db39f388`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_071_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_071_positionPredicate r mask) :
    source_071_producer.Applies fam_071_key r mask := by
  unfold source_071_producer
  simp [fam_071_key, hsource]

theorem fam_071_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppOneMinusVarFirstRows fam_071_key.support r mask) :
    row_002_producer.Applies fam_071_key r mask := by
  unfold row_002_producer
  exact ⟨rfl, hrows⟩

theorem fam_071_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_071_positionPredicate r mask)
    (hrows : OppOneMinusVarFirstRows fam_071_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_071_producerFactsGoodKilled
    (fam_071_sourceApplies_of_position hsource)
    (fam_071_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `3c44231cc1af8934c73ab9eb42337f5296972af30c98905c6664e173469df457`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_072_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_066_positionPredicate r mask) :
    source_066_producer.Applies fam_072_key r mask := by
  unfold source_066_producer
  simp [fam_072_key, hsource]

theorem fam_072_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_072_key.support r mask) :
    row_003_producer.Applies fam_072_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_072_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_066_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_072_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_072_producerFactsGoodKilled
    (fam_072_sourceApplies_of_position hsource)
    (fam_072_rowApplies_of_rows hrows)

/-- Producer applicability for bounded family `a8779ef21d07f80a863f92a4d0b3a9e5785baca760e90b9f12ba91df5af57a50`.
Observed bounded GoodDirection cases: 1. -/
theorem fam_073_sourceApplies_of_position
    {r : Nat} {mask : SignMask}
    (hsource : source_062_positionPredicate r mask) :
    source_062_producer.Applies fam_073_key r mask := by
  unfold source_062_producer
  simp [fam_073_key, hsource]

theorem fam_073_rowApplies_of_rows
    {r : Nat} {mask : SignMask}
    (hrows : OppMinusOneVarFirstRows fam_073_key.support r mask) :
    row_003_producer.Applies fam_073_key r mask := by
  unfold row_003_producer
  exact ⟨rfl, hrows⟩

theorem fam_073_goodKilled_of_position_rows
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : source_062_positionPredicate r mask)
    (hrows : OppMinusOneVarFirstRows fam_073_key.support r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  fam_073_producerFactsGoodKilled
    (fam_073_sourceApplies_of_position hsource)
    (fam_073_rowApplies_of_rows hrows)

theorem sourcePositionApplicabilitySmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionApplicabilitySmoke
