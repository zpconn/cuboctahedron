import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedNextFrontierSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
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
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket

def graph221PrefixLabels : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp,
    Face.tppm, Face.tmmp, Face.tpmm]

def graph221PrefixState : TerminalStepState :=
  (((((((((TerminalStepState.initial.nextStep Face.xm).nextStep Face.ym).nextStep
    Face.zm).nextStep Face.tmpp).nextStep Face.tppp).nextStep
    Face.tpmp).nextStep Face.tppm).nextStep Face.tmmp).nextStep Face.tpmm)

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

private theorem graph221_tmpm_canComplete_false :
    (graph221TargetCompletionState.next Face.tmpm).canComplete = false := by
  rfl

private theorem graph221_zp_canComplete_false :
    (graph221TargetCompletionState.next Face.zp).canComplete = false := by
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
                  exact Or.inr ⟨rest3, rfl⟩

theorem graph221AcceptedTailSuffixOk_of_targetCompletionTail_and_strengthenedEval
    {rest : List Face} {finish : StrengthenedClosedEvalState} {gain : Int}
    (htail : Graph221TargetCompletionTail rest)
    (heval :
      evalLabelStepFn strengthenedClosedEvalNext graph221StrengthenedEvalState
          rest =
        some (finish, gain)) :
    graph221AcceptedTailSuffixOk rest := by
  rcases graph221AcceptedTailSuffixOk_or_blockedPrefix_of_targetCompletionTail
      htail with hok | hblocked
  · exact hok
  · rcases hblocked with ⟨tail, hrest⟩
    subst rest
    rw [graph221YpTmpmZp_strengthenedEval_none tail] at heval
    contradiction

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

theorem graph221TerminalTailPrefixSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221TerminalTailPrefixSmoke
