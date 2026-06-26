import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

/-!
Source-parametric row-property quotient for two-source translation families.

The symbolic representative backend originally keyed generated families by both
the concrete source agreement and the row-property predicate.  This module
factors the source agreement out of the public family key: a case is covered
when there exists some two-source support whose sources agree and whose rows
satisfy one of the reusable row-property predicates.

No rank tables, mask tables, or concrete translation certificates live here.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

def ExistsEqEqPosVarFirstRows (r : Nat) (mask : SignMask) : Prop :=
  exists support : TwoSourceFarkasSupport,
    SourceAgrees support r mask /\ EqEqPosVarFirstRows support r mask

def ExistsEqEqPosVarSecondRows (r : Nat) (mask : SignMask) : Prop :=
  exists support : TwoSourceFarkasSupport,
    SourceAgrees support r mask /\ EqEqPosVarSecondRows support r mask

def ExistsEqEqNegVarFirstRows (r : Nat) (mask : SignMask) : Prop :=
  exists support : TwoSourceFarkasSupport,
    SourceAgrees support r mask /\ EqEqNegVarFirstRows support r mask

def ExistsEqEqNegVarSecondRows (r : Nat) (mask : SignMask) : Prop :=
  exists support : TwoSourceFarkasSupport,
    SourceAgrees support r mask /\ EqEqNegVarSecondRows support r mask

def ExistsOppOneMinusVarFirstRows (r : Nat) (mask : SignMask) : Prop :=
  exists support : TwoSourceFarkasSupport,
    SourceAgrees support r mask /\ OppOneMinusVarFirstRows support r mask

def ExistsOppOneMinusVarSecondRows (r : Nat) (mask : SignMask) : Prop :=
  exists support : TwoSourceFarkasSupport,
    SourceAgrees support r mask /\ OppOneMinusVarSecondRows support r mask

def ExistsOppMinusOneVarFirstRows (r : Nat) (mask : SignMask) : Prop :=
  exists support : TwoSourceFarkasSupport,
    SourceAgrees support r mask /\ OppMinusOneVarFirstRows support r mask

def ExistsOppMinusOneVarSecondRows (r : Nat) (mask : SignMask) : Prop :=
  exists support : TwoSourceFarkasSupport,
    SourceAgrees support r mask /\ OppMinusOneVarSecondRows support r mask

def ExistsAxisAOnlyRows (r : Nat) (mask : SignMask) : Prop :=
  exists support : TwoSourceFarkasSupport,
    SourceAgrees support r mask /\ AxisAOnlyRows support r mask

def ExistsAxisBOnlyRows (r : Nat) (mask : SignMask) : Prop :=
  exists support : TwoSourceFarkasSupport,
    SourceAgrees support r mask /\ AxisBOnlyRows support r mask

def ExistsExactTwoSourceValidRows (r : Nat) (mask : SignMask) : Prop :=
  exists support : TwoSourceFarkasSupport,
    SourceAgrees support r mask /\ ExactTwoSourceValidRows support r mask

theorem eqEqPosVarFirst_kills
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : ExistsEqEqPosVarFirstRows r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  rcases h with ⟨support, hsource, hrows⟩
  exact eqEqPosVarFirst_killsOn support r hlt mask
    (eqEqPosVarFirst_of_symbolic hsource hrows)

theorem eqEqPosVarSecond_kills
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : ExistsEqEqPosVarSecondRows r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  rcases h with ⟨support, hsource, hrows⟩
  exact eqEqPosVarSecond_killsOn support r hlt mask
    (eqEqPosVarSecond_of_symbolic hsource hrows)

theorem eqEqNegVarFirst_kills
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : ExistsEqEqNegVarFirstRows r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  rcases h with ⟨support, hsource, hrows⟩
  exact eqEqNegVarFirst_killsOn support r hlt mask
    (eqEqNegVarFirst_of_symbolic hsource hrows)

theorem eqEqNegVarSecond_kills
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : ExistsEqEqNegVarSecondRows r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  rcases h with ⟨support, hsource, hrows⟩
  exact eqEqNegVarSecond_killsOn support r hlt mask
    (eqEqNegVarSecond_of_symbolic hsource hrows)

theorem oppOneMinusVarFirst_kills
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : ExistsOppOneMinusVarFirstRows r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  rcases h with ⟨support, hsource, hrows⟩
  exact oppOneMinusVarFirst_killsOn support r hlt mask
    (oppOneMinusVarFirst_of_symbolic hsource hrows)

theorem oppOneMinusVarSecond_kills
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : ExistsOppOneMinusVarSecondRows r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  rcases h with ⟨support, hsource, hrows⟩
  exact oppOneMinusVarSecond_killsOn support r hlt mask
    (oppOneMinusVarSecond_of_symbolic hsource hrows)

theorem oppMinusOneVarFirst_kills
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : ExistsOppMinusOneVarFirstRows r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  rcases h with ⟨support, hsource, hrows⟩
  exact oppMinusOneVarFirst_killsOn support r hlt mask
    (oppMinusOneVarFirst_of_symbolic hsource hrows)

theorem oppMinusOneVarSecond_kills
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : ExistsOppMinusOneVarSecondRows r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  rcases h with ⟨support, hsource, hrows⟩
  exact oppMinusOneVarSecond_killsOn support r hlt mask
    (oppMinusOneVarSecond_of_symbolic hsource hrows)

theorem axisAOnly_kills
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : ExistsAxisAOnlyRows r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  rcases h with ⟨support, hsource, hrows⟩
  exact axisAOnly_killsOn support r hlt mask
    (axisAOnly_of_symbolic hsource hrows)

theorem axisBOnly_kills
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : ExistsAxisBOnlyRows r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  rcases h with ⟨support, hsource, hrows⟩
  exact axisBOnly_killsOn support r hlt mask
    (axisBOnly_of_symbolic hsource hrows)

theorem exactTwoSourceValid_kills
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : ExistsExactTwoSourceValidRows r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  rcases h with ⟨support, hsource, hrows⟩
  exact exactTwoSourceValid_killsOn support r hlt mask
    (exactTwoSourceValid_of_symbolic hsource hrows)

inductive RowPropertyParametricCovered : Nat -> SignMask -> Prop
  | eqEqPosVarFirst {r : Nat} {mask : SignMask}
      (h : ExistsEqEqPosVarFirstRows r mask) :
      RowPropertyParametricCovered r mask
  | eqEqPosVarSecond {r : Nat} {mask : SignMask}
      (h : ExistsEqEqPosVarSecondRows r mask) :
      RowPropertyParametricCovered r mask
  | eqEqNegVarFirst {r : Nat} {mask : SignMask}
      (h : ExistsEqEqNegVarFirstRows r mask) :
      RowPropertyParametricCovered r mask
  | eqEqNegVarSecond {r : Nat} {mask : SignMask}
      (h : ExistsEqEqNegVarSecondRows r mask) :
      RowPropertyParametricCovered r mask
  | oppOneMinusVarFirst {r : Nat} {mask : SignMask}
      (h : ExistsOppOneMinusVarFirstRows r mask) :
      RowPropertyParametricCovered r mask
  | oppOneMinusVarSecond {r : Nat} {mask : SignMask}
      (h : ExistsOppOneMinusVarSecondRows r mask) :
      RowPropertyParametricCovered r mask
  | oppMinusOneVarFirst {r : Nat} {mask : SignMask}
      (h : ExistsOppMinusOneVarFirstRows r mask) :
      RowPropertyParametricCovered r mask
  | oppMinusOneVarSecond {r : Nat} {mask : SignMask}
      (h : ExistsOppMinusOneVarSecondRows r mask) :
      RowPropertyParametricCovered r mask
  | axisAOnly {r : Nat} {mask : SignMask}
      (h : ExistsAxisAOnlyRows r mask) :
      RowPropertyParametricCovered r mask
  | axisBOnly {r : Nat} {mask : SignMask}
      (h : ExistsAxisBOnlyRows r mask) :
      RowPropertyParametricCovered r mask
  | exactTwoSourceValid {r : Nat} {mask : SignMask}
      (h : ExistsExactTwoSourceValidRows r mask) :
      RowPropertyParametricCovered r mask

theorem RowPropertyParametricCovered.kills
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : RowPropertyParametricCovered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | eqEqPosVarFirst h => exact eqEqPosVarFirst_kills h
  | eqEqPosVarSecond h => exact eqEqPosVarSecond_kills h
  | eqEqNegVarFirst h => exact eqEqNegVarFirst_kills h
  | eqEqNegVarSecond h => exact eqEqNegVarSecond_kills h
  | oppOneMinusVarFirst h => exact oppOneMinusVarFirst_kills h
  | oppOneMinusVarSecond h => exact oppOneMinusVarSecond_kills h
  | oppMinusOneVarFirst h => exact oppMinusOneVarFirst_kills h
  | oppMinusOneVarSecond h => exact oppMinusOneVarSecond_kills h
  | axisAOnly h => exact axisAOnly_kills h
  | axisBOnly h => exact axisBOnly_kills h
  | exactTwoSourceValid h => exact exactTwoSourceValid_kills h

theorem rowPropertyQuotient_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient
