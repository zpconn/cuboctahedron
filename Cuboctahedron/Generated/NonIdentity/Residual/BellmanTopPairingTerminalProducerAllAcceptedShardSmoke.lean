import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerSmoke

/-!
Generated-style terminal producer shard for all accepted terminal prefixes.

This shard promotes the three-state smoke to the full accepted-prefix state
space.  The finite state is just the existing `AcceptedTraceId` enumeration
of the 37 graph-accepted terminal traces; membership remains semantic over
`topPairingRankFaceLabels`, not a sampled rank/path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerAllAcceptedShardSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalTraceMembershipSmoke

structure AllAcceptedProducerState where
  acceptedTraceId : AcceptedTraceId
  deriving Repr

def AllAcceptedProducerState.Contains
    (state : AllAcceptedProducerState) (rank : Fin numPairWords) : Prop :=
  ClosedRankInAcceptedPrefix13ProducerState
    state.acceptedTraceId rank

def AllAcceptedProducerShardFamily (rank : Fin numPairWords) : Prop :=
  ∃ state : AllAcceptedProducerState,
    state.Contains rank

theorem stateContains_of_prefix13State
    {state : AllAcceptedProducerState} {rank : Fin numPairWords}
    (hprefix :
      ClosedRankInAcceptedPrefix13State
        state.acceptedTraceId rank) :
    state.Contains rank :=
  acceptedPrefix13ProducerState_of_prefix13State hprefix

theorem allAcceptedShardFamily_of_anyAcceptedPrefix13State
    {rank : Fin numPairWords}
    (hstate : ClosedRankInAnyAcceptedPrefix13State rank) :
    AllAcceptedProducerShardFamily rank := by
  rcases hstate with ⟨id, hprefix⟩
  exact
    ⟨{ acceptedTraceId := id },
      stateContains_of_prefix13State hprefix⟩

theorem anyAcceptedPrefix13ProducerState_of_allAcceptedShardFamily
    {rank : Fin numPairWords}
    (hshard : AllAcceptedProducerShardFamily rank) :
    ClosedRankInAnyAcceptedPrefix13ProducerState rank := by
  rcases hshard with ⟨state, hcontains⟩
  exact ⟨state.acceptedTraceId, hcontains⟩

theorem terminalDirectClosedFamily_of_allAcceptedShardFamily
    {rank : Fin numPairWords}
    (hshard : AllAcceptedProducerShardFamily rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym) :
    TerminalDirectClosedFamily rank :=
  terminalDirectClosedFamily_of_anyAcceptedPrefix13ProducerState
    (anyAcceptedPrefix13ProducerState_of_allAcceptedShardFamily hshard)
    hactual hbad

theorem nonIdentityRankKilled_of_allAcceptedShardFamily
    {rank : Fin numPairWords}
    (hshard : AllAcceptedProducerShardFamily rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_anyAcceptedPrefix13ProducerState
    (anyAcceptedPrefix13ProducerState_of_allAcceptedShardFamily hshard)
    hactual hbad

theorem terminal_producer_all_accepted_shard_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerAllAcceptedShardSmoke
