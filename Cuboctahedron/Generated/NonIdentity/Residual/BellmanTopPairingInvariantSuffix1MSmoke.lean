import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Root
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEval1MSmoke

/-!
Table-backed invariant/suffix smoke for the aligned 1M top-pairing graph.

This is the first small Lean socket for the post-audit production shape:
the finite graph table supplies the local transition, while a suffix predicate
records that the remaining semantic suffix is accepted by that table.  The
predicate is intentionally rank-free and path-object-free; proving that the
strengthened closed language implies this predicate is the next generator task.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingInvariantSuffix1MSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEval1MSmoke

def Inv (state : FaceEvalState) : Prop :=
  state.graph < stateCount

inductive SuffixOk : FaceEvalState -> List Face -> Prop
  | nil (state : FaceEvalState) : SuffixOk state []
  | cons {state nextState : FaceEvalState} {face : Face} {rest : List Face}
      {gain : Int}
      (hnext : faceEvalNext state face = some (nextState, gain))
      (hrest : SuffixOk nextState rest) :
      SuffixOk state (face :: rest)

theorem start_inv :
    Inv (TopPairingTransducerEvalState.start rootState) := by
  norm_num [Inv, TopPairingTransducerEvalState.start, rootState, stateCount]

private theorem tail_of_next
    {state nextState : FaceEvalState} {face : Face} {rest : List Face}
    {gain : Int}
    (htail : state.Tail (face :: rest))
    (hnext : faceEvalNext state face = some (nextState, gain)) :
    nextState.Tail rest := by
  have hgraph :=
    TopPairingTransducerEvalState.graph_next_of_next?
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace) hnext
  rcases TopPairingTransducerEvalState.next?_tail
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
      htail hgraph with
    ⟨tableNextState, htableNext, htailNext, _hgraphNext⟩
  change
    TopPairingTransducerEvalState.next? graphSmokeNext smokeLabelOfFace
      state face = some (nextState, gain) at hnext
  rw [hnext] at htableNext
  cases htableNext
  exact htailNext

private theorem inv_of_next
    {state nextState : FaceEvalState} {face : Face} {gain : Int}
    (hinv : Inv state)
    (hnext : faceEvalNext state face = some (nextState, gain)) :
    Inv nextState := by
  have hgraph :=
    TopPairingTransducerEvalState.graph_next_of_next?
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace) hnext
  exact
    (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Root.transition_ok_of_lt
      hinv hgraph).1

theorem suffixOk_local
    {state : FaceEvalState} {face : Face} {rest : List Face}
    (hinv : Inv state)
    (htail : state.Tail (face :: rest))
    (hsuffix : SuffixOk state (face :: rest)) :
    ∃ nextState gain,
      faceEvalNext state face = some (nextState, gain) ∧
        nextState.Tail rest ∧ Inv nextState ∧ SuffixOk nextState rest := by
  cases hsuffix with
  | cons hnext hrest =>
      exact ⟨_, _, hnext, tail_of_next htail hnext, inv_of_next hinv hnext,
        hrest⟩

theorem eval_exists_of_suffixOk
    {state : FaceEvalState} {faces : List Face}
    (hinv : Inv state)
    (htail : state.Tail faces)
    (hsuffix : SuffixOk state faces) :
    ∃ finish gain,
      evalLabelStepFn faceEvalNext state faces =
        some (finish, gain) ∧
        finish.Tail [] ∧ Inv finish ∧ SuffixOk finish [] :=
  TopPairingTransducerEvalState.evalLabelStepFn_exists_of_tail_and_invariantLocalWithSuffix
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
      Inv SuffixOk suffixOk_local hinv htail hsuffix

theorem invariantSuffix1MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingInvariantSuffix1MSmoke
