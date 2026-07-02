import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.TerminalOk
import Cuboctahedron.Search.TopPairingBellmanSemanticGate

/-!
Semantic terminal-to-accepted bridge for top-pairing Bellman traces.

This module is the next Bellman membership gate.  It proves that a strengthened
closed top-pairing rank whose rank labels are classified by the terminal trace
classifier lands on the accepted-trace surface consumed by the graph-eval
Bellman socket.

The bridge is deliberately semantic: the object is still just the rank together
with its closed-language proof.  No sampled rank/path index is introduced here.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

theorem terminalOkTraceLabels_of_strengthenedTerminalTrace
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (topPairingRankFaceLabels rank)) :
    TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
      (topPairingRankFaceLabels rank) := by
  have hc :
      triangularCancellationSummaryOfFaceLabels (topPairingRankFaceLabels rank) =
        topPairingTargetSummary := by
    simpa [topPairingRankFaceLabels] using
      TopPairingClosedLanguageAtRank.cancellationLabels hstrengthened.closed
  exact
    TopPairingTraceClassifier.TerminalOk.terminalOk_of_terminalTrace_and_cancellation
      hc hterm

theorem graphAcceptedTraceLabels_of_strengthenedTerminalTrace
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (topPairingRankFaceLabels rank)) :
    GraphAcceptedTraceLabels (topPairingRankFaceLabels rank) :=
  graphAcceptedTraceLabels_of_strengthenedTerminalOk
    hstrengthened
    (terminalOkTraceLabels_of_strengthenedTerminalTrace hstrengthened hterm)

def TerminalAcceptedEvalSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  AcceptedSequenceBadFaceAtRank rank badFace /\
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) /\
      ∃ closed : TopPairingClosedLanguageAtRank rank Face.ym,
        GraphAcceptedTraceMargin scaledMargin
          ({ rank := rank, closed := closed } : TopPairingBellmanObj Face.ym)

theorem terminalAcceptedEvalSequenceBadFace_of_graphAcceptedTraceMargin
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hbad : AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (topPairingRankFaceLabels rank))
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hgraph :
      GraphAcceptedTraceMargin scaledMargin
        ({ rank := rank, closed := hclosed } : TopPairingBellmanObj Face.ym)) :
    TerminalAcceptedEvalSequenceBadFace scaledMargin rank Face.ym :=
  ⟨hbad, hterm, hclosed, hgraph⟩

theorem graphAcceptedTraceLabels_of_strengthenedTerminalAcceptedEval
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        (TerminalAcceptedEvalSequenceBadFace scaledMargin) rank Face.ym) :
    GraphAcceptedTraceLabels (topPairingRankFaceLabels rank) := by
  rcases hstrengthened.sequenceBadFace_ok with ⟨hbad, hterm, _hgraph⟩
  have hacceptedStrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym :=
    TopPairingStrengthenedClosedLanguageAtRank.ofComponents
      hstrengthened.closed hstrengthened.actualFaceOmni hbad
  exact
    graphAcceptedTraceLabels_of_strengthenedTerminalTrace
      hacceptedStrengthened hterm

theorem evalLanguage_of_strengthenedTerminalAcceptedEval
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        (TerminalAcceptedEvalSequenceBadFace scaledMargin) rank Face.ym) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym := by
  rcases hstrengthened.sequenceBadFace_ok with ⟨hbad, hterm, closed, hgraph⟩
  have hacceptedStrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym :=
    TopPairingStrengthenedClosedLanguageAtRank.ofComponents
      hstrengthened.closed hstrengthened.actualFaceOmni hbad
  have _haccepted :
      GraphAcceptedTraceLabels (topPairingRankFaceLabels rank) :=
    graphAcceptedTraceLabels_of_strengthenedTerminalTrace
      hacceptedStrengthened hterm
  exact evalLanguageAtRank_of_graphAcceptedTraceMargin closed hgraph

theorem strengthenedTerminalAcceptedEval_semanticGate
    {scaledMargin : Fin numPairWords -> Int} :
    TopPairingStrengthenedToEvalGate
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin
      (TerminalAcceptedEvalSequenceBadFace scaledMargin)
      Face.ym := by
  intro rank hstrengthened
  exact evalLanguage_of_strengthenedTerminalAcceptedEval hstrengthened

theorem terminalAcceptedBridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge
