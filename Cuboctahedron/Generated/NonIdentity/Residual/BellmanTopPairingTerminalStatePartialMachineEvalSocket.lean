import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket
import Cuboctahedron.Search.BellmanPotential
import Cuboctahedron.Search.TopPairingTargetCompletionTail

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

/--
Proof-shaped evidence that a generated partial terminal-state evaluator accepts
a semantic prefix of a closed rank.

The gate deliberately contains only an evaluator prefix and a terminal state.
It does not contain sampled ranks, accepted trace identifiers, or
selected-prefix table membership.
-/
def TerminalEvalPrefixGate
    {StateId : Type}
    (machine : TerminalStepStatePartialMachine StateId)
    (start : StateId) (rank : Fin numPairWords) : Prop :=
  ∃ (labels : List Face) (finish : StateId) (gain : Int),
    ∃ rest : List Face,
      topPairingRankFaceLabels rank = labels ++ rest ∧
        evalLabelStepFn (nextEval machine) start labels =
          some (finish, gain) ∧
          machine.IsTerminal finish

/--
Semantic eval-prefix evidence from an arbitrary contained terminal-machine
state.

Unlike `TerminalEvalPrefixGate`, this gate records that the start state already
semantically contains the rank.  This is the shape a deterministic
closed-language classifier should prove while consuming the target cursor,
schedule, pair-count, local-axis, and tri-source fields.  When the start state
is the machine's initial semantic state, it collapses to `TerminalEvalPrefixGate`.
-/
def TerminalContainedEvalPrefixGate
    {StateId : Type}
    (machine : TerminalStepStatePartialMachine StateId)
    (start : StateId) (rank : Fin numPairWords) : Prop :=
  ∃ (labels : List Face) (finish : StateId) (gain : Int),
    ∃ rest : List Face,
      TerminalStepState.Contains (machine.stateOf start) rank ∧
        topPairingRankFaceLabels rank =
          (machine.stateOf start).pfx ++ labels ++ rest ∧
          evalLabelStepFn (nextEval machine) start labels =
            some (finish, gain) ∧
            machine.IsTerminal finish

/--
Nonterminal version of `TerminalContainedEvalPrefixGate`.

This is the small compositional object needed for semantic deterministic
frontiers: prove that a closed-language state can take a checked evaluator
prefix to an intermediate generated state, then continue from the resulting
semantic containment.
-/
def TerminalContainedEvalProgressGate
    {StateId : Type}
    (machine : TerminalStepStatePartialMachine StateId)
    (start : StateId) (rank : Fin numPairWords) (finish : StateId) : Prop :=
  ∃ (labels : List Face) (gain : Int),
    ∃ rest : List Face,
      TerminalStepState.Contains (machine.stateOf start) rank ∧
        topPairingRankFaceLabels rank =
          (machine.stateOf start).pfx ++ labels ++ rest ∧
      evalLabelStepFn (nextEval machine) start labels =
        some (finish, gain)

/--
Production-shaped target-completion continuation for a generated terminal
machine state.

The old selected-prefix experiments proved terminal continuations from sampled
or observed traces.  This continuation is the semantic replacement: a generated
leaf may assume the rank is contained in the current terminal state and that
the remaining suffix satisfies a `TopPairingTargetCompletionTail` state, then
it must drive the same partial machine to a terminal producer state.
-/
structure TerminalTargetCompletionContinuation
    {StateId : Type}
    (machine : TerminalStepStatePartialMachine StateId)
    (start : StateId)
    (completionState : TopPairingTargetCompletionState) : Prop where
  terminal :
    ∀ rank,
      TerminalStepState.Contains (machine.stateOf start) rank ->
        ∀ rest,
          topPairingRankFaceLabels rank =
              (machine.stateOf start).pfx ++ rest ->
            TopPairingTargetCompletionTail completionState rest ->
              TerminalContainedEvalPrefixGate machine start rank

theorem terminalContainedEvalPrefixGate_of_targetCompletionContinuation
    {StateId : Type}
    {machine : TerminalStepStatePartialMachine StateId}
    {start : StateId}
    {completionState : TopPairingTargetCompletionState}
    (hcontinuation :
      TerminalTargetCompletionContinuation machine start completionState)
    {rank : Fin numPairWords}
    (hcontains :
      TerminalStepState.Contains (machine.stateOf start) rank)
    {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        (machine.stateOf start).pfx ++ rest)
    (htail : TopPairingTargetCompletionTail completionState rest) :
    TerminalContainedEvalPrefixGate machine start rank :=
  hcontinuation.terminal rank hcontains rest hlabels htail

theorem terminalContainedEvalProgressGate_of_next?
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords}
    {state nextState : StateId} {face : Face} {rest : List Face}
    (hcontains :
      TerminalStepState.Contains (machine.stateOf state) rank)
    (hlabels :
      topPairingRankFaceLabels rank =
        (machine.stateOf state).pfx ++ face :: rest)
    (hnext : machine.next? state face = some nextState) :
    TerminalContainedEvalProgressGate machine state rank nextState := by
  refine ⟨[face], 0, rest, hcontains, ?_, ?_⟩
  · simpa [List.cons_append, List.append_assoc] using hlabels
  · simp [evalLabelStepFn, nextEval, hnext]

theorem terminalContainedEvalProgressGate_of_head_next?
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords}
    {state nextState : StateId} {face : Face} {rest : List Face}
    (hhead :
      TerminalStepState.Head (machine.stateOf state) rank face rest)
    (hnext : machine.next? state face = some nextState) :
    TerminalContainedEvalProgressGate machine state rank nextState :=
  terminalContainedEvalProgressGate_of_next? machine
    hhead.contains hhead.labels hnext

theorem terminalContainedEvalProgressGate_of_headSome_next?
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords}
    {state nextState : StateId} {face : Face}
    (hhead :
      TerminalStepState.HeadSome (machine.stateOf state) rank face)
    (hnext : machine.next? state face = some nextState) :
    TerminalContainedEvalProgressGate machine state rank nextState := by
  rcases hhead with ⟨rest, hhead⟩
  exact terminalContainedEvalProgressGate_of_head_next? machine hhead hnext

theorem pfx_of_eval_prefix
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {state finish : StateId} {labels : List Face} {gain : Int}
    (heval :
      evalLabelStepFn (nextEval machine) state labels =
        some (finish, gain)) :
    (machine.stateOf finish).pfx =
      (machine.stateOf state).pfx ++ labels := by
  induction labels generalizing state finish gain with
  | nil =>
      simp [evalLabelStepFn] at heval
      rcases heval with ⟨rfl, _rfl⟩
      simp
  | cons face labels ih =>
      simp [evalLabelStepFn, nextEval] at heval
      cases hnext : machine.next? state face with
      | none =>
          simp [hnext] at heval
      | some nextState =>
          simp [hnext] at heval
          cases htail :
              evalLabelStepFn (nextEval machine) nextState labels with
          | none =>
              simp [htail] at heval
          | some tailResult =>
              cases tailResult with
              | mk finish' tailGain =>
                  simp [htail] at heval
                  rcases heval with ⟨rfl, _rfl⟩
                  have hpfxNext :
                      (machine.stateOf nextState).pfx =
                        (machine.stateOf state).pfx ++ [face] := by
                    rw [machine.next_sound state face nextState hnext]
                    exact terminalStepState_nextStep_pfx
                      (machine.stateOf state) face
                  have hpfxTail :
                      (machine.stateOf finish').pfx =
                        (machine.stateOf nextState).pfx ++ labels :=
                    ih htail
                  rw [hpfxTail, hpfxNext]
                  simp [List.append_assoc]

theorem terminalContainedEvalProgressGate_trans
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords}
    {start middle finish : StateId}
    (hfirst :
      TerminalContainedEvalProgressGate machine start rank middle)
    (hsecond :
      TerminalContainedEvalProgressGate machine middle rank finish) :
    TerminalContainedEvalProgressGate machine start rank finish := by
  rcases hfirst with
    ⟨labels₁, gain₁, _rest₁, hcontainsStart, _hlabels₁, heval₁⟩
  rcases hsecond with
    ⟨labels₂, gain₂, rest₂, _hcontainsMiddle, hlabels₂, heval₂⟩
  refine ⟨labels₁ ++ labels₂, gain₁ + gain₂, rest₂,
    hcontainsStart, ?_, ?_⟩
  · have hpfxMiddle := pfx_of_eval_prefix machine heval₁
    rw [hpfxMiddle] at hlabels₂
    simpa [List.append_assoc] using hlabels₂
  · exact evalLabelStepFn_append heval₁ heval₂

/--
Compose a contained evaluator progress prefix with a contained terminal suffix.

This is the generic frontier-to-terminal combinator needed by the deterministic
terminal-machine route: generated code may first prove semantic progress to a
compact frontier state, then separately prove that the frontier state reaches a
terminal state.
-/
theorem terminalContainedEvalPrefixGate_trans_progress
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords}
    {start middle : StateId}
    (hfirst :
      TerminalContainedEvalProgressGate machine start rank middle)
    (hsecond :
      TerminalContainedEvalPrefixGate machine middle rank) :
    TerminalContainedEvalPrefixGate machine start rank := by
  rcases hfirst with
    ⟨labels₁, gain₁, _rest₁, hcontainsStart, _hlabels₁, heval₁⟩
  rcases hsecond with
    ⟨labels₂, finish, gain₂, rest₂, _hcontainsMiddle, hlabels₂, heval₂,
      hterminal⟩
  refine ⟨labels₁ ++ labels₂, finish, gain₁ + gain₂, rest₂,
    hcontainsStart, ?_, ?_, hterminal⟩
  · have hpfxMiddle := pfx_of_eval_prefix machine heval₁
    rw [hpfxMiddle] at hlabels₂
    simpa [List.append_assoc] using hlabels₂
  · exact evalLabelStepFn_append heval₁ heval₂

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

theorem contains_of_eval_prefix
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords}
    {state finish : StateId} {labels rest : List Face} {gain : Int}
    (hcontains :
      TerminalStepState.Contains (machine.stateOf state) rank)
    (hlabels :
      topPairingRankFaceLabels rank =
        (machine.stateOf state).pfx ++ labels ++ rest)
    (heval :
      evalLabelStepFn (nextEval machine) state labels =
        some (finish, gain)) :
    TerminalStepState.Contains (machine.stateOf finish) rank := by
  induction labels generalizing state finish gain with
  | nil =>
      simp [evalLabelStepFn] at heval
      rcases heval with ⟨rfl, _rfl⟩
      exact hcontains
  | cons face labels ih =>
      simp [evalLabelStepFn, nextEval] at heval
      cases hnext : machine.next? state face with
      | none =>
          simp [hnext] at heval
      | some nextState =>
          simp [hnext] at heval
          cases htail :
              evalLabelStepFn (nextEval machine) nextState labels with
          | none =>
              simp [htail] at heval
          | some tailResult =>
              cases tailResult with
              | mk finish' tailGain =>
                  simp [htail] at heval
                  rcases heval with ⟨rfl, _rfl⟩
                  have hlabelsStep :
                      topPairingRankFaceLabels rank =
                        (machine.stateOf state).pfx ++
                          face :: (labels ++ rest) := by
                    simpa [List.cons_append, List.append_assoc] using hlabels
                  have hcontainsNext :
                      TerminalStepState.Contains
                        (machine.stateOf nextState) rank :=
                    TerminalStepStatePartialMachine.contains_next?
                      machine hnext hcontains hlabelsStep
                  have hstateNext :
                      machine.stateOf nextState =
                        TerminalStepState.nextStep
                          (machine.stateOf state) face :=
                    machine.next_sound state face nextState hnext
                  have hlabelsNext :
                      topPairingRankFaceLabels rank =
                        (machine.stateOf nextState).pfx ++ labels ++ rest := by
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

theorem terminalTraceLabels_of_eval_prefix_terminal
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords} {badFace : Face}
    {state finish : StateId} {labels rest : List Face} {gain : Int}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hcontains :
      TerminalStepState.Contains (machine.stateOf state) rank)
    (hlabels :
      topPairingRankFaceLabels rank =
        (machine.stateOf state).pfx ++ labels ++ rest)
    (heval :
      evalLabelStepFn (nextEval machine) state labels =
        some (finish, gain))
    (hterminal : machine.IsTerminal finish) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) :=
  TerminalStepStatePartialMachine.terminalTraceLabels_of_terminal
    machine hclosed
      (contains_of_eval_prefix machine hcontains hlabels heval)
      hterminal

theorem terminalTraceLabels_of_containedEvalPrefixGate
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords} {badFace : Face}
    {start : StateId}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hgate : TerminalContainedEvalPrefixGate machine start rank) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) := by
  rcases hgate with
    ⟨labels, finish, gain, rest, hcontains, hlabels, heval, hterminal⟩
  exact terminalTraceLabels_of_eval_prefix_terminal
    machine hclosed hcontains hlabels heval hterminal

theorem contains_of_containedEvalProgressGate
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords}
    {start finish : StateId}
    (hgate :
      TerminalContainedEvalProgressGate machine start rank finish) :
    TerminalStepState.Contains (machine.stateOf finish) rank := by
  rcases hgate with
    ⟨labels, gain, rest, hcontains, hlabels, heval⟩
  exact contains_of_eval_prefix machine hcontains hlabels heval

theorem terminalContainedEvalPrefixGate_of_progress_terminal
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords}
    {start finish : StateId}
    (hprogress :
      TerminalContainedEvalProgressGate machine start rank finish)
    (hterminal : machine.IsTerminal finish) :
    TerminalContainedEvalPrefixGate machine start rank := by
  rcases hprogress with
    ⟨labels, gain, rest, hcontains, hlabels, heval⟩
  exact ⟨labels, finish, gain, rest, hcontains, hlabels, heval, hterminal⟩

/--
Zero-length terminal base case for contained evaluator gates.

Generated recursive terminal machines can use this as their leaf rule: once the
current generated state is terminal and still semantically contains the rank,
no further selected prefix, sampled rank, or trace identifier is needed.
-/
theorem terminalContainedEvalPrefixGate_of_terminal_state
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords}
    {state : StateId}
    (hcontains :
      TerminalStepState.Contains (machine.stateOf state) rank)
    (hterminal : machine.IsTerminal state) :
    TerminalContainedEvalPrefixGate machine state rank := by
  rcases hcontains with ⟨rest, hlabels, htail⟩
  refine ⟨[], state, 0, rest, ⟨rest, hlabels, htail⟩, ?_, ?_, hterminal⟩
  · simpa using hlabels
  · simp [evalLabelStepFn]

theorem terminalEvalPrefixGate_of_containedEvalPrefixGate_from_initial
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords}
    {start : StateId}
    (hstart :
      machine.stateOf start = TerminalStepState.initial)
    (hgate : TerminalContainedEvalPrefixGate machine start rank) :
    TerminalEvalPrefixGate machine start rank := by
  rcases hgate with
    ⟨labels, finish, gain, rest, _hcontains, hlabels, heval, hterminal⟩
  refine ⟨labels, finish, gain, rest, ?_, heval, hterminal⟩
  have hpfx : (machine.stateOf start).pfx = [] := by
    rw [hstart]
    rfl
  simpa [hpfx] using hlabels

theorem terminalTraceLabels_of_eval_prefix_from_initial
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords} {badFace : Face}
    {start finish : StateId} {labels rest : List Face} {gain : Int}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hstart :
      machine.stateOf start = TerminalStepState.initial)
    (hlabels :
      topPairingRankFaceLabels rank = labels ++ rest)
    (heval :
      evalLabelStepFn (nextEval machine) start labels =
        some (finish, gain))
    (hterminal : machine.IsTerminal finish) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) := by
  have hcontains :
      TerminalStepState.Contains (machine.stateOf start) rank := by
    rw [hstart]
    exact initial_contains_of_closed hclosed
  have hlabels' :
      topPairingRankFaceLabels rank =
        (machine.stateOf start).pfx ++ labels ++ rest := by
    rw [hstart]
    simpa [TerminalStepState.initial] using hlabels
  exact terminalTraceLabels_of_eval_prefix_terminal
    machine hclosed hcontains hlabels' heval hterminal

theorem terminalTraceLabels_of_eval_prefix_exists_from_initial
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords} {badFace : Face}
    {start finish : StateId} {labels : List Face} {gain : Int}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hstart :
      machine.stateOf start = TerminalStepState.initial)
    (hprefix :
      ∃ rest : List Face,
        topPairingRankFaceLabels rank = labels ++ rest)
    (heval :
      evalLabelStepFn (nextEval machine) start labels =
        some (finish, gain))
    (hterminal : machine.IsTerminal finish) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) := by
  rcases hprefix with ⟨rest, hlabels⟩
  exact terminalTraceLabels_of_eval_prefix_from_initial
    machine hclosed hstart hlabels heval hterminal

theorem terminalTraceLabels_of_evalPrefixGate_from_initial
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId)
    {rank : Fin numPairWords} {badFace : Face}
    {start : StateId}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hstart :
      machine.stateOf start = TerminalStepState.initial)
    (hgate : TerminalEvalPrefixGate machine start rank) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) := by
  rcases hgate with
    ⟨labels, finish, gain, rest, hprefix, heval, hterminal⟩
  exact terminalTraceLabels_of_eval_prefix_exists_from_initial
    machine hclosed hstart ⟨rest, hprefix⟩ heval hterminal

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
