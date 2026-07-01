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

theorem matMap_intCast_rat_matMul (A B : Mat3 Int) :
    (matMul A B).map (fun z : Int => (z : Rat)) =
      matMul (A.map (fun z : Int => (z : Rat)))
        (B.map (fun z : Int => (z : Rat))) := by
  apply Mat3.ext <;> simp [Mat3.map, matMul]

theorem matMul_scalarMat_scalarMat_rat
    (a b : Rat) (A B : Mat3 Rat) :
    matMul (scalarMat a A) (scalarMat b B) =
      scalarMat (a * b) (matMul A B) := by
  apply Mat3.ext <;> simp [matMul, scalarMat] <;> ring

theorem triScaledLinearInt_rat_eq_scaled_triLinear (t : TriLetter) :
    (triScaledLinearInt t).map (fun z : Int => (z : Rat)) =
      scalarMat (3 : Rat) (triLinear t) := by
  cases t <;>
    apply Mat3.ext <;>
    norm_num [triScaledLinearInt, triNormalInt, triLinear,
      TriLetter.toPairId, canonicalNormalQ, reflM, matSub, scalarMat, outer,
      matId, dot, Mat3.map]

theorem triScaledProductInt_rat_eq_scaled_triProduct
    (letters : List TriLetter) :
    (triScaledProductInt letters).map (fun z : Int => (z : Rat)) =
      scalarMat ((3 : Rat) ^ letters.length) (triProduct letters) := by
  induction letters with
  | nil =>
      apply Mat3.ext <;> simp [triScaledProductInt, triProduct, Mat3.map,
        scalarMat, matId]
  | cons t ts ih =>
      rw [triScaledProductInt, triProduct, matMap_intCast_rat_matMul,
        triScaledLinearInt_rat_eq_scaled_triLinear, ih,
        matMul_scalarMat_scalarMat_rat]
      have hpow : (3 : Rat) * 3 ^ ts.length = 3 ^ (ts.length + 1) := by
        ring_nf
      rw [hpow]
      simp

theorem scaledIdentityInt_rat (n : Nat) :
    (scalarMat ((3 : Int) ^ n) (matId : Mat3 Int)).map
        (fun z : Int => (z : Rat)) =
      scalarMat ((3 : Rat) ^ n) (matId : Mat3 Rat) := by
  apply Mat3.ext <;> simp [Mat3.map, scalarMat, matId]

theorem matInt_eq_of_rat_map_eq {A B : Mat3 Int}
    (h : A.map (fun z : Int => (z : Rat)) =
      B.map (fun z : Int => (z : Rat))) :
    A = B := by
  apply Mat3.ext
  · exact Int.cast_injective (α := Rat) (by
      simpa [Mat3.map] using congrArg Mat3.m00 h)
  · exact Int.cast_injective (α := Rat) (by
      simpa [Mat3.map] using congrArg Mat3.m01 h)
  · exact Int.cast_injective (α := Rat) (by
      simpa [Mat3.map] using congrArg Mat3.m02 h)
  · exact Int.cast_injective (α := Rat) (by
      simpa [Mat3.map] using congrArg Mat3.m10 h)
  · exact Int.cast_injective (α := Rat) (by
      simpa [Mat3.map] using congrArg Mat3.m11 h)
  · exact Int.cast_injective (α := Rat) (by
      simpa [Mat3.map] using congrArg Mat3.m12 h)
  · exact Int.cast_injective (α := Rat) (by
      simpa [Mat3.map] using congrArg Mat3.m20 h)
  · exact Int.cast_injective (α := Rat) (by
      simpa [Mat3.map] using congrArg Mat3.m21 h)
  · exact Int.cast_injective (α := Rat) (by
      simpa [Mat3.map] using congrArg Mat3.m22 h)

theorem triScaledProductInt_eq_scaledIdentity_of_triProduct_eq_identity
    {letters : List TriLetter}
    (h : triProduct letters = (matId : Mat3 Rat)) :
    triScaledProductInt letters =
      scalarMat ((3 : Int) ^ letters.length) (matId : Mat3 Int) := by
  apply matInt_eq_of_rat_map_eq
  rw [triScaledProductInt_rat_eq_scaled_triProduct, h,
    scaledIdentityInt_rat]

theorem triProduct_ne_identity_of_noAdjacent
    (head : TriLetter) (tail : List TriLetter)
    (hred : NoAdjacentEq (head :: tail)) :
    triProduct (head :: tail) ≠ (matId : Mat3 Rat) := by
  intro h
  exact triScaledProductInt_ne_scaledIdentity_of_noAdjacent head tail hred
    (triScaledProductInt_eq_scaledIdentity_of_triProduct_eq_identity h)

theorem reducedShadow_triProduct_ne_identity_of_nonempty
    (pairs : List PairId)
    (hne : ShadowState.reducedShadow (shadowStateOfPairList pairs) ≠ []) :
    triProduct (ShadowState.reducedShadow (shadowStateOfPairList pairs)) ≠
      (matId : Mat3 Rat) := by
  let letters := ShadowState.reducedShadow (shadowStateOfPairList pairs)
  cases hletters : letters with
  | nil =>
      exact False.elim (hne hletters)
  | cons head tail =>
      have hred : NoAdjacentEq (head :: tail) := by
        simpa [letters, hletters] using
          shadowStateOfPairList_reducedShadow_noAdjacent pairs
      simpa [letters, hletters] using
        triProduct_ne_identity_of_noAdjacent head tail hred

theorem reducedShadowOfPairWord_triProduct_ne_identity_of_nonempty
    (w : PairWord)
    (hne : reducedShadowOfPairWord w ≠ []) :
    triProduct (reducedShadowOfPairWord w) ≠ (matId : Mat3 Rat) := by
  simpa [reducedShadowOfPairWord, shadowStateOfPairWord] using
    reducedShadow_triProduct_ne_identity_of_nonempty (startedPairFactors w) hne

end Cuboctahedron
