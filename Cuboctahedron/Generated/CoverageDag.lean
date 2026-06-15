import Cuboctahedron.Search.Certificates

/-!
Generated Step 14 coverage data.

This file is intentionally small: it records the root of the complete
pair-word coverage tree and the expected rank/sign-mask extents.  The trusted
checker in `Cuboctahedron.Search.Certificates` validates these fields and then
derives exhaustive coverage for all legal pair-word ranks and all translation
sign masks.
-/

namespace Cuboctahedron.Generated.CoverageDag

def generatedCoverageTree : Cuboctahedron.GeneratedCoverageTree where
  rootCounts := {
    x := 1
    y := 2
    z := 2
    d111 := 2
    d11m := 2
    d1m1 := 2
    dm11 := 2
  }
  startRank := 0
  endRank := 97297200
  pairWordCount := 97297200
  signMaskCount := 64

theorem generatedCoverageTree_check :
    Cuboctahedron.checkGeneratedCoverageTree generatedCoverageTree = true := by
  rfl

theorem generatedCoverageTree_exhaustive :
    Cuboctahedron.ExhaustiveGeneratedCoverage :=
  Cuboctahedron.GeneratedCoverageTree.exhaustive generatedCoverageTree
    generatedCoverageTree_check

end Cuboctahedron.Generated.CoverageDag
