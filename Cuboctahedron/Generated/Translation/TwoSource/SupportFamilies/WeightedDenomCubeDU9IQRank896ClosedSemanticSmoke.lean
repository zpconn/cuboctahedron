import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank896PositivePrecomputedSignatureSmoke

/-!
Stable wrapper for the rank-896 DU9IQ closed semantic coverage smoke.

The imported precomputed-signature module carries the local source-position
facts for the thirteen GoodDirection survivor masks and local bad-direction
witnesses for the remaining masks.  This file exposes only the small semantic
coverage theorem needed by aggregate roots.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank896ClosedSemanticSmoke

theorem rank896AllGoodCoverage :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge.AllTranslationGoodCoverageOnRange 896 897 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank896PositivePrecomputedSignatureSmoke.generatedSingletonSignatureClosedSemanticAllGoodCoverage

theorem rank896AllGoodRankKilled :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge.AllTranslationGoodRankKilled 896 := by
  exact rank896AllGoodCoverage 896 (Nat.le_refl 896) (by decide)

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank896ClosedSemanticSmoke
