import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeRange0Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeRange2Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeRange3Smoke
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002

/-!
Compact-free DU.9 selector aggregate for the bounded `[0,4)` fixture.

Ranks `0`, `2`, and `3` are covered by compact-free selector-coordinate range
catalogs.  Rank `1` is covered by the existing row-relation classifier window.
This root composes those semantic pieces without importing
`SourceIndexStateSelectorDU9PCompactMembership`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeRange0_4Smoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

theorem rank1_allGoodKilled :
    AllTranslationGoodRankKilled 1 := by
  intro hlt mask _hM
  exact
    Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002.rowRelationClassifierGoodCoverage
      1 (Nat.le_refl 1) (by decide) hlt mask

theorem allGoodCoverage0_4 :
    AllTranslationGoodCoverageOnRange 0 4 :=
  CoversInterval.concat
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeRange0Smoke.selectorCatalog0_1_allGood
    (CoversInterval.concat
      (CoversInterval.single rank1_allGoodKilled)
      (CoversInterval.concat
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeRange2Smoke.selectorCatalog2_3_allGood
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeRange3Smoke.selectorCatalog3_4_allGood))

theorem compactFreeRange0_4Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeRange0_4Smoke
