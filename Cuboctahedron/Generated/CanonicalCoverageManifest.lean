import Cuboctahedron.Generated.CoverageManifest

/-!
Generated Step 14E.2A canonical coverage manifest.

The manifest is functional: Lean computes the raw-to-canonical mapping
from the started-symmetry canonicalization definitions instead of
storing one row per raw case.
-/

namespace Cuboctahedron.Generated

def canonicalCoverageManifest : Cuboctahedron.CanonicalCoverageManifest where
  rankCoverage := Cuboctahedron.Generated.CoverageManifest.generatedCoverageManifest
  pairWordCount := 97297200
  identityLinearWordCount := 2468088
  translationChoiceCount := 157957632
  canonicalPairWordClassCount := 12162150
  canonicalTranslationChoiceClassCount := 19744704
  maxPairWordOrbit := 8
  maxTranslationChoiceOrbit := 8
  proofReducingTransformCount := 8
  reversalProofTransportEnabled := false

theorem canonicalCoverageManifest_sound :
    Cuboctahedron.CanonicalCoverageManifestSound
      canonicalCoverageManifest where
  rankCoverageChecked :=
    Cuboctahedron.Generated.CoverageManifest.generatedCoverageManifest_check
  pairWordCount_eq := rfl
  identityLinearWordCount_eq := rfl
  translationChoiceCount_eq := rfl
  canonicalPairWordClassCount_eq := rfl
  canonicalTranslationChoiceClassCount_eq := rfl
  maxPairWordOrbit_eq := rfl
  maxTranslationChoiceOrbit_eq := rfl
  proofReducingTransformCount_eq := rfl
  reversalPolicy_eq := rfl

theorem canonicalCoverageManifest_check :
    Cuboctahedron.checkCanonicalCoverageManifest
      canonicalCoverageManifest = true := by
  classical
  unfold Cuboctahedron.checkCanonicalCoverageManifest
  exact decide_eq_true canonicalCoverageManifest_sound

#check Cuboctahedron.checkCanonicalCoverageManifest_sound
#check canonicalCoverageManifest
#check canonicalCoverageManifest_sound

end Cuboctahedron.Generated
