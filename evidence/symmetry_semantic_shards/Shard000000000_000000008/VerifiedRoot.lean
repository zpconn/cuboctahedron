import Cuboctahedron.Generated.SymmetryEvidence.Semantic
import evidence.public_interval_shards.Shard000000000_000000008.VerifiedRoot

/-!
Generated semantic symmetry wrapper for one checked public interval shard.

This file is outside the default Lake package source tree. It imports
a public proof-carrying shard root and repackages the checked interval
coverage in the symmetry namespace.
-/

namespace Cuboctahedron.Generated.SymmetryEvidence.IntervalShard.Shard000000000_000000008

def nonIdentityClassifier :
    Cuboctahedron.Generated.Coverage.NonIdComputableClassifier where
  badDirectionFamilies := []
  badPairBalanceFamilies := []

def translationClassifier :
    Cuboctahedron.Generated.Coverage.TranslationComputableClassifier where
  badDirectionFamilies := []
  badVectorFamilies := []

theorem nonidentity_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 0 8 := by
  simpa [nonIdentityClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.VerifiedRoot.nonIdentityClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.VerifiedRoot.nonidentity_interval

theorem translation_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 0 8 := by
  simpa [translationClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.VerifiedRoot.translationClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.VerifiedRoot.translation_interval

def coverage :
    Cuboctahedron.Generated.SymmetryEvidence.SemanticBoundedEvidence 0 8 where
  nonidentityClassifier := nonIdentityClassifier
  translationClassifier := translationClassifier
  nonidentity := nonidentity_interval
  translation := translation_interval

end Cuboctahedron.Generated.SymmetryEvidence.IntervalShard.Shard000000000_000000008
