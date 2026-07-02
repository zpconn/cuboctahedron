import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerRootSmoke

/-!
Coverage bridge into the terminal producer root family.

The all-accepted producer root consumes `TerminalProducerRootFamily`.  This
module connects that root to the existing semantic terminal classifiers:
graph-accepted labels, terminal-ok labels plus semantic filters, and terminal
trace labels plus cancellation.  It does not prove full residual coverage; it
pinpoints the remaining generated obligation as terminal-classifier membership
for closed top-pairing ranks.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerCoverageBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerRootSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerAllAcceptedShardSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalTraceMembershipSmoke

theorem anyAcceptedPrefix13State_of_graphAcceptedTraceLabels
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hgraph :
      GraphAcceptedTraceLabels (topPairingRankFaceLabels rank)) :
    ClosedRankInAnyAcceptedPrefix13State rank := by
  rcases acceptedTraceId_of_graphAcceptedTraceLabels hgraph with
    ⟨id, hlabels⟩
  refine ⟨id, hclosed, [Face.xp], ?_⟩
  calc
    topPairingRankFaceLabels rank = acceptedTraceOfId id := hlabels
    _ = AcceptedPrefix13 id ++ [Face.xp] := by
      symm
      exact acceptedPrefix13_append_xp id

theorem rootFamily_of_graphAcceptedTraceLabels
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hgraph :
      GraphAcceptedTraceLabels (topPairingRankFaceLabels rank)) :
    TerminalProducerRootFamily rank :=
  allAcceptedShardFamily_of_anyAcceptedPrefix13State
    (anyAcceptedPrefix13State_of_graphAcceptedTraceLabels
      hclosed hgraph)

theorem graphAcceptedTraceLabels_of_terminalOkSemanticComponents
    {rank : Fin numPairWords}
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad : AcceptedSequenceBadFaceAtRank rank Face.ym)
    (htermOk :
      TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (topPairingRankFaceLabels rank)) :
    GraphAcceptedTraceLabels (topPairingRankFaceLabels rank) :=
  TopPairingTraceClassifier.Accepted.graphAcceptedTraceLabels_of_terminalOk_filters
    htermOk hactual hbad

theorem rootFamily_of_terminalOkSemanticComponents
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad : AcceptedSequenceBadFaceAtRank rank Face.ym)
    (htermOk :
      TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (topPairingRankFaceLabels rank)) :
    TerminalProducerRootFamily rank :=
  rootFamily_of_graphAcceptedTraceLabels hclosed
    (graphAcceptedTraceLabels_of_terminalOkSemanticComponents
      hactual hbad htermOk)

theorem rootFamily_of_terminalTraceSemanticComponents
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad : AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (topPairingRankFaceLabels rank)) :
    TerminalProducerRootFamily rank := by
  have hcancel :=
    TopPairingClosedLanguageAtRank.cancellationLabels hclosed
  have htermOk :
      TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (topPairingRankFaceLabels rank) :=
    TopPairingTraceClassifier.TerminalOk.terminalOk_of_terminalTrace_and_cancellation
      hcancel hterm
  exact
    rootFamily_of_terminalOkSemanticComponents
      hclosed hactual hbad htermOk

theorem nonIdentityRankKilled_of_terminalTraceSemanticComponents
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad : AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (topPairingRankFaceLabels rank)) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_rootFamily
    (rootFamily_of_terminalTraceSemanticComponents
      hclosed hactual hbad hterm)
    hactual hbad

theorem terminal_producer_coverage_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerCoverageBridge
