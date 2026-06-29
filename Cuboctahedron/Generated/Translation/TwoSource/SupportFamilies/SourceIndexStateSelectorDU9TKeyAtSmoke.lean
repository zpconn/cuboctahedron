import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership

/-!
DU.9T key/lookup selector-catalog smoke.

DU.9R.2 added constructor theorems for production shards that keep their
selector data private and export only a semantic range catalog.  This module
checks the closest shape to the existing DU.9L micro-shards: a generated
selector coordinate plus an exact `keyOfSelectorCoordinate?` lookup and
source/row facts.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9TKeyAtSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter

def coordAt0_1 (rank : Nat) (mask : SignMask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinate :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.selectorCoordAt
    rank mask

theorem selectorCatalog0_1_lookup :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt0_1 0 1 := by
  apply SelectorCoordinateFactsGoodCatalogOnRangeFor.of_lookup_source_row
  intro rank mask hlt _hlo hhi _hM hgood
  have hrank : rank = 0 := by omega
  subst rank
  have hcase :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership.rank0_selectorPositive_of_GoodDirection
      hlt hgood
  cases hcase with
  | shard000 h =>
      rcases
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.selectorPositiveLookup
          h with
        ⟨key, hlookup⟩
      have hfacts :=
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.selectorPositiveSourceRowFacts
          h
      unfold
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinateSourceRowFacts
        at hfacts
      rw [hlookup] at hfacts
      exact ⟨key, hlookup, hfacts.1, hfacts.2⟩
  | shard001 h =>
      cases h
  | shard002 h =>
      cases h

theorem selectorCatalog0_1_lookup_sourceIndexFacts :
    SourceRowFactsGoodCatalogOnRange
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.classifierSourceIndexKeyAt
      0 1 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_sourceIndexFactsCatalog
    selectorCatalog0_1_lookup

theorem selectorCatalog0_1_lookup_allGood :
    AllTranslationGoodCoverageOnRange 0 1 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_allGoodCoverage
    selectorCatalog0_1_lookup

theorem keyAtSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9TKeyAtSmoke
