import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.All
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank0BatchSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank2BatchSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank3BatchSmoke

/-!
DU.9P compact GoodDirection membership bridge for the bounded `[0,4)` fixture.

The compact Walsh cover roots prove that a semantic `GoodDirectionAtRank`
assumption for ranks `0`, `2`, and `3` lies in the corresponding generated
positive-mask set.  This module erases those mask-set facts to the already
checked DU.9L selector-positive language, and then to
`TranslationGoodCaseKilled`.

This file is intentionally thin: it does not replay row arithmetic or reduce a
large checker.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership

open Cuboctahedron.Generated.Coverage

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro

abbrev Rank0GoodMaskMember (mask : SignMask) : Prop :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank0Smoke.generatedGoodMaskMember mask
abbrev Rank2GoodMaskMember (mask : SignMask) : Prop :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank2Smoke.generatedGoodMaskMember mask
abbrev Rank3GoodMaskMember (mask : SignMask) : Prop :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank3Smoke.generatedGoodMaskMember mask

private theorem signMask_eq_of_val_eq
    {mask : SignMask} {n : Nat} (hn : n < 64)
    (h : mask.val = n) :
    mask = (⟨n, hn⟩ : SignMask) :=
  Fin.ext h

private theorem rank0_mask8_selector {mask : SignMask} (h : mask.val = 8) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨8, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c000

private theorem rank0_mask9_selector {mask : SignMask} (h : mask.val = 9) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨9, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c001

private theorem rank0_mask13_selector {mask : SignMask} (h : mask.val = 13) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨13, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c002

private theorem rank0_mask16_selector {mask : SignMask} (h : mask.val = 16) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨16, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c003

private theorem rank0_mask18_selector {mask : SignMask} (h : mask.val = 18) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨18, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c004

private theorem rank0_mask22_selector {mask : SignMask} (h : mask.val = 22) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨22, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c005

private theorem rank0_mask24_selector {mask : SignMask} (h : mask.val = 24) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨24, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c006

private theorem rank0_mask28_selector {mask : SignMask} (h : mask.val = 28) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨28, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c007

private theorem rank0_mask29_selector {mask : SignMask} (h : mask.val = 29) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨29, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c008

private theorem rank0_mask30_selector {mask : SignMask} (h : mask.val = 30) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨30, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c009

private theorem rank0_mask31_selector {mask : SignMask} (h : mask.val = 31) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨31, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c010

private theorem rank0_mask45_selector {mask : SignMask} (h : mask.val = 45) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨45, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c011

private theorem rank0_mask47_selector {mask : SignMask} (h : mask.val = 47) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨47, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c012

private theorem rank0_mask54_selector {mask : SignMask} (h : mask.val = 54) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨54, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c013

private theorem rank0_mask55_selector {mask : SignMask} (h : mask.val = 55) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨55, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c014

private theorem rank0_mask63_selector {mask : SignMask} (h : mask.val = 63) :
    SelectorPositiveCase 0 mask := by
  have hmask : mask = (⟨63, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard000 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase.c015

theorem rank0_selectorPositive_of_generatedGoodMaskMember
    {mask : SignMask}
    (hmem : Rank0GoodMaskMember mask) :
    SelectorPositiveCase 0 mask := by
  rcases hmem with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h
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

private theorem rank2_mask8_selector {mask : SignMask} (h : mask.val = 8) :
    SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨8, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c000

private theorem rank2_mask9_selector {mask : SignMask} (h : mask.val = 9) :
    SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨9, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c001

private theorem rank2_mask13_selector {mask : SignMask} (h : mask.val = 13) :
    SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨13, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c002

private theorem rank2_mask16_selector {mask : SignMask} (h : mask.val = 16) :
    SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨16, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c003

private theorem rank2_mask18_selector {mask : SignMask} (h : mask.val = 18) :
    SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨18, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c004

private theorem rank2_mask24_selector {mask : SignMask} (h : mask.val = 24) :
    SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨24, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c005

private theorem rank2_mask28_selector {mask : SignMask} (h : mask.val = 28) :
    SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨28, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c006

private theorem rank2_mask29_selector {mask : SignMask} (h : mask.val = 29) :
    SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨29, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c007

private theorem rank2_mask30_selector {mask : SignMask} (h : mask.val = 30) :
    SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨30, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c008

private theorem rank2_mask47_selector {mask : SignMask} (h : mask.val = 47) :
    SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨47, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c009

private theorem rank2_mask54_selector {mask : SignMask} (h : mask.val = 54) :
    SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨54, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c010

private theorem rank2_mask55_selector {mask : SignMask} (h : mask.val = 55) :
    SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨55, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c011

private theorem rank2_mask63_selector {mask : SignMask} (h : mask.val = 63) :
    SelectorPositiveCase 2 mask := by
  have hmask : mask = (⟨63, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c012

theorem rank2_selectorPositive_of_generatedGoodMaskMember
    {mask : SignMask}
    (hmem : Rank2GoodMaskMember mask) :
    SelectorPositiveCase 2 mask := by
  rcases hmem with h | h | h | h | h | h | h | h | h | h | h | h | h
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

private theorem rank3_mask8_selector {mask : SignMask} (h : mask.val = 8) :
    SelectorPositiveCase 3 mask := by
  have hmask : mask = (⟨8, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c013

private theorem rank3_mask9_selector {mask : SignMask} (h : mask.val = 9) :
    SelectorPositiveCase 3 mask := by
  have hmask : mask = (⟨9, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c014

private theorem rank3_mask13_selector {mask : SignMask} (h : mask.val = 13) :
    SelectorPositiveCase 3 mask := by
  have hmask : mask = (⟨13, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard001 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase.c015

private theorem rank3_mask16_selector {mask : SignMask} (h : mask.val = 16) :
    SelectorPositiveCase 3 mask := by
  have hmask : mask = (⟨16, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard002 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002.SelectorPositiveCase.c000

private theorem rank3_mask18_selector {mask : SignMask} (h : mask.val = 18) :
    SelectorPositiveCase 3 mask := by
  have hmask : mask = (⟨18, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard002 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002.SelectorPositiveCase.c001

private theorem rank3_mask22_selector {mask : SignMask} (h : mask.val = 22) :
    SelectorPositiveCase 3 mask := by
  have hmask : mask = (⟨22, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard002 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002.SelectorPositiveCase.c002

private theorem rank3_mask28_selector {mask : SignMask} (h : mask.val = 28) :
    SelectorPositiveCase 3 mask := by
  have hmask : mask = (⟨28, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard002 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002.SelectorPositiveCase.c003

private theorem rank3_mask30_selector {mask : SignMask} (h : mask.val = 30) :
    SelectorPositiveCase 3 mask := by
  have hmask : mask = (⟨30, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard002 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002.SelectorPositiveCase.c004

private theorem rank3_mask31_selector {mask : SignMask} (h : mask.val = 31) :
    SelectorPositiveCase 3 mask := by
  have hmask : mask = (⟨31, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard002 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002.SelectorPositiveCase.c005

private theorem rank3_mask45_selector {mask : SignMask} (h : mask.val = 45) :
    SelectorPositiveCase 3 mask := by
  have hmask : mask = (⟨45, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard002 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002.SelectorPositiveCase.c006

private theorem rank3_mask54_selector {mask : SignMask} (h : mask.val = 54) :
    SelectorPositiveCase 3 mask := by
  have hmask : mask = (⟨54, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard002 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002.SelectorPositiveCase.c007

private theorem rank3_mask55_selector {mask : SignMask} (h : mask.val = 55) :
    SelectorPositiveCase 3 mask := by
  have hmask : mask = (⟨55, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard002 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002.SelectorPositiveCase.c008

private theorem rank3_mask63_selector {mask : SignMask} (h : mask.val = 63) :
    SelectorPositiveCase 3 mask := by
  have hmask : mask = (⟨63, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using SelectorPositiveCase.shard002 Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002.SelectorPositiveCase.c009

theorem rank3_selectorPositive_of_generatedGoodMaskMember
    {mask : SignMask}
    (hmem : Rank3GoodMaskMember mask) :
    SelectorPositiveCase 3 mask := by
  rcases hmem with h | h | h | h | h | h | h | h | h | h | h | h | h
  · exact rank3_mask8_selector h
  · exact rank3_mask9_selector h
  · exact rank3_mask13_selector h
  · exact rank3_mask16_selector h
  · exact rank3_mask18_selector h
  · exact rank3_mask22_selector h
  · exact rank3_mask28_selector h
  · exact rank3_mask30_selector h
  · exact rank3_mask31_selector h
  · exact rank3_mask45_selector h
  · exact rank3_mask54_selector h
  · exact rank3_mask55_selector h
  · exact rank3_mask63_selector h

theorem rank0_selectorPositive_of_GoodDirection
    {mask : SignMask} (hlt : 0 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask) :
    SelectorPositiveCase 0 mask :=
  rank0_selectorPositive_of_generatedGoodMaskMember
    (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank0BatchSmoke.rank0_goodMaskMember_of_GoodDirection hlt hgood)

theorem rank2_selectorPositive_of_GoodDirection
    {mask : SignMask} (hlt : 2 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords) mask) :
    SelectorPositiveCase 2 mask :=
  rank2_selectorPositive_of_generatedGoodMaskMember
    (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank2BatchSmoke.rank2_goodMaskMember_of_GoodDirection hlt hgood)

theorem rank3_selectorPositive_of_GoodDirection
    {mask : SignMask} (hlt : 3 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords) mask) :
    SelectorPositiveCase 3 mask :=
  rank3_selectorPositive_of_generatedGoodMaskMember
    (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank3BatchSmoke.rank3_goodMaskMember_of_GoodDirection hlt hgood)

theorem rank0_goodKilled_of_GoodDirection
    {mask : SignMask} (hlt : 0 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask) :
    TranslationGoodCaseKilled (⟨0, hlt⟩ : Fin numPairWords) mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.selectorPositiveGoodKilled
    (rank0_selectorPositive_of_GoodDirection hlt hgood)

theorem rank2_goodKilled_of_GoodDirection
    {mask : SignMask} (hlt : 2 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords) mask) :
    TranslationGoodCaseKilled (⟨2, hlt⟩ : Fin numPairWords) mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.selectorPositiveGoodKilled
    (rank2_selectorPositive_of_GoodDirection hlt hgood)

theorem rank3_goodKilled_of_GoodDirection
    {mask : SignMask} (hlt : 3 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords) mask) :
    TranslationGoodCaseKilled (⟨3, hlt⟩ : Fin numPairWords) mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.selectorPositiveGoodKilled
    (rank3_selectorPositive_of_GoodDirection hlt hgood)

theorem compactMembershipBridge_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership
