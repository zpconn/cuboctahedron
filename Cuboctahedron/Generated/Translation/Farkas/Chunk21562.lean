import Cuboctahedron.Search.CertificateChecker

/-!
Generated packed translation Farkas certificate chunk.

The blob is decoded by Lean and checked by
`checkPackedTranslationFarkasCerts`.
-/

namespace Cuboctahedron.Generated.Translation.Farkas.Chunk21562

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def chunkBlob : String := include_str ".."/".."/".."/".."/"certs"/"translation_farkas"/"Chunk21562.b64"

noncomputable def decodedChunkCerts : Array CompactTranslationFarkasCert :=
  decodedPackedTranslationFarkasCerts chunkBlob

theorem chunk_check :
    checkPackedTranslationFarkasCerts chunkBlob = true := by
  unfold checkPackedTranslationFarkasCerts
  decide

theorem chunk_sound :
    forall cert,
      cert ∈ decodedChunkCerts.toList ->
        ¬ exists seq,
          SeqRealizesTranslationChoice (unrankPairWord cert.rank) cert.mask seq /\
            totalLinear seq = (matId : Mat3 Rat) /\
              UnfoldedFeasible seq :=
  checkPackedTranslationFarkasCerts_sound chunkBlob chunk_check

end Cuboctahedron.Generated.Translation.Farkas.Chunk21562
