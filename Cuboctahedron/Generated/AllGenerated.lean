import Cuboctahedron.Generated.NonIdentity.Chunk0000
import Cuboctahedron.Generated.Translation.Chunk0000

/-!
Aggregate import for generated sample chunks and their rankability coverage.
-/

namespace Cuboctahedron.Generated

noncomputable def allGeneratedCheck : Bool :=
  checkGeneratedChunks NonIdentity.Chunk0000.chunkMeta
    NonIdentity.Chunk0000.certs
    Translation.Chunk0000.chunkMeta
    Translation.Chunk0000.certs

theorem allGeneratedCheck_true : allGeneratedCheck = true := by
  unfold allGeneratedCheck checkGeneratedChunks
  rw [NonIdentity.Chunk0000.certs_check, Translation.Chunk0000.certs_check]
  rfl

theorem allGeneratedCoverage :
    GeneratedCoverage NonIdentity.Chunk0000.certs
      Translation.Chunk0000.certs :=
  generatedCoverage_of_checked_chunks
    NonIdentity.Chunk0000.certs_check
    Translation.Chunk0000.certs_check

end Cuboctahedron.Generated
