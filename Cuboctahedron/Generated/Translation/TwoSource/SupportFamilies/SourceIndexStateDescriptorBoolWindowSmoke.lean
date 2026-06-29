import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyWindow000000000_000000003Smoke

/-!
DU.9DQ Boolean descriptor window smoke.

This file checks that the descriptor Boolean coverage surface added in DU.9DO
and the GoodDirection Boolean equivalence added in DU.9DP compose on the tiny
accepted `[0,3)` survivor window.  It does not import the compact selector or
rank-local denominator membership roots.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorBoolWindowSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyWindow000000000_000000003Smoke

theorem windowDescriptorBoolCoverage_of_survivor
    (hsurvivor :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
        rank < 3 ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
              WindowSurvivor rank mask) :
    SourceIndexStateDescriptorBoolCoverageOnRange 0 3 :=
  SourceIndexStateDescriptorGoodCoverageOnRange.to_boolCoverage
    (windowDescriptorGoodCoverage_of_survivor hsurvivor)

theorem windowSourceRowFactsBridge_of_survivor_via_bool
    (hsurvivor :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
        rank < 3 ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
              WindowSurvivor rank mask) :
    SourceRowFactsGoodBridgeOnRange 0 3 :=
  SourceIndexStateDescriptorBoolCoverageOnRange.to_factsBridge
    (windowDescriptorBoolCoverage_of_survivor hsurvivor)

theorem windowAllGoodCoverage_of_survivor_via_bool
    (hsurvivor :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
        rank < 3 ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
              WindowSurvivor rank mask) :
    AllTranslationGoodCoverageOnRange 0 3 :=
  SourceIndexStateDescriptorBoolCoverageOnRange.to_allGoodCoverage
    (windowDescriptorBoolCoverage_of_survivor hsurvivor)

theorem sourceIndexStateDescriptorBoolWindowSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorBoolWindowSmoke
