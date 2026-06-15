import Cuboctahedron.Generated.SmallSample

/-!
Generated non-identity real-certificate sample chunk for Step 14C.
-/

namespace Cuboctahedron.Generated.NonIdentity.Chunk0000

set_option maxHeartbeats 1600000
set_option maxRecDepth 10000

open Cuboctahedron.Generated.SmallSample

theorem nonIdBadDirection000_coveredRank :
    checkNonIdCoveredRank 1 SmallSample.nonIdBadDirection000 = true := by
  decide

def chunk : GeneratedNonIdCertChunk where
  name := "NonIdentity.Chunk0000"
  coveredRanks := #[1]
  certs := nonIdCerts

def certs : Array NonIdCert :=
  chunk.certs

theorem certs_check : checkGeneratedNonIdCertChunk chunk = true := by
  simp [checkGeneratedNonIdCertChunk, checkNonIdCoveredRankList,
    chunk, SmallSample.nonIdCerts,
    nonIdBadDirection000_coveredRank, SmallSample.nonIdBadDirection000_check]

end Cuboctahedron.Generated.NonIdentity.Chunk0000
