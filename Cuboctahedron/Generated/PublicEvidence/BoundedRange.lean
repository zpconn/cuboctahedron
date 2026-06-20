import Cuboctahedron.Generated.ExhaustiveCoverage

/-!
Lightweight public marker for the currently emitted bounded
interval evidence root.

The actual proof-carrying root is emitted outside the default
Lake package source tree. This module records the exact range and
provides the small structure that the external root inhabits.
-/

namespace Cuboctahedron.Generated.PublicEvidence

structure VerifiedBoundedRange (lo hi : Nat) where
  nonidentityClassifier : Coverage.NonIdComputableClassifier
  translationClassifier : Coverage.TranslationComputableClassifier
  nonidentity :
    Coverage.CoversInterval
      (NonIdentity.Coverage.ResidualRankCertifiedBy
        nonidentityClassifier) lo hi
  translation :
    Coverage.CoversInterval
      (Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) lo hi

def currentBoundedStartRank : Nat := 0
def currentBoundedEndRank : Nat := 8
def currentBoundedRankCount : Nat := 8
def currentBoundedCompleteForInterval : Bool := true
def currentBoundedVerifiedRootPath : String := "evidence/public_interval_shards/Shard000000000_000000008/VerifiedRoot.lean"

theorem currentBoundedRange_nonnegative :
    currentBoundedStartRank <= currentBoundedEndRank := by
  norm_num [currentBoundedStartRank, currentBoundedEndRank]

end Cuboctahedron.Generated.PublicEvidence
