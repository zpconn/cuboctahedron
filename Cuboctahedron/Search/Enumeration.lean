import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.Sets
import Cuboctahedron.Search.PairWords

/-!
Finite enumeration interfaces for pair-words and sign masks.

The current project still uses small generated chunks, but this file provides
the exact finite API that future exhaustive chunks should target.  The pair-word
rank is induced by Lean's finite equivalence for the subtype of valid words.
-/

namespace Cuboctahedron

def expectedNumPairWords : Nat := 97297200

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

noncomputable instance validPairWordDecidablePred :
    DecidablePred ValidPairWord := by
  classical
  exact fun w => Classical.propDecidable (ValidPairWord w)

abbrev ValidPairWordSubtype := { w : PairWord // ValidPairWord w }

noncomputable def numPairWords : Nat :=
  Fintype.card ValidPairWordSubtype

noncomputable def validPairWordEquivFin :
    ValidPairWordSubtype ≃ Fin numPairWords :=
  Fintype.equivFin ValidPairWordSubtype

noncomputable def unrankPairWord (r : Fin numPairWords) : PairWord :=
  ((validPairWordEquivFin).symm r).1

noncomputable def rankPairWord? (w : PairWord) : Option (Fin numPairWords) :=
  if h : ValidPairWord w then some (validPairWordEquivFin ⟨w, h⟩) else none

theorem unrankPairWord_valid (r : Fin numPairWords) :
    ValidPairWord (unrankPairWord r) := by
  unfold unrankPairWord
  exact ((validPairWordEquivFin).symm r).2

theorem rank_unrank_pairword (r : Fin numPairWords) :
    rankPairWord? (unrankPairWord r) = some r := by
  unfold rankPairWord? unrankPairWord
  rw [dif_pos]
  · rw [Equiv.apply_symm_apply]
  · exact ((validPairWordEquivFin).symm r).2

theorem unrank_rank_pairword
    (w : PairWord) (h : ValidPairWord w) :
    exists r : Fin numPairWords, unrankPairWord r = w := by
  refine ⟨validPairWordEquivFin ⟨w, h⟩, ?_⟩
  unfold unrankPairWord
  exact congrArg Subtype.val
    (Equiv.symm_apply_apply validPairWordEquivFin ⟨w, h⟩)

theorem rankPairWord?_some_of_valid
    {w : PairWord} (h : ValidPairWord w) :
    exists r : Fin numPairWords, rankPairWord? w = some r := by
  refine ⟨validPairWordEquivFin ⟨w, h⟩, ?_⟩
  simp [rankPairWord?, h]

theorem rankPairWord?_none_of_invalid
    {w : PairWord} (h : ¬ ValidPairWord w) :
    rankPairWord? w = none := by
  simp [rankPairWord?, h]

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
