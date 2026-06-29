import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticLanguage
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticRangeSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemantic
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership

def SemanticFactsLanguage
    (key : SourceIndexStateKey) (firstRole secondRole : RowRole)
    (rank : Nat) (mask : SignMask) : Prop :=
  SourceIndexStateSourceFacts key rank mask /\
    RowTemplateSemantic key.template firstRole secondRole /\
      RowPairSemantic firstRole secondRole key.support rank mask

private theorem semanticFacts_of_source_row_nonaxis
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

private theorem shard000_source_row_of_case
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

private theorem semanticFacts_of_shard000_key
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

private theorem semanticFacts_of_shard000_case
    {rank : Nat} {mask : SignMask}
    (hcase : Shard000Case rank mask) :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole rank mask := by
  cases hcase with
  | c000 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c000 ClassifierKey.k000
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c001 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c001 ClassifierKey.k000
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c002 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c002 ClassifierKey.k003
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c003 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c003 ClassifierKey.k000
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c004 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c004 ClassifierKey.k000
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c005 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c005 ClassifierKey.k004
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c006 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c006 ClassifierKey.k000
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c007 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c007 ClassifierKey.k041
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c008 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c008 ClassifierKey.k003
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c009 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c009 ClassifierKey.k004
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c010 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c010 ClassifierKey.k004
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c011 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c011 ClassifierKey.k035
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c012 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c012 ClassifierKey.k035
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c013 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c013 ClassifierKey.k001
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c014 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c014 ClassifierKey.k001
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)
  | c015 =>
      exact semanticFacts_of_shard000_key
        Shard000.SelectorPositiveCase.c015 ClassifierKey.k004
        (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide)

def semanticLanguage0_1 :
    SemanticRowMembershipLanguageOnRange 0 1 where
  Language := SemanticFactsLanguage
  sourceFacts := by
    intro key firstRole secondRole rank mask h
    exact h.1
  compatible := by
    intro key firstRole secondRole rank mask h
    exact h.2.1
  rowSemantic := by
    intro key firstRole secondRole rank mask h
    exact h.2.2
  complete := by
    intro rank mask hlt _hlo hhi _hM hgood
    have hrank : rank = 0 := by omega
    subst rank
    have hcase :=
      rank0_selectorPositive_of_GoodDirection hlt hgood
    cases hcase with
    | shard000 h =>
        exact semanticFacts_of_shard000_case h
    | shard001 h =>
        cases h
    | shard002 h =>
        cases h

theorem allGoodCoverage0_1 :
    AllTranslationGoodCoverageOnRange 0 1 :=
  semanticLanguage0_1.to_allGoodCoverage

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticRangeSmoke
