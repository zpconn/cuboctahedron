import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000745Smoke

/-!
Generated DU.9AX membership half for a direct-local-key production-like rank smoke.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRank6000745Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge

abbrev rank : Nat := 6000745

abbrev RankGoodMaskMember (mask : SignMask) : Prop :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000745Smoke.generatedGoodMaskMember mask

/-- Positive GoodDirection survivor masks represented in this rank leaf. -/
inductive PositiveCase : SignMask -> Prop
  | m00 : PositiveCase (⟨8, by decide⟩ : SignMask)
  | m01 : PositiveCase (⟨13, by decide⟩ : SignMask)
  | m02 : PositiveCase (⟨16, by decide⟩ : SignMask)
  | m03 : PositiveCase (⟨22, by decide⟩ : SignMask)
  | m04 : PositiveCase (⟨28, by decide⟩ : SignMask)
  | m05 : PositiveCase (⟨29, by decide⟩ : SignMask)
  | m06 : PositiveCase (⟨30, by decide⟩ : SignMask)
  | m07 : PositiveCase (⟨31, by decide⟩ : SignMask)
  | m08 : PositiveCase (⟨45, by decide⟩ : SignMask)
  | m09 : PositiveCase (⟨47, by decide⟩ : SignMask)
  | m10 : PositiveCase (⟨54, by decide⟩ : SignMask)
  | m11 : PositiveCase (⟨55, by decide⟩ : SignMask)
  | m12 : PositiveCase (⟨63, by decide⟩ : SignMask)

private theorem signMask_eq_of_val_eq
    {mask : SignMask} {n : Nat} (hn : n < 64)
    (h : mask.val = n) :
    mask = (⟨n, hn⟩ : SignMask) :=
  Fin.ext h

theorem positiveCase_of_generatedGoodMaskMember
    {mask : SignMask}
    (hmem : RankGoodMaskMember mask) :
    PositiveCase mask := by
  rcases hmem with h | h | h | h | h | h | h | h | h | h | h | h | h
· have hmask : mask = (⟨8, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [hmask] using PositiveCase.m00
  · have hmask : mask = (⟨13, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [hmask] using PositiveCase.m01
  · have hmask : mask = (⟨16, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [hmask] using PositiveCase.m02
  · have hmask : mask = (⟨22, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [hmask] using PositiveCase.m03
  · have hmask : mask = (⟨28, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [hmask] using PositiveCase.m04
  · have hmask : mask = (⟨29, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [hmask] using PositiveCase.m05
  · have hmask : mask = (⟨30, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [hmask] using PositiveCase.m06
  · have hmask : mask = (⟨31, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [hmask] using PositiveCase.m07
  · have hmask : mask = (⟨45, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [hmask] using PositiveCase.m08
  · have hmask : mask = (⟨47, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [hmask] using PositiveCase.m09
  · have hmask : mask = (⟨54, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [hmask] using PositiveCase.m10
  · have hmask : mask = (⟨55, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [hmask] using PositiveCase.m11
  · have hmask : mask = (⟨63, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h
    simpa [hmask] using PositiveCase.m12

theorem positiveCase_of_GoodDirection
    {mask : SignMask} (hlt : rank < numPairWords)
    (hgood : GoodDirectionAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask) :
    PositiveCase mask :=
  positiveCase_of_generatedGoodMaskMember
    (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000745Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes hlt hgood)

abbrev Member (r : Nat) (mask : SignMask) : Prop :=
  r = rank ∧ PositiveCase mask

theorem membershipCoverage :
    GoodMaskMembershipOnIdentityRange Member rank (rank + 1) := by
  intro r hlt mask _hlo _hhi _hM hgood
  have hrank : r = rank := by omega
  subst r
  exact ⟨rfl, positiveCase_of_GoodDirection hlt hgood⟩

theorem membershipRankSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeMembershipRank6000745Smoke
