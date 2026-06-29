import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticLanguage
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000

/-!
DU.9AN semantic row-property case smoke.

This is the first nonempty check of the DU.9AM semantic language ingredients.
It proves semantic row-role membership for the real rank-0 / mask-8
GoodDirection survivor, reusing the public DU.9L selector-positive source/row
facts and the generic DU.9AN `eqEqPosVarFirst` semantic adapter.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticCaseSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemantic
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

abbrev rank0Mask8 : SignMask := ⟨8, by decide⟩

private theorem rank0Mask8_source_row :
    SourceIndexStateSourceFacts
        ClassifierKey.k000.toSourceIndexStateKey 0 rank0Mask8 /\
      SourceIndexStateRowFacts
        ClassifierKey.k000.toSourceIndexStateKey 0 rank0Mask8 := by
  have hfacts :
      SelectorCoordinateSourceRowFacts
        (selectorCoordinateOfKey ClassifierKey.k000) 0 rank0Mask8 := by
    simpa [rank0Mask8,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.selectorCoordAt] using
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.selectorPositiveSourceRowFacts
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c000
  unfold SelectorCoordinateSourceRowFacts at hfacts
  rw [keyOfSelectorCoordinate?_selectorCoordinateOfKey] at hfacts
  simpa using hfacts

theorem rank0Mask8_semanticMembership :
    exists key : SourceIndexStateKey,
      exists firstRole secondRole : RowRole,
        SourceIndexStateSourceFacts key 0 rank0Mask8 /\
          RowTemplateSemantic key.template firstRole secondRole /\
            RowPairSemantic firstRole secondRole key.support 0 rank0Mask8 := by
  rcases rank0Mask8_source_row with ⟨hsource, hrows⟩
  refine ⟨ClassifierKey.k000.toSourceIndexStateKey,
    RowRole.eqEqPos, RowRole.fixedPP, hsource, ?_, ?_⟩
  · exact RowTemplateSemantic.eqEqPosVarFirst
  · exact RowPairSemantic.of_eqEqPosVarFirst_source_row
      hsource (by rfl) hrows

theorem rank0Mask8_covered :
    RowPropertyParametricCovered 0 rank0Mask8 := by
  rcases rank0Mask8_semanticMembership with
    ⟨key, firstRole, secondRole, hsource, hcompat, hsem⟩
  exact SourceIndexStateKey.covered_of_source_semantic
    hsource hcompat hsem

theorem rowPropertySemanticCaseSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticCaseSmoke
