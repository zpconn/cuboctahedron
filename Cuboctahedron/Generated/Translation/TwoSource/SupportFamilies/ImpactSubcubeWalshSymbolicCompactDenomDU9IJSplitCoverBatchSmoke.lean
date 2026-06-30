import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank449Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank498Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank501Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank503Smoke

/-!
Generated DU9IJ split compact-Walsh cover batch smoke.

This root intentionally imports only the individually guarded split rank cover
roots, not the older monolithic compact-Walsh batch route. Build it only after
the split rank roots have been checked serially under the memory guard.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverBatchSmoke

theorem rank449_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 449 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨449, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank449Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank449Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank498_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 498 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨498, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank498Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank498Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank501_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 501 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨501, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank501Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank501Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank503_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 503 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨503, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank503Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank503Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem batchSplitCompactWalshCoverSmoke_builds : True := by
  have h449 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank449Smoke.splitCompactWalshCoverSmoke_builds
  have h498 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank498Smoke.splitCompactWalshCoverSmoke_builds
  have h501 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank501Smoke.splitCompactWalshCoverSmoke_builds
  have h503 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank503Smoke.splitCompactWalshCoverSmoke_builds
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverBatchSmoke
