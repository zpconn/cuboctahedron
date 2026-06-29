import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticSelectorBridge

/-!
Generated DU.9AW semantic half for the split member/semantic `[0,4)` smoke.

This module intentionally does not import compact-Walsh denominator cover modules.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRangeGeneratedSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemantic
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticSelectorBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro

abbrev SelectorMember (rank : Nat) (mask : SignMask) : Prop :=
  SelectorPositiveCase rank mask

private theorem covered_of_semanticFacts
    {key : SourceIndexStateKey} {firstRole secondRole : RowRole}
    {rank : Nat} {mask : SignMask}
    (h : SemanticFactsLanguage key firstRole secondRole rank mask) :
    RowPropertyParametricCovered rank mask :=
  SourceIndexStateKey.covered_of_source_semantic h.1 h.2.1 h.2.2

private theorem covered_of_existsSemanticFacts
    {rank : Nat} {mask : SignMask}
    (h :
      ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
        SemanticFactsLanguage key firstRole secondRole rank mask) :
    RowPropertyParametricCovered rank mask := by
  rcases h with ⟨_key, _firstRole, _secondRole, hsemantic⟩
  exact covered_of_semanticFacts hsemantic

private theorem covered_of_shard000_case
    {rank : Nat} {mask : SignMask}
    (hcase : Shard000Case rank mask) :
    RowPropertyParametricCovered rank mask := by
  cases hcase with
  | c000 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c000 ClassifierKey.k000
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c001 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c001 ClassifierKey.k000
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c002 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c002 ClassifierKey.k003
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c003 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c003 ClassifierKey.k000
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c004 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c004 ClassifierKey.k000
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c005 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c005 ClassifierKey.k004
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c006 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c006 ClassifierKey.k000
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c007 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c007 ClassifierKey.k041
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c008 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c008 ClassifierKey.k003
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c009 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c009 ClassifierKey.k004
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c010 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c010 ClassifierKey.k004
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c011 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c011 ClassifierKey.k035
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c012 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c012 ClassifierKey.k035
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c013 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c013 ClassifierKey.k001
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c014 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c014 ClassifierKey.k001
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c015 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard000_key
          Shard000.SelectorPositiveCase.c015 ClassifierKey.k004
          (by simp [Shard000.selectorCoordAt]) (by decide) (by decide) (by decide))

private theorem covered_of_shard001_case
    {rank : Nat} {mask : SignMask}
    (hcase : Shard001Case rank mask) :
    RowPropertyParametricCovered rank mask := by
  cases hcase with
  | c000 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c000 ClassifierKey.k000
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c001 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c001 ClassifierKey.k000
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c002 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c002 ClassifierKey.k003
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c003 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c003 ClassifierKey.k000
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c004 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c004 ClassifierKey.k000
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c005 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c005 ClassifierKey.k000
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c006 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c006 ClassifierKey.k031
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c007 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c007 ClassifierKey.k003
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c008 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c008 ClassifierKey.k004
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c009 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c009 ClassifierKey.k035
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c010 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c010 ClassifierKey.k001
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c011 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c011 ClassifierKey.k001
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c012 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c012 ClassifierKey.k004
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c013 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c013 ClassifierKey.k000
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c014 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c014 ClassifierKey.k000
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c015 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard001_key
          Shard001.SelectorPositiveCase.c015 ClassifierKey.k004
          (by simp [Shard001.selectorCoordAt]) (by decide) (by decide) (by decide))

private theorem covered_of_shard002_case
    {rank : Nat} {mask : SignMask}
    (hcase : Shard002Case rank mask) :
    RowPropertyParametricCovered rank mask := by
  cases hcase with
  | c000 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard002_key
          Shard002.SelectorPositiveCase.c000 ClassifierKey.k000
          (by simp [Shard002.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c001 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard002_key
          Shard002.SelectorPositiveCase.c001 ClassifierKey.k000
          (by simp [Shard002.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c002 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard002_key
          Shard002.SelectorPositiveCase.c002 ClassifierKey.k025
          (by simp [Shard002.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c003 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard002_key
          Shard002.SelectorPositiveCase.c003 ClassifierKey.k032
          (by simp [Shard002.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c004 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard002_key
          Shard002.SelectorPositiveCase.c004 ClassifierKey.k078
          (by simp [Shard002.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c005 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard002_key
          Shard002.SelectorPositiveCase.c005 ClassifierKey.k004
          (by simp [Shard002.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c006 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard002_key
          Shard002.SelectorPositiveCase.c006 ClassifierKey.k002
          (by simp [Shard002.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c007 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard002_key
          Shard002.SelectorPositiveCase.c007 ClassifierKey.k001
          (by simp [Shard002.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c008 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard002_key
          Shard002.SelectorPositiveCase.c008 ClassifierKey.k001
          (by simp [Shard002.selectorCoordAt]) (by decide) (by decide) (by decide))
  | c009 =>
      exact covered_of_existsSemanticFacts
        (semanticFacts_of_shard002_key
          Shard002.SelectorPositiveCase.c009 ClassifierKey.k014
          (by simp [Shard002.selectorCoordAt]) (by decide) (by decide) (by decide))

theorem semanticCoverage0_1 :
    RowPropertyMemberSemanticCoverageOnIdentityRange SelectorMember 0 1 := by
  intro rank _hlt mask hlo hhi _hM hmember
  have hrank : rank = 0 := by omega
  subst rank
  cases hmember with
  | shard000 h =>
      exact covered_of_shard000_case h
  | shard001 h =>
      cases h
  | shard002 h =>
      cases h

theorem semanticCoverage2_4 :
    RowPropertyMemberSemanticCoverageOnIdentityRange SelectorMember 2 4 := by
  intro rank _hlt mask hlo hhi _hM hmember
  have hrank : rank = 2 ∨ rank = 3 := by omega
  rcases hrank with hrank | hrank
  · subst rank
    cases hmember with
    | shard000 h =>
        cases h
    | shard001 h =>
        exact covered_of_shard001_case h
    | shard002 h =>
        cases h
  · subst rank
    cases hmember with
    | shard000 h =>
        cases h
    | shard001 h =>
        exact covered_of_shard001_case h
    | shard002 h =>
        exact covered_of_shard002_case h

theorem semanticRangeGeneratedSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRangeGeneratedSmoke
