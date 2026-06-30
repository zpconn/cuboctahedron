import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank899PositivePrecomputedSignatureSmoke

/-!
Stable wrapper for the rank-899 DU9IQ closed semantic coverage smoke.

The imported precomputed-signature module carries the local source-position
facts for the 16 GoodDirection survivor masks and local
bad-direction witnesses for the remaining masks.  This file exposes only
the small semantic coverage theorem needed by aggregate roots.

Candidate source-position groups: `10`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank899ClosedSemanticSmoke

theorem rank899AllGoodCoverage :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge.AllTranslationGoodCoverageOnRange 899 900 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank899PositivePrecomputedSignatureSmoke.generatedSingletonSignatureClosedSemanticAllGoodCoverage

theorem rank899AllGoodRankKilled :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge.AllTranslationGoodRankKilled 899 := by
  exact rank899AllGoodCoverage 899 (Nat.le_refl 899) (by decide)

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank899ClosedSemanticSmoke
