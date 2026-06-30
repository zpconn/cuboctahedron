import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank2BatchSmoke

/-!
Generated compact-free selector range smoke for `[2,3)`.

The module avoids `SourceIndexStateSelectorDU9PCompactMembership` and
erases the rank-local positive-mask proof directly through DU.9L
source/row facts.  It is a bounded singleton-range smoke, not a
production family backend.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeRange2Smoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro

def coordAt2_3 (rank : Nat) (mask : SignMask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinate :=
  Shard001.selectorCoordAt rank mask

private theorem signMask_eq_of_val_eq
    {mask : SignMask} {n : Nat} (hn : n < 64)
    (h : mask.val = n) :
    mask = (⟨n, hn⟩ : SignMask) :=
  Fin.ext h

private theorem rank2_mask8_selector {mask : SignMask} (h : mask.val = 8) :
    Shard001.SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨8, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c000

private theorem rank2_mask9_selector {mask : SignMask} (h : mask.val = 9) :
    Shard001.SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨9, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c001

private theorem rank2_mask13_selector {mask : SignMask} (h : mask.val = 13) :
    Shard001.SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨13, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c002

private theorem rank2_mask16_selector {mask : SignMask} (h : mask.val = 16) :
    Shard001.SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨16, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c003

private theorem rank2_mask18_selector {mask : SignMask} (h : mask.val = 18) :
    Shard001.SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨18, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c004

private theorem rank2_mask24_selector {mask : SignMask} (h : mask.val = 24) :
    Shard001.SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨24, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c005

private theorem rank2_mask28_selector {mask : SignMask} (h : mask.val = 28) :
    Shard001.SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨28, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c006

private theorem rank2_mask29_selector {mask : SignMask} (h : mask.val = 29) :
    Shard001.SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨29, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c007

private theorem rank2_mask30_selector {mask : SignMask} (h : mask.val = 30) :
    Shard001.SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨30, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c008

private theorem rank2_mask47_selector {mask : SignMask} (h : mask.val = 47) :
    Shard001.SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨47, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c009

private theorem rank2_mask54_selector {mask : SignMask} (h : mask.val = 54) :
    Shard001.SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨54, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c010

private theorem rank2_mask55_selector {mask : SignMask} (h : mask.val = 55) :
    Shard001.SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨55, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c011

private theorem rank2_mask63_selector {mask : SignMask} (h : mask.val = 63) :
    Shard001.SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨63, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard001.SelectorPositiveCase.c012

theorem rank2_selectorPositive_of_generatedGoodMaskMember
    {mask : SignMask}
    (hmember : Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank2Smoke.generatedGoodMaskMember mask) :
    Shard001.SelectorPositiveCase 2 mask := by
  rcases hmember with h | h | h | h | h | h | h | h | h | h | h | h | h
  · exact rank2_mask8_selector h
  · exact rank2_mask9_selector h
  · exact rank2_mask13_selector h
  · exact rank2_mask16_selector h
  · exact rank2_mask18_selector h
  · exact rank2_mask24_selector h
  · exact rank2_mask28_selector h
  · exact rank2_mask29_selector h
  · exact rank2_mask30_selector h
  · exact rank2_mask47_selector h
  · exact rank2_mask54_selector h
  · exact rank2_mask55_selector h
  · exact rank2_mask63_selector h

theorem rank2_selectorPositive_of_GoodDirection
    {mask : SignMask} (hlt : 2 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords) mask) :
    Shard001.SelectorPositiveCase 2 mask :=
  rank2_selectorPositive_of_generatedGoodMaskMember
    (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank2BatchSmoke.rank2_goodMaskMember_of_GoodDirection hlt hgood)

theorem selectorCatalog2_3 :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt2_3 2 3 := by
  intro rank mask hlt _hlo hhi _hM hgood
  have hrank : rank = 2 := by omega
  subst rank
  exact Shard001.selectorPositiveSourceRowFacts
    (rank2_selectorPositive_of_GoodDirection hlt hgood)

theorem selectorCatalog2_3_sourceIndexFacts :
    SourceRowFactsGoodCatalogOnRange
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.classifierSourceIndexKeyAt
      2 3 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_sourceIndexFactsCatalog
    selectorCatalog2_3

theorem selectorCatalog2_3_allGood :
    AllTranslationGoodCoverageOnRange 2 3 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_allGoodCoverage
    selectorCatalog2_3

theorem compactFreeSingletonRangeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeRange2Smoke
