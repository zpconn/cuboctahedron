import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2GraphSmoke
import Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2TerminalSmoke

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2GraphSmoke

private def cls0000PositiveCertSeq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp], by decide⟩

@[simp] theorem cls0000PositiveCertSeq_get00_num :
    cls0000PositiveCertSeq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get00_mk (h : 0 < 14) :
    cls0000PositiveCertSeq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get01_num :
    cls0000PositiveCertSeq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get01_mk (h : 1 < 14) :
    cls0000PositiveCertSeq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get02_num :
    cls0000PositiveCertSeq.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get02_mk (h : 2 < 14) :
    cls0000PositiveCertSeq.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get03_num :
    cls0000PositiveCertSeq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get03_mk (h : 3 < 14) :
    cls0000PositiveCertSeq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get04_num :
    cls0000PositiveCertSeq.get (4 : Step14) = Face.zm := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get04_mk (h : 4 < 14) :
    cls0000PositiveCertSeq.get ⟨4, h⟩ = Face.zm := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get05_num :
    cls0000PositiveCertSeq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get05_mk (h : 5 < 14) :
    cls0000PositiveCertSeq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get06_num :
    cls0000PositiveCertSeq.get (6 : Step14) = Face.tmmm := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get06_mk (h : 6 < 14) :
    cls0000PositiveCertSeq.get ⟨6, h⟩ = Face.tmmm := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get07_num :
    cls0000PositiveCertSeq.get (7 : Step14) = Face.tpmm := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get07_mk (h : 7 < 14) :
    cls0000PositiveCertSeq.get ⟨7, h⟩ = Face.tpmm := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get08_num :
    cls0000PositiveCertSeq.get (8 : Step14) = Face.tppm := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get08_mk (h : 8 < 14) :
    cls0000PositiveCertSeq.get ⟨8, h⟩ = Face.tppm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get09_num :
    cls0000PositiveCertSeq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get09_mk (h : 9 < 14) :
    cls0000PositiveCertSeq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get10_num :
    cls0000PositiveCertSeq.get (10 : Step14) = Face.tmpm := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get10_mk (h : 10 < 14) :
    cls0000PositiveCertSeq.get ⟨10, h⟩ = Face.tmpm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get11_num :
    cls0000PositiveCertSeq.get (11 : Step14) = Face.tppp := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get11_mk (h : 11 < 14) :
    cls0000PositiveCertSeq.get ⟨11, h⟩ = Face.tppp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get12_num :
    cls0000PositiveCertSeq.get (12 : Step14) = Face.tmpp := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get12_mk (h : 12 < 14) :
    cls0000PositiveCertSeq.get ⟨12, h⟩ = Face.tmpp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get13_num :
    cls0000PositiveCertSeq.get (13 : Step14) = Face.tmmp := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get13_mk (h : 13 < 14) :
    cls0000PositiveCertSeq.get ⟨13, h⟩ = Face.tmmp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

private def cls0000PositiveCert : NonIdCert where
  word := cls0000Word
  axis := cls0000Axis
  kernel := cls0000Kernel
  forcedSeq := cls0000PositiveCertSeq
  p0 := { x := 1, y := (-58/11), z := (-119/22) }
  lambda := (140/11)
  solve := { leftInverse := { m00 := 0, m01 := 0, m02 := 0, m03 := 1, m10 := (103/176), m11 := (-73/176), m12 := (-5/88), m13 := 1, m20 := (259/176), m21 := (25/88), m22 := (-103/176), m23 := 3, m30 := (3/11), m31 := (3/11), m32 := (9/11), m33 := 0 } }
  failure := NonIdFailure.axisMissesStartInterior

theorem cls0000PositiveCert_pathPrefix00 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 0 = { M := { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := 0, y := 0, z := 0 } } := by
  simp [cls0000PositiveCertSeq, faceVectorSeq, pathPrefixAffNat, affId, matId]

theorem cls0000PositiveCert_pathPrefix01 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 1 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := 0, z := 0 } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix00, faceVectorSeq,
    cls0000PositiveCertSeq_get01_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix02 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 2 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -2, z := 0 } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix01, faceVectorSeq,
    cls0000PositiveCertSeq_get02_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix03 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 3 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 0 } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix02, faceVectorSeq,
    cls0000PositiveCertSeq_get03_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix04 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 4 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }, b := { x := -2, y := -4, z := -2 } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix03, faceVectorSeq,
    cls0000PositiveCertSeq_get04_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix05 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 5 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := -4 } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix04, faceVectorSeq,
    cls0000PositiveCertSeq_get05_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix06 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 6 = { M := { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }, b := { x := (-2/3), y := (-16/3), z := (-16/3) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix05, faceVectorSeq,
    cls0000PositiveCertSeq_get06_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix07 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 7 = { M := { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }, b := { x := (-26/9), y := (-52/9), z := (-52/9) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix06, faceVectorSeq,
    cls0000PositiveCertSeq_get07_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix08 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 8 = { M := { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }, b := { x := (-50/27), y := (-136/27), z := (-208/27) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix07, faceVectorSeq,
    cls0000PositiveCertSeq_get08_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix09 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 9 = { M := { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }, b := { x := (-10/81), y := (-524/81), z := (-668/81) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix08, faceVectorSeq,
    cls0000PositiveCertSeq_get09_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix10 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 10 = { M := { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }, b := { x := (130/81), y := (-640/81), z := (-712/81) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix09, faceVectorSeq,
    cls0000PositiveCertSeq_get10_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix11 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 11 = { M := { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }, b := { x := (62/81), y := (-812/81), z := (-740/81) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix10, faceVectorSeq,
    cls0000PositiveCertSeq_get11_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix12 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 12 = { M := { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }, b := { x := (-50/243), y := (-2080/243), z := (-2584/243) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix11, faceVectorSeq,
    cls0000PositiveCertSeq_get12_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix13 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 13 = { M := { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (670/729), y := (-7444/729), z := (-8596/729) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix12, faceVectorSeq,
    cls0000PositiveCertSeq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_totalAff :
    totalAff (faceVectorSeq cls0000PositiveCert.forcedSeq) = { M := { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (1772/729), y := (-7220/729), z := (-9524/729) } } := by
  rw [totalAff_eq_finalPath]
  change affCompose (pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 13)
      (faceReflectionQ (faceVectorSeq cls0000PositiveCertSeq 0)) = { M := { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (1772/729), y := (-7220/729), z := (-9524/729) } }
  rw [cls0000PositiveCert_pathPrefix13]
  simp [faceVectorSeq, cls0000PositiveCertSeq_get00_num,
    faceReflectionQ, reflM, reflD, normalQ, offsetQ, affCompose,
    matSub, matId, scalarMat, outer, dot, matMul, matVec, vecAdd,
    scalarMul]
  norm_num

theorem cls0000PositiveCert_axisSolveCheck :
    checkAffineAxisSolveWitness
      (totalAff (faceVectorSeq cls0000PositiveCert.forcedSeq))
      cls0000PositiveCert.axis cls0000PositiveCert.p0 cls0000PositiveCert.lambda cls0000PositiveCert.solve = true := by
  rw [cls0000PositiveCert_totalAff]
  norm_num [cls0000PositiveCert, cls0000Axis, checkAffineAxisSolveWitness, axisSolveMatrix,
    axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec, mat4Id, matId, matSub]

private theorem cls0000PositiveCert_axisForces :
    AxisForcesForcedSeq cls0000PositiveCert.word cls0000PositiveCert.axis
      (faceVectorSeq cls0000PositiveCert.forcedSeq) := by
  change AxisForcesForcedSeq cls0000Word cls0000Axis
      (faceVectorSeq cls0000PositiveCertSeq)
  have hSeqEq : faceVectorSeq cls0000PositiveCertSeq = cls0000FaceSeq := by
    funext i
    fin_cases i <;> rfl
  rw [hSeqEq]
  rw [← cls0000_unrank_word]
  exact cls0000AxisForces

private theorem cls0000PositiveCert_kernelCheck :
    checkKernelLineWitness (totalLinearOfPairWord cls0000PositiveCert.word)
      cls0000PositiveCert.axis cls0000PositiveCert.kernel = true := by
  change checkKernelLineWitness (totalLinearOfPairWord cls0000Word)
      cls0000Axis cls0000Kernel = true
  rw [← cls0000_unrank_word]
  exact cls0000KernelCheck

private theorem cls0000PositiveCert_badFace_ne_xp :
    Face.ym ≠ Face.xp := by
  decide

private theorem cls0000PositiveCert_badFaceViolation :
    offsetR Face.ym <=
      dot (normalR Face.ym)
        (vecRatToReal cls0000PositiveCert.p0) := by
  norm_num [cls0000PositiveCert, offsetR, normalR, offsetQ, normalQ,
    vecRatToReal, dot]


private def cls0001PositiveCertSeq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmpm, Face.tmmm, Face.zp], by decide⟩

@[simp] theorem cls0001PositiveCertSeq_get00_num :
    cls0001PositiveCertSeq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get00_mk (h : 0 < 14) :
    cls0001PositiveCertSeq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get01_num :
    cls0001PositiveCertSeq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get01_mk (h : 1 < 14) :
    cls0001PositiveCertSeq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get02_num :
    cls0001PositiveCertSeq.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get02_mk (h : 2 < 14) :
    cls0001PositiveCertSeq.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get03_num :
    cls0001PositiveCertSeq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get03_mk (h : 3 < 14) :
    cls0001PositiveCertSeq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get04_num :
    cls0001PositiveCertSeq.get (4 : Step14) = Face.zm := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get04_mk (h : 4 < 14) :
    cls0001PositiveCertSeq.get ⟨4, h⟩ = Face.zm := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get05_num :
    cls0001PositiveCertSeq.get (5 : Step14) = Face.tmmp := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get05_mk (h : 5 < 14) :
    cls0001PositiveCertSeq.get ⟨5, h⟩ = Face.tmmp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get06_num :
    cls0001PositiveCertSeq.get (6 : Step14) = Face.tpmp := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get06_mk (h : 6 < 14) :
    cls0001PositiveCertSeq.get ⟨6, h⟩ = Face.tpmp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get07_num :
    cls0001PositiveCertSeq.get (7 : Step14) = Face.tppp := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get07_mk (h : 7 < 14) :
    cls0001PositiveCertSeq.get ⟨7, h⟩ = Face.tppp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get08_num :
    cls0001PositiveCertSeq.get (8 : Step14) = Face.tpmm := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get08_mk (h : 8 < 14) :
    cls0001PositiveCertSeq.get ⟨8, h⟩ = Face.tpmm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get09_num :
    cls0001PositiveCertSeq.get (9 : Step14) = Face.tmpp := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get09_mk (h : 9 < 14) :
    cls0001PositiveCertSeq.get ⟨9, h⟩ = Face.tmpp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get10_num :
    cls0001PositiveCertSeq.get (10 : Step14) = Face.tppm := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get10_mk (h : 10 < 14) :
    cls0001PositiveCertSeq.get ⟨10, h⟩ = Face.tppm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get11_num :
    cls0001PositiveCertSeq.get (11 : Step14) = Face.tmpm := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get11_mk (h : 11 < 14) :
    cls0001PositiveCertSeq.get ⟨11, h⟩ = Face.tmpm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get12_num :
    cls0001PositiveCertSeq.get (12 : Step14) = Face.tmmm := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get12_mk (h : 12 < 14) :
    cls0001PositiveCertSeq.get ⟨12, h⟩ = Face.tmmm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get13_num :
    cls0001PositiveCertSeq.get (13 : Step14) = Face.zp := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get13_mk (h : 13 < 14) :
    cls0001PositiveCertSeq.get ⟨13, h⟩ = Face.zp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

private def cls0001PositiveCert : NonIdCert where
  word := cls0001Word
  axis := cls0001Axis
  kernel := cls0001Kernel
  forcedSeq := cls0001PositiveCertSeq
  p0 := { x := 1, y := (-58/11), z := (-75/22) }
  lambda := (140/11)
  solve := { leftInverse := { m00 := 0, m01 := 0, m02 := 0, m03 := 1, m10 := (103/176), m11 := (-73/176), m12 := (-5/88), m13 := 1, m20 := (259/176), m21 := (25/88), m22 := (-103/176), m23 := 3, m30 := (3/11), m31 := (3/11), m32 := (9/11), m33 := 0 } }
  failure := NonIdFailure.axisMissesStartInterior

theorem cls0001PositiveCert_pathPrefix00 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 0 = { M := { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := 0, y := 0, z := 0 } } := by
  simp [cls0001PositiveCertSeq, faceVectorSeq, pathPrefixAffNat, affId, matId]

theorem cls0001PositiveCert_pathPrefix01 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 1 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := 0, z := 0 } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix00, faceVectorSeq,
    cls0001PositiveCertSeq_get01_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix02 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 2 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -2, z := 0 } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix01, faceVectorSeq,
    cls0001PositiveCertSeq_get02_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix03 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 3 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 0 } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix02, faceVectorSeq,
    cls0001PositiveCertSeq_get03_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix04 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 4 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }, b := { x := -2, y := -4, z := -2 } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix03, faceVectorSeq,
    cls0001PositiveCertSeq_get04_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix05 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 5 = { M := { m00 := (-1/3), m01 := (2/3), m02 := (-2/3), m10 := (-2/3), m11 := (1/3), m12 := (2/3), m20 := (-2/3), m21 := (-2/3), m22 := (-1/3) }, b := { x := (-2/3), y := (-16/3), z := (-10/3) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix04, faceVectorSeq,
    cls0001PositiveCertSeq_get05_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix06 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 6 = { M := { m00 := (7/9), m01 := (-4/9), m02 := (4/9), m10 := (-4/9), m11 := (1/9), m12 := (8/9), m20 := (-4/9), m21 := (-8/9), m22 := (-1/9) }, b := { x := (-26/9), y := (-52/9), z := (-34/9) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix05, faceVectorSeq,
    cls0001PositiveCertSeq_get06_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix07 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 7 = { M := { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) }, b := { x := (-50/27), y := (-136/27), z := (-154/27) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix06, faceVectorSeq,
    cls0001PositiveCertSeq_get07_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix08 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 8 = { M := { m00 := (-49/81), m01 := (-8/81), m02 := (64/81), m10 := (-8/81), m11 := (-79/81), m12 := (-16/81), m20 := (64/81), m21 := (-16/81), m22 := (47/81) }, b := { x := (-10/81), y := (-524/81), z := (-506/81) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix07, faceVectorSeq,
    cls0001PositiveCertSeq_get08_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix09 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 9 = { M := { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) }, b := { x := (130/81), y := (-640/81), z := (-550/81) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix08, faceVectorSeq,
    cls0001PositiveCertSeq_get09_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix10 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 10 = { M := { m00 := (55/81), m01 := (-44/81), m02 := (-40/81), m10 := (20/81), m11 := (65/81), m12 := (-44/81), m20 := (56/81), m21 := (20/81), m22 := (55/81) }, b := { x := (62/81), y := (-812/81), z := (-578/81) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix09, faceVectorSeq,
    cls0001PositiveCertSeq_get10_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix11 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 11 = { M := { m00 := (47/243), m01 := (-14/243), m02 := (-238/243), m10 := (238/243), m11 := (17/243), m12 := (46/243), m20 := (-14/243), m21 := (242/243), m22 := (-17/243) }, b := { x := (-50/243), y := (-2080/243), z := (-2098/243) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix10, faceVectorSeq,
    cls0001PositiveCertSeq_get11_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix12 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 12 = { M := { m00 := (551/729), m01 := (368/729), m02 := (-304/729), m10 := (112/729), m11 := (-551/729), m12 := (-464/729), m20 := (-464/729), m21 := (304/729), m22 := (-473/729) }, b := { x := (670/729), y := (-7444/729), z := (-7138/729) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix11, faceVectorSeq,
    cls0001PositiveCertSeq_get12_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix13 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 13 = { M := { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (62/729), y := (-8372/729), z := (-8084/729) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix12, faceVectorSeq,
    cls0001PositiveCertSeq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_totalAff :
    totalAff (faceVectorSeq cls0001PositiveCert.forcedSeq) = { M := { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (388/243), y := (-2716/243), z := (-3004/243) } } := by
  rw [totalAff_eq_finalPath]
  change affCompose (pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 13)
      (faceReflectionQ (faceVectorSeq cls0001PositiveCertSeq 0)) = { M := { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (388/243), y := (-2716/243), z := (-3004/243) } }
  rw [cls0001PositiveCert_pathPrefix13]
  simp [faceVectorSeq, cls0001PositiveCertSeq_get00_num,
    faceReflectionQ, reflM, reflD, normalQ, offsetQ, affCompose,
    matSub, matId, scalarMat, outer, dot, matMul, matVec, vecAdd,
    scalarMul]
  norm_num

theorem cls0001PositiveCert_axisSolveCheck :
    checkAffineAxisSolveWitness
      (totalAff (faceVectorSeq cls0001PositiveCert.forcedSeq))
      cls0001PositiveCert.axis cls0001PositiveCert.p0 cls0001PositiveCert.lambda cls0001PositiveCert.solve = true := by
  rw [cls0001PositiveCert_totalAff]
  norm_num [cls0001PositiveCert, cls0001Axis, checkAffineAxisSolveWitness, axisSolveMatrix,
    axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec, mat4Id, matId, matSub]

private theorem cls0001PositiveCert_axisForces :
    AxisForcesForcedSeq cls0001PositiveCert.word cls0001PositiveCert.axis
      (faceVectorSeq cls0001PositiveCert.forcedSeq) := by
  change AxisForcesForcedSeq cls0001Word cls0001Axis
      (faceVectorSeq cls0001PositiveCertSeq)
  have hSeqEq : faceVectorSeq cls0001PositiveCertSeq = cls0001FaceSeq := by
    funext i
    fin_cases i <;> rfl
  rw [hSeqEq]
  rw [← cls0001_unrank_word]
  exact cls0001AxisForces

private theorem cls0001PositiveCert_kernelCheck :
    checkKernelLineWitness (totalLinearOfPairWord cls0001PositiveCert.word)
      cls0001PositiveCert.axis cls0001PositiveCert.kernel = true := by
  change checkKernelLineWitness (totalLinearOfPairWord cls0001Word)
      cls0001Axis cls0001Kernel = true
  rw [← cls0001_unrank_word]
  exact cls0001KernelCheck

private theorem cls0001PositiveCert_badFace_ne_xp :
    Face.ym ≠ Face.xp := by
  decide

private theorem cls0001PositiveCert_badFaceViolation :
    offsetR Face.ym <=
      dot (normalR Face.ym)
        (vecRatToReal cls0001PositiveCert.p0) := by
  norm_num [cls0001PositiveCert, offsetR, normalR, offsetQ, normalQ,
    vecRatToReal, dot]


private def sampledObjectStartViolationCert :
    forall idx, sampledObjectAccepts idx ->
      Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.ObjectStartViolationMarginCert
        (sampledRankOf idx)
        (sampledScaledMarginAtRank (sampledRankOf idx))
  | idx, _hAccept => by
      cases idx
      · refine {
          cert := cls0000PositiveCert,
          word_eq := ?_,
          kernel_check := cls0000PositiveCert_kernelCheck,
          solve_check := cls0000PositiveCert_axisSolveCheck,
          axis_forces := cls0000PositiveCert_axisForces,
          badFace := Face.ym,
          badFace_ne_xp := cls0000PositiveCert_badFace_ne_xp,
          badFace_violation := cls0000PositiveCert_badFaceViolation
        }
        change cls0000Word = unrankPairWord cls0000Rank
        exact cls0000_unrank_word.symm
      · refine {
          cert := cls0001PositiveCert,
          word_eq := ?_,
          kernel_check := cls0001PositiveCert_kernelCheck,
          solve_check := cls0001PositiveCert_axisSolveCheck,
          axis_forces := cls0001PositiveCert_axisForces,
          badFace := Face.ym,
          badFace_ne_xp := cls0001PositiveCert_badFace_ne_xp,
          badFace_violation := cls0001PositiveCert_badFaceViolation
        }
        change cls0001Word = unrankPairWord cls0001Rank
        exact cls0001_unrank_word.symm

abbrev TerminalNonposStartViolationObject : Type :=
  Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.BellmanNonposStartViolationObject
    sampledScaledMarginAtRank

def terminalContainsRank (rank : Fin numPairWords) : Prop :=
  exists obj : TerminalNonposStartViolationObject, True /\ obj.rank = rank

private theorem terminalContainsRank_of_sampledAccepted
    {rank : Fin numPairWords} (hrank : sampledAcceptedContainsRank rank) :
    terminalContainsRank rank := by
  rcases graphSmoke_sampled_accepted_axis_object_cover_eval_covers rank hrank with
    ⟨idx, hAccept, hidx⟩
  refine ⟨{
      rank := sampledRankOf idx,
      nonpos := ?_,
      startViolation := ?_
    }, True.intro, hidx⟩
  · exact graphSmoke_sampled_axis_object_eval_scaled_margin_nonpos_at_object
      idx hAccept
  · exact sampledObjectStartViolationCert idx hAccept

private theorem terminalNonposStartViolationObjectExists
    {rank : Fin numPairWords} (hrank : terminalContainsRank rank) :
    exists obj : TerminalNonposStartViolationObject, True /\ obj.rank = rank :=
  hrank

theorem graphSmoke_sampled_axis_rank_killed
    {rank : Fin numPairWords} (hrank : terminalContainsRank rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.nonIdentityRankKilled_of_nonpos_start_violation_objects
    (scaledMargin := sampledScaledMarginAtRank)
    (terminalNonposStartViolationObjectExists hrank)

theorem bellmanGraphTerminalSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2TerminalSmoke
