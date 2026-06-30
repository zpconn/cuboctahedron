import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank897PositivePrecomputedSignatureSmoke

/-!
Stable wrapper for the rank-897 DU9IQ closed semantic coverage smoke.

The imported precomputed-signature module carries the local source-position
facts for the 13 GoodDirection survivor masks and local
bad-direction witnesses for the remaining masks.  This file exposes only
the small semantic coverage theorem needed by aggregate roots.

Candidate source-position groups: `7`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank897ClosedSemanticSmoke

theorem rank897AllGoodCoverage :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge.AllTranslationGoodCoverageOnRange 897 898 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank897PositivePrecomputedSignatureSmoke.generatedSingletonSignatureClosedSemanticAllGoodCoverage

theorem rank897AllGoodRankKilled :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge.AllTranslationGoodRankKilled 897 := by
  exact rank897AllGoodCoverage 897 (Nat.le_refl 897) (by decide)

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank897ClosedSemanticSmoke
