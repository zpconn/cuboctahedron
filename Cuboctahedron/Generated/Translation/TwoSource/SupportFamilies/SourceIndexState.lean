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

structure SourceIndexStateKey where
  firstIndex : Nat
  secondIndex : Nat
  support : TwoSourceFarkasSupport
  template : SourceIndexTemplate

def SourceIndexStateKey.toDescriptor
    (key : SourceIndexStateKey) : SourceIndexStateFamilyDescriptor where
  firstIndex := key.firstIndex
  secondIndex := key.secondIndex
  support := key.support
  template := key.template

def SourceIndexStateKey.Matches
    (key : SourceIndexStateKey) (r : Nat) (mask : SignMask) : Prop :=
  key.toDescriptor.Applies r mask

structure SourceIndexStateKeyFacts
    (key : SourceIndexStateKey) (r : Nat) (mask : SignMask) : Prop where
  firstSource :
    ∀ hlt : r < numPairWords,
      let seq := translationSeqAtRankMask ⟨r, hlt⟩ mask
      listGet? (translationConstraintSources seq) key.firstIndex =
        some key.support.first
  secondSource :
    ∀ hlt : r < numPairWords,
      let seq := translationSeqAtRankMask ⟨r, hlt⟩ mask
      listGet? (translationConstraintSources seq) key.secondIndex =
        some key.support.second
  sourceChecks :
    ∀ hlt : r < numPairWords,
      SourceChecks key.support r hlt mask
  rows : key.template.Rows key.support r mask

structure SourceIndexStateSourceFacts
    (key : SourceIndexStateKey) (r : Nat) (mask : SignMask) : Prop where
  firstSource :
    ∀ hlt : r < numPairWords,
      let seq := translationSeqAtRankMask ⟨r, hlt⟩ mask
      listGet? (translationConstraintSources seq) key.firstIndex =
        some key.support.first
  secondSource :
    ∀ hlt : r < numPairWords,
      let seq := translationSeqAtRankMask ⟨r, hlt⟩ mask
      listGet? (translationConstraintSources seq) key.secondIndex =
        some key.support.second
  sourceChecks :
    ∀ hlt : r < numPairWords,
      SourceChecks key.support r hlt mask

def SourceIndexStateSourcePredicate
    (firstIndex secondIndex : Nat) (support : TwoSourceFarkasSupport)
    (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    let seq := translationSeqAtRankMask ⟨r, hlt⟩ mask
    listGet? (translationConstraintSources seq) firstIndex =
        some support.first /\
      listGet? (translationConstraintSources seq) secondIndex =
        some support.second /\
      SourceChecks support r hlt mask

private def decidableForRankProof
    {r : Nat} (P : (r < numPairWords) -> Prop)
    (decideP : ∀ hlt, Decidable (P hlt)) :
    Decidable (∀ hlt : r < numPairWords, P hlt) := by
  by_cases hlt : r < numPairWords
  · cases decideP hlt with
    | isTrue hp =>
        exact isTrue (by
          intro h
          simpa [Subsingleton.elim h hlt] using hp)
    | isFalse hn =>
        exact isFalse (by
          intro hall
          exact hn (hall hlt))
  · exact isTrue (by
      intro h
      exact False.elim (hlt h))

instance instDecidableSourceChecks
    (support : TwoSourceFarkasSupport)
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask) :
    Decidable (SourceChecks support r hlt mask) := by
  unfold SourceChecks
  infer_instance

instance instDecidableFixedRow (L : StrictLin2) (a b : Rat) :
    Decidable (FixedRow L a b) := by
  unfold FixedRow
  infer_instance

instance instDecidableEqEqPosRow (L : StrictLin2) :
    Decidable (EqEqPosRow L) := by
  unfold EqEqPosRow
  infer_instance

instance instDecidableEqEqNegRow (L : StrictLin2) :
    Decidable (EqEqNegRow L) := by
  unfold EqEqNegRow
  infer_instance

instance instDecidableOppPosRow (L : StrictLin2) :
    Decidable (OppPosRow L) := by
  unfold OppPosRow
  infer_instance

instance instDecidableOppNegRow (L : StrictLin2) :
    Decidable (OppNegRow L) := by
  unfold OppNegRow
  infer_instance

instance instDecidableSourceIndexStateSourcePredicate
    (firstIndex secondIndex : Nat) (support : TwoSourceFarkasSupport)
    (r : Nat) (mask : SignMask) :
    Decidable
      (SourceIndexStateSourcePredicate firstIndex secondIndex support r mask) := by
  unfold SourceIndexStateSourcePredicate
  exact
    decidableForRankProof (r := r) (fun hlt =>
      let seq := translationSeqAtRankMask ⟨r, hlt⟩ mask
      listGet? (translationConstraintSources seq) firstIndex =
          some support.first /\
        listGet? (translationConstraintSources seq) secondIndex =
          some support.second /\
        SourceChecks support r hlt mask) (fun _ => inferInstance)

theorem SourceIndexStateSourceFacts.of_sourcePredicate
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    {firstIndex secondIndex : Nat} {support : TwoSourceFarkasSupport}
    (hfirstIndex : key.firstIndex = firstIndex)
    (hsecondIndex : key.secondIndex = secondIndex)
    (hsupport : key.support = support)
    (hsource :
      SourceIndexStateSourcePredicate firstIndex secondIndex support r mask) :
    SourceIndexStateSourceFacts key r mask := by
  subst firstIndex
  subst secondIndex
  subst support
  exact {
    firstSource := fun hlt => (hsource hlt).1
    secondSource := fun hlt => (hsource hlt).2.1
    sourceChecks := fun hlt => (hsource hlt).2.2
  }

structure SourceIndexStateSourceProducer where
  Applies : SourceIndexStateKey -> Nat -> SignMask -> Prop
  sourceFacts :
    ∀ {key : SourceIndexStateKey} {r : Nat} {mask : SignMask},
      Applies key r mask -> SourceIndexStateSourceFacts key r mask

structure SourceIndexStateRowFacts
    (key : SourceIndexStateKey) (r : Nat) (mask : SignMask) : Prop where
  rows : key.template.Rows key.support r mask

theorem SourceIndexStateRowFacts.of_rows
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hrows : key.template.Rows key.support r mask) :
    SourceIndexStateRowFacts key r mask where
  rows := hrows

theorem SourceIndexStateRowFacts.of_template_rows
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    {template : SourceIndexTemplate}
    (htemplate : key.template = template)
    (hrows : template.Rows key.support r mask) :
    SourceIndexStateRowFacts key r mask := by
  subst template
  exact SourceIndexStateRowFacts.of_rows hrows

instance instDecidableEqEqPosVarFirstRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) :
    Decidable (EqEqPosVarFirstRows support r mask) := by
  unfold EqEqPosVarFirstRows
  exact decidableForRankProof (r := r) (fun hlt =>
    EqEqPosRow (FirstLineAt support r hlt mask) /\
      FixedRow (SecondLineAt support r hlt mask) 1 1) (fun _ => inferInstance)

instance instDecidableEqEqPosVarSecondRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) :
    Decidable (EqEqPosVarSecondRows support r mask) := by
  unfold EqEqPosVarSecondRows
  exact decidableForRankProof (r := r) (fun hlt =>
    FixedRow (FirstLineAt support r hlt mask) 1 1 /\
      EqEqPosRow (SecondLineAt support r hlt mask)) (fun _ => inferInstance)

instance instDecidableEqEqNegVarFirstRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) :
    Decidable (EqEqNegVarFirstRows support r mask) := by
  unfold EqEqNegVarFirstRows
  exact decidableForRankProof (r := r) (fun hlt =>
    EqEqNegRow (FirstLineAt support r hlt mask) /\
      FixedRow (SecondLineAt support r hlt mask) (-1) (-1)) (fun _ => inferInstance)

instance instDecidableEqEqNegVarSecondRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) :
    Decidable (EqEqNegVarSecondRows support r mask) := by
  unfold EqEqNegVarSecondRows
  exact decidableForRankProof (r := r) (fun hlt =>
    FixedRow (FirstLineAt support r hlt mask) (-1) (-1) /\
      EqEqNegRow (SecondLineAt support r hlt mask)) (fun _ => inferInstance)

instance instDecidableOppOneMinusVarFirstRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) :
    Decidable (OppOneMinusVarFirstRows support r mask) := by
  unfold OppOneMinusVarFirstRows
  exact decidableForRankProof (r := r) (fun hlt =>
    OppPosRow (FirstLineAt support r hlt mask) /\
      FixedRow (SecondLineAt support r hlt mask) 1 (-1)) (fun _ => inferInstance)

instance instDecidableOppOneMinusVarSecondRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) :
    Decidable (OppOneMinusVarSecondRows support r mask) := by
  unfold OppOneMinusVarSecondRows
  exact decidableForRankProof (r := r) (fun hlt =>
    FixedRow (FirstLineAt support r hlt mask) 1 (-1) /\
      OppPosRow (SecondLineAt support r hlt mask)) (fun _ => inferInstance)

instance instDecidableOppMinusOneVarFirstRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) :
    Decidable (OppMinusOneVarFirstRows support r mask) := by
  unfold OppMinusOneVarFirstRows
  exact decidableForRankProof (r := r) (fun hlt =>
    OppNegRow (FirstLineAt support r hlt mask) /\
      FixedRow (SecondLineAt support r hlt mask) (-1) 1) (fun _ => inferInstance)

instance instDecidableOppMinusOneVarSecondRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) :
    Decidable (OppMinusOneVarSecondRows support r mask) := by
  unfold OppMinusOneVarSecondRows
  exact decidableForRankProof (r := r) (fun hlt =>
    FixedRow (FirstLineAt support r hlt mask) (-1) 1 /\
      OppNegRow (SecondLineAt support r hlt mask)) (fun _ => inferInstance)

instance instDecidableAxisAOnlyRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) :
    Decidable (AxisAOnlyRows support r mask) := by
  unfold AxisAOnlyRows
  exact decidableForRankProof (r := r) (fun hlt =>
    (FirstLineAt support r hlt mask).b = 0 /\
      (SecondLineAt support r hlt mask).b = 0 /\
        (FirstLineAt support r hlt mask).a *
            (SecondLineAt support r hlt mask).a < 0 /\
          (SupportPair.multipliersAt support r hlt mask).1 *
              (FirstLineAt support r hlt mask).c +
            (SupportPair.multipliersAt support r hlt mask).2 *
              (SecondLineAt support r hlt mask).c <= 0) (fun _ => inferInstance)

instance instDecidableAxisBOnlyRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) :
    Decidable (AxisBOnlyRows support r mask) := by
  unfold AxisBOnlyRows
  exact decidableForRankProof (r := r) (fun hlt =>
    (FirstLineAt support r hlt mask).a = 0 /\
      (SecondLineAt support r hlt mask).a = 0 /\
        (FirstLineAt support r hlt mask).b *
            (SecondLineAt support r hlt mask).b < 0 /\
          (SupportPair.multipliersAt support r hlt mask).1 *
              (FirstLineAt support r hlt mask).c +
          (SupportPair.multipliersAt support r hlt mask).2 *
              (SecondLineAt support r hlt mask).c <= 0) (fun _ => inferInstance)

instance instDecidableExactTwoSourceValidRows
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) :
    Decidable (ExactTwoSourceValidRows support r mask) := by
  unfold ExactTwoSourceValidRows
  exact decidableForRankProof (r := r) (fun hlt =>
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
                  (SecondLineAt support r hlt mask).c <= 0) (fun _ => inferInstance)

instance instDecidableSourceIndexTemplateRows
    (template : SourceIndexTemplate) (support : TwoSourceFarkasSupport)
    (r : Nat) (mask : SignMask) :
    Decidable (template.Rows support r mask) := by
  cases template <;> unfold SourceIndexTemplate.Rows <;> infer_instance

structure SourceIndexStateRowProducer where
  Applies : SourceIndexStateKey -> Nat -> SignMask -> Prop
  rowFacts :
    ∀ {key : SourceIndexStateKey} {r : Nat} {mask : SignMask},
      Applies key r mask -> SourceIndexStateRowFacts key r mask

theorem SourceIndexStateKeyFacts.of_source_row
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (hrows : SourceIndexStateRowFacts key r mask) :
    SourceIndexStateKeyFacts key r mask where
  firstSource := hsource.firstSource
  secondSource := hsource.secondSource
  sourceChecks := hsource.sourceChecks
  rows := hrows.rows

theorem SourceIndexStateKeyFacts.sourceMatches
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts key r mask) :
    key.toDescriptor.SourceMatches r mask := by
  intro hlt
  exact ⟨h.firstSource hlt, h.secondSource hlt, h.sourceChecks hlt⟩

theorem SourceIndexStateKey.matches_of_facts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts key r mask) :
    key.Matches r mask :=
  ⟨h.sourceMatches, h.rows⟩

theorem SourceIndexStateKey.covered_of_matches
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : key.Matches r mask) :
    RowPropertyParametricCovered r mask :=
  key.toDescriptor.covered_of_applies h

theorem SourceIndexStateKey.covered_of_facts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts key r mask) :
    RowPropertyParametricCovered r mask :=
  key.covered_of_matches (key.matches_of_facts h)

theorem SourceIndexStateKey.matches_of_source_row
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (hrows : SourceIndexStateRowFacts key r mask) :
    key.Matches r mask :=
  key.matches_of_facts (SourceIndexStateKeyFacts.of_source_row hsource hrows)

theorem SourceIndexStateKey.covered_of_source_row
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (hrows : SourceIndexStateRowFacts key r mask) :
    RowPropertyParametricCovered r mask :=
  key.covered_of_facts (SourceIndexStateKeyFacts.of_source_row hsource hrows)

theorem sourceIndexState_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
