import Cuboctahedron.Search.Certificates

/-!
Compact certificate bundle data types for Step 14E.6D.

The compact format is an import/storage pilot.  Pilot bundles are allowed to
cover a deterministic slice of generated cases; only full bundles may be used to
produce `ExhaustiveGeneratedCoverage`.
-/

namespace Cuboctahedron

inductive DecodeError
  | invalidBase64
  | invalidPadding
  | badMagic
  | badVersion
  | badBundleKind
  | duplicateSection
  | missingSection
  | malformedVarint
  | truncatedSection
  | trailingInput
  | invalidEnumTag
  | zeroDenominator
  | rankOutOfBounds
  | countMismatch
deriving DecidableEq, Repr

inductive BundleKind
  | pilot
  | full
deriving DecidableEq, Repr

structure CertBundle where
  kind : BundleKind
  schemaVersion : Nat
  pilotLimit : Nat
  nonidentityRanks : Array Nat
  translationCases : Array GeneratedTranslationCase
  sampleNonidentityRanks : Array Nat := #[]
  sampleTranslationCases : Array GeneratedTranslationCase := #[]
  sampleNonidentityCerts : Array NonIdCert := #[]
  sampleTranslationCerts : Array TranslationCert := #[]
deriving Repr

def emptyCertBundle : CertBundle where
  kind := BundleKind.pilot
  schemaVersion := 0
  pilotLimit := 0
  nonidentityRanks := #[]
  translationCases := #[]

structure SectionHeader where
  id : Nat
  length : Nat
deriving DecidableEq, Repr

structure PilotGeneratedCoverage (bundle : CertBundle) : Prop where
  kind_checked : bundle.kind = BundleKind.pilot
  schema_checked : bundle.schemaVersion = 1
  count_checked :
    bundle.pilotLimit =
      bundle.nonidentityRanks.size + bundle.translationCases.size
  nonidentity_samples_checked :
    List.Forall₂ NonIdRankCertificateCovered
      bundle.sampleNonidentityRanks.toList
      bundle.sampleNonidentityCerts.toList
  translation_samples_checked :
    List.Forall₂ TranslationCaseCertificateCovered
      bundle.sampleTranslationCases.toList
      bundle.sampleTranslationCerts.toList

/-!
Compact residual non-identity certificates.

These records keep the trusted checker boundary at `NonIdCert`: the compact
record stores only residual failure constructors and reconstructs the ordinary
certificate checked by `checkNonIdCert`.
-/

inductive CompactNonIdResidualFailure
  | axisMissesStartInterior
  | badFirstHit (step : Step14)
  | badHitInterior (impact : Impact15) (badFace : Face)
deriving DecidableEq, Repr

def CompactNonIdResidualFailure.toNonIdFailure :
    CompactNonIdResidualFailure -> NonIdFailure
  | CompactNonIdResidualFailure.axisMissesStartInterior =>
      NonIdFailure.axisMissesStartInterior
  | CompactNonIdResidualFailure.badFirstHit step =>
      NonIdFailure.badFirstHit { step := step }
  | CompactNonIdResidualFailure.badHitInterior impact badFace =>
      NonIdFailure.badHitInterior { impact := impact, badFace := badFace }

structure CompactNonIdResidualCert where
  rank : Fin numPairWords
  word : PairWord
  axis : Vec3 Rat
  kernel : KernelLineWitness
  forcedSeq : Vector Face 14
  p0 : Vec3 Rat
  lambda : Rat
  solve : AffineAxisSolveWitness
  failure : CompactNonIdResidualFailure
deriving DecidableEq, Repr

def CompactNonIdResidualCert.toNonIdCert
    (cert : CompactNonIdResidualCert) : NonIdCert where
  word := cert.word
  axis := cert.axis
  kernel := cert.kernel
  forcedSeq := cert.forcedSeq
  p0 := cert.p0
  lambda := cert.lambda
  solve := cert.solve
  failure := cert.failure.toNonIdFailure

def CompactNonIdResidualCovered
    (cert : CompactNonIdResidualCert) : Prop :=
  NonIdRankCertificateCovered cert.rank.val cert.toNonIdCert

noncomputable def checkCompactNonIdResidual
    (cert : CompactNonIdResidualCert) : Bool :=
  checkNonIdCoveredRank cert.rank.val cert.toNonIdCert &&
    checkNonIdCert cert.toNonIdCert

noncomputable def checkCompactNonIdResiduals
    (certs : Array CompactNonIdResidualCert) : Bool :=
  certs.toList.all checkCompactNonIdResidual

theorem checkCompactNonIdResidual_sound
    (cert : CompactNonIdResidualCert)
    (hcheck : checkCompactNonIdResidual cert = true) :
    CompactNonIdResidualCovered cert := by
  unfold checkCompactNonIdResidual at hcheck
  unfold CompactNonIdResidualCovered NonIdRankCertificateCovered
  simpa using hcheck

theorem checkCompactNonIdResidual_exists_cert
    (cert : CompactNonIdResidualCert)
    (hcheck : checkCompactNonIdResidual cert = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord cert.rank /\
        checkNonIdCert ordinary = true := by
  have hcovered := checkCompactNonIdResidual_sound cert hcheck
  exact ⟨cert.toNonIdCert,
    checkNonIdCoveredRank_word (r := cert.rank) hcovered.1,
    hcovered.2⟩

theorem checkCompactNonIdResidual_no_feasible
    (cert : CompactNonIdResidualCert)
    (hcheck : checkCompactNonIdResidual cert = true) :
    ¬ exists seq,
      SeqRealizesPairWord (unrankPairWord cert.rank) seq /\
        StartsXp seq /\
        totalLinear seq ≠ (matId : Mat3 Rat) /\
        UnfoldedFeasible seq := by
  have hcovered := checkCompactNonIdResidual_sound cert hcheck
  have hword :
      cert.toNonIdCert.word = unrankPairWord cert.rank :=
    checkNonIdCoveredRank_word (r := cert.rank) hcovered.1
  intro hbad
  rcases hbad with ⟨seq, hRealize, hStart, hLinear, hFeasible⟩
  exact checkNonIdCert_sound cert.toNonIdCert hcovered.2
    ⟨seq, by simpa [hword] using hRealize, hStart, hLinear, hFeasible⟩

theorem checkCompactNonIdResiduals_sound
    {certs : List CompactNonIdResidualCert}
    (hcheck : certs.all checkCompactNonIdResidual = true) :
    forall cert, cert ∈ certs -> CompactNonIdResidualCovered cert := by
  rw [List.all_eq_true] at hcheck
  intro cert hmem
  exact checkCompactNonIdResidual_sound cert (hcheck cert hmem)

end Cuboctahedron
