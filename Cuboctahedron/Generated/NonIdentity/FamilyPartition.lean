import Cuboctahedron.Generated.NonIdentity.ParametricSample

/-!
Generated exhaustive compressed-family partition witness for
Step 14E.7B2A.

This module instantiates the public partition-witness API with exact
classifier predicates over `unrankPairWord`. The full exhaustive
fallback remains gated until Step 14E.7B emits residual certificates.
-/

namespace Cuboctahedron.Generated.NonIdentity

noncomputable def exhaustiveFamilyPartition : NonIdFamilyPartition where
  CoversBadDirection := fun r =>
    nonIdEarlyFamilyClassOfRank r =
      NonIdFamilyClass.badDirectionSign
  CoversBadPairBalance := fun r =>
    nonIdEarlyFamilyClassOfRank r =
      NonIdFamilyClass.badPairBalance
  badDirection_sound := by
    intro r hclass
    exact nonIdEarlyFamilyClassOfRank_badDirection_sound hclass
  badPairBalance_sound := by
    intro r hclass
    exact nonIdEarlyFamilyClassOfRank_badPairBalance_sound hclass

noncomputable def sampleFamilyPartition : NonIdFamilyPartition :=
  exhaustiveFamilyPartition

theorem exhaustiveBadDirectionPartition_sound
    {r : Fin numPairWords}
    (hcontains : exhaustiveFamilyPartition.CoversBadDirection r) :
    NonIdBadDirectionFamilyCovers r :=
  exhaustiveFamilyPartition.badDirection_sound hcontains

theorem exhaustiveBadPairBalancePartition_sound
    {r : Fin numPairWords}
    (hcontains : exhaustiveFamilyPartition.CoversBadPairBalance r) :
    NonIdBadPairBalanceFamilyCovers r :=
  exhaustiveFamilyPartition.badPairBalance_sound hcontains

#check exhaustiveNonIdBadDirectionFamily_partition
#check exhaustiveNonIdBadPairBalanceFamily_partition
#check exhaustiveBadDirectionPartition_sound
#check exhaustiveBadPairBalancePartition_sound

end Cuboctahedron.Generated.NonIdentity
