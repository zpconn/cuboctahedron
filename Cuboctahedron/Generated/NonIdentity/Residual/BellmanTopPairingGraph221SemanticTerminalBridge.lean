import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221TerminalTailPrefixSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

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
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

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

theorem traceIdExistsClosedMarginFamily_of_graph221_zm_tmpp_semantic
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hmargin :
      forall traceId : AcceptedTraceId,
        topPairingRankFaceLabels rank = acceptedTraceOfId traceId ->
          scaledMargin rank <= (176 : Int) + acceptedTraceGain traceId) :
    TraceIdExistsClosedMarginFamily scaledMargin rank := by
  have hterm :
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (topPairingRankFaceLabels rank) :=
    terminalTraceLabels_of_graph221_zm_tmpp_semantic
      hstrengthened hprefix
  have haccepted :=
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge.graphAcceptedTraceLabels_of_strengthenedTerminalTrace
      hstrengthened hterm
  rcases acceptedTraceId_of_graphAcceptedTraceLabels haccepted with
    ⟨traceId, htrace⟩
  exact ⟨hstrengthened.closed, traceId, htrace, hmargin traceId htrace⟩

theorem evalLanguage_of_graph221_zm_tmpp_semantic_marginBound
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hmargin :
      forall traceId : AcceptedTraceId,
        topPairingRankFaceLabels rank = acceptedTraceOfId traceId ->
          scaledMargin rank <= (176 : Int) + acceptedTraceGain traceId) :
    TopPairingBellmanEvalLanguageAtRank
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base.graphPotential
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base.graphSmokeNext
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base.smokeLabelOfFace
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base.rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceIdExistsClosedMarginFamily
    (traceIdExistsClosedMarginFamily_of_graph221_zm_tmpp_semantic
      hstrengthened hprefix hmargin)

theorem scaledMargin_nonpos_of_graph221_zm_tmpp_semantic_marginBound
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hmargin :
      forall traceId : AcceptedTraceId,
        topPairingRankFaceLabels rank = acceptedTraceOfId traceId ->
          scaledMargin rank <= (176 : Int) + acceptedTraceGain traceId) :
    scaledMargin rank <= 0 :=
  traceIdExistsClosedMarginFamily_scaledMargin_nonpos
    (traceIdExistsClosedMarginFamily_of_graph221_zm_tmpp_semantic
      hstrengthened hprefix hmargin)

theorem scaledMargin_nonpos_of_graph221_semantic_evalLanguage
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (heval :
      TopPairingBellmanEvalLanguageAtRank
        graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
        scaledMargin rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_bellmanEvalAccepts_invariant
    (V := graphPotential)
    (next := graphSmokeNext)
    (InRange := fun s : State => s < stateCount)
    (start := rootState)
    (const := (176 : Int))
    (scaledMargin := scaledMargin)
    (wordOf := fun rank : Fin numPairWords =>
      faceLabelsInContributionOrder smokeLabelOfFace
        (canonicalSeqOfPairWord (unrankPairWord rank)))
    (by
      intro s label t gain hs hnext
      exact
        Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root.transition_ok_of_lt
          (s := s) (label := label) (t := t) (gain := gain) hs hnext)
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedObjectCover.graphRootInRange
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedObjectCover.graphRootBound
    heval.eval_accepts

theorem scaledMargin_nonpos_of_graph221_semantic_graphExact
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hgate :
      TopPairingGraphExactEvalGateAtRank
        graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
        scaledMargin rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_graph221_semantic_evalLanguage
    (evalLanguageAtRank_of_graphExactEvalGate hgate)

theorem graph221_semantic_terminal_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221SemanticTerminalBridge
