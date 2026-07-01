import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic
import Cuboctahedron.Search.ShadowNormalFormTriangular

/-!
Mod-3 triangular product core.

For a triangular normal `n`, the scaled reflection matrix

`K_n = 3 I - 2 n n^T`

is congruent to `n n^T` modulo 3.  Products of reduced triangular words
therefore become products of rank-one matrices over `ZMod 3`.  Adjacent
distinct projective triangular normals have nonzero dot product modulo 3, so
a nonempty reduced triangular product is nonzero modulo 3.

This file proves that finite-field core.  The later rational bridge will use
it to show a nonempty reduced triangular shadow cannot have identity rational
triangular product.
-/

namespace Cuboctahedron

def matZero [Zero alpha] : Mat3 alpha where
  m00 := 0
  m01 := 0
  m02 := 0
  m10 := 0
  m11 := 0
  m12 := 0
  m20 := 0
  m21 := 0
  m22 := 0

def triNormalZ3 : TriLetter -> Vec3 (ZMod 3)
  | TriLetter.d111 => { x := 1, y := 1, z := 1 }
  | TriLetter.d11m => { x := 1, y := 1, z := -1 }
  | TriLetter.d1m1 => { x := 1, y := -1, z := 1 }
  | TriLetter.dm11 => { x := -1, y := 1, z := 1 }

def triMod3Linear (t : TriLetter) : Mat3 (ZMod 3) :=
  outer (triNormalZ3 t) (triNormalZ3 t)

def triMod3Product : List TriLetter -> Mat3 (ZMod 3)
  | [] => matId
  | t :: ts => matMul (triMod3Linear t) (triMod3Product ts)

def NoAdjacentEq : List TriLetter -> Prop
  | [] => True
  | [_] => True
  | a :: b :: rest => a ≠ b ∧ NoAdjacentEq (b :: rest)

theorem triNormalZ3_x_ne_zero (t : TriLetter) :
    (triNormalZ3 t).x ≠ 0 := by
  cases t <;> norm_num [triNormalZ3]

theorem triNormalZ3_dot_ne_zero_of_ne {a b : TriLetter}
    (h : a ≠ b) :
    dot (triNormalZ3 a) (triNormalZ3 b) ≠ 0 := by
  cases a <;> cases b <;> simp [triNormalZ3, dot] at h ⊢

theorem matMul_outer_scalar_outer_z3
    (a b c d : Vec3 (ZMod 3)) (q : ZMod 3) :
    matMul (outer a b) (scalarMat q (outer c d)) =
      scalarMat (q * dot b c) (outer a d) := by
  apply Mat3.ext <;> simp [matMul, outer, scalarMat, dot] <;> ring

theorem scalar_outer_tri_ne_zero {q : ZMod 3}
    (hq : q ≠ 0) (a b : TriLetter) :
    scalarMat q (outer (triNormalZ3 a) (triNormalZ3 b)) ≠
      (matZero : Mat3 (ZMod 3)) := by
  apply Mat3.ne_of_m00_ne
  change q * ((triNormalZ3 a).x * (triNormalZ3 b).x) ≠ 0
  exact mul_ne_zero hq
    (mul_ne_zero (triNormalZ3_x_ne_zero a) (triNormalZ3_x_ne_zero b))

theorem triMod3Product_rankOne_from_head :
    ∀ (head : TriLetter) (tail : List TriLetter),
      NoAdjacentEq (head :: tail) ->
        ∃ (last : TriLetter) (q : ZMod 3),
          q ≠ 0 ∧
            triMod3Product (head :: tail) =
              scalarMat q (outer (triNormalZ3 head) (triNormalZ3 last))
  | head, [], _ => by
      refine ⟨head, 1, by norm_num, ?_⟩
      simp [triMod3Product, triMod3Linear, scalarMat, matMul_matId]
  | head, next :: rest, hred => by
      have hhead_next : head ≠ next := hred.1
      have htail : NoAdjacentEq (next :: rest) := hred.2
      rcases triMod3Product_rankOne_from_head next rest htail with
        ⟨last, q, hq, hprod⟩
      refine ⟨last, q * dot (triNormalZ3 head) (triNormalZ3 next), ?_, ?_⟩
      · exact mul_ne_zero hq (triNormalZ3_dot_ne_zero_of_ne hhead_next)
      · rw [triMod3Product, hprod]
        simp [triMod3Linear, matMul_outer_scalar_outer_z3]

theorem triMod3Product_ne_zero_of_noAdjacent
    (head : TriLetter) (tail : List TriLetter)
    (hred : NoAdjacentEq (head :: tail)) :
    triMod3Product (head :: tail) ≠ (matZero : Mat3 (ZMod 3)) := by
  rcases triMod3Product_rankOne_from_head head tail hred with
    ⟨last, q, hq, hprod⟩
  rw [hprod]
  exact scalar_outer_tri_ne_zero hq head last

end Cuboctahedron
