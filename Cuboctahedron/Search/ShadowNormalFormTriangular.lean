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

end Cuboctahedron
