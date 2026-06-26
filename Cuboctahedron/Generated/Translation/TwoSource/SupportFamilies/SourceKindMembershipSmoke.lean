import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge

/-!
Generated source-kind membership smoke for Phase 6Z.6K.8B.

This module tests the interface shape only.  It intentionally keeps
`SourceAgrees` and row-property facts inside the witness predicate, so a
successful build is not production coverage.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceKindMembershipSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

inductive SourceKindTag
  | xpStart
  | ordering
  | interior
deriving DecidableEq, Repr

def SourceKindTag.ofSource : TranslationConstraintSource -> SourceKindTag
  | TranslationConstraintSource.xpStart _ => SourceKindTag.xpStart
  | TranslationConstraintSource.ordering _ => SourceKindTag.ordering
  | TranslationConstraintSource.interior _ _ => SourceKindTag.interior

def SupportHasKinds
    (support : TwoSourceFarkasSupport)
    (first second : SourceKindTag) : Prop :=
  SourceKindTag.ofSource support.first = first /\
    SourceKindTag.ofSource support.second = second

inductive RowPropertyTag
  | eqEqPosVarFirst
  | eqEqPosVarSecond
  | eqEqNegVarFirst
  | eqEqNegVarSecond
  | oppOneMinusVarFirst
  | oppOneMinusVarSecond
  | oppMinusOneVarFirst
  | oppMinusOneVarSecond
  | axisAOnly
  | axisBOnly
  | exactTwoSourceValid
deriving DecidableEq, Repr

def rowPropertyPredicate
    (tag : RowPropertyTag)
    (support : TwoSourceFarkasSupport)
    (r : Nat) (mask : SignMask) : Prop :=
  match tag with
  | RowPropertyTag.eqEqPosVarFirst =>
      SourceAgrees support r mask /\ EqEqPosVarFirstRows support r mask
  | RowPropertyTag.eqEqPosVarSecond =>
      SourceAgrees support r mask /\ EqEqPosVarSecondRows support r mask
  | RowPropertyTag.eqEqNegVarFirst =>
      SourceAgrees support r mask /\ EqEqNegVarFirstRows support r mask
  | RowPropertyTag.eqEqNegVarSecond =>
      SourceAgrees support r mask /\ EqEqNegVarSecondRows support r mask
  | RowPropertyTag.oppOneMinusVarFirst =>
      SourceAgrees support r mask /\ OppOneMinusVarFirstRows support r mask
  | RowPropertyTag.oppOneMinusVarSecond =>
      SourceAgrees support r mask /\ OppOneMinusVarSecondRows support r mask
  | RowPropertyTag.oppMinusOneVarFirst =>
      SourceAgrees support r mask /\ OppMinusOneVarFirstRows support r mask
  | RowPropertyTag.oppMinusOneVarSecond =>
      SourceAgrees support r mask /\ OppMinusOneVarSecondRows support r mask
  | RowPropertyTag.axisAOnly =>
      SourceAgrees support r mask /\ AxisAOnlyRows support r mask
  | RowPropertyTag.axisBOnly =>
      SourceAgrees support r mask /\ AxisBOnlyRows support r mask
  | RowPropertyTag.exactTwoSourceValid =>
      SourceAgrees support r mask /\ ExactTwoSourceValidRows support r mask

def SourceKindRowPropertyWitness
    (tag : RowPropertyTag) (first second : SourceKindTag)
    (r : Nat) (mask : SignMask) : Prop :=
  exists support : TwoSourceFarkasSupport,
    SupportHasKinds support first second /\
      rowPropertyPredicate tag support r mask

theorem sourceKindRowPropertyWitness_covered
    {tag : RowPropertyTag} {first second : SourceKindTag}
    {r : Nat} {mask : SignMask}
    (h : SourceKindRowPropertyWitness tag first second r mask) :
    RowPropertyParametricCovered r mask := by
  rcases h with ⟨support, _hkinds, hprop⟩
  cases tag <;>
    simp [rowPropertyPredicate] at hprop
  · exact RowPropertyParametricCovered.eqEqPosVarFirst ⟨support, hprop⟩
  · exact RowPropertyParametricCovered.eqEqPosVarSecond ⟨support, hprop⟩
  · exact RowPropertyParametricCovered.eqEqNegVarFirst ⟨support, hprop⟩
  · exact RowPropertyParametricCovered.eqEqNegVarSecond ⟨support, hprop⟩
  · exact RowPropertyParametricCovered.oppOneMinusVarFirst ⟨support, hprop⟩
  · exact RowPropertyParametricCovered.oppOneMinusVarSecond ⟨support, hprop⟩
  · exact RowPropertyParametricCovered.oppMinusOneVarFirst ⟨support, hprop⟩
  · exact RowPropertyParametricCovered.oppMinusOneVarSecond ⟨support, hprop⟩
  · exact RowPropertyParametricCovered.axisAOnly ⟨support, hprop⟩
  · exact RowPropertyParametricCovered.axisBOnly ⟨support, hprop⟩
  · exact RowPropertyParametricCovered.exactTwoSourceValid ⟨support, hprop⟩

def sourceKindRowPropertyFamily
    (tag : RowPropertyTag) (first second : SourceKindTag) :
    RowPropertyMembershipFamily where
  Applies := SourceKindRowPropertyWitness tag first second
  covered := by
    intro r mask h
    exact sourceKindRowPropertyWitness_covered h

/-- Selected source-kind family `275a8c6e355659afe955918277d524438e785d419ceceeae937fa060290b9734`.
Observed cases in bounded scan: 711.
Template: `eq_eq_pos_var_first`. -/
def selected_000 : RowPropertyMembershipFamily :=
  sourceKindRowPropertyFamily RowPropertyTag.eqEqPosVarFirst
    SourceKindTag.interior SourceKindTag.xpStart

theorem selected_000_killsOn : selected_000.KillsOn :=
  selected_000.killsOn

/-- Selected source-kind family `9f4152d21342c1684f1829b586a4cdff09186e05d8c029643c20aa601fa1c478`.
Observed cases in bounded scan: 240.
Template: `eq_eq_pos_var_second`. -/
def selected_001 : RowPropertyMembershipFamily :=
  sourceKindRowPropertyFamily RowPropertyTag.eqEqPosVarSecond
    SourceKindTag.xpStart SourceKindTag.ordering

theorem selected_001_killsOn : selected_001.KillsOn :=
  selected_001.killsOn

/-- Selected source-kind family `dc273dda7321ad8928cd5014ac39f2932da81d69cb1f07d2e50b34aaede94fe0`.
Observed cases in bounded scan: 2.
Template: `axis_a_only`. -/
def selected_002 : RowPropertyMembershipFamily :=
  sourceKindRowPropertyFamily RowPropertyTag.axisAOnly
    SourceKindTag.interior SourceKindTag.ordering

theorem selected_002_killsOn : selected_002.KillsOn :=
  selected_002.killsOn

theorem sourceKindMembershipSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceKindMembershipSmoke
