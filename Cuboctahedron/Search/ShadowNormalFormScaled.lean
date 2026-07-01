import Cuboctahedron.Search.ShadowNormalFormMod3

/-!
Integer-scaled triangular reflection products.

For triangular normals, the rational reflection matrix is

`H_n = I - (2/3) n n^T`.

This file defines the integer-scaled matrix

`K_n = 3I - 2 n n^T`

and proves that products of these matrices reduce modulo 3 to the rank-one
mod-3 products from `ShadowNormalFormMod3.lean`.
-/

namespace Cuboctahedron

def triNormalInt : TriLetter -> Vec3 Int
  | TriLetter.d111 => { x := 1, y := 1, z := 1 }
  | TriLetter.d11m => { x := 1, y := 1, z := -1 }
  | TriLetter.d1m1 => { x := 1, y := -1, z := 1 }
  | TriLetter.dm11 => { x := -1, y := 1, z := 1 }

def triScaledLinearInt (t : TriLetter) : Mat3 Int :=
  matSub (scalarMat (3 : Int) (matId : Mat3 Int))
    (scalarMat (2 : Int) (outer (triNormalInt t) (triNormalInt t)))

def triScaledProductInt : List TriLetter -> Mat3 Int
  | [] => matId
  | t :: ts => matMul (triScaledLinearInt t) (triScaledProductInt ts)

theorem matMap_intCast_zmod3_matMul (A B : Mat3 Int) :
    (matMul A B).map (fun z : Int => (z : ZMod 3)) =
      matMul (A.map (fun z : Int => (z : ZMod 3)))
        (B.map (fun z : Int => (z : ZMod 3))) := by
  apply Mat3.ext <;> simp [Mat3.map, matMul]

theorem triScaledLinearInt_mod3 (t : TriLetter) :
    (triScaledLinearInt t).map (fun z : Int => (z : ZMod 3)) =
      triMod3Linear t := by
  cases t <;>
    apply Mat3.ext <;>
    norm_num [triScaledLinearInt, triNormalInt, triMod3Linear, triNormalZ3,
      matSub, scalarMat, outer, matId, Mat3.map] <;>
    decide

theorem triScaledProductInt_mod3 (letters : List TriLetter) :
    (triScaledProductInt letters).map (fun z : Int => (z : ZMod 3)) =
      triMod3Product letters := by
  induction letters with
  | nil =>
      apply Mat3.ext <;> simp [triScaledProductInt, triMod3Product, Mat3.map,
        matId]
  | cons t ts ih =>
      rw [triScaledProductInt, triMod3Product, matMap_intCast_zmod3_matMul,
        ih, triScaledLinearInt_mod3]

theorem intCast_zmod3_pow_three_of_pos {n : Nat} (h : 0 < n) :
    (((3 : Int) ^ n : Int) : ZMod 3) = 0 := by
  cases n with
  | zero =>
      cases h
  | succ n =>
      rw [pow_succ]
      simp [Int.cast_mul]
      right
      decide

theorem scaledIdentityInt_mod3_eq_zero {n : Nat} (h : 0 < n) :
    (scalarMat ((3 : Int) ^ n) (matId : Mat3 Int)).map
        (fun z : Int => (z : ZMod 3)) =
      (matZero : Mat3 (ZMod 3)) := by
  apply Mat3.ext <;>
    simp [Mat3.map, scalarMat, matId, matZero,
      intCast_zmod3_pow_three_of_pos h]

theorem triScaledProductInt_ne_scaledIdentity_of_noAdjacent
    (head : TriLetter) (tail : List TriLetter)
    (hred : NoAdjacentEq (head :: tail)) :
    triScaledProductInt (head :: tail) ≠
      scalarMat ((3 : Int) ^ (head :: tail).length) (matId : Mat3 Int) := by
  intro h
  have hmap := congrArg (fun A : Mat3 Int =>
    A.map (fun z : Int => (z : ZMod 3))) h
  rw [triScaledProductInt_mod3,
    scaledIdentityInt_mod3_eq_zero (by simp)] at hmap
  exact triMod3Product_ne_zero_of_noAdjacent head tail hred hmap

end Cuboctahedron
