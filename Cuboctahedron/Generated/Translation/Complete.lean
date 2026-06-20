import Cuboctahedron.Generated.Coverage.Predicates
import Cuboctahedron.Generated.Coverage.ComputableClassifiers
import Cuboctahedron.Generated.Translation.FamilyPartition

/-!
Assembly layer for generated translation coverage.

The early translation families already eliminate bad direction signs and bad
translation vectors.  This module assembles those pieces behind a single theorem
that is conditional on the remaining generated Farkas bridge.
-/

namespace Cuboctahedron.Generated.Translation

abbrev FarkasBridge : Prop :=
  forall {r : Fin numPairWords} {mask : SignMask},
    translationEarlyFamilyClassOfChoice r mask =
        TranslationFamilyClass.needsFarkas ->
      totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) ->
        exists cert : TranslationCert,
          cert.word = unrankPairWord r /\
            cert.signMask = mask /\
              checkTranslationCert cert = true

theorem complete_of_farkas_bridge
    (farkasBridge : FarkasBridge)
    (r : Fin numPairWords)
    (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord r) =
      (matId : Mat3 Rat)) :
    exists cert : TranslationCert,
      cert.word = unrankPairWord r /\
        cert.signMask = mask /\
          checkTranslationCert cert = true := by
  classical
  cases hclass : translationEarlyFamilyClassOfChoice r mask with
  | badDirectionSign =>
      have hcontains :
          exhaustiveFamilyPartition.CoversBadDirection r mask := by
        simp [exhaustiveFamilyPartition, hclass]
      exact exhaustiveTranslationBadDirectionFamily_sound
        (exhaustiveBadDirectionPartition_sound hcontains)
  | badTranslationVector =>
      have hcontains :
          exhaustiveFamilyPartition.CoversBadVector r mask := by
        simp [exhaustiveFamilyPartition, hclass]
      exact exhaustiveTranslationBadVectorFamily_sound
        (exhaustiveBadVectorPartition_sound hcontains)
  | needsFarkas =>
      exact farkasBridge hclass hM

theorem complete_no_feasible_of_farkas_bridge
    (farkasBridge : FarkasBridge)
    (r : Fin numPairWords)
    (mask : SignMask) :
    Coverage.TranslationCaseKilled r mask :=
  Coverage.TranslationCaseCertified.killed
    (complete_of_farkas_bridge farkasBridge r mask)

theorem complete_of_computable_farkas_bridge
    (classifier : Coverage.TranslationComputableClassifier)
    (farkasBridge : classifier.FarkasBridge)
    (r : Fin numPairWords)
    (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord r) =
      (matId : Mat3 Rat)) :
    exists cert : TranslationCert,
      cert.word = unrankPairWord r /\
        cert.signMask = mask /\
          checkTranslationCert cert = true :=
  classifier.complete_of_farkas_bridge farkasBridge r mask hM

theorem complete_no_feasible_of_computable_farkas_bridge
    (classifier : Coverage.TranslationComputableClassifier)
    (farkasBridge : classifier.FarkasBridge)
    (r : Fin numPairWords)
    (mask : SignMask) :
    Coverage.TranslationCaseKilled r mask :=
  Coverage.TranslationCaseCertified.killed
    (complete_of_computable_farkas_bridge
      classifier farkasBridge r mask)

end Cuboctahedron.Generated.Translation
