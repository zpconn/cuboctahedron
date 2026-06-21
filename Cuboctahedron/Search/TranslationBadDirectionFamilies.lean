import Cuboctahedron.Search.Certificates

/-!
Small direct witnesses for translation bad-direction cases.

This module is intentionally not generated evidence.  It gives generators a
compact, trusted target for proving that a translation rank/mask choice is
impossible because one required impact denominator is nonpositive.
-/

namespace Cuboctahedron

noncomputable section

def translationBadDirectionSeq
    (r : Fin numPairWords) (mask : SignMask) : Step14 -> Face :=
  translationChoiceSeq (unrankPairWord r) mask

def translationBadDirectionB
    (r : Fin numPairWords) (mask : SignMask) : Vec3 Rat :=
  (totalAff (translationBadDirectionSeq r mask)).b

def badDirectionCertOfChoice
    (r : Fin numPairWords) (mask : SignMask) (i : Impact15) :
    TranslationCert where
  word := unrankPairWord r
  signMask := mask
  seq := Vector.ofFn (translationBadDirectionSeq r mask)
  b := translationBadDirectionB r mask
  failure := TranslationFailure.badDirectionSign i

def checkTranslationBadDirectionWitness
    (r : Fin numPairWords) (mask : SignMask) (i : Impact15) : Bool := by
  classical
  exact
    decide (totalLinearOfPairWord (unrankPairWord r) =
      (matId : Mat3 Rat)) &&
      (decide (i ≠ (0 : Impact15)) &&
        (decide (i ≠ lastImpact) &&
          decide (impactDenom (translationBadDirectionSeq r mask)
            (translationBadDirectionB r mask) i <= 0)))

theorem badDirectionCertOfChoice_seqFun
    (r : Fin numPairWords) (mask : SignMask) (i : Impact15) :
    (badDirectionCertOfChoice r mask i).seqFun =
      translationBadDirectionSeq r mask := by
  simp [badDirectionCertOfChoice, TranslationCert.seqFun]

theorem badDirectionCertOfChoice_matches
    (r : Fin numPairWords) (mask : SignMask) (i : Impact15) :
    TranslationSeqMatches (unrankPairWord r) mask
      (badDirectionCertOfChoice r mask i).seq := by
  intro j
  have hSeq := congrFun
    (badDirectionCertOfChoice_seqFun r mask i) j
  simpa [TranslationCert.seqFun, translationBadDirectionSeq] using hSeq

theorem badDirectionCertOfChoice_b
    (r : Fin numPairWords) (mask : SignMask) (i : Impact15) :
    (totalAff (badDirectionCertOfChoice r mask i).seqFun).b =
      (badDirectionCertOfChoice r mask i).b := by
  rw [badDirectionCertOfChoice_seqFun]
  rfl

theorem checkTranslationBadDirectionWitness_sound
    {r : Fin numPairWords} {mask : SignMask} {i : Impact15}
    (hcheck :
      checkTranslationBadDirectionWitness r mask i = true) :
    exists cert : TranslationCert,
      cert.word = unrankPairWord r /\
        cert.signMask = mask /\
          checkTranslationCert cert = true := by
  classical
  simp only [checkTranslationBadDirectionWitness, Bool.and_eq_true,
    decide_eq_true_eq] at hcheck
  rcases hcheck with ⟨hLinear, hi0, hilast, hDenom⟩
  let cert := badDirectionCertOfChoice r mask i
  refine ⟨cert, rfl, rfl, ?_⟩
  have hDenomCert :
      impactDenom cert.seqFun cert.b i <= 0 := by
    rw [badDirectionCertOfChoice_seqFun]
    exact hDenom
  exact checkTranslationCert_badDirectionSign cert i rfl
    (unrankPairWord_valid r) hLinear
    (badDirectionCertOfChoice_matches r mask i)
    (badDirectionCertOfChoice_b r mask i) hi0 hilast hDenomCert

theorem checkTranslationBadDirectionWitness_no_feasible
    {r : Fin numPairWords} {mask : SignMask} {i : Impact15}
    (hcheck :
      checkTranslationBadDirectionWitness r mask i = true) :
    ¬ exists seq,
      SeqRealizesTranslationChoice (unrankPairWord r) mask seq /\
        totalLinear seq = (matId : Mat3 Rat) /\
          UnfoldedFeasible seq := by
  rcases checkTranslationBadDirectionWitness_sound hcheck with
    ⟨cert, hword, hmask, hcert⟩
  intro hbad
  exact checkTranslationCert_sound cert hcert (by
    simpa [hword, hmask] using hbad)

end

end Cuboctahedron
