import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.TerminalOk

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

theorem terminalAcceptedBridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge
