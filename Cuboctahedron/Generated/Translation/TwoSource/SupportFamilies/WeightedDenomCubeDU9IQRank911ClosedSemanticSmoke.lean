import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank911PositivePrecomputedSignatureSmoke

/-!
Stable wrapper for the rank-911 DU9IQ closed semantic coverage smoke.

The imported precomputed-signature module carries the local source-position
facts for the 11 GoodDirection survivor masks and local
bad-direction witnesses for the remaining masks.  This file exposes only
the small semantic coverage theorem needed by aggregate roots.

Candidate source-position groups: `6`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank911ClosedSemanticSmoke

theorem rank911AllGoodCoverage :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge.AllTranslationGoodCoverageOnRange 911 912 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank911PositivePrecomputedSignatureSmoke.generatedSingletonSignatureClosedSemanticAllGoodCoverage

theorem rank911AllGoodRankKilled :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge.AllTranslationGoodRankKilled 911 := by
  exact rank911AllGoodCoverage 911 (Nat.le_refl 911) (by decide)

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank911ClosedSemanticSmoke
