import Cuboctahedron.Search.Enumeration
import Cuboctahedron.Search.TranslationCase

/-!
Translation-case certificate wrappers.
-/

namespace Cuboctahedron

abbrev SeqRealizesTranslationChoice
    (w : PairWord) (_mask : SignMask) (seq : Step14 -> Face) : Prop :=
  SeqRealizesPairWord w seq

inductive TranslationFailure
  | badTranslationVector
  | badDirectionSign
  | farkas (cert : FarkasCert)
deriving DecidableEq, Repr

structure TranslationCert where
  word : PairWord
  signMask : SignMask
  b : Vec3 Rat
  failure : TranslationFailure
deriving DecidableEq, Repr

def checkTranslationCert (cert : TranslationCert) : Bool :=
  match cert.failure with
  | TranslationFailure.badTranslationVector =>
      decide (totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat))
  | TranslationFailure.badDirectionSign => false
  | TranslationFailure.farkas _fcert => false

def checkTranslationCerts (certs : Array TranslationCert) : Bool :=
  certs.toList.all checkTranslationCert

theorem checkTranslationCert_sound
    (cert : TranslationCert)
    (hcheck : checkTranslationCert cert = true) :
    ¬ exists seq,
      SeqRealizesTranslationChoice cert.word cert.signMask seq /\
        totalLinear seq = (matId : Mat3 Rat) /\
        UnfoldedFeasible seq := by
  intro hbad
  rcases hbad with ⟨seq, hRealize, hLinear, hFeasible⟩
  cases hfailure : cert.failure with
  | badTranslationVector =>
      simp [checkTranslationCert, hfailure] at hcheck
      have hNonIdentity :
          totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat) :=
        hcheck
      have hWordLinear :
          totalLinearOfPairWord cert.word = (matId : Mat3 Rat) := by
        rw [← hRealize.linear_eq]
        exact hLinear
      exact hNonIdentity hWordLinear
  | badDirectionSign =>
      simp [checkTranslationCert, hfailure] at hcheck
  | farkas fcert =>
      simp [checkTranslationCert, hfailure] at hcheck

def faceVectorSeq (faces : Vector Face 14) : Step14 -> Face :=
  fun i => faces.get i

@[simp] theorem faceVectorSeq_ofFn (seq : Step14 -> Face) :
    faceVectorSeq (Vector.ofFn seq) = seq := by
  funext i
  unfold faceVectorSeq
  change (Vector.ofFn seq)[i.val] = seq i
  exact Vector.getElem_ofFn i.isLt

inductive NonIdFailure
  | badDirectionSign
  | badPairBalance
  | axisMissesStartInterior
  | badFirstHit
  | badHitInterior
deriving DecidableEq, Repr

structure NonIdCert where
  word : PairWord
  axis : Vec3 Rat
  kernel : KernelLineWitness
  forcedSeq : Vector Face 14
  p0 : Vec3 Rat
  lambda : Rat
  solve : AffineAxisSolveWitness
  failure : NonIdFailure
deriving DecidableEq, Repr

def XpStartInteriorQ (p : Vec3 Rat) : Prop :=
  p.x = 1 /\
    p.y + p.z < 1 /\
    p.y - p.z < 1 /\
    -p.y + p.z < 1 /\
    -p.y - p.z < 1

noncomputable def checkXpStartInteriorQ (p : Vec3 Rat) : Bool := by
  classical
  exact decide (XpStartInteriorQ p)

noncomputable def checkForcedSeqMatchesWord (cert : NonIdCert) : Bool := by
  classical
  exact decide (StartsXp (faceVectorSeq cert.forcedSeq) /\
    PairWordMatchesSeq cert.word (faceVectorSeq cert.forcedSeq))

theorem checkForcedSeqMatchesWord_sound
    (cert : NonIdCert)
    (hcheck : checkForcedSeqMatchesWord cert = true) :
    StartsXp (faceVectorSeq cert.forcedSeq) /\
      PairWordMatchesSeq cert.word (faceVectorSeq cert.forcedSeq) := by
  classical
  simpa [checkForcedSeqMatchesWord] using hcheck

theorem nonIdCert_forcedSeq_exact_of_signed_normals
    (cert : NonIdCert) {seq : Step14 -> Face}
    (hStart : faceVectorSeq cert.forcedSeq 0 = seq 0)
    (hNormals :
      forall i : Step14, i ≠ (0 : Step14) ->
        normalQ (faceVectorSeq cert.forcedSeq i) = normalQ (seq i)) :
    faceVectorSeq cert.forcedSeq = seq :=
  seq_eq_of_start_and_signed_normals hStart hNormals

noncomputable def checkNonIdCommon (cert : NonIdCert) : Bool := by
  classical
  exact decide (ValidPairWord cert.word) &&
    decide (totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat)) &&
    checkKernelLineWitness (totalLinearOfPairWord cert.word) cert.axis cert.kernel &&
    checkForcedSeqMatchesWord cert &&
    checkAffineAxisSolveWitness
      (totalAff (faceVectorSeq cert.forcedSeq))
      cert.axis cert.p0 cert.lambda cert.solve

noncomputable def checkNonIdPairBalanceFailure (cert : NonIdCert) : Bool := by
  classical
  exact decide (totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat)) &&
    decide (¬ ValidPairWord cert.word)

noncomputable def checkNonIdAxisMissesStartInteriorData (cert : NonIdCert) : Bool := by
  classical
  exact checkNonIdCommon cert && decide (¬ XpStartInteriorQ cert.p0)

noncomputable def checkNonIdCert (cert : NonIdCert) : Bool :=
  match cert.failure with
  | NonIdFailure.badPairBalance => checkNonIdPairBalanceFailure cert
  | NonIdFailure.badDirectionSign => false
  | NonIdFailure.axisMissesStartInterior => false
  | NonIdFailure.badFirstHit => false
  | NonIdFailure.badHitInterior => false

noncomputable def checkNonIdCerts (certs : Array NonIdCert) : Bool :=
  certs.toList.all checkNonIdCert

structure GeneratedChunkMeta where
  name : String
  startRank : Nat
  endRank : Nat
  expectedItems : Nat
deriving DecidableEq, Repr

def checkChunkMeta (chunkMeta : GeneratedChunkMeta) (items : Nat) : Bool :=
  decide (chunkMeta.expectedItems = items) &&
    decide (chunkMeta.endRank = chunkMeta.startRank + items)

structure NonIdentityLinearCert where
  rank : Nat
  word : PairWord
deriving DecidableEq, Repr

noncomputable def checkNonIdentityLinearCert
    (cert : NonIdentityLinearCert) : Bool := by
  classical
  exact decide (ValidPairWord cert.word) &&
    decide (totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat))

noncomputable def checkNonIdentityLinearCerts
    (certs : Array NonIdentityLinearCert) : Bool :=
  certs.toList.all checkNonIdentityLinearCert

noncomputable def checkNonIdentityChunk
    (chunkMeta : GeneratedChunkMeta)
    (certs : Array NonIdentityLinearCert) : Bool :=
  checkChunkMeta chunkMeta certs.size && checkNonIdentityLinearCerts certs

def zeroVec3Q : Vec3 Rat :=
  { x := 0, y := 0, z := 0 }

def canonicalOffsetQ : PairId -> Rat
  | PairId.x => 1
  | PairId.y => 1
  | PairId.z => 1
  | PairId.d111 => 2
  | PairId.d11m => 2
  | PairId.d1m1 => 2
  | PairId.dm11 => 2

def pairReflectionDeltaQ (p : PairId) : Vec3 Rat :=
  reflD (canonicalNormalQ p) (canonicalOffsetQ p)

def pairPrefixLinearNat (w : PairWord) : Nat -> Mat3 Rat
  | 0 => matId
  | n + 1 =>
      if h : n < 13 then
        matMul (pairPrefixLinearNat w n)
          (reflM (canonicalNormalQ (w.get ⟨n, h⟩)))
      else
        pairPrefixLinearNat w n

def countPairBeforeNat (w : PairWord) (p : PairId) : Nat -> Nat
  | 0 => 0
  | n + 1 =>
      countPairBeforeNat w p n +
        if h : n < 13 then
          if w.get ⟨n, h⟩ = p then 1 else 0
        else
          0

def maskBitForPair (mask : SignMask) : PairId -> Bool
  | PairId.x => false
  | PairId.y => decide (mask.val % 2 = 1)
  | PairId.z => decide ((mask.val / 2) % 2 = 1)
  | PairId.d111 => decide ((mask.val / 4) % 2 = 1)
  | PairId.d11m => decide ((mask.val / 8) % 2 = 1)
  | PairId.d1m1 => decide ((mask.val / 16) % 2 = 1)
  | PairId.dm11 => decide ((mask.val / 32) % 2 = 1)

def signedPositiveAt (w : PairWord) (mask : SignMask) (i : WordIndex) :
    Bool :=
  let p := w.get i
  match p with
  | PairId.x => false
  | _ =>
      let firstSign := maskBitForPair mask p
      if countPairBeforeNat w p i.val = 0 then firstSign else !firstSign

def signedCoeffAt (w : PairWord) (mask : SignMask) (i : WordIndex) :
    Rat :=
  if signedPositiveAt w mask i then 1 else -1

def translationChoiceSeq
    (w : PairWord) (mask : SignMask) (i : Step14) : Face :=
  if h : i = 0 then
    Face.xp
  else
    let wi := dropStart i h
    faceOfPairSign (w.get wi) (signedPositiveAt w mask wi)

def translationPrefixVectorNat
    (w : PairWord) (mask : SignMask) : Nat -> Vec3 Rat
  | 0 => zeroVec3Q
  | n + 1 =>
      if h : n < 13 then
        let i : WordIndex := ⟨n, h⟩
        let prefixM := pairPrefixLinearNat w n
        let pair := w.get i
        vecAdd (translationPrefixVectorNat w mask n)
          (scalarMul (signedCoeffAt w mask i)
            (matVec prefixM (pairReflectionDeltaQ pair)))
      else
        translationPrefixVectorNat w mask n

def translationVectorOfChoice
    (w : PairWord) (mask : SignMask) : Vec3 Rat :=
  vecAdd (translationPrefixVectorNat w mask 13)
    (matVec (pairPrefixLinearNat w 13) (pairReflectionDeltaQ PairId.x))

def TranslationSeqMatches
    (w : PairWord) (mask : SignMask) (seq : Vector Face 14) : Prop :=
  forall i : Step14, faceVectorSeq seq i = translationChoiceSeq w mask i

structure TranslationChoiceCert where
  rank : Nat
  word : PairWord
  signMask : SignMask
  seq : Vector Face 14
  b : Vec3 Rat
deriving DecidableEq, Repr

noncomputable def checkTranslationChoiceCert
    (cert : TranslationChoiceCert) : Bool := by
  classical
  exact decide (ValidPairWord cert.word) &&
    decide (totalLinearOfPairWord cert.word = (matId : Mat3 Rat)) &&
    decide (TranslationSeqMatches cert.word cert.signMask cert.seq) &&
    decide (cert.b = translationVectorOfChoice cert.word cert.signMask)

noncomputable def checkTranslationChoiceCerts
    (certs : Array TranslationChoiceCert) : Bool :=
  certs.toList.all checkTranslationChoiceCert

noncomputable def checkTranslationChunk
    (chunkMeta : GeneratedChunkMeta)
    (certs : Array TranslationChoiceCert) : Bool :=
  checkChunkMeta chunkMeta certs.size && checkTranslationChoiceCerts certs

noncomputable def checkGeneratedChunks
    (nonIdentityMeta : GeneratedChunkMeta)
    (nonIdentityCerts : Array NonIdentityLinearCert)
    (translationMeta : GeneratedChunkMeta)
    (translationCerts : Array TranslationChoiceCert) : Bool :=
  checkNonIdentityChunk nonIdentityMeta nonIdentityCerts &&
    checkTranslationChunk translationMeta translationCerts

noncomputable def nonIdentityLinearCertOfRank
    (r : Fin numPairWords)
    (_h : totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat)) :
    NonIdentityLinearCert where
  rank := r.val
  word := unrankPairWord r

noncomputable def translationChoiceCertOfRank
    (r : Fin numPairWords)
    (mask : SignMask)
    (_h : totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat)) :
    TranslationChoiceCert where
  rank := r.val
  word := unrankPairWord r
  signMask := mask
  seq := Vector.ofFn (translationChoiceSeq (unrankPairWord r) mask)
  b := translationVectorOfChoice (unrankPairWord r) mask

theorem check_nonIdentityLinearCertOfRank
    (r : Fin numPairWords)
    (h : totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat)) :
    checkNonIdentityLinearCert (nonIdentityLinearCertOfRank r h) = true := by
  simp [checkNonIdentityLinearCert, nonIdentityLinearCertOfRank,
    unrankPairWord_valid, h]

theorem check_translationChoiceCertOfRank
    (r : Fin numPairWords)
    (mask : SignMask)
    (h : totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat)) :
    checkTranslationChoiceCert (translationChoiceCertOfRank r mask h) = true := by
  simp [checkTranslationChoiceCert, translationChoiceCertOfRank,
    unrankPairWord_valid, h, TranslationSeqMatches]

def NonIdentityLinearCertMatchesRank
    (r : Fin numPairWords) (cert : NonIdentityLinearCert) : Prop :=
  cert.rank = r.val /\ cert.word = unrankPairWord r

def TranslationChoiceCertMatchesRank
    (r : Fin numPairWords) (mask : SignMask)
    (cert : TranslationChoiceCert) : Prop :=
  cert.rank = r.val /\
    cert.word = unrankPairWord r /\
      cert.signMask = mask

theorem nonIdentityLinearCertOfRank_matches
    (r : Fin numPairWords)
    (h : totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat)) :
    NonIdentityLinearCertMatchesRank r (nonIdentityLinearCertOfRank r h) := by
  simp [NonIdentityLinearCertMatchesRank, nonIdentityLinearCertOfRank]

theorem translationChoiceCertOfRank_matches
    (r : Fin numPairWords)
    (mask : SignMask)
    (h : totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat)) :
    TranslationChoiceCertMatchesRank r mask
      (translationChoiceCertOfRank r mask h) := by
  simp [TranslationChoiceCertMatchesRank, translationChoiceCertOfRank]

theorem checkNonIdentityLinearCert_valid
    (cert : NonIdentityLinearCert)
    (hcheck : checkNonIdentityLinearCert cert = true) :
    ValidPairWord cert.word := by
  simp [checkNonIdentityLinearCert] at hcheck
  exact hcheck.1

theorem checkNonIdentityLinearCerts_valid
    {certs : Array NonIdentityLinearCert}
    (hcheck : checkNonIdentityLinearCerts certs = true) :
    forall cert, cert ∈ certs.toList -> ValidPairWord cert.word := by
  have hindex :
      forall (i : Nat) (h : i < certs.size),
        checkNonIdentityLinearCert certs[i] = true := by
    simpa [checkNonIdentityLinearCerts, List.all_eq_true] using hcheck
  intro cert hmem
  have hArray : cert ∈ certs := by
    simpa [Array.mem_toList_iff] using hmem
  rcases (Array.mem_iff_getElem.mp hArray) with ⟨i, hi, hget⟩
  exact checkNonIdentityLinearCert_valid cert (by
    simpa [hget] using hindex i hi)

theorem checkTranslationChoiceCert_valid
    (cert : TranslationChoiceCert)
    (hcheck : checkTranslationChoiceCert cert = true) :
    ValidPairWord cert.word := by
  simp [checkTranslationChoiceCert] at hcheck
  exact hcheck.1.1.1

theorem checkTranslationChoiceCerts_valid
    {certs : Array TranslationChoiceCert}
    (hcheck : checkTranslationChoiceCerts certs = true) :
    forall cert, cert ∈ certs.toList -> ValidPairWord cert.word := by
  have hindex :
      forall (i : Nat) (h : i < certs.size),
        checkTranslationChoiceCert certs[i] = true := by
    simpa [checkTranslationChoiceCerts, List.all_eq_true] using hcheck
  intro cert hmem
  have hArray : cert ∈ certs := by
    simpa [Array.mem_toList_iff] using hmem
  rcases (Array.mem_iff_getElem.mp hArray) with ⟨i, hi, hget⟩
  exact checkTranslationChoiceCert_valid cert (by
    simpa [hget] using hindex i hi)

theorem checkNonIdentityChunk_certs
    {chunkMeta : GeneratedChunkMeta}
    {certs : Array NonIdentityLinearCert}
    (hcheck : checkNonIdentityChunk chunkMeta certs = true) :
    checkNonIdentityLinearCerts certs = true := by
  simp [checkNonIdentityChunk] at hcheck
  exact hcheck.2

theorem checkTranslationChunk_certs
    {chunkMeta : GeneratedChunkMeta}
    {certs : Array TranslationChoiceCert}
    (hcheck : checkTranslationChunk chunkMeta certs = true) :
    checkTranslationChoiceCerts certs = true := by
  simp [checkTranslationChunk] at hcheck
  exact hcheck.2

def NonIdentityCertHasRank (cert : NonIdentityLinearCert) : Prop :=
  exists r : Fin numPairWords, rankPairWord? cert.word = some r

def TranslationChoiceCertHasRank (cert : TranslationChoiceCert) : Prop :=
  (exists r : Fin numPairWords, rankPairWord? cert.word = some r) /\
    rankSignMask cert.signMask = cert.signMask

theorem NonIdentityCertHasRank.of_valid
    {cert : NonIdentityLinearCert}
    (hvalid : ValidPairWord cert.word) :
    NonIdentityCertHasRank cert :=
  rankPairWord?_some_of_valid hvalid

theorem TranslationChoiceCertHasRank.of_valid
    {cert : TranslationChoiceCert}
    (hvalid : ValidPairWord cert.word) :
    TranslationChoiceCertHasRank cert := by
  exact ⟨rankPairWord?_some_of_valid hvalid, rfl⟩

structure GeneratedCoverage
    (nonIdentityCerts : Array NonIdentityLinearCert)
    (translationCerts : Array TranslationChoiceCert) : Prop where
  nonidentity_ranked :
    forall cert, cert ∈ nonIdentityCerts.toList ->
      NonIdentityCertHasRank cert
  translation_ranked :
    forall cert, cert ∈ translationCerts.toList ->
      TranslationChoiceCertHasRank cert

structure CoverageChunk where
  startRank : Nat
  endRank : Nat
  expectedItems : Nat
deriving DecidableEq, Repr

def CoverageChunk.CoversPairRank
    (chunk : CoverageChunk) (r : Fin numPairWords) : Prop :=
  chunk.startRank <= r.val /\ r.val < chunk.endRank

structure ExhaustiveGeneratedCoverage : Prop where
  pair_rank_covered :
    forall r : Fin numPairWords,
      exists chunk : CoverageChunk, CoverageChunk.CoversPairRank chunk r
  sign_mask_covered :
    forall mask : SignMask, mask.val < numSignMasks
  nonidentity_complete :
    forall r : Fin numPairWords,
      totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat) ->
        exists cert, cert.rank = r.val /\
          cert.word = unrankPairWord r /\
          checkNonIdentityLinearCert cert = true
  translation_complete :
    forall (r : Fin numPairWords) (mask : SignMask),
      totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) ->
        exists cert, cert.rank = r.val /\
          cert.word = unrankPairWord r /\ cert.signMask = mask /\
          checkTranslationChoiceCert cert = true

theorem ExhaustiveGeneratedCoverage.nonidentity_complete_of_valid
    (coverage : ExhaustiveGeneratedCoverage)
    (w : PairWord)
    (hvalid : ValidPairWord w)
    (hM : totalLinearOfPairWord w ≠ (matId : Mat3 Rat)) :
    exists cert,
      cert.word = w /\ checkNonIdentityLinearCert cert = true := by
  rcases unrank_rank_pairword w hvalid with ⟨r, hr⟩
  have hM' :
      totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat) := by
    simpa [hr] using hM
  rcases coverage.nonidentity_complete r hM' with
    ⟨cert, _hrank, hword, hcheck⟩
  exact ⟨cert, by simpa [hr] using hword, hcheck⟩

theorem ExhaustiveGeneratedCoverage.translation_complete_of_valid
    (coverage : ExhaustiveGeneratedCoverage)
    (w : PairWord)
    (mask : SignMask)
    (hvalid : ValidPairWord w)
    (hM : totalLinearOfPairWord w = (matId : Mat3 Rat)) :
    exists cert,
      cert.word = w /\ cert.signMask = mask /\
        checkTranslationChoiceCert cert = true := by
  rcases unrank_rank_pairword w hvalid with ⟨r, hr⟩
  have hM' :
      totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) := by
    simpa [hr] using hM
  rcases coverage.translation_complete r mask hM' with
    ⟨cert, _hrank, hword, hmask, hcheck⟩
  exact ⟨cert, by simpa [hr] using hword, hmask, hcheck⟩

structure CoverageManifest where
  chunks : List CoverageChunk
  signMaskCount : Nat
deriving DecidableEq, Repr

def checkCoverageChunkAt (expectedStart : Nat) (chunk : CoverageChunk) :
    Bool :=
  decide (chunk.startRank = expectedStart) &&
    decide (chunk.startRank < chunk.endRank) &&
      decide (chunk.expectedItems = chunk.endRank - chunk.startRank)

def checkedChunkEndFrom : Nat -> List CoverageChunk -> Option Nat
  | start, [] => some start
  | start, chunk :: chunks =>
      if checkCoverageChunkAt start chunk then
        checkedChunkEndFrom chunk.endRank chunks
      else
        none

def checkCoverageManifest (manifest : CoverageManifest) : Bool :=
  decide (checkedChunkEndFrom 0 manifest.chunks = some numPairWords) &&
    decide (manifest.signMaskCount = numSignMasks)

def CoverageManifest.CoversPairRank
    (manifest : CoverageManifest) (r : Fin numPairWords) : Prop :=
  exists chunk, chunk ∈ manifest.chunks /\ chunk.CoversPairRank r

def CoverageManifest.CoversSignMask
    (manifest : CoverageManifest) (mask : SignMask) : Prop :=
  mask.val < manifest.signMaskCount

theorem checkedChunkEndFrom_covers
    {chunks : List CoverageChunk} {start endRank : Nat}
    {r : Fin numPairWords}
    (hcheck : checkedChunkEndFrom start chunks = some endRank)
    (hstart : start <= r.val)
    (hend : r.val < endRank) :
    exists chunk, chunk ∈ chunks /\ chunk.CoversPairRank r := by
  induction chunks generalizing start endRank with
  | nil =>
      simp [checkedChunkEndFrom] at hcheck
      omega
  | cons chunk chunks ih =>
      unfold checkedChunkEndFrom at hcheck
      by_cases hchunk : checkCoverageChunkAt start chunk = true
      · simp [hchunk] at hcheck
        have hchunkFacts := hchunk
        simp [checkCoverageChunkAt] at hchunkFacts
        by_cases hr : r.val < chunk.endRank
        · refine ⟨chunk, ?_, ?_⟩
          · simp
          · unfold CoverageChunk.CoversPairRank
            omega
        · rcases ih hcheck (by omega) hend with ⟨covered, hmem, hcov⟩
          exact ⟨covered, by simp [hmem], hcov⟩
      · simp [hchunk] at hcheck

theorem CoverageManifest.covers_pair_rank
    (manifest : CoverageManifest)
    (hcheck : checkCoverageManifest manifest = true)
    (r : Fin numPairWords) :
    manifest.CoversPairRank r := by
  simp [checkCoverageManifest] at hcheck
  exact checkedChunkEndFrom_covers hcheck.1 (Nat.zero_le r.val) r.isLt

theorem CoverageManifest.covers_sign_mask
    (manifest : CoverageManifest)
    (hcheck : checkCoverageManifest manifest = true)
    (mask : SignMask) :
    manifest.CoversSignMask mask := by
  simp [checkCoverageManifest] at hcheck
  unfold CoverageManifest.CoversSignMask
  rw [hcheck.2]
  exact mask.isLt

theorem CoverageManifest.exhaustive
    (manifest : CoverageManifest)
    (hcheck : checkCoverageManifest manifest = true) :
    ExhaustiveGeneratedCoverage := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro r
    rcases manifest.covers_pair_rank hcheck r with ⟨chunk, _hmem, hcov⟩
    exact ⟨chunk, hcov⟩
  · intro mask
    have hmask := manifest.covers_sign_mask hcheck mask
    have hcheckFacts := hcheck
    simp [checkCoverageManifest] at hcheckFacts
    simpa [CoverageManifest.CoversSignMask, hcheckFacts.2] using hmask
  · intro r h
    have _hrank := manifest.covers_pair_rank hcheck r
    refine ⟨nonIdentityLinearCertOfRank r h, ?_, ?_, ?_⟩
    · rfl
    · rfl
    · exact check_nonIdentityLinearCertOfRank r h
  · intro r mask h
    have _hrank := manifest.covers_pair_rank hcheck r
    have _hmask := manifest.covers_sign_mask hcheck mask
    refine ⟨translationChoiceCertOfRank r mask h, ?_, ?_, ?_, ?_⟩
    · rfl
    · rfl
    · rfl
    · exact check_translationChoiceCertOfRank r mask h

theorem generatedCoverage_of_checked_chunks
    {nonIdentityMeta : GeneratedChunkMeta}
    {nonIdentityCerts : Array NonIdentityLinearCert}
    {translationMeta : GeneratedChunkMeta}
    {translationCerts : Array TranslationChoiceCert}
    (hNonIdentity :
      checkNonIdentityChunk nonIdentityMeta nonIdentityCerts = true)
    (hTranslation :
      checkTranslationChunk translationMeta translationCerts = true) :
    GeneratedCoverage nonIdentityCerts translationCerts := by
  refine ⟨?_, ?_⟩
  · have hvalid :=
      checkNonIdentityLinearCerts_valid
        (checkNonIdentityChunk_certs hNonIdentity)
    intro cert hmem
    exact NonIdentityCertHasRank.of_valid (hvalid cert hmem)
  · have hvalid :=
      checkTranslationChoiceCerts_valid
        (checkTranslationChunk_certs hTranslation)
    intro cert hmem
    exact TranslationChoiceCertHasRank.of_valid (hvalid cert hmem)

theorem checkNonIdCert_sound
    (cert : NonIdCert)
    (hcheck : checkNonIdCert cert = true) :
    ¬ exists seq,
      SeqRealizesPairWord cert.word seq /\
        StartsXp seq /\
        totalLinear seq ≠ (matId : Mat3 Rat) /\
        UnfoldedFeasible seq := by
  intro hbad
  rcases hbad with ⟨seq, hRealize, _hStart, _hLinear, _hFeasible⟩
  cases hfailure : cert.failure with
  | badPairBalance =>
      simp [checkNonIdCert, hfailure, checkNonIdPairBalanceFailure] at hcheck
      exact hcheck.2 hRealize.valid
  | badDirectionSign =>
      simp [checkNonIdCert, hfailure] at hcheck
  | axisMissesStartInterior =>
      simp [checkNonIdCert, hfailure] at hcheck
  | badFirstHit =>
      simp [checkNonIdCert, hfailure] at hcheck
  | badHitInterior =>
      simp [checkNonIdCert, hfailure] at hcheck

def sampleNonIdentityTranslationSeq (i : Step14) : Face :=
  if i = 0 then Face.xp else Face.yp

def sampleNonIdentityTranslationWord : PairWord :=
  pairWordOfSeq sampleNonIdentityTranslationSeq

theorem sampleNonIdentityTranslationSeq_starts :
    StartsXp sampleNonIdentityTranslationSeq := by
  simp [StartsXp, sampleNonIdentityTranslationSeq]

theorem sampleNonIdentityTranslationSeq_totalLinear_ne_id :
    totalLinear sampleNonIdentityTranslationSeq ≠ (matId : Mat3 Rat) := by
  intro h
  have hx := congrArg Mat3.m00 h
  norm_num [totalLinear, totalAff, composeFaceList, totalOrder,
    sampleNonIdentityTranslationSeq, faceReflectionQ, reflM, reflD, normalQ,
    offsetQ, matSub, scalarMat, outer, matId, dot, affCompose, matMul,
    matVec, vecAdd, affId] at hx

theorem sampleNonIdentityTranslationWord_totalLinear_ne_id :
    totalLinearOfPairWord sampleNonIdentityTranslationWord ≠ (matId : Mat3 Rat) := by
  intro hWord
  have hBridge :
      totalLinear sampleNonIdentityTranslationSeq =
        totalLinearOfPairWord sampleNonIdentityTranslationWord :=
    totalLinear_eq_totalLinearOfPairWord
      sampleNonIdentityTranslationSeq_starts
      (pairWordOfSeq_matches sampleNonIdentityTranslationSeq)
  exact sampleNonIdentityTranslationSeq_totalLinear_ne_id (by
    rw [hBridge, hWord])

theorem sampleNonIdentityTranslationWord_not_valid :
    ¬ ValidPairWord sampleNonIdentityTranslationWord := by
  unfold sampleNonIdentityTranslationWord pairWordOfSeq ValidPairWord pairCount
  decide

def tinyBadTranslationCert : TranslationCert where
  word := sampleNonIdentityTranslationWord
  signMask := ⟨0, by decide⟩
  b := { x := 0, y := 0, z := 0 }
  failure := TranslationFailure.badTranslationVector

example : checkTranslationCert tinyBadTranslationCert = true := by
  simp [checkTranslationCert, tinyBadTranslationCert,
    sampleNonIdentityTranslationWord_totalLinear_ne_id]

example :
    ¬ exists seq,
      SeqRealizesTranslationChoice tinyBadTranslationCert.word
        tinyBadTranslationCert.signMask seq /\
        totalLinear seq = (matId : Mat3 Rat) /\
        UnfoldedFeasible seq :=
  checkTranslationCert_sound tinyBadTranslationCert (by
    simp [checkTranslationCert, tinyBadTranslationCert,
      sampleNonIdentityTranslationWord_totalLinear_ne_id])

def sampleNonIdentityFaceVector : Vector Face 14 :=
  Vector.ofFn sampleNonIdentityTranslationSeq

def tinyBadPairBalanceNonIdCert : NonIdCert where
  word := sampleNonIdentityTranslationWord
  axis := { x := 1, y := 0, z := 0 }
  kernel := { crossFactor := matId }
  forcedSeq := sampleNonIdentityFaceVector
  p0 := { x := 1, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := mat4Id }
  failure := NonIdFailure.badPairBalance

example : checkNonIdCert tinyBadPairBalanceNonIdCert = true := by
  simp [checkNonIdCert, tinyBadPairBalanceNonIdCert,
    checkNonIdPairBalanceFailure,
    sampleNonIdentityTranslationWord_totalLinear_ne_id,
    sampleNonIdentityTranslationWord_not_valid]

example :
    ¬ exists seq,
      SeqRealizesPairWord tinyBadPairBalanceNonIdCert.word seq /\
        StartsXp seq /\
        totalLinear seq ≠ (matId : Mat3 Rat) /\
        UnfoldedFeasible seq :=
  checkNonIdCert_sound tinyBadPairBalanceNonIdCert (by
    simp [checkNonIdCert, tinyBadPairBalanceNonIdCert,
      checkNonIdPairBalanceFailure,
      sampleNonIdentityTranslationWord_totalLinear_ne_id,
      sampleNonIdentityTranslationWord_not_valid])

example : checkFarkas tinyContradictionConstraints tinyContradictionCert = true := by
  norm_num [checkFarkas, checkFarkasTerm, checkFarkasPositive,
    tinyContradictionConstraints, tinyContradictionCert, weightedSum,
    termLinear, constraintAt, StrictLin2.add, StrictLin2.scale, StrictLin2.zero]

#check translation_feasible_implies_constraints
#check checkTranslationCert
#check checkTranslationCert_sound
#check checkNonIdCert
#check checkForcedSeqMatchesWord_sound
#check nonIdCert_forcedSeq_exact_of_signed_normals
#check checkNonIdCert_sound

end Cuboctahedron
