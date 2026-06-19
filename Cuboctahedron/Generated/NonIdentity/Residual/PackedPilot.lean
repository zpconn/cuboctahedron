import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.CompactPilot

/-!
Generated packed residual non-identity certificate pilot for Step 14E.7B5.

The smoke blob keeps a tiny decoder sanity check in-tree.  The full pilot
theorem checks the generated packed blob itself through the same computable
residual checker used by future packed chunks.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.PackedPilot

open Cuboctahedron.Generated.NonIdentity.Residual.CompactPilot

set_option maxHeartbeats 2000000
set_option maxRecDepth 100000
set_option linter.unusedSimpArgs false

def packedResidualPilotBlob : String := include_str ".."/".."/".."/".."/"certs"/"packed_residual_pilot.b64"

def packedResidualPilotDecoded :
    Except DecodeError (Array CompactNonIdResidualCert) :=
  decodePackedResidualCerts packedResidualPilotBlob

def packedResidualSmokeBlob : String :=
  "Q09SQwECAQMCAQIAAAA="

def packedResidualSmokeBytes : List Nat :=
  [67, 79, 82, 67, 1, 2, 1, 3, 2, 1, 2, 0, 0, 0]

theorem packedResidualSmokeBase64_eq :
    decodeBase64 packedResidualSmokeBlob = .ok packedResidualSmokeBytes := by
  decide

theorem packedResidualSmokeDecode_eq :
    decodePackedResidualCerts packedResidualSmokeBlob =
      .ok (#[] : Array CompactNonIdResidualCert) := by
  decide

def packedResidualPilotMetadataBytes : List Nat :=
  [2, 2, 128, 183, 124]

def packedResidualPilotHeaderBytes : List Nat :=
  [1, 5, 2, 226, 1]

def packedResidualPilotCert0Bytes : List Nat :=
  [12, 0, 1, 1, 2, 2, 3, 3, 4, 5, 6, 4, 5, 6, 1, 1, 5, 1, 2, 1,
    58, 16, 10, 1, 0, 1, 1, 1, 37, 16, 0, 1, 37, 16, 46, 16, 0, 1, 0, 1,
    3, 2, 4, 5, 6, 13, 7, 11, 10, 12, 8, 9, 2, 1, 249, 6, 66, 172, 1, 33,
    152, 2, 33, 0, 1, 0, 1, 0, 1, 2, 1, 134, 4, 176, 1, 205, 1, 176, 1, 49,
    88, 6, 1, 205, 1, 176, 1, 10, 88, 145, 1, 176, 1, 1, 1, 2, 11, 6, 11, 1,
    11, 0, 1, 0]

def packedResidualPilotCert1Bytes : List Nat :=
  [159, 1, 0, 1, 1, 2, 2, 3, 4, 5, 3, 6, 5, 6, 4, 21, 15, 15, 15, 2,
    1, 162, 5, 136, 14, 194, 4, 194, 3, 0, 1, 217, 2, 225, 1, 221, 5, 136, 14, 0,
    1, 213, 7, 136, 14, 198, 2, 194, 3, 0, 1, 0, 1, 3, 2, 4, 5, 13, 7, 11,
    6, 10, 8, 9, 12, 2, 1, 66, 41, 57, 154, 3, 248, 6, 41, 0, 1, 0, 1, 0,
    1, 2, 1, 194, 41, 176, 56, 191, 3, 195, 3, 74, 176, 56, 16, 11, 247, 23, 207, 17,
    217, 2, 248, 140, 1, 197, 3, 195, 3, 29, 11, 66, 82, 24, 41, 89, 82, 0, 1, 1,
    3]

def packedResidualPilotCertBytes : List Nat :=
  2 :: (packedResidualPilotCert0Bytes ++
    packedResidualPilotCert1Bytes)

def packedResidualPilotBytes : List Nat :=
  [67, 79, 82, 67, 1, 2] ++ packedResidualPilotHeaderBytes ++
    packedResidualPilotMetadataBytes ++ packedResidualPilotCertBytes

def packedResidualPilotHeaders : List SectionHeader :=
  [{ id := 1, length := 5 },
    { id := 2, length := 226 }]

def packedResidualPilotSections : List (Nat × List Nat) :=
  [(1, packedResidualPilotMetadataBytes),
    (2, packedResidualPilotCertBytes)]

theorem packedResidualPilotBase64_eq :
    decodeBase64 packedResidualPilotBlob = .ok packedResidualPilotBytes := by
  unfold packedResidualPilotBlob packedResidualPilotBytes
  unfold packedResidualPilotHeaderBytes packedResidualPilotMetadataBytes
  unfold packedResidualPilotCertBytes
  unfold packedResidualPilotCert0Bytes packedResidualPilotCert1Bytes
  decide

theorem packedResidualPilotCert0_decode :
    readCompactResidualCert
      (packedResidualPilotCert0Bytes ++ packedResidualPilotCert1Bytes) =
      .ok
        (compactResidualAxisMissesStartInteriorTemplate,
          packedResidualPilotCert1Bytes) := by
  unfold packedResidualPilotCert0Bytes packedResidualPilotCert1Bytes
  unfold compactResidualAxisMissesStartInteriorTemplate
  norm_num [numPairWords, readCompactResidualCert,
    readCompactResidualFailure, readPairWord, readFaceVector14, readVec3Rat,
    readMat3Rat, readMat4Rat, readRatValue, readSignedInt, readPairId,
    readFace, readStep14, readImpact15, readVarint, readVarintFuel,
    bindExcept, parsePairIdTag, parseFaceTag, decodeZigZag]
  repeat' constructor
  all_goals
    apply Rat.ext <;>
      simp [Rat.normalize_eq, Int.negSucc_eq, Int.sign] <;>
      norm_num

theorem packedResidualPilotCert1_decode :
    readCompactResidualCert packedResidualPilotCert1Bytes =
      .ok (compactResidualBadFirstHitTemplate, []) := by
  unfold packedResidualPilotCert1Bytes compactResidualBadFirstHitTemplate
  norm_num [numPairWords, readCompactResidualCert,
    readCompactResidualFailure, readPairWord, readFaceVector14, readVec3Rat,
    readMat3Rat, readMat4Rat, readRatValue, readSignedInt, readPairId,
    readFace, readStep14, readImpact15, readVarint, readVarintFuel,
    bindExcept, parsePairIdTag, parseFaceTag, decodeZigZag]
  repeat' constructor
  all_goals
    apply Rat.ext <;>
      simp [Rat.normalize_eq, Int.negSucc_eq, Int.sign] <;>
      norm_num

theorem packedResidualPilotCerts_read :
    readCompactResidualCerts 2
      (packedResidualPilotCert0Bytes ++ packedResidualPilotCert1Bytes) =
      .ok
        ([compactResidualAxisMissesStartInteriorTemplate,
          compactResidualBadFirstHitTemplate], []) := by
  simp [readCompactResidualCerts, packedResidualPilotCert0_decode,
    packedResidualPilotCert1_decode, bindExcept]

theorem packedResidualPilotCertSection_decode :
    parseCompactResidualCertsSection packedResidualPilotCertBytes =
      .ok compactResidualPilotCerts := by
  unfold parseCompactResidualCertsSection packedResidualPilotCertBytes
  unfold compactResidualPilotCerts
  simp [readVarint, readVarintFuel, bindExcept]
  rw [packedResidualPilotCerts_read]
  rfl

theorem packedResidualPilotHeaders_read :
    readSectionHeaders 2
      (packedResidualPilotHeaderBytes ++
        (packedResidualPilotMetadataBytes ++ packedResidualPilotCertBytes)) =
      .ok
        (packedResidualPilotHeaders,
          packedResidualPilotMetadataBytes ++ packedResidualPilotCertBytes) := by
  unfold packedResidualPilotHeaders packedResidualPilotHeaderBytes
  unfold packedResidualPilotMetadataBytes packedResidualPilotCertBytes
  unfold packedResidualPilotCert0Bytes packedResidualPilotCert1Bytes
  norm_num [readSectionHeaders, readVarint, readVarintFuel, bindExcept]

theorem packedResidualPilotPayloads_read :
    readSectionPayloads packedResidualPilotHeaders
      (packedResidualPilotMetadataBytes ++ packedResidualPilotCertBytes) =
      .ok packedResidualPilotSections := by
  unfold packedResidualPilotHeaders packedResidualPilotSections
  unfold packedResidualPilotMetadataBytes packedResidualPilotCertBytes
  unfold packedResidualPilotCert0Bytes packedResidualPilotCert1Bytes
  norm_num [readSectionPayloads, takeBytes, bindExcept]

theorem packedResidualPilotBytes_parse :
    parsePackedResidualBytes packedResidualPilotBytes =
      .ok compactResidualPilotCerts := by
  unfold parsePackedResidualBytes packedResidualPilotBytes
  simp [readVarint, readVarintFuel, bindExcept]
  rw [packedResidualPilotHeaders_read]
  simp [sectionIdsUnique, bindExcept]
  rw [packedResidualPilotPayloads_read]
  simp [packedResidualPilotHeaders, packedResidualPilotSections,
    packedResidualPilotMetadataBytes, lookupSection, parseNatArraySection,
    readVarint, readVarintFuel, readNatValues, bindExcept,
    packedResidualPilotCertSection_decode, compactResidualPilotCerts]

theorem packedResidualPilot_decode :
    decodePackedResidualCerts packedResidualPilotBlob =
      .ok compactResidualPilotCerts := by
  unfold decodePackedResidualCerts
  rw [packedResidualPilotBase64_eq]
  simp [bindExcept, packedResidualPilotBytes_parse]

def packedResidualPilotDecodedCheck : Bool :=
  match decodePackedResidualCerts packedResidualPilotBlob with
  | .ok certs => checkCompactNonIdResiduals certs
  | .error _ => false

theorem packedResidualPilotDecoded_checked :
    packedResidualPilotDecodedCheck = true := by
  unfold packedResidualPilotDecodedCheck
  rw [packedResidualPilot_decode]
  exact compactResidualPilot_check

theorem packedResidualPilot_check :
    checkPackedResidualCerts packedResidualPilotBlob = true := by
  unfold checkPackedResidualCerts
  rw [packedResidualPilot_decode]
  exact compactResidualPilot_check

end Cuboctahedron.Generated.NonIdentity.Residual.PackedPilot
