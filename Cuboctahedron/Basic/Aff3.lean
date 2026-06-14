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

end Cuboctahedron
