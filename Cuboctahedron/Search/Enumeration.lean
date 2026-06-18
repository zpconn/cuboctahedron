import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Powerset
import Mathlib.Data.Fintype.Sets
import Cuboctahedron.Search.PairWords

/-!
Finite enumeration interfaces for pair-words and sign masks.

The generated coverage object targets this exact finite API.  The certificate
pipeline uses a deterministic lexicographic rank over the seven pair IDs; the
ranker is defined here so generated coverage facts and the public enumeration
API can be bridged in one place.
-/

namespace Cuboctahedron

set_option linter.unusedSimpArgs false
set_option linter.unnecessarySimpa false

def expectedNumPairWords : Nat := 97297200

def numPairWords : Nat := 97297200

theorem expectedNumPairWords_formula :
    expectedNumPairWords =
      Nat.choose 13 1 * Nat.choose 12 2 * Nat.choose 10 2 *
        Nat.choose 8 2 * Nat.choose 6 2 * Nat.choose 4 2 *
          Nat.choose 2 2 := by
  norm_num [expectedNumPairWords, Nat.choose]

def pairWordEquivFn : PairWord ≃ (Fin 13 -> PairId) where
  toFun := Vector.get
  invFun := Vector.ofFn
  left_inv := by
    intro v
    apply Vector.ext
    intro i h
    rw [Vector.getElem_ofFn h]
    rfl
  right_inv := by
    intro f
    funext i
    change (Vector.ofFn f)[i.val] = f i
    rw [Vector.getElem_ofFn i.isLt]

noncomputable instance pairWordFintype : Fintype PairWord := by
  classical
  exact Fintype.ofEquiv (Fin 13 -> PairId) pairWordEquivFn.symm

instance validPairWordDecidablePred :
    DecidablePred ValidPairWord := by
  intro w
  unfold ValidPairWord pairCount
  infer_instance

abbrev ValidPairWordSubtype := { w : PairWord // ValidPairWord w }

def pairIdsInLexOrder : List PairId :=
  [PairId.x, PairId.y, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1,
    PairId.dm11]

def pairIdLexCode : PairId -> Nat
  | PairId.x => 0
  | PairId.y => 1
  | PairId.z => 2
  | PairId.d111 => 3
  | PairId.d11m => 4
  | PairId.d1m1 => 5
  | PairId.dm11 => 6

structure PairCounts where
  x : Nat
  y : Nat
  z : Nat
  d111 : Nat
  d11m : Nat
  d1m1 : Nat
  dm11 : Nat
deriving DecidableEq, Repr

def PairCounts.initial : PairCounts where
  x := 1
  y := 2
  z := 2
  d111 := 2
  d11m := 2
  d1m1 := 2
  dm11 := 2

def PairCounts.get (counts : PairCounts) : PairId -> Nat
  | PairId.x => counts.x
  | PairId.y => counts.y
  | PairId.z => counts.z
  | PairId.d111 => counts.d111
  | PairId.d11m => counts.d11m
  | PairId.d1m1 => counts.d1m1
  | PairId.dm11 => counts.dm11

def PairCounts.decrement (counts : PairCounts) : PairId -> PairCounts
  | PairId.x => { counts with x := counts.x - 1 }
  | PairId.y => { counts with y := counts.y - 1 }
  | PairId.z => { counts with z := counts.z - 1 }
  | PairId.d111 => { counts with d111 := counts.d111 - 1 }
  | PairId.d11m => { counts with d11m := counts.d11m - 1 }
  | PairId.d1m1 => { counts with d1m1 := counts.d1m1 - 1 }
  | PairId.dm11 => { counts with dm11 := counts.dm11 - 1 }

def PairCounts.total (counts : PairCounts) : Nat :=
  counts.x + counts.y + counts.z + counts.d111 + counts.d11m +
    counts.d1m1 + counts.dm11

def pairCountsCandidateList : List PairCounts :=
  (List.range 2).flatMap fun x =>
  (List.range 3).flatMap fun y =>
  (List.range 3).flatMap fun z =>
  (List.range 3).flatMap fun d111 =>
  (List.range 3).flatMap fun d11m =>
  (List.range 3).flatMap fun d1m1 =>
  (List.range 3).map fun dm11 =>
    { x := x, y := y, z := z, d111 := d111, d11m := d11m,
      d1m1 := d1m1, dm11 := dm11 }

def pairWordLexBlockCount (counts : PairCounts) : Nat :=
  Nat.factorial counts.total /
    (Nat.factorial counts.x * Nat.factorial counts.y *
      Nat.factorial counts.z * Nat.factorial counts.d111 *
        Nat.factorial counts.d11m * Nat.factorial counts.d1m1 *
          Nat.factorial counts.dm11)

def pairWordLexFirstStepBlocks (counts : PairCounts) : List (PairId × Nat) :=
  (pairIdsInLexOrder.filter fun p => decide (0 < counts.get p)).map fun p =>
    (p, pairWordLexBlockCount (counts.decrement p))

def pairWordLexFirstStepBlockTotal (counts : PairCounts) : Nat :=
  (pairWordLexFirstStepBlocks counts).map Prod.snd |>.sum

def pairCountsFirstStepRecurrenceOK (counts : PairCounts) : Prop :=
  0 < counts.total ->
    pairWordLexFirstStepBlockTotal counts = pairWordLexBlockCount counts

instance pairCountsFirstStepRecurrenceOKDecidable (counts : PairCounts) :
    Decidable (pairCountsFirstStepRecurrenceOK counts) := by
  unfold pairCountsFirstStepRecurrenceOK
  infer_instance

def checkPairCountsFirstStepRecurrence : Bool :=
  pairCountsCandidateList.all fun counts =>
    decide (pairCountsFirstStepRecurrenceOK counts)

set_option maxRecDepth 100000 in
theorem checkPairCountsFirstStepRecurrence_eq_true :
    checkPairCountsFirstStepRecurrence = true := by
  decide

theorem pairCountsFirstStepRecurrence_of_mem
    {counts : PairCounts}
    (hmem : counts ∈ pairCountsCandidateList)
    (hpos : 0 < counts.total) :
    pairWordLexFirstStepBlockTotal counts = pairWordLexBlockCount counts := by
  have hall :
      ∀ counts ∈ pairCountsCandidateList,
        decide (pairCountsFirstStepRecurrenceOK counts) = true := by
    simpa [checkPairCountsFirstStepRecurrence, List.all_eq_true]
      using checkPairCountsFirstStepRecurrence_eq_true
  exact (of_decide_eq_true (hall counts hmem)) hpos

def pairCountsDecrementTotalOK (counts : PairCounts) (p : PairId) : Prop :=
  0 < counts.get p ->
    (counts.decrement p).total + 1 = counts.total

instance pairCountsDecrementTotalOKDecidable
    (counts : PairCounts) (p : PairId) :
    Decidable (pairCountsDecrementTotalOK counts p) := by
  unfold pairCountsDecrementTotalOK
  infer_instance

def checkPairCountsDecrementTotal : Bool :=
  pairCountsCandidateList.all fun counts =>
    pairIdsInLexOrder.all fun p =>
      decide (pairCountsDecrementTotalOK counts p)

set_option maxRecDepth 100000 in
theorem checkPairCountsDecrementTotal_eq_true :
    checkPairCountsDecrementTotal = true := by
  decide

theorem pairCountsDecrement_total
    {counts : PairCounts}
    (hmem : counts ∈ pairCountsCandidateList)
    {p : PairId}
    (hpos : 0 < counts.get p) :
    (counts.decrement p).total + 1 = counts.total := by
  have hall :
      ∀ counts ∈ pairCountsCandidateList,
        (pairIdsInLexOrder.all fun p =>
          decide (pairCountsDecrementTotalOK counts p)) = true := by
    simpa [checkPairCountsDecrementTotal, List.all_eq_true]
      using checkPairCountsDecrementTotal_eq_true
  have hpAll := hall counts hmem
  have hpMem : p ∈ pairIdsInLexOrder := by
    cases p <;> simp [pairIdsInLexOrder]
  have hp :
      decide (pairCountsDecrementTotalOK counts p) = true :=
    List.all_eq_true.mp hpAll p hpMem
  exact (of_decide_eq_true hp) hpos

theorem pairCountsDecrement_mem
    {counts : PairCounts}
    (hmem : counts ∈ pairCountsCandidateList)
    {p : PairId}
    (hpos : 0 < counts.get p) :
    counts.decrement p ∈ pairCountsCandidateList := by
  cases counts with
  | mk x y z d111 d11m d1m1 dm11 =>
      cases p <;>
        simp [pairCountsCandidateList, PairCounts.get,
          PairCounts.decrement] at hmem hpos ⊢ <;>
        omega

structure LexSelection where
  pair : PairId
  offset : Nat
  rest : Nat
  block : Nat
deriving DecidableEq, Repr

def pairWordLexBlockOffsetFrom
    (target : PairId) : List (PairId × Nat) -> Nat
  | [] => 0
  | (p, block) :: blocks =>
      if p = target then 0
      else block + pairWordLexBlockOffsetFrom target blocks

def pairWordLexSmallerCount (counts : PairCounts) (p : PairId) : Nat :=
  pairWordLexBlockOffsetFrom p (pairWordLexFirstStepBlocks counts)

def selectBlockFrom
    (offset : Nat) : List (PairId × Nat) -> Nat -> Option LexSelection
  | [], _ => none
  | (p, block) :: blocks, rank =>
      if _h : rank < block then
        some { pair := p, offset := offset, rest := rank, block := block }
      else
        selectBlockFrom (offset + block) blocks (rank - block)

def pairWordLexSelect (counts : PairCounts) (rank : Nat) :
    Option LexSelection :=
  selectBlockFrom 0 (pairWordLexFirstStepBlocks counts) rank

lemma selectBlockFrom_some_of_lt_sum
    {blocks : List (PairId × Nat)} {offset rank : Nat}
    (h : rank < (blocks.map Prod.snd).sum) :
    exists sel, selectBlockFrom offset blocks rank = some sel := by
  induction blocks generalizing offset rank with
  | nil =>
      simp at h
  | cons head tail ih =>
      rcases head with ⟨p, block⟩
      simp [selectBlockFrom] at h ⊢
      by_cases hrank : rank < block
      · let sel : LexSelection := { pair := p, offset := offset, rest := rank, block := block }
        refine ⟨sel, ?_⟩
        simp [hrank, sel]
      · have htail : rank - block < (tail.map Prod.snd).sum := by
          omega
        rcases ih (offset := offset + block) htail with ⟨sel, hsel⟩
        exact ⟨sel, by simp [hrank, hsel]⟩

lemma selectBlockFrom_sound
    {blocks : List (PairId × Nat)} {offset rank : Nat}
    {sel : LexSelection}
    (hsel : selectBlockFrom offset blocks rank = some sel) :
    offset + rank = sel.offset + sel.rest ∧
      sel.rest < sel.block ∧ (sel.pair, sel.block) ∈ blocks := by
  induction blocks generalizing offset rank with
  | nil =>
      simp [selectBlockFrom] at hsel
  | cons head tail ih =>
      rcases head with ⟨p, block⟩
      simp [selectBlockFrom] at hsel ⊢
      by_cases hrank : rank < block
      · simp [hrank] at hsel
        subst sel
        simp [hrank]
      · simp [hrank] at hsel
        have hs := ih hsel
        constructor
        · omega
        · exact ⟨hs.2.1, Or.inr hs.2.2⟩

lemma selectBlockFrom_offset_eq
    {blocks : List (PairId × Nat)} {offset rank : Nat}
    {sel : LexSelection}
    (hnodup : (blocks.map Prod.fst).Nodup)
    (hsel : selectBlockFrom offset blocks rank = some sel) :
    sel.offset = offset + pairWordLexBlockOffsetFrom sel.pair blocks := by
  induction blocks generalizing offset rank with
  | nil =>
      simp [selectBlockFrom] at hsel
  | cons head tail ih =>
      rcases head with ⟨p, block⟩
      have hparts :
          p ∉ tail.map Prod.fst ∧ (tail.map Prod.fst).Nodup := by
        simpa using hnodup
      have hnotMem : p ∉ tail.map Prod.fst := hparts.1
      have hnodupTail : (tail.map Prod.fst).Nodup := hparts.2
      simp [selectBlockFrom] at hsel
      by_cases hrank : rank < block
      · simp [hrank] at hsel
        subst sel
        simp [pairWordLexBlockOffsetFrom]
      · simp [hrank] at hsel
        have hrec := ih hnodupTail hsel
        have hs := selectBlockFrom_sound hsel
        have hmemTail : sel.pair ∈ tail.map Prod.fst :=
          List.mem_map_of_mem hs.2.2
        have hpne : p ≠ sel.pair := by
          intro hp
          exact hnotMem (by simpa [hp] using hmemTail)
        simp [pairWordLexBlockOffsetFrom, hpne]
        omega

theorem pairWordLexFirstStepBlocks_nodup (counts : PairCounts) :
    ((pairWordLexFirstStepBlocks counts).map Prod.fst).Nodup := by
  rw [show (pairWordLexFirstStepBlocks counts).map Prod.fst =
      pairIdsInLexOrder.filter fun p => decide (0 < counts.get p) by
    simp [pairWordLexFirstStepBlocks, Function.comp_def]]
  apply List.Nodup.filter
  simp [pairIdsInLexOrder]

theorem pairWordLexFirstStepBlocks_mem
    {counts : PairCounts} {p : PairId} {block : Nat}
    (hmem : (p, block) ∈ pairWordLexFirstStepBlocks counts) :
    0 < counts.get p ∧
      block = pairWordLexBlockCount (counts.decrement p) := by
  simp [pairWordLexFirstStepBlocks] at hmem
  exact ⟨hmem.1.2, hmem.2.symm⟩

def vectorSingleton (p : PairId) : Vector PairId 1 :=
  Vector.ofFn fun _ => p

def vectorCons {n : Nat}
    (p : PairId) (xs : Vector PairId n) : Vector PairId (n + 1) :=
  Vector.cast (by omega) (vectorSingleton p ++ xs)

def vectorTail {n : Nat}
    (xs : Vector PairId (n + 1)) : Vector PairId n :=
  Vector.ofFn fun i : Fin n => xs[i.val + 1]

@[simp] theorem vectorCons_zero
    {n : Nat} (p : PairId) (xs : Vector PairId n) :
    (vectorCons p xs)[0] = p := by
  unfold vectorCons vectorSingleton
  rw [Vector.getElem_cast]
  rw [Vector.getElem_append_left (hi := by omega)]
  simp

@[simp] theorem vectorCons_succ
    {n : Nat} (p : PairId) (xs : Vector PairId n) (i : Fin n) :
    (vectorCons p xs)[i.val + 1] = xs[i.val] := by
  unfold vectorCons vectorSingleton
  rw [Vector.getElem_cast]
  rw [Vector.getElem_append_right]
  · simp
  · omega

theorem vectorTail_vectorCons
    {n : Nat} (p : PairId) (xs : Vector PairId n) :
    vectorTail (vectorCons p xs) = xs := by
  apply Vector.ext
  intro i hi
  unfold vectorTail
  simp only [Vector.getElem_ofFn]
  exact vectorCons_succ p xs ⟨i, hi⟩

theorem vectorCons_head_tail
    {n : Nat} (xs : Vector PairId (n + 1)) :
    vectorCons xs[0] (vectorTail xs) = xs := by
  apply Vector.ext
  intro i hi
  cases i with
  | zero =>
      simp [vectorTail]
  | succ j =>
      have hj : j < n := by omega
      simpa [vectorTail] using
        (show (vectorCons xs[0] (vectorTail xs))[j + 1] =
            (vectorTail xs)[j] from
          vectorCons_succ xs[0] (vectorTail xs) ⟨j, hj⟩)

@[simp] theorem vectorSingleton_count (p q : PairId) :
    (vectorSingleton p).count q = if p == q then 1 else 0 := by
  unfold vectorSingleton
  cases p <;> cases q <;> decide

@[simp] theorem vectorCons_count
    {n : Nat} (p q : PairId) (xs : Vector PairId n) :
    (vectorCons p xs).count q =
      (if p == q then 1 else 0) + xs.count q := by
  unfold vectorCons
  simp [Vector.count_append]

set_option maxRecDepth 10000 in
theorem vector_count_eq_card_get
    {n : Nat} (v : Vector PairId n) (p : PairId) :
    v.count p = Fintype.card { i : Fin n // v[i] = p } := by
  induction n with
  | zero =>
      cases v with
      | mk arr h =>
          have harr : arr = #[] := Array.eq_empty_of_size_eq_zero h
          subst arr
          rw [Fintype.card_subtype]
          simp [Vector.count]
  | succ n ih =>
      rw [← vectorCons_head_tail v]
      rw [vectorCons_count]
      rw [Fintype.card_subtype]
      rw [Fin.card_filter_univ_succ']
      simp [vectorCons_succ]
      have htail :
          (vectorTail v).count p =
            (Finset.univ.filter
              (fun x : Fin n => (vectorTail v)[x] = p)).card := by
        simpa [Fintype.card_subtype] using ih (vectorTail v)
      rw [htail]
      by_cases h : v[0] = p <;> simp [h]

theorem pairCount_eq_vector_count (w : PairWord) (p : PairId) :
    pairCount p w = w.count p := by
  unfold pairCount
  rw [vector_count_eq_card_get]
  rfl

@[simp] theorem vectorEmpty_count (p : PairId) :
    (Vector.ofFn fun i : Fin 0 => nomatch i).count p = 0 := by
  rw [vector_count_eq_card_get]
  simp

def PairCounts.MatchesVector
    {n : Nat} (counts : PairCounts) (w : Vector PairId n) : Prop :=
  w.count PairId.x = counts.x ∧
    w.count PairId.y = counts.y ∧
      w.count PairId.z = counts.z ∧
        w.count PairId.d111 = counts.d111 ∧
          w.count PairId.d11m = counts.d11m ∧
            w.count PairId.d1m1 = counts.d1m1 ∧
              w.count PairId.dm11 = counts.dm11

theorem PairCounts.matchesVector_cons
    {n : Nat} {counts : PairCounts} {p : PairId}
    {xs : Vector PairId n}
    (hpos : 0 < counts.get p)
    (hmatch : (counts.decrement p).MatchesVector xs) :
    counts.MatchesVector (vectorCons p xs) := by
  cases counts with
  | mk x y z d111 d11m d1m1 dm11 =>
      cases p <;>
        simp [PairCounts.MatchesVector, PairCounts.get,
          PairCounts.decrement] at hpos hmatch ⊢ <;>
        omega

theorem PairCounts.matchesVector_valid
    {w : PairWord}
    (hmatch : PairCounts.initial.MatchesVector w) :
    ValidPairWord w := by
  rw [ValidPairWord]
  rw [pairCount_eq_vector_count, pairCount_eq_vector_count,
    pairCount_eq_vector_count, pairCount_eq_vector_count,
    pairCount_eq_vector_count, pairCount_eq_vector_count,
    pairCount_eq_vector_count]
  simpa [PairCounts.MatchesVector, PairCounts.initial] using hmatch

def pairWordLexRankVectorAux :
    {n : Nat} -> Vector PairId n -> PairCounts -> Nat
  | 0, _w, _counts => 0
  | n + 1, w, counts =>
      let current := w[0]
      pairWordLexSmallerCount counts current +
        pairWordLexRankVectorAux (vectorTail w)
          (counts.decrement current)

def pairWordLexRankAux
    (w : PairWord) (_pos : Nat) (_fuel : Nat) (counts : PairCounts) :
    Nat :=
  pairWordLexRankVectorAux w counts

def pairWordLexRank (w : PairWord) : Nat :=
  pairWordLexRankVectorAux w PairCounts.initial

def pairWordLexRank? (w : PairWord) : Option (Fin numPairWords) :=
  if ValidPairWord w then
    let rank := pairWordLexRank w
    if h : rank < numPairWords then
      some ⟨rank, h⟩
    else
      none
  else
    none

abbrev PairPositionSet := Finset (Fin 13)

def lowerPositionSet {s : PairPositionSet} (t : Finset s) : PairPositionSet :=
  t.map ⟨Subtype.val, Subtype.val_injective⟩

@[simp] theorem lowerPositionSet_card {s : PairPositionSet} (t : Finset s) :
    (lowerPositionSet t).card = t.card := by
  simp [lowerPositionSet]

theorem lowerPositionSet_subset {s : PairPositionSet} (t : Finset s) :
    lowerPositionSet t ⊆ s := by
  intro i hi
  rw [lowerPositionSet] at hi
  rcases Finset.mem_map.mp hi with ⟨j, _hj, hji⟩
  rw [← hji]
  exact j.property

theorem lowerPositionSet_injective {s : PairPositionSet} :
    Function.Injective (@lowerPositionSet s) := by
  intro a b h
  exact Finset.map_injective ⟨Subtype.val, Subtype.val_injective⟩ h

def liftPositionSet {s t : PairPositionSet} (h : t ⊆ s) : Finset s :=
  t.attach.map ⟨fun i => ⟨i.1, h i.2⟩, by
    intro a b hab
    apply Subtype.ext
    exact congrArg (fun x : s => (x : Fin 13)) hab⟩

@[simp] theorem lowerPositionSet_lift {s t : PairPositionSet} (h : t ⊆ s) :
    lowerPositionSet (liftPositionSet h) = t := by
  ext i
  constructor
  · intro hi
    rw [lowerPositionSet] at hi
    rcases Finset.mem_map.mp hi with ⟨j, hj, hji⟩
    rw [← hji]
    unfold liftPositionSet at hj
    rcases Finset.mem_map.mp hj with ⟨k, _hk, hkj⟩
    rw [← hkj]
    exact k.property
  · intro hi
    rw [lowerPositionSet]
    apply Finset.mem_map.mpr
    refine ⟨⟨i, h hi⟩, ?_, rfl⟩
    unfold liftPositionSet
    apply Finset.mem_map.mpr
    exact ⟨⟨i, hi⟩, Finset.mem_attach _ _, rfl⟩

@[simp] theorem liftPositionSet_card {s t : PairPositionSet} (h : t ⊆ s) :
    (liftPositionSet h).card = t.card := by
  rw [← lowerPositionSet_card (liftPositionSet h), lowerPositionSet_lift h]

def remainingPositions (s : PairPositionSet) (t : Finset s) : PairPositionSet :=
  s \ lowerPositionSet t

@[simp] theorem remainingPositions_card {s : PairPositionSet} (t : Finset s) :
    (remainingPositions s t).card = s.card - t.card := by
  simp [remainingPositions, Finset.card_sdiff_of_subset (lowerPositionSet_subset t)]

abbrev ChoosePositions (s : PairPositionSet) (k : Nat) :=
  {t : Finset s // t.card = k}

theorem choosePositions_card (s : PairPositionSet) (k : Nat) :
    Fintype.card (ChoosePositions s k) = Nat.choose s.card k := by
  unfold ChoosePositions
  rw [Fintype.card_finset_len]
  simp [Fintype.card_coe]

def pairWordRemaining0 : PairPositionSet := Finset.univ

def pairWordRemaining1
    (x : ChoosePositions pairWordRemaining0 1) : PairPositionSet :=
  remainingPositions pairWordRemaining0 x.1

def pairWordRemaining2
    (x : ChoosePositions pairWordRemaining0 1)
    (y : ChoosePositions (pairWordRemaining1 x) 2) : PairPositionSet :=
  remainingPositions (pairWordRemaining1 x) y.1

def pairWordRemaining3
    (x : ChoosePositions pairWordRemaining0 1)
    (y : ChoosePositions (pairWordRemaining1 x) 2)
    (z : ChoosePositions (pairWordRemaining2 x y) 2) : PairPositionSet :=
  remainingPositions (pairWordRemaining2 x y) z.1

def pairWordRemaining4
    (x : ChoosePositions pairWordRemaining0 1)
    (y : ChoosePositions (pairWordRemaining1 x) 2)
    (z : ChoosePositions (pairWordRemaining2 x y) 2)
    (d111 : ChoosePositions (pairWordRemaining3 x y z) 2) :
    PairPositionSet :=
  remainingPositions (pairWordRemaining3 x y z) d111.1

def pairWordRemaining5
    (x : ChoosePositions pairWordRemaining0 1)
    (y : ChoosePositions (pairWordRemaining1 x) 2)
    (z : ChoosePositions (pairWordRemaining2 x y) 2)
    (d111 : ChoosePositions (pairWordRemaining3 x y z) 2)
    (d11m : ChoosePositions (pairWordRemaining4 x y z d111) 2) :
    PairPositionSet :=
  remainingPositions (pairWordRemaining4 x y z d111) d11m.1

def pairWordRemaining6
    (x : ChoosePositions pairWordRemaining0 1)
    (y : ChoosePositions (pairWordRemaining1 x) 2)
    (z : ChoosePositions (pairWordRemaining2 x y) 2)
    (d111 : ChoosePositions (pairWordRemaining3 x y z) 2)
    (d11m : ChoosePositions (pairWordRemaining4 x y z d111) 2)
    (d1m1 : ChoosePositions (pairWordRemaining5 x y z d111 d11m) 2) :
    PairPositionSet :=
  remainingPositions (pairWordRemaining5 x y z d111 d11m) d1m1.1

@[simp] theorem pairWordRemaining0_card :
    pairWordRemaining0.card = 13 := by
  simp [pairWordRemaining0]

@[simp] theorem pairWordRemaining1_card
    (x : ChoosePositions pairWordRemaining0 1) :
    (pairWordRemaining1 x).card = 12 := by
  simp [pairWordRemaining1, x.property]

@[simp] theorem pairWordRemaining2_card
    (x : ChoosePositions pairWordRemaining0 1)
    (y : ChoosePositions (pairWordRemaining1 x) 2) :
    (pairWordRemaining2 x y).card = 10 := by
  simp [pairWordRemaining2, y.property]

@[simp] theorem pairWordRemaining3_card
    (x : ChoosePositions pairWordRemaining0 1)
    (y : ChoosePositions (pairWordRemaining1 x) 2)
    (z : ChoosePositions (pairWordRemaining2 x y) 2) :
    (pairWordRemaining3 x y z).card = 8 := by
  simp [pairWordRemaining3, z.property]

@[simp] theorem pairWordRemaining4_card
    (x : ChoosePositions pairWordRemaining0 1)
    (y : ChoosePositions (pairWordRemaining1 x) 2)
    (z : ChoosePositions (pairWordRemaining2 x y) 2)
    (d111 : ChoosePositions (pairWordRemaining3 x y z) 2) :
    (pairWordRemaining4 x y z d111).card = 6 := by
  simp [pairWordRemaining4, d111.property]

@[simp] theorem pairWordRemaining5_card
    (x : ChoosePositions pairWordRemaining0 1)
    (y : ChoosePositions (pairWordRemaining1 x) 2)
    (z : ChoosePositions (pairWordRemaining2 x y) 2)
    (d111 : ChoosePositions (pairWordRemaining3 x y z) 2)
    (d11m : ChoosePositions (pairWordRemaining4 x y z d111) 2) :
    (pairWordRemaining5 x y z d111 d11m).card = 4 := by
  simp [pairWordRemaining5, d11m.property]

@[simp] theorem pairWordRemaining6_card
    (x : ChoosePositions pairWordRemaining0 1)
    (y : ChoosePositions (pairWordRemaining1 x) 2)
    (z : ChoosePositions (pairWordRemaining2 x y) 2)
    (d111 : ChoosePositions (pairWordRemaining3 x y z) 2)
    (d11m : ChoosePositions (pairWordRemaining4 x y z d111) 2)
    (d1m1 : ChoosePositions (pairWordRemaining5 x y z d111 d11m) 2) :
    (pairWordRemaining6 x y z d111 d11m d1m1).card = 2 := by
  simp [pairWordRemaining6, d1m1.property]

abbrev PairWordChoiceSigma :=
  Sigma fun x : ChoosePositions pairWordRemaining0 1 =>
  Sigma fun y : ChoosePositions (pairWordRemaining1 x) 2 =>
  Sigma fun z : ChoosePositions (pairWordRemaining2 x y) 2 =>
  Sigma fun d111 : ChoosePositions (pairWordRemaining3 x y z) 2 =>
  Sigma fun d11m : ChoosePositions (pairWordRemaining4 x y z d111) 2 =>
  Sigma fun d1m1 : ChoosePositions (pairWordRemaining5 x y z d111 d11m) 2 =>
    ChoosePositions (pairWordRemaining6 x y z d111 d11m d1m1) 2

theorem pairWordChoiceSigma_card :
    Fintype.card PairWordChoiceSigma =
      Nat.choose 13 1 * Nat.choose 12 2 * Nat.choose 10 2 *
        Nat.choose 8 2 * Nat.choose 6 2 * Nat.choose 4 2 *
          Nat.choose 2 2 := by
  simp [PairWordChoiceSigma]
  ring

def pairChoiceX (c : PairWordChoiceSigma) :
    ChoosePositions pairWordRemaining0 1 :=
  c.1

def pairChoiceY (c : PairWordChoiceSigma) :
    ChoosePositions (pairWordRemaining1 (pairChoiceX c)) 2 :=
  c.2.1

def pairChoiceZ (c : PairWordChoiceSigma) :
    ChoosePositions (pairWordRemaining2 (pairChoiceX c) (pairChoiceY c)) 2 :=
  c.2.2.1

def pairChoiceD111 (c : PairWordChoiceSigma) :
    ChoosePositions
      (pairWordRemaining3 (pairChoiceX c) (pairChoiceY c) (pairChoiceZ c)) 2 :=
  c.2.2.2.1

def pairChoiceD11M (c : PairWordChoiceSigma) :
    ChoosePositions
      (pairWordRemaining4 (pairChoiceX c) (pairChoiceY c) (pairChoiceZ c)
        (pairChoiceD111 c)) 2 :=
  c.2.2.2.2.1

def pairChoiceD1M1 (c : PairWordChoiceSigma) :
    ChoosePositions
      (pairWordRemaining5 (pairChoiceX c) (pairChoiceY c) (pairChoiceZ c)
        (pairChoiceD111 c) (pairChoiceD11M c)) 2 :=
  c.2.2.2.2.2.1

def pairChoiceDM11 (c : PairWordChoiceSigma) :
    ChoosePositions
      (pairWordRemaining6 (pairChoiceX c) (pairChoiceY c) (pairChoiceZ c)
        (pairChoiceD111 c) (pairChoiceD11M c) (pairChoiceD1M1 c)) 2 :=
  c.2.2.2.2.2.2

def pairChoiceXSet (c : PairWordChoiceSigma) : PairPositionSet :=
  lowerPositionSet (pairChoiceX c).1

def pairChoiceYSet (c : PairWordChoiceSigma) : PairPositionSet :=
  lowerPositionSet (pairChoiceY c).1

def pairChoiceZSet (c : PairWordChoiceSigma) : PairPositionSet :=
  lowerPositionSet (pairChoiceZ c).1

def pairChoiceD111Set (c : PairWordChoiceSigma) : PairPositionSet :=
  lowerPositionSet (pairChoiceD111 c).1

def pairChoiceD11MSet (c : PairWordChoiceSigma) : PairPositionSet :=
  lowerPositionSet (pairChoiceD11M c).1

def pairChoiceD1M1Set (c : PairWordChoiceSigma) : PairPositionSet :=
  lowerPositionSet (pairChoiceD1M1 c).1

def pairChoiceDM11Set (c : PairWordChoiceSigma) : PairPositionSet :=
  lowerPositionSet (pairChoiceDM11 c).1

@[simp] theorem pairChoiceXSet_card (c : PairWordChoiceSigma) :
    (pairChoiceXSet c).card = 1 := by
  simp [pairChoiceXSet, (pairChoiceX c).property]

@[simp] theorem pairChoiceYSet_card (c : PairWordChoiceSigma) :
    (pairChoiceYSet c).card = 2 := by
  simp [pairChoiceYSet, (pairChoiceY c).property]

@[simp] theorem pairChoiceZSet_card (c : PairWordChoiceSigma) :
    (pairChoiceZSet c).card = 2 := by
  simp [pairChoiceZSet, (pairChoiceZ c).property]

@[simp] theorem pairChoiceD111Set_card (c : PairWordChoiceSigma) :
    (pairChoiceD111Set c).card = 2 := by
  simp [pairChoiceD111Set, (pairChoiceD111 c).property]

@[simp] theorem pairChoiceD11MSet_card (c : PairWordChoiceSigma) :
    (pairChoiceD11MSet c).card = 2 := by
  simp [pairChoiceD11MSet, (pairChoiceD11M c).property]

@[simp] theorem pairChoiceD1M1Set_card (c : PairWordChoiceSigma) :
    (pairChoiceD1M1Set c).card = 2 := by
  simp [pairChoiceD1M1Set, (pairChoiceD1M1 c).property]

@[simp] theorem pairChoiceDM11Set_card (c : PairWordChoiceSigma) :
    (pairChoiceDM11Set c).card = 2 := by
  simp [pairChoiceDM11Set, (pairChoiceDM11 c).property]

def pairChoicePairAt (c : PairWordChoiceSigma) (i : Fin 13) : PairId :=
  if i ∈ pairChoiceXSet c then PairId.x
  else if i ∈ pairChoiceYSet c then PairId.y
  else if i ∈ pairChoiceZSet c then PairId.z
  else if i ∈ pairChoiceD111Set c then PairId.d111
  else if i ∈ pairChoiceD11MSet c then PairId.d11m
  else if i ∈ pairChoiceD1M1Set c then PairId.d1m1
  else PairId.dm11

def pairWordOfChoice (c : PairWordChoiceSigma) : PairWord :=
  Vector.ofFn (pairChoicePairAt c)

theorem pairWordOfChoice_get (c : PairWordChoiceSigma) (i : Fin 13) :
    (pairWordOfChoice c).get i = pairChoicePairAt c i := by
  unfold pairWordOfChoice
  exact List.Vector.get_ofFn (pairChoicePairAt c) i

def pairWordIndices (w : PairWord) (p : PairId) : PairPositionSet :=
  Finset.univ.filter fun i => w.get i = p

theorem pairCount_eq_pairWordIndices_card (w : PairWord) (p : PairId) :
    pairCount p w = (pairWordIndices w p).card := by
  unfold pairCount pairWordIndices
  rw [Fintype.card_subtype]

theorem pairChoiceY_mem_not_x {c : PairWordChoiceSigma} {i : Fin 13}
    (h : i ∈ pairChoiceYSet c) :
    i ∉ pairChoiceXSet c := by
  have hs := lowerPositionSet_subset (pairChoiceY c).1 h
  simp [pairChoiceYSet, pairChoiceXSet, pairWordRemaining1,
    remainingPositions] at hs
  exact hs.2

theorem pairChoiceZ_mem_not_previous {c : PairWordChoiceSigma} {i : Fin 13}
    (h : i ∈ pairChoiceZSet c) :
    i ∉ pairChoiceXSet c ∧ i ∉ pairChoiceYSet c := by
  have hs := lowerPositionSet_subset (pairChoiceZ c).1 h
  simp [pairChoiceZSet, pairChoiceYSet, pairChoiceXSet, pairWordRemaining2,
    pairWordRemaining1, remainingPositions] at hs
  exact ⟨hs.1.2, hs.2⟩

theorem pairChoiceD111_mem_not_previous {c : PairWordChoiceSigma} {i : Fin 13}
    (h : i ∈ pairChoiceD111Set c) :
    i ∉ pairChoiceXSet c ∧ i ∉ pairChoiceYSet c ∧
      i ∉ pairChoiceZSet c := by
  have hs := lowerPositionSet_subset (pairChoiceD111 c).1 h
  simp [pairChoiceD111Set, pairChoiceZSet, pairChoiceYSet, pairChoiceXSet,
    pairWordRemaining3, pairWordRemaining2, pairWordRemaining1,
    remainingPositions] at hs
  exact ⟨hs.1.1.2, hs.1.2, hs.2⟩

theorem pairChoiceD11M_mem_not_previous {c : PairWordChoiceSigma} {i : Fin 13}
    (h : i ∈ pairChoiceD11MSet c) :
    i ∉ pairChoiceXSet c ∧ i ∉ pairChoiceYSet c ∧
      i ∉ pairChoiceZSet c ∧ i ∉ pairChoiceD111Set c := by
  have hs := lowerPositionSet_subset (pairChoiceD11M c).1 h
  simp [pairChoiceD11MSet, pairChoiceD111Set, pairChoiceZSet,
    pairChoiceYSet, pairChoiceXSet, pairWordRemaining4,
    pairWordRemaining3, pairWordRemaining2, pairWordRemaining1,
    remainingPositions] at hs
  exact ⟨hs.1.1.1.2, hs.1.1.2, hs.1.2, hs.2⟩

theorem pairChoiceD1M1_mem_not_previous {c : PairWordChoiceSigma} {i : Fin 13}
    (h : i ∈ pairChoiceD1M1Set c) :
    i ∉ pairChoiceXSet c ∧ i ∉ pairChoiceYSet c ∧
      i ∉ pairChoiceZSet c ∧ i ∉ pairChoiceD111Set c ∧
        i ∉ pairChoiceD11MSet c := by
  have hs := lowerPositionSet_subset (pairChoiceD1M1 c).1 h
  simp [pairChoiceD1M1Set, pairChoiceD11MSet, pairChoiceD111Set,
    pairChoiceZSet, pairChoiceYSet, pairChoiceXSet, pairWordRemaining5,
    pairWordRemaining4, pairWordRemaining3, pairWordRemaining2,
    pairWordRemaining1, remainingPositions] at hs
  exact ⟨hs.1.1.1.1.2, hs.1.1.1.2, hs.1.1.2, hs.1.2, hs.2⟩

theorem pairChoiceDM11Set_eq_remaining (c : PairWordChoiceSigma) :
    pairChoiceDM11Set c =
      pairWordRemaining6 (pairChoiceX c) (pairChoiceY c) (pairChoiceZ c)
        (pairChoiceD111 c) (pairChoiceD11M c) (pairChoiceD1M1 c) := by
  apply Finset.eq_of_subset_of_card_le
  · exact lowerPositionSet_subset (pairChoiceDM11 c).1
  · rw [pairWordRemaining6_card, pairChoiceDM11Set,
      lowerPositionSet_card, (pairChoiceDM11 c).property]

theorem pairChoiceDM11_mem_not_previous {c : PairWordChoiceSigma} {i : Fin 13}
    (h : i ∈ pairChoiceDM11Set c) :
    i ∉ pairChoiceXSet c ∧ i ∉ pairChoiceYSet c ∧
      i ∉ pairChoiceZSet c ∧ i ∉ pairChoiceD111Set c ∧
        i ∉ pairChoiceD11MSet c ∧ i ∉ pairChoiceD1M1Set c := by
  rw [pairChoiceDM11Set_eq_remaining] at h
  simp [pairChoiceD1M1Set, pairChoiceD11MSet, pairChoiceD111Set,
    pairChoiceZSet, pairChoiceYSet, pairChoiceXSet, pairWordRemaining6,
    pairWordRemaining5, pairWordRemaining4, pairWordRemaining3,
    pairWordRemaining2, pairWordRemaining1, remainingPositions] at h
  exact ⟨h.1.1.1.1.1.2, h.1.1.1.1.2, h.1.1.1.2, h.1.1.2,
    h.1.2, h.2⟩

theorem pairChoiceDM11_mem_of_not_previous {c : PairWordChoiceSigma} {i : Fin 13}
    (hx : i ∉ pairChoiceXSet c) (hy : i ∉ pairChoiceYSet c)
    (hz : i ∉ pairChoiceZSet c) (hd111 : i ∉ pairChoiceD111Set c)
    (hd11m : i ∉ pairChoiceD11MSet c) (hd1m1 : i ∉ pairChoiceD1M1Set c) :
    i ∈ pairChoiceDM11Set c := by
  change i ∉ lowerPositionSet (pairChoiceX c).1 at hx
  change i ∉ lowerPositionSet (pairChoiceY c).1 at hy
  change i ∉ lowerPositionSet (pairChoiceZ c).1 at hz
  change i ∉ lowerPositionSet (pairChoiceD111 c).1 at hd111
  change i ∉ lowerPositionSet (pairChoiceD11M c).1 at hd11m
  change i ∉ lowerPositionSet (pairChoiceD1M1 c).1 at hd1m1
  rw [pairChoiceDM11Set_eq_remaining]
  simp [pairWordRemaining6,
    pairWordRemaining5, pairWordRemaining4, pairWordRemaining3,
    pairWordRemaining2, pairWordRemaining1, pairWordRemaining0, remainingPositions]
  exact ⟨⟨⟨⟨⟨hx, hy⟩, hz⟩, hd111⟩, hd11m⟩, hd1m1⟩

theorem pairWordOfChoice_indices_x (c : PairWordChoiceSigma) :
    pairWordIndices (pairWordOfChoice c) PairId.x = pairChoiceXSet c := by
  ext i
  simp [pairWordIndices]
  rw [pairWordOfChoice_get]
  by_cases hx : i ∈ pairChoiceXSet c
  · simp [pairChoicePairAt, hx]
  · by_cases hy : i ∈ pairChoiceYSet c
    · simp [pairChoicePairAt, hx, hy]
    · by_cases hz : i ∈ pairChoiceZSet c
      · simp [pairChoicePairAt, hx, hy, hz]
      · by_cases hd111 : i ∈ pairChoiceD111Set c
        · simp [pairChoicePairAt, hx, hy, hz, hd111]
        · by_cases hd11m : i ∈ pairChoiceD11MSet c
          · simp [pairChoicePairAt, hx, hy, hz, hd111, hd11m]
          · by_cases hd1m1 : i ∈ pairChoiceD1M1Set c
            · simp [pairChoicePairAt, hx, hy, hz, hd111, hd11m, hd1m1]
            · simp [pairChoicePairAt, hx, hy, hz, hd111, hd11m, hd1m1]

theorem pairWordOfChoice_indices_y (c : PairWordChoiceSigma) :
    pairWordIndices (pairWordOfChoice c) PairId.y = pairChoiceYSet c := by
  ext i
  simp [pairWordIndices]
  rw [pairWordOfChoice_get]
  have hY := @pairChoiceY_mem_not_x c i
  have hZ := @pairChoiceZ_mem_not_previous c i
  have hD111 := @pairChoiceD111_mem_not_previous c i
  have hD11M := @pairChoiceD11M_mem_not_previous c i
  have hD1M1 := @pairChoiceD1M1_mem_not_previous c i
  have hDM11 := @pairChoiceDM11_mem_not_previous c i
  by_cases hx : i ∈ pairChoiceXSet c <;>
    by_cases hy : i ∈ pairChoiceYSet c <;>
      by_cases hz : i ∈ pairChoiceZSet c <;>
        by_cases hd111 : i ∈ pairChoiceD111Set c <;>
          by_cases hd11m : i ∈ pairChoiceD11MSet c <;>
            by_cases hd1m1 : i ∈ pairChoiceD1M1Set c <;>
              simp_all [pairChoicePairAt]

theorem pairWordOfChoice_indices_z (c : PairWordChoiceSigma) :
    pairWordIndices (pairWordOfChoice c) PairId.z = pairChoiceZSet c := by
  ext i
  simp [pairWordIndices]
  rw [pairWordOfChoice_get]
  have hY := @pairChoiceY_mem_not_x c i
  have hZ := @pairChoiceZ_mem_not_previous c i
  have hD111 := @pairChoiceD111_mem_not_previous c i
  have hD11M := @pairChoiceD11M_mem_not_previous c i
  have hD1M1 := @pairChoiceD1M1_mem_not_previous c i
  have hDM11 := @pairChoiceDM11_mem_not_previous c i
  by_cases hx : i ∈ pairChoiceXSet c <;>
    by_cases hy : i ∈ pairChoiceYSet c <;>
      by_cases hz : i ∈ pairChoiceZSet c <;>
        by_cases hd111 : i ∈ pairChoiceD111Set c <;>
          by_cases hd11m : i ∈ pairChoiceD11MSet c <;>
            by_cases hd1m1 : i ∈ pairChoiceD1M1Set c <;>
              simp_all [pairChoicePairAt]

theorem pairWordOfChoice_indices_d111 (c : PairWordChoiceSigma) :
    pairWordIndices (pairWordOfChoice c) PairId.d111 =
      pairChoiceD111Set c := by
  ext i
  simp [pairWordIndices]
  rw [pairWordOfChoice_get]
  have hY := @pairChoiceY_mem_not_x c i
  have hZ := @pairChoiceZ_mem_not_previous c i
  have hD111 := @pairChoiceD111_mem_not_previous c i
  have hD11M := @pairChoiceD11M_mem_not_previous c i
  have hD1M1 := @pairChoiceD1M1_mem_not_previous c i
  have hDM11 := @pairChoiceDM11_mem_not_previous c i
  by_cases hx : i ∈ pairChoiceXSet c <;>
    by_cases hy : i ∈ pairChoiceYSet c <;>
      by_cases hz : i ∈ pairChoiceZSet c <;>
        by_cases hd111 : i ∈ pairChoiceD111Set c <;>
          by_cases hd11m : i ∈ pairChoiceD11MSet c <;>
            by_cases hd1m1 : i ∈ pairChoiceD1M1Set c <;>
              simp_all [pairChoicePairAt]

theorem pairWordOfChoice_indices_d11m (c : PairWordChoiceSigma) :
    pairWordIndices (pairWordOfChoice c) PairId.d11m =
      pairChoiceD11MSet c := by
  ext i
  simp [pairWordIndices]
  rw [pairWordOfChoice_get]
  have hY := @pairChoiceY_mem_not_x c i
  have hZ := @pairChoiceZ_mem_not_previous c i
  have hD111 := @pairChoiceD111_mem_not_previous c i
  have hD11M := @pairChoiceD11M_mem_not_previous c i
  have hD1M1 := @pairChoiceD1M1_mem_not_previous c i
  have hDM11 := @pairChoiceDM11_mem_not_previous c i
  by_cases hx : i ∈ pairChoiceXSet c <;>
    by_cases hy : i ∈ pairChoiceYSet c <;>
      by_cases hz : i ∈ pairChoiceZSet c <;>
        by_cases hd111 : i ∈ pairChoiceD111Set c <;>
          by_cases hd11m : i ∈ pairChoiceD11MSet c <;>
            by_cases hd1m1 : i ∈ pairChoiceD1M1Set c <;>
              simp_all [pairChoicePairAt]

theorem pairWordOfChoice_indices_d1m1 (c : PairWordChoiceSigma) :
    pairWordIndices (pairWordOfChoice c) PairId.d1m1 =
      pairChoiceD1M1Set c := by
  ext i
  simp [pairWordIndices]
  rw [pairWordOfChoice_get]
  have hY := @pairChoiceY_mem_not_x c i
  have hZ := @pairChoiceZ_mem_not_previous c i
  have hD111 := @pairChoiceD111_mem_not_previous c i
  have hD11M := @pairChoiceD11M_mem_not_previous c i
  have hD1M1 := @pairChoiceD1M1_mem_not_previous c i
  have hDM11 := @pairChoiceDM11_mem_not_previous c i
  by_cases hx : i ∈ pairChoiceXSet c <;>
    by_cases hy : i ∈ pairChoiceYSet c <;>
      by_cases hz : i ∈ pairChoiceZSet c <;>
        by_cases hd111 : i ∈ pairChoiceD111Set c <;>
          by_cases hd11m : i ∈ pairChoiceD11MSet c <;>
            by_cases hd1m1 : i ∈ pairChoiceD1M1Set c <;>
              simp_all [pairChoicePairAt]

theorem pairWordOfChoice_indices_dm11 (c : PairWordChoiceSigma) :
    pairWordIndices (pairWordOfChoice c) PairId.dm11 =
      pairChoiceDM11Set c := by
  ext i
  simp [pairWordIndices]
  rw [pairWordOfChoice_get]
  have hY := @pairChoiceY_mem_not_x c i
  have hZ := @pairChoiceZ_mem_not_previous c i
  have hD111 := @pairChoiceD111_mem_not_previous c i
  have hD11M := @pairChoiceD11M_mem_not_previous c i
  have hD1M1 := @pairChoiceD1M1_mem_not_previous c i
  have hDM11 := @pairChoiceDM11_mem_not_previous c i
  have hDM11_of_not := @pairChoiceDM11_mem_of_not_previous c i
  by_cases hx : i ∈ pairChoiceXSet c <;>
    by_cases hy : i ∈ pairChoiceYSet c <;>
      by_cases hz : i ∈ pairChoiceZSet c <;>
        by_cases hd111 : i ∈ pairChoiceD111Set c <;>
          by_cases hd11m : i ∈ pairChoiceD11MSet c <;>
            by_cases hd1m1 : i ∈ pairChoiceD1M1Set c <;>
              simp_all [pairChoicePairAt]

theorem pairWordOfChoice_valid (c : PairWordChoiceSigma) :
    ValidPairWord (pairWordOfChoice c) := by
  rw [ValidPairWord]
  constructor
  · rw [pairCount_eq_pairWordIndices_card, pairWordOfChoice_indices_x]
    simp
  constructor
  · rw [pairCount_eq_pairWordIndices_card, pairWordOfChoice_indices_y]
    simp
  constructor
  · rw [pairCount_eq_pairWordIndices_card, pairWordOfChoice_indices_z]
    simp
  constructor
  · rw [pairCount_eq_pairWordIndices_card, pairWordOfChoice_indices_d111]
    simp
  constructor
  · rw [pairCount_eq_pairWordIndices_card, pairWordOfChoice_indices_d11m]
    simp
  constructor
  · rw [pairCount_eq_pairWordIndices_card, pairWordOfChoice_indices_d1m1]
    simp
  · rw [pairCount_eq_pairWordIndices_card, pairWordOfChoice_indices_dm11]
    simp

theorem pairWordIndices_not_mem_of_get_eq_ne
    {w : PairWord} {p q : PairId} (hpq : p ≠ q) {i : Fin 13}
    (hget : w.get i = p) :
    i ∉ pairWordIndices w q := by
  intro hi
  have hq : w.get i = q := by
    simpa [pairWordIndices] using hi
  exact hpq (hget.symm.trans hq)

noncomputable def pairWordChoiceOfValidX
    (v : ValidPairWordSubtype) :
    ChoosePositions pairWordRemaining0 1 := by
  classical
  let xSet := pairWordIndices v.1 PairId.x
  have hxSubset : xSet ⊆ pairWordRemaining0 := by
    intro i _hi
    simp [pairWordRemaining0]
  have hxCard : xSet.card = 1 := by
    rw [← pairCount_eq_pairWordIndices_card]
    exact v.2.1
  exact ⟨liftPositionSet hxSubset, by simpa [hxCard]⟩

@[simp] theorem pairWordChoiceOfValidX_lower (v : ValidPairWordSubtype) :
    lowerPositionSet (pairWordChoiceOfValidX v).1 =
      pairWordIndices v.1 PairId.x := by
  unfold pairWordChoiceOfValidX
  simp [lowerPositionSet_lift]

noncomputable def pairWordChoiceOfValidY
    (v : ValidPairWordSubtype) :
    ChoosePositions (pairWordRemaining1 (pairWordChoiceOfValidX v)) 2 := by
  classical
  let ySet := pairWordIndices v.1 PairId.y
  have hySubset : ySet ⊆ pairWordRemaining1 (pairWordChoiceOfValidX v) := by
    intro i hi
    have hget : v.1.get i = PairId.y := by
      simpa [ySet, pairWordIndices] using hi
    have hnotx : i ∉ pairWordIndices v.1 PairId.x :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotx' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidX v).1 := by
      simpa [pairWordChoiceOfValidX_lower v] using hnotx
    simpa [pairWordRemaining1, pairWordRemaining0, remainingPositions]
      using hnotx'
  have hyCard : ySet.card = 2 := by
    rw [← pairCount_eq_pairWordIndices_card]
    exact v.2.2.1
  exact ⟨liftPositionSet hySubset, by simpa [hyCard]⟩

@[simp] theorem pairWordChoiceOfValidY_lower (v : ValidPairWordSubtype) :
    lowerPositionSet (pairWordChoiceOfValidY v).1 =
      pairWordIndices v.1 PairId.y := by
  unfold pairWordChoiceOfValidY
  simp [lowerPositionSet_lift]

noncomputable def pairWordChoiceOfValidZ
    (v : ValidPairWordSubtype) :
    ChoosePositions
      (pairWordRemaining2 (pairWordChoiceOfValidX v)
        (pairWordChoiceOfValidY v)) 2 := by
  classical
  let zSet := pairWordIndices v.1 PairId.z
  have hzSubset : zSet ⊆
      pairWordRemaining2 (pairWordChoiceOfValidX v)
        (pairWordChoiceOfValidY v) := by
    intro i hi
    have hget : v.1.get i = PairId.z := by
      simpa [zSet, pairWordIndices] using hi
    have hnotx : i ∉ pairWordIndices v.1 PairId.x :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnoty : i ∉ pairWordIndices v.1 PairId.y :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotx' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidX v).1 := by
      simpa [pairWordChoiceOfValidX_lower v] using hnotx
    have hnoty' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidY v).1 := by
      simpa [pairWordChoiceOfValidY_lower v] using hnoty
    simpa [pairWordRemaining2, pairWordRemaining1, pairWordRemaining0,
      remainingPositions] using And.intro hnotx' hnoty'
  have hzCard : zSet.card = 2 := by
    rw [← pairCount_eq_pairWordIndices_card]
    exact v.2.2.2.1
  exact ⟨liftPositionSet hzSubset, by simpa [hzCard]⟩

@[simp] theorem pairWordChoiceOfValidZ_lower (v : ValidPairWordSubtype) :
    lowerPositionSet (pairWordChoiceOfValidZ v).1 =
      pairWordIndices v.1 PairId.z := by
  unfold pairWordChoiceOfValidZ
  simp [lowerPositionSet_lift]

noncomputable def pairWordChoiceOfValidD111
    (v : ValidPairWordSubtype) :
    ChoosePositions
      (pairWordRemaining3 (pairWordChoiceOfValidX v)
        (pairWordChoiceOfValidY v) (pairWordChoiceOfValidZ v)) 2 := by
  classical
  let d111Set := pairWordIndices v.1 PairId.d111
  have hd111Subset : d111Set ⊆
      pairWordRemaining3 (pairWordChoiceOfValidX v)
        (pairWordChoiceOfValidY v) (pairWordChoiceOfValidZ v) := by
    intro i hi
    have hget : v.1.get i = PairId.d111 := by
      simpa [d111Set, pairWordIndices] using hi
    have hnotx : i ∉ pairWordIndices v.1 PairId.x :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnoty : i ∉ pairWordIndices v.1 PairId.y :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotz : i ∉ pairWordIndices v.1 PairId.z :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotx' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidX v).1 := by
      simpa [pairWordChoiceOfValidX_lower v] using hnotx
    have hnoty' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidY v).1 := by
      simpa [pairWordChoiceOfValidY_lower v] using hnoty
    have hnotz' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidZ v).1 := by
      simpa [pairWordChoiceOfValidZ_lower v] using hnotz
    simpa [pairWordRemaining3, pairWordRemaining2, pairWordRemaining1,
      pairWordRemaining0, remainingPositions]
      using And.intro (And.intro hnotx' hnoty') hnotz'
  have hd111Card : d111Set.card = 2 := by
    rw [← pairCount_eq_pairWordIndices_card]
    exact v.2.2.2.2.1
  exact ⟨liftPositionSet hd111Subset, by simpa [hd111Card]⟩

@[simp] theorem pairWordChoiceOfValidD111_lower (v : ValidPairWordSubtype) :
    lowerPositionSet (pairWordChoiceOfValidD111 v).1 =
      pairWordIndices v.1 PairId.d111 := by
  unfold pairWordChoiceOfValidD111
  simp [lowerPositionSet_lift]

noncomputable def pairWordChoiceOfValidD11M
    (v : ValidPairWordSubtype) :
    ChoosePositions
      (pairWordRemaining4 (pairWordChoiceOfValidX v)
        (pairWordChoiceOfValidY v) (pairWordChoiceOfValidZ v)
        (pairWordChoiceOfValidD111 v)) 2 := by
  classical
  let d11mSet := pairWordIndices v.1 PairId.d11m
  have hd11mSubset : d11mSet ⊆
      pairWordRemaining4 (pairWordChoiceOfValidX v)
        (pairWordChoiceOfValidY v) (pairWordChoiceOfValidZ v)
        (pairWordChoiceOfValidD111 v) := by
    intro i hi
    have hget : v.1.get i = PairId.d11m := by
      simpa [d11mSet, pairWordIndices] using hi
    have hnotx : i ∉ pairWordIndices v.1 PairId.x :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnoty : i ∉ pairWordIndices v.1 PairId.y :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotz : i ∉ pairWordIndices v.1 PairId.z :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotd111 : i ∉ pairWordIndices v.1 PairId.d111 :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotx' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidX v).1 := by
      simpa [pairWordChoiceOfValidX_lower v] using hnotx
    have hnoty' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidY v).1 := by
      simpa [pairWordChoiceOfValidY_lower v] using hnoty
    have hnotz' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidZ v).1 := by
      simpa [pairWordChoiceOfValidZ_lower v] using hnotz
    have hnotd111' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidD111 v).1 := by
      simpa [pairWordChoiceOfValidD111_lower v] using hnotd111
    simpa [pairWordRemaining4, pairWordRemaining3, pairWordRemaining2,
      pairWordRemaining1, pairWordRemaining0, remainingPositions]
      using And.intro (And.intro (And.intro hnotx' hnoty') hnotz')
        hnotd111'
  have hd11mCard : d11mSet.card = 2 := by
    rw [← pairCount_eq_pairWordIndices_card]
    exact v.2.2.2.2.2.1
  exact ⟨liftPositionSet hd11mSubset, by simpa [hd11mCard]⟩

@[simp] theorem pairWordChoiceOfValidD11M_lower (v : ValidPairWordSubtype) :
    lowerPositionSet (pairWordChoiceOfValidD11M v).1 =
      pairWordIndices v.1 PairId.d11m := by
  unfold pairWordChoiceOfValidD11M
  simp [lowerPositionSet_lift]

noncomputable def pairWordChoiceOfValidD1M1
    (v : ValidPairWordSubtype) :
    ChoosePositions
      (pairWordRemaining5 (pairWordChoiceOfValidX v)
        (pairWordChoiceOfValidY v) (pairWordChoiceOfValidZ v)
        (pairWordChoiceOfValidD111 v)
        (pairWordChoiceOfValidD11M v)) 2 := by
  classical
  let d1m1Set := pairWordIndices v.1 PairId.d1m1
  have hd1m1Subset : d1m1Set ⊆
      pairWordRemaining5 (pairWordChoiceOfValidX v)
        (pairWordChoiceOfValidY v) (pairWordChoiceOfValidZ v)
        (pairWordChoiceOfValidD111 v)
        (pairWordChoiceOfValidD11M v) := by
    intro i hi
    have hget : v.1.get i = PairId.d1m1 := by
      simpa [d1m1Set, pairWordIndices] using hi
    have hnotx : i ∉ pairWordIndices v.1 PairId.x :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnoty : i ∉ pairWordIndices v.1 PairId.y :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotz : i ∉ pairWordIndices v.1 PairId.z :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotd111 : i ∉ pairWordIndices v.1 PairId.d111 :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotd11m : i ∉ pairWordIndices v.1 PairId.d11m :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotx' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidX v).1 := by
      simpa [pairWordChoiceOfValidX_lower v] using hnotx
    have hnoty' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidY v).1 := by
      simpa [pairWordChoiceOfValidY_lower v] using hnoty
    have hnotz' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidZ v).1 := by
      simpa [pairWordChoiceOfValidZ_lower v] using hnotz
    have hnotd111' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidD111 v).1 := by
      simpa [pairWordChoiceOfValidD111_lower v] using hnotd111
    have hnotd11m' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidD11M v).1 := by
      simpa [pairWordChoiceOfValidD11M_lower v] using hnotd11m
    simpa [pairWordRemaining5, pairWordRemaining4, pairWordRemaining3,
      pairWordRemaining2, pairWordRemaining1, pairWordRemaining0,
      remainingPositions]
      using And.intro
        (And.intro (And.intro (And.intro hnotx' hnoty') hnotz')
          hnotd111') hnotd11m'
  have hd1m1Card : d1m1Set.card = 2 := by
    rw [← pairCount_eq_pairWordIndices_card]
    exact v.2.2.2.2.2.2.1
  exact ⟨liftPositionSet hd1m1Subset, by simpa [hd1m1Card]⟩

@[simp] theorem pairWordChoiceOfValidD1M1_lower (v : ValidPairWordSubtype) :
    lowerPositionSet (pairWordChoiceOfValidD1M1 v).1 =
      pairWordIndices v.1 PairId.d1m1 := by
  unfold pairWordChoiceOfValidD1M1
  simp [lowerPositionSet_lift]

noncomputable def pairWordChoiceOfValidDM11
    (v : ValidPairWordSubtype) :
    ChoosePositions
      (pairWordRemaining6 (pairWordChoiceOfValidX v)
        (pairWordChoiceOfValidY v) (pairWordChoiceOfValidZ v)
        (pairWordChoiceOfValidD111 v)
        (pairWordChoiceOfValidD11M v)
        (pairWordChoiceOfValidD1M1 v)) 2 := by
  classical
  let dm11Set := pairWordIndices v.1 PairId.dm11
  have hdm11Subset : dm11Set ⊆
      pairWordRemaining6 (pairWordChoiceOfValidX v)
        (pairWordChoiceOfValidY v) (pairWordChoiceOfValidZ v)
        (pairWordChoiceOfValidD111 v)
        (pairWordChoiceOfValidD11M v)
        (pairWordChoiceOfValidD1M1 v) := by
    intro i hi
    have hget : v.1.get i = PairId.dm11 := by
      simpa [dm11Set, pairWordIndices] using hi
    have hnotx : i ∉ pairWordIndices v.1 PairId.x :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnoty : i ∉ pairWordIndices v.1 PairId.y :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotz : i ∉ pairWordIndices v.1 PairId.z :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotd111 : i ∉ pairWordIndices v.1 PairId.d111 :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotd11m : i ∉ pairWordIndices v.1 PairId.d11m :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotd1m1 : i ∉ pairWordIndices v.1 PairId.d1m1 :=
      pairWordIndices_not_mem_of_get_eq_ne (by decide) hget
    have hnotx' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidX v).1 := by
      simpa [pairWordChoiceOfValidX_lower v] using hnotx
    have hnoty' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidY v).1 := by
      simpa [pairWordChoiceOfValidY_lower v] using hnoty
    have hnotz' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidZ v).1 := by
      simpa [pairWordChoiceOfValidZ_lower v] using hnotz
    have hnotd111' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidD111 v).1 := by
      simpa [pairWordChoiceOfValidD111_lower v] using hnotd111
    have hnotd11m' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidD11M v).1 := by
      simpa [pairWordChoiceOfValidD11M_lower v] using hnotd11m
    have hnotd1m1' :
        i ∉ lowerPositionSet (pairWordChoiceOfValidD1M1 v).1 := by
      simpa [pairWordChoiceOfValidD1M1_lower v] using hnotd1m1
    simpa [pairWordRemaining6, pairWordRemaining5, pairWordRemaining4,
      pairWordRemaining3, pairWordRemaining2, pairWordRemaining1,
      pairWordRemaining0, remainingPositions]
      using And.intro
        (And.intro
          (And.intro (And.intro (And.intro hnotx' hnoty') hnotz')
            hnotd111') hnotd11m') hnotd1m1'
  have hdm11Card : dm11Set.card = 2 := by
    rw [← pairCount_eq_pairWordIndices_card]
    exact v.2.2.2.2.2.2.2
  exact ⟨liftPositionSet hdm11Subset, by simpa [hdm11Card]⟩

@[simp] theorem pairWordChoiceOfValidDM11_lower (v : ValidPairWordSubtype) :
    lowerPositionSet (pairWordChoiceOfValidDM11 v).1 =
      pairWordIndices v.1 PairId.dm11 := by
  unfold pairWordChoiceOfValidDM11
  simp [lowerPositionSet_lift]

noncomputable def pairWordChoiceOfValid
    (v : ValidPairWordSubtype) : PairWordChoiceSigma :=
  ⟨pairWordChoiceOfValidX v, pairWordChoiceOfValidY v,
    pairWordChoiceOfValidZ v, pairWordChoiceOfValidD111 v,
    pairWordChoiceOfValidD11M v, pairWordChoiceOfValidD1M1 v,
    pairWordChoiceOfValidDM11 v⟩

noncomputable def validPairWordOfChoice
    (c : PairWordChoiceSigma) : ValidPairWordSubtype :=
  ⟨pairWordOfChoice c, pairWordOfChoice_valid c⟩

@[simp] theorem pairWordChoiceOfValid_xSet (v : ValidPairWordSubtype) :
    pairChoiceXSet (pairWordChoiceOfValid v) =
      pairWordIndices v.1 PairId.x := by
  change lowerPositionSet (pairWordChoiceOfValidX v).1 =
    pairWordIndices v.1 PairId.x
  exact pairWordChoiceOfValidX_lower v

@[simp] theorem pairWordChoiceOfValid_ySet (v : ValidPairWordSubtype) :
    pairChoiceYSet (pairWordChoiceOfValid v) =
      pairWordIndices v.1 PairId.y := by
  change lowerPositionSet (pairWordChoiceOfValidY v).1 =
    pairWordIndices v.1 PairId.y
  exact pairWordChoiceOfValidY_lower v

@[simp] theorem pairWordChoiceOfValid_zSet (v : ValidPairWordSubtype) :
    pairChoiceZSet (pairWordChoiceOfValid v) =
      pairWordIndices v.1 PairId.z := by
  change lowerPositionSet (pairWordChoiceOfValidZ v).1 =
    pairWordIndices v.1 PairId.z
  exact pairWordChoiceOfValidZ_lower v

@[simp] theorem pairWordChoiceOfValid_d111Set (v : ValidPairWordSubtype) :
    pairChoiceD111Set (pairWordChoiceOfValid v) =
      pairWordIndices v.1 PairId.d111 := by
  change lowerPositionSet (pairWordChoiceOfValidD111 v).1 =
    pairWordIndices v.1 PairId.d111
  exact pairWordChoiceOfValidD111_lower v

@[simp] theorem pairWordChoiceOfValid_d11mSet (v : ValidPairWordSubtype) :
    pairChoiceD11MSet (pairWordChoiceOfValid v) =
      pairWordIndices v.1 PairId.d11m := by
  change lowerPositionSet (pairWordChoiceOfValidD11M v).1 =
    pairWordIndices v.1 PairId.d11m
  exact pairWordChoiceOfValidD11M_lower v

@[simp] theorem pairWordChoiceOfValid_d1m1Set (v : ValidPairWordSubtype) :
    pairChoiceD1M1Set (pairWordChoiceOfValid v) =
      pairWordIndices v.1 PairId.d1m1 := by
  change lowerPositionSet (pairWordChoiceOfValidD1M1 v).1 =
    pairWordIndices v.1 PairId.d1m1
  exact pairWordChoiceOfValidD1M1_lower v

@[simp] theorem pairWordChoiceOfValid_dm11Set (v : ValidPairWordSubtype) :
    pairChoiceDM11Set (pairWordChoiceOfValid v) =
      pairWordIndices v.1 PairId.dm11 := by
  change lowerPositionSet (pairWordChoiceOfValidDM11 v).1 =
    pairWordIndices v.1 PairId.dm11
  exact pairWordChoiceOfValidDM11_lower v

theorem pairWordOfChoice_pairWordChoiceOfValid
    (v : ValidPairWordSubtype) :
    pairWordOfChoice (pairWordChoiceOfValid v) = v.1 := by
  apply (Equiv.injective pairWordEquivFn)
  funext i
  change (pairWordOfChoice (pairWordChoiceOfValid v)).get i = v.1.get i
  rw [pairWordOfChoice_get]
  cases hget : v.1.get i <;>
    simp [pairChoicePairAt, pairWordIndices, hget]

theorem validPairWordOfChoice_pairWordChoiceOfValid
    (v : ValidPairWordSubtype) :
    validPairWordOfChoice (pairWordChoiceOfValid v) = v := by
  apply Subtype.ext
  exact pairWordOfChoice_pairWordChoiceOfValid v

theorem validPairWordOfChoice_injective :
    Function.Injective validPairWordOfChoice := by
  intro c d h
  have hw : pairWordOfChoice c = pairWordOfChoice d :=
    congrArg Subtype.val h
  have hxSet : pairChoiceXSet c = pairChoiceXSet d := by
    rw [← pairWordOfChoice_indices_x c, hw, pairWordOfChoice_indices_x d]
  rcases c with ⟨x, y, z, d111, d11m, d1m1, dm11⟩
  rcases d with ⟨x', y', z', d111', d11m', d1m1', dm11'⟩
  have hxLower : lowerPositionSet x.1 = lowerPositionSet x'.1 := by
    simpa [pairChoiceXSet, pairChoiceX] using hxSet
  have hx : x = x' := by
    apply Subtype.ext
    exact lowerPositionSet_injective hxLower
  subst x'
  have hyLower : lowerPositionSet y.1 = lowerPositionSet y'.1 := by
    have hySet :
        pairChoiceYSet
            (⟨x, y, z, d111, d11m, d1m1, dm11⟩ :
              PairWordChoiceSigma) =
          pairChoiceYSet
            (⟨x, y', z', d111', d11m', d1m1', dm11'⟩ :
              PairWordChoiceSigma) := by
      rw [← pairWordOfChoice_indices_y
        (⟨x, y, z, d111, d11m, d1m1, dm11⟩ : PairWordChoiceSigma),
        hw,
        pairWordOfChoice_indices_y
          (⟨x, y', z', d111', d11m', d1m1', dm11'⟩ :
            PairWordChoiceSigma)]
    change lowerPositionSet y.1 = lowerPositionSet y'.1 at hySet
    exact hySet
  have hy : y = y' := by
    apply Subtype.ext
    exact lowerPositionSet_injective hyLower
  subst y'
  have hzLower : lowerPositionSet z.1 = lowerPositionSet z'.1 := by
    have hzSet :
        pairChoiceZSet
            (⟨x, y, z, d111, d11m, d1m1, dm11⟩ :
              PairWordChoiceSigma) =
          pairChoiceZSet
            (⟨x, y, z', d111', d11m', d1m1', dm11'⟩ :
              PairWordChoiceSigma) := by
      rw [← pairWordOfChoice_indices_z
        (⟨x, y, z, d111, d11m, d1m1, dm11⟩ : PairWordChoiceSigma),
        hw,
        pairWordOfChoice_indices_z
          (⟨x, y, z', d111', d11m', d1m1', dm11'⟩ :
            PairWordChoiceSigma)]
    change lowerPositionSet z.1 = lowerPositionSet z'.1 at hzSet
    exact hzSet
  have hz : z = z' := by
    apply Subtype.ext
    exact lowerPositionSet_injective hzLower
  subst z'
  have hd111Lower : lowerPositionSet d111.1 =
      lowerPositionSet d111'.1 := by
    have hd111Set :
        pairChoiceD111Set
            (⟨x, y, z, d111, d11m, d1m1, dm11⟩ :
              PairWordChoiceSigma) =
          pairChoiceD111Set
            (⟨x, y, z, d111', d11m', d1m1', dm11'⟩ :
              PairWordChoiceSigma) := by
      rw [← pairWordOfChoice_indices_d111
        (⟨x, y, z, d111, d11m, d1m1, dm11⟩ :
          PairWordChoiceSigma),
        hw,
        pairWordOfChoice_indices_d111
          (⟨x, y, z, d111', d11m', d1m1', dm11'⟩ :
            PairWordChoiceSigma)]
    change lowerPositionSet d111.1 = lowerPositionSet d111'.1 at hd111Set
    exact hd111Set
  have hd111 : d111 = d111' := by
    apply Subtype.ext
    exact lowerPositionSet_injective hd111Lower
  subst d111'
  have hd11mLower : lowerPositionSet d11m.1 =
      lowerPositionSet d11m'.1 := by
    have hd11mSet :
        pairChoiceD11MSet
            (⟨x, y, z, d111, d11m, d1m1, dm11⟩ :
              PairWordChoiceSigma) =
          pairChoiceD11MSet
            (⟨x, y, z, d111, d11m', d1m1', dm11'⟩ :
              PairWordChoiceSigma) := by
      rw [← pairWordOfChoice_indices_d11m
        (⟨x, y, z, d111, d11m, d1m1, dm11⟩ :
          PairWordChoiceSigma),
        hw,
        pairWordOfChoice_indices_d11m
          (⟨x, y, z, d111, d11m', d1m1', dm11'⟩ :
            PairWordChoiceSigma)]
    change lowerPositionSet d11m.1 = lowerPositionSet d11m'.1 at hd11mSet
    exact hd11mSet
  have hd11m : d11m = d11m' := by
    apply Subtype.ext
    exact lowerPositionSet_injective hd11mLower
  subst d11m'
  have hd1m1Lower : lowerPositionSet d1m1.1 =
      lowerPositionSet d1m1'.1 := by
    have hd1m1Set :
        pairChoiceD1M1Set
            (⟨x, y, z, d111, d11m, d1m1, dm11⟩ :
              PairWordChoiceSigma) =
          pairChoiceD1M1Set
            (⟨x, y, z, d111, d11m, d1m1', dm11'⟩ :
              PairWordChoiceSigma) := by
      rw [← pairWordOfChoice_indices_d1m1
        (⟨x, y, z, d111, d11m, d1m1, dm11⟩ :
          PairWordChoiceSigma),
        hw,
        pairWordOfChoice_indices_d1m1
          (⟨x, y, z, d111, d11m, d1m1', dm11'⟩ :
            PairWordChoiceSigma)]
    change lowerPositionSet d1m1.1 = lowerPositionSet d1m1'.1 at hd1m1Set
    exact hd1m1Set
  have hd1m1 : d1m1 = d1m1' := by
    apply Subtype.ext
    exact lowerPositionSet_injective hd1m1Lower
  subst d1m1'
  have hdm11Lower : lowerPositionSet dm11.1 =
      lowerPositionSet dm11'.1 := by
    have hdm11Set :
        pairChoiceDM11Set
            (⟨x, y, z, d111, d11m, d1m1, dm11⟩ :
              PairWordChoiceSigma) =
          pairChoiceDM11Set
            (⟨x, y, z, d111, d11m, d1m1, dm11'⟩ :
              PairWordChoiceSigma) := by
      rw [← pairWordOfChoice_indices_dm11
        (⟨x, y, z, d111, d11m, d1m1, dm11⟩ :
          PairWordChoiceSigma),
        hw,
        pairWordOfChoice_indices_dm11
          (⟨x, y, z, d111, d11m, d1m1, dm11'⟩ :
            PairWordChoiceSigma)]
    change lowerPositionSet dm11.1 = lowerPositionSet dm11'.1 at hdm11Set
    exact hdm11Set
  have hdm11 : dm11 = dm11' := by
    apply Subtype.ext
    exact lowerPositionSet_injective hdm11Lower
  subst dm11'
  rfl

theorem validPairWordOfChoice_surjective :
    Function.Surjective validPairWordOfChoice := by
  intro v
  exact ⟨pairWordChoiceOfValid v,
    validPairWordOfChoice_pairWordChoiceOfValid v⟩

noncomputable def pairWordChoiceEquivValid :
    PairWordChoiceSigma ≃ ValidPairWordSubtype :=
  Equiv.ofBijective validPairWordOfChoice
    ⟨validPairWordOfChoice_injective,
      validPairWordOfChoice_surjective⟩

theorem validPairWord_card_literal :
    Fintype.card ValidPairWordSubtype = 97297200 := by
  calc
    Fintype.card ValidPairWordSubtype = Fintype.card PairWordChoiceSigma := by
      exact Fintype.card_congr pairWordChoiceEquivValid.symm
    _ = Nat.choose 13 1 * Nat.choose 12 2 * Nat.choose 10 2 *
        Nat.choose 8 2 * Nat.choose 6 2 * Nat.choose 4 2 *
          Nat.choose 2 2 := pairWordChoiceSigma_card
    _ = 97297200 := by
      norm_num [Nat.choose]

theorem validPairWord_card :
    Fintype.card ValidPairWordSubtype = numPairWords := by
  simpa [numPairWords] using validPairWord_card_literal

def pairWordLexUnrankVectorAux :
    (fuel : Nat) -> PairCounts -> Nat -> Vector PairId fuel
  | 0, _counts, _rank =>
      Vector.ofFn fun i : Fin 0 => nomatch i
  | fuel + 1, counts, rank =>
      match pairWordLexSelect counts rank with
      | some sel =>
          vectorCons sel.pair
            (pairWordLexUnrankVectorAux fuel
              (counts.decrement sel.pair) sel.rest)
      | none =>
          vectorCons PairId.x
            (pairWordLexUnrankVectorAux fuel counts 0)

theorem pairWordLexUnrankVectorAux_sound :
    ∀ (fuel : Nat) (counts : PairCounts) (rank : Nat),
      counts ∈ pairCountsCandidateList ->
      counts.total = fuel ->
      rank < pairWordLexBlockCount counts ->
        counts.MatchesVector
          (pairWordLexUnrankVectorAux fuel counts rank) ∧
        pairWordLexRankVectorAux
          (pairWordLexUnrankVectorAux fuel counts rank) counts = rank := by
  intro fuel
  induction fuel with
  | zero =>
      intro counts rank hmem htotal hrank
      constructor
      · cases counts with
        | mk x y z d111 d11m d1m1 dm11 =>
            simp [PairCounts.total] at htotal
            have hx : x = 0 := by omega
            have hy : y = 0 := by omega
            have hz : z = 0 := by omega
            have hd111 : d111 = 0 := by omega
            have hd11m : d11m = 0 := by omega
            have hd1m1 : d1m1 = 0 := by omega
            have hdm11 : dm11 = 0 := by omega
            subst x
            subst y
            subst z
            subst d111
            subst d11m
            subst d1m1
            subst dm11
            simp [PairCounts.MatchesVector, pairWordLexUnrankVectorAux]
      · cases counts with
        | mk x y z d111 d11m d1m1 dm11 =>
            simp [PairCounts.total] at htotal
            have hx : x = 0 := by omega
            have hy : y = 0 := by omega
            have hz : z = 0 := by omega
            have hd111 : d111 = 0 := by omega
            have hd11m : d11m = 0 := by omega
            have hd1m1 : d1m1 = 0 := by omega
            have hdm11 : dm11 = 0 := by omega
            subst x
            subst y
            subst z
            subst d111
            subst d11m
            subst d1m1
            subst dm11
            norm_num [pairWordLexBlockCount, PairCounts.total,
              pairWordLexUnrankVectorAux, pairWordLexRankVectorAux]
              at hrank ⊢
            omega
  | succ fuel ih =>
      intro counts rank hmem htotal hrank
      have htotalPos : 0 < counts.total := by omega
      have hblocks :
          pairWordLexFirstStepBlockTotal counts =
            pairWordLexBlockCount counts :=
        pairCountsFirstStepRecurrence_of_mem hmem htotalPos
      have hrankBlocks :
          rank < ((pairWordLexFirstStepBlocks counts).map Prod.snd).sum := by
        have hfirst : rank < pairWordLexFirstStepBlockTotal counts := by
          simpa [hblocks] using hrank
        simpa [pairWordLexFirstStepBlockTotal] using hfirst
      rcases selectBlockFrom_some_of_lt_sum
          (offset := 0) hrankBlocks with ⟨sel, hsel⟩
      have hsound := selectBlockFrom_sound hsel
      have hoffset := selectBlockFrom_offset_eq
        (pairWordLexFirstStepBlocks_nodup counts) hsel
      have hmemBlock := hsound.2.2
      have hblockData :=
        pairWordLexFirstStepBlocks_mem hmemBlock
      have hpos : 0 < counts.get sel.pair := hblockData.1
      have hblockEq :
          sel.block =
            pairWordLexBlockCount (counts.decrement sel.pair) :=
        hblockData.2
      have hmemDec :
          counts.decrement sel.pair ∈ pairCountsCandidateList :=
        pairCountsDecrement_mem hmem hpos
      have htotalDec :
          (counts.decrement sel.pair).total = fuel := by
        have hdec := pairCountsDecrement_total hmem hpos
        omega
      have hrest :
          sel.rest <
            pairWordLexBlockCount (counts.decrement sel.pair) := by
        simpa [hblockEq] using hsound.2.1
      have hih := ih (counts.decrement sel.pair) sel.rest
        hmemDec htotalDec hrest
      have hselect :
          pairWordLexSelect counts rank = some sel := by
        simpa [pairWordLexSelect] using hsel
      constructor
      · simp [pairWordLexUnrankVectorAux, hselect]
        exact PairCounts.matchesVector_cons hpos hih.1
      · have hsmall :
            pairWordLexSmallerCount counts sel.pair = sel.offset := by
          unfold pairWordLexSmallerCount
          simpa using hoffset.symm
        have hrankEq : rank = sel.offset + sel.rest := by
          simpa using hsound.1
        calc
          pairWordLexRankVectorAux
              (pairWordLexUnrankVectorAux (fuel + 1) counts rank)
              counts
              =
              pairWordLexSmallerCount counts sel.pair + sel.rest := by
                simp [pairWordLexUnrankVectorAux, hselect,
                  pairWordLexRankVectorAux, vectorTail_vectorCons, hih.2]
          _ = sel.offset + sel.rest := by
                rw [hsmall]
          _ = rank := hrankEq.symm

def pairWordLexUnrank (r : Fin numPairWords) : PairWord :=
  pairWordLexUnrankVectorAux 13 PairCounts.initial r.val

theorem pairWordLexUnrank_sound (r : Fin numPairWords) :
    PairCounts.initial.MatchesVector (pairWordLexUnrank r) ∧
      pairWordLexRank (pairWordLexUnrank r) = r.val := by
  have hmem : PairCounts.initial ∈ pairCountsCandidateList := by
    simp [pairCountsCandidateList, PairCounts.initial]
  have htotal : PairCounts.initial.total = 13 := by
    norm_num [PairCounts.total, PairCounts.initial]
  have hblock : pairWordLexBlockCount PairCounts.initial = numPairWords := by
    norm_num [pairWordLexBlockCount, PairCounts.total,
      PairCounts.initial, numPairWords]
  have hrank : r.val < pairWordLexBlockCount PairCounts.initial := by
    simpa [hblock] using r.isLt
  simpa [pairWordLexUnrank, pairWordLexRank] using
    pairWordLexUnrankVectorAux_sound 13 PairCounts.initial r.val
      hmem htotal hrank

noncomputable def validPairWordEquivFin :
    ValidPairWordSubtype ≃ Fin numPairWords :=
  Fintype.equivFinOfCardEq validPairWord_card

def unrankPairWord (r : Fin numPairWords) : PairWord :=
  pairWordLexUnrank r

def rankPairWord? (w : PairWord) : Option (Fin numPairWords) :=
  pairWordLexRank? w

theorem pairWordLexRank?_eq_rankPairWord? (w : PairWord) :
    pairWordLexRank? w = rankPairWord? w := rfl

theorem unrankPairWord_valid (r : Fin numPairWords) :
    ValidPairWord (unrankPairWord r) := by
  exact PairCounts.matchesVector_valid (pairWordLexUnrank_sound r).1

theorem rank_unrank_pairword (r : Fin numPairWords) :
    rankPairWord? (unrankPairWord r) = some r := by
  have hsound := pairWordLexUnrank_sound r
  unfold rankPairWord? pairWordLexRank?
  rw [if_pos (unrankPairWord_valid r)]
  unfold unrankPairWord
  change
    (if h : pairWordLexRank (pairWordLexUnrank r) < numPairWords then
        some ⟨pairWordLexRank (pairWordLexUnrank r), h⟩
      else
        none) = some r
  rw [hsound.2]
  simp

def unrankValidPairWord (r : Fin numPairWords) :
    ValidPairWordSubtype :=
  ⟨unrankPairWord r, unrankPairWord_valid r⟩

theorem unrankValidPairWord_injective :
    Function.Injective unrankValidPairWord := by
  intro a b h
  have hword : unrankPairWord a = unrankPairWord b :=
    congrArg Subtype.val h
  have hrank :
      (some a : Option (Fin numPairWords)) = some b := by
    rw [← rank_unrank_pairword a, ← rank_unrank_pairword b, hword]
  simpa using hrank

theorem unrank_rank_pairword
    (w : PairWord) (h : ValidPairWord w) :
    exists r : Fin numPairWords, unrankPairWord r = w := by
  let f : Fin numPairWords -> Fin numPairWords :=
    fun r => validPairWordEquivFin (unrankValidPairWord r)
  have hfInj : Function.Injective f := by
    intro a b hab
    apply unrankValidPairWord_injective
    exact validPairWordEquivFin.injective hab
  have hfSurj : Function.Surjective f :=
    (Finite.injective_iff_surjective).mp hfInj
  rcases hfSurj (validPairWordEquivFin ⟨w, h⟩) with ⟨r, hr⟩
  refine ⟨r, ?_⟩
  have hsub :
      unrankValidPairWord r = (⟨w, h⟩ : ValidPairWordSubtype) := by
    apply validPairWordEquivFin.injective
    exact hr
  exact congrArg Subtype.val hsub

theorem rankPairWord?_some_of_valid
    {w : PairWord} (h : ValidPairWord w) :
    exists r : Fin numPairWords, rankPairWord? w = some r := by
  rcases unrank_rank_pairword w h with ⟨r, hr⟩
  refine ⟨r, ?_⟩
  rw [← hr]
  exact rank_unrank_pairword r

theorem rankPairWord?_eq_some_iff_unrank
    (w : PairWord) (r : Fin numPairWords) :
    rankPairWord? w = some r <-> w = unrankPairWord r := by
  constructor
  · intro h
    by_cases hvalid : ValidPairWord w
    · rcases unrank_rank_pairword w hvalid with ⟨s, hs⟩
      have hsRank : rankPairWord? w = some s := by
        rw [← hs]
        exact rank_unrank_pairword s
      rw [hsRank] at h
      injection h with hsr
      rw [← hs, hsr]
    · simp [rankPairWord?, pairWordLexRank?, hvalid] at h
  · intro h
    rw [h]
    exact rank_unrank_pairword r

theorem rankPairWord?_none_of_invalid
    {w : PairWord} (h : ¬ ValidPairWord w) :
    rankPairWord? w = none := by
  simp [rankPairWord?, pairWordLexRank?, h]

abbrev SignMask := Fin 64

def numSignMasks : Nat := 64

def unrankSignMask (r : Fin numSignMasks) : SignMask :=
  r

def rankSignMask (mask : SignMask) : Fin numSignMasks :=
  mask

theorem rank_unrank_signMask (r : Fin numSignMasks) :
    rankSignMask (unrankSignMask r) = r := rfl

theorem unrank_rank_signMask (mask : SignMask) :
    unrankSignMask (rankSignMask mask) = mask := rfl

#check rank_unrank_pairword
#check unrank_rank_pairword
#check rank_unrank_signMask
#check unrank_rank_signMask

end Cuboctahedron
