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

end Cuboctahedron
