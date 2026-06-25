import Cuboctahedron.Generated.Coverage.Predicates

/-!
Computable generated classifier bridge.

The original early-family classifiers were Prop-level wrappers around
existential certificate predicates.  That is fine for hand-written assembly, but
it is a poor target for generated interval files because `decide` cannot reduce
through those existential searches.

This module gives generated files a Boolean-facing bridge instead.  A generated
backend can provide lists of parametric families, classify a concrete rank or
translation choice by exact Boolean checks, and then use the soundness theorems
here to recover the same semantic certificate witnesses.
-/

namespace Cuboctahedron.Generated.Coverage

structure NonIdComputableClassifier where
  badDirectionFamilies : List NonIdParametricFamily
  badPairBalanceFamilies : List NonIdParametricFamily

namespace NonIdComputableClassifier

noncomputable def classOfRank
    (classifier : NonIdComputableClassifier)
    (r : Fin numPairWords) : NonIdFamilyClass :=
  if checkNonIdParametricFamiliesAtB
      classifier.badDirectionFamilies
      NonIdFamilyFailure.badDirectionSign r then
    NonIdFamilyClass.badDirectionSign
  else if checkNonIdParametricFamiliesAtB
      classifier.badPairBalanceFamilies
      NonIdFamilyFailure.badPairBalance r then
    NonIdFamilyClass.badPairBalance
  else
    NonIdFamilyClass.residual

theorem badDirection_exists_cert
    (classifier : NonIdComputableClassifier)
    {r : Fin numPairWords}
    (hclass :
      classifier.classOfRank r =
        NonIdFamilyClass.badDirectionSign) :
    exists cert : NonIdCert,
      cert.word = unrankPairWord r /\
        checkNonIdCert cert = true := by
  unfold classOfRank at hclass
  cases hdir :
      checkNonIdParametricFamiliesAtB
        classifier.badDirectionFamilies
        NonIdFamilyFailure.badDirectionSign r
  · simp [hdir] at hclass
    cases hbalance :
        checkNonIdParametricFamiliesAtB
          classifier.badPairBalanceFamilies
          NonIdFamilyFailure.badPairBalance r
    · simp [hbalance] at hclass
    · simp [hbalance] at hclass
  · exact checkNonIdParametricFamiliesAtB_exists_cert hdir

theorem badPairBalance_exists_cert
    (classifier : NonIdComputableClassifier)
    {r : Fin numPairWords}
    (hclass :
      classifier.classOfRank r =
        NonIdFamilyClass.badPairBalance) :
    exists cert : NonIdCert,
      cert.word = unrankPairWord r /\
        checkNonIdCert cert = true := by
  unfold classOfRank at hclass
  cases hdir :
      checkNonIdParametricFamiliesAtB
        classifier.badDirectionFamilies
        NonIdFamilyFailure.badDirectionSign r
  · simp [hdir] at hclass
    cases hbalance :
        checkNonIdParametricFamiliesAtB
          classifier.badPairBalanceFamilies
          NonIdFamilyFailure.badPairBalance r
    · simp [hbalance] at hclass
    · exact checkNonIdParametricFamiliesAtB_exists_cert hbalance
  · simp [hdir] at hclass

def ResidualBridge
    (classifier : NonIdComputableClassifier) : Prop :=
  forall {r : Fin numPairWords},
    classifier.classOfRank r = NonIdFamilyClass.residual ->
      totalLinearOfPairWord (unrankPairWord r) ≠
          (matId : Mat3 Rat) ->
        exists cert : NonIdCert,
          cert.word = unrankPairWord r /\
            checkNonIdCert cert = true

def KilledResidualBridge
    (classifier : NonIdComputableClassifier) : Prop :=
  forall {r : Fin numPairWords},
    classifier.classOfRank r = NonIdFamilyClass.residual ->
      totalLinearOfPairWord (unrankPairWord r) ≠
          (matId : Mat3 Rat) ->
        NonIdentityRankKilled r

theorem complete_of_residual_bridge
    (classifier : NonIdComputableClassifier)
    (residualBridge : classifier.ResidualBridge)
    (r : Fin numPairWords) :
    NonIdentityRankCertified r := by
  intro hM
  cases hclass : classifier.classOfRank r with
  | badDirectionSign =>
      exact classifier.badDirection_exists_cert hclass
  | badPairBalance =>
      exact classifier.badPairBalance_exists_cert hclass
  | residual =>
      exact residualBridge hclass hM

theorem killed_of_residual_bridge
    (classifier : NonIdComputableClassifier)
    (residualBridge : classifier.ResidualBridge)
    (r : Fin numPairWords) :
    NonIdentityRankKilled r :=
  NonIdentityRankCertified.killed
    (classifier.complete_of_residual_bridge residualBridge r)

theorem complete_killed_of_residual_bridge
    (classifier : NonIdComputableClassifier)
    (residualBridge : classifier.KilledResidualBridge)
    (r : Fin numPairWords) :
    NonIdentityRankKilled r := by
  intro hM
  cases hclass : classifier.classOfRank r with
  | badDirectionSign =>
      have hcert : NonIdentityRankCertified r := by
        intro _hM
        exact classifier.badDirection_exists_cert hclass
      exact NonIdentityRankCertified.killed hcert hM
  | badPairBalance =>
      have hcert : NonIdentityRankCertified r := by
        intro _hM
        exact classifier.badPairBalance_exists_cert hclass
      exact NonIdentityRankCertified.killed hcert hM
  | residual =>
      exact residualBridge hclass hM hM

end NonIdComputableClassifier

structure TranslationComputableClassifier where
  badDirectionFamilies : List TranslationParametricFamily
  badVectorFamilies : List TranslationParametricFamily

namespace TranslationComputableClassifier

noncomputable def classOfChoice
    (classifier : TranslationComputableClassifier)
    (r : Fin numPairWords) (mask : SignMask) : TranslationFamilyClass :=
  if checkTranslationParametricFamiliesAtB
      classifier.badDirectionFamilies
      TranslationFamilyFailure.badDirectionSign r mask then
    TranslationFamilyClass.badDirectionSign
  else if checkTranslationParametricFamiliesAtB
      classifier.badVectorFamilies
      TranslationFamilyFailure.badTranslationVector r mask then
    TranslationFamilyClass.badTranslationVector
  else
    TranslationFamilyClass.needsFarkas

theorem badDirection_exists_cert
    (classifier : TranslationComputableClassifier)
    {r : Fin numPairWords} {mask : SignMask}
    (hclass :
      classifier.classOfChoice r mask =
        TranslationFamilyClass.badDirectionSign) :
    exists cert : TranslationCert,
      cert.word = unrankPairWord r /\
        cert.signMask = mask /\
          checkTranslationCert cert = true := by
  unfold classOfChoice at hclass
  cases hdir :
      checkTranslationParametricFamiliesAtB
        classifier.badDirectionFamilies
        TranslationFamilyFailure.badDirectionSign r mask
  · simp [hdir] at hclass
    cases hvector :
        checkTranslationParametricFamiliesAtB
          classifier.badVectorFamilies
          TranslationFamilyFailure.badTranslationVector r mask
    · simp [hvector] at hclass
    · simp [hvector] at hclass
  · exact checkTranslationParametricFamiliesAtB_exists_cert hdir

theorem badVector_exists_cert
    (classifier : TranslationComputableClassifier)
    {r : Fin numPairWords} {mask : SignMask}
    (hclass :
      classifier.classOfChoice r mask =
        TranslationFamilyClass.badTranslationVector) :
    exists cert : TranslationCert,
      cert.word = unrankPairWord r /\
        cert.signMask = mask /\
          checkTranslationCert cert = true := by
  unfold classOfChoice at hclass
  cases hdir :
      checkTranslationParametricFamiliesAtB
        classifier.badDirectionFamilies
        TranslationFamilyFailure.badDirectionSign r mask
  · simp [hdir] at hclass
    cases hvector :
        checkTranslationParametricFamiliesAtB
          classifier.badVectorFamilies
          TranslationFamilyFailure.badTranslationVector r mask
    · simp [hvector] at hclass
    · exact checkTranslationParametricFamiliesAtB_exists_cert hvector
  · simp [hdir] at hclass

def FarkasBridge
    (classifier : TranslationComputableClassifier) : Prop :=
  forall {r : Fin numPairWords} {mask : SignMask},
    classifier.classOfChoice r mask =
        TranslationFamilyClass.needsFarkas ->
      totalLinearOfPairWord (unrankPairWord r) =
          (matId : Mat3 Rat) ->
        exists cert : TranslationCert,
          cert.word = unrankPairWord r /\
            cert.signMask = mask /\
              checkTranslationCert cert = true

def KilledFarkasBridge
    (classifier : TranslationComputableClassifier) : Prop :=
  forall {r : Fin numPairWords} {mask : SignMask},
    classifier.classOfChoice r mask =
        TranslationFamilyClass.needsFarkas ->
      totalLinearOfPairWord (unrankPairWord r) =
          (matId : Mat3 Rat) ->
        TranslationCaseKilled r mask

theorem complete_of_farkas_bridge
    (classifier : TranslationComputableClassifier)
    (farkasBridge : classifier.FarkasBridge)
    (r : Fin numPairWords)
    (mask : SignMask) :
    TranslationCaseCertified r mask := by
  intro hM
  cases hclass : classifier.classOfChoice r mask with
  | badDirectionSign =>
      exact classifier.badDirection_exists_cert hclass
  | badTranslationVector =>
      exact classifier.badVector_exists_cert hclass
  | needsFarkas =>
      exact farkasBridge hclass hM

theorem killed_of_farkas_bridge
    (classifier : TranslationComputableClassifier)
    (farkasBridge : classifier.FarkasBridge)
    (r : Fin numPairWords)
    (mask : SignMask) :
    TranslationCaseKilled r mask :=
  TranslationCaseCertified.killed
    (classifier.complete_of_farkas_bridge farkasBridge r mask)

theorem complete_killed_of_farkas_bridge
    (classifier : TranslationComputableClassifier)
    (farkasBridge : classifier.KilledFarkasBridge)
    (r : Fin numPairWords)
    (mask : SignMask) :
    TranslationCaseKilled r mask := by
  intro hM
  cases hclass : classifier.classOfChoice r mask with
  | badDirectionSign =>
      have hcert : TranslationCaseCertified r mask := by
        intro _hM
        exact classifier.badDirection_exists_cert hclass
      exact TranslationCaseCertified.killed hcert hM
  | badTranslationVector =>
      have hcert : TranslationCaseCertified r mask := by
        intro _hM
        exact classifier.badVector_exists_cert hclass
      exact TranslationCaseCertified.killed hcert hM
  | needsFarkas =>
      exact farkasBridge hclass hM hM

end TranslationComputableClassifier

end Cuboctahedron.Generated.Coverage
