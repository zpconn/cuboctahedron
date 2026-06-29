import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRank6000745Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRank6000745Smoke

/-! Root composition for the DU.9AX split direct-local-key rank smoke. -/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeRank6000745Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge

theorem allGoodCoverage :
    AllTranslationGoodCoverageOnRange 6000745 (6000745 + 1) :=
  RowPropertyMemberSemanticCoverageOnIdentityRange.to_allGoodCoverage
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRank6000745Smoke.membershipCoverage
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRank6000745Smoke.semanticCoverage

theorem splitRankSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeRank6000745Smoke
