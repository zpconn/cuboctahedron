import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IKSplitCoverRank519Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IKSplitCoverRank561Smoke

/-!
Generated DU9IK split compact-Walsh cover batch smoke.

This root intentionally imports only the individually guarded split rank cover
roots, not the older monolithic compact-Walsh batch route. Build it only after
the split rank roots have been checked serially under the memory guard.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IKSplitCoverBatchSmoke

theorem rank519_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 519 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨519, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IKSplitCoverRank519Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IKSplitCoverRank519Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank561_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 561 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨561, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IKSplitCoverRank561Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IKSplitCoverRank561Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem batchSplitCompactWalshCoverSmoke_builds : True := by
  have h519 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IKSplitCoverRank519Smoke.splitCompactWalshCoverSmoke_builds
  have h561 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IKSplitCoverRank561Smoke.splitCompactWalshCoverSmoke_builds
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IKSplitCoverBatchSmoke
