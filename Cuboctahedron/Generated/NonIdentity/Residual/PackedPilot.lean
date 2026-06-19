import Cuboctahedron.Search.CertificateChecker

/-!
Generated packed residual non-identity certificate smoke pilot for Step 14E.7B5.

The full packed pilot blob is generated and checked independently by
`scripts/check_certificates_independently.py`.  This Lean file keeps a tiny
packed blob on the proof side so the Base64/section-table/certificate-array
decoder path is kernel-checked without making `lake build` spend minutes
normalizing generated data.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.PackedPilot

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

theorem packedResidualPilotDecoded_checked :
    (match decodePackedResidualCerts packedResidualSmokeBlob with
      | .ok certs => checkCompactNonIdResiduals certs = true
      | .error _ => False) := by
  rw [packedResidualSmokeDecode_eq]
  rfl

theorem packedResidualPilot_check :
    checkPackedResidualCerts packedResidualSmokeBlob = true := by
  unfold checkPackedResidualCerts
  rw [packedResidualSmokeDecode_eq]
  rfl

end Cuboctahedron.Generated.NonIdentity.Residual.PackedPilot
