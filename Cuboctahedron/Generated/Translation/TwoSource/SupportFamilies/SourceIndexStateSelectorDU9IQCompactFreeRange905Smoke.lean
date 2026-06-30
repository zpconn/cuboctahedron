import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956.Shard001
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank905PositiveMasksGeneratedSmoke

/-!
Generated compact-free selector range smoke for `[905,906)`.

The module avoids `SourceIndexStateSelectorDU9PCompactMembership` and
erases the rank-local positive-mask proof directly through DU.9L
source/row facts (single microshard).  It is a bounded singleton-range smoke, not a
production family backend.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQCompactFreeRange905Smoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956

def coordAt905_906 (rank : Nat) (mask : SignMask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinate :=
  Shard001.selectorCoordAt rank mask

private theorem signMask_eq_of_val_eq
    {mask : SignMask} {n : Nat} (hn : n < 64)
    (h : mask.val = n) :
    mask = (⟨n, hn⟩ : SignMask) :=
  Fin.ext h

private theorem rank905_mask18_selector {mask : SignMask} (h : mask.val = 18) :
    Shard001.SelectorPositiveCase 905 mask := by
  have hmask : mask = (⟨18, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c017

private theorem rank905_mask22_selector {mask : SignMask} (h : mask.val = 22) :
    Shard001.SelectorPositiveCase 905 mask := by
  have hmask : mask = (⟨22, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c018

private theorem rank905_mask24_selector {mask : SignMask} (h : mask.val = 24) :
    Shard001.SelectorPositiveCase 905 mask := by
  have hmask : mask = (⟨24, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c019

private theorem rank905_mask41_selector {mask : SignMask} (h : mask.val = 41) :
    Shard001.SelectorPositiveCase 905 mask := by
  have hmask : mask = (⟨41, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c020

private theorem rank905_mask54_selector {mask : SignMask} (h : mask.val = 54) :
    Shard001.SelectorPositiveCase 905 mask := by
  have hmask : mask = (⟨54, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c021

private theorem rank905_mask55_selector {mask : SignMask} (h : mask.val = 55) :
    Shard001.SelectorPositiveCase 905 mask := by
  have hmask : mask = (⟨55, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c022

private theorem rank905_mask57_selector {mask : SignMask} (h : mask.val = 57) :
    Shard001.SelectorPositiveCase 905 mask := by
  have hmask : mask = (⟨57, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c023

private theorem rank905_mask63_selector {mask : SignMask} (h : mask.val = 63) :
    Shard001.SelectorPositiveCase 905 mask := by
  have hmask : mask = (⟨63, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c024

theorem rank905_selectorPositive_of_generatedGoodMaskMember
    {mask : SignMask}
    (hmember : Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank905PositiveMasksGeneratedSmoke.rank905PositiveMaskMember mask) :
    Shard001.SelectorPositiveCase 905 mask := by
  rcases hmember with h | h | h | h | h | h | h | h
  · exact rank905_mask18_selector h
  · exact rank905_mask22_selector h
  · exact rank905_mask24_selector h
  · exact rank905_mask41_selector h
  · exact rank905_mask54_selector h
  · exact rank905_mask55_selector h
  · exact rank905_mask57_selector h
  · exact rank905_mask63_selector h

theorem rank905_selectorPositive_of_GoodDirection
    {mask : SignMask} (hlt : 905 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨905, hlt⟩ : Fin numPairWords) mask) :
    Shard001.SelectorPositiveCase 905 mask :=
  rank905_selectorPositive_of_generatedGoodMaskMember
    (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank905PositiveMasksGeneratedSmoke.goodDirection_rank905PositiveMaskMember hlt hgood)

theorem selectorCatalog905_906 :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt905_906 905 906 := by
  intro rank mask hlt _hlo hhi _hM hgood
  have hrank : rank = 905 := by omega
  subst rank
  exact Shard001.selectorPositiveSourceRowFacts
    (rank905_selectorPositive_of_GoodDirection hlt hgood)

theorem selectorCatalog905_906_sourceIndexFacts :
    SourceRowFactsGoodCatalogOnRange
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.classifierSourceIndexKeyAt
      905 906 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_sourceIndexFactsCatalog
    selectorCatalog905_906

theorem selectorCatalog905_906_allGood :
    AllTranslationGoodCoverageOnRange 905 906 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_allGoodCoverage
    selectorCatalog905_906

theorem compactFreeSingletonRangeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQCompactFreeRange905Smoke
