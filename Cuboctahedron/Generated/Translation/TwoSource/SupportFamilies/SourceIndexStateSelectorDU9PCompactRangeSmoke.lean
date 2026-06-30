import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactAllGood

/-!
DU.9P compact membership range smoke.

The DU.9P compact membership bridge proves the GoodDirection survivor route for
ranks `0`, `2`, and `3`.  Rank `1` in the bounded `[0,4)` fixture is not
identity-linear, so its translation branch is vacuous.  This file packages
those facts as a small `AllTranslationGoodCoverageOnRange 0 4` theorem, using
the already-checked compact all-Good bounded root as the proof source.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactRangeSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

theorem compactMembershipBridgeCoverage0_4 :
    AllTranslationGoodCoverageOnRange 0 4 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactAllGood.allGoodCoverage0_4

theorem compactMembershipRangeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactRangeSmoke
