import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge

/-!
Small source-index/state descriptor interface for row-property membership.

This is intentionally only a fact-free descriptor shape.  It does not prove
source agreement or row-property facts by itself; generated family modules must
derive those facts outside `Applies` before composing through
`RowPropertyParametricCovered`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

structure SourceIndexStateDescriptor where
  rank : Nat
  mask : SignMask
  support : TwoSourceFarkasSupport

def SourceIndexStateDescriptor.Applies
    (desc : SourceIndexStateDescriptor) (r : Nat) (mask : SignMask) : Prop :=
  r = desc.rank /\ mask = desc.mask

def xpStartSources : List TranslationConstraintSource :=
  (List.finRange 4).map TranslationConstraintSource.xpStart

def orderingSources : List TranslationConstraintSource :=
  (List.finRange 14).map TranslationConstraintSource.ordering

def impactInteriorSources (seq : Step14 -> Face) (i : Impact15) :
    List TranslationConstraintSource :=
  (allFacesList.filter fun g : Face => decide (g ≠ impactFace seq i)).map
    fun g => TranslationConstraintSource.interior i g

def interiorSources (seq : Step14 -> Face) :
    List TranslationConstraintSource :=
  nonStartImpacts.flatMap fun i => impactInteriorSources seq i

def translationConstraintSources (seq : Step14 -> Face) :
    List TranslationConstraintSource :=
  xpStartSources ++ orderingSources ++ interiorSources seq

def listGet? {α : Type} : List α -> Nat -> Option α
  | [], _ => none
  | x :: _, 0 => some x
  | _ :: xs, n + 1 => listGet? xs n

inductive SourceIndexTemplate
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

def SourceIndexTemplate.Rows
    (template : SourceIndexTemplate)
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  match template with
  | .eqEqPosVarFirst => EqEqPosVarFirstRows support r mask
  | .eqEqPosVarSecond => EqEqPosVarSecondRows support r mask
  | .eqEqNegVarFirst => EqEqNegVarFirstRows support r mask
  | .eqEqNegVarSecond => EqEqNegVarSecondRows support r mask
  | .oppOneMinusVarFirst => OppOneMinusVarFirstRows support r mask
  | .oppOneMinusVarSecond => OppOneMinusVarSecondRows support r mask
  | .oppMinusOneVarFirst => OppMinusOneVarFirstRows support r mask
  | .oppMinusOneVarSecond => OppMinusOneVarSecondRows support r mask
  | .axisAOnly => AxisAOnlyRows support r mask
  | .axisBOnly => AxisBOnlyRows support r mask
  | .exactTwoSourceValid => ExactTwoSourceValidRows support r mask

theorem SourceIndexTemplate.covered
    {template : SourceIndexTemplate}
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsource : SourceAgrees support r mask)
    (hrows : template.Rows support r mask) :
    RowPropertyParametricCovered r mask := by
  cases template <;> first
    | exact RowPropertyParametricCovered.eqEqPosVarFirst
        ⟨support, hsource, hrows⟩
    | exact RowPropertyParametricCovered.eqEqPosVarSecond
        ⟨support, hsource, hrows⟩
    | exact RowPropertyParametricCovered.eqEqNegVarFirst
        ⟨support, hsource, hrows⟩
    | exact RowPropertyParametricCovered.eqEqNegVarSecond
        ⟨support, hsource, hrows⟩
    | exact RowPropertyParametricCovered.oppOneMinusVarFirst
        ⟨support, hsource, hrows⟩
    | exact RowPropertyParametricCovered.oppOneMinusVarSecond
        ⟨support, hsource, hrows⟩
    | exact RowPropertyParametricCovered.oppMinusOneVarFirst
        ⟨support, hsource, hrows⟩
    | exact RowPropertyParametricCovered.oppMinusOneVarSecond
        ⟨support, hsource, hrows⟩
    | exact RowPropertyParametricCovered.axisAOnly
        ⟨support, hsource, hrows⟩
    | exact RowPropertyParametricCovered.axisBOnly
        ⟨support, hsource, hrows⟩
    | exact RowPropertyParametricCovered.exactTwoSourceValid
        ⟨support, hsource, hrows⟩

structure SourceIndexStateFamilyDescriptor where
  firstIndex : Nat
  secondIndex : Nat
  support : TwoSourceFarkasSupport
  template : SourceIndexTemplate

def SourceIndexStateFamilyDescriptor.SourceMatches
    (desc : SourceIndexStateFamilyDescriptor)
    (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    let seq := translationSeqAtRankMask ⟨r, hlt⟩ mask
    listGet? (translationConstraintSources seq) desc.firstIndex =
        some desc.support.first /\
      listGet? (translationConstraintSources seq) desc.secondIndex =
        some desc.support.second /\
      SourceChecks desc.support r hlt mask

def SourceIndexStateFamilyDescriptor.Applies
    (desc : SourceIndexStateFamilyDescriptor)
    (r : Nat) (mask : SignMask) : Prop :=
  desc.SourceMatches r mask /\ desc.template.Rows desc.support r mask

theorem SourceIndexStateFamilyDescriptor.sourceAgrees_of_applies
    {desc : SourceIndexStateFamilyDescriptor}
    {r : Nat} {mask : SignMask}
    (h : desc.Applies r mask) :
    SourceAgrees desc.support r mask := by
  intro hlt
  exact (h.1 hlt).2.2

theorem SourceIndexStateFamilyDescriptor.rows_of_applies
    {desc : SourceIndexStateFamilyDescriptor}
    {r : Nat} {mask : SignMask}
    (h : desc.Applies r mask) :
    desc.template.Rows desc.support r mask :=
  h.2

theorem SourceIndexStateFamilyDescriptor.covered_of_applies
    {desc : SourceIndexStateFamilyDescriptor}
    {r : Nat} {mask : SignMask}
    (h : desc.Applies r mask) :
    RowPropertyParametricCovered r mask :=
  desc.template.covered
    (desc.sourceAgrees_of_applies h)
    (desc.rows_of_applies h)

theorem sourceIndexState_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
