import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956.Shard001
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank903PositiveMasksGeneratedSmoke

/-!
Generated compact-free selector range smoke for `[903,904)`.

The module avoids `SourceIndexStateSelectorDU9PCompactMembership` and
erases the rank-local positive-mask proof directly through DU.9L
source/row facts (single microshard).  It is a bounded singleton-range smoke, not a
production family backend.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQCompactFreeRange903Smoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956

def coordAt903_904 (rank : Nat) (mask : SignMask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinate :=
  Shard001.selectorCoordAt rank mask

private theorem signMask_eq_of_val_eq
    {mask : SignMask} {n : Nat} (hn : n < 64)
    (h : mask.val = n) :
    mask = (⟨n, hn⟩ : SignMask) :=
  Fin.ext h

private theorem rank903_mask18_selector {mask : SignMask} (h : mask.val = 18) :
    Shard001.SelectorPositiveCase 903 mask := by
  have hmask : mask = (⟨18, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c010

private theorem rank903_mask22_selector {mask : SignMask} (h : mask.val = 22) :
    Shard001.SelectorPositiveCase 903 mask := by
  have hmask : mask = (⟨22, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c011

private theorem rank903_mask24_selector {mask : SignMask} (h : mask.val = 24) :
    Shard001.SelectorPositiveCase 903 mask := by
  have hmask : mask = (⟨24, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c012

private theorem rank903_mask25_selector {mask : SignMask} (h : mask.val = 25) :
    Shard001.SelectorPositiveCase 903 mask := by
  have hmask : mask = (⟨25, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c013

private theorem rank903_mask54_selector {mask : SignMask} (h : mask.val = 54) :
    Shard001.SelectorPositiveCase 903 mask := by
  have hmask : mask = (⟨54, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c014

private theorem rank903_mask55_selector {mask : SignMask} (h : mask.val = 55) :
    Shard001.SelectorPositiveCase 903 mask := by
  have hmask : mask = (⟨55, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c015

private theorem rank903_mask63_selector {mask : SignMask} (h : mask.val = 63) :
    Shard001.SelectorPositiveCase 903 mask := by
  have hmask : mask = (⟨63, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c016

theorem rank903_selectorPositive_of_generatedGoodMaskMember
    {mask : SignMask}
    (hmember : Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank903PositiveMasksGeneratedSmoke.rank903PositiveMaskMember mask) :
    Shard001.SelectorPositiveCase 903 mask := by
  rcases hmember with h | h | h | h | h | h | h
  · exact rank903_mask18_selector h
  · exact rank903_mask22_selector h
  · exact rank903_mask24_selector h
  · exact rank903_mask25_selector h
  · exact rank903_mask54_selector h
  · exact rank903_mask55_selector h
  · exact rank903_mask63_selector h

theorem rank903_selectorPositive_of_GoodDirection
    {mask : SignMask} (hlt : 903 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨903, hlt⟩ : Fin numPairWords) mask) :
    Shard001.SelectorPositiveCase 903 mask :=
  rank903_selectorPositive_of_generatedGoodMaskMember
    (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank903PositiveMasksGeneratedSmoke.goodDirection_rank903PositiveMaskMember hlt hgood)

theorem selectorCatalog903_904 :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt903_904 903 904 := by
  intro rank mask hlt _hlo hhi _hM hgood
  have hrank : rank = 903 := by omega
  subst rank
  exact Shard001.selectorPositiveSourceRowFacts
    (rank903_selectorPositive_of_GoodDirection hlt hgood)

theorem selectorCatalog903_904_sourceIndexFacts :
    SourceRowFactsGoodCatalogOnRange
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.classifierSourceIndexKeyAt
      903 904 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_sourceIndexFactsCatalog
    selectorCatalog903_904

theorem selectorCatalog903_904_allGood :
    AllTranslationGoodCoverageOnRange 903 904 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_allGoodCoverage
    selectorCatalog903_904

theorem compactFreeSingletonRangeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQCompactFreeRange903Smoke
