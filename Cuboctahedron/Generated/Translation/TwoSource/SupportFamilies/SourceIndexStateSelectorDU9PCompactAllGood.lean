import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002

/-!
Bounded DU.9P all-Good coverage root for `[0,4)`.

This root composes the compact membership bridge for ranks `0`, `2`, and `3`
with a direct non-identity contradiction for rank `1`.  It is a bounded smoke
root only; production coverage must still replace the finite rank split with a
global state/signature language.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactAllGood

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

theorem rank0_allGoodKilled :
    AllTranslationGoodRankKilled 0 := by
  intro hlt mask _hM hgood
  exact (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership.rank0_goodKilled_of_GoodDirection hlt hgood) hgood

theorem rank1_allGoodKilled :
    AllTranslationGoodRankKilled 1 := by
  intro hlt mask _hM
  exact
    Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002.rowRelationClassifierGoodCoverage
      1 (Nat.le_refl 1) (by decide) hlt mask

theorem rank2_allGoodKilled :
    AllTranslationGoodRankKilled 2 := by
  intro hlt mask _hM hgood
  exact (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership.rank2_goodKilled_of_GoodDirection hlt hgood) hgood

theorem rank3_allGoodKilled :
    AllTranslationGoodRankKilled 3 := by
  intro hlt mask _hM hgood
  exact (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership.rank3_goodKilled_of_GoodDirection hlt hgood) hgood

theorem allGoodCoverage0_4 :
    AllTranslationGoodCoverageOnRange 0 4 :=
  CoversInterval.concat
    (CoversInterval.single rank0_allGoodKilled)
    (CoversInterval.concat
      (CoversInterval.single rank1_allGoodKilled)
      (CoversInterval.concat
        (CoversInterval.single rank2_allGoodKilled)
        (CoversInterval.single rank3_allGoodKilled)))

theorem compactAllGoodRoot_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactAllGood
