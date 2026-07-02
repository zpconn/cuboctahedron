import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

/-!
Generic accepted-trace-id bucket for the top-pairing Bellman route.

This module validates the compact bucket theorem we want future generated
classifiers to target: once a semantic rank is assigned an accepted trace id,
and its scaled margin satisfies that trace id's Bellman gain bound, the existing
Bellman socket gives the rank-level nonpositive margin.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceIdBoundsSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

theorem traceId_scaledMargin_nonpos_smoke
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {traceId : AcceptedTraceId}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TraceIdMarginSequenceBadFace traceId scaledMargin) rank Face.ym) :
    scaledMargin rank <= 0 :=
  traceId_scaledMargin_nonpos h

theorem traceId_evalLanguage_smoke
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {traceId : AcceptedTraceId}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TraceIdMarginSequenceBadFace traceId scaledMargin) rank Face.ym) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceId h

theorem trace_id_bounds_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceIdBoundsSmoke
