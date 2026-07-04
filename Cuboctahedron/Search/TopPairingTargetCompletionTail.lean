import Cuboctahedron.Search.TopPairingTargetCursor
import Cuboctahedron.Search.TopPairingTraceTail

/-!
Target-completion suffix state for the top-pairing Bellman route.

`TopPairingTransducerTail` tracks schedule, square-gap, local-axis, and the
target-shadow cursor.  The graph-150 frontier shows that this is not enough:
the next-face proof also needs the remaining actual-face state and the current
triangular cancellation stack/source progress.  This module introduces that
small semantic state machine without any sampled-prefix or rank-table data.

The definitions here are an interface for generated local branch-table proofs:
generated leaves should prove local `HeadSome`/branch facts from
`TopPairingTargetCompletionTail`, not from observed traces.
-/

namespace Cuboctahedron

structure TopPairingTargetCompletionState where
  step : Nat
  gap : Nat
  parity : SqParity
  remaining : List Face
  triState : TriCancellationState
deriving Repr

namespace TopPairingTargetCompletionState

def squareAllowed (state : TopPairingTargetCompletionState) (face : Face) :
    Prop :=
  if isSquarePair (pairOfFace face) then
    face ∈ topPairingAllowedSquareFacesAtGap state.gap
  else
    True

def next (state : TopPairingTargetCompletionState) (face : Face) :
    TopPairingTargetCompletionState :=
  let parityNext := state.parity.applyPair (pairOfFace face)
  let triStateNext :=
    match triLetterOfFace? face with
    | none => state.triState
    | some tri => state.triState.push (tri.act state.parity)
  { step := state.step + 1
    gap := topPairingNextGap state.gap face
    parity := parityNext
    remaining := state.remaining.erase face
    triState := triStateNext }

def isFinal (state : TopPairingTargetCompletionState) : Bool :=
  decide (state.remaining = [] ∧
    state.triState.summary = topPairingTargetSummary)

def headAllowed (state : TopPairingTargetCompletionState) (face : Face) :
    Bool :=
  decide (face ∈ state.remaining) &&
    decide (face ∈ topPairingAllowedFacesAtStep state.step) &&
      if isSquarePair (pairOfFace face) then
        decide (face ∈ topPairingAllowedSquareFacesAtGap state.gap)
      else
        true

def canCompleteWithFuel : Nat -> TopPairingTargetCompletionState -> Bool
  | 0, state => state.isFinal
  | fuel + 1, state =>
      if state.isFinal then
        true
      else
        state.remaining.any fun face =>
          state.headAllowed face &&
            canCompleteWithFuel fuel (state.next face)

def canComplete (state : TopPairingTargetCompletionState) : Bool :=
  state.canCompleteWithFuel state.remaining.length

end TopPairingTargetCompletionState

inductive TopPairingTargetCompletionTail :
    TopPairingTargetCompletionState -> List Face -> Prop
  | nil {state : TopPairingTargetCompletionState}
      (hremaining : state.remaining = [])
      (hsummary : state.triState.summary = topPairingTargetSummary) :
      TopPairingTargetCompletionTail state []
  | cons {state : TopPairingTargetCompletionState}
      {face : Face} {rest : List Face}
      (hremaining : face ∈ state.remaining)
      (hschedule : face ∈ topPairingAllowedFacesAtStep state.step)
      (hsquare : state.squareAllowed face)
      (hrest :
        TopPairingTargetCompletionTail (state.next face) rest) :
      TopPairingTargetCompletionTail state (face :: rest)

namespace TopPairingTargetCompletionTail

private theorem List.any_eq_true_of_mem
    {α : Type} (p : α -> Bool) {xs : List α} {x : α}
    (hx : x ∈ xs) (hp : p x = true) :
    xs.any p = true := by
  induction xs with
  | nil =>
      cases hx
  | cons y ys ih =>
      simp at hx
      rcases hx with hxy | hxys
      · subst y
        simp [hp]
      · by_cases hpy : p y = true
        · simp [hpy]
        · simpa [hpy] using ih hxys

theorem cons_inv
    {state : TopPairingTargetCompletionState}
    {face : Face} {rest : List Face}
    (h : TopPairingTargetCompletionTail state (face :: rest)) :
    face ∈ state.remaining ∧
      face ∈ topPairingAllowedFacesAtStep state.step ∧
        state.squareAllowed face ∧
          TopPairingTargetCompletionTail (state.next face) rest := by
  cases h with
  | cons hremaining hschedule hsquare hrest =>
      exact ⟨hremaining, hschedule, hsquare, hrest⟩

theorem head_remaining
    {state : TopPairingTargetCompletionState}
    {face : Face} {rest : List Face}
    (h : TopPairingTargetCompletionTail state (face :: rest)) :
    face ∈ state.remaining :=
  (cons_inv h).1

theorem head_schedule
    {state : TopPairingTargetCompletionState}
    {face : Face} {rest : List Face}
    (h : TopPairingTargetCompletionTail state (face :: rest)) :
    face ∈ topPairingAllowedFacesAtStep state.step :=
  (cons_inv h).2.1

theorem head_squareAllowed
    {state : TopPairingTargetCompletionState}
    {face : Face} {rest : List Face}
    (h : TopPairingTargetCompletionTail state (face :: rest)) :
    state.squareAllowed face :=
  (cons_inv h).2.2.1

theorem tail_next
    {state : TopPairingTargetCompletionState}
    {face : Face} {rest : List Face}
    (h : TopPairingTargetCompletionTail state (face :: rest)) :
    TopPairingTargetCompletionTail (state.next face) rest :=
  (cons_inv h).2.2.2

theorem length_le_remaining :
    ∀ {state : TopPairingTargetCompletionState} {labels : List Face},
      TopPairingTargetCompletionTail state labels ->
        labels.length ≤ state.remaining.length
  | _state, [], .nil hremaining _hsummary => by
      simp [hremaining]
  | state, face :: rest, .cons hremaining _hschedule _hsquare hrest => by
      have hrestLen := length_le_remaining hrest
      have herase :
          (state.remaining.erase face).length + 1 =
            state.remaining.length :=
        List.length_erase_add_one hremaining
      simp [TopPairingTargetCompletionState.next] at hrestLen
      have hrestLen' :
          rest.length + 1 ≤ state.remaining.length := by
        calc
          rest.length + 1 ≤ (state.remaining.erase face).length + 1 :=
            Nat.succ_le_succ hrestLen
          _ = state.remaining.length := herase
      simpa using hrestLen'

theorem canCompleteWithFuel_of_tail :
    ∀ {fuel : Nat} {state : TopPairingTargetCompletionState}
      {labels : List Face},
      labels.length ≤ fuel ->
      TopPairingTargetCompletionTail state labels ->
        state.canCompleteWithFuel fuel = true
  | 0, _state, [], _hlen, .nil hremaining hsummary => by
      simp [TopPairingTargetCompletionState.canCompleteWithFuel,
        TopPairingTargetCompletionState.isFinal, hremaining, hsummary]
  | fuel + 1, state, [], _hlen, .nil hremaining hsummary => by
      simp [TopPairingTargetCompletionState.canCompleteWithFuel,
        TopPairingTargetCompletionState.isFinal, hremaining, hsummary]
  | fuel + 1, state, face :: rest, hlen,
      .cons hremaining hschedule hsquare hrest => by
      have hrestLen : rest.length ≤ fuel := by
        simpa using Nat.le_of_succ_le_succ hlen
      have hrec :=
        canCompleteWithFuel_of_tail
          (fuel := fuel) (state := state.next face)
          (labels := rest) hrestLen hrest
      have hhead :
          state.headAllowed face = true := by
        simp [TopPairingTargetCompletionState.headAllowed,
          hremaining, hschedule]
        unfold TopPairingTargetCompletionState.squareAllowed at hsquare
        split at hsquare <;> simp_all
      have hany :
          state.remaining.any (fun f =>
              state.headAllowed f &&
                TopPairingTargetCompletionState.canCompleteWithFuel fuel
                  (state.next f)) = true := by
        apply List.any_eq_true_of_mem
        · exact hremaining
        · simp [hhead, hrec]
      by_cases hfinal : state.isFinal = true
      · simp [TopPairingTargetCompletionState.canCompleteWithFuel, hfinal]
      · simp [TopPairingTargetCompletionState.canCompleteWithFuel, hfinal, hany]

theorem canComplete_of_tail
    {state : TopPairingTargetCompletionState} {labels : List Face}
    (h : TopPairingTargetCompletionTail state labels) :
    state.canComplete = true := by
  unfold TopPairingTargetCompletionState.canComplete
  exact canCompleteWithFuel_of_tail (length_le_remaining h) h

theorem false_of_canComplete_eq_false
    {state : TopPairingTargetCompletionState} {labels : List Face}
    (hcomplete : state.canComplete = false)
    (h : TopPairingTargetCompletionTail state labels) :
    False := by
  have htrue := canComplete_of_tail h
  rw [hcomplete] at htrue
  contradiction

end TopPairingTargetCompletionTail

/--
The exact semantic state for the graph-150 frontier after the contribution
prefix `[xm, ym, tmpm, zm]`.  This is a generated-constant-style witness state,
not a sampled rank object: it stores only remaining actual faces, schedule
position, square gap, square parity, and target-cancellation progress.
-/
def graph150TargetCompletionState : TopPairingTargetCompletionState where
  step := 4
  gap := 1
  parity := { x := true, y := true, z := true }
  remaining :=
    [ Face.xp, Face.yp, Face.zp, Face.tmmm, Face.tmmp, Face.tmpp,
      Face.tpmm, Face.tpmp, Face.tppm, Face.tppp ]
  triState :=
    { shadowLen := 1
      stack := [(TriLetter.dm11, 0)]
      cancellationsRev := [] }

/--
Graph-150 target-completion tails are the next Lean surface for proving the
single legal branch `zp -> 157 (114)`.
-/
abbrev Graph150TargetCompletionTail (labels : List Face) : Prop :=
  TopPairingTargetCompletionTail graph150TargetCompletionState labels

theorem graph150_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph150TargetCompletionTail (face :: rest)) :
    face = Face.tmmp ∨ face = Face.tpmm ∨ face = Face.tppp ∨
      face = Face.zp := by
  have hremaining :=
    TopPairingTargetCompletionTail.head_remaining htail
  have hschedule :=
    TopPairingTargetCompletionTail.head_schedule htail
  have hsquare :=
    TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph150TargetCompletionState, TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      pairOfFace, isSquarePair] at hremaining hschedule hsquare ⊢

private theorem graph150_tmmp_canComplete_false :
    (graph150TargetCompletionState.next Face.tmmp).canComplete = false := by
  rfl

private theorem graph150_tpmm_canComplete_false :
    (graph150TargetCompletionState.next Face.tpmm).canComplete = false := by
  rfl

private theorem graph150_tppp_canComplete_false :
    (graph150TargetCompletionState.next Face.tppp).canComplete = false := by
  rfl

private theorem no_tail_after_graph150_tmmp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph150TargetCompletionState.next Face.tmmp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph150_tmmp_canComplete_false h

private theorem no_tail_after_graph150_tpmm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph150TargetCompletionState.next Face.tpmm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph150_tpmm_canComplete_false h

private theorem no_tail_after_graph150_tppp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph150TargetCompletionState.next Face.tppp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph150_tppp_canComplete_false h

theorem graph150_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph150TargetCompletionTail (face :: rest)) :
    face = Face.zp := by
  rcases graph150_head_candidate_of_targetCompletionTail htail with
    htmmp | htpmm | htppp | hzp
  · subst face
    exact False.elim
      (no_tail_after_graph150_tmmp
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph150_tpmm
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph150_tppp
        (TopPairingTargetCompletionTail.tail_next htail))
  · exact hzp

end Cuboctahedron
