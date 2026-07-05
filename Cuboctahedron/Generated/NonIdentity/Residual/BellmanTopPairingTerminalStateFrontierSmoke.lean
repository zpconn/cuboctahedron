import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge

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
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

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

/-!
The next smoke uses compact branch indices instead of a constructor for every
path.  This is closer to what a generated frontier emitter should produce:
small finite semantic indices plus a partial transition function.
-/

inductive ThirdBranch where
  | tmpm | yp | zm
  deriving DecidableEq, Repr

namespace ThirdBranch

def face : ThirdBranch -> Face
  | .tmpm => Face.tmpm
  | .yp => Face.yp
  | .zm => Face.zm

end ThirdBranch

inductive FourthBranch where
  | tmmm | tmpp | tppm | yp | zm | zp
  deriving DecidableEq, Repr

namespace FourthBranch

def face : FourthBranch -> Face
  | .tmmm => Face.tmmm
  | .tmpp => Face.tmpp
  | .tppm => Face.tppm
  | .yp => Face.yp
  | .zm => Face.zm
  | .zp => Face.zp

end FourthBranch

inductive Layer4State where
  | s00 | s01 | s02
  | s03 (third : ThirdBranch)
  | s04 (third : ThirdBranch) (fourth : FourthBranch)
  deriving DecidableEq, Repr

namespace Layer4State

def step0 : TerminalStepState :=
  TerminalStepState.initial

def step1 : TerminalStepState :=
  step0.nextStep Face.xm

def step2 : TerminalStepState :=
  step1.nextStep Face.ym

def step3 (third : ThirdBranch) : TerminalStepState :=
  step2.nextStep third.face

def step4 (third : ThirdBranch) (fourth : FourthBranch) :
    TerminalStepState :=
  (step3 third).nextStep fourth.face

def stateOf : Layer4State -> TerminalStepState
  | .s00 => step0
  | .s01 => step1
  | .s02 => step2
  | .s03 third => step3 third
  | .s04 third fourth => step4 third fourth

def next? : Layer4State -> Face -> Option Layer4State
  | .s00, Face.xm => some .s01
  | .s01, Face.ym => some .s02
  | .s02, Face.tmpm => some (.s03 .tmpm)
  | .s02, Face.yp => some (.s03 .yp)
  | .s02, Face.zm => some (.s03 .zm)
  | .s03 third, Face.tmmm => some (.s04 third .tmmm)
  | .s03 third, Face.tmpp => some (.s04 third .tmpp)
  | .s03 third, Face.tppm => some (.s04 third .tppm)
  | .s03 third, Face.yp => some (.s04 third .yp)
  | .s03 third, Face.zm => some (.s04 third .zm)
  | .s03 third, Face.zp => some (.s04 third .zp)
  | _, _ => none

def IsTerminal (_state : Layer4State) : Prop :=
  False

theorem next_sound :
    ∀ state face nextState,
      next? state face = some nextState ->
        stateOf nextState =
          TerminalStepState.nextStep (stateOf state) face := by
  intro state face nextState hnext
  cases state <;> cases face <;> cases nextState <;>
    simp [next?, stateOf, step0, step1, step2, step3, step4] at hnext ⊢
  all_goals
    rcases hnext with ⟨rfl, rfl⟩
    rfl

theorem terminalProducer :
    ∀ state, IsTerminal state ->
      TerminalStepStateProducer (stateOf state) := by
  intro state hterminal
  cases hterminal

end Layer4State

def layer4Machine :
    TerminalStepStatePartialMachine Layer4State where
  stateOf := Layer4State.stateOf
  next? := Layer4State.next?
  next_sound := Layer4State.next_sound
  IsTerminal := Layer4State.IsTerminal
  terminalProducer := Layer4State.terminalProducer

theorem layer4_start_state :
    layer4Machine.stateOf Layer4State.s00 =
      TerminalStepState.initial := by
  rfl

theorem layer4_next?_s02_third (third : ThirdBranch) :
    layer4Machine.next? Layer4State.s02 third.face =
      some (Layer4State.s03 third) := by
  cases third <;> rfl

theorem layer4_next?_s03_fourth
    (third : ThirdBranch) (fourth : FourthBranch) :
    layer4Machine.next? (Layer4State.s03 third) fourth.face =
      some (Layer4State.s04 third fourth) := by
  cases fourth <;> rfl

theorem layer4_s03_pfx (third : ThirdBranch) :
    (layer4Machine.stateOf (Layer4State.s03 third)).pfx =
      [Face.xm, Face.ym, third.face] := by
  cases third <;> rfl

theorem layer4_s03_step (third : ThirdBranch) :
    (layer4Machine.stateOf (Layer4State.s03 third)).step = 3 := by
  cases third <;> rfl

theorem layer4Step1HeadSome_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalStepState.HeadSome
      (layer4Machine.stateOf Layer4State.s00) rank Face.xm := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym hclosed.schedule with
    ⟨rest, hlabels⟩
  refine ⟨Face.ym :: rest, ?_⟩
  refine ⟨?_, ?_⟩
  · rw [layer4_start_state]
    exact initial_contains_of_closed hclosed
  · rw [layer4_start_state]
    simpa [TerminalStepState.initial, topPairingRankFaceLabels] using hlabels

theorem layer4Progress_step1
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalContainedEvalProgressGate
      layer4Machine Layer4State.s00 rank Layer4State.s01 :=
  terminalContainedEvalProgressGate_of_headSome_next?
    (machine := layer4Machine)
    (rank := rank)
    (state := Layer4State.s00)
    (nextState := Layer4State.s01)
    (face := Face.xm)
    (layer4Step1HeadSome_of_closed hclosed)
    rfl

theorem layer4Step2HeadSome_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalStepState.HeadSome
      (layer4Machine.stateOf Layer4State.s01) rank Face.ym := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym hclosed.schedule with
    ⟨rest, hlabels⟩
  refine ⟨rest, ?_⟩
  refine ⟨?_, ?_⟩
  · exact contains_of_containedEvalProgressGate layer4Machine
      (layer4Progress_step1 hclosed)
  · have hpfx :
        (layer4Machine.stateOf Layer4State.s01).pfx =
          [Face.xm] := by
      rfl
    rw [hpfx]
    simpa [topPairingRankFaceLabels] using hlabels

theorem layer4Progress_step2
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalContainedEvalProgressGate
      layer4Machine Layer4State.s01 rank Layer4State.s02 :=
  terminalContainedEvalProgressGate_of_headSome_next?
    (machine := layer4Machine)
    (rank := rank)
    (state := Layer4State.s01)
    (nextState := Layer4State.s02)
    (face := Face.ym)
    (layer4Step2HeadSome_of_closed hclosed)
    rfl

theorem layer4Progress_prefix2
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalContainedEvalProgressGate
      layer4Machine Layer4State.s00 rank Layer4State.s02 :=
  terminalContainedEvalProgressGate_trans
    layer4Machine
    (layer4Progress_step1 hclosed)
    (layer4Progress_step2 hclosed)

private theorem layer4Step3HeadSome_of_prefix
    {rank : Fin numPairWords} {third : ThirdBranch} {rest : List Face}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: third.face :: rest) :
    TerminalStepState.HeadSome
      (layer4Machine.stateOf Layer4State.s02) rank third.face := by
  refine ⟨rest, ?_⟩
  refine ⟨?_, ?_⟩
  · exact contains_of_containedEvalProgressGate layer4Machine
      (layer4Progress_prefix2 hclosed)
  · have hpfx :
        (layer4Machine.stateOf Layer4State.s02).pfx =
          [Face.xm, Face.ym] := by
      rfl
    rw [hpfx]
    simpa [topPairingRankFaceLabels] using hlabels

theorem layer4Progress_step3_of_head
    {rank : Fin numPairWords} {third : ThirdBranch}
    (hhead :
      TerminalStepState.HeadSome
        (layer4Machine.stateOf Layer4State.s02) rank third.face) :
    TerminalContainedEvalProgressGate
      layer4Machine Layer4State.s02 rank (Layer4State.s03 third) :=
  terminalContainedEvalProgressGate_of_headSome_next?
    (machine := layer4Machine)
    (rank := rank)
    (state := Layer4State.s02)
    (nextState := Layer4State.s03 third)
    (face := third.face)
    hhead
    (layer4_next?_s02_third third)

theorem layer4Progress_prefix3_of_head
    {rank : Fin numPairWords} {third : ThirdBranch}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hhead :
      TerminalStepState.HeadSome
        (layer4Machine.stateOf Layer4State.s02) rank third.face) :
    TerminalContainedEvalProgressGate
      layer4Machine Layer4State.s00 rank (Layer4State.s03 third) :=
  terminalContainedEvalProgressGate_trans
    layer4Machine
    (layer4Progress_prefix2 hclosed)
    (layer4Progress_step3_of_head hhead)

private theorem layer4StepSchedulePrefix4_cases_of_prefix3
    {labels : List Face} {third : ThirdBranch} {rest3 : List Face}
    (hschedule : TopPairingStepScheduleLabels labels)
    (hlabels :
      labels = Face.xm :: Face.ym :: third.face :: rest3) :
    ∃ fourth : FourthBranch, ∃ rest4 : List Face,
      labels =
        Face.xm :: Face.ym :: third.face :: fourth.face :: rest4 := by
  cases rest3 with
  | nil =>
      rcases hschedule with ⟨hlen, _hfrom⟩
      rw [hlabels] at hlen
      simp at hlen
  | cons face4 rest4 =>
      rcases hschedule with ⟨_hlen, hfrom⟩
      subst labels
      unfold TopPairingStepScheduleFrom at hfrom
      rcases hfrom with ⟨_h0, hfrom1⟩
      unfold TopPairingStepScheduleFrom at hfrom1
      rcases hfrom1 with ⟨_h1, hfrom2⟩
      unfold TopPairingStepScheduleFrom at hfrom2
      rcases hfrom2 with ⟨_h2, hfrom3⟩
      unfold TopPairingStepScheduleFrom at hfrom3
      rcases hfrom3 with ⟨hface4, _hrest4⟩
      simp [topPairingAllowedFacesAtStep] at hface4
      rcases hface4 with rfl | rfl | rfl | rfl | rfl | rfl
      · exact ⟨FourthBranch.tmmm, rest4, rfl⟩
      · exact ⟨FourthBranch.tmpp, rest4, rfl⟩
      · exact ⟨FourthBranch.tppm, rest4, rfl⟩
      · exact ⟨FourthBranch.yp, rest4, rfl⟩
      · exact ⟨FourthBranch.zm, rest4, rfl⟩
      · exact ⟨FourthBranch.zp, rest4, rfl⟩

private theorem layer4Step4HeadSome_of_prefix4
    {rank : Fin numPairWords} {third : ThirdBranch}
    {fourth : FourthBranch} {rest4 : List Face}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: third.face :: fourth.face :: rest4) :
    TerminalStepState.HeadSome
      (layer4Machine.stateOf (Layer4State.s03 third)) rank fourth.face := by
  have hhead3 :
      TerminalStepState.HeadSome
        (layer4Machine.stateOf Layer4State.s02) rank third.face :=
    layer4Step3HeadSome_of_prefix hclosed
      (by
        simpa [topPairingRankFaceLabels] using hlabels)
  refine ⟨rest4, ?_⟩
  refine ⟨?_, ?_⟩
  · exact contains_of_containedEvalProgressGate layer4Machine
      (layer4Progress_prefix3_of_head hclosed hhead3)
  · have hpfx :
        (layer4Machine.stateOf (Layer4State.s03 third)).pfx =
          [Face.xm, Face.ym, third.face] := by
      cases third <;> rfl
    rw [hpfx]
    simpa [topPairingRankFaceLabels] using hlabels

theorem layer4Step4HeadSome_exists_of_prefix3
    {rank : Fin numPairWords} {third : ThirdBranch} {rest3 : List Face}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: third.face :: rest3) :
    ∃ fourth : FourthBranch,
      TerminalStepState.HeadSome
        (layer4Machine.stateOf (Layer4State.s03 third)) rank fourth.face := by
  rcases layer4StepSchedulePrefix4_cases_of_prefix3
      hclosed.schedule
      (by simpa [topPairingRankFaceLabels] using hlabels) with
    ⟨fourth, rest4, hlabels4⟩
  exact ⟨fourth, layer4Step4HeadSome_of_prefix4 hclosed
    (by simpa [topPairingRankFaceLabels] using hlabels4)⟩

theorem layer4Step4HeadSome_exists_of_head3
    {rank : Fin numPairWords} {third : ThirdBranch}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hhead3 :
      TerminalStepState.HeadSome
        (layer4Machine.stateOf Layer4State.s02) rank third.face) :
    ∃ fourth : FourthBranch,
      TerminalStepState.HeadSome
        (layer4Machine.stateOf (Layer4State.s03 third)) rank fourth.face := by
  rcases hhead3 with ⟨_rest3, hhead3⟩
  have hcontains3Raw :
      TerminalStepState.Contains
        ((layer4Machine.stateOf Layer4State.s02).nextStep third.face) rank :=
    hhead3.contains_nextStep
  have hstate3 :
      layer4Machine.stateOf (Layer4State.s03 third) =
        (layer4Machine.stateOf Layer4State.s02).nextStep third.face := by
    cases third <;> rfl
  have hcontains3 :
      TerminalStepState.Contains
        (layer4Machine.stateOf (Layer4State.s03 third)) rank := by
    rw [hstate3]
    exact hcontains3Raw
  have hcontains3Keep := hcontains3
  rcases hcontains3 with ⟨rest0, hlabels0, htail0⟩
  cases rest0 with
  | nil =>
      have hlen : (topPairingRankFaceLabels rank).length = 14 := by
        simpa [topPairingRankFaceLabels] using hclosed.schedule.1
      rw [hlabels0] at hlen
      rw [layer4_s03_pfx third] at hlen
      simp at hlen
  | cons face4 rest4 =>
      have hfrom := htail0.trace.schedule
      unfold TopPairingStepScheduleFrom at hfrom
      rcases hfrom with ⟨hface4, _hrest4⟩
      rw [layer4_s03_step third] at hface4
      simp [topPairingAllowedFacesAtStep] at hface4
      rcases hface4 with rfl | rfl | rfl | rfl | rfl | rfl
      · exact ⟨FourthBranch.tmmm, rest4,
          ⟨hcontains3Keep, by
            simpa [FourthBranch.face] using hlabels0⟩⟩
      · exact ⟨FourthBranch.tmpp, rest4,
          ⟨hcontains3Keep, by
            simpa [FourthBranch.face] using hlabels0⟩⟩
      · exact ⟨FourthBranch.tppm, rest4,
          ⟨hcontains3Keep, by
            simpa [FourthBranch.face] using hlabels0⟩⟩
      · exact ⟨FourthBranch.yp, rest4,
          ⟨hcontains3Keep, by
            simpa [FourthBranch.face] using hlabels0⟩⟩
      · exact ⟨FourthBranch.zm, rest4,
          ⟨hcontains3Keep, by
            simpa [FourthBranch.face] using hlabels0⟩⟩
      · exact ⟨FourthBranch.zp, rest4,
          ⟨hcontains3Keep, by
            simpa [FourthBranch.face] using hlabels0⟩⟩

theorem layer4Progress_step4_of_head
    {rank : Fin numPairWords} {third : ThirdBranch}
    {fourth : FourthBranch}
    (hhead :
      TerminalStepState.HeadSome
        (layer4Machine.stateOf (Layer4State.s03 third))
        rank fourth.face) :
    TerminalContainedEvalProgressGate
      layer4Machine (Layer4State.s03 third) rank
        (Layer4State.s04 third fourth) :=
  terminalContainedEvalProgressGate_of_headSome_next?
    (machine := layer4Machine)
    (rank := rank)
    (state := Layer4State.s03 third)
    (nextState := Layer4State.s04 third fourth)
    (face := fourth.face)
    hhead
    (layer4_next?_s03_fourth third fourth)

theorem layer4Prefix4FrontierCons2_of_head4
    {rank : Fin numPairWords} {third : ThirdBranch}
    {fourth : FourthBranch}
    (hhead :
      TerminalStepState.HeadSome
        (layer4Machine.stateOf (Layer4State.s03 third))
        rank fourth.face) :
    Split10MPrefix4FrontierCons2 third.face fourth.face := by
  rcases hhead with ⟨_rest, hhead⟩
  have hcons := hhead.transducer_cons
  cases third <;> cases fourth
  all_goals
    try
      simp [Split10MPrefix4FrontierCons2, ThirdBranch.face,
        FourthBranch.face]
  all_goals
    simp [layer4Machine, Layer4State.stateOf, Layer4State.step3, Layer4State.step2,
      Layer4State.step1, Layer4State.step0, TerminalStepState.initial,
      TerminalStepState.nextStep, TerminalStepState.squareStep,
      TerminalStepState.triStep, ThirdBranch.face, FourthBranch.face,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingNextGap, topPairingLocalAxis, triLetterOfFace?,
      TriLetter.ofPairId?, TriLetter.act, TriLetter.ofSigns,
      TriLetter.yNeg, TriLetter.zNeg, topPairingTargetShadow,
      pairOfFace, isSquarePair, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.xor, SqParity.id, normalQ, matVec, matMul, reflM,
      matSub, scalarMat, outer, dot, matId] at hcons
    try norm_num at hcons

theorem layer4Progress_prefix4_of_prefix4
    {rank : Fin numPairWords} {third : ThirdBranch}
    {fourth : FourthBranch} {rest : List Face}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: third.face :: fourth.face :: rest) :
    TerminalContainedEvalProgressGate
      layer4Machine Layer4State.s00 rank
        (Layer4State.s04 third fourth) := by
  have hhead3 :
      TerminalStepState.HeadSome
        (layer4Machine.stateOf Layer4State.s02) rank third.face :=
    layer4Step3HeadSome_of_prefix hclosed
      (by
        simpa [topPairingRankFaceLabels] using hlabels)
  have hhead4 :
      TerminalStepState.HeadSome
        (layer4Machine.stateOf (Layer4State.s03 third))
        rank fourth.face :=
    layer4Step4HeadSome_of_prefix4 hclosed hlabels
  exact terminalContainedEvalProgressGate_trans
    layer4Machine
    (layer4Progress_prefix3_of_head hclosed hhead3)
    (layer4Progress_step4_of_head hhead4)

theorem layer4Progress_prefix4_of_split10M_labels
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {face₀ face₁ : Face} {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: face₀ :: face₁ :: rest)
    (hfrontier : Split10MPrefix4FrontierCons2 face₀ face₁) :
    ∃ third : ThirdBranch, ∃ fourth : FourthBranch,
      face₀ = third.face ∧ face₁ = fourth.face ∧
        TerminalContainedEvalProgressGate
          layer4Machine Layer4State.s00 rank
            (Layer4State.s04 third fourth) := by
  rcases hfrontier with htmpm | hyp | hzm
  · rcases htmpm with ⟨rfl, htppm | hzm⟩
    · subst face₁
      exact ⟨ThirdBranch.tmpm, FourthBranch.tppm, rfl, rfl,
        layer4Progress_prefix4_of_prefix4 hclosed
          (by
            simpa [ThirdBranch.face, FourthBranch.face] using hlabels)⟩
    · subst face₁
      exact ⟨ThirdBranch.tmpm, FourthBranch.zm, rfl, rfl,
        layer4Progress_prefix4_of_prefix4 hclosed
          (by
            simpa [ThirdBranch.face, FourthBranch.face] using hlabels)⟩
  · rcases hyp with ⟨rfl, htmmm | hzm⟩
    · subst face₁
      exact ⟨ThirdBranch.yp, FourthBranch.tmmm, rfl, rfl,
        layer4Progress_prefix4_of_prefix4 hclosed
          (by
            simpa [ThirdBranch.face, FourthBranch.face] using hlabels)⟩
    · subst face₁
      exact ⟨ThirdBranch.yp, FourthBranch.zm, rfl, rfl,
        layer4Progress_prefix4_of_prefix4 hclosed
          (by
            simpa [ThirdBranch.face, FourthBranch.face] using hlabels)⟩
  · rcases hzm with ⟨rfl, htmpp | hyp | hzp⟩
    · subst face₁
      exact ⟨ThirdBranch.zm, FourthBranch.tmpp, rfl, rfl,
        layer4Progress_prefix4_of_prefix4 hclosed
          (by
            simpa [ThirdBranch.face, FourthBranch.face] using hlabels)⟩
    · subst face₁
      exact ⟨ThirdBranch.zm, FourthBranch.yp, rfl, rfl,
        layer4Progress_prefix4_of_prefix4 hclosed
          (by
            simpa [ThirdBranch.face, FourthBranch.face] using hlabels)⟩
    · subst face₁
      exact ⟨ThirdBranch.zm, FourthBranch.zp, rfl, rfl,
        layer4Progress_prefix4_of_prefix4 hclosed
          (by
            simpa [ThirdBranch.face, FourthBranch.face] using hlabels)⟩

theorem layer4Prefix4FrontierCons2_of_closed_prefix4
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {face₀ face₁ : Face} {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: face₀ :: face₁ :: rest) :
    Split10MPrefix4FrontierCons2 face₀ face₁ := by
  rcases topPairingStepScheduleLabels_prefix3 hclosed.schedule with
    htmpm | hyp | hzm
  · rcases htmpm with ⟨rest3, hlabels3⟩
    have hlabels' :
        faceLabelsInContributionOrder (fun f => f)
            (canonicalSeqOfPairWord (unrankPairWord rank)) =
          Face.xm :: Face.ym :: face₀ :: face₁ :: rest := by
      simpa [topPairingRankFaceLabels] using hlabels
    rw [hlabels'] at hlabels3
    simp at hlabels3
    rcases hlabels3 with ⟨rfl, _hrest3⟩
    let third : ThirdBranch := .tmpm
    have hhead3 :
        TerminalStepState.HeadSome
          (layer4Machine.stateOf Layer4State.s02) rank third.face :=
      layer4Step3HeadSome_of_prefix hclosed
        (by
          simpa [third, ThirdBranch.face, topPairingRankFaceLabels] using
            hlabels)
    rcases layer4Step4HeadSome_exists_of_head3 hclosed hhead3 with
      ⟨fourth, hhead4Some⟩
    rcases hhead4Some with ⟨rest4, hhead4⟩
    have hlabels4 := hhead4.labels
    rw [layer4_s03_pfx third] at hlabels4
    rw [hlabels] at hlabels4
    simp [third, ThirdBranch.face] at hlabels4
    rcases hlabels4 with ⟨hface₁, _hrest4⟩
    subst face₁
    exact layer4Prefix4FrontierCons2_of_head4
      ⟨rest4, hhead4⟩
  · rcases hyp with ⟨rest3, hlabels3⟩
    have hlabels' :
        faceLabelsInContributionOrder (fun f => f)
            (canonicalSeqOfPairWord (unrankPairWord rank)) =
          Face.xm :: Face.ym :: face₀ :: face₁ :: rest := by
      simpa [topPairingRankFaceLabels] using hlabels
    rw [hlabels'] at hlabels3
    simp at hlabels3
    rcases hlabels3 with ⟨rfl, _hrest3⟩
    let third : ThirdBranch := .yp
    have hhead3 :
        TerminalStepState.HeadSome
          (layer4Machine.stateOf Layer4State.s02) rank third.face :=
      layer4Step3HeadSome_of_prefix hclosed
        (by
          simpa [third, ThirdBranch.face, topPairingRankFaceLabels] using
            hlabels)
    rcases layer4Step4HeadSome_exists_of_head3 hclosed hhead3 with
      ⟨fourth, hhead4Some⟩
    rcases hhead4Some with ⟨rest4, hhead4⟩
    have hlabels4 := hhead4.labels
    rw [layer4_s03_pfx third] at hlabels4
    rw [hlabels] at hlabels4
    simp [third, ThirdBranch.face] at hlabels4
    rcases hlabels4 with ⟨hface₁, _hrest4⟩
    subst face₁
    exact layer4Prefix4FrontierCons2_of_head4
      ⟨rest4, hhead4⟩
  · rcases hzm with ⟨rest3, hlabels3⟩
    have hlabels' :
        faceLabelsInContributionOrder (fun f => f)
            (canonicalSeqOfPairWord (unrankPairWord rank)) =
          Face.xm :: Face.ym :: face₀ :: face₁ :: rest := by
      simpa [topPairingRankFaceLabels] using hlabels
    rw [hlabels'] at hlabels3
    simp at hlabels3
    rcases hlabels3 with ⟨rfl, _hrest3⟩
    let third : ThirdBranch := .zm
    have hhead3 :
        TerminalStepState.HeadSome
          (layer4Machine.stateOf Layer4State.s02) rank third.face :=
      layer4Step3HeadSome_of_prefix hclosed
        (by
          simpa [third, ThirdBranch.face, topPairingRankFaceLabels] using
            hlabels)
    rcases layer4Step4HeadSome_exists_of_head3 hclosed hhead3 with
      ⟨fourth, hhead4Some⟩
    rcases hhead4Some with ⟨rest4, hhead4⟩
    have hlabels4 := hhead4.labels
    rw [layer4_s03_pfx third] at hlabels4
    rw [hlabels] at hlabels4
    simp [third, ThirdBranch.face] at hlabels4
    rcases hlabels4 with ⟨hface₁, _hrest4⟩
    subst face₁
    exact layer4Prefix4FrontierCons2_of_head4
      ⟨rest4, hhead4⟩

theorem branchTableSuffixOk_of_closedSplit10MGraphSuffixProducer
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hsuffix : Split10MGraphSuffixProducer rank) :
    BranchTableSuffixOk rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) :=
  branchTableSuffixOk_root_of_graphClosedPrefix4_forall hclosed
    (fun face₀ face₁ rest graph₁ gain₁ graph₂ gain₂
      hlabels hgraph₁ hgraph₂ =>
        hsuffix face₀ face₁ rest hlabels
          (layer4Prefix4FrontierCons2_of_closed_prefix4
            hclosed hlabels)
          graph₁ gain₁ graph₂ gain₂ hgraph₁ hgraph₂)

theorem evalLanguageAtRank_of_closedSplit10MGraphSuffixProducer
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hsuffix : Split10MGraphSuffixProducer rank)
    (hfinish : Split10MFinalMarginProducer scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguageAtRank_of_branchTableSuffixOk hclosed
    (branchTableSuffixOk_of_closedSplit10MGraphSuffixProducer
      hclosed hsuffix)
    hfinish

theorem layer4Prefix4FrontierCons2_exists_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    ∃ third : ThirdBranch, ∃ fourth : FourthBranch,
      TerminalContainedEvalProgressGate
        layer4Machine Layer4State.s00 rank
          (Layer4State.s04 third fourth) ∧
        Split10MPrefix4FrontierCons2 third.face fourth.face := by
  rcases topPairingStepScheduleLabels_prefix3 hclosed.schedule with
    htmpm | hyp | hzm
  · rcases htmpm with ⟨rest3, hlabels3⟩
    let third : ThirdBranch := .tmpm
    have hhead3 :
        TerminalStepState.HeadSome
          (layer4Machine.stateOf Layer4State.s02) rank third.face :=
      layer4Step3HeadSome_of_prefix hclosed
        (by
          simpa [third, ThirdBranch.face, topPairingRankFaceLabels] using
            hlabels3)
    rcases layer4Step4HeadSome_exists_of_head3 hclosed hhead3 with
      ⟨fourth, hhead4⟩
    exact ⟨third, fourth,
      terminalContainedEvalProgressGate_trans
        layer4Machine
        (layer4Progress_prefix3_of_head hclosed hhead3)
        (layer4Progress_step4_of_head hhead4),
      layer4Prefix4FrontierCons2_of_head4 hhead4⟩
  · rcases hyp with ⟨rest3, hlabels3⟩
    let third : ThirdBranch := .yp
    have hhead3 :
        TerminalStepState.HeadSome
          (layer4Machine.stateOf Layer4State.s02) rank third.face :=
      layer4Step3HeadSome_of_prefix hclosed
        (by
          simpa [third, ThirdBranch.face, topPairingRankFaceLabels] using
            hlabels3)
    rcases layer4Step4HeadSome_exists_of_head3 hclosed hhead3 with
      ⟨fourth, hhead4⟩
    exact ⟨third, fourth,
      terminalContainedEvalProgressGate_trans
        layer4Machine
        (layer4Progress_prefix3_of_head hclosed hhead3)
        (layer4Progress_step4_of_head hhead4),
      layer4Prefix4FrontierCons2_of_head4 hhead4⟩
  · rcases hzm with ⟨rest3, hlabels3⟩
    let third : ThirdBranch := .zm
    have hhead3 :
        TerminalStepState.HeadSome
          (layer4Machine.stateOf Layer4State.s02) rank third.face :=
      layer4Step3HeadSome_of_prefix hclosed
        (by
          simpa [third, ThirdBranch.face, topPairingRankFaceLabels] using
            hlabels3)
    rcases layer4Step4HeadSome_exists_of_head3 hclosed hhead3 with
      ⟨fourth, hhead4⟩
    exact ⟨third, fourth,
      terminalContainedEvalProgressGate_trans
        layer4Machine
        (layer4Progress_prefix3_of_head hclosed hhead3)
        (layer4Progress_step4_of_head hhead4),
      layer4Prefix4FrontierCons2_of_head4 hhead4⟩

theorem layer4Progress_prefix4_exists_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    ∃ third : ThirdBranch, ∃ fourth : FourthBranch,
      TerminalContainedEvalProgressGate
        layer4Machine Layer4State.s00 rank
          (Layer4State.s04 third fourth) := by
  rcases topPairingStepScheduleLabels_prefix3 hclosed.schedule with
    htmpm | hyp | hzm
  · rcases htmpm with ⟨rest3, hlabels3⟩
    let third : ThirdBranch := .tmpm
    have hhead3 :
        TerminalStepState.HeadSome
          (layer4Machine.stateOf Layer4State.s02) rank third.face :=
      layer4Step3HeadSome_of_prefix hclosed
        (by
          simpa [third, ThirdBranch.face, topPairingRankFaceLabels] using
            hlabels3)
    rcases layer4Step4HeadSome_exists_of_head3 hclosed hhead3 with
      ⟨fourth, hhead4⟩
    exact ⟨third, fourth,
      terminalContainedEvalProgressGate_trans
        layer4Machine
        (layer4Progress_prefix3_of_head hclosed hhead3)
        (layer4Progress_step4_of_head hhead4)⟩
  · rcases hyp with ⟨rest3, hlabels3⟩
    let third : ThirdBranch := .yp
    have hhead3 :
        TerminalStepState.HeadSome
          (layer4Machine.stateOf Layer4State.s02) rank third.face :=
      layer4Step3HeadSome_of_prefix hclosed
        (by
          simpa [third, ThirdBranch.face, topPairingRankFaceLabels] using
            hlabels3)
    rcases layer4Step4HeadSome_exists_of_head3 hclosed hhead3 with
      ⟨fourth, hhead4⟩
    exact ⟨third, fourth,
      terminalContainedEvalProgressGate_trans
        layer4Machine
        (layer4Progress_prefix3_of_head hclosed hhead3)
        (layer4Progress_step4_of_head hhead4)⟩
  · rcases hzm with ⟨rest3, hlabels3⟩
    let third : ThirdBranch := .zm
    have hhead3 :
        TerminalStepState.HeadSome
          (layer4Machine.stateOf Layer4State.s02) rank third.face :=
      layer4Step3HeadSome_of_prefix hclosed
        (by
          simpa [third, ThirdBranch.face, topPairingRankFaceLabels] using
            hlabels3)
    rcases layer4Step4HeadSome_exists_of_head3 hclosed hhead3 with
      ⟨fourth, hhead4⟩
    exact ⟨third, fourth,
      terminalContainedEvalProgressGate_trans
        layer4Machine
        (layer4Progress_prefix3_of_head hclosed hhead3)
        (layer4Progress_step4_of_head hhead4)⟩

/--
Packaged semantic layer-4 terminal-machine frontier.

This is the current deterministic terminal-machine handoff: every closed
top-pairing rank reaches one of the compact layer-4 generated machine states,
and the same proof supplies the split-10M graph prefix frontier fact used by
the Bellman graph suffix route.  It is intentionally a progress gate rather
than a terminal gate; the remaining production task is to continue this
machine proof from the layer-4 frontier to a terminal state.
-/
def Layer4MachineFrontierGate (rank : Fin numPairWords) : Prop :=
  ∃ third : ThirdBranch, ∃ fourth : FourthBranch,
    TerminalContainedEvalProgressGate
      layer4Machine Layer4State.s00 rank
        (Layer4State.s04 third fourth) ∧
      Split10MPrefix4FrontierCons2 third.face fourth.face

theorem layer4MachineFrontierGate_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    Layer4MachineFrontierGate rank := by
  rcases layer4Prefix4FrontierCons2_exists_of_closed hclosed with
    ⟨third, fourth, hprogress, hfrontier⟩
  exact ⟨third, fourth, hprogress, hfrontier⟩

/--
All-rank layer-4 frontier producer for the deterministic terminal-machine
pivot.  This is the strongest terminal-machine fact currently proved from the
closed language without using selected-prefix or accepted-trace membership.
-/
structure Layer4MachineFrontierGateAll : Prop where
  family :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
      Layer4MachineFrontierGate rank

def layer4MachineFrontierGateAll : Layer4MachineFrontierGateAll where
  family := by
    intro rank hclosed
    exact layer4MachineFrontierGate_of_closed hclosed

/--
Compose the proved layer-4 semantic frontier with a generated terminal
continuation from that frontier.

This is the next production theorem shape: the future emitter only has to
prove terminal contained eval-prefix gates for the compact layer-4 frontier
states, and this theorem lifts them back to the initial terminal machine
state.
-/
theorem terminalContainedEvalPrefixGate_of_layer4MachineFrontierGate
    {rank : Fin numPairWords}
    (hfrontier : Layer4MachineFrontierGate rank)
    (hterminal :
      ∀ third fourth,
        TerminalContainedEvalPrefixGate
          layer4Machine (Layer4State.s04 third fourth) rank) :
    TerminalContainedEvalPrefixGate
      layer4Machine Layer4State.s00 rank := by
  rcases hfrontier with ⟨third, fourth, hprogress, _hgraphFrontier⟩
  exact terminalContainedEvalPrefixGate_trans_progress
    layer4Machine hprogress (hterminal third fourth)

/--
Reachable-frontier variant of
`terminalContainedEvalPrefixGate_of_layer4MachineFrontierGate`.

The layer-4 frontier carries the graph-prefix frontier predicate, so generated
terminal continuations only need to cover the reachable third/fourth pairs,
not the full cartesian product of branch enums.
-/
theorem terminalContainedEvalPrefixGate_of_layer4MachineReachableFrontierGate
    {rank : Fin numPairWords}
    (hfrontier : Layer4MachineFrontierGate rank)
    (hterminal :
      ∀ third fourth,
        Split10MPrefix4FrontierCons2 third.face fourth.face ->
          TerminalContainedEvalPrefixGate
            layer4Machine (Layer4State.s04 third fourth) rank) :
    TerminalContainedEvalPrefixGate
      layer4Machine Layer4State.s00 rank := by
  rcases hfrontier with ⟨third, fourth, hprogress, hgraphFrontier⟩
  exact terminalContainedEvalPrefixGate_trans_progress
    layer4Machine hprogress (hterminal third fourth hgraphFrontier)

/--
Reachable-frontier continuation variant where the generated continuation may
assume semantic containment of the layer-4 state.

The containment proof is already produced by the layer-4 frontier progress
gate, so continuation leaves should not reconstruct the first four labels.
-/
theorem terminalContainedEvalPrefixGate_of_layer4MachineReachableFrontierGate_fromContains
    {rank : Fin numPairWords}
    (hfrontier : Layer4MachineFrontierGate rank)
    (hterminal :
      ∀ third fourth,
        Split10MPrefix4FrontierCons2 third.face fourth.face ->
          TerminalStepState.Contains
            (layer4Machine.stateOf (Layer4State.s04 third fourth)) rank ->
          TerminalContainedEvalPrefixGate
            layer4Machine (Layer4State.s04 third fourth) rank) :
    TerminalContainedEvalPrefixGate
      layer4Machine Layer4State.s00 rank := by
  rcases hfrontier with ⟨third, fourth, hprogress, hgraphFrontier⟩
  have hcontains :
      TerminalStepState.Contains
        (layer4Machine.stateOf (Layer4State.s04 third fourth)) rank :=
    contains_of_containedEvalProgressGate layer4Machine hprogress
  exact terminalContainedEvalPrefixGate_trans_progress
    layer4Machine hprogress
      (hterminal third fourth hgraphFrontier hcontains)

/--
All-rank version of the layer-4 frontier-to-terminal handoff.  This theorem is
still conditional on a generated continuation theorem from each layer-4
frontier state, but it removes the need for that continuation theorem to
re-prove the closed-language start prefix.
-/
theorem terminalContainedEvalPrefixGate_of_layer4MachineFrontierAll
    {rank : Fin numPairWords}
    (hfrontierAll : Layer4MachineFrontierGateAll)
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hterminal :
      ∀ third fourth,
        TerminalContainedEvalPrefixGate
          layer4Machine (Layer4State.s04 third fourth) rank) :
    TerminalContainedEvalPrefixGate
      layer4Machine Layer4State.s00 rank :=
  terminalContainedEvalPrefixGate_of_layer4MachineFrontierGate
    (hfrontierAll.family rank hclosed)
    hterminal

/--
All-rank reachable-frontier continuation package.

This is the production-facing continuation interface for the layer-4 terminal
machine: future generated modules may prove continuations only for reachable
split-10M frontier pairs, while the start prefix remains supplied by
`Layer4MachineFrontierGateAll`.
-/
structure Layer4ReachableTerminalContinuationAll : Prop where
  terminal :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
      ∀ third fourth,
        Split10MPrefix4FrontierCons2 third.face fourth.face ->
          TerminalContainedEvalPrefixGate
            layer4Machine (Layer4State.s04 third fourth) rank

theorem terminalContainedEvalPrefixGate_of_layer4ReachableTerminalContinuationAll
    {rank : Fin numPairWords}
    (hfrontierAll : Layer4MachineFrontierGateAll)
    (hcontinuation : Layer4ReachableTerminalContinuationAll)
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalContainedEvalPrefixGate
      layer4Machine Layer4State.s00 rank :=
  terminalContainedEvalPrefixGate_of_layer4MachineReachableFrontierGate
    (hfrontierAll.family rank hclosed)
    (fun third fourth hfrontier =>
      hcontinuation.terminal rank hclosed third fourth hfrontier)

/--
All-rank reachable-frontier continuation package where each generated leaf may
assume the layer-4 state's semantic containment fact.

This is the narrowest current continuation target: the closed-language prefix,
the reachable split-10M frontier pair, and layer-4 containment are all supplied
by reusable semantic theorems.
-/
structure Layer4ReachableTerminalContinuationFromContainsAll : Prop where
  terminal :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
      ∀ third fourth,
        Split10MPrefix4FrontierCons2 third.face fourth.face ->
          TerminalStepState.Contains
            (layer4Machine.stateOf (Layer4State.s04 third fourth)) rank ->
          TerminalContainedEvalPrefixGate
            layer4Machine (Layer4State.s04 third fourth) rank

theorem terminalContainedEvalPrefixGate_of_layer4ReachableTerminalContinuationFromContainsAll
    {rank : Fin numPairWords}
    (hfrontierAll : Layer4MachineFrontierGateAll)
    (hcontinuation : Layer4ReachableTerminalContinuationFromContainsAll)
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalContainedEvalPrefixGate
      layer4Machine Layer4State.s00 rank :=
  terminalContainedEvalPrefixGate_of_layer4MachineReachableFrontierGate_fromContains
    (hfrontierAll.family rank hclosed)
    (fun third fourth hfrontier hcontains =>
      hcontinuation.terminal rank hclosed third fourth hfrontier hcontains)

/--
Generic first-four layer-4 prefix interface for a full generated terminal
machine.

Unlike `layer4Machine`, a production machine must continue after the layer-4
frontier and eventually reach terminal producer states.  This structure records
only the reusable semantic first-four prefix: every closed rank reaches one of
the compact reachable layer-4 frontier states in the same machine.
-/
structure Layer4ReachablePrefixMachine
    {StateId : Type} (machine : TerminalStepStatePartialMachine StateId) where
  start : StateId
  after4 : ThirdBranch -> FourthBranch -> StateId
  start_state : machine.stateOf start = TerminalStepState.initial
  progress :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        ∃ third : ThirdBranch, ∃ fourth : FourthBranch,
          TerminalContainedEvalProgressGate
            machine start rank (after4 third fourth) ∧
            Split10MPrefix4FrontierCons2 third.face fourth.face

def layer4ReachablePrefixMachine :
    Layer4ReachablePrefixMachine layer4Machine where
  start := Layer4State.s00
  after4 := fun third fourth => Layer4State.s04 third fourth
  start_state := layer4_start_state
  progress := by
    intro rank hclosed
    exact layer4MachineFrontierGate_of_closed hclosed

/--
Continuation package for a full generated terminal machine whose first four
steps satisfy `Layer4ReachablePrefixMachine`.

Generated suffix leaves may assume the semantic containment of the layer-4
frontier state.  The prefix machine supplies that containment from the checked
progress gate, so leaves do not replay the closed-language prefix.
-/
structure Layer4PrefixMachineContinuationFromContainsAll
    {StateId : Type}
    (machine : TerminalStepStatePartialMachine StateId)
    (frontierPrefix : Layer4ReachablePrefixMachine machine) : Prop where
  terminal :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
      ∀ third fourth,
        Split10MPrefix4FrontierCons2 third.face fourth.face ->
          TerminalStepState.Contains
            (machine.stateOf (frontierPrefix.after4 third fourth)) rank ->
          TerminalContainedEvalPrefixGate
            machine (frontierPrefix.after4 third fourth) rank

/--
Compose a generic full-machine layer-4 prefix with reachable suffix
continuations.

This is the production-shaped theorem: the same generated machine supplies the
first-four prefix, the suffix continuation, and the final terminal producer
state.
-/
theorem terminalContainedEvalPrefixGate_of_layer4PrefixMachineContinuationFromContainsAll
    {StateId : Type}
    {machine : TerminalStepStatePartialMachine StateId}
    (frontierPrefix : Layer4ReachablePrefixMachine machine)
    (hcontinuation :
      Layer4PrefixMachineContinuationFromContainsAll machine frontierPrefix)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalContainedEvalPrefixGate machine frontierPrefix.start rank := by
  rcases frontierPrefix.progress rank hclosed with
    ⟨third, fourth, hprogress, hfrontier⟩
  have hcontains :
      TerminalStepState.Contains
        (machine.stateOf (frontierPrefix.after4 third fourth)) rank :=
    contains_of_containedEvalProgressGate machine hprogress
  exact terminalContainedEvalPrefixGate_trans_progress
    machine hprogress
      (hcontinuation.terminal rank hclosed third fourth hfrontier hcontains)

theorem terminalStateFrontierSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateFrontierSmoke
