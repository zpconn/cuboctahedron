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
Proof-carrying structured evidence for the generated fallback backend.

These records avoid asking Lean to reduce a whole generated checker expression.
The generator supplies ordinary certificates together with small local proofs
of the exact checker facts, and the trusted API below exposes the same witness
shape that Step 14E.7 consumes.
-/

structure CheckedNonIdRank where
  rank : Fin numPairWords
  cert : NonIdCert
  word_eq : cert.word = unrankPairWord rank
  check : checkNonIdCert cert = true

theorem CheckedNonIdRank.exists_cert (e : CheckedNonIdRank) :
    exists cert : NonIdCert,
      cert.word = unrankPairWord e.rank /\
        checkNonIdCert cert = true := by
  exact ⟨e.cert, e.word_eq, e.check⟩

theorem CheckedNonIdRank.no_feasible (e : CheckedNonIdRank) :
    ¬ exists seq,
      SeqRealizesPairWord (unrankPairWord e.rank) seq /\
        StartsXp seq /\
        totalLinear seq ≠ (matId : Mat3 Rat) /\
        UnfoldedFeasible seq := by
  intro hbad
  rcases hbad with ⟨seq, hRealize, hStart, hLinear, hFeasible⟩
  exact checkNonIdCert_sound e.cert e.check
    ⟨seq, by simpa [e.word_eq] using hRealize, hStart, hLinear, hFeasible⟩

structure CheckedTranslationCase where
  rank : Fin numPairWords
  mask : SignMask
  cert : TranslationCert
  word_eq : cert.word = unrankPairWord rank
  mask_eq : cert.signMask = mask
  check : checkTranslationCert cert = true

theorem CheckedTranslationCase.exists_cert (e : CheckedTranslationCase) :
    exists cert : TranslationCert,
      cert.word = unrankPairWord e.rank /\
        cert.signMask = e.mask /\
          checkTranslationCert cert = true := by
  exact ⟨e.cert, e.word_eq, e.mask_eq, e.check⟩

theorem CheckedTranslationCase.no_feasible (e : CheckedTranslationCase) :
    ¬ exists seq,
      SeqRealizesTranslationChoice (unrankPairWord e.rank) e.mask seq /\
        totalLinear seq = (matId : Mat3 Rat) /\
          UnfoldedFeasible seq := by
  intro hbad
  rcases hbad with ⟨seq, hRealize, hLinear, hFeasible⟩
  exact checkTranslationCert_sound e.cert e.check
    ⟨seq,
      by
        simpa [e.word_eq, e.mask_eq] using hRealize,
      hLinear,
      hFeasible⟩

/-!
Shared proof-carrying family wrappers.

These wrappers are intentionally thin: generated modules may share local proof
bodies however they like, then expose the resulting checked evidence through
these arrays.  The trusted surface remains the existing per-rank/per-case
certificate soundness theorems.
-/

structure ProofCarryingNonIdFamily where
  name : String
  failure : NonIdFamilyFailure
  normalizedStateId : String
  evidence : Array CheckedNonIdRank

def ProofCarryingNonIdFamily.ContainsRank
    (family : ProofCarryingNonIdFamily) (rank : Fin numPairWords) : Prop :=
  exists e : CheckedNonIdRank, e ∈ family.evidence.toList /\ e.rank = rank

theorem ProofCarryingNonIdFamily.exists_cert
    (family : ProofCarryingNonIdFamily) {rank : Fin numPairWords}
    (hcontains : family.ContainsRank rank) :
    exists cert : NonIdCert,
      cert.word = unrankPairWord rank /\
        checkNonIdCert cert = true := by
  rcases hcontains with ⟨e, _hmem, hrank⟩
  rcases CheckedNonIdRank.exists_cert e with ⟨cert, hword, hcheck⟩
  exact ⟨cert, by simpa [hrank] using hword, hcheck⟩

theorem ProofCarryingNonIdFamily.no_feasible
    (family : ProofCarryingNonIdFamily) {rank : Fin numPairWords}
    (hcontains : family.ContainsRank rank) :
    ¬ exists seq,
      SeqRealizesPairWord (unrankPairWord rank) seq /\
        StartsXp seq /\
        totalLinear seq ≠ (matId : Mat3 Rat) /\
        UnfoldedFeasible seq := by
  intro hbad
  rcases hcontains with ⟨e, _hmem, hrank⟩
  apply CheckedNonIdRank.no_feasible e
  rcases hbad with ⟨seq, hRealize, hStart, hLinear, hFeasible⟩
  exact
    ⟨seq,
      by simpa [hrank] using hRealize,
      hStart,
      hLinear,
      hFeasible⟩

/-!
Proof-carrying residual non-identity families.

This interface is for Step 14E.7B9.  It lets generated code expose a compressed
residual obstruction by giving, for each covered rank, a checked rank witness.
The implementation of that witness may share generated proof bodies across a
whole family; the trusted theorem below still reduces coverage to the existing
`CheckedNonIdRank`/`checkNonIdCert_sound` path.
-/

structure ProofCarryingNonIdResidualFamily where
  name : String
  failure : NonIdFamilyFailure
  normalizedStateId : String
  ContainsRank : Fin numPairWords -> Prop
  checkedRank :
    forall rank : Fin numPairWords, ContainsRank rank -> CheckedNonIdRank
  checkedRank_rank :
    forall (rank : Fin numPairWords) (hcontains : ContainsRank rank),
      (checkedRank rank hcontains).rank = rank

theorem ProofCarryingNonIdResidualFamily.exists_cert
    (family : ProofCarryingNonIdResidualFamily) {rank : Fin numPairWords}
    (hcontains : family.ContainsRank rank) :
    exists cert : NonIdCert,
      cert.word = unrankPairWord rank /\
        checkNonIdCert cert = true := by
  let e := family.checkedRank rank hcontains
  have hrank : e.rank = rank := family.checkedRank_rank rank hcontains
  rcases CheckedNonIdRank.exists_cert e with ⟨cert, hword, hcheck⟩
  exact ⟨cert, by simpa [hrank] using hword, hcheck⟩

theorem ProofCarryingNonIdResidualFamily.no_feasible
    (family : ProofCarryingNonIdResidualFamily) {rank : Fin numPairWords}
    (hcontains : family.ContainsRank rank) :
    ¬ exists seq,
      SeqRealizesPairWord (unrankPairWord rank) seq /\
        StartsXp seq /\
        totalLinear seq ≠ (matId : Mat3 Rat) /\
        UnfoldedFeasible seq := by
  let e := family.checkedRank rank hcontains
  have hrank : e.rank = rank := family.checkedRank_rank rank hcontains
  intro hbad
  apply CheckedNonIdRank.no_feasible e
  rcases hbad with ⟨seq, hRealize, hStart, hLinear, hFeasible⟩
  exact
    ⟨seq,
      by simpa [hrank] using hRealize,
      hStart,
      hLinear,
      hFeasible⟩

structure ProofCarryingTranslationFarkasFamily where
  name : String
  normalizedStateId : String
  evidence : Array CheckedTranslationCase

def ProofCarryingTranslationFarkasFamily.ContainsCase
    (family : ProofCarryingTranslationFarkasFamily)
    (rank : Fin numPairWords) (mask : SignMask) : Prop :=
  exists e : CheckedTranslationCase,
    e ∈ family.evidence.toList /\ e.rank = rank /\ e.mask = mask

theorem ProofCarryingTranslationFarkasFamily.exists_cert
    (family : ProofCarryingTranslationFarkasFamily)
    {rank : Fin numPairWords} {mask : SignMask}
    (hcontains : family.ContainsCase rank mask) :
    exists cert : TranslationCert,
      cert.word = unrankPairWord rank /\
        cert.signMask = mask /\
          checkTranslationCert cert = true := by
  rcases hcontains with ⟨e, _hmem, hrank, hmask⟩
  rcases CheckedTranslationCase.exists_cert e with
    ⟨cert, hword, hsign, hcheck⟩
  exact
    ⟨cert,
      by simpa [hrank] using hword,
      by simpa [hmask] using hsign,
      hcheck⟩

theorem ProofCarryingTranslationFarkasFamily.no_feasible
    (family : ProofCarryingTranslationFarkasFamily)
    {rank : Fin numPairWords} {mask : SignMask}
    (hcontains : family.ContainsCase rank mask) :
    ¬ exists seq,
      SeqRealizesTranslationChoice (unrankPairWord rank) mask seq /\
        totalLinear seq = (matId : Mat3 Rat) /\
          UnfoldedFeasible seq := by
  intro hbad
  rcases hcontains with ⟨e, _hmem, hrank, hmask⟩
  apply CheckedTranslationCase.no_feasible e
  rcases hbad with ⟨seq, hRealize, hLinear, hFeasible⟩
  exact
    ⟨seq,
      by simpa [hrank, hmask] using hRealize,
      hLinear,
      hFeasible⟩

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

@[reducible] def checkCompactNonIdResidual
    (cert : CompactNonIdResidualCert) : Bool :=
  checkNonIdCoveredRank cert.rank.val cert.toNonIdCert &&
    checkNonIdResidualCertB cert.toNonIdCert

@[reducible] def checkCompactNonIdResiduals
    (certs : Array CompactNonIdResidualCert) : Bool :=
  certs.toList.all checkCompactNonIdResidual

theorem checkCompactNonIdResidual_sound
    (cert : CompactNonIdResidualCert)
    (hcheck : checkCompactNonIdResidual cert = true) :
    CompactNonIdResidualCovered cert := by
  unfold checkCompactNonIdResidual at hcheck
  unfold CompactNonIdResidualCovered NonIdRankCertificateCovered
  rw [Bool.and_eq_true] at hcheck
  exact ⟨hcheck.1, checkNonIdResidualCertB_sound hcheck.2⟩

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

/-!
Compact translation Farkas certificates.

These records are the translation analogue of compact residual certificates:
the blob only stores the ranked pair-word, sign mask, and a source-indexed
Farkas certificate. Lean reconstructs the ordinary `TranslationCert` from the
ranking functions and checks it with the existing trusted checker.
-/

structure CompactTranslationFarkasCert where
  rank : Fin numPairWords
  mask : SignMask
  sourceFarkas : SourceFarkasCert
deriving DecidableEq, Repr

noncomputable def CompactTranslationFarkasCert.toTranslationCert
    (cert : CompactTranslationFarkasCert) : TranslationCert where
  word := unrankPairWord cert.rank
  signMask := cert.mask
  seq := Vector.ofFn (translationChoiceSeq (unrankPairWord cert.rank) cert.mask)
  b := translationVectorOfChoice (unrankPairWord cert.rank) cert.mask
  failure := TranslationFailure.sourceFarkas cert.sourceFarkas

def CompactTranslationFarkasCert.seqFun
    (cert : CompactTranslationFarkasCert) : Step14 -> Face :=
  translationChoiceSeq (unrankPairWord cert.rank) cert.mask

def CompactTranslationFarkasCert.totalTranslation
    (cert : CompactTranslationFarkasCert) : Vec3 Rat :=
  (totalAff cert.seqFun).b

def CompactTranslationFarkasCovered
    (cert : CompactTranslationFarkasCert) : Prop :=
  ¬ exists seq,
    SeqRealizesTranslationChoice (unrankPairWord cert.rank) cert.mask seq /\
      totalLinear seq = (matId : Mat3 Rat) /\
        UnfoldedFeasible seq

def checkCompactTranslationFarkas
    (cert : CompactTranslationFarkasCert) : Bool :=
  checkSourceFarkas cert.seqFun cert.totalTranslation cert.sourceFarkas

def checkCompactTranslationFarkasCerts
    (certs : Array CompactTranslationFarkasCert) : Bool :=
  certs.toList.all checkCompactTranslationFarkas

theorem checkCompactTranslationFarkas_sound
    (cert : CompactTranslationFarkasCert)
    (hcheck : checkCompactTranslationFarkas cert = true) :
    CompactTranslationFarkasCovered cert := by
  intro hbad
  rcases hbad with ⟨seq, hRealize, hLinear, hFeasible⟩
  have hseq : seq = cert.seqFun := by
    funext i
    exact hRealize.choice_matches i
  have hTranslation :
      TranslationUnfoldedFeasible
        cert.seqFun cert.totalTranslation := by
    refine
      { feasible := ?_
        startsXp := ?_
        linear_id := ?_
        translation_vector := rfl }
    · simpa [hseq] using hFeasible
    · rw [← hseq]
      exact hRealize.realizes.startsXp
    · simpa [← hseq] using hLinear
  exact checkSourceFarkas_sound hcheck
    (translation_feasible_implies_constraints hTranslation)

theorem checkCompactTranslationFarkas_no_feasible
    (cert : CompactTranslationFarkasCert)
    (hcheck : checkCompactTranslationFarkas cert = true) :
    ¬ exists seq,
      SeqRealizesTranslationChoice (unrankPairWord cert.rank) cert.mask seq /\
        totalLinear seq = (matId : Mat3 Rat) /\
        UnfoldedFeasible seq := by
  exact checkCompactTranslationFarkas_sound cert hcheck

theorem checkCompactTranslationFarkasCerts_sound
    {certs : List CompactTranslationFarkasCert}
    (hcheck : certs.all checkCompactTranslationFarkas = true) :
    forall cert, cert ∈ certs -> CompactTranslationFarkasCovered cert := by
  rw [List.all_eq_true] at hcheck
  intro cert hmem
  exact checkCompactTranslationFarkas_sound cert (hcheck cert hmem)

end Cuboctahedron
