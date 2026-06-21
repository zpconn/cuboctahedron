import Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.Chunk000
import Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.Chunk001
import Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.Chunk002
import Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.Chunk003
import Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.Chunk004
import Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.Chunk005
import Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.Chunk006
import Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.Chunk007

/-!
Generated symmetry evidence NonIdentity aggregate.

This file is produced by scripts/generate_symmetry_evidence.py in
bounded Phase 7 pilot mode.  It is architectural coverage evidence
only: it does not prove semantic elimination of billiard cases.
-/

namespace Cuboctahedron.Generated.SymmetryEvidence.NonIdentity

theorem all_covers :
    Coverage.CoversInterval
      (Cuboctahedron.Generated.SymmetryEvidence.NonIdentityPilotCovered 4096) 0 4096 :=
  (Coverage.CoversInterval.concat (Coverage.CoversInterval.concat (Coverage.CoversInterval.concat Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.chunk000_covers Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.chunk001_covers) (Coverage.CoversInterval.concat Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.chunk002_covers Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.chunk003_covers)) (Coverage.CoversInterval.concat (Coverage.CoversInterval.concat Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.chunk004_covers Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.chunk005_covers) (Coverage.CoversInterval.concat Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.chunk006_covers Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.chunk007_covers)))

end Cuboctahedron.Generated.SymmetryEvidence.NonIdentity
