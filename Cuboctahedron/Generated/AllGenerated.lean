import Cuboctahedron.Generated.NonIdentity.Chunk0000
import Cuboctahedron.Generated.Translation.Chunk0000

/-!
Aggregate import for generated Step 14C real-certificate sample chunks.
-/

namespace Cuboctahedron.Generated

noncomputable def allGeneratedCheck : Bool :=
  checkGeneratedNonIdCertChunk NonIdentity.Chunk0000.chunk &&
    checkGeneratedTranslationCertChunk Translation.Chunk0000.chunk

theorem allGeneratedCheck_true : allGeneratedCheck = true := by
  unfold allGeneratedCheck
  rw [NonIdentity.Chunk0000.certs_check, Translation.Chunk0000.certs_check]
  rfl

end Cuboctahedron.Generated
