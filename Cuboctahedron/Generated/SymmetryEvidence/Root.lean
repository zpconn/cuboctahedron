import Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.All
import Cuboctahedron.Generated.SymmetryEvidence.Semantic
import Cuboctahedron.Generated.SymmetryEvidence.Translation.All
import Cuboctahedron.Generated.SymmetryEvidence.Translation.FarkasShapes

/-!
Generated symmetry evidence bounded root.

This file is produced by scripts/generate_symmetry_evidence.py in
bounded Phase 7 pilot mode.  It is architectural coverage evidence
only: it does not prove semantic elimination of billiard cases.
-/

namespace Cuboctahedron.Generated.SymmetryEvidence

structure BoundedSymmetryEvidence where
  limit : Nat
  nonidentity :
    Coverage.CoversInterval (NonIdentityPilotCovered limit) 0 limit
  translation :
    Coverage.CoversInterval (TranslationPilotCovered limit) 0 limit

abbrev SemanticEvidence := SemanticBoundedEvidence

theorem nonidentity_complete_interval :
    Coverage.CoversInterval (NonIdentityPilotCovered 4096) 0 4096 :=
  NonIdentity.all_covers

theorem translation_complete_interval :
    Coverage.CoversInterval (TranslationPilotCovered 4096) 0 4096 :=
  Translation.all_covers

def boundedRoot : BoundedSymmetryEvidence where
  limit := 4096
  nonidentity := nonidentity_complete_interval
  translation := translation_complete_interval

end Cuboctahedron.Generated.SymmetryEvidence
