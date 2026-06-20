/-!
Small Prop-level interval coverage combinators for generated coverage modules.

This module intentionally contains no generated data and no Boolean checkers.
Generated leaves can prove semantic predicates over bounded rank intervals, and
larger generated modules can compose those interval theorems without reducing a
large runtime search.
-/

namespace Cuboctahedron.Generated.Coverage

def CoversInterval (P : Nat -> Prop) (lo hi : Nat) : Prop :=
  forall r, lo <= r -> r < hi -> P r

theorem CoversInterval.empty
    (P : Nat -> Prop) {a b : Nat} (h : b <= a) :
    CoversInterval P a b := by
  intro r hra hrb
  have hbr : b <= r := Nat.le_trans h hra
  exact False.elim ((Nat.not_lt_of_ge hbr) hrb)

theorem CoversInterval.single
    {P : Nat -> Prop} {r : Nat}
    (h : P r) :
    CoversInterval P r (r + 1) := by
  intro r' hlo hhi
  have hle : r' <= r := Nat.le_of_lt_succ hhi
  have heq : r' = r := Nat.le_antisymm hle hlo
  simpa [heq] using h

theorem CoversInterval.concat
    {P : Nat -> Prop} {a b c : Nat}
    (h1 : CoversInterval P a b)
    (h2 : CoversInterval P b c) :
    CoversInterval P a c := by
  intro r hra hrc
  by_cases hrb : r < b
  · exact h1 r hra hrb
  · exact h2 r (Nat.le_of_not_lt hrb) hrc

theorem CoversInterval.mono
    {P Q : Nat -> Prop} {a b : Nat}
    (hPQ : forall r, P r -> Q r)
    (h : CoversInterval P a b) :
    CoversInterval Q a b := by
  intro r hlo hhi
  exact hPQ r (h r hlo hhi)

end Cuboctahedron.Generated.Coverage
