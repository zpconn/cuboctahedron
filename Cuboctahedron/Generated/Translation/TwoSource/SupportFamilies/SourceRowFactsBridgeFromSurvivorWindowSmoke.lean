import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyWindow000000000_000000003Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowFactsBridgeWindowSmoke

/-!
Window-level bridge from the DU.9DG survivor-language smoke to the DU.9DI
source/row-facts target.

This file does not reprove any concrete survivor cases.  It reuses the DU.9DG
descriptor coverage theorem, converts the resulting descriptor witness into a
`SourceRowFactsGoodBridgeOnRange 0 3`, and then erases through the DU.9DI
adapter.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowFactsBridgeFromSurvivorWindowSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyWindow000000000_000000003Smoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowFactsBridgeWindowSmoke

theorem windowSourceRowFactsBridge_of_survivor
    (hsurvivor :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
        rank < 3 ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
              WindowSurvivor rank mask) :
    SourceRowFactsGoodBridgeOnRange 0 3 := by
  intro rank mask hlt hlo hhi hM hgood
  rcases windowDescriptorGoodCoverage_of_survivor hsurvivor
      hlt hlo hhi hM hgood with
    ⟨desc, happ⟩
  refine ⟨descriptorToKey desc, ?_, ?_⟩
  · exact
      SourceIndexStateSourceFacts.of_sourcePredicate
        (key := descriptorToKey desc)
        (firstIndex := desc.firstIndex)
        (secondIndex := desc.secondIndex)
        (support := desc.support)
        rfl rfl rfl
        (sourcePredicate_of_descriptor_applies happ)
  · exact
      SourceIndexStateRowFacts.of_rows
        (key := descriptorToKey desc)
        (by
          simpa [descriptorToKey] using rows_of_descriptor_applies happ)

theorem windowAllGoodCoverage_of_survivor_via_sourceRowFacts
    (hsurvivor :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
        rank < 3 ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
              WindowSurvivor rank mask) :
    AllTranslationGoodCoverageOnRange 0 3 :=
  windowAllGoodCoverage_of_sourceRowFactsBridge
    (windowSourceRowFactsBridge_of_survivor hsurvivor)

theorem sourceRowFactsBridgeFromSurvivorWindowSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowFactsBridgeFromSurvivorWindowSmoke
