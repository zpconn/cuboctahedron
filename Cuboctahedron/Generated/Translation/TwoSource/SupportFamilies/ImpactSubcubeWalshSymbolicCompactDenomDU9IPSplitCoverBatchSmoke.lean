import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank834Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank837Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank839Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Smoke

/-!
Generated DU9IP split compact-Walsh cover batch smoke.

This root intentionally imports only individually guarded split rank
cover roots.  Build it only after those roots have been checked under
the memory guard.

DU9IP ranks 834, 837, 839, and 840 were checked individually under serial memory guards before this root was emitted.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverBatchSmoke

theorem rank834_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 834 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨834, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank834Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank834Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank837_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 837 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨837, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank837Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank837Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank839_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 839 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨839, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank839Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank839Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank840_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 840 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨840, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem batchSplitCompactWalshCoverSmoke_builds : True := by
  have h834 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank834Smoke.splitCompactWalshCoverSmoke_builds
  have h837 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank837Smoke.splitCompactWalshCoverSmoke_builds
  have h839 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank839Smoke.splitCompactWalshCoverSmoke_builds
  have h840 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Smoke.splitCompactWalshCoverSmoke_builds
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverBatchSmoke
