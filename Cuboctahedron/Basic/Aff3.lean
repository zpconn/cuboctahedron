import Mathlib.Tactic
import Mathlib.Data.Real.Basic
import Cuboctahedron.Basic.Mat3

/-!
Affine maps in three dimensions.
-/

namespace Cuboctahedron

universe u v

structure Aff3 (alpha : Type u) where
  M : Mat3 alpha
  b : Vec3 alpha
deriving Repr, DecidableEq, Inhabited

namespace Aff3

theorem ext {A B : Aff3 alpha} (hM : A.M = B.M) (hb : A.b = B.b) :
    A = B := by
  cases A
  cases B
  simp_all

def map (A : Aff3 alpha) (f : alpha -> beta) : Aff3 beta where
  M := A.M.map f
  b := A.b.map f

@[simp] theorem map_M (A : Aff3 alpha) (f : alpha -> beta) :
    (A.map f).M = A.M.map f := rfl

@[simp] theorem map_b (A : Aff3 alpha) (f : alpha -> beta) :
    (A.map f).b = A.b.map f := rfl

end Aff3

def affId [Zero alpha] [One alpha] : Aff3 alpha where
  M := matId
  b := { x := 0, y := 0, z := 0 }

def affApply [Add alpha] [Mul alpha] (A : Aff3 alpha) (p : Vec3 alpha) :
    Vec3 alpha :=
  vecAdd (matVec A.M p) A.b

def affCompose [Add alpha] [Mul alpha] (A B : Aff3 alpha) : Aff3 alpha where
  M := matMul A.M B.M
  b := vecAdd (matVec A.M B.b) A.b

def affRatToReal (A : Aff3 Rat) : Aff3 Real :=
  A.map fun q => (q : Real)

theorem affId_apply {alpha : Type u} [Semiring alpha] (p : Vec3 alpha) :
    affApply (affId : Aff3 alpha) p = p := by
  apply Vec3.ext <;> simp [affApply, affId, vecAdd, matId_matVec]

theorem matVec_vecAdd {alpha : Type u} [CommSemiring alpha]
    (A : Mat3 alpha) (u v : Vec3 alpha) :
    matVec A (vecAdd u v) = vecAdd (matVec A u) (matVec A v) := by
  apply Vec3.ext <;> simp [matVec, vecAdd] <;> ring

theorem matVec_scalarMul {alpha : Type u} [CommSemiring alpha]
    (A : Mat3 alpha) (c : alpha) (v : Vec3 alpha) :
    matVec A (scalarMul c v) = scalarMul c (matVec A v) := by
  apply Vec3.ext <;> simp [matVec, scalarMul] <;> ring

theorem matVec_matMul {alpha : Type u} [CommSemiring alpha]
    (A B : Mat3 alpha) (v : Vec3 alpha) :
    matVec (matMul A B) v = matVec A (matVec B v) := by
  apply Vec3.ext <;> simp [matVec, matMul] <;> ring

theorem affCompose_apply {alpha : Type u} [CommSemiring alpha]
    (A B : Aff3 alpha) (p : Vec3 alpha) :
    affApply (affCompose A B) p = affApply A (affApply B p) := by
  apply Vec3.ext <;>
    simp [affApply, affCompose, matVec, matMul, vecAdd] <;> ring

theorem affApply_vecAdd_real
    (A : Aff3 Real) (p v : Vec3 Real) :
    affApply A (vecAdd p v) =
      vecAdd (affApply A p) (matVec A.M v) := by
  apply Vec3.ext <;> simp [affApply, matVec, vecAdd] <;> ring

theorem affApply_line_real
    (A : Aff3 Real) (p v : Vec3 Real) (t : Real) :
    affApply A (vecAdd p (scalarMul t v)) =
      vecAdd (affApply A p) (scalarMul t (matVec A.M v)) := by
  rw [affApply_vecAdd_real, matVec_scalarMul]

theorem affRatToReal_compose (A B : Aff3 Rat) :
    affRatToReal (affCompose A B) =
      affCompose (affRatToReal A) (affRatToReal B) := by
  apply Aff3.ext
  · apply Mat3.ext <;>
      simp [affRatToReal, Aff3.map, Mat3.map, affCompose, matMul]
  · apply Vec3.ext <;>
      simp [affRatToReal, Aff3.map, Mat3.map, Vec3.map, affCompose, matVec,
        vecAdd]

theorem affRatToReal_affId :
    affRatToReal (affId : Aff3 Rat) = (affId : Aff3 Real) := by
  apply Aff3.ext
  · apply Mat3.ext <;> simp [affRatToReal, Aff3.map, Mat3.map, affId, matId]
  · apply Vec3.ext <;> simp [affRatToReal, Aff3.map, Vec3.map, affId]

end Cuboctahedron
