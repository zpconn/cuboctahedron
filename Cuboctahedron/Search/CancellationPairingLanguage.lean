import Cuboctahedron.Search.Enumeration
import Cuboctahedron.Search.ShadowNormalForm

/-!
Triangular cancellation-pairing languages for Bellman membership.

The Bellman nonidentity margin route should eventually prove membership in a
closed holonomy/cancellation language rather than enumerate exact path
classes.  This file provides the first small semantic component of that
language: the ordered adjacent-cancellation summary of a triangular shadow.

The definitions are intentionally computational and exact, but they are not a
large checker.  Generated Bellman shards can mention these Prop-level
predicates and then prove object membership from them.
-/

namespace Cuboctahedron

structure TriCancellationPair where
  left : Nat
  right : Nat
  tri : TriLetter
deriving DecidableEq, Repr

structure TriSurvivor where
  index : Nat
  tri : TriLetter
deriving DecidableEq, Repr

structure TriCancellationSummary where
  cancellations : List TriCancellationPair
  survivors : List TriSurvivor
deriving DecidableEq, Repr

structure TriCancellationState where
  shadowLen : Nat
  stack : List (TriLetter × Nat)
  cancellationsRev : List TriCancellationPair
deriving DecidableEq, Repr

namespace TriCancellationState

def initial : TriCancellationState where
  shadowLen := 0
  stack := []
  cancellationsRev := []

def sizeInvariant (state : TriCancellationState) : Prop :=
  state.stack.length + 2 * state.cancellationsRev.length = state.shadowLen

def push (state : TriCancellationState) (tri : TriLetter) :
    TriCancellationState :=
  let idx := state.shadowLen
  match state.stack with
  | (top, topIdx) :: rest =>
      if tri = top then
        { shadowLen := idx + 1
          stack := rest
          cancellationsRev :=
            { left := topIdx, right := idx, tri := top } ::
              state.cancellationsRev }
      else
        { shadowLen := idx + 1
          stack := (tri, idx) :: (top, topIdx) :: rest
          cancellationsRev := state.cancellationsRev }
  | [] =>
      { shadowLen := idx + 1
        stack := [(tri, idx)]
        cancellationsRev := state.cancellationsRev }

def summary (state : TriCancellationState) : TriCancellationSummary where
  cancellations := state.cancellationsRev.reverse
  survivors :=
    state.stack.reverse.map
      (fun item => { index := item.2, tri := item.1 })

theorem initial_sizeInvariant : sizeInvariant initial := by
  rfl

theorem push_shadowLen (state : TriCancellationState) (tri : TriLetter) :
    (push state tri).shadowLen = state.shadowLen + 1 := by
  unfold push
  cases state with
  | mk shadowLen stack cancellationsRev =>
      cases stack with
      | nil => rfl
      | cons item rest =>
          cases item with
          | mk top topIdx =>
              by_cases h : tri = top <;> simp [h]

theorem push_sizeInvariant
    {state : TriCancellationState} {tri : TriLetter}
    (hstate : sizeInvariant state) :
    sizeInvariant (push state tri) := by
  unfold sizeInvariant at hstate ⊢
  unfold push
  cases state with
  | mk shadowLen stack cancellationsRev =>
      cases stack with
      | nil =>
          simp at hstate ⊢
          omega
      | cons item rest =>
          cases item with
          | mk top topIdx =>
              by_cases h : tri = top
              · simp [h] at hstate ⊢
                omega
              · simp [h] at hstate ⊢
                omega

end TriCancellationState

def triangularCancellationStateOfShadow (shadow : List TriLetter) :
    TriCancellationState :=
  shadow.foldl TriCancellationState.push TriCancellationState.initial

theorem triangularCancellationStateOfShadow_shadowLen
    (shadow : List TriLetter) :
    (triangularCancellationStateOfShadow shadow).shadowLen = shadow.length := by
  unfold triangularCancellationStateOfShadow
  have h :
      forall state : TriCancellationState,
        (shadow.foldl TriCancellationState.push state).shadowLen =
          state.shadowLen + shadow.length := by
    induction shadow with
    | nil =>
        intro state
        rfl
    | cons tri rest ih =>
        intro state
        simp [List.foldl_cons, ih, TriCancellationState.push_shadowLen,
          Nat.add_comm, Nat.add_left_comm]
  simpa [TriCancellationState.initial] using
    h TriCancellationState.initial

theorem foldl_push_sizeInvariant
    (shadow : List TriLetter) {state : TriCancellationState}
    (hstate : TriCancellationState.sizeInvariant state) :
    TriCancellationState.sizeInvariant
      (shadow.foldl TriCancellationState.push state) := by
  induction shadow generalizing state with
  | nil =>
      simpa using hstate
  | cons tri rest ih =>
      simp [List.foldl_cons]
      exact ih (TriCancellationState.push_sizeInvariant hstate)

theorem triangularCancellationStateOfShadow_sizeInvariant
    (shadow : List TriLetter) :
    TriCancellationState.sizeInvariant
      (triangularCancellationStateOfShadow shadow) := by
  unfold triangularCancellationStateOfShadow
  exact foldl_push_sizeInvariant shadow
    TriCancellationState.initial_sizeInvariant

def triangularCancellationSummaryOfShadow (shadow : List TriLetter) :
    TriCancellationSummary :=
  (triangularCancellationStateOfShadow shadow).summary

theorem triangularCancellationSummaryOfShadow_count
    (shadow : List TriLetter) :
    (triangularCancellationSummaryOfShadow shadow).survivors.length +
        2 * (triangularCancellationSummaryOfShadow shadow).cancellations.length =
      shadow.length := by
  have hinv := triangularCancellationStateOfShadow_sizeInvariant shadow
  have hlen := triangularCancellationStateOfShadow_shadowLen shadow
  unfold triangularCancellationSummaryOfShadow
  unfold TriCancellationState.summary
  unfold TriCancellationState.sizeInvariant at hinv
  simp [List.length_reverse, hlen] at hinv ⊢
  omega

def triangularCancellationSummaryOfPairWord (w : PairWord) :
    TriCancellationSummary :=
  triangularCancellationSummaryOfShadow (triangularShadowOfPairWord w)

/-- The current dominant Bellman top-pairing target:

`pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1`.
-/
def topPairingTargetSummary : TriCancellationSummary where
  cancellations := [
    { left := 3, right := 4, tri := TriLetter.d11m }
  ]
  survivors := [
    { index := 0, tri := TriLetter.dm11 },
    { index := 1, tri := TriLetter.d111 },
    { index := 2, tri := TriLetter.d1m1 },
    { index := 5, tri := TriLetter.dm11 },
    { index := 6, tri := TriLetter.d111 },
    { index := 7, tri := TriLetter.d1m1 }
  ]

def topPairingTargetShadow : List TriLetter :=
  [ TriLetter.dm11, TriLetter.d111, TriLetter.d1m1, TriLetter.d11m,
    TriLetter.d11m, TriLetter.dm11, TriLetter.d111, TriLetter.d1m1 ]

theorem topPairingTargetShadow_summary :
    triangularCancellationSummaryOfShadow topPairingTargetShadow =
      topPairingTargetSummary := by
  rfl

def TopPairingLanguageAtRank (rank : Fin numPairWords) : Prop :=
  triangularCancellationSummaryOfPairWord (unrankPairWord rank) =
    topPairingTargetSummary

end Cuboctahedron
