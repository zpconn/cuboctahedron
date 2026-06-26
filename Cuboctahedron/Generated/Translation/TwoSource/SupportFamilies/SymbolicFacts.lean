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

def EqEqPosVarSecondRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    FixedRow (FirstLineAt support r hlt mask) 1 1 /\
      EqEqPosRow (SecondLineAt support r hlt mask)

def EqEqNegVarFirstRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    EqEqNegRow (FirstLineAt support r hlt mask) /\
      FixedRow (SecondLineAt support r hlt mask) (-1) (-1)

def EqEqNegVarSecondRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    FixedRow (FirstLineAt support r hlt mask) (-1) (-1) /\
      EqEqNegRow (SecondLineAt support r hlt mask)

def OppOneMinusVarFirstRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    OppPosRow (FirstLineAt support r hlt mask) /\
      FixedRow (SecondLineAt support r hlt mask) 1 (-1)

def OppOneMinusVarSecondRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    FixedRow (FirstLineAt support r hlt mask) 1 (-1) /\
      OppPosRow (SecondLineAt support r hlt mask)

def OppMinusOneVarFirstRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    OppNegRow (FirstLineAt support r hlt mask) /\
      FixedRow (SecondLineAt support r hlt mask) (-1) 1

def OppMinusOneVarSecondRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    FixedRow (FirstLineAt support r hlt mask) (-1) 1 /\
      OppNegRow (SecondLineAt support r hlt mask)

def AxisAOnlyRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    (FirstLineAt support r hlt mask).b = 0 /\
      (SecondLineAt support r hlt mask).b = 0 /\
        (FirstLineAt support r hlt mask).a *
            (SecondLineAt support r hlt mask).a < 0 /\
          (SupportPair.multipliersAt support r hlt mask).1 *
              (FirstLineAt support r hlt mask).c +
            (SupportPair.multipliersAt support r hlt mask).2 *
              (SecondLineAt support r hlt mask).c <= 0

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

def ExactTwoSourceValidRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    0 <= (SupportPair.multipliersAt support r hlt mask).1 /\
      0 <= (SupportPair.multipliersAt support r hlt mask).2 /\
        (0 < (SupportPair.multipliersAt support r hlt mask).1 \/
          0 < (SupportPair.multipliersAt support r hlt mask).2) /\
          (SupportPair.multipliersAt support r hlt mask).1 *
              (FirstLineAt support r hlt mask).a +
            (SupportPair.multipliersAt support r hlt mask).2 *
              (SecondLineAt support r hlt mask).a = 0 /\
            (SupportPair.multipliersAt support r hlt mask).1 *
                (FirstLineAt support r hlt mask).b +
              (SupportPair.multipliersAt support r hlt mask).2 *
                (SecondLineAt support r hlt mask).b = 0 /\
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

theorem eqEqPosVarSecond_of_symbolic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : EqEqPosVarSecondRows support r mask) :
    EqEqPosVarSecond support r mask := by
  intro hlt
  rcases hrows hlt with ⟨hfixed, hrow⟩
  exact ⟨hsource hlt, hfixed, hrow⟩

theorem eqEqNegVarFirst_of_symbolic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : EqEqNegVarFirstRows support r mask) :
    EqEqNegVarFirst support r mask := by
  intro hlt
  rcases hrows hlt with ⟨hrow, hfixed⟩
  exact ⟨hsource hlt, hrow, hfixed⟩

theorem eqEqNegVarSecond_of_symbolic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : EqEqNegVarSecondRows support r mask) :
    EqEqNegVarSecond support r mask := by
  intro hlt
  rcases hrows hlt with ⟨hfixed, hrow⟩
  exact ⟨hsource hlt, hfixed, hrow⟩

theorem oppOneMinusVarFirst_of_symbolic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : OppOneMinusVarFirstRows support r mask) :
    OppOneMinusVarFirst support r mask := by
  intro hlt
  rcases hrows hlt with ⟨hrow, hfixed⟩
  exact ⟨hsource hlt, hrow, hfixed⟩

theorem oppOneMinusVarSecond_of_symbolic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : OppOneMinusVarSecondRows support r mask) :
    OppOneMinusVarSecond support r mask := by
  intro hlt
  rcases hrows hlt with ⟨hfixed, hrow⟩
  exact ⟨hsource hlt, hfixed, hrow⟩

theorem oppMinusOneVarFirst_of_symbolic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : OppMinusOneVarFirstRows support r mask) :
    OppMinusOneVarFirst support r mask := by
  intro hlt
  rcases hrows hlt with ⟨hrow, hfixed⟩
  exact ⟨hsource hlt, hrow, hfixed⟩

theorem oppMinusOneVarSecond_of_symbolic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : OppMinusOneVarSecondRows support r mask) :
    OppMinusOneVarSecond support r mask := by
  intro hlt
  rcases hrows hlt with ⟨hfixed, hrow⟩
  exact ⟨hsource hlt, hfixed, hrow⟩

theorem axisAOnly_of_symbolic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : AxisAOnlyRows support r mask) :
    AxisAOnly support r mask := by
  intro hlt
  rcases hrows hlt with ⟨hfirstB, hsecondB, hprod, hweightedC⟩
  exact ⟨hsource hlt, hfirstB, hsecondB, hprod, hweightedC⟩

theorem axisBOnly_of_symbolic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : AxisBOnlyRows support r mask) :
    AxisBOnly support r mask := by
  intro hlt
  rcases hrows hlt with ⟨hfirstA, hsecondA, hprod, hweightedC⟩
  exact ⟨hsource hlt, hfirstA, hsecondA, hprod, hweightedC⟩

theorem exactTwoSourceValid_of_symbolic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : ExactTwoSourceValidRows support r mask) :
    ExactTwoSourceValid support r mask := by
  intro hlt
  rcases hrows hlt with
    ⟨hw1, hw2, hpos, hwa, hwb, hwc⟩
  exact ⟨hsource hlt, hw1, hw2, hpos, hwa, hwb, hwc⟩

theorem symbolicFacts_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
