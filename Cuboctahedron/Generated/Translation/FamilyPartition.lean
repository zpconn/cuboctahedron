import Cuboctahedron.Generated.Translation.ParametricSample

/-!
Generated exhaustive compressed-family partition witness for
Step 14E.7B2A.

This module instantiates the public partition-witness API with exact
classifier predicates over `unrankPairWord` and `SignMask`. The full
exhaustive fallback remains gated until Step 14E.7B emits Farkas
certificates.
-/

namespace Cuboctahedron.Generated.Translation

noncomputable def exhaustiveFamilyPartition : TranslationFamilyPartition where
  CoversBadDirection := fun r mask =>
    translationEarlyFamilyClassOfChoice r mask =
      TranslationFamilyClass.badDirectionSign
  CoversBadVector := fun r mask =>
    translationEarlyFamilyClassOfChoice r mask =
      TranslationFamilyClass.badTranslationVector
  badDirection_sound := by
    intro r mask hclass
    exact translationEarlyFamilyClassOfChoice_badDirection_sound hclass
  badVector_sound := by
    intro r mask hclass
    exact translationEarlyFamilyClassOfChoice_badVector_sound hclass

noncomputable def sampleFamilyPartition : TranslationFamilyPartition :=
  exhaustiveFamilyPartition

theorem exhaustiveBadDirectionPartition_sound
    {r : Fin numPairWords} {mask : SignMask}
    (hcontains : exhaustiveFamilyPartition.CoversBadDirection r mask) :
    TranslationBadDirectionFamilyCovers r mask :=
  exhaustiveFamilyPartition.badDirection_sound hcontains

theorem exhaustiveBadVectorPartition_sound
    {r : Fin numPairWords} {mask : SignMask}
    (hcontains : exhaustiveFamilyPartition.CoversBadVector r mask) :
    TranslationBadVectorFamilyCovers r mask :=
  exhaustiveFamilyPartition.badVector_sound hcontains

#check exhaustiveTranslationBadDirectionFamily_partition
#check exhaustiveTranslationBadVectorFamily_partition
#check exhaustiveBadDirectionPartition_sound
#check exhaustiveBadVectorPartition_sound

end Cuboctahedron.Generated.Translation
