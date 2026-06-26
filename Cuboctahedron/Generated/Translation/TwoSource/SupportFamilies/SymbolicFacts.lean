import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-!
Symbolic source/row fact adapters for two-source translation support families.

The row-template layer proves that small semantic row relations imply a checked
two-source Farkas contradiction.  This module factors those row relations into
two generated obligations:

* the two constraint sources agree for the whole family; and
* the row-property part of the template holds for the family.

This is the intended proof surface for symbolic family smoke tests.  It avoids
reifying an exact row shape as the family key.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

def SourceAgrees
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords, SourceChecks support r hlt mask

def EqEqPosVarFirstRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    EqEqPosRow (FirstLineAt support r hlt mask) /\
      FixedRow (SecondLineAt support r hlt mask) 1 1

def OppOneMinusVarFirstRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    OppPosRow (FirstLineAt support r hlt mask) /\
      FixedRow (SecondLineAt support r hlt mask) 1 (-1)

def OppMinusOneVarFirstRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    OppNegRow (FirstLineAt support r hlt mask) /\
      FixedRow (SecondLineAt support r hlt mask) (-1) 1

def AxisBOnlyRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    (FirstLineAt support r hlt mask).a = 0 /\
      (SecondLineAt support r hlt mask).a = 0 /\
        (FirstLineAt support r hlt mask).b *
            (SecondLineAt support r hlt mask).b < 0 /\
          (SupportPair.multipliersAt support r hlt mask).1 *
              (FirstLineAt support r hlt mask).c +
            (SupportPair.multipliersAt support r hlt mask).2 *
              (SecondLineAt support r hlt mask).c <= 0

theorem eqEqPosVarFirst_of_symbolic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : EqEqPosVarFirstRows support r mask) :
    EqEqPosVarFirst support r mask := by
  intro hlt
  rcases hrows hlt with ⟨hrow, hfixed⟩
  exact ⟨hsource hlt, hrow, hfixed⟩

theorem oppOneMinusVarFirst_of_symbolic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : OppOneMinusVarFirstRows support r mask) :
    OppOneMinusVarFirst support r mask := by
  intro hlt
  rcases hrows hlt with ⟨hrow, hfixed⟩
  exact ⟨hsource hlt, hrow, hfixed⟩

theorem oppMinusOneVarFirst_of_symbolic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : OppMinusOneVarFirstRows support r mask) :
    OppMinusOneVarFirst support r mask := by
  intro hlt
  rcases hrows hlt with ⟨hrow, hfixed⟩
  exact ⟨hsource hlt, hrow, hfixed⟩

theorem axisBOnly_of_symbolic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : AxisBOnlyRows support r mask) :
    AxisBOnly support r mask := by
  intro hlt
  rcases hrows hlt with ⟨hfirstA, hsecondA, hprod, hweightedC⟩
  exact ⟨hsource hlt, hfirstA, hsecondA, hprod, hweightedC⟩

theorem symbolicFacts_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
