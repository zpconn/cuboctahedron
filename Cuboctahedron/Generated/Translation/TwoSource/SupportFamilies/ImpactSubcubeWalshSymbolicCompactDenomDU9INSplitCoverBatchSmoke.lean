import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank714Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank716Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank724Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank748Smoke

/-!
Generated DU9IN split compact-Walsh cover batch smoke.

This root intentionally imports only individually guarded split rank
cover roots.  Build it only after those roots have been checked under
the memory guard.

DU9IN ranks 714, 716, 724, and 748 were checked individually under serial memory guards before this root was emitted.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverBatchSmoke

theorem rank714_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 714 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨714, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank714Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank714Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank716_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 716 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨716, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank716Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank716Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank724_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 724 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨724, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank724Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank724Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank748_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 748 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨748, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank748Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank748Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem batchSplitCompactWalshCoverSmoke_builds : True := by
  have h714 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank714Smoke.splitCompactWalshCoverSmoke_builds
  have h716 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank716Smoke.splitCompactWalshCoverSmoke_builds
  have h724 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank724Smoke.splitCompactWalshCoverSmoke_builds
  have h748 : True :=
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverRank748Smoke.splitCompactWalshCoverSmoke_builds
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INSplitCoverBatchSmoke
