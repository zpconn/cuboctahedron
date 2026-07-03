import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket

/-!
Small branching frontier smoke for the top-pairing terminal-state evaluator.

The previous partial-machine eval smoke follows one selected path.  This file
checks the next production-facing shape: a generated finite frontier table can
branch on the semantic next face exposed by `TopPairingClosedLanguageAtRank`
and compose progress gates without selected-prefix or sampled-rank data.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateFrontierSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket

inductive FrontierState where
  | s00 | s01 | s02 | s03Tmpm | s03Yp | s03Zm
  deriving DecidableEq, Repr

namespace FrontierState

def step0 : TerminalStepState :=
  TerminalStepState.initial

def step1 : TerminalStepState :=
  step0.nextStep Face.xm

def step2 : TerminalStepState :=
  step1.nextStep Face.ym

def step3Tmpm : TerminalStepState :=
  step2.nextStep Face.tmpm

def step3Yp : TerminalStepState :=
  step2.nextStep Face.yp

def step3Zm : TerminalStepState :=
  step2.nextStep Face.zm

def stateOf : FrontierState -> TerminalStepState
  | .s00 => step0
  | .s01 => step1
  | .s02 => step2
  | .s03Tmpm => step3Tmpm
  | .s03Yp => step3Yp
  | .s03Zm => step3Zm

def next? : FrontierState -> Face -> Option FrontierState
  | .s00, Face.xm => some .s01
  | .s01, Face.ym => some .s02
  | .s02, Face.tmpm => some .s03Tmpm
  | .s02, Face.yp => some .s03Yp
  | .s02, Face.zm => some .s03Zm
  | _, _ => none

def IsTerminal (_state : FrontierState) : Prop :=
  False

theorem next_sound :
    ∀ state face nextState,
      next? state face = some nextState ->
        stateOf nextState =
          TerminalStepState.nextStep (stateOf state) face := by
  intro state face nextState hnext
  cases state <;> cases face <;>
    simp [next?, stateOf, step0, step1, step2, step3Tmpm,
      step3Yp, step3Zm] at hnext ⊢
  all_goals cases hnext; rfl

theorem terminalProducer :
    ∀ state, IsTerminal state ->
      TerminalStepStateProducer (stateOf state) := by
  intro state hterminal
  cases hterminal

end FrontierState

def frontierMachine :
    TerminalStepStatePartialMachine FrontierState where
  stateOf := FrontierState.stateOf
  next? := FrontierState.next?
  next_sound := FrontierState.next_sound
  IsTerminal := FrontierState.IsTerminal
  terminalProducer := FrontierState.terminalProducer

theorem frontier_start_state :
    frontierMachine.stateOf FrontierState.s00 =
      TerminalStepState.initial := by
  rfl

theorem frontierStep1HeadSome_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalStepState.HeadSome
      (frontierMachine.stateOf FrontierState.s00) rank Face.xm := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym hclosed.schedule with
    ⟨rest, hlabels⟩
  refine ⟨Face.ym :: rest, ?_⟩
  refine ⟨?_, ?_⟩
  · rw [frontier_start_state]
    exact initial_contains_of_closed hclosed
  · rw [frontier_start_state]
    simpa [TerminalStepState.initial, topPairingRankFaceLabels] using hlabels

theorem frontierProgress_step1
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalContainedEvalProgressGate
      frontierMachine FrontierState.s00 rank FrontierState.s01 :=
  terminalContainedEvalProgressGate_of_headSome_next?
    (machine := frontierMachine)
    (rank := rank)
    (state := FrontierState.s00)
    (nextState := FrontierState.s01)
    (face := Face.xm)
    (frontierStep1HeadSome_of_closed hclosed)
    rfl

theorem frontierStep2HeadSome_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalStepState.HeadSome
      (frontierMachine.stateOf FrontierState.s01) rank Face.ym := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym hclosed.schedule with
    ⟨rest, hlabels⟩
  refine ⟨rest, ?_⟩
  refine ⟨?_, ?_⟩
  · exact contains_of_containedEvalProgressGate frontierMachine
      (frontierProgress_step1 hclosed)
  · have hpfx :
        (frontierMachine.stateOf FrontierState.s01).pfx =
          [Face.xm] := by
      rfl
    rw [hpfx]
    simpa [topPairingRankFaceLabels] using hlabels

theorem frontierProgress_step2
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalContainedEvalProgressGate
      frontierMachine FrontierState.s01 rank FrontierState.s02 :=
  terminalContainedEvalProgressGate_of_headSome_next?
    (machine := frontierMachine)
    (rank := rank)
    (state := FrontierState.s01)
    (nextState := FrontierState.s02)
    (face := Face.ym)
    (frontierStep2HeadSome_of_closed hclosed)
    rfl

theorem frontierProgress_prefix2
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalContainedEvalProgressGate
      frontierMachine FrontierState.s00 rank FrontierState.s02 :=
  terminalContainedEvalProgressGate_trans
    frontierMachine
    (frontierProgress_step1 hclosed)
    (frontierProgress_step2 hclosed)

private theorem frontierStep3HeadSome_of_prefix
    {rank : Fin numPairWords} {face : Face} {rest : List Face}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: face :: rest) :
    TerminalStepState.HeadSome
      (frontierMachine.stateOf FrontierState.s02) rank face := by
  refine ⟨rest, ?_⟩
  refine ⟨?_, ?_⟩
  · exact contains_of_containedEvalProgressGate frontierMachine
      (frontierProgress_prefix2 hclosed)
  · have hpfx :
        (frontierMachine.stateOf FrontierState.s02).pfx =
          [Face.xm, Face.ym] := by
      rfl
    rw [hpfx]
    simpa [topPairingRankFaceLabels] using hlabels

theorem frontierStep3HeadSome_cases_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalStepState.HeadSome
        (frontierMachine.stateOf FrontierState.s02) rank Face.tmpm ∨
      TerminalStepState.HeadSome
          (frontierMachine.stateOf FrontierState.s02) rank Face.yp ∨
        TerminalStepState.HeadSome
          (frontierMachine.stateOf FrontierState.s02) rank Face.zm := by
  rcases topPairingStepScheduleLabels_prefix3 hclosed.schedule with
    htmpm | hyp | hzm
  · rcases htmpm with ⟨rest, hlabels⟩
    exact Or.inl (frontierStep3HeadSome_of_prefix hclosed
      (by simpa [topPairingRankFaceLabels] using hlabels))
  · rcases hyp with ⟨rest, hlabels⟩
    exact Or.inr (Or.inl (frontierStep3HeadSome_of_prefix hclosed
      (by simpa [topPairingRankFaceLabels] using hlabels)))
  · rcases hzm with ⟨rest, hlabels⟩
    exact Or.inr (Or.inr (frontierStep3HeadSome_of_prefix hclosed
      (by simpa [topPairingRankFaceLabels] using hlabels)))

theorem frontierProgress_step3_cases
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalContainedEvalProgressGate
        frontierMachine FrontierState.s02 rank FrontierState.s03Tmpm ∨
      TerminalContainedEvalProgressGate
          frontierMachine FrontierState.s02 rank FrontierState.s03Yp ∨
        TerminalContainedEvalProgressGate
          frontierMachine FrontierState.s02 rank FrontierState.s03Zm := by
  rcases frontierStep3HeadSome_cases_of_closed hclosed with
    htmpm | hyp | hzm
  · exact Or.inl
      (terminalContainedEvalProgressGate_of_headSome_next?
        (machine := frontierMachine)
        (rank := rank)
        (state := FrontierState.s02)
        (nextState := FrontierState.s03Tmpm)
        (face := Face.tmpm)
        htmpm
        rfl)
  · exact Or.inr (Or.inl
      (terminalContainedEvalProgressGate_of_headSome_next?
        (machine := frontierMachine)
        (rank := rank)
        (state := FrontierState.s02)
        (nextState := FrontierState.s03Yp)
        (face := Face.yp)
        hyp
        rfl))
  · exact Or.inr (Or.inr
      (terminalContainedEvalProgressGate_of_headSome_next?
        (machine := frontierMachine)
        (rank := rank)
        (state := FrontierState.s02)
        (nextState := FrontierState.s03Zm)
        (face := Face.zm)
        hzm
        rfl))

theorem frontierProgress_prefix3_cases
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalContainedEvalProgressGate
        frontierMachine FrontierState.s00 rank FrontierState.s03Tmpm ∨
      TerminalContainedEvalProgressGate
          frontierMachine FrontierState.s00 rank FrontierState.s03Yp ∨
        TerminalContainedEvalProgressGate
          frontierMachine FrontierState.s00 rank FrontierState.s03Zm := by
  have hprefix2 := frontierProgress_prefix2 hclosed
  rcases frontierProgress_step3_cases hclosed with htmpm | hyp | hzm
  · exact Or.inl
      (terminalContainedEvalProgressGate_trans
        frontierMachine hprefix2 htmpm)
  · exact Or.inr (Or.inl
      (terminalContainedEvalProgressGate_trans
        frontierMachine hprefix2 hyp))
  · exact Or.inr (Or.inr
      (terminalContainedEvalProgressGate_trans
        frontierMachine hprefix2 hzm))

theorem terminalStateFrontierSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateFrontierSmoke
