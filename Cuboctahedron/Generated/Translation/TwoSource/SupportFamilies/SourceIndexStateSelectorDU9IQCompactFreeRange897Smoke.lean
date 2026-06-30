import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956.Shard000
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank897PositiveMasksGeneratedSmoke

/-!
Generated compact-free selector range smoke for `[897,898)`.

The module avoids `SourceIndexStateSelectorDU9PCompactMembership` and
erases the rank-local positive-mask proof directly through DU.9L
source/row facts (single microshard).  It is a bounded singleton-range smoke, not a
production family backend.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQCompactFreeRange897Smoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956

def coordAt897_898 (rank : Nat) (mask : SignMask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinate :=
  Shard000.selectorCoordAt rank mask

private theorem signMask_eq_of_val_eq
    {mask : SignMask} {n : Nat} (hn : n < 64)
    (h : mask.val = n) :
    mask = (⟨n, hn⟩ : SignMask) :=
  Fin.ext h

private theorem rank897_mask8_selector {mask : SignMask} (h : mask.val = 8) :
    Shard000.SelectorPositiveCase 897 mask := by
  have hmask : mask = (⟨8, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c013

private theorem rank897_mask13_selector {mask : SignMask} (h : mask.val = 13) :
    Shard000.SelectorPositiveCase 897 mask := by
  have hmask : mask = (⟨13, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c014

private theorem rank897_mask16_selector {mask : SignMask} (h : mask.val = 16) :
    Shard000.SelectorPositiveCase 897 mask := by
  have hmask : mask = (⟨16, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c015

private theorem rank897_mask18_selector {mask : SignMask} (h : mask.val = 18) :
    Shard000.SelectorPositiveCase 897 mask := by
  have hmask : mask = (⟨18, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c016

private theorem rank897_mask24_selector {mask : SignMask} (h : mask.val = 24) :
    Shard000.SelectorPositiveCase 897 mask := by
  have hmask : mask = (⟨24, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c017

private theorem rank897_mask29_selector {mask : SignMask} (h : mask.val = 29) :
    Shard000.SelectorPositiveCase 897 mask := by
  have hmask : mask = (⟨29, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c018

private theorem rank897_mask30_selector {mask : SignMask} (h : mask.val = 30) :
    Shard000.SelectorPositiveCase 897 mask := by
  have hmask : mask = (⟨30, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c019

private theorem rank897_mask31_selector {mask : SignMask} (h : mask.val = 31) :
    Shard000.SelectorPositiveCase 897 mask := by
  have hmask : mask = (⟨31, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c020

private theorem rank897_mask45_selector {mask : SignMask} (h : mask.val = 45) :
    Shard000.SelectorPositiveCase 897 mask := by
  have hmask : mask = (⟨45, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c021

private theorem rank897_mask47_selector {mask : SignMask} (h : mask.val = 47) :
    Shard000.SelectorPositiveCase 897 mask := by
  have hmask : mask = (⟨47, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c022

private theorem rank897_mask54_selector {mask : SignMask} (h : mask.val = 54) :
    Shard000.SelectorPositiveCase 897 mask := by
  have hmask : mask = (⟨54, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c023

private theorem rank897_mask55_selector {mask : SignMask} (h : mask.val = 55) :
    Shard000.SelectorPositiveCase 897 mask := by
  have hmask : mask = (⟨55, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c024

private theorem rank897_mask63_selector {mask : SignMask} (h : mask.val = 63) :
    Shard000.SelectorPositiveCase 897 mask := by
  have hmask : mask = (⟨63, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c025

theorem rank897_selectorPositive_of_generatedGoodMaskMember
    {mask : SignMask}
    (hmember : Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank897PositiveMasksGeneratedSmoke.rank897PositiveMaskMember mask) :
    Shard000.SelectorPositiveCase 897 mask := by
  rcases hmember with h | h | h | h | h | h | h | h | h | h | h | h | h
  · exact rank897_mask8_selector h
  · exact rank897_mask13_selector h
  · exact rank897_mask16_selector h
  · exact rank897_mask18_selector h
  · exact rank897_mask24_selector h
  · exact rank897_mask29_selector h
  · exact rank897_mask30_selector h
  · exact rank897_mask31_selector h
  · exact rank897_mask45_selector h
  · exact rank897_mask47_selector h
  · exact rank897_mask54_selector h
  · exact rank897_mask55_selector h
  · exact rank897_mask63_selector h

theorem rank897_selectorPositive_of_GoodDirection
    {mask : SignMask} (hlt : 897 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨897, hlt⟩ : Fin numPairWords) mask) :
    Shard000.SelectorPositiveCase 897 mask :=
  rank897_selectorPositive_of_generatedGoodMaskMember
    (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank897PositiveMasksGeneratedSmoke.goodDirection_rank897PositiveMaskMember hlt hgood)

theorem selectorCatalog897_898 :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt897_898 897 898 := by
  intro rank mask hlt _hlo hhi _hM hgood
  have hrank : rank = 897 := by omega
  subst rank
  exact Shard000.selectorPositiveSourceRowFacts
    (rank897_selectorPositive_of_GoodDirection hlt hgood)

theorem selectorCatalog897_898_sourceIndexFacts :
    SourceRowFactsGoodCatalogOnRange
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.classifierSourceIndexKeyAt
      897 898 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_sourceIndexFactsCatalog
    selectorCatalog897_898

theorem selectorCatalog897_898_allGood :
    AllTranslationGoodCoverageOnRange 897 898 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_allGoodCoverage
    selectorCatalog897_898

theorem compactFreeSingletonRangeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQCompactFreeRange897Smoke
