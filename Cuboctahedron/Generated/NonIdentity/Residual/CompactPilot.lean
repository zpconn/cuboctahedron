import Cuboctahedron.Search.CertificateFormat
import Cuboctahedron.Generated.NonIdentity.ResidualTemplates

/-!
Generated compact residual non-identity certificate pilot for Step 14E.7B4.

This module exercises the compact residual certificate record and
checks reconstruction against the residual proof-template witnesses.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.CompactPilot

open Cuboctahedron.Generated.NonIdentity.ResidualTemplates

set_option maxHeartbeats 1600000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

def compactResidualAxisMissesStartInteriorTemplate : CompactNonIdResidualCert where
  rank := ⟨12, by decide⟩
  word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.dm11], by decide⟩
  axis := { x := -1, y := -3, z := 1 }
  kernel := { crossFactor := { m00 := (29/16), m01 := 5, m02 := 0, m10 := -1, m11 := (-19/16), m12 := 0, m20 := (-19/16), m21 := (23/16), m22 := 0 } }
  forcedSeq := ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zp, Face.zm, Face.tmmm, Face.tppp, Face.tmmp, Face.tpmp, Face.tpmm, Face.tppm, Face.tmpm, Face.tmpp], by decide⟩
  p0 := { x := 1, y := (-445/66), z := (86/33) }
  lambda := (140/33)
  solve := { leftInverse := { m00 := 0, m01 := 0, m02 := 0, m03 := 1, m10 := (259/176), m11 := (-103/176), m12 := (-25/88), m13 := 3, m20 := (-103/176), m21 := (5/88), m22 := (-73/176), m23 := -1, m30 := (1/11), m31 := (3/11), m32 := (-1/11), m33 := 0 } }
  failure := CompactNonIdResidualFailure.axisMissesStartInterior

def compactResidualBadFirstHitTemplate : CompactNonIdResidualCert where
  rank := ⟨159, by decide⟩
  word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩
  axis := { x := (-11/15), y := (-8/15), z := 1 }
  kernel := { crossFactor := { m00 := (337/1800), m01 := (289/450), m02 := 0, m10 := (-173/225), m11 := (-367/1800), m12 := 0, m20 := (-491/1800), m21 := (163/450), m22 := 0 } }
  forcedSeq := ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zp, Face.zm, Face.tppp, Face.tmmp, Face.tpmp, Face.tmmm, Face.tpmm, Face.tmpm, Face.tmpp, Face.tppm], by decide⟩
  p0 := { x := 1, y := (33/41), z := (-29/410) }
  lambda := (444/41)
  solve := { leftInverse := { m00 := 0, m01 := 0, m02 := 0, m03 := 1, m10 := (2657/7216), m11 := (-224/451), m12 := (37/7216), m13 := (8/11), m20 := (-1532/2255), m21 := (-173/18040), m22 := (-227/451), m23 := (-15/11), m30 := (33/82), m31 := (12/41), m32 := (-45/82), m33 := 0 } }
  failure := CompactNonIdResidualFailure.badFirstHit ⟨3, by decide⟩

def compactResidualPilotCerts : Array CompactNonIdResidualCert :=
  #[compactResidualAxisMissesStartInteriorTemplate, compactResidualBadFirstHitTemplate]

theorem compactResidualPilot_check :
    checkCompactNonIdResiduals compactResidualPilotCerts = true := by
  have h0Eq : compactResidualAxisMissesStartInteriorTemplate.toNonIdCert = residualAxisMissesStartInteriorTemplate := by
    rfl
  have h0Rank : checkNonIdCoveredRank 12 compactResidualAxisMissesStartInteriorTemplate.toNonIdCert = true := by
    decide
  have h0Check : checkCompactNonIdResidual compactResidualAxisMissesStartInteriorTemplate = true := by
    unfold checkCompactNonIdResidual
    change (checkNonIdCoveredRank 12 compactResidualAxisMissesStartInteriorTemplate.toNonIdCert &&
        checkNonIdCert compactResidualAxisMissesStartInteriorTemplate.toNonIdCert) = true
    rw [h0Rank, h0Eq, residualAxisMissesStartInteriorTemplate_check]
    rfl
  have h1Eq : compactResidualBadFirstHitTemplate.toNonIdCert = residualBadFirstHitTemplate := by
    rfl
  have h1Rank : checkNonIdCoveredRank 159 compactResidualBadFirstHitTemplate.toNonIdCert = true := by
    decide
  have h1Check : checkCompactNonIdResidual compactResidualBadFirstHitTemplate = true := by
    unfold checkCompactNonIdResidual
    change (checkNonIdCoveredRank 159 compactResidualBadFirstHitTemplate.toNonIdCert &&
        checkNonIdCert compactResidualBadFirstHitTemplate.toNonIdCert) = true
    rw [h1Rank, h1Eq, residualBadFirstHitTemplate_check]
    rfl
  simp [checkCompactNonIdResiduals, compactResidualPilotCerts,
    h0Check, h1Check]

end Cuboctahedron.Generated.NonIdentity.Residual.CompactPilot
