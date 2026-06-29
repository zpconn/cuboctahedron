import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership

/-!
DU.9S range-parametric selector-catalog smoke.

DU.9R exposes the production-shaped range target
`SelectorCoordinateFactsGoodCatalogOnRangeFor`.  This file proves that target
on a real nonempty bounded range, `[0,1)`, by composing:

* the DU.9P compact GoodDirection-to-positive-mask bridge for rank `0`;
* the DU.9L shard-0 selector-coordinate source/row facts.

The point is architectural: generated production chunks should export this
range-parametric catalog shape directly, then erase through DU.9R.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9SRangeSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter

def coordAt0_1 (rank : Nat) (mask : SignMask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinate :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.selectorCoordAt rank mask

theorem selectorCatalog0_1 :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt0_1 0 1 := by
  intro rank mask hlt _hlo hhi _hM hgood
  have hrank : rank = 0 := by omega
  subst rank
  have hcase :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership.rank0_selectorPositive_of_GoodDirection hlt hgood
  cases hcase with
  | shard000 h =>
      exact
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.selectorPositiveSourceRowFacts h
  | shard001 h =>
      cases h
  | shard002 h =>
      cases h

theorem selectorCatalog0_1_sourceIndexFacts :
    SourceRowFactsGoodCatalogOnRange
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.classifierSourceIndexKeyAt
      0 1 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_sourceIndexFactsCatalog
    selectorCatalog0_1

theorem selectorCatalog0_1_allGood :
    AllTranslationGoodCoverageOnRange 0 1 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_allGoodCoverage
    selectorCatalog0_1

theorem rangeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9SRangeSmoke
