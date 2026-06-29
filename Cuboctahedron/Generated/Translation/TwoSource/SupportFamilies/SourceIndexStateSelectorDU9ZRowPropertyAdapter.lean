import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

/-!
DU.9Z selector-to-row-property adapter.

`RowPropertyAllGoodBridge` stays low in the import graph and only mentions
`SourceIndexStateKey`.  This downstream adapter adds the selector-coordinate
lookup variant: if a generated shard proves that its coordinate lookup returns
a classifier key and proves source/row facts for that key, it can export direct
row-property coverage without routing through the source-row catalog surface.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9ZRowPropertyAdapter

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

def sourceKeyOfSelectorCoordinate? (coord : SelectorCoordinate) : SourceIndexStateKey :=
  match keyOfSelectorCoordinate? coord with
  | some key => key.toSourceIndexStateKey
  | none => ClassifierKey.k000.toSourceIndexStateKey

/--
Build direct row-property coverage from a selector coordinate lookup plus
source/row facts for the recovered classifier key.
-/
theorem rowPropertyCoverage_of_selectorLookup_source_row
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
                  keyOfSelectorCoordinate? (coordAt rank mask) = some key /\
                    SourceIndexStateSourceFacts
                      key.toSourceIndexStateKey rank mask /\
                    SourceIndexStateRowFacts
                      key.toSourceIndexStateKey rank mask) :
    RowPropertyParametricCoverageOnIdentityRange lo hi := by
  apply RowPropertyParametricCoverageOnIdentityRange.of_keyAt_source_row
    (keyAt := fun rank mask => sourceKeyOfSelectorCoordinate? (coordAt rank mask))
  intro rank mask hlt hlo hhi hM hgood
  rcases hcomplete hlt hlo hhi hM hgood with
    ⟨key, hlookup, hsource, hrows⟩
  have hkey :
      sourceKeyOfSelectorCoordinate? (coordAt rank mask) =
        key.toSourceIndexStateKey := by
    simp [sourceKeyOfSelectorCoordinate?, hlookup]
  rw [hkey]
  exact ⟨hsource, hrows⟩

/--
Erase selector lookup/source/row facts directly to all-Good coverage through
the row-property path.
-/
theorem allGoodCoverage_of_selectorLookup_source_row
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
                  keyOfSelectorCoordinate? (coordAt rank mask) = some key /\
                    SourceIndexStateSourceFacts
                      key.toSourceIndexStateKey rank mask /\
                    SourceIndexStateRowFacts
                      key.toSourceIndexStateKey rank mask) :
    AllTranslationGoodCoverageOnRange lo hi :=
  RowPropertyParametricCoverageOnIdentityRange.to_allGoodCoverage
    (rowPropertyCoverage_of_selectorLookup_source_row hcomplete)

theorem rowPropertySelectorAdapter_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9ZRowPropertyAdapter
