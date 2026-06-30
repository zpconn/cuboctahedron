import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank955PositivePrecomputedSignatureSmoke

/-!
Stable wrapper for the rank-955 DU9IQ closed semantic coverage smoke.

The imported precomputed-signature module carries the local source-position
facts for the seven GoodDirection survivor masks and local bad-direction
witnesses for the remaining masks.  This file exposes only the small semantic
coverage theorem needed by aggregate roots.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank955ClosedSemanticSmoke

theorem rank955AllGoodCoverage :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge.AllTranslationGoodCoverageOnRange 955 956 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorPrecomputedSignatureSmoke.generatedSingletonSignatureClosedSemanticAllGoodCoverage

theorem rank955AllGoodRankKilled :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge.AllTranslationGoodRankKilled 955 := by
  exact rank955AllGoodCoverage 955 (Nat.le_refl 955) (by decide)

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank955ClosedSemanticSmoke
