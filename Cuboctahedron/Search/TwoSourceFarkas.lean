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

def firstLine
    (seq : Step14 -> Face) (b : Vec3 Rat)
    (support : TwoSourceFarkasSupport) : StrictLin2 :=
  translationConstraintSourceLine seq b support.first

def secondLine
    (seq : Step14 -> Face) (b : Vec3 Rat)
    (support : TwoSourceFarkasSupport) : StrictLin2 :=
  translationConstraintSourceLine seq b support.second

def multipliers
    (seq : Step14 -> Face) (b : Vec3 Rat)
    (support : TwoSourceFarkasSupport) : Rat × Rat :=
  multipliersForLines (support.firstLine seq b) (support.secondLine seq b)

def sourceConstraints
    (seq : Step14 -> Face) (b : Vec3 Rat)
    (support : TwoSourceFarkasSupport) : List StrictLin2 :=
  [support.firstLine seq b, support.secondLine seq b]

def farkasCert
    (seq : Step14 -> Face) (b : Vec3 Rat)
    (support : TwoSourceFarkasSupport) : FarkasCert where
  terms := [(0, (support.multipliers seq b).1),
    (1, (support.multipliers seq b).2)]

/-- Prop-level evidence for a two-source Farkas contradiction.

Generated leaves should prove this record instead of asking Lean to reduce the
full Boolean source checker.  Its fields are small exact facts: two source
membership checks, nonnegative multipliers with at least one positive
multiplier, coefficient cancellation, and a nonpositive weighted RHS.
-/
structure Checked
    (seq : Step14 -> Face) (b : Vec3 Rat)
    (support : TwoSourceFarkasSupport) : Prop where
  first_source_ok :
    checkTranslationConstraintSource seq support.first = true
  second_source_ok :
    checkTranslationConstraintSource seq support.second = true
  first_multiplier_nonneg : 0 <= (support.multipliers seq b).1
  second_multiplier_nonneg : 0 <= (support.multipliers seq b).2
  multiplier_positive :
    0 < (support.multipliers seq b).1 \/
      0 < (support.multipliers seq b).2
  weighted_a_zero :
    (support.multipliers seq b).1 * (support.firstLine seq b).a +
      (support.multipliers seq b).2 * (support.secondLine seq b).a = 0
  weighted_b_zero :
    (support.multipliers seq b).1 * (support.firstLine seq b).b +
      (support.multipliers seq b).2 * (support.secondLine seq b).b = 0
  weighted_c_nonpos :
    (support.multipliers seq b).1 * (support.firstLine seq b).c +
      (support.multipliers seq b).2 * (support.secondLine seq b).c <= 0

theorem Checked.farkas_valid
    {seq : Step14 -> Face} {b : Vec3 Rat}
    {support : TwoSourceFarkasSupport}
    (hchecked : support.Checked seq b) :
    (support.farkasCert seq b).Valid
      (support.sourceConstraints seq b) := by
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · intro term hmem
    simp [farkasCert] at hmem
    rcases hmem with hterm | hterm
    · subst term
      simp [sourceConstraints, FarkasCert.TermValid,
        hchecked.first_multiplier_nonneg]
    · subst term
      simp [sourceConstraints, FarkasCert.TermValid,
        hchecked.second_multiplier_nonneg]
  · rcases hchecked.multiplier_positive with hpos | hpos
    · refine ⟨(0, (support.multipliers seq b).1), ?_, ?_⟩
      · simp [farkasCert]
      · simpa [FarkasCert.TermPositive] using hpos
    · refine ⟨(1, (support.multipliers seq b).2), ?_, ?_⟩
      · simp [farkasCert]
      · simpa [FarkasCert.TermPositive] using hpos
  · simpa [farkasCert, sourceConstraints, weightedSum, termLinear,
      constraintAt, StrictLin2.add, StrictLin2.scale, StrictLin2.zero]
      using hchecked.weighted_a_zero
  · simpa [farkasCert, sourceConstraints, weightedSum, termLinear,
      constraintAt, StrictLin2.add, StrictLin2.scale, StrictLin2.zero]
      using hchecked.weighted_b_zero
  · simpa [farkasCert, sourceConstraints, weightedSum, termLinear,
      constraintAt, StrictLin2.add, StrictLin2.scale, StrictLin2.zero]
      using hchecked.weighted_c_nonpos

theorem Checked.sound
    {seq : Step14 -> Face} {b : Vec3 Rat}
    {support : TwoSourceFarkasSupport}
    (hchecked : support.Checked seq b) :
    ¬ exists y z : Real,
      forall L, L ∈ translationConstraints seq b -> L.Holds y z := by
  intro hbad
  rcases hbad with ⟨y, z, hAll⟩
  have hSourceAll :
      forall L,
        L ∈ support.sourceConstraints seq b -> L.Holds y z := by
    intro L hmem
    simp [sourceConstraints] at hmem
    rcases hmem with hfirst | hsecond
    · rw [hfirst]
      exact hAll _ (translationConstraintSourceLine_mem
        (b := b) hchecked.first_source_ok)
    · rw [hsecond]
      exact hAll _ (translationConstraintSourceLine_mem
        (b := b) hchecked.second_source_ok)
  exact FarkasCert.Valid.sound hchecked.farkas_valid
    ⟨y, z, hSourceAll⟩

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
