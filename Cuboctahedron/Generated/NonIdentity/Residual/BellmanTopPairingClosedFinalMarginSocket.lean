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
