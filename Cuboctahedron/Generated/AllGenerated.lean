import Cuboctahedron.Generated.NonIdentity.Chunk0000
import Cuboctahedron.Generated.Translation.Chunk0000
import Cuboctahedron.Generated.CoverageManifest

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

theorem generatedCoverageManifest_exhaustive :
    ExhaustiveGeneratedCoverage :=
  CoverageManifest.generatedCoverageManifest_exhaustive

theorem exhaustiveGeneratedCoverage :
    ExhaustiveGeneratedCoverage :=
  generatedCoverageManifest_exhaustive

theorem allPairRanksCovered (r : Fin numPairWords) :
    Exists fun chunk : CoverageChunk =>
      CoverageChunk.CoversPairRank chunk r :=
  exhaustiveGeneratedCoverage.pair_rank_covered r

theorem allSignMasksCovered (mask : SignMask) :
    mask.val < numSignMasks :=
  exhaustiveGeneratedCoverage.sign_mask_covered mask

end Cuboctahedron.Generated
