import evidence.public_interval_shards.Shard000000000_000000008.Translation.Rank000000000.AllMasks
import evidence.public_interval_shards.Shard000000000_000000008.NonIdentity.Rank000000001
import evidence.public_interval_shards.Shard000000000_000000008.Translation.Rank000000002.AllMasks
import evidence.public_interval_shards.Shard000000000_000000008.Translation.Rank000000003.AllMasks
import evidence.public_interval_shards.Shard000000000_000000008.NonIdentity.Rank000000004
import evidence.public_interval_shards.Shard000000000_000000008.Translation.Rank000000005.AllMasks
import evidence.public_interval_shards.Shard000000000_000000008.NonIdentity.Rank000000006
import evidence.public_interval_shards.Shard000000000_000000008.NonIdentity.Rank000000007

/-!
Generated verified root for one bounded public interval shard.

This file is outside the default Lake package source tree. Checking
it proves coverage for exactly the interval named below, provided
the imported external proof modules have been compiled serially.
-/

namespace Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.VerifiedRoot

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

theorem nonidentity_rank_000000000 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 0 1 := by
  simpa [nonIdentityClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000000.nonIdentityClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000000.nonidentity_interval

theorem translation_rank_000000000 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 0 1 := by
  simpa [translationClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000000.translationClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000000.translation_interval

theorem nonidentity_rank_000000001 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 1 2 := by
  simpa [nonIdentityClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000001.nonIdentityClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000001.nonidentity_interval

theorem translation_rank_000000001 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 1 2 := by
  simpa [translationClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000001.nonIdentityClassifierTranslation] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000001.translation_interval

theorem nonidentity_rank_000000002 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 2 3 := by
  simpa [nonIdentityClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000002.nonIdentityClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000002.nonidentity_interval

theorem translation_rank_000000002 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 2 3 := by
  simpa [translationClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000002.translationClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000002.translation_interval

theorem nonidentity_rank_000000003 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 3 4 := by
  simpa [nonIdentityClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000003.nonIdentityClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000003.nonidentity_interval

theorem translation_rank_000000003 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 3 4 := by
  simpa [translationClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000003.translationClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000003.translation_interval

theorem nonidentity_rank_000000004 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 4 5 := by
  simpa [nonIdentityClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000004.nonIdentityClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000004.nonidentity_interval

theorem translation_rank_000000004 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 4 5 := by
  simpa [translationClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000004.nonIdentityClassifierTranslation] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000004.translation_interval

theorem nonidentity_rank_000000005 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 5 6 := by
  simpa [nonIdentityClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000005.nonIdentityClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000005.nonidentity_interval

theorem translation_rank_000000005 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 5 6 := by
  simpa [translationClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000005.translationClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.Translation.Rank000000005.translation_interval

theorem nonidentity_rank_000000006 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 6 7 := by
  simpa [nonIdentityClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000006.nonIdentityClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000006.nonidentity_interval

theorem translation_rank_000000006 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 6 7 := by
  simpa [translationClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000006.nonIdentityClassifierTranslation] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000006.translation_interval

theorem nonidentity_rank_000000007 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 7 8 := by
  simpa [nonIdentityClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000007.nonIdentityClassifier] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000007.nonidentity_interval

theorem translation_rank_000000007 :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 7 8 := by
  simpa [translationClassifier,
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000007.nonIdentityClassifierTranslation] using
    Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000007.translation_interval

theorem nonidentity_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 0 8 :=
  (Cuboctahedron.Generated.Coverage.CoversInterval.concat
    (Cuboctahedron.Generated.Coverage.CoversInterval.concat
      (Cuboctahedron.Generated.Coverage.CoversInterval.concat
        nonidentity_rank_000000000
        nonidentity_rank_000000001
      )
      (Cuboctahedron.Generated.Coverage.CoversInterval.concat
        nonidentity_rank_000000002
        nonidentity_rank_000000003
      )
    )
    (Cuboctahedron.Generated.Coverage.CoversInterval.concat
      (Cuboctahedron.Generated.Coverage.CoversInterval.concat
        nonidentity_rank_000000004
        nonidentity_rank_000000005
      )
      (Cuboctahedron.Generated.Coverage.CoversInterval.concat
        nonidentity_rank_000000006
        nonidentity_rank_000000007
      )
    )
  )

theorem translation_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 0 8 :=
  (Cuboctahedron.Generated.Coverage.CoversInterval.concat
    (Cuboctahedron.Generated.Coverage.CoversInterval.concat
      (Cuboctahedron.Generated.Coverage.CoversInterval.concat
        translation_rank_000000000
        translation_rank_000000001
      )
      (Cuboctahedron.Generated.Coverage.CoversInterval.concat
        translation_rank_000000002
        translation_rank_000000003
      )
    )
    (Cuboctahedron.Generated.Coverage.CoversInterval.concat
      (Cuboctahedron.Generated.Coverage.CoversInterval.concat
        translation_rank_000000004
        translation_rank_000000005
      )
      (Cuboctahedron.Generated.Coverage.CoversInterval.concat
        translation_rank_000000006
        translation_rank_000000007
      )
    )
  )

def coverage :
    Cuboctahedron.Generated.PublicEvidence.VerifiedBoundedRange 0 8 := {
  nonidentityClassifier := nonIdentityClassifier
  translationClassifier := translationClassifier
  nonidentity := nonidentity_interval
  translation := translation_interval
}

end Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.VerifiedRoot
