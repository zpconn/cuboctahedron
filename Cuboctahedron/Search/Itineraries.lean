import Mathlib.Tactic
import Cuboctahedron.Geometry.BilliardOrbit
import Cuboctahedron.Search.PairWords

/-!
Reduction from started omnihedral face sequences to length-13 pair words.
-/

namespace Cuboctahedron

abbrev WordIndex := Fin 13

def afterStart (i : WordIndex) : Step14 :=
  ⟨i.val + 1, Nat.succ_lt_succ i.isLt⟩

def dropStart (i : Step14) (h : i ≠ (0 : Step14)) : WordIndex :=
  ⟨i.val - 1, by
    have hi : i.val < 14 := i.isLt
    have hne : i.val ≠ 0 := by
      intro hv
      apply h
      apply Fin.ext
      simp [hv]
    omega⟩

theorem afterStart_ne_zero (i : WordIndex) :
    afterStart i ≠ (0 : Step14) := by
  intro h
  have hv := congrArg Fin.val h
  simp [afterStart] at hv

@[simp] theorem dropStart_afterStart (i : WordIndex) :
    dropStart (afterStart i) (afterStart_ne_zero i) = i := by
  apply Fin.ext
  simp [dropStart, afterStart]

@[simp] theorem afterStart_dropStart (i : Step14) (h : i ≠ (0 : Step14)) :
    afterStart (dropStart i h) = i := by
  apply Fin.ext
  simp [afterStart, dropStart]
  have hi : i.val < 14 := i.isLt
  have hne : i.val ≠ 0 := by
    intro hv
    apply h
    apply Fin.ext
    simp [hv]
  omega

def pairWordOfSeq (seq : Step14 -> Face) : PairWord :=
  Vector.ofFn fun i : WordIndex => pairOfFace (seq (afterStart i))

@[simp] theorem pairWordOfSeq_get (seq : Step14 -> Face) (i : WordIndex) :
    (pairWordOfSeq seq).get i = pairOfFace (seq (afterStart i)) := by
  unfold pairWordOfSeq
  change
    (Vector.ofFn fun i : WordIndex => pairOfFace (seq (afterStart i)))[i.val] =
      pairOfFace (seq (afterStart i))
  exact Vector.getElem_ofFn i.isLt

def PairWordMatchesSeq (w : PairWord) (seq : Step14 -> Face) : Prop :=
  forall i : WordIndex, w.get i = pairOfFace (seq (afterStart i))

theorem pairWordOfSeq_matches (seq : Step14 -> Face) :
    PairWordMatchesSeq (pairWordOfSeq seq) seq := by
  intro i
  simp

abbrev RemainingFacesOfPair (p : PairId) :=
  { f : Face // pairOfFace f = p /\ f ≠ Face.xp }

theorem remainingFacesCard_x :
    Fintype.card (RemainingFacesOfPair PairId.x) = 1 := by
  decide

theorem remainingFacesCard_y :
    Fintype.card (RemainingFacesOfPair PairId.y) = 2 := by
  decide

theorem remainingFacesCard_z :
    Fintype.card (RemainingFacesOfPair PairId.z) = 2 := by
  decide

theorem remainingFacesCard_d111 :
    Fintype.card (RemainingFacesOfPair PairId.d111) = 2 := by
  decide

theorem remainingFacesCard_d11m :
    Fintype.card (RemainingFacesOfPair PairId.d11m) = 2 := by
  decide

theorem remainingFacesCard_d1m1 :
    Fintype.card (RemainingFacesOfPair PairId.d1m1) = 2 := by
  decide

theorem remainingFacesCard_dm11 :
    Fintype.card (RemainingFacesOfPair PairId.dm11) = 2 := by
  decide

def pairIndexEquivRemainingIndex (seq : Step14 -> Face) (p : PairId) :
    { i : WordIndex // (pairWordOfSeq seq).get i = p } ≃
      { j : Step14 // pairOfFace (seq j) = p /\ j ≠ 0 } where
  toFun i :=
    ⟨afterStart i.1, by
      constructor
      · simpa using i.2
      · exact afterStart_ne_zero i.1⟩
  invFun j :=
    ⟨dropStart j.1 j.2.2, by
      have hj := j.2.1
      simpa using hj⟩
  left_inv i := by
    apply Subtype.ext
    simp
  right_inv j := by
    apply Subtype.ext
    simp

noncomputable def remainingIndexEquivFace
    (seq : Step14 -> Face)
    (hOmni : IsOmniSeq seq)
    (hStart : StartsXp seq)
    (p : PairId) :
    { j : Step14 // pairOfFace (seq j) = p /\ j ≠ 0 } ≃
      RemainingFacesOfPair p where
  toFun j :=
    ⟨seq j.1, j.2.1, by
      intro hface
      have hsame : seq j.1 = seq (0 : Step14) := by
        rw [hface, hStart]
      exact j.2.2 (hOmni.1 hsame)⟩
  invFun f :=
    let j := Classical.choose (hOmni.2 f.1)
    ⟨j, by
      have hj : seq j = f.1 := Classical.choose_spec (hOmni.2 f.1)
      constructor
      · rw [hj]
        exact f.2.1
      · intro hj0
        apply f.2.2
        rw [← hj, hj0, hStart]⟩
  left_inv j := by
    apply Subtype.ext
    exact hOmni.1 (Classical.choose_spec (hOmni.2 (seq j.1)))
  right_inv f := by
    apply Subtype.ext
    exact Classical.choose_spec (hOmni.2 f.1)

theorem pairCount_pairWordOfSeq_eq_remaining_card
    (seq : Step14 -> Face)
    (hOmni : IsOmniSeq seq)
    (hStart : StartsXp seq)
    (p : PairId) :
    pairCount p (pairWordOfSeq seq) =
      Fintype.card (RemainingFacesOfPair p) := by
  calc
    pairCount p (pairWordOfSeq seq)
        = Fintype.card { i : WordIndex // (pairWordOfSeq seq).get i = p } := rfl
    _ = Fintype.card { j : Step14 // pairOfFace (seq j) = p /\ j ≠ 0 } :=
        Fintype.card_congr (pairIndexEquivRemainingIndex seq p)
    _ = Fintype.card (RemainingFacesOfPair p) :=
        Fintype.card_congr (remainingIndexEquivFace seq hOmni hStart p)

theorem seq_to_pairword
    (seq : Fin 14 -> Face)
    (hOmni : IsOmniSeq seq)
    (hStart : StartsXp seq) :
    exists w : PairWord, ValidPairWord w /\ PairWordMatchesSeq w seq := by
  refine ⟨pairWordOfSeq seq, ?_, pairWordOfSeq_matches seq⟩
  unfold ValidPairWord
  constructor
  · rw [pairCount_pairWordOfSeq_eq_remaining_card seq hOmni hStart PairId.x,
      remainingFacesCard_x]
  constructor
  · rw [pairCount_pairWordOfSeq_eq_remaining_card seq hOmni hStart PairId.y,
      remainingFacesCard_y]
  constructor
  · rw [pairCount_pairWordOfSeq_eq_remaining_card seq hOmni hStart PairId.z,
      remainingFacesCard_z]
  constructor
  · rw [pairCount_pairWordOfSeq_eq_remaining_card seq hOmni hStart PairId.d111,
      remainingFacesCard_d111]
  constructor
  · rw [pairCount_pairWordOfSeq_eq_remaining_card seq hOmni hStart PairId.d11m,
      remainingFacesCard_d11m]
  constructor
  · rw [pairCount_pairWordOfSeq_eq_remaining_card seq hOmni hStart PairId.d1m1,
      remainingFacesCard_d1m1]
  · rw [pairCount_pairWordOfSeq_eq_remaining_card seq hOmni hStart PairId.dm11,
      remainingFacesCard_dm11]

def sampleStartedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | _ => Face.tppp

example :
    (pairWordOfSeq sampleStartedSeq).toList =
      [PairId.x,
       PairId.y, PairId.y,
       PairId.z, PairId.z,
       PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11,
       PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d111] := by
  decide

example : ValidPairWord (pairWordOfSeq sampleStartedSeq) := by
  unfold ValidPairWord pairCount
  decide

example : PairWordMatchesSeq (pairWordOfSeq sampleStartedSeq) sampleStartedSeq :=
  pairWordOfSeq_matches sampleStartedSeq

#check seq_to_pairword

end Cuboctahedron
