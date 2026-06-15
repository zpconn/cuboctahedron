import Cuboctahedron.Generated.SmallSample

/-!
Generated translation real-certificate sample chunk for Step 14C.
-/

namespace Cuboctahedron.Generated.Translation.Chunk0000

set_option maxHeartbeats 1600000
set_option maxRecDepth 10000

open Cuboctahedron.Generated.SmallSample

def coveredCase000 : GeneratedTranslationCase where
  pairRank := 0
  signMask := 0

theorem translationBadDirection000_coveredCase :
    checkTranslationCoveredCase coveredCase000 SmallSample.translationBadDirection000 = true := by
  decide

def chunk : GeneratedTranslationCertChunk where
  name := "Translation.Chunk0000"
  coveredCases := #[coveredCase000]
  certs := translationCerts

def certs : Array TranslationCert :=
  chunk.certs

theorem certs_check : checkGeneratedTranslationCertChunk chunk = true := by
  simp [checkGeneratedTranslationCertChunk, checkTranslationCoveredCaseList,
    chunk, SmallSample.translationCerts,
    translationBadDirection000_coveredCase, SmallSample.translationBadDirection000_check]

end Cuboctahedron.Generated.Translation.Chunk0000
