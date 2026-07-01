import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956.Shard002
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank955PositiveMasksGeneratedSmoke

/-!
Generated compact-free selector range smoke for `[955,956)`.

The module avoids `SourceIndexStateSelectorDU9PCompactMembership` and
erases the rank-local positive-mask proof directly through DU.9L
source/row facts (single microshard).  It is a bounded singleton-range smoke, not a
production family backend.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQCompactFreeRange955Smoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956

def coordAt955_956 (rank : Nat) (mask : SignMask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinate :=
  Shard002.selectorCoordAt rank mask

private theorem signMask_eq_of_val_eq
    {mask : SignMask} {n : Nat} (hn : n < 64)
    (h : mask.val = n) :
    mask = (⟨n, hn⟩ : SignMask) :=
  Fin.ext h

private theorem rank955_mask16_selector {mask : SignMask} (h : mask.val = 16) :
    Shard002.SelectorPositiveCase 955 mask := by
  have hmask : mask = (⟨16, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard002.SelectorPositiveCase.c004

private theorem rank955_mask18_selector {mask : SignMask} (h : mask.val = 18) :
    Shard002.SelectorPositiveCase 955 mask := by
  have hmask : mask = (⟨18, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard002.SelectorPositiveCase.c005

private theorem rank955_mask22_selector {mask : SignMask} (h : mask.val = 22) :
    Shard002.SelectorPositiveCase 955 mask := by
  have hmask : mask = (⟨22, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard002.SelectorPositiveCase.c006

private theorem rank955_mask54_selector {mask : SignMask} (h : mask.val = 54) :
    Shard002.SelectorPositiveCase 955 mask := by
  have hmask : mask = (⟨54, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard002.SelectorPositiveCase.c007

private theorem rank955_mask56_selector {mask : SignMask} (h : mask.val = 56) :
    Shard002.SelectorPositiveCase 955 mask := by
  have hmask : mask = (⟨56, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard002.SelectorPositiveCase.c008

private theorem rank955_mask57_selector {mask : SignMask} (h : mask.val = 57) :
    Shard002.SelectorPositiveCase 955 mask := by
  have hmask : mask = (⟨57, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard002.SelectorPositiveCase.c009

private theorem rank955_mask63_selector {mask : SignMask} (h : mask.val = 63) :
    Shard002.SelectorPositiveCase 955 mask := by
  have hmask : mask = (⟨63, by decide⟩ : SignMask) :=
    signMask_eq_of_val_eq (by decide) h
  simpa [hmask] using Shard002.SelectorPositiveCase.c010

theorem rank955_selectorPositive_of_generatedGoodMaskMember
    {mask : SignMask}
    (hmember : Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank955PositiveMasksGeneratedSmoke.rank955PositiveMaskMember mask) :
    Shard002.SelectorPositiveCase 955 mask := by
  rcases hmember with h | h | h | h | h | h | h
  · exact rank955_mask16_selector h
  · exact rank955_mask18_selector h
  · exact rank955_mask22_selector h
  · exact rank955_mask54_selector h
  · exact rank955_mask56_selector h
  · exact rank955_mask57_selector h
  · exact rank955_mask63_selector h

theorem rank955_selectorPositive_of_GoodDirection
    {mask : SignMask} (hlt : 955 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨955, hlt⟩ : Fin numPairWords) mask) :
    Shard002.SelectorPositiveCase 955 mask :=
  rank955_selectorPositive_of_generatedGoodMaskMember
    (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank955PositiveMasksGeneratedSmoke.goodDirection_rank955PositiveMaskMember hlt hgood)

theorem selectorCatalog955_956 :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt955_956 955 956 := by
  intro rank mask hlt _hlo hhi _hM hgood
  have hrank : rank = 955 := by omega
  subst rank
  exact Shard002.selectorPositiveSourceRowFacts
    (rank955_selectorPositive_of_GoodDirection hlt hgood)

theorem selectorCatalog955_956_sourceIndexFacts :
    SourceRowFactsGoodCatalogOnRange
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.classifierSourceIndexKeyAt
      955 956 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_sourceIndexFactsCatalog
    selectorCatalog955_956

theorem selectorCatalog955_956_allGood :
    AllTranslationGoodCoverageOnRange 955 956 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_allGoodCoverage
    selectorCatalog955_956

theorem compactFreeSingletonRangeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQCompactFreeRange955Smoke
