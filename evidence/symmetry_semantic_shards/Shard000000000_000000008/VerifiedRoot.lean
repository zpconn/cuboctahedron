import Cuboctahedron.Generated.SymmetryEvidence.Semantic
import evidence.public_interval_shards.Shard000000000_000000008.VerifiedRoot

/-!
Symmetry evidence semantic wrapper for the verified public interval shard.

This file is intentionally outside the default Lake package source tree.  It
imports the proof-carrying public shard root and repackages its checked interval
coverage in the symmetry evidence namespace.
-/

namespace Cuboctahedron.Generated.SymmetryEvidence.IntervalShard.Shard000000000_000000008

def coverage :
    Cuboctahedron.Generated.SymmetryEvidence.SemanticBoundedEvidence 0 8 :=
  Cuboctahedron.Generated.SymmetryEvidence.SemanticBoundedEvidence.fromPublic
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.VerifiedRoot.coverage

theorem nonidentity_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        coverage.nonidentityClassifier) 0 8 :=
  coverage.nonidentity

theorem translation_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        coverage.translationClassifier) 0 8 :=
  coverage.translation

end Cuboctahedron.Generated.SymmetryEvidence.IntervalShard.Shard000000000_000000008
