import Cuboctahedron.Search.CertificateChecker

/-!
Generated packed residual non-identity certificate chunk.

The blob is decoded by Lean and checked by `checkPackedResidualCerts`.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Chunk34575

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def chunkBlob : String := include_str ".."/".."/".."/".."/"certs"/"nonidentity_residual"/"Chunk34575.b64"

noncomputable def decodedChunkCerts : Array CompactNonIdResidualCert :=
  decodedPackedResidualCerts chunkBlob

theorem chunk_check :
    checkPackedResidualCerts chunkBlob = true := by
  unfold checkPackedResidualCerts
  decide

theorem chunk_sound :
    forall cert,
      cert ∈ decodedChunkCerts.toList ->
        exists ordinary : NonIdCert,
          ordinary.word = unrankPairWord cert.rank /\
            checkNonIdCert ordinary = true :=
  checkPackedResidualCerts_sound chunkBlob chunk_check

end Cuboctahedron.Generated.NonIdentity.Residual.Chunk34575
