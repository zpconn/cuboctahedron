import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank0BatchSmoke

/-!
DU.9 compact-free selector range smoke for `[0,1)`.

This module proves the range-parametric selector-coordinate catalog target
without importing `SourceIndexStateSelectorDU9PCompactMembership`.  It still
uses the rank-0 bad-mask cover as the local proof that a semantic
`GoodDirectionAtRank` survivor lies in the generated positive-mask set, then
erases that membership directly through the DU.9L shard-0 source/row facts.

This is intentionally a bounded smoke.  It validates the compact-free range
surface that a production emitter should target with larger semantic
families.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeRange0Smoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro

def coordAt0_1 (rank : Nat) (mask : SignMask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinate :=
  Shard000.selectorCoordAt rank mask

private theorem signMask_eq_of_val_eq
    {mask : SignMask} {n : Nat} (hn : n < 64)
    (h : mask.val = n) :
    mask = (⟨n, hn⟩ : SignMask) :=
  Fin.ext h

private theorem rank0_mask8_selector {mask : SignMask} (h : mask.val = 8) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨8, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c000

private theorem rank0_mask9_selector {mask : SignMask} (h : mask.val = 9) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨9, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c001

private theorem rank0_mask13_selector {mask : SignMask} (h : mask.val = 13) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨13, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c002

private theorem rank0_mask16_selector {mask : SignMask} (h : mask.val = 16) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨16, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c003

private theorem rank0_mask18_selector {mask : SignMask} (h : mask.val = 18) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨18, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c004

private theorem rank0_mask22_selector {mask : SignMask} (h : mask.val = 22) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨22, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c005

private theorem rank0_mask24_selector {mask : SignMask} (h : mask.val = 24) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨24, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c006

private theorem rank0_mask28_selector {mask : SignMask} (h : mask.val = 28) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨28, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c007

private theorem rank0_mask29_selector {mask : SignMask} (h : mask.val = 29) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨29, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c008

private theorem rank0_mask30_selector {mask : SignMask} (h : mask.val = 30) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨30, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c009

private theorem rank0_mask31_selector {mask : SignMask} (h : mask.val = 31) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨31, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c010

private theorem rank0_mask45_selector {mask : SignMask} (h : mask.val = 45) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨45, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c011

private theorem rank0_mask47_selector {mask : SignMask} (h : mask.val = 47) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨47, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c012

private theorem rank0_mask54_selector {mask : SignMask} (h : mask.val = 54) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨54, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c013

private theorem rank0_mask55_selector {mask : SignMask} (h : mask.val = 55) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨55, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c014

private theorem rank0_mask63_selector {mask : SignMask} (h : mask.val = 63) :
    Shard000.SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨63, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard000.SelectorPositiveCase.c015

theorem rank0_selectorPositive_of_generatedGoodMaskMember
    {mask : SignMask}
    (hmember :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank0Smoke.generatedGoodMaskMember mask) :
    Shard000.SelectorPositiveCase 0 mask := by
  rcases hmember with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h
  · exact rank0_mask8_selector h
  · exact rank0_mask9_selector h
  · exact rank0_mask13_selector h
  · exact rank0_mask16_selector h
  · exact rank0_mask18_selector h
  · exact rank0_mask22_selector h
  · exact rank0_mask24_selector h
  · exact rank0_mask28_selector h
  · exact rank0_mask29_selector h
  · exact rank0_mask30_selector h
  · exact rank0_mask31_selector h
  · exact rank0_mask45_selector h
  · exact rank0_mask47_selector h
  · exact rank0_mask54_selector h
  · exact rank0_mask55_selector h
  · exact rank0_mask63_selector h

theorem rank0_selectorPositive_of_GoodDirection
    {mask : SignMask} (hlt : 0 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask) :
    Shard000.SelectorPositiveCase 0 mask :=
  rank0_selectorPositive_of_generatedGoodMaskMember
    (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank0BatchSmoke.rank0_goodMaskMember_of_GoodDirection hlt hgood)

theorem selectorCatalog0_1 :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt0_1 0 1 := by
  intro rank mask hlt _hlo hhi _hM hgood
  have hrank : rank = 0 := by omega
  subst rank
  exact Shard000.selectorPositiveSourceRowFacts
    (rank0_selectorPositive_of_GoodDirection hlt hgood)

theorem selectorCatalog0_1_sourceIndexFacts :
    SourceRowFactsGoodCatalogOnRange
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.classifierSourceIndexKeyAt
      0 1 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_sourceIndexFactsCatalog
    selectorCatalog0_1

theorem selectorCatalog0_1_allGood :
    AllTranslationGoodCoverageOnRange 0 1 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_allGoodCoverage
    selectorCatalog0_1

theorem compactFreeRange0Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeRange0Smoke
