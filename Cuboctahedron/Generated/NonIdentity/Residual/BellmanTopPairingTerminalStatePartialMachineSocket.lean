import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateMachineSocket

/-!
Partial finite-state-machine socket for the top-pairing terminal producer.

`evalLabelStepFn`-style generated classifiers use partial transitions.  This
socket is the production-shaped variant of the terminal-state machine API:
generated state IDs expose `next? : StateId -> Face -> Option StateId`, and
Lean checks that every defined transition agrees with the semantic
`TerminalStepState.nextStep`.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateMachineSocket

structure TerminalStepStatePartialMachine (StateId : Type) where
  stateOf : StateId -> TerminalStepState
  next? : StateId -> Face -> Option StateId
  next_sound :
    ∀ state face nextState,
      next? state face = some nextState ->
        stateOf nextState =
          TerminalStepState.nextStep (stateOf state) face
  IsTerminal : StateId -> Prop
  terminalProducer :
    ∀ state, IsTerminal state ->
      TerminalStepStateProducer (stateOf state)

namespace TerminalStepStatePartialMachine

def ofTotal {StateId : Type}
    (machine : TerminalStepStateMachine StateId) :
    TerminalStepStatePartialMachine StateId where
  stateOf := machine.stateOf
  next? := fun state face => some (machine.next state face)
  next_sound := by
    intro state face nextState hnext
    cases hnext
    exact machine.next_sound state face
  IsTerminal := machine.IsTerminal
  terminalProducer := machine.terminalProducer

theorem contains_next?
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords}
    {state nextState : StateId} {face : Face} {rest : List Face}
    (hnext : machine.next? state face = some nextState)
    (hcontains :
      TerminalStepState.Contains (machine.stateOf state) rank)
    (hlabels :
      topPairingRankFaceLabels rank =
        (machine.stateOf state).pfx ++ face :: rest) :
    TerminalStepState.Contains
      (machine.stateOf nextState) rank := by
  rw [machine.next_sound state face nextState hnext]
  exact contains_nextStep hcontains hlabels

theorem terminalTraceLabels_of_terminal
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
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

def semantic : TerminalStepStatePartialMachine TerminalStepState :=
  ofTotal TerminalStepStateMachine.semantic

theorem semantic_contains_next?
    {rank : Fin numPairWords}
    {state nextState : TerminalStepState} {face : Face} {rest : List Face}
    (hnext : semantic.next? state face = some nextState)
    (hcontains : TerminalStepState.Contains state rank)
    (hlabels :
      topPairingRankFaceLabels rank = state.pfx ++ face :: rest) :
    TerminalStepState.Contains nextState rank :=
  contains_next? semantic hnext hcontains hlabels

theorem terminalStatePartialMachineSocket_builds : True := by
  exact True.intro

end TerminalStepStatePartialMachine

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket
