import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerRootSmoke

/-!
Root socket from accepted-prefix producers to Bellman eval coverage.

This module keeps the Bellman object-cover experiment semantic.  The root
producer supplies an accepted-prefix state for a rank; the remaining hard
obligation is a semantic margin producer for that state, not a sampled
rank/path object.  Once both are available, the accepted-prefix eval socket
supplies the deterministic Bellman eval-language theorem and the nonpositive
scaled-margin conclusion.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalRoot

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerAllAcceptedShardSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerRootSmoke

def RootTraceMarginProducer
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  TerminalProducerRootFamily rank /\
    forall state : AllAcceptedProducerState,
      state.Contains rank ->
        scaledMargin rank <= (176 : Int) + acceptedTraceGain state.acceptedTraceId

theorem acceptedPrefix13EvalFamily_of_rootTraceMarginProducer
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hproducer : RootTraceMarginProducer scaledMargin rank) :
    AcceptedPrefix13EvalFamily scaledMargin rank := by
  rcases hproducer with ⟨hroot, hmargin⟩
  have hshard := allAcceptedShardFamily_of_rootFamily hroot
  rcases hshard with ⟨state, hcontains⟩
  exact ⟨state.acceptedTraceId, hcontains, hmargin state hcontains⟩

theorem evalLanguage_of_rootTraceMarginProducer
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hproducer : RootTraceMarginProducer scaledMargin rank)
    (hactual : TopPairingActualFaceOmniAtRank rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_acceptedPrefix13EvalFamily
    (acceptedPrefix13EvalFamily_of_rootTraceMarginProducer hproducer)
    hactual

theorem scaledMargin_nonpos_of_rootTraceMarginProducer
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hproducer : RootTraceMarginProducer scaledMargin rank)
    (hactual : TopPairingActualFaceOmniAtRank rank) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_acceptedPrefix13EvalFamily
    (acceptedPrefix13EvalFamily_of_rootTraceMarginProducer hproducer)
    hactual

theorem accepted_prefix_eval_root_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalRoot
