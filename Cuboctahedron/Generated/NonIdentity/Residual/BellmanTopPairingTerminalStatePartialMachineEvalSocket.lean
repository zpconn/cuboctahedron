import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket
import Cuboctahedron.Search.BellmanPotential

/-!
Evaluator socket for partial terminal-state machines.

This module is the next bridge toward a deterministic closed-language
membership theorem.  If a generated partial machine evaluates the suffix labels
of a semantic `TerminalStepState.Contains` witness, then the final generated
state also contains the rank.  A terminal final state therefore gives terminal
trace membership.

The theorem is generic and does not mention accepted traces, sampled ranks, or
selected-prefix membership.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket

theorem terminalStepState_nextStep_pfx
    (state : TerminalStepState) (face : Face) :
    (state.nextStep face).pfx = state.pfx ++ [face] := by
  unfold TerminalStepState.nextStep
  cases triLetterOfFace? face <;>
    simp [TerminalStepState.squareStep, TerminalStepState.triStep]

def nextEval {StateId : Type}
    (machine : TerminalStepStatePartialMachine StateId)
    (state : StateId) (face : Face) :
    Option (StateId × Int) :=
  match machine.next? state face with
  | none => none
  | some nextState => some (nextState, 0)

theorem contains_of_eval_suffix
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords}
    {state finish : StateId} {labels : List Face} {gain : Int}
    (hcontains :
      TerminalStepState.Contains (machine.stateOf state) rank)
    (hlabels :
      topPairingRankFaceLabels rank =
        (machine.stateOf state).pfx ++ labels)
    (heval :
      evalLabelStepFn (nextEval machine) state labels =
        some (finish, gain)) :
    TerminalStepState.Contains (machine.stateOf finish) rank := by
  induction labels generalizing state finish gain with
  | nil =>
      simp [evalLabelStepFn] at heval
      rcases heval with ⟨rfl, _rfl⟩
      exact hcontains
  | cons face rest ih =>
      simp [evalLabelStepFn, nextEval] at heval
      cases hnext : machine.next? state face with
      | none =>
          simp [hnext] at heval
      | some nextState =>
          simp [hnext] at heval
          cases htail :
              evalLabelStepFn (nextEval machine) nextState rest with
          | none =>
              simp [htail] at heval
          | some tailResult =>
              cases tailResult with
              | mk finish' tailGain =>
                  simp [htail] at heval
                  rcases heval with ⟨rfl, _rfl⟩
                  have hcontainsNext :
                      TerminalStepState.Contains
                        (machine.stateOf nextState) rank :=
                    TerminalStepStatePartialMachine.contains_next?
                      machine hnext hcontains hlabels
                  have hstateNext :
                      machine.stateOf nextState =
                        TerminalStepState.nextStep
                          (machine.stateOf state) face :=
                    machine.next_sound state face nextState hnext
                  have hlabelsNext :
                      topPairingRankFaceLabels rank =
                        (machine.stateOf nextState).pfx ++ rest := by
                    have hpfx :
                        (machine.stateOf nextState).pfx =
                          (machine.stateOf state).pfx ++ [face] := by
                      rw [hstateNext]
                      exact terminalStepState_nextStep_pfx
                        (machine.stateOf state) face
                    rw [hpfx]
                    simpa [List.append_assoc] using hlabels
                  exact ih hcontainsNext hlabelsNext htail

theorem terminalTraceLabels_of_eval_terminal
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords} {badFace : Face}
    {state finish : StateId} {labels : List Face} {gain : Int}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hcontains :
      TerminalStepState.Contains (machine.stateOf state) rank)
    (hlabels :
      topPairingRankFaceLabels rank =
        (machine.stateOf state).pfx ++ labels)
    (heval :
      evalLabelStepFn (nextEval machine) state labels =
        some (finish, gain))
    (hterminal : machine.IsTerminal finish) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) :=
  TerminalStepStatePartialMachine.terminalTraceLabels_of_terminal
    machine hclosed
      (contains_of_eval_suffix machine hcontains hlabels heval)
      hterminal

theorem terminalTraceLabels_of_eval_from_initial
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords} {badFace : Face}
    {start finish : StateId} {gain : Int}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hstart :
      machine.stateOf start = TerminalStepState.initial)
    (heval :
      evalLabelStepFn (nextEval machine) start
          (topPairingRankFaceLabels rank) =
        some (finish, gain))
    (hterminal : machine.IsTerminal finish) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) := by
  have hcontains :
      TerminalStepState.Contains (machine.stateOf start) rank := by
    rw [hstart]
    exact initial_contains_of_closed hclosed
  have hlabels :
      topPairingRankFaceLabels rank =
        (machine.stateOf start).pfx ++ topPairingRankFaceLabels rank := by
    rw [hstart]
    simp [TerminalStepState.initial]
  exact terminalTraceLabels_of_eval_terminal
    machine hclosed hcontains hlabels heval hterminal

theorem terminalStatePartialMachineEvalSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket
