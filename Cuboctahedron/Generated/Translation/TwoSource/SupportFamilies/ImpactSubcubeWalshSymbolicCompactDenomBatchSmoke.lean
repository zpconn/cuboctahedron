import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000745Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000625Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000480Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000720Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000662Smoke

/-!
Generated AP16DJ compact Walsh-cover batch root smoke.

This root is intentionally shallow.  It should be built only after every
per-signature selected-impact target has been prebuilt serially under the
AP16DI memory guard.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomBatchSmoke

theorem rank6000745_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 6000745 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨6000745, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000745Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000745Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank6000625_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 6000625 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨6000625, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000625Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000625Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank6000480_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 6000480 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨6000480, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000480Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000480Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank6000720_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 6000720 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨6000720, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000720Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000720Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem rank6000662_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 6000662 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨6000662, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000662Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000662Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem batchCompactWalshCoverSmoke_builds : True := by
  have h6000745 : True := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000745Smoke.compactWalshCoverSmoke_builds
  have h6000625 : True := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000625Smoke.compactWalshCoverSmoke_builds
  have h6000480 : True := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000480Smoke.compactWalshCoverSmoke_builds
  have h6000720 : True := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000720Smoke.compactWalshCoverSmoke_builds
  have h6000662 : True := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000662Smoke.compactWalshCoverSmoke_builds
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomBatchSmoke
