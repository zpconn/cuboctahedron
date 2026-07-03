import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphExactFinishSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket

/-!
Graph-exact portfolio socket for depth-11 top-pairing classes.

This module is a production-facing wrapper around the existing class-034
through class-039 graph-exact finish smokes.  It keeps the next generated
obligation semantic: for each closed top-pairing rank, classify it into one of
the checked depth-11 suffix classes and provide that class's graph-exact margin
bound.  The wrapper then exposes the common `Split10MGraphExactEvalAllFamily`
surface used by the Bellman coverage layer.

No sampled rank index, selected-prefix cover, accepted-trace table, exact
affine key, or raw graph path table is introduced here.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphExactPortfolioSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphExactFinishSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGDepth11ClosedProvidersSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket

theorem graphExactEvalGateAtRank_of_class034ExactGraphFinishMarginBound
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hclass : Class034GraphSuffixProducer rank)
    (hmargin : Class034ExactGraphFinishMarginBound scaledMargin rank) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank :=
  graphExactEvalGateAtRank_of_evalLanguageAtRank
    (evalLanguageAtRank_of_class034ExactGraphFinishMarginBound
      hclosed hclass hmargin)

theorem graphExactEvalGateAtRank_of_class035ExactGraphFinishMarginBound
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hclass : Class035GraphSuffixProducer rank)
    (hmargin : Class035ExactGraphFinishMarginBound scaledMargin rank) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank :=
  graphExactEvalGateAtRank_of_evalLanguageAtRank
    (evalLanguageAtRank_of_class035ExactGraphFinishMarginBound
      hclosed hclass hmargin)

theorem graphExactEvalGateAtRank_of_class036ExactGraphFinishMarginBound
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hclass : Class036GraphSuffixProducer rank)
    (hmargin : Class036ExactGraphFinishMarginBound scaledMargin rank) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank :=
  graphExactEvalGateAtRank_of_evalLanguageAtRank
    (evalLanguageAtRank_of_class036ExactGraphFinishMarginBound
      hclosed hclass hmargin)

theorem graphExactEvalGateAtRank_of_class037ExactGraphFinishMarginBound
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hclass : Class037GraphSuffixProducer rank)
    (hmargin : Class037ExactGraphFinishMarginBound scaledMargin rank) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank :=
  graphExactEvalGateAtRank_of_evalLanguageAtRank
    (evalLanguageAtRank_of_class037ExactGraphFinishMarginBound
      hclosed hclass hmargin)

theorem graphExactEvalGateAtRank_of_class038ExactGraphFinishMarginBound
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hclass : Class038GraphSuffixProducer rank)
    (hmargin : Class038ExactGraphFinishMarginBound scaledMargin rank) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank :=
  graphExactEvalGateAtRank_of_evalLanguageAtRank
    (evalLanguageAtRank_of_class038ExactGraphFinishMarginBound
      hclosed hclass hmargin)

theorem graphExactEvalGateAtRank_of_class039ExactGraphFinishMarginBound
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hclass : Class039GraphSuffixProducer rank)
    (hmargin : Class039ExactGraphFinishMarginBound scaledMargin rank) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank :=
  graphExactEvalGateAtRank_of_evalLanguageAtRank
    (evalLanguageAtRank_of_class039ExactGraphFinishMarginBound
      hclosed hclass hmargin)

/--
Semantic portfolio for the checked depth-11 graph-exact classes.

The generated emitter should prove this by semantic language invariants
(target cursor, square-gap/schedule, local axis, tri-source progress, and the
graph-exact margin bound), not by rank/path enumeration.
-/
inductive Depth11GraphExactClassCase
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop
  | class034
      (hclass : Class034GraphSuffixProducer rank)
      (hmargin : Class034ExactGraphFinishMarginBound scaledMargin rank)
  | class035
      (hclass : Class035GraphSuffixProducer rank)
      (hmargin : Class035ExactGraphFinishMarginBound scaledMargin rank)
  | class036
      (hclass : Class036GraphSuffixProducer rank)
      (hmargin : Class036ExactGraphFinishMarginBound scaledMargin rank)
  | class037
      (hclass : Class037GraphSuffixProducer rank)
      (hmargin : Class037ExactGraphFinishMarginBound scaledMargin rank)
  | class038
      (hclass : Class038GraphSuffixProducer rank)
      (hmargin : Class038ExactGraphFinishMarginBound scaledMargin rank)
  | class039
      (hclass : Class039GraphSuffixProducer rank)
      (hmargin : Class039ExactGraphFinishMarginBound scaledMargin rank)

theorem graphExactEvalGateAtRank_of_depth11GraphExactClassCase
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hcase : Depth11GraphExactClassCase scaledMargin rank) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank := by
  cases hcase with
  | class034 hclass hmargin =>
      exact graphExactEvalGateAtRank_of_class034ExactGraphFinishMarginBound
        hclosed hclass hmargin
  | class035 hclass hmargin =>
      exact graphExactEvalGateAtRank_of_class035ExactGraphFinishMarginBound
        hclosed hclass hmargin
  | class036 hclass hmargin =>
      exact graphExactEvalGateAtRank_of_class036ExactGraphFinishMarginBound
        hclosed hclass hmargin
  | class037 hclass hmargin =>
      exact graphExactEvalGateAtRank_of_class037ExactGraphFinishMarginBound
        hclosed hclass hmargin
  | class038 hclass hmargin =>
      exact graphExactEvalGateAtRank_of_class038ExactGraphFinishMarginBound
        hclosed hclass hmargin
  | class039 hclass hmargin =>
      exact graphExactEvalGateAtRank_of_class039ExactGraphFinishMarginBound
        hclosed hclass hmargin

structure Depth11GraphExactPortfolioAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  classify :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        Depth11GraphExactClassCase scaledMargin rank

theorem split10MGraphExactEvalAllFamily_of_depth11GraphExactPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Depth11GraphExactPortfolioAllFamily scaledMargin) :
    Split10MGraphExactEvalAllFamily scaledMargin where
  family := by
    intro rank hclosed
    exact graphExactEvalGateAtRank_of_depth11GraphExactClassCase
      hclosed (hfamily.classify rank hclosed)

theorem scaledMargin_nonpos_of_depth11GraphExactPortfolio
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Depth11GraphExactPortfolioAllFamily scaledMargin)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MGraphExactEvalAllFamily
    (split10MGraphExactEvalAllFamily_of_depth11GraphExactPortfolio
      hfamily)
    hclosed

theorem depth11GraphExactPortfolioSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphExactPortfolioSocket
