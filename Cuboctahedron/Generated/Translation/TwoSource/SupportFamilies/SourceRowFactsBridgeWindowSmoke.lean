import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage

/-!
Window-level smoke for the accepted DU.9DH bridge surface.

DU.9DG proved descriptor coverage for `[0,3)` from an explicit
`WindowSurvivor` language.  DU.9DH identified the cleaner production target:
generated evidence should prove `SourceRowFactsGoodBridgeOnRange`, i.e. produce
semantic source facts and row facts directly from identity-linear
`GoodDirectionAtRank` cases.

This file contains no generated certificate data.  It just records the small
adapter that turns that accepted source/row-facts bridge into the descriptor and
all-Good coverage surfaces consumed by the translation backend.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowFactsBridgeWindowSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage

theorem windowDescriptorCoverage_of_sourceRowFactsBridge
    (bridge : SourceRowFactsGoodBridgeOnRange 0 3) :
    SourceIndexStateDescriptorGoodCoverageOnRange 0 3 :=
  SourceRowFactsGoodBridgeOnRange.to_descriptorCoverage bridge

theorem windowAllGoodCoverage_of_sourceRowFactsBridge
    (bridge : SourceRowFactsGoodBridgeOnRange 0 3) :
    AllTranslationGoodCoverageOnRange 0 3 :=
  SourceRowFactsGoodBridgeOnRange.to_allGoodCoverage bridge

theorem sourceRowFactsBridgeWindowSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowFactsBridgeWindowSmoke
