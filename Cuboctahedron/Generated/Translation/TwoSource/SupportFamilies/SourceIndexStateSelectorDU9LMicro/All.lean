import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002

/-!
Root for the DU.9M selector-coordinate positive-survivor microshards.

The microshards intentionally prove only source/row facts for emitted
GoodDirection survivor cases.  This root erases those selector facts to the
semantic `TranslationGoodCaseKilled` target.  It does not yet claim that every
GoodDirection survivor belongs to the positive language; that membership
bridge is the next bounded checkpoint.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

abbrev Shard000Case :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.SelectorPositiveCase
abbrev Shard001Case :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.SelectorPositiveCase
abbrev Shard002Case :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002.SelectorPositiveCase

abbrev shard000CoordAt :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.selectorCoordAt
abbrev shard001CoordAt :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.selectorCoordAt
abbrev shard002CoordAt :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002.selectorCoordAt

inductive SelectorPositiveCase : Nat -> SignMask -> Prop
  | shard000 {rank : Nat} {mask : SignMask}
      (hcase : Shard000Case rank mask) :
      SelectorPositiveCase rank mask
  | shard001 {rank : Nat} {mask : SignMask}
      (hcase : Shard001Case rank mask) :
      SelectorPositiveCase rank mask
  | shard002 {rank : Nat} {mask : SignMask}
      (hcase : Shard002Case rank mask) :
      SelectorPositiveCase rank mask

theorem selectorPositiveSourceRowFacts
    {rank : Nat} {mask : SignMask}
    (hcase : SelectorPositiveCase rank mask) :
    exists key : SourceIndexStateKey,
      SourceIndexStateSourceFacts key rank mask /\
        SourceIndexStateRowFacts key rank mask := by
  cases hcase with
  | shard000 h =>
      have hfacts :=
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.selectorPositiveSourceRowFacts h
      unfold SelectorCoordinateSourceRowFacts at hfacts
      cases hkey : keyOfSelectorCoordinate? (shard000CoordAt rank mask) with
      | none =>
          rw [hkey] at hfacts
          exact False.elim hfacts
      | some key =>
          rw [hkey] at hfacts
          exact ⟨key.toSourceIndexStateKey, hfacts⟩
  | shard001 h =>
      have hfacts :=
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard001.selectorPositiveSourceRowFacts h
      unfold SelectorCoordinateSourceRowFacts at hfacts
      cases hkey : keyOfSelectorCoordinate? (shard001CoordAt rank mask) with
      | none =>
          rw [hkey] at hfacts
          exact False.elim hfacts
      | some key =>
          rw [hkey] at hfacts
          exact ⟨key.toSourceIndexStateKey, hfacts⟩
  | shard002 h =>
      have hfacts :=
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard002.selectorPositiveSourceRowFacts h
      unfold SelectorCoordinateSourceRowFacts at hfacts
      cases hkey : keyOfSelectorCoordinate? (shard002CoordAt rank mask) with
      | none =>
          rw [hkey] at hfacts
          exact False.elim hfacts
      | some key =>
          rw [hkey] at hfacts
          exact ⟨key.toSourceIndexStateKey, hfacts⟩

theorem selectorPositiveGoodKilled
    {rank : Nat} {hlt : rank < numPairWords} {mask : SignMask}
    (hcase : SelectorPositiveCase rank mask) :
    TranslationGoodCaseKilled ⟨rank, hlt⟩ mask := by
  rcases selectorPositiveSourceRowFacts hcase with ⟨key, hsource, hrows⟩
  exact key.goodKilled_of_source_row hsource hrows

theorem selectorPositiveRoot_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro
