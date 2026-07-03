import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedSplitSuffixProducerSocket

/-!
Closed final-margin socket for the split-10M top-pairing Bellman route.

The graph-suffix producer socket already lets generated semantic families prove
the deterministic suffix branch without mentioning accepted trace ids.  The
remaining hard obligation is the final-margin producer:

* the closed-language evaluator reaches a terminal graph state;
* that terminal graph state has nonnegative potential;
* the family-specific scaled margin is bounded by the graph gain.

This file factors that obligation into a compact fixed-finish theorem surface.
Generated family modules can target the facts below without emitting sampled
rank/path tables or selected-prefix covers.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedFinalMarginSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEvalSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedSplitSuffixProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke

/--
Fixed-finish final-margin obligation for one rank.

The generated proof should establish `eval_unique` semantically, usually by a
closed-language cursor/state theorem.  Once the terminal graph and gain are
fixed, the public Bellman socket only needs the small integer facts
`final_nonneg` and `margin_bound`.
-/
structure Split10MFixedFinishFinalMarginProducer
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords)
    (finalGraph : State)
    (totalGain : Int) : Prop where
  eval_unique :
    ∀ {finish : FaceEvalState} {gain : Int},
      evalLabelStepFn faceEvalNext
        (TopPairingTransducerEvalState.start rootState)
        (topPairingRankFaceLabels rank) = some (finish, gain) ->
      finish.Tail [] ->
      BranchInv finish ->
      BranchTableSuffixOk rank finish [] ->
        finish.graph = finalGraph ∧ gain = totalGain
  final_nonneg :
    0 <= graphPotential finalGraph
  margin_bound :
    scaledMargin rank <= (176 : Int) + totalGain

/--
Exact-finish final-margin obligation for one rank.

This is the most convenient target for deterministic semantic evaluator
families: prove the closed-language evaluator computes a concrete terminal
state and gain, then prove the terminal potential and margin inequalities.  The
universal final-margin producer follows from determinism of equality with the
same `evalLabelStepFn` result.
-/
structure Split10MExactFinishFinalMarginProducer
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords)
    (finalState : FaceEvalState)
    (totalGain : Int) : Prop where
  eval_eq :
    evalLabelStepFn faceEvalNext
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) = some (finalState, totalGain)
  final_nonneg :
    0 <= graphPotential finalState.graph
  margin_bound :
    scaledMargin rank <= (176 : Int) + totalGain

/--
Graph-exact final-margin obligation for one rank.

This is usually the right generated target: Bellman potentials live on the
graph state, while the closed face-evaluator carries additional transducer
bookkeeping.  The generic bridge below recovers the graph result from any
face-evaluator result.
-/
structure Split10MExactGraphFinishFinalMarginProducer
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords)
    (finalGraph : State)
    (totalGain : Int) : Prop where
  graph_eval_eq :
    evalLabelStepFn graphSmokeNext rootState
      ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
        some (finalGraph, totalGain)
  final_nonneg :
    0 <= graphPotential finalGraph
  margin_bound :
    scaledMargin rank <= (176 : Int) + totalGain

theorem split10MFixedFinishFinalMarginProducer_of_exactFinish
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalState : FaceEvalState}
    {totalGain : Int}
    (hexact :
      Split10MExactFinishFinalMarginProducer
        scaledMargin rank finalState totalGain) :
    Split10MFixedFinishFinalMarginProducer
      scaledMargin rank finalState.graph totalGain where
  eval_unique := by
    intro finish gain heval _htail _hinv _hsuffix
    have hsome : some (finish, gain) = some (finalState, totalGain) := by
      rw [← heval, hexact.eval_eq]
    cases hsome
    exact ⟨rfl, rfl⟩
  final_nonneg := hexact.final_nonneg
  margin_bound := hexact.margin_bound

theorem split10MFixedFinishFinalMarginProducer_of_exactGraphFinish
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalGraph : State}
    {totalGain : Int}
    (hexact :
      Split10MExactGraphFinishFinalMarginProducer
        scaledMargin rank finalGraph totalGain) :
    Split10MFixedFinishFinalMarginProducer
      scaledMargin rank finalGraph totalGain where
  eval_unique := by
    intro finish gain heval _htail _hinv _hsuffix
    have hgraphEval :=
      TopPairingTransducerEvalState.evalLabelStepFn_graph_of_faceEval
        (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
        heval
    have htarget :
        evalLabelStepFn graphSmokeNext
            (TopPairingTransducerEvalState.start rootState).graph
            ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
          some (finalGraph, totalGain) := by
      simpa [TopPairingTransducerEvalState.start] using hexact.graph_eval_eq
    rw [htarget] at hgraphEval
    cases hgraphEval
    exact ⟨rfl, rfl⟩
  final_nonneg := hexact.final_nonneg
  margin_bound := hexact.margin_bound

theorem split10MFinalMarginProducer_of_fixedFinish
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalGraph : State}
    {totalGain : Int}
    (hfixed :
      Split10MFixedFinishFinalMarginProducer
        scaledMargin rank finalGraph totalGain) :
    Split10MFinalMarginProducer scaledMargin rank := by
  intro finish gain heval htail hinv hsuffix
  rcases hfixed.eval_unique heval htail hinv hsuffix with
    ⟨hgraph, hgain⟩
  constructor
  · simpa [hgraph] using hfixed.final_nonneg
  · simpa [hgain] using hfixed.margin_bound

theorem split10MFinalMarginProducer_of_exactFinish
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalState : FaceEvalState}
    {totalGain : Int}
    (hexact :
      Split10MExactFinishFinalMarginProducer
        scaledMargin rank finalState totalGain) :
    Split10MFinalMarginProducer scaledMargin rank :=
  split10MFinalMarginProducer_of_fixedFinish
    (split10MFixedFinishFinalMarginProducer_of_exactFinish hexact)

theorem split10MFinalMarginProducer_of_exactGraphFinish
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalGraph : State}
    {totalGain : Int}
    (hexact :
      Split10MExactGraphFinishFinalMarginProducer
        scaledMargin rank finalGraph totalGain) :
    Split10MFinalMarginProducer scaledMargin rank :=
  split10MFinalMarginProducer_of_fixedFinish
    (split10MFixedFinishFinalMarginProducer_of_exactGraphFinish hexact)

/--
Rank-local closed suffix plus fixed-finish final-margin family.

This is a stricter socket than `ClosedSplit10MSuffixMarginFamily`: the final
margin piece is decomposed into the deterministic evaluator finish and the
integer margin inequality.  It is the intended next production target for the
top-pairing Bellman family.
-/
structure ClosedSplit10MFixedFinishSuffixMarginFamily
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords)
    (finalGraph : State)
    (totalGain : Int) : Prop where
  closed :
    TopPairingClosedLanguageAtRank rank Face.ym
  graphSuffix :
    Split10MGraphSuffixProducer rank
  fixedFinalMargin :
    Split10MFixedFinishFinalMarginProducer
      scaledMargin rank finalGraph totalGain

/--
Rank-local closed suffix plus exact-finish final-margin family.

This wrapper is often the smallest generated theorem surface: the family proves
the evaluator equation and margin inequality directly, then this file converts
it to the universal fixed-finish socket.
-/
structure ClosedSplit10MExactFinishSuffixMarginFamily
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords)
    (finalState : FaceEvalState)
    (totalGain : Int) : Prop where
  closed :
    TopPairingClosedLanguageAtRank rank Face.ym
  graphSuffix :
    Split10MGraphSuffixProducer rank
  exactFinalMargin :
    Split10MExactFinishFinalMarginProducer
      scaledMargin rank finalState totalGain

/--
Rank-local closed suffix plus graph-exact final-margin family.
-/
structure ClosedSplit10MExactGraphFinishSuffixMarginFamily
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords)
    (finalGraph : State)
    (totalGain : Int) : Prop where
  closed :
    TopPairingClosedLanguageAtRank rank Face.ym
  graphSuffix :
    Split10MGraphSuffixProducer rank
  exactGraphFinalMargin :
    Split10MExactGraphFinishFinalMarginProducer
      scaledMargin rank finalGraph totalGain

theorem closedSplit10MSuffixMarginFamily_of_fixedFinish
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalGraph : State}
    {totalGain : Int}
    (hfamily :
      ClosedSplit10MFixedFinishSuffixMarginFamily
        scaledMargin rank finalGraph totalGain) :
    ClosedSplit10MSuffixMarginFamily scaledMargin rank where
  closed := hfamily.closed
  graphSuffix := hfamily.graphSuffix
  finalMargin :=
    split10MFinalMarginProducer_of_fixedFinish
      hfamily.fixedFinalMargin

theorem closedSplit10MFixedFinishSuffixMarginFamily_of_exactFinish
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalState : FaceEvalState}
    {totalGain : Int}
    (hfamily :
      ClosedSplit10MExactFinishSuffixMarginFamily
        scaledMargin rank finalState totalGain) :
    ClosedSplit10MFixedFinishSuffixMarginFamily
      scaledMargin rank finalState.graph totalGain where
  closed := hfamily.closed
  graphSuffix := hfamily.graphSuffix
  fixedFinalMargin :=
    split10MFixedFinishFinalMarginProducer_of_exactFinish
      hfamily.exactFinalMargin

theorem closedSplit10MFixedFinishSuffixMarginFamily_of_exactGraphFinish
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalGraph : State}
    {totalGain : Int}
    (hfamily :
      ClosedSplit10MExactGraphFinishSuffixMarginFamily
        scaledMargin rank finalGraph totalGain) :
    ClosedSplit10MFixedFinishSuffixMarginFamily
      scaledMargin rank finalGraph totalGain where
  closed := hfamily.closed
  graphSuffix := hfamily.graphSuffix
  fixedFinalMargin :=
    split10MFixedFinishFinalMarginProducer_of_exactGraphFinish
      hfamily.exactGraphFinalMargin

theorem closedSplit10MSuffixMarginFamily_of_exactFinish
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalState : FaceEvalState}
    {totalGain : Int}
    (hfamily :
      ClosedSplit10MExactFinishSuffixMarginFamily
        scaledMargin rank finalState totalGain) :
    ClosedSplit10MSuffixMarginFamily scaledMargin rank :=
  closedSplit10MSuffixMarginFamily_of_fixedFinish
    (closedSplit10MFixedFinishSuffixMarginFamily_of_exactFinish hfamily)

theorem closedSplit10MSuffixMarginFamily_of_exactGraphFinish
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalGraph : State}
    {totalGain : Int}
    (hfamily :
      ClosedSplit10MExactGraphFinishSuffixMarginFamily
        scaledMargin rank finalGraph totalGain) :
    ClosedSplit10MSuffixMarginFamily scaledMargin rank :=
  closedSplit10MSuffixMarginFamily_of_fixedFinish
    (closedSplit10MFixedFinishSuffixMarginFamily_of_exactGraphFinish hfamily)

theorem evalLanguageAtRank_of_closedFixedFinishSuffixMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalGraph : State}
    {totalGain : Int}
    (hfamily :
      ClosedSplit10MFixedFinishSuffixMarginFamily
        scaledMargin rank finalGraph totalGain) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguageAtRank_of_closedSplit10MSuffixMarginFamily
    (closedSplit10MSuffixMarginFamily_of_fixedFinish hfamily)

theorem scaledMargin_nonpos_of_closedFixedFinishSuffixMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalGraph : State}
    {totalGain : Int}
    (hfamily :
      ClosedSplit10MFixedFinishSuffixMarginFamily
        scaledMargin rank finalGraph totalGain) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_closedSplit10MSuffixMarginFamily
    (closedSplit10MSuffixMarginFamily_of_fixedFinish hfamily)

theorem evalLanguageAtRank_of_closedExactFinishSuffixMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalState : FaceEvalState}
    {totalGain : Int}
    (hfamily :
      ClosedSplit10MExactFinishSuffixMarginFamily
        scaledMargin rank finalState totalGain) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguageAtRank_of_closedSplit10MSuffixMarginFamily
    (closedSplit10MSuffixMarginFamily_of_exactFinish hfamily)

theorem scaledMargin_nonpos_of_closedExactFinishSuffixMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalState : FaceEvalState}
    {totalGain : Int}
    (hfamily :
      ClosedSplit10MExactFinishSuffixMarginFamily
        scaledMargin rank finalState totalGain) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_closedSplit10MSuffixMarginFamily
    (closedSplit10MSuffixMarginFamily_of_exactFinish hfamily)

theorem evalLanguageAtRank_of_closedExactGraphFinishSuffixMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalGraph : State}
    {totalGain : Int}
    (hfamily :
      ClosedSplit10MExactGraphFinishSuffixMarginFamily
        scaledMargin rank finalGraph totalGain) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguageAtRank_of_closedSplit10MSuffixMarginFamily
    (closedSplit10MSuffixMarginFamily_of_exactGraphFinish hfamily)

theorem scaledMargin_nonpos_of_closedExactGraphFinishSuffixMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finalGraph : State}
    {totalGain : Int}
    (hfamily :
      ClosedSplit10MExactGraphFinishSuffixMarginFamily
        scaledMargin rank finalGraph totalGain) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_closedSplit10MSuffixMarginFamily
    (closedSplit10MSuffixMarginFamily_of_exactGraphFinish hfamily)

/--
All-rank form of the fixed-finish socket.  A production family may choose the
terminal graph/gain per rank while still exposing only closed semantic
membership and fixed-finish facts to the public root.
-/
structure ClosedSplit10MFixedFinishSuffixMarginAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  family :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∃ finalGraph totalGain,
          ClosedSplit10MFixedFinishSuffixMarginFamily
            scaledMargin rank finalGraph totalGain

theorem closedSplit10MSuffixMarginAllFamily_of_fixedFinish
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      ClosedSplit10MFixedFinishSuffixMarginAllFamily scaledMargin) :
    ClosedSplit10MSuffixMarginAllFamily scaledMargin where
  family := by
    intro rank hclosed
    rcases hfamily.family rank hclosed with
      ⟨finalGraph, totalGain, hrank⟩
    exact closedSplit10MSuffixMarginFamily_of_fixedFinish hrank

theorem scaledMargin_nonpos_of_closedFixedFinishSuffixMarginAllFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      ClosedSplit10MFixedFinishSuffixMarginAllFamily scaledMargin)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 := by
  rcases hfamily.family rank hclosed with
    ⟨finalGraph, totalGain, hrank⟩
  exact scaledMargin_nonpos_of_closedFixedFinishSuffixMarginFamily hrank

theorem closedFinalMarginSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedFinalMarginSocket
