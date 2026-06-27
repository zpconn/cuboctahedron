import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage

/-!
Bounded source-position language smoke for Phase 6Z.6K.8W.

This module does not enumerate ranks or masks.  It checks that source producers
can be driven by semantic source-position facts: static source indices for
`xpStart`/ordering sources, and an impact-face excluded-set fact for the
largest observed dynamic interior source pattern.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguageSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-- Dynamic source group from the largest `[0,1000)` 8V obligation. -/
private def source_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private def source_000_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨1, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm] /\
      SourceChecks source_000_support r hlt mask

private def source_000_positionProducer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 23 /\
      key.secondIndex = 0 /\
      key.support = source_000_support /\
      source_000_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨1, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmmm 5 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos hlt).1
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩ Face.tmmm 5 (by decide) hslot
        simpa [hfirst, hsupport, source_000_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_000_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_000_support] using (hpos hlt).2
    }

theorem source_000_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_000_positionProducer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_000_positionProducer.sourceFacts h

/-- Static source group combining `xpStart` and ordering lookup. -/
private def source_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩

private def source_004_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    SourceChecks source_004_support r hlt mask

private def source_004_positionProducer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 7 /\
      key.support = source_004_support /\
      source_004_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_004_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_004_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_004_support] using hpos hlt
    }

theorem source_004_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_004_positionProducer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_004_positionProducer.sourceFacts h

/--
The same dynamic source group expressed through the generic source-position
language spec.  This is the production-oriented surface: generated code should
prove the semantic `Predicate`, not replay concrete ranks and masks.
-/
private def generic_source_000_spec : SourcePairPositionSpec where
  first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmm 5
  second := SourcePositionSpec.xpStart ⟨0, by decide⟩

private def generic_source_000_key : SourceIndexStateKey where
  firstIndex := generic_source_000_spec.first.index
  secondIndex := generic_source_000_spec.second.index
  support := generic_source_000_spec.support
  template := SourceIndexTemplate.eqEqPosVarFirst

theorem generic_source_000_sourceFacts
    {r : Nat} {mask : SignMask}
    (h : generic_source_000_spec.Predicate r mask) :
    SourceIndexStateSourceFacts generic_source_000_key r mask :=
  (generic_source_000_spec.sourceProducer).sourceFacts
    ⟨rfl, ⟨rfl, ⟨rfl, h⟩⟩⟩

/-- Static source group expressed through the generic source-position spec. -/
private def generic_source_004_spec : SourcePairPositionSpec where
  first := SourcePositionSpec.xpStart ⟨0, by decide⟩
  second := SourcePositionSpec.ordering ⟨3, by decide⟩

private def generic_source_004_key : SourceIndexStateKey where
  firstIndex := generic_source_004_spec.first.index
  secondIndex := generic_source_004_spec.second.index
  support := generic_source_004_spec.support
  template := SourceIndexTemplate.eqEqPosVarSecond

theorem generic_source_004_sourceFacts
    {r : Nat} {mask : SignMask}
    (h : generic_source_004_spec.Predicate r mask) :
    SourceIndexStateSourceFacts generic_source_004_key r mask :=
  (generic_source_004_spec.sourceProducer).sourceFacts
    ⟨rfl, ⟨rfl, ⟨rfl, h⟩⟩⟩

theorem sourcePositionLanguageSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguageSmoke
