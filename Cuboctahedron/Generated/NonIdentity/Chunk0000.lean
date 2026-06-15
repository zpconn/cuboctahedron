import Cuboctahedron.Generated.SmallSample

/-!
Generated non-identity sample chunk for Step 13.

This is a small exact chunk scaffold, not the exhaustive final search.
-/

namespace Cuboctahedron.Generated.NonIdentity.Chunk0000

set_option maxHeartbeats 800000

open Cuboctahedron.Generated.SmallSample

def chunkMeta : GeneratedChunkMeta where
  name := "NonIdentity.Chunk0000"
  startRank := 0
  endRank := 3
  expectedItems := 3

def cert000 : NonIdentityLinearCert where
  rank := 0
  word := word001

theorem cert000_check :
    checkNonIdentityLinearCert cert000 = true := by
  simp [checkNonIdentityLinearCert, cert000,
    word001_valid,
    word001_totalLinear_ne_id]

def cert001 : NonIdentityLinearCert where
  rank := 1
  word := word004

theorem cert001_check :
    checkNonIdentityLinearCert cert001 = true := by
  simp [checkNonIdentityLinearCert, cert001,
    word004_valid,
    word004_totalLinear_ne_id]

def cert002 : NonIdentityLinearCert where
  rank := 2
  word := word006

theorem cert002_check :
    checkNonIdentityLinearCert cert002 = true := by
  simp [checkNonIdentityLinearCert, cert002,
    word006_valid,
    word006_totalLinear_ne_id]

def certs : Array NonIdentityLinearCert :=
  #[cert000, cert001, cert002]

theorem certs_check : checkNonIdentityChunk chunkMeta certs = true := by
  simp [checkNonIdentityChunk, checkChunkMeta, chunkMeta,
    checkNonIdentityLinearCerts, certs,
    cert000_check, cert001_check, cert002_check]

end Cuboctahedron.Generated.NonIdentity.Chunk0000
