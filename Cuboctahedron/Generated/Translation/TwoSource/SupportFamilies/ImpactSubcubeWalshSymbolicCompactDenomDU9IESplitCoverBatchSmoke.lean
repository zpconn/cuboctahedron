import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IESplitCoverRank209Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IESplitCoverRank251Smoke

/-!
Generated DU9IE split compact-Walsh cover batch smoke.

This root intentionally imports the split rank cover roots, not the older
monolithic `CoverRank...` modules.  Build it only after the split subcube
targets have been checked serially under the memory guard.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IESplitCoverBatchSmoke

theorem rank209_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 209 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨209, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IESplitCoverRank209Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IESplitCoverRank209Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank251_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 251 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨251, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IESplitCoverRank251Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IESplitCoverRank251Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem batchSplitCompactWalshCoverSmoke_builds : True := by
  have h209 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IESplitCoverRank209Smoke.splitCompactWalshCoverSmoke_builds
  have h251 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IESplitCoverRank251Smoke.splitCompactWalshCoverSmoke_builds
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IESplitCoverBatchSmoke
