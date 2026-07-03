import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticClosedGateSocket

/-!
Graph-exact producer socket for the deterministic top-pairing Bellman route.

The intended production route is not a selected-prefix cover and not a sampled
rank table.  A generated family should prove the graph evaluator result
directly from the semantic closed language.  This file specializes the generic
graph-exact semantic gate to the checked split-10M Bellman graph, then exposes
the resulting eval gate and nonpositive-margin theorem.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticClosedGateSocket

/--
Rank-local graph-exact production obligation for the split-10M Bellman graph.

The existential graph finish is harmless: it is a `Prop` witness of one
deterministic evaluator result, not an exported table of ranks, traces, or
prefixes.
-/
abbrev Split10MGraphExactEvalGateAtRank
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  TopPairingGraphExactEvalGateAtRank
    graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
    scaledMargin rank Face.ym

abbrev Split10MClosedToGraphExactEvalGate
    (scaledMargin : Fin numPairWords -> Int) : Prop :=
  TopPairingClosedToGraphExactEvalGate
    graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
    scaledMargin Face.ym

theorem evalLanguageAtRank_of_split10MGraphExactEvalGate
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (gate : Split10MGraphExactEvalGateAtRank scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguageAtRank_of_graphExactEvalGate gate

theorem split10MClosedToEvalGate_of_graphExactEvalGate
    {scaledMargin : Fin numPairWords -> Int}
    (gate : Split10MClosedToGraphExactEvalGate scaledMargin) :
    Split10MClosedToEvalGate scaledMargin :=
  closedToEvalGate_of_graphExactEvalGate gate

theorem scaledMargin_nonpos_of_split10MGraphExactEvalGate
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (gate : Split10MGraphExactEvalGateAtRank scaledMargin rank) :
    scaledMargin rank <= 0 := by
  have hevalLanguage :=
    evalLanguageAtRank_of_split10MGraphExactEvalGate gate
  exact scaledMargin_nonpos_of_bellmanEvalAccepts_invariant
    (V := graphPotential)
    (next := graphSmokeNext)
    (InRange := fun s : State => s < stateCount)
    (start := rootState)
    (const := (176 : Int))
    (scaledMargin := scaledMargin)
    (wordOf := fun rank : Fin numPairWords =>
      faceLabelsInContributionOrder smokeLabelOfFace
        (canonicalSeqOfPairWord (unrankPairWord rank)))
    (hnext := by
      intro s label t gain hs hnext
      exact
        _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root.transition_ok_of_lt
          hs hnext)
    (hstart := graphStartInRange)
    (hroot := graphRootBound)
    (heval := hevalLanguage.eval_accepts)

/--
All-rank graph-exact production obligation.

This is the preferred next emitter target for the top-pairing family: prove the
single deterministic evaluator package from closed holonomy/cancellation
semantics.  The public result is an ordinary closed-to-eval gate, so downstream
coverage never sees sampled paths.
-/
structure Split10MGraphExactEvalAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  family :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        Split10MGraphExactEvalGateAtRank scaledMargin rank

theorem closedToEvalGate_of_split10MGraphExactEvalAllFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Split10MGraphExactEvalAllFamily scaledMargin) :
    Split10MClosedToEvalGate scaledMargin :=
  split10MClosedToEvalGate_of_graphExactEvalGate
    (by
      intro rank hclosed
      exact hfamily.family rank hclosed)

theorem scaledMargin_nonpos_of_split10MGraphExactEvalAllFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Split10MGraphExactEvalAllFamily scaledMargin)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MGraphExactEvalGate
    (hfamily.family rank hclosed)

theorem graphExactProducerSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket
