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

def decodedPackedResidualBytes (bytes : List Nat) :
    Array CompactNonIdResidualCert :=
  match parsePackedResidualBytes bytes with
  | .ok certs => certs
  | .error _ => #[]

def checkPackedResidualBytes (bytes : List Nat) : Bool :=
  match parsePackedResidualBytes bytes with
  | .ok certs => checkCompactNonIdResiduals certs
  | .error _ => false

def compactResidualCertHasRank
    (rank : Nat) (cert : CompactNonIdResidualCert) : Bool :=
  decide (cert.rank.val = rank)

def hasPackedResidualRank (blob : String) (rank : Nat) : Bool :=
  match decodePackedResidualCerts blob with
  | .ok certs => certs.toList.any (compactResidualCertHasRank rank)
  | .error _ => false

def checkedPackedResidualBlobCoversRank
    (blob : String) (rank : Nat) : Bool :=
  checkPackedResidualCerts blob && hasPackedResidualRank blob rank

def checkedPackedResidualBlobsCoverRank
    (blobs : List String) (rank : Nat) : Bool :=
  blobs.any (fun blob => checkedPackedResidualBlobCoversRank blob rank)

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

theorem checkPackedResidualRank_sound
    (blob : String)
    (hcheck : checkPackedResidualCerts blob = true)
    (rank : Fin numPairWords)
    (hhas : hasPackedResidualRank blob rank.val = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold hasPackedResidualRank at hhas
  cases hdecode : decodePackedResidualCerts blob with
  | error err =>
      simp [hdecode] at hhas
  | ok certs =>
      rw [hdecode] at hhas
      rcases List.any_eq_true.mp hhas with ⟨cert, hmem, hrankBool⟩
      have hrankVal : cert.rank.val = rank.val := by
        have hrankBool' : decide (cert.rank.val = rank.val) = true := by
          simpa [compactResidualCertHasRank] using hrankBool
        exact of_decide_eq_true hrankBool'
      have hrank : cert.rank = rank := Fin.ext hrankVal
      have hmemDecoded :
          cert ∈ (decodedPackedResidualCerts blob).toList := by
        simpa [decodedPackedResidualCerts, hdecode] using hmem
      rcases checkPackedResidualCerts_sound blob hcheck cert hmemDecoded with
        ⟨ordinary, hword, hordinary⟩
      exact ⟨ordinary, by simpa [hrank] using hword, hordinary⟩

theorem checkPackedResidualRank_exists_checked
    (blob : String)
    (hcheck : checkPackedResidualCerts blob = true)
    (rank : Fin numPairWords)
    (hhas : hasPackedResidualRank blob rank.val = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  rcases checkPackedResidualRank_sound blob hcheck rank hhas with
    ⟨ordinary, hword, hordinary⟩
  exact ⟨{
      rank := rank
      cert := ordinary
      word_eq := hword
      check := hordinary
    },
    rfl⟩

noncomputable def checkPackedResidualRank_checked
    (blob : String)
    (hcheck : checkPackedResidualCerts blob = true)
    (rank : Fin numPairWords)
    (hhas : hasPackedResidualRank blob rank.val = true) :
    CheckedNonIdRank :=
  Classical.choose
    (checkPackedResidualRank_exists_checked blob hcheck rank hhas)

theorem checkPackedResidualRank_checked_rank
    (blob : String)
    (hcheck : checkPackedResidualCerts blob = true)
    (rank : Fin numPairWords)
    (hhas : hasPackedResidualRank blob rank.val = true) :
    (checkPackedResidualRank_checked blob hcheck rank hhas).rank = rank :=
  Classical.choose_spec
    (checkPackedResidualRank_exists_checked blob hcheck rank hhas)

theorem checkedPackedResidualBlobsCoverRank_sound
    (blobs : List String)
    (rank : Fin numPairWords)
    (hcover : checkedPackedResidualBlobsCoverRank blobs rank.val = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold checkedPackedResidualBlobsCoverRank
    checkedPackedResidualBlobCoversRank at hcover
  simp only [List.any_eq_true, Bool.and_eq_true] at hcover
  rcases hcover with ⟨blob, _hmem, hcheck, hhas⟩
  exact checkPackedResidualRank_sound blob hcheck rank hhas

theorem checkedPackedResidualBlobsCoverRank_exists_checked
    (blobs : List String)
    (rank : Fin numPairWords)
    (hcover : checkedPackedResidualBlobsCoverRank blobs rank.val = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold checkedPackedResidualBlobsCoverRank
    checkedPackedResidualBlobCoversRank at hcover
  simp only [List.any_eq_true, Bool.and_eq_true] at hcover
  rcases hcover with ⟨blob, _hmem, hcheck, hhas⟩
  exact checkPackedResidualRank_exists_checked blob hcheck rank hhas

noncomputable def checkedPackedResidualBlobsCoverRank_checked
    (blobs : List String)
    (rank : Fin numPairWords)
    (hcover : checkedPackedResidualBlobsCoverRank blobs rank.val = true) :
    CheckedNonIdRank :=
  Classical.choose
    (checkedPackedResidualBlobsCoverRank_exists_checked blobs rank hcover)

theorem checkedPackedResidualBlobsCoverRank_checked_rank
    (blobs : List String)
    (rank : Fin numPairWords)
    (hcover : checkedPackedResidualBlobsCoverRank blobs rank.val = true) :
    (checkedPackedResidualBlobsCoverRank_checked blobs rank hcover).rank =
      rank :=
  Classical.choose_spec
    (checkedPackedResidualBlobsCoverRank_exists_checked blobs rank hcover)

theorem checkPackedResidualBytes_sound
    (bytes : List Nat)
    (hcheck : checkPackedResidualBytes bytes = true) :
    forall cert,
      cert ∈ (decodedPackedResidualBytes bytes).toList ->
        exists ordinary : NonIdCert,
            ordinary.word = unrankPairWord cert.rank /\
            checkNonIdCert ordinary = true := by
  unfold checkPackedResidualBytes at hcheck
  cases hdecode : parsePackedResidualBytes bytes with
  | error err =>
      simp [hdecode] at hcheck
  | ok certs =>
      simp [hdecode] at hcheck
      have hcheckList : certs.toList.all checkCompactNonIdResidual = true := by
        simpa [checkCompactNonIdResiduals] using hcheck
      intro cert hmem
      have hmemList : cert ∈ certs.toList := by
        simpa [decodedPackedResidualBytes, hdecode] using hmem
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

def decodedPackedTranslationFarkasBytes (bytes : List Nat) :
    Array CompactTranslationFarkasCert :=
  match parsePackedTranslationFarkasBytes bytes with
  | .ok certs => certs
  | .error _ => #[]

def checkPackedTranslationFarkasBytes (bytes : List Nat) : Bool :=
  match parsePackedTranslationFarkasBytes bytes with
  | .ok certs => checkCompactTranslationFarkasCerts certs
  | .error _ => false

def compactTranslationFarkasCertHasCase
    (rank mask : Nat) (cert : CompactTranslationFarkasCert) : Bool :=
  decide (cert.rank.val = rank) && decide (cert.mask.val = mask)

def hasPackedTranslationFarkasCase
    (blob : String) (rank mask : Nat) : Bool :=
  match decodePackedTranslationFarkasCerts blob with
  | .ok certs =>
      certs.toList.any (compactTranslationFarkasCertHasCase rank mask)
  | .error _ => false

def checkedPackedTranslationFarkasBlobCoversCase
    (blob : String) (rank mask : Nat) : Bool :=
  checkPackedTranslationFarkasCerts blob &&
    hasPackedTranslationFarkasCase blob rank mask

def checkedPackedTranslationFarkasBlobsCoverCase
    (blobs : List String) (rank mask : Nat) : Bool :=
  blobs.any (fun blob =>
    checkedPackedTranslationFarkasBlobCoversCase blob rank mask)

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

theorem checkPackedTranslationFarkasCerts_exists_cert
    (blob : String)
    (hcheck : checkPackedTranslationFarkasCerts blob = true)
    (cert : CompactTranslationFarkasCert)
    (hmem : cert ∈ (decodedPackedTranslationFarkasCerts blob).toList)
    (hLinear :
      totalLinearOfPairWord (unrankPairWord cert.rank) =
        (matId : Mat3 Rat)) :
    exists ordinary : TranslationCert,
      ordinary.word = unrankPairWord cert.rank /\
        ordinary.signMask = cert.mask /\
          checkTranslationCert ordinary = true := by
  unfold checkPackedTranslationFarkasCerts at hcheck
  cases hdecode : decodePackedTranslationFarkasCerts blob with
  | error err =>
      simp [hdecode] at hcheck
  | ok certs =>
      simp [hdecode] at hcheck
      have hcheckList :
          certs.toList.all checkCompactTranslationFarkas = true := by
        simpa [checkCompactTranslationFarkasCerts] using hcheck
      have hmemList : cert ∈ certs.toList := by
        simpa [decodedPackedTranslationFarkasCerts, hdecode] using hmem
      have hcertCheck : checkCompactTranslationFarkas cert = true :=
        List.all_eq_true.mp hcheckList cert hmemList
      exact checkCompactTranslationFarkas_exists_cert cert hLinear hcertCheck

theorem checkPackedTranslationFarkasCase_exists_cert
    (blob : String)
    (hcheck : checkPackedTranslationFarkasCerts blob = true)
    (rank : Fin numPairWords)
    (mask : SignMask)
    (hhas :
      hasPackedTranslationFarkasCase blob rank.val mask.val = true)
    (hLinear :
      totalLinearOfPairWord (unrankPairWord rank) =
        (matId : Mat3 Rat)) :
    exists ordinary : TranslationCert,
      ordinary.word = unrankPairWord rank /\
        ordinary.signMask = mask /\
          checkTranslationCert ordinary = true := by
  unfold hasPackedTranslationFarkasCase at hhas
  cases hdecode : decodePackedTranslationFarkasCerts blob with
  | error err =>
      simp [hdecode] at hhas
  | ok certs =>
      rw [hdecode] at hhas
      rcases List.any_eq_true.mp hhas with ⟨cert, hmem, hcaseBool⟩
      rw [compactTranslationFarkasCertHasCase, Bool.and_eq_true]
        at hcaseBool
      rcases hcaseBool with ⟨hrankBool, hmaskBool⟩
      have hrankVal : cert.rank.val = rank.val :=
        of_decide_eq_true hrankBool
      have hmaskVal : cert.mask.val = mask.val :=
        of_decide_eq_true hmaskBool
      have hrank : cert.rank = rank := Fin.ext hrankVal
      have hmask : cert.mask = mask := Fin.ext hmaskVal
      have hmemDecoded :
          cert ∈ (decodedPackedTranslationFarkasCerts blob).toList := by
        simpa [decodedPackedTranslationFarkasCerts, hdecode] using hmem
      have hLinearCert :
          totalLinearOfPairWord (unrankPairWord cert.rank) =
            (matId : Mat3 Rat) := by
        simpa [hrank] using hLinear
      rcases checkPackedTranslationFarkasCerts_exists_cert
          blob hcheck cert hmemDecoded hLinearCert with
        ⟨ordinary, hword, hmaskOrd, hordinary⟩
      exact ⟨ordinary,
        by simpa [hrank] using hword,
        by simpa [hmask] using hmaskOrd,
        hordinary⟩

theorem checkedPackedTranslationFarkasBlobsCoverCase_exists_cert
    (blobs : List String)
    (rank : Fin numPairWords)
    (mask : SignMask)
    (hcover :
      checkedPackedTranslationFarkasBlobsCoverCase blobs
        rank.val mask.val = true)
    (hLinear :
      totalLinearOfPairWord (unrankPairWord rank) =
        (matId : Mat3 Rat)) :
    exists ordinary : TranslationCert,
      ordinary.word = unrankPairWord rank /\
        ordinary.signMask = mask /\
          checkTranslationCert ordinary = true := by
  unfold checkedPackedTranslationFarkasBlobsCoverCase
    checkedPackedTranslationFarkasBlobCoversCase at hcover
  simp only [List.any_eq_true, Bool.and_eq_true] at hcover
  rcases hcover with ⟨blob, _hmem, hcheck, hhas⟩
  exact checkPackedTranslationFarkasCase_exists_cert
    blob hcheck rank mask hhas hLinear

theorem checkPackedTranslationFarkasBytes_sound
    (bytes : List Nat)
    (hcheck : checkPackedTranslationFarkasBytes bytes = true) :
    forall cert,
      cert ∈ (decodedPackedTranslationFarkasBytes bytes).toList ->
        ¬ exists seq,
          SeqRealizesTranslationChoice (unrankPairWord cert.rank) cert.mask seq /\
            totalLinear seq = (matId : Mat3 Rat) /\
              UnfoldedFeasible seq := by
  unfold checkPackedTranslationFarkasBytes at hcheck
  cases hdecode : parsePackedTranslationFarkasBytes bytes with
  | error err =>
      simp [hdecode] at hcheck
  | ok certs =>
      simp [hdecode] at hcheck
      have hcheckList :
          certs.toList.all checkCompactTranslationFarkas = true := by
        simpa [checkCompactTranslationFarkasCerts] using hcheck
      intro cert hmem
      have hmemList : cert ∈ certs.toList := by
        simpa [decodedPackedTranslationFarkasBytes, hdecode] using hmem
      simpa [CompactTranslationFarkasCovered] using
        (checkCompactTranslationFarkasCerts_sound
          (certs := certs.toList) hcheckList) cert hmemList

end Cuboctahedron
