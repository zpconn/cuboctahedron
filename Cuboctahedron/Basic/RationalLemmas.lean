import Mathlib.Tactic
import Cuboctahedron.Basic.Aff3

/-!
Small rational arithmetic checks used to keep the exact core honest.
-/

namespace Cuboctahedron

theorem rat_two_ne_zero : (2 : Rat) ≠ 0 := by
  norm_num

theorem rat_three_ne_zero : (3 : Rat) ≠ 0 := by
  norm_num

example :
    dot ({ x := (1 : Rat), y := 2, z := 3 } : Vec3 Rat)
        ({ x := (4 : Rat), y := 5, z := 6 } : Vec3 Rat) = 32 := by
  norm_num [dot]

example :
    cross ({ x := (1 : Rat), y := 0, z := 0 } : Vec3 Rat)
        ({ x := (0 : Rat), y := 1, z := 0 } : Vec3 Rat) =
      ({ x := (0 : Rat), y := 0, z := 1 } : Vec3 Rat) := by
  apply Vec3.ext <;> norm_num [cross]

example (p : Vec3 Rat) :
    affApply (affId : Aff3 Rat) p = p :=
  affId_apply p

end Cuboctahedron
