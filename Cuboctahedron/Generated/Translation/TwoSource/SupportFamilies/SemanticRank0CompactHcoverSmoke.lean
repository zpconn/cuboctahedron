import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank0BatchSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke

/-!
Rank-0 compact hcover smoke.

`SemanticSurvivorOnlyRank0Smoke` proves the descriptor/candidate side from an
explicit premise saying that every `GoodDirectionAtRank` mask is one of the
rank-0 survivor masks.  The compact Walsh cover already proves the same
GoodDirection-to-positive-mask fact through impact-subcube obstructions.  This
file is the small adapter between those two theorem surfaces.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticRank0CompactHcoverSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage

abbrev Rank0CompactGoodMaskMember (mask : SignMask) : Prop :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank0Smoke.generatedGoodMaskMember mask

private theorem signMask_eq_of_val_eq
    {mask : SignMask} {n : Nat} (hn : n < 64)
    (h : mask.val = n) :
    mask = (⟨n, hn⟩ : SignMask) :=
  Fin.ext h

private theorem rank0SurvivorMask_of_compactGoodMaskMember
    {mask : SignMask}
    (h : Rank0CompactGoodMaskMember mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask mask := by
  rcases h with h08 | h09 | h13 | h16 | h18 | h22 | h24 | h28 |
    h29 | h30 | h31 | h45 | h47 | h54 | h55 | h63
  · have hmask : mask = (⟨8, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h08
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_08
  · have hmask : mask = (⟨9, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h09
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_09
  · have hmask : mask = (⟨13, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h13
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_13
  · have hmask : mask = (⟨16, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h16
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_16
  · have hmask : mask = (⟨18, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h18
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_18
  · have hmask : mask = (⟨22, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h22
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_22
  · have hmask : mask = (⟨24, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h24
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_24
  · have hmask : mask = (⟨28, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h28
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_28
  · have hmask : mask = (⟨29, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h29
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_29
  · have hmask : mask = (⟨30, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h30
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_30
  · have hmask : mask = (⟨31, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h31
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_31
  · have hmask : mask = (⟨45, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h45
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_45
  · have hmask : mask = (⟨47, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h47
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_47
  · have hmask : mask = (⟨54, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h54
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_54
  · have hmask : mask = (⟨55, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h55
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_55
  · have hmask : mask = (⟨63, by decide⟩ : SignMask) :=
      signMask_eq_of_val_eq (by decide) h63
    simpa [hmask] using Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask.mask_63

theorem rank0SurvivorMask_of_goodDirection
    {mask : SignMask}
    (hgood :
      GoodDirectionAtRank (⟨0, by decide⟩ : Fin numPairWords) mask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.Rank0SurvivorMask mask := by
  have hlt : 0 < numPairWords := by decide
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) =
        (⟨0, by decide⟩ : Fin numPairWords) := by
    ext
    rfl
  have hgood' : GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask := by
    simpa [hrank] using hgood
  exact rank0SurvivorMask_of_compactGoodMaskMember
    (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank0BatchSmoke.rank0_goodMaskMember_of_GoodDirection hlt hgood')

theorem rank0DescriptorGoodCoverage_viaCompactWalsh :
    SourceIndexStateDescriptorGoodCoverageOnRange 0 1 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.rank0DescriptorGoodCoverage_of_survivorMask
    (by
      intro mask hgood
      exact rank0SurvivorMask_of_goodDirection hgood)

theorem rank0AllGoodCoverage_viaCompactWalsh :
    AllTranslationGoodCoverageOnRange 0 1 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyRank0Smoke.rank0AllGoodCoverage_of_survivorMask
    (by
      intro mask hgood
      exact rank0SurvivorMask_of_goodDirection hgood)

theorem semanticRank0CompactHcoverSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticRank0CompactHcoverSmoke
