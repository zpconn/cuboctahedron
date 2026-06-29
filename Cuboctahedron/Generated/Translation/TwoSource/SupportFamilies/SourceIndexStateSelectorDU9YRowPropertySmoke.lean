import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership

/-!
DU.9Y row-property bridge smoke.

This checks the direct DU.9X route on the real nonempty bounded range `[0,1)`.
Instead of erasing through selector-coordinate source/row facts, the smoke
selects a `SourceIndexStateKey`, proves source/row facts for that key, obtains
`RowPropertyParametricCoverageOnIdentityRange`, and then erases to the public
all-Good coverage theorem.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9YRowPropertySmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

def coordAt0_1 (rank : Nat) (mask : SignMask) : SelectorCoordinate :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.selectorCoordAt
    rank mask

def sourceKeyAt0_1 (rank : Nat) (mask : SignMask) : SourceIndexStateKey :=
  match keyOfSelectorCoordinate? (coordAt0_1 rank mask) with
  | some key => key.toSourceIndexStateKey
  | none => ClassifierKey.k000.toSourceIndexStateKey

theorem rowPropertyCoverage0_1 :
    RowPropertyParametricCoverageOnIdentityRange 0 1 := by
  apply RowPropertyParametricCoverageOnIdentityRange.of_keyAt_source_row
    (keyAt := sourceKeyAt0_1)
  intro rank mask hlt _hlo hhi _hM hgood
  have hrank : rank = 0 := by omega
  subst rank
  have hcase :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership.rank0_selectorPositive_of_GoodDirection
      hlt hgood
  cases hcase with
  | shard000 h =>
      rcases
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.selectorPositiveLookup
          h with
        ⟨key, hlookup⟩
      have hfacts :=
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.Shard000.selectorPositiveSourceRowFacts
          h
      unfold SelectorCoordinateSourceRowFacts at hfacts
      rw [hlookup] at hfacts
      have hkey : sourceKeyAt0_1 0 mask = key.toSourceIndexStateKey := by
        simp [sourceKeyAt0_1, coordAt0_1, hlookup]
      rw [hkey]
      exact ⟨hfacts.1, hfacts.2⟩
  | shard001 h =>
      cases h
  | shard002 h =>
      cases h

theorem rowPropertyCoverage0_1_allGood :
    AllTranslationGoodCoverageOnRange 0 1 :=
  RowPropertyParametricCoverageOnIdentityRange.to_allGoodCoverage
    rowPropertyCoverage0_1

theorem rowPropertySmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9YRowPropertySmoke
