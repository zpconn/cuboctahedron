import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRangeSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRangeSmoke

/-!
Root smoke for the DU.9AU member/semantic split over `[0,1)`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeRangeSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge

theorem allGoodCoverage0_1 :
    AllTranslationGoodCoverageOnRange 0 1 :=
  RowPropertyMemberSemanticCoverageOnIdentityRange.to_allGoodCoverage
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRangeSmoke.membershipCoverage0_1
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRangeSmoke.semanticCoverage0_1

theorem rangeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeRangeSmoke
