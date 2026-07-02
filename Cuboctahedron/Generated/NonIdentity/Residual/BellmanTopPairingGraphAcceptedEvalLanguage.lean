import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted

/-!
Semantic eval-language adapter for graph-accepted top-pairing traces.

This module keeps the production Bellman socket explicit: once a closed
top-pairing rank has the generated graph-accepted trace plus matching margin
bound, it becomes a `TopPairingBellmanEvalLanguageAtRank`.  The hard generated
task is therefore to prove `GraphAcceptedTraceMargin` semantically, not to
construct sampled rank/path objects.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate

def AcceptedSequenceBadFaceAtRank
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  TopPairingTraceClassifier.Accepted.SequenceBadFaceLabels
    (topPairingRankFaceLabels rank) badFace

theorem graphAcceptedTraceLabels_of_strengthenedTerminalOk
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (topPairingRankFaceLabels rank)) :
    GraphAcceptedTraceLabels (topPairingRankFaceLabels rank) :=
  TopPairingTraceClassifier.Accepted.graphAcceptedTraceLabels_of_terminalOk_filters
    hterm
    hstrengthened.actualFaceOmni
    hstrengthened.sequenceBadFace_ok

theorem evalLanguageAtRank_of_graphAcceptedTraceMargin
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hgraph :
      GraphAcceptedTraceMargin scaledMargin
        ({ rank := rank, closed := hclosed } : TopPairingBellmanObj Face.ym)) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym where
  closed := hclosed
  eval_accepts := by
    rcases bellmanEvalAccepts_of_graphAcceptedTraceMargin
        ({ rank := rank, closed := hclosed } : TopPairingBellmanObj Face.ym)
        hgraph with
      ⟨result, heval, hfinish, hmargin⟩
    exact ⟨result, by simpa [TopPairingBellmanObj.labels,
      TopPairingBellmanObj.forcedSeq] using heval, hfinish, hmargin⟩

theorem evalLanguageAtRank_of_strengthened_graphAcceptedTraceMargin
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hgraph :
      GraphAcceptedTraceMargin scaledMargin
        ({ rank := rank, closed := hstrengthened.closed } :
          TopPairingBellmanObj Face.ym)) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguageAtRank_of_graphAcceptedTraceMargin
    hstrengthened.closed hgraph

theorem graphAcceptedEvalLanguage_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
