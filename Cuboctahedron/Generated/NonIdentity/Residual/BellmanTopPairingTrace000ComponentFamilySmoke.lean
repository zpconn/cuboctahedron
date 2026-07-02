import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

/-!
Concrete trace-000 component family for the top-pairing Bellman route.

This is the first accepted-trace bucket shaped like a production semantic
family.  A rank is in the family when the closed-language predicate holds, its
canonical contribution-order labels are accepted trace 000, and its scaled
margin satisfies the trace-000 Bellman gain bound.  The actual-face omni field
is derived from the trace equality, not supplied by a sampled rank object.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace000ComponentFamilySmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

def Trace000ClosedMarginFamily
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  TopPairingClosedLanguageAtRank rank Face.ym /\
    topPairingRankFaceLabels rank = acceptedTraceOfId AcceptedTraceId.t000 /\
      scaledMargin rank <= (176 : Int) + acceptedTraceGain AcceptedTraceId.t000

theorem trace000_actualFaceOmni_of_trace
    {rank : Fin numPairWords}
    (htrace :
      topPairingRankFaceLabels rank =
        acceptedTraceOfId AcceptedTraceId.t000) :
    TopPairingActualFaceOmniAtRank rank := by
  unfold TopPairingActualFaceOmniAtRank TopPairingActualFaceOmniLabels
  rw [htrace]
  decide

theorem trace000ComponentFamily
    {scaledMargin : Fin numPairWords -> Int} :
    TraceIdComponentFamily
      (Trace000ClosedMarginFamily scaledMargin)
      (fun _rank => AcceptedTraceId.t000)
      scaledMargin where
  closed := by
    intro rank h
    exact h.1
  actualFaceOmni := by
    intro rank h
    exact trace000_actualFaceOmni_of_trace h.2.1
  trace := by
    intro rank h
    exact h.2.1
  margin := by
    intro rank h
    exact h.2.2

theorem trace000Family_evalLanguage
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : Trace000ClosedMarginFamily scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceIdComponentFamily
    trace000ComponentFamily hrank

theorem trace000Family_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : Trace000ClosedMarginFamily scaledMargin rank) :
    scaledMargin rank <= 0 :=
  traceIdComponentFamily_scaledMargin_nonpos
    trace000ComponentFamily hrank

theorem trace000_component_family_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace000ComponentFamilySmoke
