import Cuboctahedron.Generated.NonIdentity.Chunk0000
import Cuboctahedron.Generated.NonIdentity.FamilySample
import Cuboctahedron.Generated.NonIdentity.ParametricSample
import Cuboctahedron.Generated.NonIdentity.FamilyPartition
import Cuboctahedron.Generated.NonIdentity.ResidualTemplates
import Cuboctahedron.Generated.NonIdentity.Residual.CompactPilot
import Cuboctahedron.Generated.NonIdentity.Residual.PackedPilot
import Cuboctahedron.Generated.Translation.Chunk0000
import Cuboctahedron.Generated.Translation.ParametricSample
import Cuboctahedron.Generated.Translation.FamilyPartition
import Cuboctahedron.Generated.CanonicalSample
import Cuboctahedron.Generated.CanonicalCoverageManifest
import Cuboctahedron.Generated.CompactPilot
import Cuboctahedron.Generated.CoverageTreeSample
import Cuboctahedron.Generated.NonIdentity.Residual.All
import Cuboctahedron.Generated.Translation.Farkas.All

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

noncomputable def allGeneratedParametricCheck : Bool :=
  NonIdentity.checkParametricSamples &&
    Translation.checkParametricSamples

theorem allGeneratedParametricCheck_true :
    allGeneratedParametricCheck = true := by
  unfold allGeneratedParametricCheck
  rw [NonIdentity.checkParametricSamples_true,
    Translation.checkParametricSamples_true]
  rfl

#check exhaustiveNonIdBadDirectionFamily_partition
#check exhaustiveNonIdBadPairBalanceFamily_partition
#check exhaustiveTranslationBadDirectionFamily_partition
#check exhaustiveTranslationBadVectorFamily_partition
#check NonIdentity.sampleFamilyPartition
#check Translation.sampleFamilyPartition

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
      checkNonIdCoverageForest NonIdentity.sampleFamilyCoverage &&
        checkTranslationCoverageTree CoverageTreeSample.translationRawTree &&
          checkTranslationCoverageTree CoverageTreeSample.translationTransportTree

theorem allGeneratedCoverageTreeCheck_true :
    allGeneratedCoverageTreeCheck = true := by
  unfold allGeneratedCoverageTreeCheck
  rw [CoverageTreeSample.nonIdRawTree_check,
    CoverageTreeSample.nonIdTransportTree_check,
    NonIdentity.sampleFamilyCoverage_check,
    CoverageTreeSample.translationRawTree_check,
    CoverageTreeSample.translationTransportTree_check]
  rfl

end Cuboctahedron.Generated
