import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

/-!
Two-trace bucket smoke for the top-pairing Bellman route.

The trace-id bucket socket is the next scaling step after one accepted trace:
a generated family can cover all ranks whose labels land in any trace id from a
small bucket, provided it proves the matching trace-id margin inequality.  This
module checks that the bucket theorem consumes such a family without sampled
ranks or path objects.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceBucketComponentFamilySmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

def Trace000001Allowed (traceId : AcceptedTraceId) : Prop :=
  traceId = AcceptedTraceId.t000 \/ traceId = AcceptedTraceId.t001

def Trace000001ClosedMarginFamily
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  TraceIdBucketClosedMarginFamily Trace000001Allowed scaledMargin rank

theorem trace000001TerminalTraceMarginIdBoundComponentFamily
    {scaledMargin : Fin numPairWords -> Int} :
    TerminalTraceMarginIdBoundComponentFamily
      (Trace000001ClosedMarginFamily scaledMargin)
      scaledMargin :=
  traceIdBucketTerminalTraceMarginIdBoundComponentFamily

theorem trace000001Family_evalLanguage
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : Trace000001ClosedMarginFamily scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceIdBucketClosedMarginFamily hrank

theorem trace000001Family_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : Trace000001ClosedMarginFamily scaledMargin rank) :
    scaledMargin rank <= 0 :=
  traceIdBucketClosedMarginFamily_scaledMargin_nonpos hrank

theorem trace_bucket_component_family_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceBucketComponentFamilySmoke
