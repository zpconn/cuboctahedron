import evidence.symmetry_semantic_shards.Shard000000000_000000008.VerifiedRoot

/-!
Generated semantic symmetry group root.

This file stitches checked symmetry shard wrappers with balanced
`CoversInterval.concat` applications. It remains outside the default
Lake package source tree.
-/

namespace Cuboctahedron.Generated.SymmetryEvidence.IntervalGroup.Group000

def nonIdentityClassifier :
    Cuboctahedron.Generated.Coverage.NonIdComputableClassifier where
  badDirectionFamilies := []
  badPairBalanceFamilies := []

def translationClassifier :
    Cuboctahedron.Generated.Coverage.TranslationComputableClassifier where
  badDirectionFamilies := []
  badVectorFamilies := []

def startRank : Nat := 0
def endRank : Nat := 8

theorem shard_000000000_000000008_nonidentity :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 0 8 := by
  simpa [nonIdentityClassifier,
    Cuboctahedron.Generated.SymmetryEvidence.IntervalShard.Shard000000000_000000008.nonIdentityClassifier] using
    Cuboctahedron.Generated.SymmetryEvidence.IntervalShard.Shard000000000_000000008.nonidentity_interval

theorem shard_000000000_000000008_translation :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 0 8 := by
  simpa [translationClassifier,
    Cuboctahedron.Generated.SymmetryEvidence.IntervalShard.Shard000000000_000000008.translationClassifier] using
    Cuboctahedron.Generated.SymmetryEvidence.IntervalShard.Shard000000000_000000008.translation_interval

theorem nonidentity_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 0 8 :=
  shard_000000000_000000008_nonidentity

theorem translation_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 0 8 :=
  shard_000000000_000000008_translation

def coverage :
    Cuboctahedron.Generated.SymmetryEvidence.SemanticBoundedEvidence 0 8 where
  nonidentityClassifier := nonIdentityClassifier
  translationClassifier := translationClassifier
  nonidentity := nonidentity_interval
  translation := translation_interval

end Cuboctahedron.Generated.SymmetryEvidence.IntervalGroup.Group000
