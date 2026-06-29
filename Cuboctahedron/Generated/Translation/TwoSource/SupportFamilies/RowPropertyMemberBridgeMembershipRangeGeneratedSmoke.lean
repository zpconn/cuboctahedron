import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRangeGeneratedSmoke

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

theorem membershipCoverage2_4 :
    GoodMaskMembershipOnIdentityRange SelectorMember 2 4 := by
  intro rank hlt mask hlo hhi _hM hgood
  have hrank : rank = 2 ∨ rank = 3 := by omega
  rcases hrank with hrank | hrank
  · subst rank
    exact rank2_selectorPositive_of_GoodDirection hlt hgood
  · subst rank
    exact rank3_selectorPositive_of_GoodDirection hlt hgood

theorem membershipRangeGeneratedSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRangeGeneratedSmoke
