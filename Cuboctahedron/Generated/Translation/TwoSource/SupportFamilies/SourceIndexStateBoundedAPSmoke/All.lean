import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard000
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard001
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard002
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard003
import Cuboctahedron.Generated.Translation.Coverage.All
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

/-!
Bounded source-index/state coverage root for Phase 6Z.6K.8AP.4.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.All

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

set_option maxRecDepth 10000

set_option maxHeartbeats 4000000 in
theorem boundedGoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (hlo : 0 <= r) (hhi : r < 16)
    (hM : totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) =
      (matId : Mat3 Rat)) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  interval_cases r
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard000.shardGoodCasesKilled 0 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard000.shardGoodCasesKilled 1 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard000.shardGoodCasesKilled 2 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard000.shardGoodCasesKilled 3 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard001.shardGoodCasesKilled 4 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard001.shardGoodCasesKilled 5 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard001.shardGoodCasesKilled 6 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard001.shardGoodCasesKilled 7 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard002.shardGoodCasesKilled 8 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard002.shardGoodCasesKilled 9 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard002.shardGoodCasesKilled 10 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard002.shardGoodCasesKilled 11 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard003.shardGoodCasesKilled 12 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard003.shardGoodCasesKilled 13 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard003.shardGoodCasesKilled 14 hlt mask (by decide) (by decide) hM
  · exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard003.shardGoodCasesKilled 15 hlt mask (by decide) (by decide) hM

theorem boundedAllGoodCoverage :
    AllTranslationGoodCoverageOnRange 0 16 := by
  intro r hlo hhi hlt mask hM
  exact boundedGoodCasesKilled r hlt mask hlo hhi hM

theorem boundedPublicAllGoodCoverage :
    CoversInterval
      Cuboctahedron.Generated.Translation.Coverage.AllGoodRankKilled
      0 16 := by
  intro r hlo hhi hlt mask hM
  exact boundedGoodCasesKilled r hlt mask hlo hhi hM

theorem boundedCoverage_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.All
