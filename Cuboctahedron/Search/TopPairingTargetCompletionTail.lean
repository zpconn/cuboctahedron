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

end Cuboctahedron
