import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank3Smoke

/-!
Generated AP16DJ compact Walsh-cover batch root smoke.

This root is intentionally shallow.  It should be built only after every
per-signature selected-impact target has been prebuilt serially under the
AP16DI memory guard.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank3BatchSmoke

theorem rank3_goodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 3 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank3Smoke.generatedGoodMaskMember mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank3Smoke.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    hlt hgood

theorem batchCompactWalshCoverSmoke_builds : True := by
  have h3 : True := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank3Smoke.compactWalshCoverSmoke_builds
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank3BatchSmoke
