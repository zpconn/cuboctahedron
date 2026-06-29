import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

/-!
DU.9R selector-coordinate range adapter.

`SourceIndexStateSelectorDU9HSmoke` exposes the selector-coordinate proof
surface for the bounded `[0,5000)` classifier smoke.  Production shards need
the same erasure theorem over arbitrary contiguous ranges.  This module keeps
the surface theorem-valued and range-parametric; it emits no concrete
membership evidence.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

/-- Range-parametric selector-coordinate catalog target for generated shards. -/
abbrev SelectorCoordinateFactsGoodCatalogOnRangeFor
    (coordAt : Nat -> SignMask -> SelectorCoordinate)
    (lo hi : Nat) : Prop :=
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank ->
      rank < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            SelectorCoordinateSourceRowFacts (coordAt rank mask) rank mask

/-- Empty range constructor for generated selector-coordinate catalogs. -/
theorem SelectorCoordinateFactsGoodCatalogOnRangeFor.empty
    {coordAt : Nat -> SignMask -> SelectorCoordinate}
    {lo hi : Nat}
    (h : hi <= lo) :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt lo hi := by
  intro rank _mask _hlt hlo hhi _hM _hgood
  omega

/-- Singleton range constructor for generated selector-coordinate catalogs. -/
theorem SelectorCoordinateFactsGoodCatalogOnRangeFor.single
    {coordAt : Nat -> SignMask -> SelectorCoordinate}
    {rank : Nat}
    (h :
      forall {mask : SignMask} (hlt : rank < numPairWords),
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            SelectorCoordinateSourceRowFacts (coordAt rank mask) rank mask) :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt rank (rank + 1) := by
  intro rank' mask hlt hlo hhi hM hgood
  have hrank : rank' = rank := by omega
  subst rank'
  exact h hlt hM hgood

/--
Build a selector-coordinate catalog from a generated key selector.

This is the intended low-data production shape: a leaf may keep its `keyAt`
function private, prove semantic source/row facts for that key under
`GoodDirectionAtRank`, and then export only the range catalog theorem.
-/
theorem SelectorCoordinateFactsGoodCatalogOnRangeFor.of_keyAt_source_row
    {keyAt : Nat -> SignMask -> ClassifierKey}
    {lo hi : Nat}
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        lo <= rank ->
          rank < hi ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                SourceIndexStateSourceFacts
                  (keyAt rank mask).toSourceIndexStateKey rank mask /\
                  SourceIndexStateRowFacts
                    (keyAt rank mask).toSourceIndexStateKey rank mask) :
    SelectorCoordinateFactsGoodCatalogOnRangeFor
      (fun rank mask => selectorCoordinateOfKey (keyAt rank mask)) lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  rcases hcomplete hlt hlo hhi hM hgood with ⟨hsource, hrows⟩
  exact selectorCoordinateSourceRowFacts_of_key hsource hrows

/--
Build a selector-coordinate catalog from an existential generated classifier
key plus a coordinate equality.

This form is useful for shard emitters that discover the key through a local
case split or symbolic classifier, while still exporting only the semantic
selector-coordinate catalog.
-/
theorem SelectorCoordinateFactsGoodCatalogOnRangeFor.of_classifierKey_source_row
    {coordAt : Nat -> SignMask -> SelectorCoordinate}
    {lo hi : Nat}
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        lo <= rank ->
          rank < hi ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                exists key : ClassifierKey,
                  coordAt rank mask = selectorCoordinateOfKey key /\
                  SourceIndexStateSourceFacts
                    key.toSourceIndexStateKey rank mask /\
                  SourceIndexStateRowFacts
                    key.toSourceIndexStateKey rank mask) :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  rcases hcomplete hlt hlo hhi hM hgood with
    ⟨key, hcoord, hsource, hrows⟩
  rw [hcoord]
  exact selectorCoordinateSourceRowFacts_of_key hsource hrows

/-- Erase a range-parametric selector-coordinate catalog to source/row facts. -/
theorem SelectorCoordinateFactsGoodCatalogOnRangeFor.to_sourceIndexFactsCatalog
    {coordAt : Nat -> SignMask -> SelectorCoordinate}
    {lo hi : Nat}
    (catalog : SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt lo hi) :
    SourceRowFactsGoodCatalogOnRange classifierSourceIndexKeyAt lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  have hfacts := catalog hlt hlo hhi hM hgood
  unfold SelectorCoordinateSourceRowFacts at hfacts
  cases hkey : keyOfSelectorCoordinate? (coordAt rank mask) with
  | none =>
      simp [hkey] at hfacts
  | some key =>
      simp [hkey] at hfacts
      rcases hfacts with ⟨hsource, hrows⟩
      have hlookup := classifierSourceIndexKeyAt_toFin key
      exact ⟨key.toFin, by simpa [hlookup] using hsource,
        by simpa [hlookup] using hrows⟩

/-- Erase a range-parametric selector-coordinate catalog to all-Good coverage. -/
theorem SelectorCoordinateFactsGoodCatalogOnRangeFor.to_allGoodCoverage
    {coordAt : Nat -> SignMask -> SelectorCoordinate}
    {lo hi : Nat}
    (catalog : SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceRowFactsGoodCatalogOnRange.to_allGoodCoverage
    (SelectorCoordinateFactsGoodCatalogOnRangeFor.to_sourceIndexFactsCatalog catalog)

/-- Compatibility wrapper for the original fixed DU.9H smoke target. -/
theorem SelectorCoordinateFactsGoodCatalogOnRange.to_rangeFor
    {coordAt : Nat -> SignMask -> SelectorCoordinate}
    (catalog : SelectorCoordinateFactsGoodCatalogOnRange coordAt 0 5000) :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt 0 5000 :=
  catalog

theorem rangeAdapter_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
