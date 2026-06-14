import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Real.Basic
import Cuboctahedron.Basic.Vec3

/-!
Exact face data for the standard coordinate cuboctahedron.
-/

namespace Cuboctahedron

inductive Face
  | xp | xm | yp | ym | zp | zm
  | tmmm | tmmp | tmpm | tmpp
  | tpmm | tpmp | tppm | tppp
deriving DecidableEq, Repr

instance : Fintype Face where
  elems := {
    val := [
      Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
      Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp,
      Face.tpmm, Face.tpmp, Face.tppm, Face.tppp
    ]
    nodup := by decide
  }
  complete := by
    intro f
    cases f <;> simp

def normalQ : Face -> Vec3 Rat
  | Face.xp => { x := 1, y := 0, z := 0 }
  | Face.xm => { x := -1, y := 0, z := 0 }
  | Face.yp => { x := 0, y := 1, z := 0 }
  | Face.ym => { x := 0, y := -1, z := 0 }
  | Face.zp => { x := 0, y := 0, z := 1 }
  | Face.zm => { x := 0, y := 0, z := -1 }
  | Face.tmmm => { x := -1, y := -1, z := -1 }
  | Face.tmmp => { x := -1, y := -1, z := 1 }
  | Face.tmpm => { x := -1, y := 1, z := -1 }
  | Face.tmpp => { x := -1, y := 1, z := 1 }
  | Face.tpmm => { x := 1, y := -1, z := -1 }
  | Face.tpmp => { x := 1, y := -1, z := 1 }
  | Face.tppm => { x := 1, y := 1, z := -1 }
  | Face.tppp => { x := 1, y := 1, z := 1 }

def offsetQ : Face -> Rat
  | Face.xp => 1
  | Face.xm => 1
  | Face.yp => 1
  | Face.ym => 1
  | Face.zp => 1
  | Face.zm => 1
  | Face.tmmm => 2
  | Face.tmmp => 2
  | Face.tmpm => 2
  | Face.tmpp => 2
  | Face.tpmm => 2
  | Face.tpmp => 2
  | Face.tppm => 2
  | Face.tppp => 2

def normalR (f : Face) : Vec3 Real :=
  (normalQ f).map fun q => (q : Real)

def offsetR (f : Face) : Real :=
  (offsetQ f : Real)

#eval normalQ Face.xp
#eval offsetQ Face.tppp

end Cuboctahedron
