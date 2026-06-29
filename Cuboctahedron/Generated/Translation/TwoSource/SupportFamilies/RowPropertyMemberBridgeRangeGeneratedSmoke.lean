import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRangeGeneratedSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRangeGeneratedSmoke
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeRangeGeneratedSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge

theorem allGoodCoverage0_1 :
    AllTranslationGoodCoverageOnRange 0 1 :=
  RowPropertyMemberSemanticCoverageOnIdentityRange.to_allGoodCoverage
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRangeGeneratedSmoke.membershipCoverage0_1
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRangeGeneratedSmoke.semanticCoverage0_1

theorem allGoodCoverage2_4 :
    AllTranslationGoodCoverageOnRange 2 4 :=
  RowPropertyMemberSemanticCoverageOnIdentityRange.to_allGoodCoverage
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRangeGeneratedSmoke.membershipCoverage2_4
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRangeGeneratedSmoke.semanticCoverage2_4

theorem rank1_allGoodKilled :
    AllTranslationGoodRankKilled 1 := by
  intro hlt mask _hM
  exact
    Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002.rowRelationClassifierGoodCoverage
      1 (Nat.le_refl 1) (by decide) hlt mask

theorem allGoodCoverage0_4 :
    AllTranslationGoodCoverageOnRange 0 4 :=
  CoversInterval.concat
    allGoodCoverage0_1
    (CoversInterval.concat
      (CoversInterval.single rank1_allGoodKilled)
      allGoodCoverage2_4)

theorem rangeGeneratedSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeRangeGeneratedSmoke
