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

theorem List.getElem?_append_singleton_of_some
    {α : Type} {xs : List α} {i : Nat} {x a : α}
    (h : xs[i]? = some x) :
    (xs ++ [a])[i]? = some x := by
  induction xs generalizing i with
  | nil =>
      cases i <;> simp at h
  | cons y ys ih =>
      cases i with
      | zero =>
          simp at h ⊢
          exact h
      | succ i =>
          simp at h ⊢
          exact ih h

theorem List.getElem?_append_singleton_length
    {α : Type} (xs : List α) (a : α) :
    (xs ++ [a])[xs.length]? = some a := by
  induction xs with
  | nil =>
      rfl
  | cons x xs ih =>
      exact ih

namespace TriCancellationState

def initial : TriCancellationState where
  shadowLen := 0
  stack := []
  cancellationsRev := []

def sizeInvariant (state : TriCancellationState) : Prop :=
  state.stack.length + 2 * state.cancellationsRev.length = state.shadowLen

def indexSound (shadow : List TriLetter) (state : TriCancellationState) : Prop :=
  (∀ item : TriLetter × Nat,
      item ∈ state.stack -> shadow[item.2]? = some item.1) /\
    (∀ pair : TriCancellationPair,
      pair ∈ state.cancellationsRev ->
        shadow[pair.left]? = some pair.tri /\
          shadow[pair.right]? = some pair.tri)

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

theorem initial_indexSound : indexSound [] initial := by
  constructor <;> intro item hmem <;> cases hmem

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

theorem push_indexSound
    {shadow : List TriLetter} {state : TriCancellationState} {tri : TriLetter}
    (hsound : indexSound shadow state)
    (hlen : state.shadowLen = shadow.length) :
    indexSound (shadow ++ [tri]) (push state tri) := by
  unfold indexSound at hsound ⊢
  rcases hsound with ⟨hstack, hcancel⟩
  unfold push
  cases state with
  | mk shadowLen stack cancellationsRev =>
      have hlen' : shadowLen = shadow.length := by
        simpa using hlen
      cases stack with
      | nil =>
          constructor
          · intro item hmem
            simp at hmem
            rcases hmem with ⟨rfl, rfl⟩
            rw [hlen']
            exact List.getElem?_append_singleton_length shadow tri
          · intro pair hmem
            rcases hcancel pair hmem with ⟨hleft, hright⟩
            exact ⟨
              List.getElem?_append_singleton_of_some hleft,
              List.getElem?_append_singleton_of_some hright⟩
      | cons head rest =>
          cases head with
          | mk top topIdx =>
              by_cases htri : tri = top
              · constructor
                · intro item hmem
                  simp [htri] at hmem
                  exact List.getElem?_append_singleton_of_some
                    (hstack item (by simp [hmem]))
                · intro pair hmem
                  simp [htri] at hmem
                  rcases hmem with hhead | htail
                  · cases hhead
                    constructor
                    · exact List.getElem?_append_singleton_of_some
                        (hstack (top, topIdx) (by simp))
                    · rw [hlen', htri]
                      exact List.getElem?_append_singleton_length shadow top
                  · rcases hcancel pair (by simpa using htail) with
                      ⟨hleft, hright⟩
                    exact ⟨
                      List.getElem?_append_singleton_of_some hleft,
                      List.getElem?_append_singleton_of_some hright⟩
              · constructor
                · intro item hmem
                  simp [htri] at hmem
                  rcases hmem with hnew | htop | hrest
                  · cases hnew
                    rw [hlen']
                    exact List.getElem?_append_singleton_length shadow tri
                  · cases htop
                    exact List.getElem?_append_singleton_of_some
                      (hstack (top, topIdx) (by simp))
                  · exact List.getElem?_append_singleton_of_some
                      (hstack item (by simp [hrest]))
                · intro pair hmem
                  simp [htri] at hmem
                  rcases hcancel pair hmem with ⟨hleft, hright⟩
                  exact ⟨
                    List.getElem?_append_singleton_of_some hleft,
                    List.getElem?_append_singleton_of_some hright⟩

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

theorem foldl_push_indexSound
    (rest pfx : List TriLetter) {state : TriCancellationState}
    (hsound : TriCancellationState.indexSound pfx state)
    (hlen : state.shadowLen = pfx.length) :
    TriCancellationState.indexSound (pfx ++ rest)
      (rest.foldl TriCancellationState.push state) := by
  induction rest generalizing pfx state with
  | nil =>
      simpa using hsound
  | cons tri rest ih =>
      simp [List.foldl_cons]
      have hsound' :
          TriCancellationState.indexSound (pfx ++ [tri])
            (TriCancellationState.push state tri) :=
        TriCancellationState.push_indexSound hsound hlen
      have hlen' :
          (TriCancellationState.push state tri).shadowLen =
            (pfx ++ [tri]).length := by
        rw [TriCancellationState.push_shadowLen, hlen]
        simp
      simpa [List.append_assoc] using
        ih (pfx := pfx ++ [tri])
          (state := TriCancellationState.push state tri)
          hsound' hlen'

theorem triangularCancellationStateOfShadow_indexSound
    (shadow : List TriLetter) :
    TriCancellationState.indexSound shadow
      (triangularCancellationStateOfShadow shadow) := by
  unfold triangularCancellationStateOfShadow
  simpa using
    foldl_push_indexSound shadow []
      TriCancellationState.initial_indexSound
      (by rfl)

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

theorem triangularCancellationSummaryOfShadow_survivor_sound
    {shadow : List TriLetter} {survivor : TriSurvivor}
    (hmem :
      survivor ∈ (triangularCancellationSummaryOfShadow shadow).survivors) :
    shadow[survivor.index]? = some survivor.tri := by
  have hsound := triangularCancellationStateOfShadow_indexSound shadow
  unfold TriCancellationState.indexSound at hsound
  rcases hsound with ⟨hstack, _hcancel⟩
  unfold triangularCancellationSummaryOfShadow at hmem
  unfold TriCancellationState.summary at hmem
  rcases List.mem_map.mp hmem with ⟨item, hitem, hsurvivor⟩
  have hitem' : item ∈ (triangularCancellationStateOfShadow shadow).stack := by
    simpa using List.mem_reverse.mp hitem
  have hlookup := hstack item hitem'
  cases item with
  | mk tri index =>
      cases hsurvivor
      exact hlookup

theorem triangularCancellationSummaryOfShadow_cancellation_left_sound
    {shadow : List TriLetter} {pair : TriCancellationPair}
    (hmem :
      pair ∈ (triangularCancellationSummaryOfShadow shadow).cancellations) :
    shadow[pair.left]? = some pair.tri := by
  have hsound := triangularCancellationStateOfShadow_indexSound shadow
  unfold TriCancellationState.indexSound at hsound
  rcases hsound with ⟨_hstack, hcancel⟩
  unfold triangularCancellationSummaryOfShadow at hmem
  unfold TriCancellationState.summary at hmem
  have hmem' : pair ∈
      (triangularCancellationStateOfShadow shadow).cancellationsRev := by
    simpa using List.mem_reverse.mp hmem
  exact (hcancel pair hmem').1

theorem triangularCancellationSummaryOfShadow_cancellation_right_sound
    {shadow : List TriLetter} {pair : TriCancellationPair}
    (hmem :
      pair ∈ (triangularCancellationSummaryOfShadow shadow).cancellations) :
    shadow[pair.right]? = some pair.tri := by
  have hsound := triangularCancellationStateOfShadow_indexSound shadow
  unfold TriCancellationState.indexSound at hsound
  rcases hsound with ⟨_hstack, hcancel⟩
  unfold triangularCancellationSummaryOfShadow at hmem
  unfold TriCancellationState.summary at hmem
  have hmem' : pair ∈
      (triangularCancellationStateOfShadow shadow).cancellationsRev := by
    simpa using List.mem_reverse.mp hmem
  exact (hcancel pair hmem').2

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
