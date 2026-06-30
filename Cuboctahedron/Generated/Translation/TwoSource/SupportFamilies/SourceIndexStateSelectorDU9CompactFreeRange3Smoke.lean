import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank3BatchSmoke

/-!
Generated compact-free selector range smoke for `[3,4)`.

The module avoids `SourceIndexStateSelectorDU9PCompactMembership` and
erases the rank-local positive-mask proof directly through DU.9L
source/row facts (split microshards Shard001, Shard002).  It is a bounded singleton-range smoke, not a
production family backend.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeRange3Smoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro

def coordAt3_4 (rank : Nat) (mask : SignMask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinate :=
  if mask.val = 8 then Shard001.selectorCoordAt rank mask else
    if mask.val = 9 then Shard001.selectorCoordAt rank mask else
      if mask.val = 13 then Shard001.selectorCoordAt rank mask else
        Shard002.selectorCoordAt rank mask

private theorem signMask_eq_of_val_eq
    {mask : SignMask} {n : Nat} (hn : n < 64)
    (h : mask.val = n) :
    mask = (⟨n, hn⟩ : SignMask) :=
  Fin.ext h

theorem rank3_selectorCoordinateSourceRowFacts_of_GoodDirection
    {mask : SignMask} (hlt : 3 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords) mask) :
    SelectorCoordinateSourceRowFacts (coordAt3_4 3 mask) 3 mask := by
  have hmember : Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank3Smoke.generatedGoodMaskMember mask :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank3BatchSmoke.rank3_goodMaskMember_of_GoodDirection hlt hgood
  rcases hmember with h | h | h | h | h | h | h | h | h | h | h | h | h
  · have hmask : mask = (⟨8, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt3_4, hmask] using
      Shard001.selectorPositiveSourceRowFacts Shard001.SelectorPositiveCase.c013
  · have hmask : mask = (⟨9, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt3_4, hmask] using
      Shard001.selectorPositiveSourceRowFacts Shard001.SelectorPositiveCase.c014
  · have hmask : mask = (⟨13, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt3_4, hmask] using
      Shard001.selectorPositiveSourceRowFacts Shard001.SelectorPositiveCase.c015
  · have hmask : mask = (⟨16, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt3_4, hmask] using
      Shard002.selectorPositiveSourceRowFacts Shard002.SelectorPositiveCase.c000
  · have hmask : mask = (⟨18, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt3_4, hmask] using
      Shard002.selectorPositiveSourceRowFacts Shard002.SelectorPositiveCase.c001
  · have hmask : mask = (⟨22, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt3_4, hmask] using
      Shard002.selectorPositiveSourceRowFacts Shard002.SelectorPositiveCase.c002
  · have hmask : mask = (⟨28, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt3_4, hmask] using
      Shard002.selectorPositiveSourceRowFacts Shard002.SelectorPositiveCase.c003
  · have hmask : mask = (⟨30, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt3_4, hmask] using
      Shard002.selectorPositiveSourceRowFacts Shard002.SelectorPositiveCase.c004
  · have hmask : mask = (⟨31, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt3_4, hmask] using
      Shard002.selectorPositiveSourceRowFacts Shard002.SelectorPositiveCase.c005
  · have hmask : mask = (⟨45, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt3_4, hmask] using
      Shard002.selectorPositiveSourceRowFacts Shard002.SelectorPositiveCase.c006
  · have hmask : mask = (⟨54, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt3_4, hmask] using
      Shard002.selectorPositiveSourceRowFacts Shard002.SelectorPositiveCase.c007
  · have hmask : mask = (⟨55, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt3_4, hmask] using
      Shard002.selectorPositiveSourceRowFacts Shard002.SelectorPositiveCase.c008
  · have hmask : mask = (⟨63, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt3_4, hmask] using
      Shard002.selectorPositiveSourceRowFacts Shard002.SelectorPositiveCase.c009

theorem selectorCatalog3_4 :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt3_4 3 4 := by
  intro rank mask hlt _hlo hhi _hM hgood
  have hrank : rank = 3 := by omega
  subst rank
  exact rank3_selectorCoordinateSourceRowFacts_of_GoodDirection hlt hgood

theorem selectorCatalog3_4_sourceIndexFacts :
    SourceRowFactsGoodCatalogOnRange
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.classifierSourceIndexKeyAt
      3 4 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_sourceIndexFactsCatalog
    selectorCatalog3_4

theorem selectorCatalog3_4_allGood :
    AllTranslationGoodCoverageOnRange 3 4 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_allGoodCoverage
    selectorCatalog3_4

theorem compactFreeSingletonRangeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9CompactFreeRange3Smoke
