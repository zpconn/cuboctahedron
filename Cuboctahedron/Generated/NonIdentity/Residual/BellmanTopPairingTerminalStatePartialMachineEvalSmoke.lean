import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedTransducerProducerSocket

/-!
Bounded evaluator smoke for the terminal-state partial machine.

This file exercises the generic eval socket on the finite partial-machine
smoke.  The theorem surface uses an explicit face prefix and the generic
`evalLabelStepFn` bridge; it does not mention accepted trace IDs.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedTransducerProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge

def smokeEvalPrefix : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp,
    Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.zm, Face.zp]

abbrev GraphEvalAcceptedSequenceBadFaceAtRank :
    Fin numPairWords -> Face -> Prop :=
  Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank

theorem smokePartialMachine_eval_prefix :
    evalLabelStepFn (nextEval smokePartialMachine)
        SmokePartialState.s00 smokeEvalPrefix =
      some (SmokePartialState.s13, 0) := by
  rfl

theorem smokePartialMachine_eval_prefix2 :
    evalLabelStepFn (nextEval smokePartialMachine)
        SmokePartialState.s00 [Face.xm, Face.ym] =
      some (SmokePartialState.s02, 0) := by
  rfl

theorem smokePartialMachine_start_state :
    smokePartialMachine.stateOf SmokePartialState.s00 =
      TerminalStepState.initial := by
  rfl

theorem terminalTraceLabels_of_smokePartialEval
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hlabels :
      topPairingRankFaceLabels rank = smokeEvalPrefix ++ [Face.xp]) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) :=
  terminalTraceLabels_of_eval_prefix_from_initial
    smokePartialMachine
    hclosed
    smokePartialMachine_start_state
    hlabels
    smokePartialMachine_eval_prefix
    True.intro

theorem terminalTraceLabels_of_smokePartialEvalPrefix
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hprefix :
      ∃ rest : List Face,
        topPairingRankFaceLabels rank = smokeEvalPrefix ++ rest) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) :=
  terminalTraceLabels_of_eval_prefix_exists_from_initial
    smokePartialMachine
    hclosed
    smokePartialMachine_start_state
    hprefix
    smokePartialMachine_eval_prefix
    True.intro

theorem smokePartialEvalPrefixGate
    {rank : Fin numPairWords}
    (hprefix :
      ∃ rest : List Face,
        topPairingRankFaceLabels rank = smokeEvalPrefix ++ rest) :
    TerminalEvalPrefixGate
      smokePartialMachine SmokePartialState.s00 rank := by
  rcases hprefix with ⟨rest, hprefix⟩
  exact ⟨smokeEvalPrefix, SmokePartialState.s13, 0,
    rest, hprefix, smokePartialMachine_eval_prefix, True.intro⟩

theorem smokeContainedEvalPrefixGate
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hprefix :
      ∃ rest : List Face,
        topPairingRankFaceLabels rank = smokeEvalPrefix ++ rest) :
    TerminalContainedEvalPrefixGate
      smokePartialMachine SmokePartialState.s00 rank := by
  rcases hprefix with ⟨rest, hprefix⟩
  refine ⟨smokeEvalPrefix, SmokePartialState.s13, 0,
    rest, ?_, ?_, smokePartialMachine_eval_prefix, True.intro⟩
  · rw [smokePartialMachine_start_state]
    exact initial_contains_of_closed hclosed
  · rw [smokePartialMachine_start_state]
    simpa [TerminalStepState.initial] using hprefix

theorem smokeContainedEvalProgressGate_prefix2
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalContainedEvalProgressGate
      smokePartialMachine SmokePartialState.s00 rank SmokePartialState.s02 := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym hclosed.schedule with
    ⟨rest, hlabels⟩
  refine ⟨[Face.xm, Face.ym], 0, rest, ?_, ?_,
    smokePartialMachine_eval_prefix2⟩
  · rw [smokePartialMachine_start_state]
    exact initial_contains_of_closed hclosed
  · rw [smokePartialMachine_start_state]
    simpa [TerminalStepState.initial, topPairingRankFaceLabels] using hlabels

theorem smokeStep2Contains_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TerminalStepState.Contains
      (smokePartialMachine.stateOf SmokePartialState.s02) rank :=
  contains_of_containedEvalProgressGate smokePartialMachine
    (smokeContainedEvalProgressGate_prefix2 hclosed)

theorem smokePartialEvalPrefixGate_of_contained
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hprefix :
      ∃ rest : List Face,
        topPairingRankFaceLabels rank = smokeEvalPrefix ++ rest) :
    TerminalEvalPrefixGate
      smokePartialMachine SmokePartialState.s00 rank :=
  terminalEvalPrefixGate_of_containedEvalPrefixGate_from_initial
    smokePartialMachine
    smokePartialMachine_start_state
    (smokeContainedEvalPrefixGate hclosed hprefix)

theorem terminalTraceLabels_of_smokePartialEvalPrefixGate
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hprefix :
      ∃ rest : List Face,
        topPairingRankFaceLabels rank = smokeEvalPrefix ++ rest) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) :=
  terminalTraceLabels_of_evalPrefixGate_from_initial
    smokePartialMachine
    hclosed
    smokePartialMachine_start_state
    (smokePartialEvalPrefixGate hprefix)

/--
The bounded partial-machine eval smoke feeds the closed-transducer producer
socket.  This is a representative semantic route for generated terminal
machines: prove a checked eval-prefix gate, then supply the independent
depth-11 graph suffix and final-margin producer facts.
-/
theorem closedTransducerProducer_of_smokePartialEvalPrefixGate
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        GraphEvalAcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      ∃ rest : List Face,
        topPairingRankFaceLabels rank = smokeEvalPrefix ++ rest)
    (hdepth11 : Split10MDepth11GraphPathProducer rank)
    (hfinal : Split10MFinalMarginProducer scaledMargin rank) :
    StrengthenedClosedTransducerProducer scaledMargin rank :=
  closedTransducerProducer_of_terminalEvalPrefixGate
    (machine := smokePartialMachine)
    (start := SmokePartialState.s00)
    hstrengthened
    smokePartialMachine_start_state
    (smokePartialEvalPrefixGate hprefix)
    hdepth11
    hfinal

theorem closedTransducerProducer_of_smokeContainedEvalPrefixGate
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        GraphEvalAcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      ∃ rest : List Face,
        topPairingRankFaceLabels rank = smokeEvalPrefix ++ rest)
    (hdepth11 : Split10MDepth11GraphPathProducer rank)
    (hfinal : Split10MFinalMarginProducer scaledMargin rank) :
    StrengthenedClosedTransducerProducer scaledMargin rank :=
  closedTransducerProducer_of_terminalContainedEvalPrefixGate
    (machine := smokePartialMachine)
    (start := SmokePartialState.s00)
    hstrengthened
    smokePartialMachine_start_state
    (smokeContainedEvalPrefixGate hstrengthened.closed hprefix)
    hdepth11
    hfinal

theorem terminalStatePartialMachineEvalSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSmoke
