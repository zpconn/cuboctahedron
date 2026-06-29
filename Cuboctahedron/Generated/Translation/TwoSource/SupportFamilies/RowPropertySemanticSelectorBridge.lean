import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticLanguage
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.All

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticSelectorBridge

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemantic
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro

def SemanticFactsLanguage
    (key : SourceIndexStateKey) (firstRole secondRole : RowRole)
    (rank : Nat) (mask : SignMask) : Prop :=
  SourceIndexStateSourceFacts key rank mask /\
    RowTemplateSemantic key.template firstRole secondRole /\
      RowPairSemantic firstRole secondRole key.support rank mask

theorem semanticFacts_of_source_row_nonaxis
    {key : SourceIndexStateKey} {rank : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key rank mask)
    (hrows : SourceIndexStateRowFacts key rank mask)
    (hnotAxisA : key.template ≠ SourceIndexTemplate.axisAOnly)
    (hnotAxisB : key.template ≠ SourceIndexTemplate.axisBOnly)
    (hnotExact : key.template ≠ SourceIndexTemplate.exactTwoSourceValid) :
    ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole rank mask := by
  rcases RowPairSemantic.exists_nonaxis_of_source_row
      hsource hrows hnotAxisA hnotAxisB hnotExact with
    ⟨firstRole, secondRole, htemplate, hsemantic⟩
  exact ⟨firstRole, secondRole, hsource, htemplate, hsemantic⟩

theorem semanticFacts_of_source_row_nonexact
    {key : SourceIndexStateKey} {rank : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts key rank mask)
    (hrows : SourceIndexStateRowFacts key rank mask)
    (hnotExact :
      key.template ≠ SourceIndexTemplate.exactTwoSourceValid) :
    ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole rank mask := by
  rcases RowPairSemantic.exists_nonexact_of_source_row
      hsource hrows hnotExact with
    ⟨firstRole, secondRole, htemplate, hsemantic⟩
  exact ⟨firstRole, secondRole, hsource, htemplate, hsemantic⟩

theorem shard000_source_row_of_case
    {rank : Nat} {mask : SignMask}
    (hcase : Shard000Case rank mask)
    (classifier : ClassifierKey)
    (hcoord : Shard000.selectorCoordAt rank mask = selectorCoordinateOfKey classifier) :
    SourceIndexStateSourceFacts classifier.toSourceIndexStateKey rank mask /\
      SourceIndexStateRowFacts classifier.toSourceIndexStateKey rank mask := by
  have hfacts :=
    Shard000.selectorPositiveSourceRowFacts hcase
  unfold SelectorCoordinateSourceRowFacts at hfacts
  rw [hcoord] at hfacts
  rw [keyOfSelectorCoordinate?_selectorCoordinateOfKey] at hfacts
  simpa using hfacts

theorem shard001_source_row_of_case
    {rank : Nat} {mask : SignMask}
    (hcase : Shard001Case rank mask)
    (classifier : ClassifierKey)
    (hcoord : Shard001.selectorCoordAt rank mask = selectorCoordinateOfKey classifier) :
    SourceIndexStateSourceFacts classifier.toSourceIndexStateKey rank mask /\
      SourceIndexStateRowFacts classifier.toSourceIndexStateKey rank mask := by
  have hfacts :=
    Shard001.selectorPositiveSourceRowFacts hcase
  unfold SelectorCoordinateSourceRowFacts at hfacts
  rw [hcoord] at hfacts
  rw [keyOfSelectorCoordinate?_selectorCoordinateOfKey] at hfacts
  simpa using hfacts

theorem shard002_source_row_of_case
    {rank : Nat} {mask : SignMask}
    (hcase : Shard002Case rank mask)
    (classifier : ClassifierKey)
    (hcoord : Shard002.selectorCoordAt rank mask = selectorCoordinateOfKey classifier) :
    SourceIndexStateSourceFacts classifier.toSourceIndexStateKey rank mask /\
      SourceIndexStateRowFacts classifier.toSourceIndexStateKey rank mask := by
  have hfacts :=
    Shard002.selectorPositiveSourceRowFacts hcase
  unfold SelectorCoordinateSourceRowFacts at hfacts
  rw [hcoord] at hfacts
  rw [keyOfSelectorCoordinate?_selectorCoordinateOfKey] at hfacts
  simpa using hfacts

theorem semanticFacts_of_shard000_key
    {rank : Nat} {mask : SignMask}
    (hcase : Shard000Case rank mask)
    (classifier : ClassifierKey)
    (hcoord : Shard000.selectorCoordAt rank mask = selectorCoordinateOfKey classifier)
    (hnotAxisA :
      classifier.toSourceIndexStateKey.template ≠ SourceIndexTemplate.axisAOnly)
    (hnotAxisB :
      classifier.toSourceIndexStateKey.template ≠ SourceIndexTemplate.axisBOnly)
    (hnotExact :
      classifier.toSourceIndexStateKey.template ≠ SourceIndexTemplate.exactTwoSourceValid) :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole rank mask := by
  have hsr := shard000_source_row_of_case hcase classifier hcoord
  rcases semanticFacts_of_source_row_nonaxis hsr.1 hsr.2
      hnotAxisA hnotAxisB hnotExact with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨classifier.toSourceIndexStateKey, firstRole, secondRole, hsemantic⟩

theorem semanticFacts_of_shard000_key_nonexact
    {rank : Nat} {mask : SignMask}
    (hcase : Shard000Case rank mask)
    (classifier : ClassifierKey)
    (hcoord : Shard000.selectorCoordAt rank mask = selectorCoordinateOfKey classifier)
    (hnotExact :
      classifier.toSourceIndexStateKey.template ≠ SourceIndexTemplate.exactTwoSourceValid) :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole rank mask := by
  have hsr := shard000_source_row_of_case hcase classifier hcoord
  rcases semanticFacts_of_source_row_nonexact hsr.1 hsr.2 hnotExact with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨classifier.toSourceIndexStateKey, firstRole, secondRole, hsemantic⟩

theorem semanticFacts_of_shard001_key
    {rank : Nat} {mask : SignMask}
    (hcase : Shard001Case rank mask)
    (classifier : ClassifierKey)
    (hcoord : Shard001.selectorCoordAt rank mask = selectorCoordinateOfKey classifier)
    (hnotAxisA :
      classifier.toSourceIndexStateKey.template ≠ SourceIndexTemplate.axisAOnly)
    (hnotAxisB :
      classifier.toSourceIndexStateKey.template ≠ SourceIndexTemplate.axisBOnly)
    (hnotExact :
      classifier.toSourceIndexStateKey.template ≠ SourceIndexTemplate.exactTwoSourceValid) :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole rank mask := by
  have hsr := shard001_source_row_of_case hcase classifier hcoord
  rcases semanticFacts_of_source_row_nonaxis hsr.1 hsr.2
      hnotAxisA hnotAxisB hnotExact with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨classifier.toSourceIndexStateKey, firstRole, secondRole, hsemantic⟩

theorem semanticFacts_of_shard001_key_nonexact
    {rank : Nat} {mask : SignMask}
    (hcase : Shard001Case rank mask)
    (classifier : ClassifierKey)
    (hcoord : Shard001.selectorCoordAt rank mask = selectorCoordinateOfKey classifier)
    (hnotExact :
      classifier.toSourceIndexStateKey.template ≠ SourceIndexTemplate.exactTwoSourceValid) :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole rank mask := by
  have hsr := shard001_source_row_of_case hcase classifier hcoord
  rcases semanticFacts_of_source_row_nonexact hsr.1 hsr.2 hnotExact with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨classifier.toSourceIndexStateKey, firstRole, secondRole, hsemantic⟩

theorem semanticFacts_of_shard002_key
    {rank : Nat} {mask : SignMask}
    (hcase : Shard002Case rank mask)
    (classifier : ClassifierKey)
    (hcoord : Shard002.selectorCoordAt rank mask = selectorCoordinateOfKey classifier)
    (hnotAxisA :
      classifier.toSourceIndexStateKey.template ≠ SourceIndexTemplate.axisAOnly)
    (hnotAxisB :
      classifier.toSourceIndexStateKey.template ≠ SourceIndexTemplate.axisBOnly)
    (hnotExact :
      classifier.toSourceIndexStateKey.template ≠ SourceIndexTemplate.exactTwoSourceValid) :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole rank mask := by
  have hsr := shard002_source_row_of_case hcase classifier hcoord
  rcases semanticFacts_of_source_row_nonaxis hsr.1 hsr.2
      hnotAxisA hnotAxisB hnotExact with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨classifier.toSourceIndexStateKey, firstRole, secondRole, hsemantic⟩

theorem semanticFacts_of_shard002_key_nonexact
    {rank : Nat} {mask : SignMask}
    (hcase : Shard002Case rank mask)
    (classifier : ClassifierKey)
    (hcoord : Shard002.selectorCoordAt rank mask = selectorCoordinateOfKey classifier)
    (hnotExact :
      classifier.toSourceIndexStateKey.template ≠ SourceIndexTemplate.exactTwoSourceValid) :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole rank mask := by
  have hsr := shard002_source_row_of_case hcase classifier hcoord
  rcases semanticFacts_of_source_row_nonexact hsr.1 hsr.2 hnotExact with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨classifier.toSourceIndexStateKey, firstRole, secondRole, hsemantic⟩

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticSelectorBridge
