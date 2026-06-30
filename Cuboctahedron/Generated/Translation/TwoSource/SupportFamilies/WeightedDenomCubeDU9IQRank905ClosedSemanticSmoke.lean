import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank905PositivePrecomputedSignatureSmoke

/-!
Stable wrapper for the rank-905 DU9IQ closed semantic coverage smoke.

The imported precomputed-signature module carries the local source-position
facts for the eight GoodDirection survivor masks and local bad-direction
witnesses for the remaining masks.  This file exposes only the small semantic
coverage theorem needed by aggregate roots.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank905ClosedSemanticSmoke

theorem rank905AllGoodCoverage :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge.AllTranslationGoodCoverageOnRange 905 906 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorPrecomputedSignatureSmoke.generatedSingletonSignatureClosedSemanticAllGoodCoverage

theorem rank905AllGoodRankKilled :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge.AllTranslationGoodRankKilled 905 := by
  exact rank905AllGoodCoverage 905 (Nat.le_refl 905) (by decide)

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank905ClosedSemanticSmoke
