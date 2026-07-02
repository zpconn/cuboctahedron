import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalRoot
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixCoverMembershipBridge

/-!
Root trace-margin bridge to the selected-prefix Bellman cover.

This is the production-shaped semantic membership slice for the top-pairing
Bellman route.  The object is still just a rank together with closed-language
evidence; the root trace-margin producer supplies an accepted-prefix state and
the corresponding integer margin bound.  No sampled rank/path index is
introduced.
-/

set_option linter.unnecessarySimpa false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingRootTraceMarginSelectedPrefixBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalRoot
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixCoverMembershipBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixCoverSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerRootSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalTraceMembershipSmoke

theorem graphAcceptedTraceMargin_exists_of_rootTraceMarginProducer
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hproducer : RootTraceMarginProducer scaledMargin rank) :
    ∃ closed : TopPairingClosedLanguageAtRank rank Face.ym,
      GraphAcceptedTraceMargin scaledMargin
        ({ rank := rank, closed := closed } : TopPairingBellmanObj Face.ym) := by
  rcases acceptedPrefix13EvalFamily_of_rootTraceMarginProducer hproducer with
    ⟨id, hproducerState, hmargin⟩
  have hstate : ClosedRankInAcceptedPrefix13State id rank :=
    acceptedPrefix13State_of_producerState hproducerState
  refine ⟨hstate.1, ?_⟩
  apply graphAcceptedTraceMargin_of_id_bound
  refine ⟨id, ?_, hmargin⟩
  simpa [TopPairingBellmanObj.labels, TopPairingBellmanObj.forcedSeq,
    topPairingRankFaceLabels] using
    acceptedTrace_eq_of_acceptedPrefix13State hstate

theorem terminalAcceptedEvalSequenceBadFace_of_rootTraceMarginProducer
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hproducer : RootTraceMarginProducer scaledMargin rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad : AcceptedSequenceBadFaceAtRank rank Face.ym) :
    TerminalAcceptedEvalSequenceBadFace scaledMargin rank Face.ym := by
  rcases terminalDirectClosedFamily_of_rootFamily hproducer.1 hactual hbad with
    ⟨_hclosedDirect, _hactualDirect, _hbadDirect, hterm⟩
  rcases graphAcceptedTraceMargin_exists_of_rootTraceMarginProducer hproducer with
    ⟨closed, hgraph⟩
  exact
    terminalAcceptedEvalSequenceBadFace_of_graphAcceptedTraceMargin
      hbad hterm closed hgraph

theorem strengthenedTerminalAcceptedEval_of_rootTraceMarginProducer
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hproducer : RootTraceMarginProducer scaledMargin rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad : AcceptedSequenceBadFaceAtRank rank Face.ym) :
    TopPairingStrengthenedClosedLanguageAtRank
      (TerminalAcceptedEvalSequenceBadFace scaledMargin) rank Face.ym := by
  rcases terminalDirectClosedFamily_of_rootFamily hproducer.1 hactual hbad with
    ⟨_hclosedDirect, _hactualDirect, _hbadDirect, hterm⟩
  rcases graphAcceptedTraceMargin_exists_of_rootTraceMarginProducer hproducer with
    ⟨closed, hgraph⟩
  exact
    TopPairingStrengthenedClosedLanguageAtRank.ofComponents
      closed hactual
      (terminalAcceptedEvalSequenceBadFace_of_graphAcceptedTraceMargin
        hbad hterm closed hgraph)

theorem strengthenedSelectedPrefixCover_of_rootTraceMarginProducer
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hproducer : RootTraceMarginProducer scaledMargin rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad : AcceptedSequenceBadFaceAtRank rank Face.ym) :
    TopPairingStrengthenedClosedLanguageAtRank
      (SelectedPrefixCoverSequenceBadFace scaledMargin) rank Face.ym :=
  strengthenedSelectedPrefixCover_of_terminalAcceptedEval
    (strengthenedTerminalAcceptedEval_of_rootTraceMarginProducer
      hproducer hactual hbad)

theorem selectedPrefixCover_evalLanguage_of_rootTraceMarginProducer
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hproducer : RootTraceMarginProducer scaledMargin rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad : AcceptedSequenceBadFaceAtRank rank Face.ym) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_strengthenedSelectedPrefixCover
    (strengthenedSelectedPrefixCover_of_rootTraceMarginProducer
      hproducer hactual hbad)

theorem selectedPrefixCover_scaledMargin_nonpos_of_rootTraceMarginProducer
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hproducer : RootTraceMarginProducer scaledMargin rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad : AcceptedSequenceBadFaceAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  strengthenedSelectedPrefixCover_scaledMargin_nonpos
    (strengthenedSelectedPrefixCover_of_rootTraceMarginProducer
      hproducer hactual hbad)

theorem root_trace_margin_selected_prefix_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingRootTraceMarginSelectedPrefixBridge
