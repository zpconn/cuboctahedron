import Cuboctahedron.Generated.NonIdentity.Chunk0000
import Cuboctahedron.Generated.Translation.Chunk0000
import Cuboctahedron.Generated.CanonicalSample
import Cuboctahedron.Generated.CoverageTreeSample

/-!
Aggregate import for generated Step 14C/14E real-certificate sample chunks.
-/

namespace Cuboctahedron.Generated

noncomputable def allGeneratedCheck : Bool :=
  checkGeneratedNonIdCertChunk NonIdentity.Chunk0000.chunk &&
    checkGeneratedTranslationCertChunk Translation.Chunk0000.chunk

theorem allGeneratedCheck_true : allGeneratedCheck = true := by
  unfold allGeneratedCheck
  rw [NonIdentity.Chunk0000.certs_check, Translation.Chunk0000.certs_check]
  rfl

theorem nonidentityChunk_sound :
    List.Forall₂ NonIdRankCertificateCovered
      NonIdentity.Chunk0000.chunk.coveredRanks.toList
      NonIdentity.Chunk0000.chunk.certs.toList :=
  checkGeneratedNonIdCertChunk_sound NonIdentity.Chunk0000.certs_check

theorem translationChunk_sound :
    List.Forall₂ TranslationCaseCertificateCovered
      Translation.Chunk0000.chunk.coveredCases.toList
      Translation.Chunk0000.chunk.certs.toList :=
  checkGeneratedTranslationCertChunk_sound Translation.Chunk0000.certs_check

noncomputable def allGeneratedCoverageTreeCheck : Bool :=
  checkNonIdCoverageTree CoverageTreeSample.nonIdRawTree &&
    checkNonIdCoverageTree CoverageTreeSample.nonIdTransportTree &&
      checkTranslationCoverageTree CoverageTreeSample.translationRawTree &&
        checkTranslationCoverageTree CoverageTreeSample.translationTransportTree

theorem allGeneratedCoverageTreeCheck_true :
    allGeneratedCoverageTreeCheck = true := by
  unfold allGeneratedCoverageTreeCheck
  rw [CoverageTreeSample.nonIdRawTree_check,
    CoverageTreeSample.nonIdTransportTree_check,
    CoverageTreeSample.translationRawTree_check,
    CoverageTreeSample.translationTransportTree_check]
  rfl

end Cuboctahedron.Generated
