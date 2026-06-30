import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956.Shard000
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank896PositiveMasksGeneratedSmoke

/-!
Generated compact-free selector range smoke for `[896,897)`.

The module avoids `SourceIndexStateSelectorDU9PCompactMembership` and
erases the rank-local positive-mask proof directly through DU.9L
source/row facts (single microshard).  It is a bounded singleton-range smoke, not a
production family backend.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQCompactFreeRange896Smoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956

def coordAt896_897 (rank : Nat) (mask : SignMask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinate :=
  Shard000.selectorCoordAt rank mask

private theorem signMask_eq_of_val_eq
    {mask : SignMask} {n : Nat} (hn : n < 64)
    (h : mask.val = n) :
    mask = (⟨n, hn⟩ : SignMask) :=
  Fin.ext h

private theorem rank896_mask9_selector {mask : SignMask} (h : mask.val = 9) :
    Shard000.SelectorPositiveCase 896 mask := by
  have hmask : mask = (⟨9, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c000

private theorem rank896_mask13_selector {mask : SignMask} (h : mask.val = 13) :
    Shard000.SelectorPositiveCase 896 mask := by
  have hmask : mask = (⟨13, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c001

private theorem rank896_mask16_selector {mask : SignMask} (h : mask.val = 16) :
    Shard000.SelectorPositiveCase 896 mask := by
  have hmask : mask = (⟨16, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c002

private theorem rank896_mask18_selector {mask : SignMask} (h : mask.val = 18) :
    Shard000.SelectorPositiveCase 896 mask := by
  have hmask : mask = (⟨18, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c003

private theorem rank896_mask22_selector {mask : SignMask} (h : mask.val = 22) :
    Shard000.SelectorPositiveCase 896 mask := by
  have hmask : mask = (⟨22, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c004

private theorem rank896_mask24_selector {mask : SignMask} (h : mask.val = 24) :
    Shard000.SelectorPositiveCase 896 mask := by
  have hmask : mask = (⟨24, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c005

private theorem rank896_mask28_selector {mask : SignMask} (h : mask.val = 28) :
    Shard000.SelectorPositiveCase 896 mask := by
  have hmask : mask = (⟨28, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c006

private theorem rank896_mask30_selector {mask : SignMask} (h : mask.val = 30) :
    Shard000.SelectorPositiveCase 896 mask := by
  have hmask : mask = (⟨30, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c007

private theorem rank896_mask31_selector {mask : SignMask} (h : mask.val = 31) :
    Shard000.SelectorPositiveCase 896 mask := by
  have hmask : mask = (⟨31, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c008

private theorem rank896_mask45_selector {mask : SignMask} (h : mask.val = 45) :
    Shard000.SelectorPositiveCase 896 mask := by
  have hmask : mask = (⟨45, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c009

private theorem rank896_mask47_selector {mask : SignMask} (h : mask.val = 47) :
    Shard000.SelectorPositiveCase 896 mask := by
  have hmask : mask = (⟨47, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c010

private theorem rank896_mask54_selector {mask : SignMask} (h : mask.val = 54) :
    Shard000.SelectorPositiveCase 896 mask := by
  have hmask : mask = (⟨54, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c011

private theorem rank896_mask55_selector {mask : SignMask} (h : mask.val = 55) :
    Shard000.SelectorPositiveCase 896 mask := by
  have hmask : mask = (⟨55, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c012

theorem rank896_selectorPositive_of_generatedGoodMaskMember
    {mask : SignMask}
    (hmember : Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank896PositiveMasksGeneratedSmoke.rank896PositiveMaskMember mask) :
    Shard000.SelectorPositiveCase 896 mask := by
  rcases hmember with h | h | h | h | h | h | h | h | h | h | h | h | h
  · exact rank896_mask9_selector h
  · exact rank896_mask13_selector h
  · exact rank896_mask16_selector h
  · exact rank896_mask18_selector h
  · exact rank896_mask22_selector h
  · exact rank896_mask24_selector h
  · exact rank896_mask28_selector h
  · exact rank896_mask30_selector h
  · exact rank896_mask31_selector h
  · exact rank896_mask45_selector h
  · exact rank896_mask47_selector h
  · exact rank896_mask54_selector h
  · exact rank896_mask55_selector h

theorem rank896_selectorPositive_of_GoodDirection
    {mask : SignMask} (hlt : 896 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords) mask) :
    Shard000.SelectorPositiveCase 896 mask :=
  rank896_selectorPositive_of_generatedGoodMaskMember
    (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank896PositiveMasksGeneratedSmoke.goodDirection_rank896PositiveMaskMember hlt hgood)

theorem selectorCatalog896_897 :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt896_897 896 897 := by
  intro rank mask hlt _hlo hhi _hM hgood
  have hrank : rank = 896 := by omega
  subst rank
  exact Shard000.selectorPositiveSourceRowFacts
    (rank896_selectorPositive_of_GoodDirection hlt hgood)

theorem selectorCatalog896_897_sourceIndexFacts :
    SourceRowFactsGoodCatalogOnRange
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.classifierSourceIndexKeyAt
      896 897 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_sourceIndexFactsCatalog
    selectorCatalog896_897

theorem selectorCatalog896_897_allGood :
    AllTranslationGoodCoverageOnRange 896 897 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_allGoodCoverage
    selectorCatalog896_897

theorem compactFreeSingletonRangeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQCompactFreeRange896Smoke
