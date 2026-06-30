import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956.Shard000
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956.Shard001
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank899PositiveMasksGeneratedSmoke

/-!
Generated compact-free selector range smoke for `[899,900)`.

The module avoids `SourceIndexStateSelectorDU9PCompactMembership` and
erases the rank-local positive-mask proof directly through DU.9L
source/row facts (split microshards Shard000, Shard001).  It is a bounded singleton-range smoke, not a
production family backend.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQCompactFreeRange899Smoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9RRangeAdapter
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQMicroRank896_956

def coordAt899_900 (rank : Nat) (mask : SignMask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke.SelectorCoordinate :=
  if mask.val = 8 then Shard000.selectorCoordAt rank mask else
    if mask.val = 9 then Shard000.selectorCoordAt rank mask else
      if mask.val = 13 then Shard000.selectorCoordAt rank mask else
        if mask.val = 16 then Shard000.selectorCoordAt rank mask else
          if mask.val = 18 then Shard000.selectorCoordAt rank mask else
            if mask.val = 22 then Shard000.selectorCoordAt rank mask else
              Shard001.selectorCoordAt rank mask

private theorem signMask_eq_of_val_eq
    {mask : SignMask} {n : Nat} (hn : n < 64)
    (h : mask.val = n) :
    mask = (⟨n, hn⟩ : SignMask) :=
  Fin.ext h

theorem rank899_selectorCoordinateSourceRowFacts_of_GoodDirection
    {mask : SignMask} (hlt : 899 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨899, hlt⟩ : Fin numPairWords) mask) :
    SelectorCoordinateSourceRowFacts (coordAt899_900 899 mask) 899 mask := by
  have hmember : Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank899PositiveMasksGeneratedSmoke.rank899PositiveMaskMember mask :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank899PositiveMasksGeneratedSmoke.goodDirection_rank899PositiveMaskMember hlt hgood
  rcases hmember with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h
  · have hmask : mask = (⟨8, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard000.selectorPositiveSourceRowFacts Shard000.SelectorPositiveCase.c026
  · have hmask : mask = (⟨9, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard000.selectorPositiveSourceRowFacts Shard000.SelectorPositiveCase.c027
  · have hmask : mask = (⟨13, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard000.selectorPositiveSourceRowFacts Shard000.SelectorPositiveCase.c028
  · have hmask : mask = (⟨16, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard000.selectorPositiveSourceRowFacts Shard000.SelectorPositiveCase.c029
  · have hmask : mask = (⟨18, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard000.selectorPositiveSourceRowFacts Shard000.SelectorPositiveCase.c030
  · have hmask : mask = (⟨22, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard000.selectorPositiveSourceRowFacts Shard000.SelectorPositiveCase.c031
  · have hmask : mask = (⟨24, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard001.selectorPositiveSourceRowFacts Shard001.SelectorPositiveCase.c000
  · have hmask : mask = (⟨28, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard001.selectorPositiveSourceRowFacts Shard001.SelectorPositiveCase.c001
  · have hmask : mask = (⟨29, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard001.selectorPositiveSourceRowFacts Shard001.SelectorPositiveCase.c002
  · have hmask : mask = (⟨30, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard001.selectorPositiveSourceRowFacts Shard001.SelectorPositiveCase.c003
  · have hmask : mask = (⟨31, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard001.selectorPositiveSourceRowFacts Shard001.SelectorPositiveCase.c004
  · have hmask : mask = (⟨45, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard001.selectorPositiveSourceRowFacts Shard001.SelectorPositiveCase.c005
  · have hmask : mask = (⟨47, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard001.selectorPositiveSourceRowFacts Shard001.SelectorPositiveCase.c006
  · have hmask : mask = (⟨54, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard001.selectorPositiveSourceRowFacts Shard001.SelectorPositiveCase.c007
  · have hmask : mask = (⟨55, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard001.selectorPositiveSourceRowFacts Shard001.SelectorPositiveCase.c008
  · have hmask : mask = (⟨63, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [coordAt899_900, hmask] using
      Shard001.selectorPositiveSourceRowFacts Shard001.SelectorPositiveCase.c009

theorem selectorCatalog899_900 :
    SelectorCoordinateFactsGoodCatalogOnRangeFor coordAt899_900 899 900 := by
  intro rank mask hlt _hlo hhi _hM hgood
  have hrank : rank = 899 := by omega
  subst rank
  exact rank899_selectorCoordinateSourceRowFacts_of_GoodDirection hlt hgood

theorem selectorCatalog899_900_sourceIndexFacts :
    SourceRowFactsGoodCatalogOnRange
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke.classifierSourceIndexKeyAt
      899 900 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_sourceIndexFactsCatalog
    selectorCatalog899_900

theorem selectorCatalog899_900_allGood :
    AllTranslationGoodCoverageOnRange 899 900 :=
  SelectorCoordinateFactsGoodCatalogOnRangeFor.to_allGoodCoverage
    selectorCatalog899_900

theorem compactFreeSingletonRangeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9IQCompactFreeRange899Smoke
