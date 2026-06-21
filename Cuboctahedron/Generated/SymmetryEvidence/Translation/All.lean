import Cuboctahedron.Generated.SymmetryEvidence.Translation.Chunk000
import Cuboctahedron.Generated.SymmetryEvidence.Translation.Chunk001
import Cuboctahedron.Generated.SymmetryEvidence.Translation.Chunk002
import Cuboctahedron.Generated.SymmetryEvidence.Translation.Chunk003
import Cuboctahedron.Generated.SymmetryEvidence.Translation.Chunk004
import Cuboctahedron.Generated.SymmetryEvidence.Translation.Chunk005
import Cuboctahedron.Generated.SymmetryEvidence.Translation.Chunk006
import Cuboctahedron.Generated.SymmetryEvidence.Translation.Chunk007

/-!
Generated symmetry evidence Translation aggregate.

This file is produced by scripts/generate_symmetry_evidence.py in
bounded Phase 7 pilot mode.  It is architectural coverage evidence
only: it does not prove semantic elimination of billiard cases.
-/

namespace Cuboctahedron.Generated.SymmetryEvidence.Translation

theorem all_covers :
    Coverage.CoversInterval
      (Cuboctahedron.Generated.SymmetryEvidence.TranslationPilotCovered 4096) 0 4096 :=
  (Coverage.CoversInterval.concat (Coverage.CoversInterval.concat (Coverage.CoversInterval.concat Cuboctahedron.Generated.SymmetryEvidence.Translation.chunk000_covers Cuboctahedron.Generated.SymmetryEvidence.Translation.chunk001_covers) (Coverage.CoversInterval.concat Cuboctahedron.Generated.SymmetryEvidence.Translation.chunk002_covers Cuboctahedron.Generated.SymmetryEvidence.Translation.chunk003_covers)) (Coverage.CoversInterval.concat (Coverage.CoversInterval.concat Cuboctahedron.Generated.SymmetryEvidence.Translation.chunk004_covers Cuboctahedron.Generated.SymmetryEvidence.Translation.chunk005_covers) (Coverage.CoversInterval.concat Cuboctahedron.Generated.SymmetryEvidence.Translation.chunk006_covers Cuboctahedron.Generated.SymmetryEvidence.Translation.chunk007_covers)))

end Cuboctahedron.Generated.SymmetryEvidence.Translation
