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
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4TargetCompletionLocalStepSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph157ContinuationSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph169ContinuationSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183TailTableSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
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

def graph183Layer4PrefixState : TerminalStepState :=
  (((TerminalStepState.initial.nextStep Face.xm).nextStep Face.ym).nextStep
    Face.tmpm).nextStep Face.zm

def graph183TailPrefixLabels : List Face :=
  [Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp]

def graph183Layer4TailPrefixLabels : List Face :=
  [Face.zp, Face.tppm, Face.tpmm] ++ graph183TailPrefixLabels

def graph183TailPrefixRemaining : List Face :=
  [Face.xp]

def graph183TerminalFinishState : TerminalStepState :=
  ((((((graph183TerminalPrefixState.nextStep Face.tppp).nextStep
    Face.tmmm).nextStep Face.tpmp).nextStep Face.yp).nextStep Face.tmpp).nextStep
    Face.tmmp)

def graph183ForcedTailSuffixOk (rest : List Face) : Prop :=
  rest = graph183ForcedTail

def graph183Layer4ForcedTailSuffixOk (rest : List Face) : Prop :=
  rest = Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail

theorem graph183ForcedTailSuffixOk_of_strengthened_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: rest))
    (htail : Graph183TargetCompletionTail rest) :
    graph183ForcedTailSuffixOk rest := by
  unfold graph183ForcedTailSuffixOk
  rcases graph183_tail_eq_forced_or_tmmp_branch htail with
    hforced | hblocked
  · exact hforced
  · rcases hblocked with ⟨restTail, hrest, hblockedTail⟩
    subst rest
    exact False.elim
      (graph183_blocked_branch_absurd_of_acceptedSequenceBadFace
        hstrengthened hprefix hblockedTail)

theorem graph183Layer4ForcedTailSuffixOk_of_strengthened_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest)
    (htail : Graph150TargetCompletionTail rest) :
    graph183Layer4ForcedTailSuffixOk rest := by
  unfold graph183Layer4ForcedTailSuffixOk
  rcases graph150_rest_nonempty_of_targetCompletionTail htail with
    ⟨face0, rest0, hrest0⟩
  subst rest
  have hzp := graph150_head_of_targetCompletionTail htail
  subst face0
  have htail157 : Graph157TargetCompletionTail rest0 := by
    simpa [Graph157TargetCompletionTail, graph157TargetCompletionState] using
      (TopPairingTargetCompletionTail.tail_next htail)
  rcases graph157_rest_nonempty_of_targetCompletionTail htail157 with
    ⟨face1, rest1, hrest1⟩
  subst rest0
  have htppm := graph157_head_of_targetCompletionTail htail157
  subst face1
  have htail169 : Graph169TargetCompletionTail rest1 := by
    simpa [Graph169TargetCompletionTail, graph169TargetCompletionState] using
      (TopPairingTargetCompletionTail.tail_next htail157)
  rcases graph169_rest_nonempty_of_targetCompletionTail htail169 with
    ⟨face2, rest2, hrest2⟩
  subst rest1
  have htpmm := graph169_head_of_targetCompletionTail htail169
  subst face2
  have htail183 : Graph183TargetCompletionTail rest2 := by
    simpa [Graph183TargetCompletionTail, graph183TargetCompletionState] using
      (TopPairingTargetCompletionTail.tail_next htail169)
  have hok :=
    graph183ForcedTailSuffixOk_of_strengthened_prefix
      hstrengthened hprefix htail183
  simpa [graph183ForcedTailSuffixOk] using hok

theorem graph183ForcedTail_split :
    graph183ForcedTail = graph183TailPrefixLabels ++ graph183TailPrefixRemaining := by
  rfl

theorem graph183Layer4ForcedTail_split :
    Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail =
      graph183Layer4TailPrefixLabels ++ graph183TailPrefixRemaining := by
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

theorem graph183Layer4TailPrefixEval :
    evalLabelStepFn
        (nextEval TerminalStepStatePartialMachine.semantic)
        graph183Layer4PrefixState graph183Layer4TailPrefixLabels =
      some (graph183TerminalFinishState, 0) := by
  rfl

theorem graph183Layer4PrefixState_contains_of_strengthened_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    TerminalStepState.Contains graph183Layer4PrefixState rank := by
  have hclosed := hstrengthened.toTopPairingClosedLanguageAtRank
  have h0 :
      TerminalStepState.Contains TerminalStepState.initial rank :=
    initial_contains_of_closed hclosed
  have h1 :
      TerminalStepState.Contains
        (TerminalStepState.initial.nextStep Face.xm) rank := by
    refine contains_nextStep
      (rank := rank) (state := TerminalStepState.initial)
      (face := Face.xm)
      (rest := Face.ym :: Face.tmpm :: Face.zm :: rest)
      h0 ?_
    simpa [Depth11Layer4PrefixAtRank, TerminalStepState.initial] using
      hprefix
  have h2 :
      TerminalStepState.Contains
        ((TerminalStepState.initial.nextStep Face.xm).nextStep Face.ym)
        rank := by
    refine contains_nextStep
      (rank := rank)
      (state := TerminalStepState.initial.nextStep Face.xm)
      (face := Face.ym)
      (rest := Face.tmpm :: Face.zm :: rest)
      h1 ?_
    simpa [Depth11Layer4PrefixAtRank, TerminalStepState.initial,
      TerminalStepState.nextStep, TerminalStepState.squareStep,
      triLetterOfFace?, pairOfFace, TriLetter.ofPairId?] using hprefix
  have h3 :
      TerminalStepState.Contains
        (((TerminalStepState.initial.nextStep Face.xm).nextStep Face.ym).nextStep
          Face.tmpm)
        rank := by
    refine contains_nextStep
      (rank := rank)
      (state :=
        (TerminalStepState.initial.nextStep Face.xm).nextStep Face.ym)
      (face := Face.tmpm)
      (rest := Face.zm :: rest)
      h2 ?_
    simpa [Depth11Layer4PrefixAtRank, TerminalStepState.initial,
      TerminalStepState.nextStep, TerminalStepState.squareStep,
      TerminalStepState.triStep, triLetterOfFace?, pairOfFace,
      TriLetter.ofPairId?] using hprefix
  have h4 :
      TerminalStepState.Contains graph183Layer4PrefixState rank := by
    refine contains_nextStep
      (rank := rank)
      (state :=
        ((TerminalStepState.initial.nextStep Face.xm).nextStep Face.ym).nextStep
          Face.tmpm)
      (face := Face.zm)
      (rest := rest)
      h3 ?_
    simpa [Depth11Layer4PrefixAtRank, graph183Layer4PrefixState,
      TerminalStepState.initial, TerminalStepState.nextStep,
      TerminalStepState.squareStep, TerminalStepState.triStep,
      triLetterOfFace?, pairOfFace, TriLetter.ofPairId?] using hprefix
  exact h4

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

def graph183Layer4FilteredTailPrefixContinuation :
    TerminalTargetCompletionFilteredTailPrefixContinuation
      TerminalStepStatePartialMachine.semantic
      graph183Layer4PrefixState
      graph150TargetCompletionState
      graph183Layer4ForcedTailSuffixOk where
  terminal := by
    intro rest _htail hok
    subst rest
    exact ⟨graph183Layer4TailPrefixLabels, graph183TerminalFinishState, 0,
      graph183TailPrefixRemaining, graph183Layer4ForcedTail_split,
      graph183Layer4TailPrefixEval, graph183TerminalFinishProducer⟩

theorem graph183FilteredTailPrefixTerminal_of_strengthened_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: rest))
    (htail : Graph183TargetCompletionTail rest) :
    ∃ labels finish gain remaining,
      rest = labels ++ remaining ∧
        evalLabelStepFn
            (nextEval TerminalStepStatePartialMachine.semantic)
            graph183TerminalPrefixState labels =
          some (finish, gain) ∧
          TerminalStepStatePartialMachine.semantic.IsTerminal finish :=
  graph183FilteredTailPrefixContinuation.terminal rest htail
    (graph183ForcedTailSuffixOk_of_strengthened_prefix
      hstrengthened hprefix htail)

theorem graph183Layer4FilteredTailPrefixTerminal_of_strengthened_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest)
    (htail : Graph150TargetCompletionTail rest) :
    ∃ labels finish gain remaining,
      rest = labels ++ remaining ∧
        evalLabelStepFn
            (nextEval TerminalStepStatePartialMachine.semantic)
            graph183Layer4PrefixState labels =
          some (finish, gain) ∧
          TerminalStepStatePartialMachine.semantic.IsTerminal finish :=
  graph183Layer4FilteredTailPrefixContinuation.terminal rest htail
    (graph183Layer4ForcedTailSuffixOk_of_strengthened_prefix
      hstrengthened hprefix htail)

theorem graph183Layer4ContainedEvalPrefixGate_of_strengthened_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest)
    (htail : Graph150TargetCompletionTail rest) :
    TerminalContainedEvalPrefixGate
      TerminalStepStatePartialMachine.semantic graph183Layer4PrefixState
      rank := by
  have hcontains :=
    graph183Layer4PrefixState_contains_of_strengthened_prefix
      hstrengthened hprefix
  rcases graph183Layer4FilteredTailPrefixTerminal_of_strengthened_prefix
      hstrengthened hprefix htail with
    ⟨labels, finish, gain, remaining, hrest, heval, hterminal⟩
  refine ⟨labels, finish, gain, remaining, hcontains, ?_, heval, hterminal⟩
  subst rest
  have hpfx :
      (TerminalStepStatePartialMachine.semantic.stateOf
        graph183Layer4PrefixState).pfx =
          [Face.xm, Face.ym, Face.tmpm, Face.zm] := by
    rfl
  rw [hpfx]
  simpa [Depth11Layer4PrefixAtRank, List.append_assoc] using hprefix

theorem graph183Layer4CompletionTail_of_strengthened_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    Graph150TargetCompletionTail rest :=
  acceptedSequenceGraph183CompletionTailFamily_of_semanticCursor.completionTail
    rank hstrengthened rest hprefix

theorem graph183Layer4ContainedEvalPrefixGate_of_strengthened_prefix_semantic
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    TerminalContainedEvalPrefixGate
      TerminalStepStatePartialMachine.semantic graph183Layer4PrefixState
      rank :=
  graph183Layer4ContainedEvalPrefixGate_of_strengthened_prefix
    hstrengthened hprefix
    (graph183Layer4CompletionTail_of_strengthened_prefix
      hstrengthened hprefix)

theorem graph183TerminalTailPrefixSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183TerminalTailPrefixSmoke
