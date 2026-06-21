import Cuboctahedron.Generated.SymmetryEvidence.Core

/-!
Generated symmetry evidence NonIdentity chunk 001.

This file is produced by scripts/generate_symmetry_evidence.py in
bounded Phase 7 pilot mode.  It is architectural coverage evidence
only: it does not prove semantic elimination of billiard cases.
-/

namespace Cuboctahedron.Generated.SymmetryEvidence.NonIdentity

theorem chunk001_covers :
    Coverage.CoversInterval
      (Cuboctahedron.Generated.SymmetryEvidence.NonIdentityPilotCovered 4096) 512 1024 := by
  exact Cuboctahedron.Generated.SymmetryEvidence.covers_nonidentity_bounded (by decide)

end Cuboctahedron.Generated.SymmetryEvidence.NonIdentity
