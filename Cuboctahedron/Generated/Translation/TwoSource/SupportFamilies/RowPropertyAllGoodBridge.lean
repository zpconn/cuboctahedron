import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

/-!
All-Good erasure for row-property membership families.

`MembershipBridge` cannot import `PairSignProducerMembershipBridge` without an
import cycle, because `SourceIndexState` imports `MembershipBridge`.  This
small downstream module provides the missing public erasure: a generated
row-property membership proof over an identity range can be consumed directly
as `AllTranslationGoodCoverageOnRange`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-- Direct row-property membership target, without packaging a named family. -/
abbrev RowPropertyParametricCoverageOnIdentityRange (lo hi : Nat) : Prop :=
  forall (r : Nat) (hlt : r < numPairWords) (mask : SignMask),
    lo <= r ->
      r < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) = (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨r, hlt⟩ mask ->
            RowPropertyParametricCovered r mask

/-- Empty interval constructor for direct row-property parametric coverage. -/
theorem RowPropertyParametricCoverageOnIdentityRange.empty
    {lo hi : Nat}
    (h : hi <= lo) :
    RowPropertyParametricCoverageOnIdentityRange lo hi := by
  intro r _hlt _mask hlo hhi _hM _hgood
  omega

/-- Singleton interval constructor for direct row-property parametric coverage. -/
theorem RowPropertyParametricCoverageOnIdentityRange.single
    {rank : Nat}
    (h :
      forall {mask : SignMask} (hlt : rank < numPairWords),
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            RowPropertyParametricCovered rank mask) :
    RowPropertyParametricCoverageOnIdentityRange rank (rank + 1) := by
  intro r hlt mask hlo hhi hM hgood
  have hrank : r = rank := by omega
  subst r
  exact h hlt hM hgood

/-- Concatenate adjacent direct row-property parametric coverage intervals. -/
theorem RowPropertyParametricCoverageOnIdentityRange.concat
    {lo mid hi : Nat}
    (left : RowPropertyParametricCoverageOnIdentityRange lo mid)
    (right : RowPropertyParametricCoverageOnIdentityRange mid hi) :
    RowPropertyParametricCoverageOnIdentityRange lo hi := by
  intro r hlt mask hlo hhi hM hgood
  by_cases hmid : r < mid
  · exact left r hlt mask hlo hmid hM hgood
  · exact right r hlt mask (Nat.le_of_not_lt hmid) hhi hM hgood

/-- Erase a named row-property membership family to the public all-Good range target. -/
theorem RowPropertyMembershipCoverageOnIdentityRange.to_allGoodCoverage
    {family : RowPropertyMembershipFamily} {lo hi : Nat}
    (hcoverage : RowPropertyMembershipCoverageOnIdentityRange family lo hi) :
    AllTranslationGoodCoverageOnRange lo hi := by
  intro r hlo hhi hlt mask hM
  exact RowPropertyMembershipFamily.identityRangeKills
    hcoverage r hlt mask hlo hhi hM

/-- Erase direct row-property parametric coverage to the public all-Good range target. -/
theorem RowPropertyParametricCoverageOnIdentityRange.to_allGoodCoverage
    {lo hi : Nat}
    (hcoverage : RowPropertyParametricCoverageOnIdentityRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi := by
  intro r hlo hhi hlt mask hM hgood
  exact RowPropertyParametricCovered.kills
    (hcoverage r hlt mask hlo hhi hM hgood) hgood

theorem rowPropertyAllGoodBridge_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge
