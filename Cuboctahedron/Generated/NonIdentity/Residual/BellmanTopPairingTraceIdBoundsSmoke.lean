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

theorem traceId_components_scaledMargin_nonpos_smoke
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {traceId : AcceptedTraceId}
    (closed : TopPairingClosedLanguageAtRank rank Face.ym)
    (actualFaceOmni : TopPairingActualFaceOmniAtRank rank)
    (htrace : topPairingRankFaceLabels rank = acceptedTraceOfId traceId)
    (hmargin : scaledMargin rank <= (176 : Int) + acceptedTraceGain traceId) :
    scaledMargin rank <= 0 :=
  traceId_scaledMargin_nonpos_of_components
    closed actualFaceOmni htrace hmargin

theorem traceId_components_evalLanguage_smoke
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {traceId : AcceptedTraceId}
    (closed : TopPairingClosedLanguageAtRank rank Face.ym)
    (actualFaceOmni : TopPairingActualFaceOmniAtRank rank)
    (htrace : topPairingRankFaceLabels rank = acceptedTraceOfId traceId)
    (hmargin : scaledMargin rank <= (176 : Int) + acceptedTraceGain traceId) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceId_components
    closed actualFaceOmni htrace hmargin

theorem traceId_family_scaledMargin_nonpos_smoke
    {containsRank : Fin numPairWords -> Prop}
    {traceIdOf : Fin numPairWords -> AcceptedTraceId}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      TraceIdComponentFamily containsRank traceIdOf scaledMargin)
    {rank : Fin numPairWords}
    (hrank : containsRank rank) :
    scaledMargin rank <= 0 :=
  traceIdComponentFamily_scaledMargin_nonpos family hrank

theorem traceId_family_evalLanguage_smoke
    {containsRank : Fin numPairWords -> Prop}
    {traceIdOf : Fin numPairWords -> AcceptedTraceId}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      TraceIdComponentFamily containsRank traceIdOf scaledMargin)
    {rank : Fin numPairWords}
    (hrank : containsRank rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceIdComponentFamily family hrank

theorem traceId_closedMarginFamily_scaledMargin_nonpos_smoke
    {traceIdOf : Fin numPairWords -> AcceptedTraceId}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : TraceIdClosedMarginFamily traceIdOf scaledMargin rank) :
    scaledMargin rank <= 0 :=
  traceIdClosedMarginFamily_scaledMargin_nonpos hrank

theorem traceId_closedMarginFamily_evalLanguage_smoke
    {traceIdOf : Fin numPairWords -> AcceptedTraceId}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : TraceIdClosedMarginFamily traceIdOf scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceIdClosedMarginFamily hrank

theorem traceId_existsClosedMarginFamily_scaledMargin_nonpos_smoke
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : TraceIdExistsClosedMarginFamily scaledMargin rank) :
    scaledMargin rank <= 0 :=
  traceIdExistsClosedMarginFamily_scaledMargin_nonpos hrank

theorem traceId_existsClosedMarginFamily_evalLanguage_smoke
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : TraceIdExistsClosedMarginFamily scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceIdExistsClosedMarginFamily hrank

theorem graphAcceptedTraceMarginClosedFamily_scaledMargin_nonpos_smoke
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : GraphAcceptedTraceMarginClosedFamily scaledMargin rank) :
    scaledMargin rank <= 0 :=
  graphAcceptedTraceMarginClosedFamily_scaledMargin_nonpos hrank

theorem graphAcceptedTraceMarginClosedFamily_evalLanguage_smoke
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : GraphAcceptedTraceMarginClosedFamily scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_graphAcceptedTraceMarginClosedFamily hrank

theorem strengthenedTerminalTraceMarginBounds_scaledMargin_nonpos_smoke
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TerminalTraceMarginBoundsSequenceBadFace scaledMargin) rank Face.ym) :
    scaledMargin rank <= 0 :=
  strengthenedTerminalTraceMarginBounds_scaledMargin_nonpos h

theorem strengthenedTerminalTraceMarginBounds_evalLanguage_smoke
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TerminalTraceMarginBoundsSequenceBadFace scaledMargin) rank Face.ym) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_strengthenedTerminalTraceMarginBounds h

theorem terminalTraceMarginBounds_family_scaledMargin_nonpos_smoke
    {containsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      TerminalTraceMarginBoundsComponentFamily containsRank scaledMargin)
    {rank : Fin numPairWords}
    (hrank : containsRank rank) :
    scaledMargin rank <= 0 :=
  terminalTraceMarginBoundsComponentFamily_scaledMargin_nonpos
    family hrank

theorem terminalTraceMarginBounds_family_evalLanguage_smoke
    {containsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      TerminalTraceMarginBoundsComponentFamily containsRank scaledMargin)
    {rank : Fin numPairWords}
    (hrank : containsRank rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_terminalTraceMarginBoundsComponentFamily
    family hrank

theorem terminalTraceMarginIdBound_family_scaledMargin_nonpos_smoke
    {containsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      TerminalTraceMarginIdBoundComponentFamily containsRank scaledMargin)
    {rank : Fin numPairWords}
    (hrank : containsRank rank) :
    scaledMargin rank <= 0 :=
  terminalTraceMarginIdBoundComponentFamily_scaledMargin_nonpos
    family hrank

theorem terminalTraceMarginIdBound_family_evalLanguage_smoke
    {containsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      TerminalTraceMarginIdBoundComponentFamily containsRank scaledMargin)
    {rank : Fin numPairWords}
    (hrank : containsRank rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_terminalTraceMarginIdBoundComponentFamily
    family hrank

theorem trace_id_bounds_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceIdBoundsSmoke
