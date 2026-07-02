import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalRoot
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

/-!
Trace-margin families as root trace-margin producers.

The selected-prefix bridge consumes `RootTraceMarginProducer`.  This module
connects the existing terminal trace-id/shared-gain family sockets to that
producer shape.  The key point is that a trace-id bucket supplies a margin
bound for every accepted trace id compatible with the rank labels; any
accepted-prefix producer state containing the same rank has exactly such a
compatible trace id.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginRootProducerBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalRoot
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerAllAcceptedShardSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerRootSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalTraceMembershipSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

theorem terminalProducerRootFamily_of_terminalTraceIdBucketClosedMarginFamily
    {allowedTraceId : AcceptedTraceId -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank :
      TerminalTraceIdBucketClosedMarginFamily
        allowedTraceId scaledMargin rank) :
    TerminalProducerRootFamily rank := by
  rcases hrank with
    ⟨hclosed, hactual, hbad, hterminal, _hmarginForTrace⟩
  have hterminalOk :
      TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (topPairingRankFaceLabels rank) :=
    TopPairingTraceClassifier.TerminalOk.terminalOk_of_terminalTrace_and_cancellation
      (TopPairingClosedLanguageAtRank.cancellationLabels hclosed)
      hterminal
  have hactualLabels :
      TopPairingActualFaceOmniLabels (topPairingRankFaceLabels rank) := by
    simpa [TopPairingActualFaceOmniAtRank] using hactual
  have hbadLabels :
      TopPairingTraceClassifier.Accepted.SequenceBadFaceLabels
        (topPairingRankFaceLabels rank) Face.ym := by
    simpa
      [Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank]
      using hbad
  have hgraph :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate.GraphAcceptedTraceLabels
        (topPairingRankFaceLabels rank) :=
    TopPairingTraceClassifier.Accepted.graphAcceptedTraceLabels_of_terminalOk_filters
      hterminalOk hactualLabels hbadLabels
  rcases acceptedTraceId_of_graphAcceptedTraceLabels hgraph with
    ⟨traceId, htrace⟩
  have hprefix :
      ClosedRankInAcceptedPrefix13State traceId rank := by
    refine ⟨hclosed, [Face.xp], ?_⟩
    calc
      topPairingRankFaceLabels rank = acceptedTraceOfId traceId := htrace
      _ = AcceptedPrefix13 traceId ++ [Face.xp] := by
        exact (acceptedPrefix13_append_xp traceId).symm
  exact
    allAcceptedShardFamily_of_anyAcceptedPrefix13State
      ⟨traceId, hprefix⟩

theorem rootTraceMarginProducer_of_terminalTraceIdBucketClosedMarginFamily
    {allowedTraceId : AcceptedTraceId -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank :
      TerminalTraceIdBucketClosedMarginFamily
        allowedTraceId scaledMargin rank) :
    RootTraceMarginProducer scaledMargin rank := by
  rcases hrank with
    ⟨hclosed, hactual, hbad, hterminal, hmarginForTrace⟩
  refine
    ⟨terminalProducerRootFamily_of_terminalTraceIdBucketClosedMarginFamily
      (allowedTraceId := allowedTraceId)
      ⟨hclosed, hactual, hbad, hterminal, hmarginForTrace⟩,
      ?_⟩
  intro state hcontains
  have hstate :
      ClosedRankInAcceptedPrefix13State state.acceptedTraceId rank :=
    acceptedPrefix13State_of_producerState hcontains
  have htrace :
      topPairingRankFaceLabels rank =
        acceptedTraceOfId state.acceptedTraceId :=
    acceptedTrace_eq_of_acceptedPrefix13State hstate
  exact (hmarginForTrace state.acceptedTraceId htrace).2

theorem rootTraceMarginProducer_of_terminalTraceIdSharedGainBucketClosedMarginFamily
    {allowedTraceId : AcceptedTraceId -> Prop}
    {gain : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank :
      TerminalTraceIdSharedGainBucketClosedMarginFamily
        allowedTraceId gain scaledMargin rank) :
    RootTraceMarginProducer scaledMargin rank :=
  rootTraceMarginProducer_of_terminalTraceIdBucketClosedMarginFamily
    (terminalTraceIdBucketClosedMarginFamily_of_sharedGainBucket hrank)

theorem rootTraceMarginProducer_of_terminalTracePrefixSharedGainClosedMarginFamily
    {allowedTraceId : AcceptedTraceId -> Prop}
    {pfx : List Face}
    {gain : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hprefixGain :
      forall traceId : AcceptedTraceId,
        (acceptedTraceOfId traceId).take pfx.length = pfx ->
          allowedTraceId traceId /\
            acceptedTraceGain traceId = gain)
    (hrank :
      TerminalTracePrefixSharedGainClosedMarginFamily
        pfx gain scaledMargin rank) :
    RootTraceMarginProducer scaledMargin rank :=
  rootTraceMarginProducer_of_terminalTraceIdSharedGainBucketClosedMarginFamily
    (terminalTraceIdSharedGainBucketClosedMarginFamily_of_prefix
      hprefixGain hrank)

theorem trace_margin_root_producer_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginRootProducerBridge
