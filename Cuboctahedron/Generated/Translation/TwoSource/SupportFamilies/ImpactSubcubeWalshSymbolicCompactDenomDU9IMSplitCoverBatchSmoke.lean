import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank641Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank647Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank654Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank659Smoke

/-!
Generated DU9IM split compact-Walsh cover batch smoke.

This root intentionally imports only the individually guarded split rank cover
roots, not the older monolithic compact-Walsh batch route. Build it only after
the split rank roots have been checked serially under the memory guard.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverBatchSmoke

theorem rank641_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 641 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨641, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank641Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank641Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank647_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 647 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨647, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank647Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank647Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank654_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 654 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨654, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank654Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank654Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank657_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 657 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨657, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank659_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 659 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨659, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank659Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank659Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem batchSplitCompactWalshCoverSmoke_builds : True := by
  have h641 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank641Smoke.splitCompactWalshCoverSmoke_builds
  have h647 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank647Smoke.splitCompactWalshCoverSmoke_builds
  have h654 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank654Smoke.splitCompactWalshCoverSmoke_builds
  have h657 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Smoke.splitCompactWalshCoverSmoke_builds
  have h659 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank659Smoke.splitCompactWalshCoverSmoke_builds
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverBatchSmoke
