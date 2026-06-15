import Mathlib.Tactic

/-!
Strict two-dimensional rational linear inequalities.
-/

namespace Cuboctahedron

structure StrictLin2 where
  a : Rat
  b : Rat
  c : Rat
deriving DecidableEq, Repr

structure Lin2 where
  const : Rat
  yCoeff : Rat
  zCoeff : Rat
deriving DecidableEq, Repr, Inhabited

namespace Lin2

def constOnly (q : Rat) : Lin2 where
  const := q
  yCoeff := 0
  zCoeff := 0

def y : Lin2 where
  const := 0
  yCoeff := 1
  zCoeff := 0

def z : Lin2 where
  const := 0
  yCoeff := 0
  zCoeff := 1

def add (L M : Lin2) : Lin2 where
  const := L.const + M.const
  yCoeff := L.yCoeff + M.yCoeff
  zCoeff := L.zCoeff + M.zCoeff

def sub (L M : Lin2) : Lin2 where
  const := L.const - M.const
  yCoeff := L.yCoeff - M.yCoeff
  zCoeff := L.zCoeff - M.zCoeff

def scale (q : Rat) (L : Lin2) : Lin2 where
  const := q * L.const
  yCoeff := q * L.yCoeff
  zCoeff := q * L.zCoeff

def eval (L : Lin2) (y z : Real) : Real :=
  (L.const : Real) + (L.yCoeff : Real) * y + (L.zCoeff : Real) * z

def ltConstraint (lhs rhs : Lin2) : StrictLin2 where
  a := lhs.yCoeff - rhs.yCoeff
  b := lhs.zCoeff - rhs.zCoeff
  c := rhs.const - lhs.const

@[simp] theorem eval_constOnly (q : Rat) (y z : Real) :
    (constOnly q).eval y z = (q : Real) := by
  simp [constOnly, eval]

@[simp] theorem eval_y (y z : Real) :
    Lin2.y.eval y z = y := by
  simp [Lin2.y, eval]

@[simp] theorem eval_z (y z : Real) :
    Lin2.z.eval y z = z := by
  simp [Lin2.z, eval]

@[simp] theorem eval_add (L M : Lin2) (y z : Real) :
    (add L M).eval y z = L.eval y z + M.eval y z := by
  simp [add, eval]
  ring

@[simp] theorem eval_sub (L M : Lin2) (y z : Real) :
    (sub L M).eval y z = L.eval y z - M.eval y z := by
  simp [sub, eval]
  ring

@[simp] theorem eval_scale (q : Rat) (L : Lin2) (y z : Real) :
    (scale q L).eval y z = (q : Real) * L.eval y z := by
  simp [scale, eval]
  ring

end Lin2

namespace StrictLin2

def zero : StrictLin2 where
  a := 0
  b := 0
  c := 0

def add (L M : StrictLin2) : StrictLin2 where
  a := L.a + M.a
  b := L.b + M.b
  c := L.c + M.c

def scale (q : Rat) (L : StrictLin2) : StrictLin2 where
  a := q * L.a
  b := q * L.b
  c := q * L.c

def eval (L : StrictLin2) (y z : Real) : Real :=
  (L.a : Real) * y + (L.b : Real) * z

def Holds (L : StrictLin2) (y z : Real) : Prop :=
  L.eval y z < (L.c : Real)

@[simp] theorem eval_zero (y z : Real) :
    zero.eval y z = 0 := by
  simp [zero, eval]

@[simp] theorem c_zero :
    ((zero.c : Rat) : Real) = 0 := by
  simp [zero]

theorem eval_add (L M : StrictLin2) (y z : Real) :
    (add L M).eval y z = L.eval y z + M.eval y z := by
  simp [add, eval]
  ring

theorem c_add (L M : StrictLin2) :
    (((add L M).c : Rat) : Real) = (L.c : Real) + (M.c : Real) := by
  simp [add]

theorem eval_scale (q : Rat) (L : StrictLin2) (y z : Real) :
    (scale q L).eval y z = (q : Real) * L.eval y z := by
  simp [scale, eval]
  ring

theorem c_scale (q : Rat) (L : StrictLin2) :
    (((scale q L).c : Rat) : Real) = (q : Real) * (L.c : Real) := by
  simp [scale]

theorem scale_eval_le_c_of_nonneg {q : Rat} {L : StrictLin2} {y z : Real}
    (hq : 0 <= q)
    (hL : L.Holds y z) :
    (scale q L).eval y z <= ((scale q L).c : Real) := by
  have hqR : (0 : Real) <= (q : Real) := by exact_mod_cast hq
  rcases lt_or_eq_of_le hqR with hqpos | hqzero
  · rw [eval_scale, c_scale]
    exact le_of_lt (mul_lt_mul_of_pos_left hL hqpos)
  · rw [eval_scale, c_scale, ← hqzero]
    simp

theorem scale_eval_lt_c_of_pos {q : Rat} {L : StrictLin2} {y z : Real}
    (hq : 0 < q)
    (hL : L.Holds y z) :
    (scale q L).eval y z < ((scale q L).c : Real) := by
  have hqR : (0 : Real) < (q : Real) := by exact_mod_cast hq
  rw [eval_scale, c_scale]
  exact mul_lt_mul_of_pos_left hL hqR

end StrictLin2

namespace Lin2

theorem ltConstraint_holds_iff (lhs rhs : Lin2) (y z : Real) :
    (ltConstraint lhs rhs).Holds y z <-> lhs.eval y z < rhs.eval y z := by
  simp [ltConstraint, StrictLin2.Holds, StrictLin2.eval, Lin2.eval]
  constructor <;> intro h <;> linarith

theorem holds_ltConstraint_of_eval_lt {lhs rhs : Lin2} {y z : Real}
    (h : lhs.eval y z < rhs.eval y z) :
    (ltConstraint lhs rhs).Holds y z :=
  (ltConstraint_holds_iff lhs rhs y z).2 h

end Lin2

end Cuboctahedron
