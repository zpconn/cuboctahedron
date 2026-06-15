import Cuboctahedron.Generated.NonIdentity.Chunk0000
import Cuboctahedron.Generated.Translation.Chunk0000
import Cuboctahedron.Generated.CoverageDag

/-!
Aggregate import for generated sample chunks and exhaustive generated coverage.
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

theorem sampleChunkRankabilityCoverage :
    GeneratedCoverage NonIdentity.Chunk0000.certs
      Translation.Chunk0000.certs :=
  generatedCoverage_of_checked_chunks
    NonIdentity.Chunk0000.certs_check
    Translation.Chunk0000.certs_check

theorem allSampleChunkRankabilityCoverage :
    GeneratedCoverage NonIdentity.Chunk0000.certs
      Translation.Chunk0000.certs :=
  sampleChunkRankabilityCoverage

theorem generatedCoverageTree_exhaustive :
    ExhaustiveGeneratedCoverage :=
  CoverageDag.generatedCoverageTree_exhaustive

theorem exhaustiveGeneratedCoverage :
    ExhaustiveGeneratedCoverage :=
  generatedCoverageTree_exhaustive

end Cuboctahedron.Generated
