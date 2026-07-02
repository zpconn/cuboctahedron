import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate

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

theorem graphAcceptedEvalLanguage_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
