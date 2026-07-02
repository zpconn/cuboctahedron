import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationDirectKilledBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge

/-!
Direct killed bridge for strengthened terminal top-pairing traces.

The selected-prefix direct bridge shows that selected prefix buckets can be
killed without Bellman margin bounds.  This module exposes the smaller semantic
consumer underneath it: a strengthened closed rank whose terminal labels are
accepted by the graph classifier is killed directly by the accepted-trace
start-violation providers.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectStartViolationKilledBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationDirectKilledBridge

def TerminalDirectSequenceBadFace
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  AcceptedSequenceBadFaceAtRank rank badFace /\
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank)

theorem nonIdentityRankKilled_of_strengthenedTerminalTrace
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (topPairingRankFaceLabels rank)) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_graphAcceptedTraceLabels
    (graphAcceptedTraceLabels_of_strengthenedTerminalTrace
      hstrengthened hterm)

theorem nonIdentityRankKilled_of_strengthenedTerminalAcceptedLabels
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (haccepted :
      TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (topPairingRankFaceLabels rank)) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_graphAcceptedTraceLabels
    (graphAcceptedTraceLabels_of_strengthenedTerminalOk
      hstrengthened haccepted)

theorem nonIdentityRankKilled_of_terminalSemanticComponents
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad : AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (topPairingRankFaceLabels rank)) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_strengthenedTerminalTrace
    (TopPairingStrengthenedClosedLanguageAtRank.ofComponents
      hclosed hactual hbad)
    hterm

theorem nonIdentityRankKilled_of_strengthenedTerminalDirect
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        TerminalDirectSequenceBadFace rank Face.ym) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  rcases hstrengthened.sequenceBadFace_ok with ⟨hbad, hterm⟩
  exact nonIdentityRankKilled_of_terminalSemanticComponents
    hstrengthened.closed hstrengthened.actualFaceOmni hbad hterm

theorem terminal_direct_start_violation_killed_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectStartViolationKilledBridge
