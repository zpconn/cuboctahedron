import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSmoke

/-!
Bounded finite partial-machine smoke for the top-pairing terminal producer.

This file instantiates `TerminalStepStatePartialMachine` with a tiny generated
state enum for one diagnostic terminal path.  The public theorem in this smoke
is phrased only through the finite terminal state and the generic partial
machine socket; accepted trace IDs are confined to the imported bounded
terminal-state producer smoke.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket

inductive SmokePartialState where
  | s00 | s01 | s02 | s03 | s04 | s05 | s06
  | s07 | s08 | s09 | s10 | s11 | s12 | s13
  deriving DecidableEq, Repr

namespace SmokePartialState

def stateOf : SmokePartialState -> TerminalStepState
  | .s00 => smokeStep0
  | .s01 => smokeStep1
  | .s02 => smokeStep2
  | .s03 => smokeStep3
  | .s04 => smokeStep4
  | .s05 => smokeStep5
  | .s06 => smokeStep6
  | .s07 => smokeStep7
  | .s08 => smokeStep8
  | .s09 => smokeStep9
  | .s10 => smokeStep10
  | .s11 => smokeStep11
  | .s12 => smokeStep12
  | .s13 => smokeStep13

def next? : SmokePartialState -> Face -> Option SmokePartialState
  | .s00, Face.xm => some .s01
  | .s01, Face.ym => some .s02
  | .s02, Face.tmpm => some .s03
  | .s03, Face.tppm => some .s04
  | .s04, Face.tpmm => some .s05
  | .s05, Face.tppp => some .s06
  | .s06, Face.tmmm => some .s07
  | .s07, Face.tpmp => some .s08
  | .s08, Face.tmmp => some .s09
  | .s09, Face.tmpp => some .s10
  | .s10, Face.yp => some .s11
  | .s11, Face.zm => some .s12
  | .s12, Face.zp => some .s13
  | _, _ => none

def IsTerminal : SmokePartialState -> Prop
  | .s13 => True
  | _ => False

theorem next_sound :
    ∀ state face nextState,
      next? state face = some nextState ->
        stateOf nextState =
          TerminalStepState.nextStep (stateOf state) face := by
  intro state face nextState hnext
  cases state <;> cases face <;>
    simp [next?, stateOf, smokeStep0, smokeStep1, smokeStep2,
      smokeStep3, smokeStep4, smokeStep5, smokeStep6, smokeStep7,
      smokeStep8, smokeStep9, smokeStep10, smokeStep11, smokeStep12,
      smokeStep13] at hnext ⊢
  all_goals cases hnext; rfl

theorem terminalProducer :
    ∀ state, IsTerminal state ->
      TerminalStepStateProducer (stateOf state) := by
  intro state hterminal
  cases state <;> simp [IsTerminal, stateOf] at hterminal ⊢
  exact smokeStep13Producer

end SmokePartialState

def smokePartialMachine :
    TerminalStepStatePartialMachine SmokePartialState where
  stateOf := SmokePartialState.stateOf
  next? := SmokePartialState.next?
  next_sound := SmokePartialState.next_sound
  IsTerminal := SmokePartialState.IsTerminal
  terminalProducer := SmokePartialState.terminalProducer

theorem terminalTraceLabels_of_smokePartialTerminal
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hcontains :
      TerminalStepState.Contains
        (smokePartialMachine.stateOf SmokePartialState.s13) rank) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) :=
  TerminalStepStatePartialMachine.terminalTraceLabels_of_terminal
    smokePartialMachine hclosed hcontains True.intro

theorem terminalStatePartialMachineSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSmoke
