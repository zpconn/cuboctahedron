import Cuboctahedron.Generated.NonIdentity.Chunk0000
import Cuboctahedron.Generated.Translation.Chunk0000
import Cuboctahedron.Search.CertificateChecker

/-!
Generated compact certificate pilot wrapper for Step 14E.6D.
This wrapper includes and decodes the tiny sample blob, then checks a
semantic sample bundle built from existing generated sample chunks.  The
100k compact pilot is independently decoded and benchmarked by the
external checker; it is not an exhaustive coverage witness.
-/

namespace Cuboctahedron.Generated

def compactPilotBlob : String := include_str ".."/".."/"certs"/"compact_cert_sample.b64"

def compactPilotDecoded : Except DecodeError CertBundle :=
  decodeCertBlob compactPilotBlob

noncomputable def compactPilotBundle : CertBundle :=
  { kind := BundleKind.pilot
    schemaVersion := 1
    pilotLimit := 2
    nonidentityRanks := #[1]
    translationCases := #[{ pairRank := 0, signMask := 0 }]
    sampleNonidentityRanks := #[1]
    sampleTranslationCases := #[{ pairRank := 0, signMask := 0 }]
    sampleNonidentityCerts := NonIdentity.Chunk0000.certs
    sampleTranslationCerts := Translation.Chunk0000.certs }

noncomputable def compactPilotCheck : Bool :=
  checkPilotCertBundle compactPilotBundle

theorem compactPilotCheck_true : compactPilotCheck = true := by
  have hNonId :
      checkNonIdCoveredRankList [1]
        NonIdentity.Chunk0000.certs.toList = true := by
    simp [NonIdentity.Chunk0000.certs, NonIdentity.Chunk0000.chunk,
      SmallSample.nonIdCerts, checkNonIdCoveredRankList,
      NonIdentity.Chunk0000.nonIdBadDirection000_coveredRank,
      SmallSample.nonIdBadDirection000_check]
  have hTranslation :
      checkTranslationCoveredCaseList
        [{ pairRank := 0, signMask := 0 }]
        Translation.Chunk0000.certs.toList = true := by
    have hCovered :
        checkTranslationCoveredCase { pairRank := 0, signMask := 0 }
          SmallSample.translationBadDirection000 = true := by
      simpa [Translation.Chunk0000.coveredCase000] using
        Translation.Chunk0000.translationBadDirection000_coveredCase
    simp [Translation.Chunk0000.certs, Translation.Chunk0000.chunk,
      SmallSample.translationCerts, checkTranslationCoveredCaseList,
      hCovered,
      SmallSample.translationBadDirection000_check]
  simp [compactPilotCheck, checkPilotCertBundle, compactPilotBundle,
    hNonId, hTranslation]

def compactPilotCoverage : PilotGeneratedCoverage compactPilotBundle :=
  checkPilotCertBundle_sound compactPilotCheck_true
