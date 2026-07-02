import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSocket

/-!
Finite-state-machine socket for the top-pairing terminal producer.

The production terminal classifier should expose compact generated state IDs
and a deterministic local transition, not selected-prefix or accepted-trace
membership.  This module defines the small interface needed for that layer:
each generated state ID has a semantic `TerminalStepState`, generated `next`
steps are sound for `TerminalStepState.nextStep`, and terminal IDs carry a
`TerminalStepStateProducer`.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateMachineSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket

structure TerminalStepStateMachine (StateId : Type) where
  stateOf : StateId -> TerminalStepState
  next : StateId -> Face -> StateId
  next_sound :
    ∀ state face,
      stateOf (next state face) =
        TerminalStepState.nextStep (stateOf state) face
  IsTerminal : StateId -> Prop
  terminalProducer :
    ∀ state, IsTerminal state ->
      TerminalStepStateProducer (stateOf state)

namespace TerminalStepStateMachine

theorem contains_next
    {StateId : Type} (machine : TerminalStepStateMachine StateId)
    {rank : Fin numPairWords}
    {state : StateId} {face : Face} {rest : List Face}
    (hcontains :
      TerminalStepState.Contains (machine.stateOf state) rank)
    (hlabels :
      topPairingRankFaceLabels rank =
        (machine.stateOf state).pfx ++ face :: rest) :
    TerminalStepState.Contains
      (machine.stateOf (machine.next state face)) rank := by
  rw [machine.next_sound]
  exact contains_nextStep hcontains hlabels

theorem terminalTraceLabels_of_terminal
    {StateId : Type} (machine : TerminalStepStateMachine StateId)
    {rank : Fin numPairWords} {badFace : Face}
    {state : StateId}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hcontains :
      TerminalStepState.Contains (machine.stateOf state) rank)
    (hterminal : machine.IsTerminal state) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) :=
  terminalTraceLabels_of_terminalStepStateProducer
    hclosed hcontains (machine.terminalProducer state hterminal)

def semantic : TerminalStepStateMachine TerminalStepState where
  stateOf := id
  next := fun state face => TerminalStepState.nextStep state face
  next_sound := by
    intro _state _face
    rfl
  IsTerminal := TerminalStepStateProducer
  terminalProducer := by
    intro _state h
    exact h

theorem semantic_contains_next
    {rank : Fin numPairWords}
    {state : TerminalStepState} {face : Face} {rest : List Face}
    (hcontains : TerminalStepState.Contains state rank)
    (hlabels :
      topPairingRankFaceLabels rank = state.pfx ++ face :: rest) :
    TerminalStepState.Contains
      (TerminalStepState.nextStep state face) rank :=
  contains_next semantic hcontains hlabels

theorem terminalStateMachineSocket_builds : True := by
  exact True.intro

end TerminalStepStateMachine

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateMachineSocket
