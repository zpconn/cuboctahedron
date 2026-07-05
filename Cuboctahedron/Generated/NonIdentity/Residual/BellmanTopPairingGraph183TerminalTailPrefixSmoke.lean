import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183TailTableSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket

/-!
Graph183 terminal-machine tail-prefix smoke.

This bounded smoke exercises the production suffix socket introduced for the
terminal-machine Bellman route.  It does not cover ranks and does not introduce
sampled membership.  Instead, it checks the local graph183 branch shape:

* `TopPairingTargetCompletionTail graph183TargetCompletionState rest` supplies
  a semantic target-completion tail;
* a semantic filter keeps only the accepted forced tail;
* the terminal-machine evaluator consumes the terminal-producing prefix of
  that tail, leaving the final schedule-forced `xp` to the generic terminal
  trace bridge.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183TerminalTailPrefixSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183TailTableSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket

def graph183TerminalPrefixLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm, Face.tpmm]

def graph183TerminalPrefixState : TerminalStepState :=
  (((((((TerminalStepState.initial.nextStep Face.xm).nextStep Face.ym).nextStep
    Face.tmpm).nextStep Face.zm).nextStep Face.zp).nextStep Face.tppm).nextStep
    Face.tpmm)

def graph183TailPrefixLabels : List Face :=
  [Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp]

def graph183TailPrefixRemaining : List Face :=
  [Face.xp]

def graph183TerminalFinishState : TerminalStepState :=
  ((((((graph183TerminalPrefixState.nextStep Face.tppp).nextStep
    Face.tmmm).nextStep Face.tpmp).nextStep Face.yp).nextStep Face.tmpp).nextStep
    Face.tmmp)

def graph183ForcedTailSuffixOk (rest : List Face) : Prop :=
  rest = graph183ForcedTail

theorem graph183ForcedTail_split :
    graph183ForcedTail = graph183TailPrefixLabels ++ graph183TailPrefixRemaining := by
  rfl

theorem graph183TerminalFinish_prefix_length :
    graph183TerminalFinishState.pfx.length = 13 := by
  rfl

theorem graph183TerminalFinish_completed_trace :
    graph183TerminalFinishState.pfx ++ [Face.xp] =
      acceptedFaceTrace_017 := by
  rfl

theorem graph183TerminalFinish_graphAccepted :
    GraphAcceptedTraceLabels
      (graph183TerminalFinishState.pfx ++ [Face.xp]) := by
  unfold GraphAcceptedTraceLabels
  simp [graph183TerminalFinish_completed_trace]

theorem graph183TerminalFinish_terminalTrace :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (graph183TerminalFinishState.pfx ++ [Face.xp]) := by
  exact Or.inr (Or.inl graph183TerminalFinish_graphAccepted)

def graph183TerminalFinishProducer :
    TerminalStepStateProducer graph183TerminalFinishState where
  prefix_length := graph183TerminalFinish_prefix_length
  terminalTrace := graph183TerminalFinish_terminalTrace

theorem graph183TerminalTailPrefixEval :
    evalLabelStepFn
        (nextEval TerminalStepStatePartialMachine.semantic)
        graph183TerminalPrefixState graph183TailPrefixLabels =
      some (graph183TerminalFinishState, 0) := by
  rfl

def graph183FilteredTailPrefixContinuation :
    TerminalTargetCompletionFilteredTailPrefixContinuation
      TerminalStepStatePartialMachine.semantic
      graph183TerminalPrefixState
      graph183TargetCompletionState
      graph183ForcedTailSuffixOk where
  terminal := by
    intro rest _htail hok
    subst rest
    exact ⟨graph183TailPrefixLabels, graph183TerminalFinishState, 0,
      graph183TailPrefixRemaining, graph183ForcedTail_split,
      graph183TerminalTailPrefixEval, graph183TerminalFinishProducer⟩

theorem graph183TerminalTailPrefixSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183TerminalTailPrefixSmoke
