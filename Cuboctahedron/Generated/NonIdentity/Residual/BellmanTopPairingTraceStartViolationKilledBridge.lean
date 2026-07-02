import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationProviders

/-!
Semantic killed bridge for accepted trace-id start-violation providers.

The all-trace provider root supplies the positive start-violation certificate
from semantic accepted trace membership:

* a trace id;
* `topPairingRankFaceLabels rank = acceptedTraceOfId traceId`.

The trace-margin socket already supplies the Bellman nonpositive margin theorem
from closed trace-id margin families.  This module packages those two facts into
`Coverage.NonIdentityRankKilled` without sampled rank/path objects and without
an exact affine-RHS membership table.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationKilledBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationProviders

theorem nonIdentityRankKilled_of_traceIdExistsClosedMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : TraceIdExistsClosedMarginFamily scaledMargin rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  apply nonIdentityRankKilled_of_no_axis_constraints
  intro seq hRealize _hStart _hLinear hAxis
  rcases hrank with ⟨closed, traceId, htrace, hmargin⟩
  have hle : scaledMargin rank <= 0 :=
    traceIdExistsClosedMarginFamily_scaledMargin_nonpos
      (scaledMargin := scaledMargin) (rank := rank)
      ⟨closed, traceId, htrace, hmargin⟩
  have hpos : 0 < scaledMargin rank :=
    (objectStartViolationMarginCert_of_acceptedTraceId
      (scaledMargin := scaledMargin) traceId htrace).positive
        hRealize hAxis
  linarith

theorem nonIdentityRankKilled_of_graphAcceptedTraceMarginClosedFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : GraphAcceptedTraceMarginClosedFamily scaledMargin rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_traceIdExistsClosedMarginFamily
    (traceIdExistsClosedMarginFamily_of_graphAcceptedTraceMarginClosedFamily
      hrank)

theorem nonIdentityRankKilled_of_traceIdClosedMarginFamily
    {traceIdOf : Fin numPairWords -> AcceptedTraceId}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : TraceIdClosedMarginFamily traceIdOf scaledMargin rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  rcases hrank with ⟨closed, htrace, hmargin⟩
  exact
    nonIdentityRankKilled_of_traceIdExistsClosedMarginFamily
      (scaledMargin := scaledMargin) (rank := rank)
      ⟨closed, traceIdOf rank, htrace, hmargin⟩

theorem nonIdentityRankKilled_of_traceIdBucketClosedMarginFamily
    {allowedTraceId : AcceptedTraceId -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank :
      TraceIdBucketClosedMarginFamily allowedTraceId scaledMargin rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  rcases hrank with ⟨closed, traceId, _hallowed, htrace, hmargin⟩
  exact
    nonIdentityRankKilled_of_traceIdExistsClosedMarginFamily
      (scaledMargin := scaledMargin) (rank := rank)
      ⟨closed, traceId, htrace, hmargin⟩

theorem nonIdentityRankKilled_of_terminalTraceIdBucketClosedMarginFamily
    {allowedTraceId : AcceptedTraceId -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank :
      TerminalTraceIdBucketClosedMarginFamily
        allowedTraceId scaledMargin rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_traceIdBucketClosedMarginFamily
    (traceIdBucketClosedMarginFamily_of_terminalTraceIdBucketClosedMarginFamily
      hrank)

theorem nonIdentityRankKilled_of_terminalTraceIdSharedGainBucketClosedMarginFamily
    {allowedTraceId : AcceptedTraceId -> Prop}
    {gain : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank :
      TerminalTraceIdSharedGainBucketClosedMarginFamily
        allowedTraceId gain scaledMargin rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_terminalTraceIdBucketClosedMarginFamily
    (terminalTraceIdBucketClosedMarginFamily_of_sharedGainBucket hrank)

theorem nonIdentityRankKilled_of_terminalTracePrefixSharedGainClosedMarginFamily
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
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_terminalTraceIdSharedGainBucketClosedMarginFamily
    (terminalTraceIdSharedGainBucketClosedMarginFamily_of_prefix
      hprefixGain hrank)

theorem trace_start_violation_killed_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationKilledBridge
