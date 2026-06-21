import evidence.public_interval_shards.RootFixSmokeNonId.NonIdentity.Rank000000001

/-!
Generated verified root for one bounded public interval shard.

This file is outside the default Lake package source tree. Checking
it proves coverage for exactly the interval named below, provided
the imported external proof modules have been compiled serially.
-/

namespace Cuboctahedron.Generated.PublicEvidence.IntervalShard.RootFixSmokeNonId.VerifiedRoot

def nonIdentityClassifier :
    Cuboctahedron.Generated.Coverage.NonIdComputableClassifier where
  badDirectionFamilies := []
  badPairBalanceFamilies := []

def translationClassifier :
    Cuboctahedron.Generated.Coverage.TranslationComputableClassifier where
  badDirectionFamilies := []
  badVectorFamilies := []

def startRank : Nat := 1
def endRank : Nat := 2

theorem nonidentity_rank_000000001 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 1 2 := by
  simpa [nonIdentityClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.RootFixSmokeNonId.NonIdentity.Rank000000001.nonIdentityClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.RootFixSmokeNonId.NonIdentity.Rank000000001.nonidentity_interval

theorem translation_rank_000000001 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 1 2 := by
  simpa [translationClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.RootFixSmokeNonId.NonIdentity.Rank000000001.nonIdentityClassifierTranslation] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.RootFixSmokeNonId.NonIdentity.Rank000000001.translation_interval

theorem nonidentity_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 1 2 :=
  nonidentity_rank_000000001

theorem translation_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 1 2 :=
  translation_rank_000000001

def coverage :
    Cuboctahedron.Generated.PublicEvidence.VerifiedBoundedRange 1 2 := {
  nonidentityClassifier := nonIdentityClassifier
  translationClassifier := translationClassifier
  nonidentity := nonidentity_interval
  translation := translation_interval
}

end Cuboctahedron.Generated.PublicEvidence.IntervalShard.RootFixSmokeNonId.VerifiedRoot
