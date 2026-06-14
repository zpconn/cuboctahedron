/-!
Fixed-size three-dimensional vectors.

This file intentionally keeps the API small and explicit. Later geometry files
can build exact rational computations on these definitions without introducing
notation or broad algebraic abstractions too early.
-/

namespace Cuboctahedron

universe u v

structure Vec3 (alpha : Type u) where
  x : alpha
  y : alpha
  z : alpha
deriving Repr, DecidableEq, Inhabited

namespace Vec3

theorem ext {a b : Vec3 alpha}
    (hx : a.x = b.x) (hy : a.y = b.y) (hz : a.z = b.z) : a = b := by
  cases a
  cases b
  simp_all

def map (v : Vec3 alpha) (f : alpha -> beta) : Vec3 beta where
  x := f v.x
  y := f v.y
  z := f v.z

@[simp] theorem map_x (v : Vec3 alpha) (f : alpha -> beta) :
    (v.map f).x = f v.x := rfl

@[simp] theorem map_y (v : Vec3 alpha) (f : alpha -> beta) :
    (v.map f).y = f v.y := rfl

@[simp] theorem map_z (v : Vec3 alpha) (f : alpha -> beta) :
    (v.map f).z = f v.z := rfl

end Vec3

def vecAdd [Add alpha] (a b : Vec3 alpha) : Vec3 alpha where
  x := a.x + b.x
  y := a.y + b.y
  z := a.z + b.z

def vecSub [Sub alpha] (a b : Vec3 alpha) : Vec3 alpha where
  x := a.x - b.x
  y := a.y - b.y
  z := a.z - b.z

def scalarMul [Mul alpha] (c : alpha) (v : Vec3 alpha) : Vec3 alpha where
  x := c * v.x
  y := c * v.y
  z := c * v.z

def dot [Add alpha] [Mul alpha] (a b : Vec3 alpha) : alpha :=
  a.x * b.x + a.y * b.y + a.z * b.z

def cross [Sub alpha] [Mul alpha] (a b : Vec3 alpha) : Vec3 alpha where
  x := a.y * b.z - a.z * b.y
  y := a.z * b.x - a.x * b.z
  z := a.x * b.y - a.y * b.x

@[simp] theorem vecAdd_x [Add alpha] (a b : Vec3 alpha) :
    (vecAdd a b).x = a.x + b.x := rfl

@[simp] theorem vecAdd_y [Add alpha] (a b : Vec3 alpha) :
    (vecAdd a b).y = a.y + b.y := rfl

@[simp] theorem vecAdd_z [Add alpha] (a b : Vec3 alpha) :
    (vecAdd a b).z = a.z + b.z := rfl

@[simp] theorem vecSub_x [Sub alpha] (a b : Vec3 alpha) :
    (vecSub a b).x = a.x - b.x := rfl

@[simp] theorem vecSub_y [Sub alpha] (a b : Vec3 alpha) :
    (vecSub a b).y = a.y - b.y := rfl

@[simp] theorem vecSub_z [Sub alpha] (a b : Vec3 alpha) :
    (vecSub a b).z = a.z - b.z := rfl

@[simp] theorem scalarMul_x [Mul alpha] (c : alpha) (v : Vec3 alpha) :
    (scalarMul c v).x = c * v.x := rfl

@[simp] theorem scalarMul_y [Mul alpha] (c : alpha) (v : Vec3 alpha) :
    (scalarMul c v).y = c * v.y := rfl

@[simp] theorem scalarMul_z [Mul alpha] (c : alpha) (v : Vec3 alpha) :
    (scalarMul c v).z = c * v.z := rfl

@[simp] theorem cross_x [Sub alpha] [Mul alpha] (a b : Vec3 alpha) :
    (cross a b).x = a.y * b.z - a.z * b.y := rfl

@[simp] theorem cross_y [Sub alpha] [Mul alpha] (a b : Vec3 alpha) :
    (cross a b).y = a.z * b.x - a.x * b.z := rfl

@[simp] theorem cross_z [Sub alpha] [Mul alpha] (a b : Vec3 alpha) :
    (cross a b).z = a.x * b.y - a.y * b.x := rfl

end Cuboctahedron
