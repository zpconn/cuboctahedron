import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-!
Small semantic interface for row-property membership families.

`RowPropertyQuotient` already proves that an existential row-property fact
kills a GoodDirection translation case.  The remaining compression problem is
to prove those membership facts from shared state/signature data rather than
from one rank/mask reconstruction at a time.  This module packages that target
as a tiny Prop-level family interface.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

structure RowPropertyMembershipFamily where
  Applies : Nat -> SignMask -> Prop
  covered :
    forall {r : Nat} {mask : SignMask},
      Applies r mask -> RowPropertyParametricCovered r mask

def RowPropertyMembershipFamily.KillsOn
    (family : RowPropertyMembershipFamily) : Prop :=
  forall (r : Nat) (hlt : r < numPairWords) (mask : SignMask),
    family.Applies r mask -> TranslationGoodCaseKilled ⟨r, hlt⟩ mask

theorem RowPropertyMembershipFamily.killsOn
    (family : RowPropertyMembershipFamily) :
    family.KillsOn := by
  intro r hlt mask happ
  exact RowPropertyParametricCovered.kills (family.covered happ)

def RowPropertyMembershipCoverageOnRange
    (family : RowPropertyMembershipFamily) (lo hi : Nat) : Prop :=
  forall (r : Nat) (hlt : r < numPairWords) (mask : SignMask),
    lo <= r ->
      r < hi ->
        GoodDirectionAtRank ⟨r, hlt⟩ mask ->
          family.Applies r mask

def RowPropertyMembershipCoverageOnIdentityRange
    (family : RowPropertyMembershipFamily) (lo hi : Nat) : Prop :=
  forall (r : Nat) (hlt : r < numPairWords) (mask : SignMask),
    lo <= r ->
      r < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) = (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨r, hlt⟩ mask ->
            family.Applies r mask

theorem RowPropertyMembershipFamily.rangeKills
    {family : RowPropertyMembershipFamily} {lo hi : Nat}
    (hcoverage : RowPropertyMembershipCoverageOnRange family lo hi)
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (hlo : lo <= r) (hhi : r < hi) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  intro hgood
  exact family.killsOn r hlt mask
    (hcoverage r hlt mask hlo hhi hgood) hgood

theorem RowPropertyMembershipFamily.identityRangeKills
    {family : RowPropertyMembershipFamily} {lo hi : Nat}
    (hcoverage : RowPropertyMembershipCoverageOnIdentityRange family lo hi)
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (hlo : lo <= r) (hhi : r < hi)
    (hM : totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) =
      (matId : Mat3 Rat)) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  intro hgood
  exact family.killsOn r hlt mask
    (hcoverage r hlt mask hlo hhi hM hgood) hgood

theorem membershipBridge_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
