import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableSplit10MSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEvalSplit10MSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root

/-!
Table-driven local-progress smoke for the split-10M top-pairing graph.

This is the split-graph counterpart of the 1M local-progress smoke: finite
`StrengthenedBranchTable` graph evidence drives the semantic face evaluator.
It is still a local bridge, not closed-language membership or final coverage.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableProgressSplit10MSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEvalSplit10MSmoke

def Inv (state : FaceEvalState) : Prop :=
  state.graph < stateCount

theorem start_inv :
    Inv (TopPairingTransducerEvalState.start rootState) := by
  norm_num [Inv, TopPairingTransducerEvalState.start, rootState, stateCount]

/--
Every graph branch in the finite split-10M table is a real evaluator step for
any semantic transducer state with the same graph state and compatible tail.
-/
theorem faceEvalNext_of_graphBranchTable
    {state : FaceEvalState} {face : Face} {rest : List Face}
    (hinv : Inv state)
    (htail : state.Tail (face :: rest))
    (hbranch : StrengthenedBranchTable state.graph face BranchKind.graph) :
    ∃ nextState gain,
      faceEvalNext state face = some (nextState, gain) ∧
        nextState.Tail rest ∧ Inv nextState := by
  rcases graph_next_of_graphBranch hbranch with
    ⟨graphNext, gain, hgraph⟩
  rcases TopPairingTransducerEvalState.next?_tail
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
      htail hgraph with
    ⟨nextState, hnext, htailNext, hgraphNext⟩
  refine ⟨nextState, gain, hnext, htailNext, ?_⟩
  have htransition :=
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root.transition_ok_of_lt
      hinv hgraph
  change nextState.graph < stateCount
  rw [hgraphNext]
  exact htransition.1

theorem branchTableProgressSplit10MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableProgressSplit10MSmoke
