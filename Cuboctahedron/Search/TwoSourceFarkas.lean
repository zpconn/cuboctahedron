import Cuboctahedron.Search.Certificates

/-!
Two-source translation Farkas helpers.

This module is deliberately small: it builds a two-term source-indexed Farkas
certificate from two selected translation constraint sources, then delegates
soundness to the existing `checkSourceFarkas_sound` theorem.
-/

namespace Cuboctahedron

structure TwoSourceFarkasSupport where
  first : TranslationConstraintSource
  second : TranslationConstraintSource
deriving DecidableEq, Repr

namespace TwoSourceFarkasSupport

def orientNonnegative (w : Rat × Rat) : Rat × Rat :=
  if decide (0 <= w.1 ∧ 0 <= w.2) then
    w
  else
    (-w.1, -w.2)

def multipliersForLines (L M : StrictLin2) : Rat × Rat :=
  let raw :=
    if decide (L.a ≠ 0 ∨ M.a ≠ 0) then
      (M.a, -L.a)
    else
      (M.b, -L.b)
  orientNonnegative raw

def toSourceFarkasCert
    (seq : Step14 -> Face) (b : Vec3 Rat)
    (support : TwoSourceFarkasSupport) : SourceFarkasCert :=
  let L := translationConstraintSourceLine seq b support.first
  let M := translationConstraintSourceLine seq b support.second
  let w := multipliersForLines L M
  { terms := [
      { source := support.first, multiplier := w.1 },
      { source := support.second, multiplier := w.2 }
    ] }

def check
    (seq : Step14 -> Face) (b : Vec3 Rat)
    (support : TwoSourceFarkasSupport) : Bool :=
  checkSourceFarkas seq b (support.toSourceFarkasCert seq b)

theorem check_sound
    {seq : Step14 -> Face} {b : Vec3 Rat}
    {support : TwoSourceFarkasSupport}
    (hcheck : support.check seq b = true) :
    ¬ exists y z : Real,
      forall L, L ∈ translationConstraints seq b -> L.Holds y z :=
  checkSourceFarkas_sound hcheck

end TwoSourceFarkasSupport

#check TwoSourceFarkasSupport.check
#check TwoSourceFarkasSupport.check_sound

end Cuboctahedron
