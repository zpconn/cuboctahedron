import Cuboctahedron.Search.CertificateDecode

/-!
Compact certificate bundle checkers for Step 14E.6D.
-/

namespace Cuboctahedron

noncomputable def checkPilotCertBundle (bundle : CertBundle) : Bool :=
  decide (bundle.kind = BundleKind.pilot) &&
    decide (bundle.schemaVersion = 1) &&
      decide
        (bundle.pilotLimit =
          bundle.nonidentityRanks.size + bundle.translationCases.size) &&
        checkNonIdCoveredRankList bundle.sampleNonidentityRanks.toList
          bundle.sampleNonidentityCerts.toList &&
          checkTranslationCoveredCaseList bundle.sampleTranslationCases.toList
            bundle.sampleTranslationCerts.toList

theorem checkPilotCertBundle_sound
    {bundle : CertBundle}
    (hcheck : checkPilotCertBundle bundle = true) :
    PilotGeneratedCoverage bundle := by
  unfold checkPilotCertBundle at hcheck
  rw [Bool.and_eq_true] at hcheck
  rcases hcheck with ⟨hcheckLeft, hTranslationSamples⟩
  rw [Bool.and_eq_true] at hcheckLeft
  rcases hcheckLeft with ⟨hcheckLeft, hNonIdSamples⟩
  rw [Bool.and_eq_true] at hcheckLeft
  rcases hcheckLeft with ⟨hcheckLeft, hCountBool⟩
  rw [Bool.and_eq_true] at hcheckLeft
  rcases hcheckLeft with ⟨hKindBool, hSchemaBool⟩
  have hKind : bundle.kind = BundleKind.pilot := of_decide_eq_true hKindBool
  have hSchema : bundle.schemaVersion = 1 := of_decide_eq_true hSchemaBool
  have hCount :
      bundle.pilotLimit =
        bundle.nonidentityRanks.size + bundle.translationCases.size :=
    of_decide_eq_true hCountBool
  exact {
    kind_checked := hKind
    schema_checked := hSchema
    count_checked := hCount
    nonidentity_samples_checked :=
      checkNonIdCoveredRankList_sound hNonIdSamples
    translation_samples_checked :=
      checkTranslationCoveredCaseList_sound hTranslationSamples
  }

/-!
The full compact checker is intentionally closed until Step 14E.7 emits a real
exhaustive bundle.  This keeps the soundness theorem targeted at the final
coverage type while preventing pilot bundles from proving exhaustive coverage.
-/
noncomputable def checkCertBundle (_bundle : CertBundle) : Bool :=
  false

theorem checkCertBundle_sound
    {bundle : CertBundle}
    (hcheck : checkCertBundle bundle = true) :
    ExhaustiveGeneratedCoverage := by
  simp [checkCertBundle] at hcheck

def checkPackedResidualCerts (blob : String) : Bool :=
  match decodePackedResidualCerts blob with
  | .ok certs => checkCompactNonIdResiduals certs
  | .error _ => false

theorem checkPackedResidualCerts_sound
    (blob : String)
    (hcheck : checkPackedResidualCerts blob = true) :
    forall cert,
      cert ∈ (decodedPackedResidualCerts blob).toList ->
        exists ordinary : NonIdCert,
            ordinary.word = unrankPairWord cert.rank /\
            checkNonIdCert ordinary = true := by
  unfold checkPackedResidualCerts at hcheck
  cases hdecode : decodePackedResidualCerts blob with
  | error err =>
      simp [hdecode] at hcheck
  | ok certs =>
      simp [hdecode] at hcheck
      have hcheckList : certs.toList.all checkCompactNonIdResidual = true := by
        simpa [checkCompactNonIdResiduals] using hcheck
      intro cert hmem
      have hmemList : cert ∈ certs.toList := by
        simpa [decodedPackedResidualCerts, hdecode] using hmem
      have hcovered :
          CompactNonIdResidualCovered cert :=
        (checkCompactNonIdResiduals_sound
          (certs := certs.toList) hcheckList) cert hmemList
      exact ⟨cert.toNonIdCert,
        checkNonIdCoveredRank_word (r := cert.rank) hcovered.1,
        hcovered.2⟩

def checkPackedTranslationFarkasCerts (blob : String) : Bool :=
  match decodePackedTranslationFarkasCerts blob with
  | .ok certs => checkCompactTranslationFarkasCerts certs
  | .error _ => false

theorem checkPackedTranslationFarkasCerts_sound
    (blob : String)
    (hcheck : checkPackedTranslationFarkasCerts blob = true) :
    forall cert,
      cert ∈ (decodedPackedTranslationFarkasCerts blob).toList ->
        ¬ exists seq,
          SeqRealizesTranslationChoice (unrankPairWord cert.rank) cert.mask seq /\
            totalLinear seq = (matId : Mat3 Rat) /\
              UnfoldedFeasible seq := by
  unfold checkPackedTranslationFarkasCerts at hcheck
  cases hdecode : decodePackedTranslationFarkasCerts blob with
  | error err =>
      simp [hdecode] at hcheck
  | ok certs =>
      simp [hdecode] at hcheck
      have hcheckList :
          certs.toList.all checkCompactTranslationFarkas = true := by
        simpa [checkCompactTranslationFarkasCerts] using hcheck
      intro cert hmem
      have hmemList : cert ∈ certs.toList := by
        simpa [decodedPackedTranslationFarkasCerts, hdecode] using hmem
      simpa [CompactTranslationFarkasCovered] using
        (checkCompactTranslationFarkasCerts_sound
          (certs := certs.toList) hcheckList) cert hmemList

end Cuboctahedron
