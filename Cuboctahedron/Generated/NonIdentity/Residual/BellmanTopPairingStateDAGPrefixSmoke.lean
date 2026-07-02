import Cuboctahedron.Search.TopPairingTraceTail
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

/-!
State-DAG prefix smoke for the top-pairing Bellman route.

The next scalable Bellman experiment should not use sampled rank/path objects.
This module checks the small theorem-facing socket for a generated state-DAG
terminal: a semantic state-DAG prefix family carries closed-language membership,
the tail-state witness, terminal acceptance filters, and the shared integer
margin bound.  From that semantic family, the existing Bellman eval-language
socket follows.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGPrefixSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

def StateDAGPrefixClosedMarginFamily
    (pfx : List Face)
    (gap : Nat)
    (linear : Mat3 Rat)
    (gain : Int)
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  TopPairingClosedLanguageAtRank rank Face.ym /\
    TopPairingActualFaceOmniAtRank rank /\
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym /\
        TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
          (topPairingRankFaceLabels rank) /\
          (∃ rest : List Face,
            topPairingRankFaceLabels rank = pfx ++ rest /\
              TopPairingTraceTail pfx.length gap linear rest) /\
            scaledMargin rank <= (176 : Int) + gain

theorem terminalPrefixFamily_of_stateDAGPrefixFamily
    {pfx : List Face}
    {gap : Nat}
    {linear : Mat3 Rat}
    {gain : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank :
      StateDAGPrefixClosedMarginFamily
        pfx gap linear gain scaledMargin rank) :
    TerminalTracePrefixSharedGainClosedMarginFamily
      pfx gain scaledMargin rank := by
  rcases hrank with
    ⟨hclosed, hactual, hbad, hterminal, hstate, hmargin⟩
  rcases hstate with ⟨rest, hlabels, _htail⟩
  refine ⟨hclosed, hactual, hbad, hterminal, ?_, hmargin⟩
  rw [hlabels]
  simp

theorem evalLanguage_of_stateDAGPrefixFamily
    {allowedTraceId : AcceptedTraceId -> Prop}
    {pfx : List Face}
    {gap : Nat}
    {linear : Mat3 Rat}
    {gain : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hprefixGain :
      forall traceId : AcceptedTraceId,
        (acceptedTraceOfId traceId).take pfx.length = pfx ->
          allowedTraceId traceId /\
            acceptedTraceGain traceId = gain)
    (hrank :
      StateDAGPrefixClosedMarginFamily
        pfx gap linear gain scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_terminalTracePrefixSharedGainClosedMarginFamily
    (allowedTraceId := allowedTraceId)
    (pfx := pfx)
    (gain := gain)
    hprefixGain
    (terminalPrefixFamily_of_stateDAGPrefixFamily hrank)

theorem stateDAGPrefixFamily_scaledMargin_nonpos
    {allowedTraceId : AcceptedTraceId -> Prop}
    {pfx : List Face}
    {gap : Nat}
    {linear : Mat3 Rat}
    {gain : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hprefixGain :
      forall traceId : AcceptedTraceId,
        (acceptedTraceOfId traceId).take pfx.length = pfx ->
          allowedTraceId traceId /\
            acceptedTraceGain traceId = gain)
    (hrank :
      StateDAGPrefixClosedMarginFamily
        pfx gap linear gain scaledMargin rank) :
    scaledMargin rank <= 0 :=
  terminalTracePrefixSharedGainClosedMarginFamily_scaledMargin_nonpos
    (allowedTraceId := allowedTraceId)
    (pfx := pfx)
    (gain := gain)
    hprefixGain
    (terminalPrefixFamily_of_stateDAGPrefixFamily hrank)

theorem stateDAGPrefixSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGPrefixSmoke
