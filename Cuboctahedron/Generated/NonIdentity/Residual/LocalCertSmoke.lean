import Cuboctahedron.Search.Certificates
import Cuboctahedron.Search.TerminalNonidentityTemplates

/-!
Tiny smoke for the holonomy-pivot residual local-certificate surface.

This module deliberately proves one semantic residual obstruction with
`AxisStartViolationCert`, bypassing the legacy ordinary residual checker path.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.LocalCertSmoke

open Cuboctahedron

set_option linter.unusedSimpArgs false

private abbrev rank12SeqVector : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zp, Face.zm, Face.tmmm, Face.tppp, Face.tmmp, Face.tpmp, Face.tpmm, Face.tppm, Face.tmpm, Face.tmpp], by decide⟩

@[simp] theorem rank12SeqVector_get00_num :
    rank12SeqVector.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem rank12SeqVector_get00_mk (h : 0 < 14) :
    rank12SeqVector.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank12SeqVector_get01_num :
    rank12SeqVector.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem rank12SeqVector_get01_mk (h : 1 < 14) :
    rank12SeqVector.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank12SeqVector_get02_num :
    rank12SeqVector.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem rank12SeqVector_get02_mk (h : 2 < 14) :
    rank12SeqVector.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank12SeqVector_get03_num :
    rank12SeqVector.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem rank12SeqVector_get03_mk (h : 3 < 14) :
    rank12SeqVector.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank12SeqVector_get04_num :
    rank12SeqVector.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem rank12SeqVector_get04_mk (h : 4 < 14) :
    rank12SeqVector.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank12SeqVector_get05_num :
    rank12SeqVector.get (5 : Step14) = Face.zm := by
  decide

@[simp] theorem rank12SeqVector_get05_mk (h : 5 < 14) :
    rank12SeqVector.get ⟨5, h⟩ = Face.zm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank12SeqVector_get06_num :
    rank12SeqVector.get (6 : Step14) = Face.tmmm := by
  decide

@[simp] theorem rank12SeqVector_get06_mk (h : 6 < 14) :
    rank12SeqVector.get ⟨6, h⟩ = Face.tmmm := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank12SeqVector_get07_num :
    rank12SeqVector.get (7 : Step14) = Face.tppp := by
  decide

@[simp] theorem rank12SeqVector_get07_mk (h : 7 < 14) :
    rank12SeqVector.get ⟨7, h⟩ = Face.tppp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank12SeqVector_get08_num :
    rank12SeqVector.get (8 : Step14) = Face.tmmp := by
  decide

@[simp] theorem rank12SeqVector_get08_mk (h : 8 < 14) :
    rank12SeqVector.get ⟨8, h⟩ = Face.tmmp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank12SeqVector_get09_num :
    rank12SeqVector.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem rank12SeqVector_get09_mk (h : 9 < 14) :
    rank12SeqVector.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank12SeqVector_get10_num :
    rank12SeqVector.get (10 : Step14) = Face.tpmm := by
  decide

@[simp] theorem rank12SeqVector_get10_mk (h : 10 < 14) :
    rank12SeqVector.get ⟨10, h⟩ = Face.tpmm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank12SeqVector_get11_num :
    rank12SeqVector.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem rank12SeqVector_get11_mk (h : 11 < 14) :
    rank12SeqVector.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank12SeqVector_get12_num :
    rank12SeqVector.get (12 : Step14) = Face.tmpm := by
  decide

@[simp] theorem rank12SeqVector_get12_mk (h : 12 < 14) :
    rank12SeqVector.get ⟨12, h⟩ = Face.tmpm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank12SeqVector_get13_num :
    rank12SeqVector.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem rank12SeqVector_get13_mk (h : 13 < 14) :
    rank12SeqVector.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

private def rank12Seq : Step14 -> Face :=
  faceVectorSeq rank12SeqVector

private def rank12AxisStartCert : AxisStartViolationCert rank12Seq where
  axis := { x := -1, y := -3, z := 1 }
  p0 := { x := 1, y := (-445/66), z := (86/33) }
  lambda := (140/33)
  kernel := { crossFactor := { m00 := (29/16), m01 := 5, m02 := 0, m10 := -1, m11 := (-19/16), m12 := 0, m20 := (-19/16), m21 := (23/16), m22 := 0 } }
  solve := { leftInverse := { m00 := 0, m01 := 0, m02 := 0, m03 := 1, m10 := (259/176), m11 := (-103/176), m12 := (-25/88), m13 := 3, m20 := (-103/176), m21 := (5/88), m22 := (-73/176), m23 := -1, m30 := (1/11), m31 := (3/11), m32 := (-1/11), m33 := 0 } }
  badFace := Face.ym

private theorem rank12Seq_startsXp : StartsXp rank12Seq := by
  unfold StartsXp rank12Seq rank12SeqVector faceVectorSeq
  decide

private theorem rank12_pathPrefix00 :
    pathPrefixAffNat (faceVectorSeq rank12SeqVector) 0 = { M := { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := 0, y := 0, z := 0 } } := by
  simp [rank12SeqVector, faceVectorSeq, pathPrefixAffNat, affId, matId]

private theorem rank12_pathPrefix01 :
    pathPrefixAffNat (faceVectorSeq rank12SeqVector) 1 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := 0, z := 0 } } := by
  simp [pathPrefixAffNat, rank12_pathPrefix00, faceVectorSeq,
    rank12SeqVector_get00_num, rank12SeqVector_get01_num, rank12SeqVector_get02_num, rank12SeqVector_get03_num, rank12SeqVector_get04_num, rank12SeqVector_get05_num, rank12SeqVector_get06_num, rank12SeqVector_get07_num, rank12SeqVector_get08_num, rank12SeqVector_get09_num, rank12SeqVector_get10_num, rank12SeqVector_get11_num, rank12SeqVector_get12_num, rank12SeqVector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem rank12_pathPrefix02 :
    pathPrefixAffNat (faceVectorSeq rank12SeqVector) 2 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -2, z := 0 } } := by
  simp [pathPrefixAffNat, rank12_pathPrefix01, faceVectorSeq,
    rank12SeqVector_get00_num, rank12SeqVector_get01_num, rank12SeqVector_get02_num, rank12SeqVector_get03_num, rank12SeqVector_get04_num, rank12SeqVector_get05_num, rank12SeqVector_get06_num, rank12SeqVector_get07_num, rank12SeqVector_get08_num, rank12SeqVector_get09_num, rank12SeqVector_get10_num, rank12SeqVector_get11_num, rank12SeqVector_get12_num, rank12SeqVector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem rank12_pathPrefix03 :
    pathPrefixAffNat (faceVectorSeq rank12SeqVector) 3 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 0 } } := by
  simp [pathPrefixAffNat, rank12_pathPrefix02, faceVectorSeq,
    rank12SeqVector_get00_num, rank12SeqVector_get01_num, rank12SeqVector_get02_num, rank12SeqVector_get03_num, rank12SeqVector_get04_num, rank12SeqVector_get05_num, rank12SeqVector_get06_num, rank12SeqVector_get07_num, rank12SeqVector_get08_num, rank12SeqVector_get09_num, rank12SeqVector_get10_num, rank12SeqVector_get11_num, rank12SeqVector_get12_num, rank12SeqVector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem rank12_pathPrefix04 :
    pathPrefixAffNat (faceVectorSeq rank12SeqVector) 4 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }, b := { x := -2, y := -4, z := 2 } } := by
  simp [pathPrefixAffNat, rank12_pathPrefix03, faceVectorSeq,
    rank12SeqVector_get00_num, rank12SeqVector_get01_num, rank12SeqVector_get02_num, rank12SeqVector_get03_num, rank12SeqVector_get04_num, rank12SeqVector_get05_num, rank12SeqVector_get06_num, rank12SeqVector_get07_num, rank12SeqVector_get08_num, rank12SeqVector_get09_num, rank12SeqVector_get10_num, rank12SeqVector_get11_num, rank12SeqVector_get12_num, rank12SeqVector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem rank12_pathPrefix05 :
    pathPrefixAffNat (faceVectorSeq rank12SeqVector) 5 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 4 } } := by
  simp [pathPrefixAffNat, rank12_pathPrefix04, faceVectorSeq,
    rank12SeqVector_get00_num, rank12SeqVector_get01_num, rank12SeqVector_get02_num, rank12SeqVector_get03_num, rank12SeqVector_get04_num, rank12SeqVector_get05_num, rank12SeqVector_get06_num, rank12SeqVector_get07_num, rank12SeqVector_get08_num, rank12SeqVector_get09_num, rank12SeqVector_get10_num, rank12SeqVector_get11_num, rank12SeqVector_get12_num, rank12SeqVector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem rank12_pathPrefix06 :
    pathPrefixAffNat (faceVectorSeq rank12SeqVector) 6 = { M := { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }, b := { x := (-2/3), y := (-16/3), z := (8/3) } } := by
  simp [pathPrefixAffNat, rank12_pathPrefix05, faceVectorSeq,
    rank12SeqVector_get00_num, rank12SeqVector_get01_num, rank12SeqVector_get02_num, rank12SeqVector_get03_num, rank12SeqVector_get04_num, rank12SeqVector_get05_num, rank12SeqVector_get06_num, rank12SeqVector_get07_num, rank12SeqVector_get08_num, rank12SeqVector_get09_num, rank12SeqVector_get10_num, rank12SeqVector_get11_num, rank12SeqVector_get12_num, rank12SeqVector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem rank12_pathPrefix07 :
    pathPrefixAffNat (faceVectorSeq rank12SeqVector) 7 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := (2/3), y := (-20/3), z := (4/3) } } := by
  simp [pathPrefixAffNat, rank12_pathPrefix06, faceVectorSeq,
    rank12SeqVector_get00_num, rank12SeqVector_get01_num, rank12SeqVector_get02_num, rank12SeqVector_get03_num, rank12SeqVector_get04_num, rank12SeqVector_get05_num, rank12SeqVector_get06_num, rank12SeqVector_get07_num, rank12SeqVector_get08_num, rank12SeqVector_get09_num, rank12SeqVector_get10_num, rank12SeqVector_get11_num, rank12SeqVector_get12_num, rank12SeqVector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem rank12_pathPrefix08 :
    pathPrefixAffNat (faceVectorSeq rank12SeqVector) 8 = { M := { m00 := (-1/3), m01 := (2/3), m02 := (-2/3), m10 := (-2/3), m11 := (1/3), m12 := (2/3), m20 := (2/3), m21 := (2/3), m22 := (1/3) }, b := { x := 2, y := -8, z := (8/3) } } := by
  simp [pathPrefixAffNat, rank12_pathPrefix07, faceVectorSeq,
    rank12SeqVector_get00_num, rank12SeqVector_get01_num, rank12SeqVector_get02_num, rank12SeqVector_get03_num, rank12SeqVector_get04_num, rank12SeqVector_get05_num, rank12SeqVector_get06_num, rank12SeqVector_get07_num, rank12SeqVector_get08_num, rank12SeqVector_get09_num, rank12SeqVector_get10_num, rank12SeqVector_get11_num, rank12SeqVector_get12_num, rank12SeqVector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem rank12_pathPrefix09 :
    pathPrefixAffNat (faceVectorSeq rank12SeqVector) 9 = { M := { m00 := (7/9), m01 := (-4/9), m02 := (4/9), m10 := (-4/9), m11 := (1/9), m12 := (8/9), m20 := (4/9), m21 := (8/9), m22 := (1/9) }, b := { x := (-2/9), y := (-76/9), z := (28/9) } } := by
  simp [pathPrefixAffNat, rank12_pathPrefix08, faceVectorSeq,
    rank12SeqVector_get00_num, rank12SeqVector_get01_num, rank12SeqVector_get02_num, rank12SeqVector_get03_num, rank12SeqVector_get04_num, rank12SeqVector_get05_num, rank12SeqVector_get06_num, rank12SeqVector_get07_num, rank12SeqVector_get08_num, rank12SeqVector_get09_num, rank12SeqVector_get10_num, rank12SeqVector_get11_num, rank12SeqVector_get12_num, rank12SeqVector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem rank12_pathPrefix10 :
    pathPrefixAffNat (faceVectorSeq rank12SeqVector) 10 = { M := { m00 := (7/27), m01 := (2/27), m02 := (26/27), m10 := (14/27), m11 := (-23/27), m12 := (-2/27), m20 := (22/27), m21 := (14/27), m22 := (-7/27) }, b := { x := (22/27), y := (-280/27), z := (64/27) } } := by
  simp [pathPrefixAffNat, rank12_pathPrefix09, faceVectorSeq,
    rank12SeqVector_get00_num, rank12SeqVector_get01_num, rank12SeqVector_get02_num, rank12SeqVector_get03_num, rank12SeqVector_get04_num, rank12SeqVector_get05_num, rank12SeqVector_get06_num, rank12SeqVector_get07_num, rank12SeqVector_get08_num, rank12SeqVector_get09_num, rank12SeqVector_get10_num, rank12SeqVector_get11_num, rank12SeqVector_get12_num, rank12SeqVector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem rank12_pathPrefix11 :
    pathPrefixAffNat (faceVectorSeq rank12SeqVector) 11 = { M := { m00 := (55/81), m01 := (40/81), m02 := (44/81), m10 := (56/81), m11 := (-55/81), m12 := (-20/81), m20 := (-20/81), m21 := (-44/81), m22 := (65/81) }, b := { x := (-2/81), y := (-868/81), z := (364/81) } } := by
  simp [pathPrefixAffNat, rank12_pathPrefix10, faceVectorSeq,
    rank12SeqVector_get00_num, rank12SeqVector_get01_num, rank12SeqVector_get02_num, rank12SeqVector_get03_num, rank12SeqVector_get04_num, rank12SeqVector_get05_num, rank12SeqVector_get06_num, rank12SeqVector_get07_num, rank12SeqVector_get08_num, rank12SeqVector_get09_num, rank12SeqVector_get10_num, rank12SeqVector_get11_num, rank12SeqVector_get12_num, rank12SeqVector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

set_option maxHeartbeats 1000000

private theorem rank12_pathPrefix12 :
    pathPrefixAffNat (faceVectorSeq rank12SeqVector) 12 = { M := { m00 := (47/243), m01 := (238/243), m02 := (14/243), m10 := (-14/243), m11 := (17/243), m12 := (-242/243), m20 := (-238/243), m21 := (46/243), m22 := (17/243) }, b := { x := (-242/243), y := (-2968/243), z := (736/243) } } := by
  simp [pathPrefixAffNat, rank12_pathPrefix11, faceVectorSeq,
    rank12SeqVector_get00_num, rank12SeqVector_get01_num, rank12SeqVector_get02_num, rank12SeqVector_get03_num, rank12SeqVector_get04_num, rank12SeqVector_get05_num, rank12SeqVector_get06_num, rank12SeqVector_get07_num, rank12SeqVector_get08_num, rank12SeqVector_get09_num, rank12SeqVector_get10_num, rank12SeqVector_get11_num, rank12SeqVector_get12_num, rank12SeqVector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  set_option maxHeartbeats 1000000 in
  norm_num

private theorem rank12_pathPrefix13 :
    pathPrefixAffNat (faceVectorSeq rank12SeqVector) 13 = { M := { m00 := (551/729), m01 := (304/729), m02 := (-368/729), m10 := (-464/729), m11 := (473/729), m12 := (-304/729), m20 := (-112/729), m21 := (-464/729), m22 := (-551/729) }, b := { x := (94/729), y := (-9748/729), z := (3412/729) } } := by
  simp [pathPrefixAffNat, rank12_pathPrefix12, faceVectorSeq,
    rank12SeqVector_get00_num, rank12SeqVector_get01_num, rank12SeqVector_get02_num, rank12SeqVector_get03_num, rank12SeqVector_get04_num, rank12SeqVector_get05_num, rank12SeqVector_get06_num, rank12SeqVector_get07_num, rank12SeqVector_get08_num, rank12SeqVector_get09_num, rank12SeqVector_get10_num, rank12SeqVector_get11_num, rank12SeqVector_get12_num, rank12SeqVector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  set_option maxHeartbeats 1000000 in
  norm_num

set_option maxHeartbeats 200000

private theorem rank12_totalAff :
    totalAff rank12Seq = { M := { m00 := (-551/729), m01 := (304/729), m02 := (-368/729), m10 := (464/729), m11 := (473/729), m12 := (-304/729), m20 := (112/729), m21 := (-464/729), m22 := (-551/729) }, b := { x := (1196/729), y := (-10676/729), z := (3188/729) } } := by
  rw [totalAff_eq_finalPath]
  change affCompose (pathPrefixAffNat (faceVectorSeq rank12SeqVector) 13)
      (faceReflectionQ (rank12Seq 0)) = { M := { m00 := (-551/729), m01 := (304/729), m02 := (-368/729), m10 := (464/729), m11 := (473/729), m12 := (-304/729), m20 := (112/729), m21 := (-464/729), m22 := (-551/729) }, b := { x := (1196/729), y := (-10676/729), z := (3188/729) } }
  rw [rank12_pathPrefix13]
  have h0 : rank12Seq 0 = Face.xp := by
    unfold rank12Seq rank12SeqVector faceVectorSeq
    decide
  rw [h0]
  simp [
    faceReflectionQ, reflM, reflD, normalQ, offsetQ, affCompose,
    matSub, matId, scalarMat, outer, dot, matMul, matVec, vecAdd,
    scalarMul]
  norm_num

private theorem rank12_totalLinear :
    totalLinear rank12Seq = { m00 := (-551/729), m01 := (304/729), m02 := (-368/729), m10 := (464/729), m11 := (473/729), m12 := (-304/729), m20 := (112/729), m21 := (-464/729), m22 := (-551/729) } := by
  simp [totalLinear, rank12_totalAff]

private theorem rank12_kernelCheck :
    checkKernelLineWitness (totalLinear rank12Seq)
      { x := -1, y := -3, z := 1 }
      { crossFactor := { m00 := (29/16), m01 := 5, m02 := 0, m10 := -1, m11 := (-19/16), m12 := 0, m20 := (-19/16), m21 := (23/16), m22 := 0 } } = true := by
  rw [rank12_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

private theorem rank12_axisSolveCheck :
    checkAffineAxisSolveWitness (totalAff rank12Seq)
      rank12AxisStartCert.axis rank12AxisStartCert.p0
      rank12AxisStartCert.lambda rank12AxisStartCert.solve = true := by
  rw [rank12_totalAff]
  norm_num [rank12AxisStartCert, checkAffineAxisSolveWitness,
    axisSolveMatrix, axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec,
    mat4Id, matId, matSub]

private theorem rank12AxisStartCert_checked :
    rank12AxisStartCert.Checked := by
  refine ⟨rank12_kernelCheck, rank12_axisSolveCheck, ?_, ?_⟩
  · decide
  · norm_num [rank12AxisStartCert, normalR, normalQ, offsetR, offsetQ,
      vecRatToReal, dot]

theorem rank12_no_axis_constraints :
    ¬ NonIdentityAxisConstraints rank12Seq :=
  AxisStartViolationCert.no_axis_constraints
    rank12AxisStartCert rank12Seq_startsXp rank12AxisStartCert_checked

theorem localCertSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.LocalCertSmoke
