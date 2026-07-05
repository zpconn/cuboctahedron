import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221TerminalTailPrefixSmoke

/-!
Semantic terminal bridge for the graph221 `zm,tmpp` layer-4 branch.

The Bellman pivot for this branch is no longer a selected-prefix or sampled
trace theorem.  `BellmanTopPairingGraph221TerminalTailPrefixSmoke` already
proves that strengthened closed-language semantics plus the `zm,tmpp` layer-4
prefix drives the terminal partial machine from its initial semantic state to a
terminal state.  This file exposes the lightweight terminal-trace consequence
without importing the heavier start-violation provider path.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221SemanticTerminalBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221TerminalTailPrefixSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket

theorem terminalTraceLabels_of_graph221_zm_tmpp_semantic
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) :=
  terminalTraceLabels_of_containedEvalPrefixGate
    TerminalStepStatePartialMachine.semantic
    hstrengthened.closed
    (graph221InitialContainedEvalPrefixGate_of_strengthened_prefix_semantic
      hstrengthened hprefix)

theorem graph221_semantic_terminal_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221SemanticTerminalBridge
