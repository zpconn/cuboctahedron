/-!
Small Prop-level sparse coverage combinators for generated smoke modules.

This module intentionally contains no generated data and no Boolean checkers.
It is separate from `Coverage.Interval` so bounded diagnostics over
non-contiguous ranks do not invalidate the interval-based generated coverage
dependencies.
-/

namespace Cuboctahedron.Generated.Coverage

def CoversRanks (P : Nat -> Prop) (ranks : List Nat) : Prop :=
  forall r, r ∈ ranks -> P r

theorem CoversRanks.nil
    (P : Nat -> Prop) :
    CoversRanks P [] := by
  intro r h
  cases h

theorem CoversRanks.single
    {P : Nat -> Prop} {r : Nat}
    (h : P r) :
    CoversRanks P [r] := by
  intro r' hr'
  simp only [List.mem_singleton] at hr'
  simpa [hr'] using h

theorem CoversRanks.cons
    {P : Nat -> Prop} {r : Nat} {ranks : List Nat}
    (hr : P r)
    (htail : CoversRanks P ranks) :
    CoversRanks P (r :: ranks) := by
  intro r' hr'
  simp only [List.mem_cons] at hr'
  rcases hr' with hr' | hr'
  · simpa [hr'] using hr
  · exact htail r' hr'

theorem CoversRanks.append
    {P : Nat -> Prop} {xs ys : List Nat}
    (hxs : CoversRanks P xs)
    (hys : CoversRanks P ys) :
    CoversRanks P (xs ++ ys) := by
  intro r hr
  simp only [List.mem_append] at hr
  rcases hr with hr | hr
  · exact hxs r hr
  · exact hys r hr

theorem CoversRanks.mono
    {P Q : Nat -> Prop} {ranks : List Nat}
    (hPQ : forall r, P r -> Q r)
    (h : CoversRanks P ranks) :
    CoversRanks Q ranks := by
  intro r hr
  exact hPQ r (h r hr)

end Cuboctahedron.Generated.Coverage
