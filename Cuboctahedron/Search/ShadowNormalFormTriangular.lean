import Mathlib.Tactic
import Cuboctahedron.Geometry.Reflection
import Cuboctahedron.Search.ShadowNormalForm

/-!
Triangular-product lemmas for the shadow normal form.

This module proves the first algebraic fact needed after square parity:
adjacent equal triangular letters can be removed without changing the
triangular linear product.  It stays small and works directly with the
projective triangular letters from `ShadowNormalForm.lean`.
-/

namespace Cuboctahedron

def triLinear (t : TriLetter) : Mat3 Rat :=
  reflM (canonicalNormalQ t.toPairId)

def triProduct : List TriLetter -> Mat3 Rat
  | [] => matId
  | t :: ts => matMul (triLinear t) (triProduct ts)

/-- Product for the scanner's reversed stack representation.  If `stack` is
the reverse of the chronological reduced word, this is the chronological
triangular product. -/
def triProductRevStack : List TriLetter -> Mat3 Rat
  | [] => matId
  | t :: rest => matMul (triProductRevStack rest) (triLinear t)

theorem matMul_assoc_rat (A B C : Mat3 Rat) :
    matMul (matMul A B) C = matMul A (matMul B C) := by
  apply Mat3.ext <;> simp [matMul] <;> ring

theorem triLinear_mul_self (t : TriLetter) :
    matMul (triLinear t) (triLinear t) = (matId : Mat3 Rat) := by
  cases t <;>
    apply Mat3.ext <;>
    norm_num [triLinear, TriLetter.toPairId, canonicalNormalQ, reflM, matSub,
      scalarMat, outer, matId, dot, matMul]

theorem triProduct_append (xs ys : List TriLetter) :
    triProduct (xs ++ ys) = matMul (triProduct xs) (triProduct ys) := by
  induction xs with
  | nil =>
      simp [triProduct, matId_matMul]
  | cons x xs ih =>
      simp [triProduct, ih, matMul_assoc_rat]

theorem triProduct_singleton (t : TriLetter) :
    triProduct [t] = triLinear t := by
  simp [triProduct, matMul_matId]

theorem triProductRevStack_eq_triProduct_reverse (stack : List TriLetter) :
    triProductRevStack stack = triProduct stack.reverse := by
  induction stack with
  | nil =>
      rfl
  | cons t rest ih =>
      simp [triProductRevStack, List.reverse_cons, triProduct_append,
        triProduct_singleton, ih]

theorem triProductRevStack_pushReduced (t : TriLetter)
    (stack : List TriLetter) :
    triProductRevStack (ShadowState.pushReduced t stack) =
      matMul (triProductRevStack stack) (triLinear t) := by
  cases stack with
  | nil =>
      simp [ShadowState.pushReduced, triProductRevStack]
  | cons u rest =>
      by_cases h : t = u
      · subst u
        simp [ShadowState.pushReduced, triProductRevStack, matMul_assoc_rat,
          triLinear_mul_self, matMul_matId]
      · simp [ShadowState.pushReduced, h, triProductRevStack]

theorem scanPair_preserves_triProductRevStack_invariant
    (state : ShadowState) (pair : PairId)
    (h : triProductRevStack state.reducedRev =
      triProductRevStack state.shadowRev) :
    triProductRevStack (state.scanPair pair).reducedRev =
      triProductRevStack (state.scanPair pair).shadowRev := by
  unfold ShadowState.scanPair
  cases htri : TriLetter.ofPairId? pair with
  | none =>
      simp [h]
  | some tri =>
      simp [triProductRevStack_pushReduced, h, triProductRevStack]

theorem foldl_scanPair_preserves_triProductRevStack_invariant
    (pairs : List PairId) (state : ShadowState)
    (h : triProductRevStack state.reducedRev =
      triProductRevStack state.shadowRev) :
    triProductRevStack (pairs.foldl ShadowState.scanPair state).reducedRev =
      triProductRevStack (pairs.foldl ShadowState.scanPair state).shadowRev := by
  induction pairs generalizing state with
  | nil =>
      exact h
  | cons pair rest ih =>
      rw [List.foldl_cons]
      exact ih (state.scanPair pair)
        (scanPair_preserves_triProductRevStack_invariant state pair h)

theorem shadowStateOfPairList_reducedRev_product_eq_shadowRev_product
    (pairs : List PairId) :
    triProductRevStack (shadowStateOfPairList pairs).reducedRev =
      triProductRevStack (shadowStateOfPairList pairs).shadowRev := by
  exact foldl_scanPair_preserves_triProductRevStack_invariant pairs
    ShadowState.initial rfl

theorem reducedShadow_triProduct_eq_shadow_triProduct
    (pairs : List PairId) :
    triProduct (ShadowState.reducedShadow (shadowStateOfPairList pairs)) =
      triProduct (ShadowState.shadow (shadowStateOfPairList pairs)) := by
  have h := shadowStateOfPairList_reducedRev_product_eq_shadowRev_product pairs
  rw [triProductRevStack_eq_triProduct_reverse,
    triProductRevStack_eq_triProduct_reverse] at h
  simpa [ShadowState.reducedShadow, ShadowState.shadow] using h

end Cuboctahedron
