import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerSmoke

/-!
Small generated-style terminal producer shard.

The previous producer smoke exposes the generic theorem surface.  This module
models the next generated layer: a finite shard of semantic terminal states,
each pointing to an accepted terminal prefix.  It contains no sampled rank list
or sampled path object; state membership is still expressed as a predicate over
`topPairingRankFaceLabels`.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerShardSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalTraceMembershipSmoke

inductive SmokeProducerState where
  | s000
  | s001
  | s002
  deriving DecidableEq, Repr

def SmokeProducerState.acceptedTraceId : SmokeProducerState -> AcceptedTraceId
  | .s000 => AcceptedTraceId.t000
  | .s001 => AcceptedTraceId.t001
  | .s002 => AcceptedTraceId.t002

def SmokeProducerState.Contains
    (state : SmokeProducerState) (rank : Fin numPairWords) : Prop :=
  ClosedRankInAcceptedPrefix13ProducerState
    state.acceptedTraceId rank

def SmokeProducerShardFamily (rank : Fin numPairWords) : Prop :=
  ∃ state : SmokeProducerState,
    state.Contains rank

theorem stateContains_of_prefix13State
    {state : SmokeProducerState} {rank : Fin numPairWords}
    (hprefix :
      ClosedRankInAcceptedPrefix13State
        state.acceptedTraceId rank) :
    state.Contains rank :=
  acceptedPrefix13ProducerState_of_prefix13State hprefix

theorem shardFamily_of_smokeAcceptedBranchState
    {rank : Fin numPairWords}
    (hstate : ClosedRankInSmokeAcceptedBranchState rank) :
    SmokeProducerShardFamily rank := by
  rcases hstate with ⟨id, hid, hprefix⟩
  rcases hid with h000 | h001 | h002
  · subst id
    exact
      ⟨SmokeProducerState.s000,
        stateContains_of_prefix13State hprefix⟩
  · subst id
    exact
      ⟨SmokeProducerState.s001,
        stateContains_of_prefix13State hprefix⟩
  · subst id
    exact
      ⟨SmokeProducerState.s002,
        stateContains_of_prefix13State hprefix⟩

theorem anyAcceptedPrefix13ProducerState_of_shardFamily
    {rank : Fin numPairWords}
    (hshard : SmokeProducerShardFamily rank) :
    ClosedRankInAnyAcceptedPrefix13ProducerState rank := by
  rcases hshard with ⟨state, hcontains⟩
  exact ⟨state.acceptedTraceId, hcontains⟩

theorem terminalDirectClosedFamily_of_shardFamily
    {rank : Fin numPairWords}
    (hshard : SmokeProducerShardFamily rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym) :
    TerminalDirectClosedFamily rank :=
  terminalDirectClosedFamily_of_anyAcceptedPrefix13ProducerState
    (anyAcceptedPrefix13ProducerState_of_shardFamily hshard)
    hactual hbad

theorem nonIdentityRankKilled_of_shardFamily
    {rank : Fin numPairWords}
    (hshard : SmokeProducerShardFamily rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_anyAcceptedPrefix13ProducerState
    (anyAcceptedPrefix13ProducerState_of_shardFamily hshard)
    hactual hbad

theorem terminal_producer_shard_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerShardSmoke
