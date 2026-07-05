import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedNextFrontierSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket

set_option linter.unusedSimpArgs false

/-!
Graph221 terminal-machine tail-prefix smoke.

This module exercises the first branching frontier on the `zm,tmpp` semantic
lane.  The preceding frontier smoke proves a deterministic target-completion
chain to graph `221`.  At graph `221`, the Bellman graph branches, so this file
uses the filtered suffix socket rather than pretending the next face is forced.

The continuation remains rank-free: it consumes one of the graph-accepted
semantic suffixes and leaves the final schedule-forced `xp` to the terminal
producer.  It contains no sampled ranks, selected-prefix ids, or exact affine
keys.

The local target-completion facts below also record the current semantic
boundary: after the `yp,tmpm` branch, target-completion alone still permits a
`zp` head.  Production coverage must therefore use the strengthened product
state with Bellman/tri-source constraints, not target-completion alone.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221TerminalTailPrefixSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket

def graph221PrefixLabels : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp,
    Face.tppm, Face.tmmp, Face.tpmm]

def graph221Layer4PrefixLabels : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp]

def graph221Layer4ForcedTailPrefixLabels : List Face :=
  [Face.tppp, Face.tpmp, Face.tppm, Face.tmmp, Face.tpmm]

def graph221PrefixState : TerminalStepState :=
  (((((((((TerminalStepState.initial.nextStep Face.xm).nextStep Face.ym).nextStep
    Face.zm).nextStep Face.tmpp).nextStep Face.tppp).nextStep
    Face.tpmp).nextStep Face.tppm).nextStep Face.tmmp).nextStep Face.tpmm)

def graph221Layer4PrefixState : TerminalStepState :=
  (((TerminalStepState.initial.nextStep Face.xm).nextStep Face.ym).nextStep
    Face.zm).nextStep Face.tmpp

def graph221TargetCompletionState : TopPairingTargetCompletionState :=
  graph202TargetCompletionState.next Face.tpmm

abbrev Graph221TargetCompletionTail (labels : List Face) : Prop :=
  TopPairingTargetCompletionTail graph221TargetCompletionState labels

def graph221StrengthenedEvalState : StrengthenedClosedEvalState :=
  match strengthenedClosedEvalNext
      strengthenedClosedPrefix8ZmTmppTpppTpmpTppmTmmpEvalState
      Face.tpmm with
  | some (state, _gain) => state
  | none => strengthenedClosedPrefix8ZmTmppTpppTpmpTppmTmmpEvalState

theorem graph221StrengthenedEvalState_next :
    strengthenedClosedEvalNext
        strengthenedClosedPrefix8ZmTmppTpppTpmpTppmTmmpEvalState
        Face.tpmm =
      some (graph221StrengthenedEvalState, (-36 : Int)) := by
  rfl

theorem graph221Layer4ForcedTailPrefixEval :
    evalLabelStepFn strengthenedClosedEvalNext
        strengthenedClosedPrefix4ZmTmppEvalState
        graph221Layer4ForcedTailPrefixLabels =
      some (graph221StrengthenedEvalState, (-264 : Int)) := by
  rfl

theorem graph221Layer4PrefixEval :
    evalLabelStepFn
        (nextEval TerminalStepStatePartialMachine.semantic)
        TerminalStepState.initial graph221Layer4PrefixLabels =
      some (graph221Layer4PrefixState, 0) := by
  rfl

theorem graph221Layer4ForcedTerminalPrefixEval :
    evalLabelStepFn
        (nextEval TerminalStepStatePartialMachine.semantic)
        graph221Layer4PrefixState graph221Layer4ForcedTailPrefixLabels =
      some (graph221PrefixState, 0) := by
  rfl

def graph221YpStrengthenedEvalState : StrengthenedClosedEvalState :=
  match strengthenedClosedEvalNext graph221StrengthenedEvalState Face.yp with
  | some (state, _gain) => state
  | none => graph221StrengthenedEvalState

theorem graph221YpStrengthenedEvalState_next :
    strengthenedClosedEvalNext graph221StrengthenedEvalState Face.yp =
      some (graph221YpStrengthenedEvalState, (-117 : Int)) := by
  rfl

def graph221YpTmpmStrengthenedEvalState : StrengthenedClosedEvalState :=
  match strengthenedClosedEvalNext graph221YpStrengthenedEvalState Face.tmpm with
  | some (state, _gain) => state
  | none => graph221YpStrengthenedEvalState

theorem graph221YpTmpmStrengthenedEvalState_next :
    strengthenedClosedEvalNext graph221YpStrengthenedEvalState Face.tmpm =
      some (graph221YpTmpmStrengthenedEvalState, (96 : Int)) := by
  rfl

/--
Product-state discriminator for the graph221 branch.

Target-completion alone permits a `zp` head after `yp,tmpm`, but the
strengthened evaluator has no such Bellman graph transition.
-/
theorem graph221YpTmpmStrengthenedEvalState_zp_none :
    strengthenedClosedEvalNext graph221YpTmpmStrengthenedEvalState Face.zp =
      none := by
  rfl

theorem graph221YpTmpmZp_strengthenedEval_none (rest : List Face) :
    evalLabelStepFn strengthenedClosedEvalNext graph221StrengthenedEvalState
        (Face.yp :: Face.tmpm :: Face.zp :: rest) =
      none := by
  rfl

private theorem no_tail_after
    {state : TopPairingTargetCompletionState} {rest : List Face}
    (hcomplete : state.canComplete = false)
    (h : TopPairingTargetCompletionTail state rest) :
    False :=
  TopPairingTargetCompletionTail.false_of_canComplete_eq_false hcomplete h

def graph221TmmmState : TopPairingTargetCompletionState :=
  graph221TargetCompletionState.next Face.tmmm

def graph221TmmmTmpmState : TopPairingTargetCompletionState :=
  graph221TmmmState.next Face.tmpm

def graph221TmmmTmpmYpState : TopPairingTargetCompletionState :=
  graph221TmmmTmpmState.next Face.yp

def graph221TmmmTmpmZpState : TopPairingTargetCompletionState :=
  graph221TmmmTmpmState.next Face.zp

def graph221TmmmTmpmYpZpState : TopPairingTargetCompletionState :=
  graph221TmmmTmpmYpState.next Face.zp

def graph221TmmmTmpmZpYpState : TopPairingTargetCompletionState :=
  graph221TmmmTmpmZpState.next Face.yp

def graph221YpState : TopPairingTargetCompletionState :=
  graph221TargetCompletionState.next Face.yp

def graph221YpTmpmState : TopPairingTargetCompletionState :=
  graph221YpState.next Face.tmpm

def graph221YpTmpmTmmmState : TopPairingTargetCompletionState :=
  graph221YpTmpmState.next Face.tmmm

def graph221YpTmpmTmmmZpState : TopPairingTargetCompletionState :=
  graph221YpTmpmTmmmState.next Face.zp

def graph221YpTmpmZpState : TopPairingTargetCompletionState :=
  graph221YpTmpmState.next Face.zp

private theorem graph221_tmpm_canComplete_false :
    (graph221TargetCompletionState.next Face.tmpm).canComplete = false := by
  rfl

private theorem graph221_zp_canComplete_false :
    (graph221TargetCompletionState.next Face.zp).canComplete = false := by
  rfl

private theorem graph221_yp_tmpm_zp_canComplete_false :
    graph221YpTmpmZpState.canComplete = false := by
  rfl

private theorem graph221_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph221TargetCompletionTail (face :: rest)) :
    face = Face.tmmm ∨ face = Face.tmpm ∨ face = Face.yp ∨
      face = Face.zp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [Graph221TargetCompletionTail, graph221TargetCompletionState,
      graph202TargetCompletionState, graph186TargetCompletionState,
      graph171TargetCompletionState, graph159TargetCompletionState,
      graph151TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?, TriLetter.act, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor] at hremaining hschedule hsquare ⊢

private theorem graph221_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph221TargetCompletionTail (face :: rest)) :
    face = Face.tmmm ∨ face = Face.yp := by
  rcases graph221_head_candidate_of_targetCompletionTail htail with
    htmmm | htmpm | hyp | hzp
  · exact Or.inl htmmm
  · subst face
    exact False.elim
      (no_tail_after graph221_tmpm_canComplete_false
        (TopPairingTargetCompletionTail.tail_next htail))
  · exact Or.inr hyp
  · subst face
    exact False.elim
      (no_tail_after graph221_zp_canComplete_false
        (TopPairingTargetCompletionTail.tail_next htail))

private theorem graph221_tmmm_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph221TmmmState (face :: rest)) :
    face = Face.tmpm := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph221TmmmState, graph221TargetCompletionState,
      graph202TargetCompletionState, graph186TargetCompletionState,
      graph171TargetCompletionState, graph159TargetCompletionState,
      graph151TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?, TriLetter.act, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor] at hremaining hschedule hsquare ⊢

private theorem graph221_tmmm_tmpm_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph221TmmmTmpmState
        (face :: rest)) :
    face = Face.yp ∨ face = Face.zp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph221TmmmTmpmState, graph221TmmmState,
      graph221TargetCompletionState, graph202TargetCompletionState,
      graph186TargetCompletionState, graph171TargetCompletionState,
      graph159TargetCompletionState, graph151TargetCompletionState,
      TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?, TriLetter.act, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor] at hremaining hschedule hsquare ⊢

private theorem graph221_tmmm_tmpm_yp_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph221TmmmTmpmYpState
        (face :: rest)) :
    face = Face.zp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph221TmmmTmpmYpState, graph221TmmmTmpmState,
      graph221TmmmState, graph221TargetCompletionState,
      graph202TargetCompletionState, graph186TargetCompletionState,
      graph171TargetCompletionState, graph159TargetCompletionState,
      graph151TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?, TriLetter.act, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor] at hremaining hschedule hsquare ⊢

private theorem graph221_tmmm_tmpm_zp_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph221TmmmTmpmZpState
        (face :: rest)) :
    face = Face.yp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph221TmmmTmpmZpState, graph221TmmmTmpmState,
      graph221TmmmState, graph221TargetCompletionState,
      graph202TargetCompletionState, graph186TargetCompletionState,
      graph171TargetCompletionState, graph159TargetCompletionState,
      graph151TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?, TriLetter.act, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor] at hremaining hschedule hsquare ⊢

private theorem graph221_yp_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph221YpState (face :: rest)) :
    face = Face.tmpm := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph221YpState, graph221TargetCompletionState,
      graph202TargetCompletionState, graph186TargetCompletionState,
      graph171TargetCompletionState, graph159TargetCompletionState,
      graph151TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?, TriLetter.act, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor] at hremaining hschedule hsquare ⊢

private theorem graph221_yp_tmpm_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph221YpTmpmState (face :: rest)) :
    face = Face.tmmm ∨ face = Face.zp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph221YpTmpmState, graph221YpState,
      graph221TargetCompletionState, graph202TargetCompletionState,
      graph186TargetCompletionState, graph171TargetCompletionState,
      graph159TargetCompletionState, graph151TargetCompletionState,
      TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?, TriLetter.act, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor] at hremaining hschedule hsquare ⊢

private theorem graph221_yp_tmpm_tmmm_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph221YpTmpmTmmmState
        (face :: rest)) :
    face = Face.zp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph221YpTmpmTmmmState, graph221YpTmpmState,
      graph221YpState, graph221TargetCompletionState,
      graph202TargetCompletionState, graph186TargetCompletionState,
      graph171TargetCompletionState, graph159TargetCompletionState,
      graph151TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?, TriLetter.act, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor] at hremaining hschedule hsquare ⊢

private theorem graph221_after_xp_tail_nil
    {state : TopPairingTargetCompletionState} {rest : List Face}
    (hremaining : (state.next Face.xp).remaining = [])
    (htail :
      TopPairingTargetCompletionTail (state.next Face.xp) rest) :
    rest = [] := by
  cases rest with
  | nil => rfl
  | cons face tail =>
      have hmem := TopPairingTargetCompletionTail.head_remaining htail
      simp [hremaining] at hmem

theorem graph151TargetCompletionTail_decompose_to_graph221
    {rest : List Face}
    (htail : Graph151TargetCompletionTail rest) :
    ∃ tail,
      rest = graph221Layer4ForcedTailPrefixLabels ++ tail ∧
        Graph221TargetCompletionTail tail := by
  cases rest with
  | nil =>
      cases htail with
      | nil hremaining _hsummary =>
          simp [Graph151TargetCompletionTail, graph151TargetCompletionState]
            at hremaining
  | cons face1 rest1 =>
      have hface1 := graph151_head_of_targetCompletionTail htail
      subst face1
      have htail1 := TopPairingTargetCompletionTail.tail_next htail
      cases rest1 with
      | nil =>
          cases htail1 with
          | nil hremaining _hsummary =>
              simp [graph159TargetCompletionState, graph151TargetCompletionState,
                TopPairingTargetCompletionState.next] at hremaining
      | cons face2 rest2 =>
          have hface2 := graph159_head_of_targetCompletionTail htail1
          subst face2
          have htail2 := TopPairingTargetCompletionTail.tail_next htail1
          cases rest2 with
          | nil =>
              cases htail2 with
              | nil hremaining _hsummary =>
                  simp [graph171TargetCompletionState,
                    graph159TargetCompletionState, graph151TargetCompletionState,
                    TopPairingTargetCompletionState.next] at hremaining
          | cons face3 rest3 =>
              have hface3 := graph171_head_of_targetCompletionTail htail2
              subst face3
              have htail3 := TopPairingTargetCompletionTail.tail_next htail2
              cases rest3 with
              | nil =>
                  cases htail3 with
                  | nil hremaining _hsummary =>
                      simp [graph186TargetCompletionState,
                        graph171TargetCompletionState,
                        graph159TargetCompletionState,
                        graph151TargetCompletionState,
                        TopPairingTargetCompletionState.next] at hremaining
              | cons face4 rest4 =>
                  have hface4 := graph186_head_of_targetCompletionTail htail3
                  subst face4
                  have htail4 :=
                    TopPairingTargetCompletionTail.tail_next htail3
                  cases rest4 with
                  | nil =>
                      cases htail4 with
                      | nil hremaining _hsummary =>
                          simp [graph202TargetCompletionState,
                            graph186TargetCompletionState,
                            graph171TargetCompletionState,
                            graph159TargetCompletionState,
                            graph151TargetCompletionState,
                            TopPairingTargetCompletionState.next] at hremaining
                  | cons face5 rest5 =>
                      have hface5 :=
                        graph202_head_of_targetCompletionTail htail4
                      subst face5
                      have htail5 :=
                        TopPairingTargetCompletionTail.tail_next htail4
                      exact ⟨rest5, rfl, by
                        simpa [Graph221TargetCompletionTail,
                          graph221TargetCompletionState,
                          graph202TargetCompletionState,
                          graph186TargetCompletionState,
                          graph171TargetCompletionState,
                          graph159TargetCompletionState,
                          graph151TargetCompletionState] using htail5⟩

private theorem graph221_tmmm_tmpm_yp_zp_tail_eq_xp
    {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph221TmmmTmpmYpZpState rest) :
    rest = [Face.xp] := by
  cases rest with
  | nil =>
      cases htail with
      | nil hremaining _hsummary =>
          simp [graph221TmmmTmpmYpZpState, graph221TmmmTmpmYpState,
            graph221TmmmTmpmState, graph221TmmmState,
            graph221TargetCompletionState, graph202TargetCompletionState,
            graph186TargetCompletionState, graph171TargetCompletionState,
            graph159TargetCompletionState, graph151TargetCompletionState,
            TopPairingTargetCompletionState.next] at hremaining
  | cons face tail =>
      have hremaining := TopPairingTargetCompletionTail.head_remaining htail
      have hface : face = Face.xp := by
        cases face <;>
          simp [graph221TmmmTmpmYpZpState, graph221TmmmTmpmYpState,
            graph221TmmmTmpmState, graph221TmmmState,
            graph221TargetCompletionState, graph202TargetCompletionState,
            graph186TargetCompletionState, graph171TargetCompletionState,
            graph159TargetCompletionState, graph151TargetCompletionState,
            TopPairingTargetCompletionState.next] at hremaining ⊢
      subst face
      have htailNext := TopPairingTargetCompletionTail.tail_next htail
      have htailNil :
          tail = [] :=
        graph221_after_xp_tail_nil (state := graph221TmmmTmpmYpZpState)
          (by rfl) htailNext
      subst tail
      rfl

private theorem graph221_tmmm_tmpm_zp_yp_tail_eq_xp
    {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph221TmmmTmpmZpYpState rest) :
    rest = [Face.xp] := by
  cases rest with
  | nil =>
      cases htail with
      | nil hremaining _hsummary =>
          simp [graph221TmmmTmpmZpYpState, graph221TmmmTmpmZpState,
            graph221TmmmTmpmState, graph221TmmmState,
            graph221TargetCompletionState, graph202TargetCompletionState,
            graph186TargetCompletionState, graph171TargetCompletionState,
            graph159TargetCompletionState, graph151TargetCompletionState,
            TopPairingTargetCompletionState.next] at hremaining
  | cons face tail =>
      have hremaining := TopPairingTargetCompletionTail.head_remaining htail
      have hface : face = Face.xp := by
        cases face <;>
          simp [graph221TmmmTmpmZpYpState, graph221TmmmTmpmZpState,
            graph221TmmmTmpmState, graph221TmmmState,
            graph221TargetCompletionState, graph202TargetCompletionState,
            graph186TargetCompletionState, graph171TargetCompletionState,
            graph159TargetCompletionState, graph151TargetCompletionState,
            TopPairingTargetCompletionState.next] at hremaining ⊢
      subst face
      have htailNext := TopPairingTargetCompletionTail.tail_next htail
      have htailNil :
          tail = [] :=
        graph221_after_xp_tail_nil (state := graph221TmmmTmpmZpYpState)
          (by rfl) htailNext
      subst tail
      rfl

private theorem graph221_yp_tmpm_tmmm_zp_tail_eq_xp
    {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph221YpTmpmTmmmZpState rest) :
    rest = [Face.xp] := by
  cases rest with
  | nil =>
      cases htail with
      | nil hremaining _hsummary =>
          simp [graph221YpTmpmTmmmZpState, graph221YpTmpmTmmmState,
            graph221YpTmpmState, graph221YpState,
            graph221TargetCompletionState, graph202TargetCompletionState,
            graph186TargetCompletionState, graph171TargetCompletionState,
            graph159TargetCompletionState, graph151TargetCompletionState,
            TopPairingTargetCompletionState.next] at hremaining
  | cons face tail =>
      have hremaining := TopPairingTargetCompletionTail.head_remaining htail
      have hface : face = Face.xp := by
        cases face <;>
          simp [graph221YpTmpmTmmmZpState, graph221YpTmpmTmmmState,
            graph221YpTmpmState, graph221YpState,
            graph221TargetCompletionState, graph202TargetCompletionState,
            graph186TargetCompletionState, graph171TargetCompletionState,
            graph159TargetCompletionState, graph151TargetCompletionState,
            TopPairingTargetCompletionState.next] at hremaining ⊢
      subst face
      have htailNext := TopPairingTargetCompletionTail.tail_next htail
      have htailNil :
          tail = [] :=
        graph221_after_xp_tail_nil (state := graph221YpTmpmTmmmZpState)
          (by rfl) htailNext
      subst tail
      rfl

private theorem no_tail_after_graph221_yp_tmpm_zp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail graph221YpTmpmZpState rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph221_yp_tmpm_zp_canComplete_false h

def graph221Tail029 : List Face :=
  [Face.tmmm, Face.tmpm, Face.yp, Face.zp, Face.xp]

def graph221Tail030 : List Face :=
  [Face.tmmm, Face.tmpm, Face.zp, Face.yp, Face.xp]

def graph221Tail031 : List Face :=
  [Face.yp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]

def graph221TailPrefix029 : List Face :=
  [Face.tmmm, Face.tmpm, Face.yp, Face.zp]

def graph221TailPrefix030 : List Face :=
  [Face.tmmm, Face.tmpm, Face.zp, Face.yp]

def graph221TailPrefix031 : List Face :=
  [Face.yp, Face.tmpm, Face.tmmm, Face.zp]

def graph221TailPrefixRemaining : List Face :=
  [Face.xp]

def graph221FinishState029 : TerminalStepState :=
  ((((graph221PrefixState.nextStep Face.tmmm).nextStep Face.tmpm).nextStep
    Face.yp).nextStep Face.zp)

def graph221FinishState030 : TerminalStepState :=
  ((((graph221PrefixState.nextStep Face.tmmm).nextStep Face.tmpm).nextStep
    Face.zp).nextStep Face.yp)

def graph221FinishState031 : TerminalStepState :=
  ((((graph221PrefixState.nextStep Face.yp).nextStep Face.tmpm).nextStep
    Face.tmmm).nextStep Face.zp)

def graph221AcceptedTailSuffixOk (rest : List Face) : Prop :=
  rest = graph221Tail029 ∨ rest = graph221Tail030 ∨ rest = graph221Tail031

theorem graph221AcceptedTailSuffixOk_or_blockedPrefix_of_targetCompletionTail
    {rest : List Face}
    (htail : Graph221TargetCompletionTail rest) :
    graph221AcceptedTailSuffixOk rest ∨
      ∃ tail, rest = Face.yp :: Face.tmpm :: Face.zp :: tail := by
  cases rest with
  | nil =>
      cases htail with
      | nil hremaining _hsummary =>
          simp [Graph221TargetCompletionTail, graph221TargetCompletionState,
            graph202TargetCompletionState, graph186TargetCompletionState,
            graph171TargetCompletionState, graph159TargetCompletionState,
            graph151TargetCompletionState, TopPairingTargetCompletionState.next]
            at hremaining
  | cons face1 rest1 =>
      rcases graph221_head_of_targetCompletionTail htail with hface1 | hface1
      · subst face1
        have htail1 := TopPairingTargetCompletionTail.tail_next htail
        cases rest1 with
        | nil =>
            cases htail1 with
            | nil hremaining _hsummary =>
                simp [graph221TmmmState, graph221TargetCompletionState,
                  graph202TargetCompletionState, graph186TargetCompletionState,
                  graph171TargetCompletionState, graph159TargetCompletionState,
                  graph151TargetCompletionState, TopPairingTargetCompletionState.next]
                  at hremaining
        | cons face2 rest2 =>
            have hface2 := graph221_tmmm_head_of_targetCompletionTail htail1
            subst face2
            have htail2 := TopPairingTargetCompletionTail.tail_next htail1
            cases rest2 with
            | nil =>
                cases htail2 with
                | nil hremaining _hsummary =>
                    simp [graph221TmmmTmpmState, graph221TmmmState,
                      graph221TargetCompletionState, graph202TargetCompletionState,
                      graph186TargetCompletionState, graph171TargetCompletionState,
                      graph159TargetCompletionState, graph151TargetCompletionState,
                      TopPairingTargetCompletionState.next] at hremaining
            | cons face3 rest3 =>
                rcases graph221_tmmm_tmpm_head_of_targetCompletionTail htail2 with
                  hface3 | hface3
                · subst face3
                  have htail3 := TopPairingTargetCompletionTail.tail_next htail2
                  cases rest3 with
                  | nil =>
                      cases htail3 with
                      | nil hremaining _hsummary =>
                          simp [graph221TmmmTmpmYpState,
                            graph221TmmmTmpmState, graph221TmmmState,
                            graph221TargetCompletionState,
                            graph202TargetCompletionState,
                            graph186TargetCompletionState,
                            graph171TargetCompletionState,
                            graph159TargetCompletionState,
                            graph151TargetCompletionState,
                            TopPairingTargetCompletionState.next] at hremaining
                  | cons face4 rest4 =>
                      have hface4 :=
                        graph221_tmmm_tmpm_yp_head_of_targetCompletionTail
                          htail3
                      subst face4
                      have htail4 :=
                        TopPairingTargetCompletionTail.tail_next htail3
                      have hrest4 :=
                        graph221_tmmm_tmpm_yp_zp_tail_eq_xp htail4
                      subst rest4
                      exact Or.inl (Or.inl rfl)
                · subst face3
                  have htail3 := TopPairingTargetCompletionTail.tail_next htail2
                  cases rest3 with
                  | nil =>
                      cases htail3 with
                      | nil hremaining _hsummary =>
                          simp [graph221TmmmTmpmZpState,
                            graph221TmmmTmpmState, graph221TmmmState,
                            graph221TargetCompletionState,
                            graph202TargetCompletionState,
                            graph186TargetCompletionState,
                            graph171TargetCompletionState,
                            graph159TargetCompletionState,
                            graph151TargetCompletionState,
                            TopPairingTargetCompletionState.next] at hremaining
                  | cons face4 rest4 =>
                      have hface4 :=
                        graph221_tmmm_tmpm_zp_head_of_targetCompletionTail
                          htail3
                      subst face4
                      have htail4 :=
                        TopPairingTargetCompletionTail.tail_next htail3
                      have hrest4 :=
                        graph221_tmmm_tmpm_zp_yp_tail_eq_xp htail4
                      subst rest4
                      exact Or.inl (Or.inr (Or.inl rfl))
      · subst face1
        have htail1 := TopPairingTargetCompletionTail.tail_next htail
        cases rest1 with
        | nil =>
            cases htail1 with
            | nil hremaining _hsummary =>
                simp [graph221YpState, graph221TargetCompletionState,
                  graph202TargetCompletionState, graph186TargetCompletionState,
                  graph171TargetCompletionState, graph159TargetCompletionState,
                  graph151TargetCompletionState, TopPairingTargetCompletionState.next]
                  at hremaining
        | cons face2 rest2 =>
            have hface2 := graph221_yp_head_of_targetCompletionTail htail1
            subst face2
            have htail2 := TopPairingTargetCompletionTail.tail_next htail1
            cases rest2 with
            | nil =>
                cases htail2 with
                | nil hremaining _hsummary =>
                    simp [graph221YpTmpmState, graph221YpState,
                      graph221TargetCompletionState, graph202TargetCompletionState,
                      graph186TargetCompletionState, graph171TargetCompletionState,
                      graph159TargetCompletionState, graph151TargetCompletionState,
                      TopPairingTargetCompletionState.next] at hremaining
            | cons face3 rest3 =>
                rcases graph221_yp_tmpm_head_of_targetCompletionTail htail2 with
                  hface3 | hface3
                · subst face3
                  have htail3 := TopPairingTargetCompletionTail.tail_next htail2
                  cases rest3 with
                  | nil =>
                      cases htail3 with
                      | nil hremaining _hsummary =>
                          simp [graph221YpTmpmTmmmState,
                            graph221YpTmpmState, graph221YpState,
                            graph221TargetCompletionState,
                            graph202TargetCompletionState,
                            graph186TargetCompletionState,
                            graph171TargetCompletionState,
                            graph159TargetCompletionState,
                            graph151TargetCompletionState,
                            TopPairingTargetCompletionState.next] at hremaining
                  | cons face4 rest4 =>
                      have hface4 :=
                        graph221_yp_tmpm_tmmm_head_of_targetCompletionTail
                          htail3
                      subst face4
                      have htail4 :=
                        TopPairingTargetCompletionTail.tail_next htail3
                      have hrest4 :=
                        graph221_yp_tmpm_tmmm_zp_tail_eq_xp htail4
                      subst rest4
                      exact Or.inl (Or.inr (Or.inr rfl))
                · subst face3
                  exact False.elim
                    (no_tail_after_graph221_yp_tmpm_zp
                      (TopPairingTargetCompletionTail.tail_next htail2))

theorem graph221AcceptedTailSuffixOk_of_targetCompletionTail
    {rest : List Face}
    (htail : Graph221TargetCompletionTail rest) :
    graph221AcceptedTailSuffixOk rest := by
  rcases graph221AcceptedTailSuffixOk_or_blockedPrefix_of_targetCompletionTail
      htail with hok | hblocked
  · exact hok
  · rcases hblocked with ⟨tail, hrest⟩
    subst rest
    have htail1 := TopPairingTargetCompletionTail.tail_next htail
    have htail2 := TopPairingTargetCompletionTail.tail_next htail1
    have htail3 := TopPairingTargetCompletionTail.tail_next htail2
    exact False.elim (no_tail_after_graph221_yp_tmpm_zp htail3)

theorem graph221AcceptedTailSuffixOk_of_targetCompletionTail_and_strengthenedEval
    {rest : List Face} {finish : StrengthenedClosedEvalState} {gain : Int}
    (htail : Graph221TargetCompletionTail rest)
    (_heval :
      evalLabelStepFn strengthenedClosedEvalNext graph221StrengthenedEvalState
          rest =
        some (finish, gain)) :
    graph221AcceptedTailSuffixOk rest := by
  exact graph221AcceptedTailSuffixOk_of_targetCompletionTail htail

theorem graph221AcceptedTailSuffixOk_of_graph151TargetCompletionTail_and_strengthenedEval
    {rest : List Face} {finish : StrengthenedClosedEvalState} {gain : Int}
    (htail : Graph151TargetCompletionTail rest)
    (heval :
      evalLabelStepFn strengthenedClosedEvalNext
          strengthenedClosedPrefix4ZmTmppEvalState rest =
        some (finish, gain)) :
    ∃ tail,
      rest = graph221Layer4ForcedTailPrefixLabels ++ tail ∧
        graph221AcceptedTailSuffixOk tail := by
  rcases graph151TargetCompletionTail_decompose_to_graph221 htail with
    ⟨tail, hrest, htail221⟩
  subst rest
  have htailEval :
      ∃ tailFinish tailGain,
        evalLabelStepFn strengthenedClosedEvalNext graph221StrengthenedEvalState
            tail =
          some (tailFinish, tailGain) := by
    cases htailEval :
        evalLabelStepFn strengthenedClosedEvalNext graph221StrengthenedEvalState
          tail with
    | none =>
        simp [graph221Layer4ForcedTailPrefixLabels, evalLabelStepFn,
          strengthenedClosed_prefix5_zm_tmpp_tppp_next_from_prefix4ZmTmpp,
          strengthenedClosed_prefix6_zm_tmpp_tppp_tpmp_next_from_prefix5,
          strengthenedClosed_prefix7_zm_tmpp_tppp_tpmp_tppm_next_from_prefix6,
          strengthenedClosed_prefix8_zm_tmpp_tppp_tpmp_tppm_tmmp_next_from_prefix7,
          graph221StrengthenedEvalState_next,
          htailEval] at heval
    | some result =>
        cases result with
        | mk tailFinish tailGain =>
            exact ⟨tailFinish, tailGain, rfl⟩
  rcases htailEval with ⟨tailFinish, tailGain, htailEval⟩
  exact ⟨tail, rfl,
    graph221AcceptedTailSuffixOk_of_targetCompletionTail_and_strengthenedEval
      htail221 htailEval⟩

def graph221Layer4AcceptedTailSuffixOk (rest : List Face) : Prop :=
  ∃ tail,
    rest = graph221Layer4ForcedTailPrefixLabels ++ tail ∧
      graph221AcceptedTailSuffixOk tail

theorem graph221Layer4AcceptedTailSuffixOk_of_graph151TargetCompletionTail
    {rest : List Face}
    (htail : Graph151TargetCompletionTail rest) :
    graph221Layer4AcceptedTailSuffixOk rest := by
  rcases graph151TargetCompletionTail_decompose_to_graph221 htail with
    ⟨tail, hrest, htail221⟩
  exact ⟨tail, hrest, graph221AcceptedTailSuffixOk_of_targetCompletionTail htail221⟩

theorem graph221Layer4AcceptedTailSuffixOk_or_blockedPrefix_of_graph151TargetCompletionTail
    {rest : List Face}
    (htail : Graph151TargetCompletionTail rest) :
    graph221Layer4AcceptedTailSuffixOk rest ∨
      ∃ tail,
        rest =
          graph221Layer4ForcedTailPrefixLabels ++
            Face.yp :: Face.tmpm :: Face.zp :: tail := by
  rcases graph151TargetCompletionTail_decompose_to_graph221 htail with
    ⟨tail, hrest, htail221⟩
  rcases graph221AcceptedTailSuffixOk_or_blockedPrefix_of_targetCompletionTail
      htail221 with hok | hblocked
  · exact Or.inl ⟨tail, hrest, hok⟩
  · rcases hblocked with ⟨blockedTail, htailEq⟩
    subst rest
    subst tail
    exact Or.inr ⟨blockedTail, by simp [List.append_assoc]⟩

theorem graph221Layer4AcceptedTailSuffixOk_of_graph151TargetCompletionTail_and_strengthenedEval
    {rest : List Face} {finish : StrengthenedClosedEvalState} {gain : Int}
    (htail : Graph151TargetCompletionTail rest)
    (heval :
      evalLabelStepFn strengthenedClosedEvalNext
          strengthenedClosedPrefix4ZmTmppEvalState rest =
        some (finish, gain)) :
    graph221Layer4AcceptedTailSuffixOk rest :=
  graph221AcceptedTailSuffixOk_of_graph151TargetCompletionTail_and_strengthenedEval
    htail heval

theorem graph151_usedFaceTail_of_acceptedSequence_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    TopPairingUsedFaceTail [Face.xm, Face.ym, Face.zm, Face.tmpp] rest := by
  apply TopPairingUsedFaceTail.of_actualFaceOmni_append
  have hactual := hstrengthened.actualFaceOmni
  change (topPairingRankFaceLabels rank).Nodup at hactual
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  rw [hprefix'] at hactual
  simpa [TopPairingActualFaceOmniLabels] using hactual

theorem graph151_restLength_of_acceptedSequence_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    rest.length = graph151TargetCompletionState.remaining.length := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hprefixLabels :
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [topPairingRankFaceLabels] using hprefix'
  have hlen := hstrengthened.toTopPairingClosedLanguageAtRank.schedule.1
  rw [hprefixLabels] at hlen
  simpa [graph151TargetCompletionState] using hlen

theorem graph151_stepScheduleTail_of_acceptedSequence_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    TopPairingStepScheduleFrom graph151TargetCompletionState.step rest := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hprefixLabels :
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [topPairingRankFaceLabels] using hprefix'
  have hschedule := hstrengthened.toTopPairingClosedLanguageAtRank.schedule.2
  rw [hprefixLabels] at hschedule
  have htail :=
    topPairingStepScheduleFrom_append
      (step := 0)
      (pfx := [Face.xm, Face.ym, Face.zm, Face.tmpp])
      (rest := rest) hschedule
  simpa [graph151TargetCompletionState] using htail

theorem graph151_squareGapTail_of_acceptedSequence_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    TopPairingSquareGapFrom graph151TargetCompletionState.gap rest := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hprefixLabels :
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [topPairingRankFaceLabels] using hprefix'
  have hgap := hstrengthened.toTopPairingClosedLanguageAtRank.squareGap
  rw [hprefixLabels] at hgap
  have htail :=
    topPairingSquareGapFrom_append
      (gap := 0)
      (pfx := [Face.xm, Face.ym, Face.zm, Face.tmpp])
      (rest := rest) hgap
  simpa [graph151TargetCompletionState, topPairingSquareGapAfter,
    isSquarePair, pairOfFace] using htail

theorem graph151_triCursorTail_of_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hcursor : TopPairingTargetCursorAtRank rank)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    TopPairingTriCursorFrom graph151TargetCompletionState.triState.shadowLen
      graph151TargetCompletionState.parity rest := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  unfold TopPairingTargetCursorAtRank at hcursor
  rw [hprefix'] at hcursor
  have htail1 :=
    TopPairingTriCursorFrom.cons_square_tail
      hcursor (by rfl : triLetterOfFace? Face.xm = none)
  have htail2 :=
    TopPairingTriCursorFrom.cons_square_tail
      htail1 (by rfl : triLetterOfFace? Face.ym = none)
  have htail3 :=
    TopPairingTriCursorFrom.cons_square_tail
      htail2 (by rfl : triLetterOfFace? Face.zm = none)
  rcases
      TopPairingTriCursorFrom.cons_tri_tail
        htail3 (by rfl : triLetterOfFace? Face.tmpp = some TriLetter.dm11)
    with ⟨_hk, _hletter, htail4⟩
  simpa [graph151TargetCompletionState, SqParity.id, SqParity.applyPair,
    SqParity.xor, SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
    SqParity.toggleZ, pairOfFace, strengthenedClosedPrefix4ZmTmppTransducerState,
    strengthenedClosedPrefix3ZmTransducerState, strengthenedClosedPrefix2TransducerState,
    strengthenedClosedPrefix1TransducerState, topPairingNextGap,
    topPairingNextLinear] using htail4

private def graph221TargetCompletionStateAfter :
    TopPairingTargetCompletionState -> List Face ->
      TopPairingTargetCompletionState
  | state, [] => state
  | state, face :: rest =>
      graph221TargetCompletionStateAfter (state.next face) rest

abbrev Graph151TargetCancellationTail (rest : List Face) : Prop :=
  (graph221TargetCompletionStateAfter graph151TargetCompletionState rest).triState.summary =
    topPairingTargetSummary

private theorem graph151_remaining_iff_not_prefix_used (face : Face) :
    face ∈ graph151TargetCompletionState.remaining ↔
      face ∉ [Face.xm, Face.ym, Face.zm, Face.tmpp] := by
  cases face <;> simp [graph151TargetCompletionState]

private theorem graph221TargetCompletionTail_of_semanticCore :
    ∀ {state : TopPairingTargetCompletionState} {used rest : List Face},
      (∀ face : Face, face ∈ state.remaining ↔ face ∉ used) ->
      state.remaining.Nodup ->
      rest.length = state.remaining.length ->
      TopPairingStepScheduleFrom state.step rest ->
      TopPairingSquareGapFrom state.gap rest ->
      TopPairingUsedFaceTail used rest ->
      (graph221TargetCompletionStateAfter state rest).triState.summary =
        topPairingTargetSummary ->
      TopPairingTargetCompletionTail state rest
  | state, used, [], hremaining, _hnodup, hlen, _hschedule, _hgap, _hused,
      hsummary => by
      cases hremainingEq : state.remaining with
      | nil =>
          exact TopPairingTargetCompletionTail.nil hremainingEq hsummary
      | cons face rest =>
          simp [hremainingEq] at hlen
  | state, used, face :: rest, hremaining, hnodup, hlen, hschedule, hgap,
      hused, hsummary => by
      unfold TopPairingStepScheduleFrom at hschedule
      rcases hschedule with ⟨hfaceSchedule, hscheduleRest⟩
      have hfaceRemaining : face ∈ state.remaining :=
        (hremaining face).2 (TopPairingUsedFaceTail.head_not_used hused)
      have hsquareAllowed : state.squareAllowed face := by
        unfold TopPairingTargetCompletionState.squareAllowed
        unfold TopPairingSquareGapFrom at hgap
        by_cases hsquare : isSquarePair (pairOfFace face) = true
        · rw [hsquare] at hgap
          simp [hsquare, hgap.1]
        · have hsquareFalse :
            isSquarePair (pairOfFace face) = false := by
              cases hpair : isSquarePair (pairOfFace face)
              · rfl
              · exact False.elim (hsquare hpair)
          simp [hsquareFalse]
      have hgapRest :
          TopPairingSquareGapFrom (state.next face).gap rest := by
        unfold TopPairingSquareGapFrom at hgap
        unfold TopPairingTargetCompletionState.next topPairingNextGap
        by_cases hsquare : isSquarePair (pairOfFace face) = true
        · rw [hsquare] at hgap
          simp [hsquare]
          exact hgap.2
        · have hsquareFalse :
            isSquarePair (pairOfFace face) = false := by
              cases hpair : isSquarePair (pairOfFace face)
              · rfl
              · exact False.elim (hsquare hpair)
          rw [hsquareFalse] at hgap
          simp [hsquareFalse]
          exact hgap
      have hremainingNext :
          ∀ f : Face,
            f ∈ (state.next face).remaining ↔ f ∉ face :: used := by
        intro f
        change f ∈ state.remaining.erase face ↔ f ∉ face :: used
        rw [hnodup.erase_eq_filter]
        simp [hremaining f, and_comm, and_left_comm, and_assoc]
      have hlenNext :
          rest.length = (state.next face).remaining.length := by
        have herase :
            (state.remaining.erase face).length + 1 =
              state.remaining.length :=
          List.length_erase_add_one hfaceRemaining
        have hlenSucc : rest.length + 1 = state.remaining.length := by
          simpa using hlen
        simp [TopPairingTargetCompletionState.next]
        omega
      have htail :=
        graph221TargetCompletionTail_of_semanticCore
          (state := state.next face)
          (used := face :: used)
          (rest := rest)
          hremainingNext (hnodup.erase face) hlenNext hscheduleRest hgapRest
          (TopPairingUsedFaceTail.cons_tail hused) hsummary
      exact TopPairingTargetCompletionTail.cons
        hfaceRemaining hfaceSchedule hsquareAllowed htail

theorem graph151_targetCompletionTail_of_semanticCore
    {rest : List Face}
    (hschedule :
      TopPairingStepScheduleFrom graph151TargetCompletionState.step rest)
    (hgap :
      TopPairingSquareGapFrom graph151TargetCompletionState.gap rest)
    (hused :
      TopPairingUsedFaceTail [Face.xm, Face.ym, Face.zm, Face.tmpp] rest)
    (hlen : rest.length = graph151TargetCompletionState.remaining.length)
    (hcancel : Graph151TargetCancellationTail rest) :
    Graph151TargetCompletionTail rest :=
  graph221TargetCompletionTail_of_semanticCore
    (state := graph151TargetCompletionState)
    (used := [Face.xm, Face.ym, Face.zm, Face.tmpp])
    (rest := rest)
    graph151_remaining_iff_not_prefix_used (by decide) hlen hschedule hgap
    hused hcancel

private theorem graph221TargetCompletionStateAfter_triState_eq_foldl_acted
    (state : TopPairingTargetCompletionState) (rest : List Face) :
    (graph221TargetCompletionStateAfter state rest).triState =
      (actedTriLettersFrom state.parity rest).foldl
        TriCancellationState.push state.triState := by
  induction rest generalizing state with
  | nil =>
      rfl
  | cons face rest ih =>
      cases face <;>
        simp [graph221TargetCompletionStateAfter,
          TopPairingTargetCompletionState.next,
          actedTriLettersFrom, triLetterOfFace?, pairOfFace,
          TriLetter.ofPairId?, SqParity.applyPair, SqParity.toggleForPair, ih]

theorem graph151_targetCancellationTail_of_triCursor
    {rest : List Face}
    (hcursor :
      TopPairingTriCursorFrom
        graph151TargetCompletionState.triState.shadowLen
        graph151TargetCompletionState.parity rest) :
    Graph151TargetCancellationTail rest := by
  have hacted := TopPairingTriCursorFrom.actedTriLetters_eq_drop hcursor
  unfold Graph151TargetCancellationTail
  rw [graph221TargetCompletionStateAfter_triState_eq_foldl_acted]
  rw [hacted]
  rfl

theorem graph151CompletionTail_of_strengthened_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    Graph151TargetCompletionTail rest := by
  have hcursor :=
    topPairingTriCursor_of_closed
      hstrengthened.toTopPairingClosedLanguageAtRank
  exact graph151_targetCompletionTail_of_semanticCore
    (graph151_stepScheduleTail_of_acceptedSequence_prefix
      hstrengthened hprefix)
    (graph151_squareGapTail_of_acceptedSequence_prefix
      hstrengthened hprefix)
    (graph151_usedFaceTail_of_acceptedSequence_prefix
      hstrengthened hprefix)
    (graph151_restLength_of_acceptedSequence_prefix
      hstrengthened hprefix)
    (graph151_targetCancellationTail_of_triCursor
      (graph151_triCursorTail_of_prefix hcursor hprefix))

theorem graph221Tail029_split :
    graph221Tail029 = graph221TailPrefix029 ++ graph221TailPrefixRemaining := by
  rfl

theorem graph221Tail030_split :
    graph221Tail030 = graph221TailPrefix030 ++ graph221TailPrefixRemaining := by
  rfl

theorem graph221Tail031_split :
    graph221Tail031 = graph221TailPrefix031 ++ graph221TailPrefixRemaining := by
  rfl

theorem graph221Finish029_prefix_length :
    graph221FinishState029.pfx.length = 13 := by
  rfl

theorem graph221Finish030_prefix_length :
    graph221FinishState030.pfx.length = 13 := by
  rfl

theorem graph221Finish031_prefix_length :
    graph221FinishState031.pfx.length = 13 := by
  rfl

theorem graph221Finish029_completed_trace :
    graph221FinishState029.pfx ++ [Face.xp] = acceptedFaceTrace_029 := by
  rfl

theorem graph221Finish030_completed_trace :
    graph221FinishState030.pfx ++ [Face.xp] = acceptedFaceTrace_030 := by
  rfl

theorem graph221Finish031_completed_trace :
    graph221FinishState031.pfx ++ [Face.xp] = acceptedFaceTrace_031 := by
  rfl

theorem graph221Finish029_graphAccepted :
    GraphAcceptedTraceLabels (graph221FinishState029.pfx ++ [Face.xp]) := by
  unfold GraphAcceptedTraceLabels
  simp [graph221Finish029_completed_trace]

theorem graph221Finish030_graphAccepted :
    GraphAcceptedTraceLabels (graph221FinishState030.pfx ++ [Face.xp]) := by
  unfold GraphAcceptedTraceLabels
  simp [graph221Finish030_completed_trace]

theorem graph221Finish031_graphAccepted :
    GraphAcceptedTraceLabels (graph221FinishState031.pfx ++ [Face.xp]) := by
  unfold GraphAcceptedTraceLabels
  simp [graph221Finish031_completed_trace]

theorem graph221Finish029_terminalTrace :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (graph221FinishState029.pfx ++ [Face.xp]) := by
  exact Or.inr (Or.inl graph221Finish029_graphAccepted)

theorem graph221Finish030_terminalTrace :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (graph221FinishState030.pfx ++ [Face.xp]) := by
  exact Or.inr (Or.inl graph221Finish030_graphAccepted)

theorem graph221Finish031_terminalTrace :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (graph221FinishState031.pfx ++ [Face.xp]) := by
  exact Or.inr (Or.inl graph221Finish031_graphAccepted)

def graph221FinishProducer029 :
    TerminalStepStateProducer graph221FinishState029 where
  prefix_length := graph221Finish029_prefix_length
  terminalTrace := graph221Finish029_terminalTrace

def graph221FinishProducer030 :
    TerminalStepStateProducer graph221FinishState030 where
  prefix_length := graph221Finish030_prefix_length
  terminalTrace := graph221Finish030_terminalTrace

def graph221FinishProducer031 :
    TerminalStepStateProducer graph221FinishState031 where
  prefix_length := graph221Finish031_prefix_length
  terminalTrace := graph221Finish031_terminalTrace

theorem graph221TailPrefix029Eval :
    evalLabelStepFn
        (nextEval TerminalStepStatePartialMachine.semantic)
        graph221PrefixState graph221TailPrefix029 =
      some (graph221FinishState029, 0) := by
  rfl

theorem graph221TailPrefix030Eval :
    evalLabelStepFn
        (nextEval TerminalStepStatePartialMachine.semantic)
        graph221PrefixState graph221TailPrefix030 =
      some (graph221FinishState030, 0) := by
  rfl

theorem graph221TailPrefix031Eval :
    evalLabelStepFn
        (nextEval TerminalStepStatePartialMachine.semantic)
        graph221PrefixState graph221TailPrefix031 =
      some (graph221FinishState031, 0) := by
  rfl

def graph221FilteredTailPrefixContinuation :
    TerminalTargetCompletionFilteredTailPrefixContinuation
      TerminalStepStatePartialMachine.semantic
      graph221PrefixState
      graph221TargetCompletionState
      graph221AcceptedTailSuffixOk where
  terminal := by
    intro rest _htail hok
    rcases hok with h029 | h030 | h031
    · subst rest
      exact ⟨graph221TailPrefix029, graph221FinishState029, 0,
        graph221TailPrefixRemaining, graph221Tail029_split,
        graph221TailPrefix029Eval, graph221FinishProducer029⟩
    · subst rest
      exact ⟨graph221TailPrefix030, graph221FinishState030, 0,
        graph221TailPrefixRemaining, graph221Tail030_split,
        graph221TailPrefix030Eval, graph221FinishProducer030⟩
    · subst rest
      exact ⟨graph221TailPrefix031, graph221FinishState031, 0,
        graph221TailPrefixRemaining, graph221Tail031_split,
        graph221TailPrefix031Eval, graph221FinishProducer031⟩

def graph221Layer4FilteredTailPrefixContinuation :
    TerminalTargetCompletionFilteredTailPrefixContinuation
      TerminalStepStatePartialMachine.semantic
      graph221Layer4PrefixState
      graph151TargetCompletionState
      graph221Layer4AcceptedTailSuffixOk where
  terminal := by
    intro rest htail hok
    rcases hok with ⟨tail, hrest, hokTail⟩
    rcases graph151TargetCompletionTail_decompose_to_graph221 htail with
      ⟨tail', hrest', htail221⟩
    subst rest
    have htailEq : tail = tail' := by
      exact List.append_cancel_left hrest'
    subst tail'
    rcases graph221FilteredTailPrefixContinuation.terminal
        tail htail221 hokTail with
      ⟨labels, finish, gain, remaining, htailSplit, heval, hterminal⟩
    refine ⟨graph221Layer4ForcedTailPrefixLabels ++ labels, finish, gain,
      remaining, ?_, ?_, hterminal⟩
    · simpa [List.append_assoc] using
        congrArg (fun xs => graph221Layer4ForcedTailPrefixLabels ++ xs)
          htailSplit
    · simpa using
        evalLabelStepFn_append graph221Layer4ForcedTerminalPrefixEval heval

theorem graph221Layer4PrefixState_contains_of_strengthened_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    TerminalStepState.Contains graph221Layer4PrefixState rank := by
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
      (rest := Face.ym :: Face.zm :: Face.tmpp :: rest)
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
      (rest := Face.zm :: Face.tmpp :: rest)
      h1 ?_
    simpa [Depth11Layer4PrefixAtRank, TerminalStepState.initial,
      TerminalStepState.nextStep, TerminalStepState.squareStep,
      triLetterOfFace?, pairOfFace, TriLetter.ofPairId?] using hprefix
  have h3 :
      TerminalStepState.Contains
        (((TerminalStepState.initial.nextStep Face.xm).nextStep Face.ym).nextStep
          Face.zm)
        rank := by
    refine contains_nextStep
      (rank := rank)
      (state :=
        (TerminalStepState.initial.nextStep Face.xm).nextStep Face.ym)
      (face := Face.zm)
      (rest := Face.tmpp :: rest)
      h2 ?_
    simpa [Depth11Layer4PrefixAtRank, TerminalStepState.initial,
      TerminalStepState.nextStep, TerminalStepState.squareStep,
      TerminalStepState.triStep, triLetterOfFace?, pairOfFace,
      TriLetter.ofPairId?] using hprefix
  have h4 :
      TerminalStepState.Contains graph221Layer4PrefixState rank := by
    refine contains_nextStep
      (rank := rank)
      (state :=
        ((TerminalStepState.initial.nextStep Face.xm).nextStep Face.ym).nextStep
          Face.zm)
      (face := Face.tmpp)
      (rest := rest)
      h3 ?_
    simpa [Depth11Layer4PrefixAtRank, graph221Layer4PrefixState,
      TerminalStepState.initial, TerminalStepState.nextStep,
      TerminalStepState.squareStep, TerminalStepState.triStep,
      triLetterOfFace?, pairOfFace, TriLetter.ofPairId?] using hprefix
  exact h4

theorem graph221Layer4FilteredTailPrefixTerminal_of_graph151TargetCompletionTail_and_strengthenedEval
    {rest : List Face} {finish : StrengthenedClosedEvalState} {gain : Int}
    (htail : Graph151TargetCompletionTail rest)
    (heval :
      evalLabelStepFn strengthenedClosedEvalNext
          strengthenedClosedPrefix4ZmTmppEvalState rest =
        some (finish, gain)) :
    ∃ labels terminalFinish terminalGain remaining,
      rest = labels ++ remaining ∧
        evalLabelStepFn
            (nextEval TerminalStepStatePartialMachine.semantic)
            graph221Layer4PrefixState labels =
          some (terminalFinish, terminalGain) ∧
          TerminalStepStatePartialMachine.semantic.IsTerminal terminalFinish :=
  graph221Layer4FilteredTailPrefixContinuation.terminal rest htail
    (graph221Layer4AcceptedTailSuffixOk_of_graph151TargetCompletionTail_and_strengthenedEval
      htail heval)

theorem graph221Layer4ContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_strengthenedEval
    {rank : Fin numPairWords} {rest : List Face}
    {finish : StrengthenedClosedEvalState} {gain : Int}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (htail : Graph151TargetCompletionTail rest)
    (heval :
      evalLabelStepFn strengthenedClosedEvalNext
          strengthenedClosedPrefix4ZmTmppEvalState rest =
        some (finish, gain)) :
    TerminalContainedEvalPrefixGate
      TerminalStepStatePartialMachine.semantic graph221Layer4PrefixState
      rank := by
  have hcontains :=
    graph221Layer4PrefixState_contains_of_strengthened_prefix
      hstrengthened hprefix
  rcases
      graph221Layer4FilteredTailPrefixTerminal_of_graph151TargetCompletionTail_and_strengthenedEval
        htail heval with
    ⟨labels, terminalFinish, terminalGain, remaining, hrest, htermEval,
      hterminal⟩
  refine ⟨labels, terminalFinish, terminalGain, remaining, hcontains, ?_,
    htermEval, hterminal⟩
  subst rest
  have hpfx :
      (TerminalStepStatePartialMachine.semantic.stateOf
        graph221Layer4PrefixState).pfx =
          [Face.xm, Face.ym, Face.zm, Face.tmpp] := by
    rfl
  rw [hpfx]
  simpa [Depth11Layer4PrefixAtRank, List.append_assoc] using hprefix

/--
Semantic-suffix version of the graph221 layer-4 gate.

The older bridge above receives a strengthened-evaluator success equation and
uses it only to derive `graph221Layer4AcceptedTailSuffixOk`.  This theorem
makes the production target explicit: prove the product-state suffix predicate
directly from closed semantic state, then the terminal-machine gate follows
without selected-prefix membership or a rank/path table.
-/
theorem graph221Layer4ContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_suffixOk
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (htail : Graph151TargetCompletionTail rest)
    (hok : graph221Layer4AcceptedTailSuffixOk rest) :
    TerminalContainedEvalPrefixGate
      TerminalStepStatePartialMachine.semantic graph221Layer4PrefixState
      rank := by
  have hcontains :=
    graph221Layer4PrefixState_contains_of_strengthened_prefix
      hstrengthened hprefix
  rcases graph221Layer4FilteredTailPrefixContinuation.terminal rest htail hok with
    ⟨labels, terminalFinish, terminalGain, remaining, hrest, htermEval,
      hterminal⟩
  refine ⟨labels, terminalFinish, terminalGain, remaining, hcontains, ?_,
    htermEval, hterminal⟩
  subst rest
  have hpfx :
      (TerminalStepStatePartialMachine.semantic.stateOf
        graph221Layer4PrefixState).pfx =
          [Face.xm, Face.ym, Face.zm, Face.tmpp] := by
    rfl
  rw [hpfx]
  simpa [Depth11Layer4PrefixAtRank, List.append_assoc] using hprefix

theorem graph221Layer4ProgressGate_of_strengthened_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    TerminalContainedEvalProgressGate
      TerminalStepStatePartialMachine.semantic TerminalStepState.initial rank
      graph221Layer4PrefixState := by
  refine ⟨graph221Layer4PrefixLabels, 0, rest, ?_, ?_,
    graph221Layer4PrefixEval⟩
  · exact initial_contains_of_closed
      hstrengthened.toTopPairingClosedLanguageAtRank
  · have hlabels :
      topPairingRankFaceLabels rank =
        graph221Layer4PrefixLabels ++ rest := by
      simpa [Depth11Layer4PrefixAtRank, graph221Layer4PrefixLabels] using
        hprefix
    have hpfx :
        (TerminalStepStatePartialMachine.semantic.stateOf
          TerminalStepState.initial).pfx = [] := by
      rfl
    rw [hpfx]
    simpa using hlabels

theorem graph221InitialContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_strengthenedEval
    {rank : Fin numPairWords} {rest : List Face}
    {finish : StrengthenedClosedEvalState} {gain : Int}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (htail : Graph151TargetCompletionTail rest)
    (heval :
      evalLabelStepFn strengthenedClosedEvalNext
          strengthenedClosedPrefix4ZmTmppEvalState rest =
        some (finish, gain)) :
    TerminalContainedEvalPrefixGate
      TerminalStepStatePartialMachine.semantic TerminalStepState.initial rank :=
  terminalContainedEvalPrefixGate_trans_progress
    TerminalStepStatePartialMachine.semantic
    (graph221Layer4ProgressGate_of_strengthened_prefix
      hstrengthened hprefix)
    (graph221Layer4ContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_strengthenedEval
      hstrengthened hprefix htail heval)

/--
Layer-4 graph221 gate from a semantic suffix predicate.

This is the non-circular bridge requested by the Bellman pivot: the remaining
work is now to prove `graph221Layer4AcceptedTailSuffixOk rest` from the
strengthened closed-language state, not to assume that the strengthened
evaluator already succeeds.
-/
theorem graph221InitialContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_suffixOk
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (htail : Graph151TargetCompletionTail rest)
    (hok : graph221Layer4AcceptedTailSuffixOk rest) :
    TerminalContainedEvalPrefixGate
      TerminalStepStatePartialMachine.semantic TerminalStepState.initial rank :=
  terminalContainedEvalPrefixGate_trans_progress
    TerminalStepStatePartialMachine.semantic
    (graph221Layer4ProgressGate_of_strengthened_prefix
      hstrengthened hprefix)
    (graph221Layer4ContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_suffixOk
      hstrengthened hprefix htail hok)

theorem graph221InitialContainedEvalPrefixGate_of_strengthened_prefix_and_eval
    {rank : Fin numPairWords} {rest : List Face}
    {finish : StrengthenedClosedEvalState} {gain : Int}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (heval :
      evalLabelStepFn strengthenedClosedEvalNext
          strengthenedClosedPrefix4ZmTmppEvalState rest =
        some (finish, gain)) :
    TerminalContainedEvalPrefixGate
      TerminalStepStatePartialMachine.semantic TerminalStepState.initial rank :=
  graph221InitialContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_strengthenedEval
    hstrengthened hprefix
    (graph151CompletionTail_of_strengthened_prefix hstrengthened hprefix)
    heval

/--
Emitter-facing graph221 semantic suffix target.

Generated production code should try to prove this structure from the
deterministic product-state/cancellation/tri-source language.  If proving this
field requires selected prefixes, sampled ranks, accepted-trace ids, exact
affine RHS keys, or one branch per observed path, the route should pivot to the
cocycle/cancellation-summary quotient experiment instead.
-/
structure Graph221Layer4SemanticSuffixFamily : Prop where
  suffixOk :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      ∀ rest,
        Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest ->
        Graph151TargetCompletionTail rest ->
        graph221Layer4AcceptedTailSuffixOk rest

def graph221Layer4SemanticSuffixFamily_targetCompletion :
    Graph221Layer4SemanticSuffixFamily where
  suffixOk := by
    intro _rank _hstrengthened rest _hprefix htail
    exact graph221Layer4AcceptedTailSuffixOk_of_graph151TargetCompletionTail htail

/--
Sharper graph221 production target.

Target-completion reduces the graph221 frontier to the three accepted suffixes
or the single blocked prefix `yp,tmpm,zp,...`.  Production code can therefore
prove the semantic suffix family by excluding that blocked prefix from the
strengthened product-state/cancellation language.  This keeps the remaining
obligation small and avoids assuming an evaluator-success equation.
-/
structure Graph221Layer4BlockedPrefixExcludedFamily : Prop where
  noBlocked :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      ∀ rest,
        Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest ->
        Graph151TargetCompletionTail rest ->
        ¬ ∃ tail,
          rest =
            graph221Layer4ForcedTailPrefixLabels ++
              Face.yp :: Face.tmpm :: Face.zp :: tail

theorem graph221Layer4SemanticSuffixFamily_of_blockedPrefixExcluded
    (hfamily : Graph221Layer4BlockedPrefixExcludedFamily) :
    Graph221Layer4SemanticSuffixFamily where
  suffixOk := by
    intro rank hstrengthened rest hprefix htail
    rcases
        graph221Layer4AcceptedTailSuffixOk_or_blockedPrefix_of_graph151TargetCompletionTail
          htail with hok | hblocked
    · exact hok
    · exact False.elim
        ((hfamily.noBlocked rank hstrengthened rest hprefix htail) hblocked)

theorem graph221InitialContainedEvalPrefixGate_of_strengthened_prefix_and_suffixFamily
    (hfamily : Graph221Layer4SemanticSuffixFamily)
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    TerminalContainedEvalPrefixGate
      TerminalStepStatePartialMachine.semantic TerminalStepState.initial rank :=
  graph221InitialContainedEvalPrefixGate_of_graph151TargetCompletionTail_and_suffixOk
    hstrengthened hprefix
    (graph151CompletionTail_of_strengthened_prefix hstrengthened hprefix)
    (hfamily.suffixOk rank hstrengthened rest hprefix
      (graph151CompletionTail_of_strengthened_prefix hstrengthened hprefix))

theorem graph221InitialContainedEvalPrefixGate_of_strengthened_prefix_semantic
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    TerminalContainedEvalPrefixGate
      TerminalStepStatePartialMachine.semantic TerminalStepState.initial rank :=
  graph221InitialContainedEvalPrefixGate_of_strengthened_prefix_and_suffixFamily
    graph221Layer4SemanticSuffixFamily_targetCompletion hstrengthened hprefix

theorem graph221TerminalTailPrefixSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221TerminalTailPrefixSmoke
