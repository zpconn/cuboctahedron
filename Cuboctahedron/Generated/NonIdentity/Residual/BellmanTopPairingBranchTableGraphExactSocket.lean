import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket

/-!
Graph-exact socket for branch-table suffix evidence.

This is the first bounded instantiation of the graph-exact Bellman producer
target.  It converts the existing semantic branch-table suffix evidence into
`Split10MGraphExactEvalGateAtRank` and then into the all-rank
`Split10MGraphExactEvalAllFamily` surface.  The suffix evidence is graph-only;
the closed transducer tail supplies the schedule/cursor/local-axis facts at the
bridge boundary.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableGraphExactSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEvalSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket

theorem graphExactEvalGateAtRank_of_branchTableSuffixOk
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hsuffix :
      BranchTableSuffixOk rank
        (TopPairingTransducerEvalState.start rootState)
        (topPairingRankFaceLabels rank))
    (hfinish :
      forall {finish : FaceEvalState} {gain : Int},
        evalLabelStepFn faceEvalNext
          (TopPairingTransducerEvalState.start rootState)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        BranchInv finish ->
        BranchTableSuffixOk rank finish [] ->
          0 <= graphPotential finish.graph ∧
            scaledMargin rank <= (176 : Int) + gain) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank :=
  graphExactEvalGateAtRank_of_evalLanguageAtRank
    (evalLanguageAtRank_of_branchTableSuffixOk hclosed hsuffix hfinish)

theorem graphExactEvalGateAtRank_of_graphBranchTableSuffixOk
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hsuffix :
      GraphBranchTableSuffixOk rank rootState
        (topPairingRankFaceLabels rank))
    (hfinish :
      forall {finish : FaceEvalState} {gain : Int},
        evalLabelStepFn faceEvalNext
          (TopPairingTransducerEvalState.start rootState)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        BranchInv finish ->
        BranchTableSuffixOk rank finish [] ->
          0 <= graphPotential finish.graph ∧
            scaledMargin rank <= (176 : Int) + gain) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank :=
  graphExactEvalGateAtRank_of_evalLanguageAtRank
    (evalLanguageAtRank_of_graphBranchTableSuffixOk hclosed hsuffix hfinish)

/--
All-rank graph-only branch suffix family.

This is the next emitter target after the graph-exact socket: generate semantic
proofs of `suffix` and `finish` from closed-language state fields, then this
socket supplies the graph-exact all-family theorem.
-/
structure GraphBranchTableSuffixAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  suffix :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        GraphBranchTableSuffixOk rank rootState
          (topPairingRankFaceLabels rank)
  finish :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        forall {finish : FaceEvalState} {gain : Int},
          evalLabelStepFn faceEvalNext
            (TopPairingTransducerEvalState.start rootState)
            (topPairingRankFaceLabels rank) = some (finish, gain) ->
          finish.Tail [] ->
          BranchInv finish ->
          BranchTableSuffixOk rank finish [] ->
            0 <= graphPotential finish.graph ∧
              scaledMargin rank <= (176 : Int) + gain

theorem split10MGraphExactEvalAllFamily_of_graphBranchTableSuffixAllFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : GraphBranchTableSuffixAllFamily scaledMargin) :
    Split10MGraphExactEvalAllFamily scaledMargin where
  family := by
    intro rank hclosed
    exact graphExactEvalGateAtRank_of_graphBranchTableSuffixOk
      hclosed
      (hfamily.suffix rank hclosed)
      (hfamily.finish rank hclosed)

theorem scaledMargin_nonpos_of_graphBranchTableSuffixAllFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : GraphBranchTableSuffixAllFamily scaledMargin)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MGraphExactEvalAllFamily
    (split10MGraphExactEvalAllFamily_of_graphBranchTableSuffixAllFamily
      hfamily)
    hclosed

/--
Prefix-4 variant matching the currently checked branch-table decomposition.

The generated family only has to classify the post-prefix graph suffix after
the Lean-proved `xm, ym, third, fourth` front matter.
-/
structure GraphClosedPrefix4BranchTableAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  suffix :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∀ third fourth rest graph3 gain3 graph4 gain4,
          topPairingRankFaceLabels rank =
            Face.xm :: Face.ym :: third :: fourth :: rest ->
          graphSmokeNext (610 : State) (smokeLabelOfFace third) =
            some (graph3, gain3) ->
          graphSmokeNext graph3 (smokeLabelOfFace fourth) =
            some (graph4, gain4) ->
          GraphBranchTableSuffixOk rank graph4 rest
  finish :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        forall {finish : FaceEvalState} {gain : Int},
          evalLabelStepFn faceEvalNext
            (TopPairingTransducerEvalState.start rootState)
            (topPairingRankFaceLabels rank) = some (finish, gain) ->
          finish.Tail [] ->
          BranchInv finish ->
          BranchTableSuffixOk rank finish [] ->
            0 <= graphPotential finish.graph ∧
              scaledMargin rank <= (176 : Int) + gain

theorem split10MGraphExactEvalAllFamily_of_graphClosedPrefix4AllFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : GraphClosedPrefix4BranchTableAllFamily scaledMargin) :
    Split10MGraphExactEvalAllFamily scaledMargin where
  family := by
    intro rank hclosed
    exact graphExactEvalGateAtRank_of_branchTableSuffixOk
      hclosed
      (branchTableSuffixOk_root_of_graphClosedPrefix4_forall
        hclosed
        (fun third fourth rest graph3 gain3 graph4 gain4 hlabels hgraph3
            hgraph4 =>
          hfamily.suffix rank hclosed third fourth rest graph3 gain3 graph4
            gain4 hlabels hgraph3 hgraph4))
      (hfamily.finish rank hclosed)

theorem scaledMargin_nonpos_of_graphClosedPrefix4AllFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : GraphClosedPrefix4BranchTableAllFamily scaledMargin)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MGraphExactEvalAllFamily
    (split10MGraphExactEvalAllFamily_of_graphClosedPrefix4AllFamily hfamily)
    hclosed

theorem branchTableGraphExactSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableGraphExactSocket
