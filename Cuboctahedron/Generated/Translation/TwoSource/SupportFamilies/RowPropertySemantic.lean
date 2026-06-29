import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Semantic row-property descriptors for source-index/state membership.

The DU.9 selector audits used opaque `RowPropertyDigest` names to identify row
facts.  This module provides the Lean-side vocabulary those digests abbreviate:
small row roles plus weighted two-source facts.  Generated membership modules
should prove these semantic predicates, then erase them to the existing
`SourceIndexTemplate.Rows` predicates.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemantic

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-- Compact semantic roles observed in two-source row-property payloads. -/
inductive RowRole
  | fixedPP
  | fixedMM
  | fixedPM
  | fixedMP
  | eqEqPos
  | eqEqNeg
  | oppPos
  | oppNeg
  | axisAOnlyPos
  | axisAOnlyNeg
  | axisAOnlyZero
  | axisBOnlyPos
  | axisBOnlyNeg
  | axisBOnlyZero
  | unclassified
deriving DecidableEq, Repr

def RowRole.Holds : RowRole -> StrictLin2 -> Prop
  | .fixedPP, L => FixedRow L 1 1
  | .fixedMM, L => FixedRow L (-1) (-1)
  | .fixedPM, L => FixedRow L 1 (-1)
  | .fixedMP, L => FixedRow L (-1) 1
  | .eqEqPos, L => EqEqPosRow L
  | .eqEqNeg, L => EqEqNegRow L
  | .oppPos, L => OppPosRow L
  | .oppNeg, L => OppNegRow L
  | .axisAOnlyPos, L => L.b = 0 /\ 0 < L.a
  | .axisAOnlyNeg, L => L.b = 0 /\ L.a < 0
  | .axisAOnlyZero, L => L.b = 0 /\ L.a = 0
  | .axisBOnlyPos, L => L.a = 0 /\ 0 < L.b
  | .axisBOnlyNeg, L => L.a = 0 /\ L.b < 0
  | .axisBOnlyZero, L => L.a = 0 /\ L.b = 0
  | .unclassified, _ => False

def weightedCNonposAt
    (support : TwoSourceFarkasSupport)
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask) : Prop :=
  (SupportPair.multipliersAt support r hlt mask).1 *
      (FirstLineAt support r hlt mask).c +
    (SupportPair.multipliersAt support r hlt mask).2 *
      (SecondLineAt support r hlt mask).c <= 0

/--
Semantic row-pair payload used by the DU.9 row-property digest audit.

The predicate intentionally keeps `SourceChecks`: generated membership modules
usually prove row facts and source-check facts together from the same
source-index/state descriptor.
-/
def RowPairSemantic
    (firstRole secondRole : RowRole)
    (support : TwoSourceFarkasSupport)
    (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    SourceChecks support r hlt mask /\
      firstRole.Holds (FirstLineAt support r hlt mask) /\
        secondRole.Holds (SecondLineAt support r hlt mask) /\
          weightedCNonposAt support r hlt mask

inductive RowTemplateSemantic :
    SourceIndexTemplate -> RowRole -> RowRole -> Prop
  | eqEqPosVarFirst :
      RowTemplateSemantic .eqEqPosVarFirst .eqEqPos .fixedPP
  | eqEqPosVarSecond :
      RowTemplateSemantic .eqEqPosVarSecond .fixedPP .eqEqPos
  | eqEqNegVarFirst :
      RowTemplateSemantic .eqEqNegVarFirst .eqEqNeg .fixedMM
  | eqEqNegVarSecond :
      RowTemplateSemantic .eqEqNegVarSecond .fixedMM .eqEqNeg
  | oppOneMinusVarFirst :
      RowTemplateSemantic .oppOneMinusVarFirst .oppPos .fixedPM
  | oppOneMinusVarSecond :
      RowTemplateSemantic .oppOneMinusVarSecond .fixedPM .oppPos
  | oppMinusOneVarFirst :
      RowTemplateSemantic .oppMinusOneVarFirst .oppNeg .fixedMP
  | oppMinusOneVarSecond :
      RowTemplateSemantic .oppMinusOneVarSecond .fixedMP .oppNeg
  | axisAOnlyPosNeg :
      RowTemplateSemantic .axisAOnly .axisAOnlyPos .axisAOnlyNeg
  | axisAOnlyNegPos :
      RowTemplateSemantic .axisAOnly .axisAOnlyNeg .axisAOnlyPos
  | axisBOnlyPosNeg :
      RowTemplateSemantic .axisBOnly .axisBOnlyPos .axisBOnlyNeg
  | axisBOnlyNegPos :
      RowTemplateSemantic .axisBOnly .axisBOnlyNeg .axisBOnlyPos

theorem eqEqPosVarFirstRows_of_semantic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsem : RowPairSemantic .eqEqPos .fixedPP support r mask) :
    EqEqPosVarFirstRows support r mask := by
  intro hlt
  rcases hsem hlt with ⟨_hsource, hfirst, hsecond, _⟩
  exact ⟨hfirst, hsecond⟩

theorem eqEqPosVarSecondRows_of_semantic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsem : RowPairSemantic .fixedPP .eqEqPos support r mask) :
    EqEqPosVarSecondRows support r mask := by
  intro hlt
  rcases hsem hlt with ⟨_hsource, hfirst, hsecond, _⟩
  exact ⟨hfirst, hsecond⟩

theorem eqEqNegVarFirstRows_of_semantic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsem : RowPairSemantic .eqEqNeg .fixedMM support r mask) :
    EqEqNegVarFirstRows support r mask := by
  intro hlt
  rcases hsem hlt with ⟨_hsource, hfirst, hsecond, _⟩
  exact ⟨hfirst, hsecond⟩

theorem eqEqNegVarSecondRows_of_semantic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsem : RowPairSemantic .fixedMM .eqEqNeg support r mask) :
    EqEqNegVarSecondRows support r mask := by
  intro hlt
  rcases hsem hlt with ⟨_hsource, hfirst, hsecond, _⟩
  exact ⟨hfirst, hsecond⟩

theorem oppOneMinusVarFirstRows_of_semantic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsem : RowPairSemantic .oppPos .fixedPM support r mask) :
    OppOneMinusVarFirstRows support r mask := by
  intro hlt
  rcases hsem hlt with ⟨_hsource, hfirst, hsecond, _⟩
  exact ⟨hfirst, hsecond⟩

theorem oppOneMinusVarSecondRows_of_semantic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsem : RowPairSemantic .fixedPM .oppPos support r mask) :
    OppOneMinusVarSecondRows support r mask := by
  intro hlt
  rcases hsem hlt with ⟨_hsource, hfirst, hsecond, _⟩
  exact ⟨hfirst, hsecond⟩

theorem oppMinusOneVarFirstRows_of_semantic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsem : RowPairSemantic .oppNeg .fixedMP support r mask) :
    OppMinusOneVarFirstRows support r mask := by
  intro hlt
  rcases hsem hlt with ⟨_hsource, hfirst, hsecond, _⟩
  exact ⟨hfirst, hsecond⟩

theorem oppMinusOneVarSecondRows_of_semantic
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsem : RowPairSemantic .fixedMP .oppNeg support r mask) :
    OppMinusOneVarSecondRows support r mask := by
  intro hlt
  rcases hsem hlt with ⟨_hsource, hfirst, hsecond, _⟩
  exact ⟨hfirst, hsecond⟩

private theorem axisAOnlyRows_of_semantic_pos_neg
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsem : RowPairSemantic .axisAOnlyPos .axisAOnlyNeg support r mask) :
    AxisAOnlyRows support r mask := by
  intro hlt
  rcases hsem hlt with
    ⟨_hsource, ⟨hfirstB, hfirstA⟩, ⟨hsecondB, hsecondA⟩, hc⟩
  refine ⟨hfirstB, hsecondB, ?_, hc⟩
  nlinarith

private theorem axisAOnlyRows_of_semantic_neg_pos
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsem : RowPairSemantic .axisAOnlyNeg .axisAOnlyPos support r mask) :
    AxisAOnlyRows support r mask := by
  intro hlt
  rcases hsem hlt with
    ⟨_hsource, ⟨hfirstB, hfirstA⟩, ⟨hsecondB, hsecondA⟩, hc⟩
  refine ⟨hfirstB, hsecondB, ?_, hc⟩
  nlinarith

private theorem axisBOnlyRows_of_semantic_pos_neg
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsem : RowPairSemantic .axisBOnlyPos .axisBOnlyNeg support r mask) :
    AxisBOnlyRows support r mask := by
  intro hlt
  rcases hsem hlt with
    ⟨_hsource, ⟨hfirstA, hfirstB⟩, ⟨hsecondA, hsecondB⟩, hc⟩
  refine ⟨hfirstA, hsecondA, ?_, hc⟩
  nlinarith

private theorem axisBOnlyRows_of_semantic_neg_pos
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hsem : RowPairSemantic .axisBOnlyNeg .axisBOnlyPos support r mask) :
    AxisBOnlyRows support r mask := by
  intro hlt
  rcases hsem hlt with
    ⟨_hsource, ⟨hfirstA, hfirstB⟩, ⟨hsecondA, hsecondB⟩, hc⟩
  refine ⟨hfirstA, hsecondA, ?_, hc⟩
  nlinarith

theorem SourceIndexTemplate.rows_of_semantic
    {template : SourceIndexTemplate}
    {firstRole secondRole : RowRole}
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hcompat : RowTemplateSemantic template firstRole secondRole)
    (hsem : RowPairSemantic firstRole secondRole support r mask) :
    template.Rows support r mask := by
  cases hcompat with
  | eqEqPosVarFirst =>
      exact eqEqPosVarFirstRows_of_semantic hsem
  | eqEqPosVarSecond =>
      exact eqEqPosVarSecondRows_of_semantic hsem
  | eqEqNegVarFirst =>
      exact eqEqNegVarFirstRows_of_semantic hsem
  | eqEqNegVarSecond =>
      exact eqEqNegVarSecondRows_of_semantic hsem
  | oppOneMinusVarFirst =>
      exact oppOneMinusVarFirstRows_of_semantic hsem
  | oppOneMinusVarSecond =>
      exact oppOneMinusVarSecondRows_of_semantic hsem
  | oppMinusOneVarFirst =>
      exact oppMinusOneVarFirstRows_of_semantic hsem
  | oppMinusOneVarSecond =>
      exact oppMinusOneVarSecondRows_of_semantic hsem
  | axisAOnlyPosNeg =>
      exact axisAOnlyRows_of_semantic_pos_neg hsem
  | axisAOnlyNegPos =>
      exact axisAOnlyRows_of_semantic_neg_pos hsem
  | axisBOnlyPosNeg =>
      exact axisBOnlyRows_of_semantic_pos_neg hsem
  | axisBOnlyNegPos =>
      exact axisBOnlyRows_of_semantic_neg_pos hsem

theorem SourceIndexStateRowFacts.of_semantic
    {key : SourceIndexStateKey}
    {firstRole secondRole : RowRole}
    {r : Nat} {mask : SignMask}
    (hcompat :
      RowTemplateSemantic key.template firstRole secondRole)
    (hsem : RowPairSemantic firstRole secondRole key.support r mask) :
    SourceIndexStateRowFacts key r mask :=
  SourceIndexStateRowFacts.of_rows
    (SourceIndexTemplate.rows_of_semantic hcompat hsem)

theorem SourceIndexStateKey.matches_of_source_semantic
    {key : SourceIndexStateKey}
    {firstRole secondRole : RowRole}
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (hcompat :
      RowTemplateSemantic key.template firstRole secondRole)
    (hsem : RowPairSemantic firstRole secondRole key.support r mask) :
    key.Matches r mask :=
  key.matches_of_source_row hsource
    (SourceIndexStateRowFacts.of_semantic hcompat hsem)

theorem SourceIndexStateKey.covered_of_source_semantic
    {key : SourceIndexStateKey}
    {firstRole secondRole : RowRole}
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (hcompat :
      RowTemplateSemantic key.template firstRole secondRole)
    (hsem : RowPairSemantic firstRole secondRole key.support r mask) :
    RowPropertyParametricCovered r mask :=
  key.covered_of_source_row hsource
    (SourceIndexStateRowFacts.of_semantic hcompat hsem)

/--
Build the semantic row-pair payload for the most common DU.9 row-property
pattern from the older source/row-fact surface.

This is a one-template adapter, not a complete converse from row facts to
semantic row roles.  It is enough for the first semantic membership smoke and
keeps the weighted constant fact sourced from the already-checked generic
row-relation theorem.
-/
theorem RowPairSemantic.of_eqEqPosVarFirst_source_row
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (htemplate : key.template = SourceIndexTemplate.eqEqPosVarFirst)
    (hrows : SourceIndexStateRowFacts key r mask) :
    RowPairSemantic .eqEqPos .fixedPP key.support r mask := by
  intro hlt
  have hshapeRows : EqEqPosVarFirstRows key.support r mask := by
    simpa [htemplate, SourceIndexTemplate.Rows] using hrows.rows
  have hshape : EqEqPosVarFirst key.support r mask := by
    intro hlt'
    rcases hshapeRows hlt' with ⟨hfirst, hsecond⟩
    exact ⟨hsource.sourceChecks hlt', hfirst, hsecond⟩
  have happlies : SupportPair.Applies key.support r mask :=
    eqEqPosVarFirst_applies_of_shape hshape
  rcases hshapeRows hlt with ⟨hfirst, hsecond⟩
  rcases happlies hlt with
    ⟨_hfirstSource, _hsecondSource, _hw1, _hw2, _hpos,
      _hwa, _hwb, hwc⟩
  exact ⟨hsource.sourceChecks hlt, hfirst, hsecond,
    by simpa [weightedCNonposAt, FirstLineAt, SecondLineAt] using hwc⟩

theorem RowPairSemantic.of_eqEqPosVarSecond_source_row
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (htemplate : key.template = SourceIndexTemplate.eqEqPosVarSecond)
    (hrows : SourceIndexStateRowFacts key r mask) :
    RowPairSemantic .fixedPP .eqEqPos key.support r mask := by
  intro hlt
  have hshapeRows : EqEqPosVarSecondRows key.support r mask := by
    simpa [htemplate, SourceIndexTemplate.Rows] using hrows.rows
  have hshape : EqEqPosVarSecond key.support r mask := by
    intro hlt'
    rcases hshapeRows hlt' with ⟨hfirst, hsecond⟩
    exact ⟨hsource.sourceChecks hlt', hfirst, hsecond⟩
  have happlies : SupportPair.Applies key.support r mask :=
    eqEqPosVarSecond_applies_of_shape hshape
  rcases hshapeRows hlt with ⟨hfirst, hsecond⟩
  rcases happlies hlt with
    ⟨_hfirstSource, _hsecondSource, _hw1, _hw2, _hpos,
      _hwa, _hwb, hwc⟩
  exact ⟨hsource.sourceChecks hlt, hfirst, hsecond,
    by simpa [weightedCNonposAt, FirstLineAt, SecondLineAt] using hwc⟩

theorem RowPairSemantic.of_eqEqNegVarFirst_source_row
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (htemplate : key.template = SourceIndexTemplate.eqEqNegVarFirst)
    (hrows : SourceIndexStateRowFacts key r mask) :
    RowPairSemantic .eqEqNeg .fixedMM key.support r mask := by
  intro hlt
  have hshapeRows : EqEqNegVarFirstRows key.support r mask := by
    simpa [htemplate, SourceIndexTemplate.Rows] using hrows.rows
  have hshape : EqEqNegVarFirst key.support r mask := by
    intro hlt'
    rcases hshapeRows hlt' with ⟨hfirst, hsecond⟩
    exact ⟨hsource.sourceChecks hlt', hfirst, hsecond⟩
  have happlies : SupportPair.Applies key.support r mask :=
    eqEqNegVarFirst_applies_of_shape hshape
  rcases hshapeRows hlt with ⟨hfirst, hsecond⟩
  rcases happlies hlt with
    ⟨_hfirstSource, _hsecondSource, _hw1, _hw2, _hpos,
      _hwa, _hwb, hwc⟩
  exact ⟨hsource.sourceChecks hlt, hfirst, hsecond,
    by simpa [weightedCNonposAt, FirstLineAt, SecondLineAt] using hwc⟩

theorem RowPairSemantic.of_eqEqNegVarSecond_source_row
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (htemplate : key.template = SourceIndexTemplate.eqEqNegVarSecond)
    (hrows : SourceIndexStateRowFacts key r mask) :
    RowPairSemantic .fixedMM .eqEqNeg key.support r mask := by
  intro hlt
  have hshapeRows : EqEqNegVarSecondRows key.support r mask := by
    simpa [htemplate, SourceIndexTemplate.Rows] using hrows.rows
  have hshape : EqEqNegVarSecond key.support r mask := by
    intro hlt'
    rcases hshapeRows hlt' with ⟨hfirst, hsecond⟩
    exact ⟨hsource.sourceChecks hlt', hfirst, hsecond⟩
  have happlies : SupportPair.Applies key.support r mask :=
    eqEqNegVarSecond_applies_of_shape hshape
  rcases hshapeRows hlt with ⟨hfirst, hsecond⟩
  rcases happlies hlt with
    ⟨_hfirstSource, _hsecondSource, _hw1, _hw2, _hpos,
      _hwa, _hwb, hwc⟩
  exact ⟨hsource.sourceChecks hlt, hfirst, hsecond,
    by simpa [weightedCNonposAt, FirstLineAt, SecondLineAt] using hwc⟩

theorem RowPairSemantic.of_oppOneMinusVarFirst_source_row
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (htemplate : key.template = SourceIndexTemplate.oppOneMinusVarFirst)
    (hrows : SourceIndexStateRowFacts key r mask) :
    RowPairSemantic .oppPos .fixedPM key.support r mask := by
  intro hlt
  have hshapeRows : OppOneMinusVarFirstRows key.support r mask := by
    simpa [htemplate, SourceIndexTemplate.Rows] using hrows.rows
  have hshape : OppOneMinusVarFirst key.support r mask := by
    intro hlt'
    rcases hshapeRows hlt' with ⟨hfirst, hsecond⟩
    exact ⟨hsource.sourceChecks hlt', hfirst, hsecond⟩
  have happlies : SupportPair.Applies key.support r mask :=
    oppOneMinusVarFirst_applies_of_shape hshape
  rcases hshapeRows hlt with ⟨hfirst, hsecond⟩
  rcases happlies hlt with
    ⟨_hfirstSource, _hsecondSource, _hw1, _hw2, _hpos,
      _hwa, _hwb, hwc⟩
  exact ⟨hsource.sourceChecks hlt, hfirst, hsecond,
    by simpa [weightedCNonposAt, FirstLineAt, SecondLineAt] using hwc⟩

theorem RowPairSemantic.of_oppOneMinusVarSecond_source_row
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (htemplate : key.template = SourceIndexTemplate.oppOneMinusVarSecond)
    (hrows : SourceIndexStateRowFacts key r mask) :
    RowPairSemantic .fixedPM .oppPos key.support r mask := by
  intro hlt
  have hshapeRows : OppOneMinusVarSecondRows key.support r mask := by
    simpa [htemplate, SourceIndexTemplate.Rows] using hrows.rows
  have hshape : OppOneMinusVarSecond key.support r mask := by
    intro hlt'
    rcases hshapeRows hlt' with ⟨hfirst, hsecond⟩
    exact ⟨hsource.sourceChecks hlt', hfirst, hsecond⟩
  have happlies : SupportPair.Applies key.support r mask :=
    oppOneMinusVarSecond_applies_of_shape hshape
  rcases hshapeRows hlt with ⟨hfirst, hsecond⟩
  rcases happlies hlt with
    ⟨_hfirstSource, _hsecondSource, _hw1, _hw2, _hpos,
      _hwa, _hwb, hwc⟩
  exact ⟨hsource.sourceChecks hlt, hfirst, hsecond,
    by simpa [weightedCNonposAt, FirstLineAt, SecondLineAt] using hwc⟩

theorem RowPairSemantic.of_oppMinusOneVarFirst_source_row
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (htemplate : key.template = SourceIndexTemplate.oppMinusOneVarFirst)
    (hrows : SourceIndexStateRowFacts key r mask) :
    RowPairSemantic .oppNeg .fixedMP key.support r mask := by
  intro hlt
  have hshapeRows : OppMinusOneVarFirstRows key.support r mask := by
    simpa [htemplate, SourceIndexTemplate.Rows] using hrows.rows
  have hshape : OppMinusOneVarFirst key.support r mask := by
    intro hlt'
    rcases hshapeRows hlt' with ⟨hfirst, hsecond⟩
    exact ⟨hsource.sourceChecks hlt', hfirst, hsecond⟩
  have happlies : SupportPair.Applies key.support r mask :=
    oppMinusOneVarFirst_applies_of_shape hshape
  rcases hshapeRows hlt with ⟨hfirst, hsecond⟩
  rcases happlies hlt with
    ⟨_hfirstSource, _hsecondSource, _hw1, _hw2, _hpos,
      _hwa, _hwb, hwc⟩
  exact ⟨hsource.sourceChecks hlt, hfirst, hsecond,
    by simpa [weightedCNonposAt, FirstLineAt, SecondLineAt] using hwc⟩

theorem RowPairSemantic.of_oppMinusOneVarSecond_source_row
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key r mask)
    (htemplate : key.template = SourceIndexTemplate.oppMinusOneVarSecond)
    (hrows : SourceIndexStateRowFacts key r mask) :
    RowPairSemantic .fixedMP .oppNeg key.support r mask := by
  intro hlt
  have hshapeRows : OppMinusOneVarSecondRows key.support r mask := by
    simpa [htemplate, SourceIndexTemplate.Rows] using hrows.rows
  have hshape : OppMinusOneVarSecond key.support r mask := by
    intro hlt'
    rcases hshapeRows hlt' with ⟨hfirst, hsecond⟩
    exact ⟨hsource.sourceChecks hlt', hfirst, hsecond⟩
  have happlies : SupportPair.Applies key.support r mask :=
    oppMinusOneVarSecond_applies_of_shape hshape
  rcases hshapeRows hlt with ⟨hfirst, hsecond⟩
  rcases happlies hlt with
    ⟨_hfirstSource, _hsecondSource, _hw1, _hw2, _hpos,
      _hwa, _hwb, hwc⟩
  exact ⟨hsource.sourceChecks hlt, hfirst, hsecond,
    by simpa [weightedCNonposAt, FirstLineAt, SecondLineAt] using hwc⟩

theorem rowPropertySemantic_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemantic
