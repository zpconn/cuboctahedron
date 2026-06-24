import Mathlib.Algebra.Ring.Basic
import Cuboctahedron.Basic.Vec3

/-!
Fixed-size 3 by 3 matrices.
-/

namespace Cuboctahedron

universe u v

structure Mat3 (alpha : Type u) where
  m00 : alpha
  m01 : alpha
  m02 : alpha
  m10 : alpha
  m11 : alpha
  m12 : alpha
  m20 : alpha
  m21 : alpha
  m22 : alpha
deriving Repr, DecidableEq, Inhabited

namespace Mat3

theorem ext {A B : Mat3 alpha}
    (h00 : A.m00 = B.m00) (h01 : A.m01 = B.m01) (h02 : A.m02 = B.m02)
    (h10 : A.m10 = B.m10) (h11 : A.m11 = B.m11) (h12 : A.m12 = B.m12)
    (h20 : A.m20 = B.m20) (h21 : A.m21 = B.m21) (h22 : A.m22 = B.m22) :
    A = B := by
  cases A
  cases B
  simp_all

theorem ne_of_m00_ne {A B : Mat3 alpha} (h : A.m00 ≠ B.m00) : A ≠ B := by
  intro hAB
  exact h (congrArg Mat3.m00 hAB)

theorem ne_of_m01_ne {A B : Mat3 alpha} (h : A.m01 ≠ B.m01) : A ≠ B := by
  intro hAB
  exact h (congrArg Mat3.m01 hAB)

theorem ne_of_m02_ne {A B : Mat3 alpha} (h : A.m02 ≠ B.m02) : A ≠ B := by
  intro hAB
  exact h (congrArg Mat3.m02 hAB)

theorem ne_of_m10_ne {A B : Mat3 alpha} (h : A.m10 ≠ B.m10) : A ≠ B := by
  intro hAB
  exact h (congrArg Mat3.m10 hAB)

theorem ne_of_m11_ne {A B : Mat3 alpha} (h : A.m11 ≠ B.m11) : A ≠ B := by
  intro hAB
  exact h (congrArg Mat3.m11 hAB)

theorem ne_of_m12_ne {A B : Mat3 alpha} (h : A.m12 ≠ B.m12) : A ≠ B := by
  intro hAB
  exact h (congrArg Mat3.m12 hAB)

theorem ne_of_m20_ne {A B : Mat3 alpha} (h : A.m20 ≠ B.m20) : A ≠ B := by
  intro hAB
  exact h (congrArg Mat3.m20 hAB)

theorem ne_of_m21_ne {A B : Mat3 alpha} (h : A.m21 ≠ B.m21) : A ≠ B := by
  intro hAB
  exact h (congrArg Mat3.m21 hAB)

theorem ne_of_m22_ne {A B : Mat3 alpha} (h : A.m22 ≠ B.m22) : A ≠ B := by
  intro hAB
  exact h (congrArg Mat3.m22 hAB)

def map (A : Mat3 alpha) (f : alpha -> beta) : Mat3 beta where
  m00 := f A.m00
  m01 := f A.m01
  m02 := f A.m02
  m10 := f A.m10
  m11 := f A.m11
  m12 := f A.m12
  m20 := f A.m20
  m21 := f A.m21
  m22 := f A.m22

@[simp] theorem map_m00 (A : Mat3 alpha) (f : alpha -> beta) :
    (A.map f).m00 = f A.m00 := rfl

@[simp] theorem map_m01 (A : Mat3 alpha) (f : alpha -> beta) :
    (A.map f).m01 = f A.m01 := rfl

@[simp] theorem map_m02 (A : Mat3 alpha) (f : alpha -> beta) :
    (A.map f).m02 = f A.m02 := rfl

@[simp] theorem map_m10 (A : Mat3 alpha) (f : alpha -> beta) :
    (A.map f).m10 = f A.m10 := rfl

@[simp] theorem map_m11 (A : Mat3 alpha) (f : alpha -> beta) :
    (A.map f).m11 = f A.m11 := rfl

@[simp] theorem map_m12 (A : Mat3 alpha) (f : alpha -> beta) :
    (A.map f).m12 = f A.m12 := rfl

@[simp] theorem map_m20 (A : Mat3 alpha) (f : alpha -> beta) :
    (A.map f).m20 = f A.m20 := rfl

@[simp] theorem map_m21 (A : Mat3 alpha) (f : alpha -> beta) :
    (A.map f).m21 = f A.m21 := rfl

@[simp] theorem map_m22 (A : Mat3 alpha) (f : alpha -> beta) :
    (A.map f).m22 = f A.m22 := rfl

end Mat3

def matId [Zero alpha] [One alpha] : Mat3 alpha where
  m00 := 1
  m01 := 0
  m02 := 0
  m10 := 0
  m11 := 1
  m12 := 0
  m20 := 0
  m21 := 0
  m22 := 1

def matVec [Add alpha] [Mul alpha] (A : Mat3 alpha) (v : Vec3 alpha) :
    Vec3 alpha where
  x := A.m00 * v.x + A.m01 * v.y + A.m02 * v.z
  y := A.m10 * v.x + A.m11 * v.y + A.m12 * v.z
  z := A.m20 * v.x + A.m21 * v.y + A.m22 * v.z

def matMul [Add alpha] [Mul alpha] (A B : Mat3 alpha) : Mat3 alpha where
  m00 := A.m00 * B.m00 + A.m01 * B.m10 + A.m02 * B.m20
  m01 := A.m00 * B.m01 + A.m01 * B.m11 + A.m02 * B.m21
  m02 := A.m00 * B.m02 + A.m01 * B.m12 + A.m02 * B.m22
  m10 := A.m10 * B.m00 + A.m11 * B.m10 + A.m12 * B.m20
  m11 := A.m10 * B.m01 + A.m11 * B.m11 + A.m12 * B.m21
  m12 := A.m10 * B.m02 + A.m11 * B.m12 + A.m12 * B.m22
  m20 := A.m20 * B.m00 + A.m21 * B.m10 + A.m22 * B.m20
  m21 := A.m20 * B.m01 + A.m21 * B.m11 + A.m22 * B.m21
  m22 := A.m20 * B.m02 + A.m21 * B.m12 + A.m22 * B.m22

def outer [Mul alpha] (u v : Vec3 alpha) : Mat3 alpha where
  m00 := u.x * v.x
  m01 := u.x * v.y
  m02 := u.x * v.z
  m10 := u.y * v.x
  m11 := u.y * v.y
  m12 := u.y * v.z
  m20 := u.z * v.x
  m21 := u.z * v.y
  m22 := u.z * v.z

def scalarMat [Mul alpha] (c : alpha) (A : Mat3 alpha) : Mat3 alpha where
  m00 := c * A.m00
  m01 := c * A.m01
  m02 := c * A.m02
  m10 := c * A.m10
  m11 := c * A.m11
  m12 := c * A.m12
  m20 := c * A.m20
  m21 := c * A.m21
  m22 := c * A.m22

def matAdd [Add alpha] (A B : Mat3 alpha) : Mat3 alpha where
  m00 := A.m00 + B.m00
  m01 := A.m01 + B.m01
  m02 := A.m02 + B.m02
  m10 := A.m10 + B.m10
  m11 := A.m11 + B.m11
  m12 := A.m12 + B.m12
  m20 := A.m20 + B.m20
  m21 := A.m21 + B.m21
  m22 := A.m22 + B.m22

def matSub [Sub alpha] (A B : Mat3 alpha) : Mat3 alpha where
  m00 := A.m00 - B.m00
  m01 := A.m01 - B.m01
  m02 := A.m02 - B.m02
  m10 := A.m10 - B.m10
  m11 := A.m11 - B.m11
  m12 := A.m12 - B.m12
  m20 := A.m20 - B.m20
  m21 := A.m21 - B.m21
  m22 := A.m22 - B.m22

theorem matMul_matId {alpha : Type u} [Semiring alpha] (A : Mat3 alpha) :
    matMul A (matId : Mat3 alpha) = A := by
  apply Mat3.ext <;> simp [matMul, matId]

theorem matId_matMul {alpha : Type u} [Semiring alpha] (A : Mat3 alpha) :
    matMul (matId : Mat3 alpha) A = A := by
  apply Mat3.ext <;> simp [matMul, matId]

theorem matId_matVec {alpha : Type u} [Semiring alpha] (p : Vec3 alpha) :
    matVec (matId : Mat3 alpha) p = p := by
  apply Vec3.ext <;> simp [matVec, matId]

end Cuboctahedron
