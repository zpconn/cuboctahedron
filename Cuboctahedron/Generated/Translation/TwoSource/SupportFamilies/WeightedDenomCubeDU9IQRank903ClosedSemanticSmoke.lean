import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank903PositivePrecomputedSignatureSmoke

/-!
Stable wrapper for the rank-903 DU9IQ closed semantic coverage smoke.

The imported precomputed-signature module carries the local source-position
facts for the 7 GoodDirection survivor masks and local
bad-direction witnesses for the remaining masks.  This file exposes only
the small semantic coverage theorem needed by aggregate roots.

Candidate source-position groups: `5`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank903ClosedSemanticSmoke

theorem rank903AllGoodCoverage :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge.AllTranslationGoodCoverageOnRange 903 904 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank903PositivePrecomputedSignatureSmoke.generatedSingletonSignatureClosedSemanticAllGoodCoverage

theorem rank903AllGoodRankKilled :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge.AllTranslationGoodRankKilled 903 := by
  exact rank903AllGoodCoverage 903 (Nat.le_refl 903) (by decide)

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank903ClosedSemanticSmoke
