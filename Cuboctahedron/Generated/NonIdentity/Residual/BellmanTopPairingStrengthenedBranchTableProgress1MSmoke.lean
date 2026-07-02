import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTable1MSmoke

/-!
Table-driven local-progress smoke for the strengthened 1M top-pairing graph.

The previous branch-table smoke records the finite producer output: graph
transitions plus two semantic socket branches.  This module is the next small
bridge toward a production closed-language evaluator: graph branches now drive
the face evaluator from semantic tails, and socket branches are exposed as
semantic impossibility theorems rather than sampled paths.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableProgress1MSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingMissingTransition1MSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTable1MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLocal1MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEval1MSmoke

/--
Every graph branch in the finite strengthened table is a real evaluator step
for any semantic transducer state with the same graph state and a compatible
tail.
-/
theorem faceEvalNext_of_graphBranchTable
    {state : FaceEvalState} {face : Face} {rest : List Face}
    (hinv : BellmanTopPairingStrengthenedLocal1MSmoke.Inv state)
    (htail : state.Tail (face :: rest))
    (hbranch : StrengthenedBranchTable state.graph face BranchKind.graph) :
    ∃ nextState gain,
      faceEvalNext state face = some (nextState, gain) ∧
        nextState.Tail rest ∧
          BellmanTopPairingStrengthenedLocal1MSmoke.Inv nextState := by
  rcases graph_next_of_graphBranch hbranch with
    ⟨graphNext, gain, hgraph⟩
  rcases TopPairingTransducerEvalState.next?_tail
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
      htail hgraph with
    ⟨nextState, hnext, htailNext, hgraphNext⟩
  refine ⟨nextState, gain, hnext, htailNext, ?_⟩
  have htransition :=
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Root.transition_ok_of_lt
      hinv hgraph
  change nextState.graph < stateCount
  rw [hgraphNext]
  exact htransition.1

/--
The `state19/tmmp` socket branch is not a missing graph edge for production:
the strengthened semantic language makes that tail impossible.
-/
theorem socket19TmmpBranch_impossible
    {rank : Fin numPairWords} {rest : List Face}
    (hbranch :
      StrengthenedBranchTable
        missingState19TmmpSemanticEvalState.graph Face.tmmp
        BranchKind.socket19Tmmp)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
          rank Face.ym)
    (hlabels :
      topPairingRankFaceLabels rank =
        missingState19TmmpPrefix ++ (Face.tmmp :: rest))
    (htail :
      missingState19TmmpSemanticEvalState.Tail (Face.tmmp :: rest))
    (hlen : rest.length = 3) :
    False := by
  cases hbranch
  exact strengthened_no_missingState19TmmpSemanticTail
    hstrengthened hlabels htail hlen

/--
The `state150/tppp` socket branch is likewise discharged by the strengthened
semantic language, not by a selected-prefix table.
-/
theorem socket150TpppBranch_impossible
    {rank : Fin numPairWords} {rest : List Face}
    (hbranch :
      StrengthenedBranchTable
        missingState150TpppSemanticEvalState.graph Face.tppp
        BranchKind.socket150Tppp)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
          rank Face.ym)
    (hlabels :
      topPairingRankFaceLabels rank =
        missingState150TpppPrefix ++ (Face.tppp :: rest))
    (htail :
      missingState150TpppSemanticEvalState.Tail (Face.tppp :: rest))
    (hlen : rest.length = 9) :
    False := by
  cases hbranch
  exact strengthened_no_missingState150TpppSemanticTail
    hstrengthened hlabels htail hlen

theorem branchTableProgress1MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableProgress1MSmoke
