import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership

/-!
GoodDirection-membership half of the DU.9AU split for the `[0,1)` smoke range.

This module is allowed to import the compact-Walsh membership proof.  The point
of the split is that the semantic row module does not need that import.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRangeSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership

abbrev SelectorMember (rank : Nat) (mask : SignMask) : Prop :=
  SelectorPositiveCase rank mask

theorem membershipCoverage0_1 :
    GoodMaskMembershipOnIdentityRange SelectorMember 0 1 := by
  intro rank hlt mask hlo hhi _hM hgood
  have hrank : rank = 0 := by omega
  subst rank
  exact rank0_selectorPositive_of_GoodDirection hlt hgood

theorem membershipRangeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRangeSmoke
