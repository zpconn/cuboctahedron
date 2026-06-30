import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank87Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank89Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank120Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank122Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank123Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank125Smoke

/-!
Shallow compact-Walsh split-cover batch root for the DU9HM bounded smoke window.

This root deliberately imports only the six accepted split-cover rank roots.  It
does not import or revive the rejected monolithic DU9HM cover root shape.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HMBatchSmoke

theorem rank87_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 87 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨87, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank87Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank87Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank89_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 89 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨89, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank89Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank89Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank120_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 120 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨120, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank120Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank120Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank122_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 122 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨122, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank122Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank122Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank123_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 123 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨123, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank123Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank123Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank125_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 125 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨125, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank125Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank125Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem splitBatchCompactWalshCoverSmoke_builds : True := by
  have h87 : True := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank87Smoke.splitCompactWalshCoverSmoke_builds
  have h89 : True := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank89Smoke.splitCompactWalshCoverSmoke_builds
  have h120 : True := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank120Smoke.splitCompactWalshCoverSmoke_builds
  have h122 : True := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank122Smoke.splitCompactWalshCoverSmoke_builds
  have h123 : True := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank123Smoke.splitCompactWalshCoverSmoke_builds
  have h125 : True := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HNSplitCoverRank125Smoke.splitCompactWalshCoverSmoke_builds
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HMBatchSmoke
