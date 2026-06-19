import Cuboctahedron.Search.CertificateFormat

/-!
Generated proof-carrying residual non-identity smoke certificate.

This module exercises the structured-literal backend shape without
asking Lean to reduce a packed parser or a whole-corpus checker.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.ProofCarryingSmoke

set_option maxHeartbeats 2400000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

def wordRank000000012 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000012_get00_num :
    wordRank000000012.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000012_get00_mk (h : 0 < 13) :
    wordRank000000012.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000012_get01_num :
    wordRank000000012.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000012_get01_mk (h : 1 < 13) :
    wordRank000000012.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000012_get02_num :
    wordRank000000012.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000012_get02_mk (h : 2 < 13) :
    wordRank000000012.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000012_get03_num :
    wordRank000000012.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000012_get03_mk (h : 3 < 13) :
    wordRank000000012.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000012_get04_num :
    wordRank000000012.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000012_get04_mk (h : 4 < 13) :
    wordRank000000012.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000012_get05_num :
    wordRank000000012.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000012_get05_mk (h : 5 < 13) :
    wordRank000000012.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000012_get06_num :
    wordRank000000012.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000012_get06_mk (h : 6 < 13) :
    wordRank000000012.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000012_get07_num :
    wordRank000000012.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000012_get07_mk (h : 7 < 13) :
    wordRank000000012.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000012_get08_num :
    wordRank000000012.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000012_get08_mk (h : 8 < 13) :
    wordRank000000012.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000012_get09_num :
    wordRank000000012.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000012_get09_mk (h : 9 < 13) :
    wordRank000000012.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000012_get10_num :
    wordRank000000012.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000012_get10_mk (h : 10 < 13) :
    wordRank000000012.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000012_get11_num :
    wordRank000000012.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000012_get11_mk (h : 11 < 13) :
    wordRank000000012.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000012_get12_num :
    wordRank000000012.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000012_get12_mk (h : 12 < 13) :
    wordRank000000012.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def proofCarryingNonIdResidual000Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zp, Face.zm, Face.tmmm, Face.tppp, Face.tmmp, Face.tpmp, Face.tpmm, Face.tppm, Face.tmpm, Face.tmpp], by decide⟩

@[simp] theorem proofCarryingNonIdResidual000Seq_get00_num :
    proofCarryingNonIdResidual000Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get00_mk (h : 0 < 14) :
    proofCarryingNonIdResidual000Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get01_num :
    proofCarryingNonIdResidual000Seq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get01_mk (h : 1 < 14) :
    proofCarryingNonIdResidual000Seq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get02_num :
    proofCarryingNonIdResidual000Seq.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get02_mk (h : 2 < 14) :
    proofCarryingNonIdResidual000Seq.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get03_num :
    proofCarryingNonIdResidual000Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get03_mk (h : 3 < 14) :
    proofCarryingNonIdResidual000Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get04_num :
    proofCarryingNonIdResidual000Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get04_mk (h : 4 < 14) :
    proofCarryingNonIdResidual000Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get05_num :
    proofCarryingNonIdResidual000Seq.get (5 : Step14) = Face.zm := by
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get05_mk (h : 5 < 14) :
    proofCarryingNonIdResidual000Seq.get ⟨5, h⟩ = Face.zm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get06_num :
    proofCarryingNonIdResidual000Seq.get (6 : Step14) = Face.tmmm := by
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get06_mk (h : 6 < 14) :
    proofCarryingNonIdResidual000Seq.get ⟨6, h⟩ = Face.tmmm := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get07_num :
    proofCarryingNonIdResidual000Seq.get (7 : Step14) = Face.tppp := by
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get07_mk (h : 7 < 14) :
    proofCarryingNonIdResidual000Seq.get ⟨7, h⟩ = Face.tppp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get08_num :
    proofCarryingNonIdResidual000Seq.get (8 : Step14) = Face.tmmp := by
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get08_mk (h : 8 < 14) :
    proofCarryingNonIdResidual000Seq.get ⟨8, h⟩ = Face.tmmp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get09_num :
    proofCarryingNonIdResidual000Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get09_mk (h : 9 < 14) :
    proofCarryingNonIdResidual000Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get10_num :
    proofCarryingNonIdResidual000Seq.get (10 : Step14) = Face.tpmm := by
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get10_mk (h : 10 < 14) :
    proofCarryingNonIdResidual000Seq.get ⟨10, h⟩ = Face.tpmm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get11_num :
    proofCarryingNonIdResidual000Seq.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get11_mk (h : 11 < 14) :
    proofCarryingNonIdResidual000Seq.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get12_num :
    proofCarryingNonIdResidual000Seq.get (12 : Step14) = Face.tmpm := by
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get12_mk (h : 12 < 14) :
    proofCarryingNonIdResidual000Seq.get ⟨12, h⟩ = Face.tmpm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get13_num :
    proofCarryingNonIdResidual000Seq.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem proofCarryingNonIdResidual000Seq_get13_mk (h : 13 < 14) :
    proofCarryingNonIdResidual000Seq.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def proofCarryingNonIdResidual000 : NonIdCert where
  word := wordRank000000012
  axis := { x := -1, y := -3, z := 1 }
  kernel := { crossFactor := { m00 := (29/16), m01 := 5, m02 := 0, m10 := -1, m11 := (-19/16), m12 := 0, m20 := (-19/16), m21 := (23/16), m22 := 0 } }
  forcedSeq := proofCarryingNonIdResidual000Seq
  p0 := { x := 1, y := (-445/66), z := (86/33) }
  lambda := (140/33)
  solve := { leftInverse := { m00 := 0, m01 := 0, m02 := 0, m03 := 1, m10 := (259/176), m11 := (-103/176), m12 := (-25/88), m13 := 3, m20 := (-103/176), m21 := (5/88), m22 := (-73/176), m23 := -1, m30 := (1/11), m31 := (3/11), m32 := (-1/11), m33 := 0 } }
  failure := NonIdFailure.axisMissesStartInterior

theorem proofCarryingNonIdResidual000_validPairWord :
    ValidPairWord wordRank000000012 := by
  unfold wordRank000000012 ValidPairWord pairCount
  decide

theorem proofCarryingNonIdResidual000_totalLinear :
    totalLinearOfPairWord wordRank000000012 = { m00 := (-551/729), m01 := (304/729), m02 := (-368/729), m10 := (464/729), m11 := (473/729), m12 := (-304/729), m20 := (112/729), m21 := (-464/729), m22 := (-551/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem proofCarryingNonIdResidual000_nonIdentity :
    totalLinearOfPairWord wordRank000000012 ≠ (matId : Mat3 Rat) := by
  rw [proofCarryingNonIdResidual000_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem proofCarryingNonIdResidual000_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000012)
      { x := -1, y := -3, z := 1 }
      { crossFactor := { m00 := (29/16), m01 := 5, m02 := 0, m10 := -1, m11 := (-19/16), m12 := 0, m20 := (-19/16), m21 := (23/16), m22 := 0 } } = true := by
  rw [proofCarryingNonIdResidual000_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem proofCarryingNonIdResidual000_finalAxisDot :
    finalAxisDotQ wordRank000000012 { x := -1, y := -3, z := 1 } = 1 := by
  simp [finalAxisDotQ, pairPrefixLinearNat,
    wordRank000000012_get00_num, wordRank000000012_get01_num, wordRank000000012_get02_num, wordRank000000012_get03_num, wordRank000000012_get04_num, wordRank000000012_get05_num, wordRank000000012_get06_num, wordRank000000012_get07_num, wordRank000000012_get08_num, wordRank000000012_get09_num, wordRank000000012_get10_num, wordRank000000012_get11_num, wordRank000000012_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
    scalarMat, outer, matVec]
  norm_num

theorem proofCarryingNonIdResidual000_axisForces :
    AxisForcesForcedSeq proofCarryingNonIdResidual000.word proofCarryingNonIdResidual000.axis
      (faceVectorSeq proofCarryingNonIdResidual000.forcedSeq) := by
  constructor
  · unfold StartsXp proofCarryingNonIdResidual000 proofCarryingNonIdResidual000Seq faceVectorSeq
    decide
  constructor
  · intro i
    fin_cases i <;> unfold proofCarryingNonIdResidual000 proofCarryingNonIdResidual000Seq faceVectorSeq <;> decide
  constructor
  · change 0 < finalAxisDotQ wordRank000000012 { x := -1, y := -3, z := 1 }
    rw [proofCarryingNonIdResidual000_finalAxisDot]
    norm_num
  · intro i f hf hpos
    fin_cases i <;> cases f <;>
      simp [proofCarryingNonIdResidual000, proofCarryingNonIdResidual000Seq, faceVectorSeq, afterStart,
        wordRank000000012_get00_num, wordRank000000012_get01_num, wordRank000000012_get02_num, wordRank000000012_get03_num, wordRank000000012_get04_num, wordRank000000012_get05_num, wordRank000000012_get06_num, wordRank000000012_get07_num, wordRank000000012_get08_num, wordRank000000012_get09_num, wordRank000000012_get10_num, wordRank000000012_get11_num, wordRank000000012_get12_num, proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num,
        pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ,
        matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec]
        at hf hpos ⊢ <;>
      first | contradiction | linarith | rfl

theorem proofCarryingNonIdResidual000_pathPrefix00 :
    pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 0 = { M := { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := 0, y := 0, z := 0 } } := by
  simp [proofCarryingNonIdResidual000Seq, faceVectorSeq, pathPrefixAffNat, affId, matId]

theorem proofCarryingNonIdResidual000_pathPrefix01 :
    pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 1 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := 0, z := 0 } } := by
  simp [pathPrefixAffNat, proofCarryingNonIdResidual000_pathPrefix00, faceVectorSeq,
    proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem proofCarryingNonIdResidual000_pathPrefix02 :
    pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 2 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -2, z := 0 } } := by
  simp [pathPrefixAffNat, proofCarryingNonIdResidual000_pathPrefix01, faceVectorSeq,
    proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem proofCarryingNonIdResidual000_pathPrefix03 :
    pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 3 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 0 } } := by
  simp [pathPrefixAffNat, proofCarryingNonIdResidual000_pathPrefix02, faceVectorSeq,
    proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem proofCarryingNonIdResidual000_pathPrefix04 :
    pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 4 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }, b := { x := -2, y := -4, z := 2 } } := by
  simp [pathPrefixAffNat, proofCarryingNonIdResidual000_pathPrefix03, faceVectorSeq,
    proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem proofCarryingNonIdResidual000_pathPrefix05 :
    pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 5 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 4 } } := by
  simp [pathPrefixAffNat, proofCarryingNonIdResidual000_pathPrefix04, faceVectorSeq,
    proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem proofCarryingNonIdResidual000_pathPrefix06 :
    pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 6 = { M := { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }, b := { x := (-2/3), y := (-16/3), z := (8/3) } } := by
  simp [pathPrefixAffNat, proofCarryingNonIdResidual000_pathPrefix05, faceVectorSeq,
    proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem proofCarryingNonIdResidual000_pathPrefix07 :
    pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 7 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := (2/3), y := (-20/3), z := (4/3) } } := by
  simp [pathPrefixAffNat, proofCarryingNonIdResidual000_pathPrefix06, faceVectorSeq,
    proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem proofCarryingNonIdResidual000_pathPrefix08 :
    pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 8 = { M := { m00 := (-1/3), m01 := (2/3), m02 := (-2/3), m10 := (-2/3), m11 := (1/3), m12 := (2/3), m20 := (2/3), m21 := (2/3), m22 := (1/3) }, b := { x := 2, y := -8, z := (8/3) } } := by
  simp [pathPrefixAffNat, proofCarryingNonIdResidual000_pathPrefix07, faceVectorSeq,
    proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem proofCarryingNonIdResidual000_pathPrefix09 :
    pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 9 = { M := { m00 := (7/9), m01 := (-4/9), m02 := (4/9), m10 := (-4/9), m11 := (1/9), m12 := (8/9), m20 := (4/9), m21 := (8/9), m22 := (1/9) }, b := { x := (-2/9), y := (-76/9), z := (28/9) } } := by
  simp [pathPrefixAffNat, proofCarryingNonIdResidual000_pathPrefix08, faceVectorSeq,
    proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem proofCarryingNonIdResidual000_pathPrefix10 :
    pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 10 = { M := { m00 := (7/27), m01 := (2/27), m02 := (26/27), m10 := (14/27), m11 := (-23/27), m12 := (-2/27), m20 := (22/27), m21 := (14/27), m22 := (-7/27) }, b := { x := (22/27), y := (-280/27), z := (64/27) } } := by
  simp [pathPrefixAffNat, proofCarryingNonIdResidual000_pathPrefix09, faceVectorSeq,
    proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem proofCarryingNonIdResidual000_pathPrefix11 :
    pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 11 = { M := { m00 := (55/81), m01 := (40/81), m02 := (44/81), m10 := (56/81), m11 := (-55/81), m12 := (-20/81), m20 := (-20/81), m21 := (-44/81), m22 := (65/81) }, b := { x := (-2/81), y := (-868/81), z := (364/81) } } := by
  simp [pathPrefixAffNat, proofCarryingNonIdResidual000_pathPrefix10, faceVectorSeq,
    proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem proofCarryingNonIdResidual000_pathPrefix12 :
    pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 12 = { M := { m00 := (47/243), m01 := (238/243), m02 := (14/243), m10 := (-14/243), m11 := (17/243), m12 := (-242/243), m20 := (-238/243), m21 := (46/243), m22 := (17/243) }, b := { x := (-242/243), y := (-2968/243), z := (736/243) } } := by
  simp [pathPrefixAffNat, proofCarryingNonIdResidual000_pathPrefix11, faceVectorSeq,
    proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem proofCarryingNonIdResidual000_pathPrefix13 :
    pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 13 = { M := { m00 := (551/729), m01 := (304/729), m02 := (-368/729), m10 := (-464/729), m11 := (473/729), m12 := (-304/729), m20 := (-112/729), m21 := (-464/729), m22 := (-551/729) }, b := { x := (94/729), y := (-9748/729), z := (3412/729) } } := by
  simp [pathPrefixAffNat, proofCarryingNonIdResidual000_pathPrefix12, faceVectorSeq,
    proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem proofCarryingNonIdResidual000_totalAff :
    totalAff (faceVectorSeq proofCarryingNonIdResidual000.forcedSeq) = { M := { m00 := (-551/729), m01 := (304/729), m02 := (-368/729), m10 := (464/729), m11 := (473/729), m12 := (-304/729), m20 := (112/729), m21 := (-464/729), m22 := (-551/729) }, b := { x := (1196/729), y := (-10676/729), z := (3188/729) } } := by
  rw [totalAff_eq_finalPath]
  change affCompose (pathPrefixAffNat (faceVectorSeq proofCarryingNonIdResidual000Seq) 13)
      (faceReflectionQ (faceVectorSeq proofCarryingNonIdResidual000Seq 0)) = { M := { m00 := (-551/729), m01 := (304/729), m02 := (-368/729), m10 := (464/729), m11 := (473/729), m12 := (-304/729), m20 := (112/729), m21 := (-464/729), m22 := (-551/729) }, b := { x := (1196/729), y := (-10676/729), z := (3188/729) } }
  rw [proofCarryingNonIdResidual000_pathPrefix13]
  simp [faceVectorSeq, proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num,
    faceReflectionQ, reflM, reflD, normalQ, offsetQ, affCompose,
    matSub, matId, scalarMat, outer, dot, matMul, matVec, vecAdd,
    scalarMul]
  norm_num

theorem proofCarryingNonIdResidual000_axisSolveCheck :
    checkAffineAxisSolveWitness
      (totalAff (faceVectorSeq proofCarryingNonIdResidual000.forcedSeq))
      proofCarryingNonIdResidual000.axis proofCarryingNonIdResidual000.p0 proofCarryingNonIdResidual000.lambda proofCarryingNonIdResidual000.solve = true := by
  rw [proofCarryingNonIdResidual000_totalAff]
  norm_num [proofCarryingNonIdResidual000, checkAffineAxisSolveWitness, axisSolveMatrix,
    axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec, mat4Id, matId, matSub]

theorem proofCarryingNonIdResidual000_forcedSeqMatches :
    checkForcedSeqMatchesWord proofCarryingNonIdResidual000 = true := by
  classical
  unfold checkForcedSeqMatchesWord
  apply decide_eq_true
  constructor
  · unfold StartsXp proofCarryingNonIdResidual000 faceVectorSeq
    decide
  · intro i
    fin_cases i <;> simp [proofCarryingNonIdResidual000, faceVectorSeq, afterStart,
      wordRank000000012_get00_num, wordRank000000012_get01_num, wordRank000000012_get02_num, wordRank000000012_get03_num, wordRank000000012_get04_num, wordRank000000012_get05_num, wordRank000000012_get06_num, wordRank000000012_get07_num, wordRank000000012_get08_num, wordRank000000012_get09_num, wordRank000000012_get10_num, wordRank000000012_get11_num, wordRank000000012_get12_num,
      proofCarryingNonIdResidual000Seq_get00_num, proofCarryingNonIdResidual000Seq_get01_num, proofCarryingNonIdResidual000Seq_get02_num, proofCarryingNonIdResidual000Seq_get03_num, proofCarryingNonIdResidual000Seq_get04_num, proofCarryingNonIdResidual000Seq_get05_num, proofCarryingNonIdResidual000Seq_get06_num, proofCarryingNonIdResidual000Seq_get07_num, proofCarryingNonIdResidual000Seq_get08_num, proofCarryingNonIdResidual000Seq_get09_num, proofCarryingNonIdResidual000Seq_get10_num, proofCarryingNonIdResidual000Seq_get11_num, proofCarryingNonIdResidual000Seq_get12_num, proofCarryingNonIdResidual000Seq_get13_num, pairOfFace]

theorem proofCarryingNonIdResidual000_commonCheck :
    checkNonIdCommon proofCarryingNonIdResidual000 = true := by
  have hValid : ValidPairWord proofCarryingNonIdResidual000.word := by
    simpa [proofCarryingNonIdResidual000] using proofCarryingNonIdResidual000_validPairWord
  have hNonId : totalLinearOfPairWord proofCarryingNonIdResidual000.word ≠ (matId : Mat3 Rat) := by
    simpa [proofCarryingNonIdResidual000] using proofCarryingNonIdResidual000_nonIdentity
  have hKernel :
      checkKernelLineWitness (totalLinearOfPairWord proofCarryingNonIdResidual000.word)
        proofCarryingNonIdResidual000.axis proofCarryingNonIdResidual000.kernel = true := by
    simpa [proofCarryingNonIdResidual000] using proofCarryingNonIdResidual000_kernelCheck
  unfold checkNonIdCommon
  simp [hValid, hNonId, hKernel, proofCarryingNonIdResidual000_forcedSeqMatches, proofCarryingNonIdResidual000_axisSolveCheck]

theorem proofCarryingNonIdResidual000_notXpStartInterior :
    ¬ XpStartInteriorQ proofCarryingNonIdResidual000.p0 := by
  unfold XpStartInteriorQ proofCarryingNonIdResidual000
  norm_num

theorem proofCarryingNonIdResidual000_check :
    checkNonIdCert proofCarryingNonIdResidual000 = true := by
  apply checkNonIdCert_axisMissesStartInterior proofCarryingNonIdResidual000
  · rfl
  · simpa using proofCarryingNonIdResidual000_commonCheck
  · simpa [proofCarryingNonIdResidual000] using proofCarryingNonIdResidual000_axisForces
  · simpa [proofCarryingNonIdResidual000] using proofCarryingNonIdResidual000_notXpStartInterior

theorem proofCarryingNonIdResidual000_coveredRank :
    checkNonIdCoveredRank 12 proofCarryingNonIdResidual000 = true := by
  decide

theorem proofCarryingNonIdResidual000_word_eq :
    proofCarryingNonIdResidual000.word =
      unrankPairWord (⟨12, by decide⟩ : Fin numPairWords) := by
  exact checkNonIdCoveredRank_word
    (r := (⟨12, by decide⟩ : Fin numPairWords))
    (cert := proofCarryingNonIdResidual000)
    proofCarryingNonIdResidual000_coveredRank

def proofCarryingNonIdResidual000Evidence : Cuboctahedron.CheckedNonIdRank where
  rank := ⟨12, by decide⟩
  cert := proofCarryingNonIdResidual000
  word_eq := proofCarryingNonIdResidual000_word_eq
  check := proofCarryingNonIdResidual000_check

theorem proofCarryingNonIdResidual000_exists :
    exists ordinary : NonIdCert,
      ordinary.word =
          unrankPairWord (⟨12, by decide⟩ : Fin numPairWords) /\
        checkNonIdCert ordinary = true := by
  exact Cuboctahedron.CheckedNonIdRank.exists_cert proofCarryingNonIdResidual000Evidence

theorem proofCarryingNonIdResidual000_no_feasible :
    ¬ exists seq,
      SeqRealizesPairWord (unrankPairWord (⟨12, by decide⟩ : Fin numPairWords)) seq /\
        StartsXp seq /\
        totalLinear seq ≠ (matId : Mat3 Rat) /\
        UnfoldedFeasible seq := by
  exact Cuboctahedron.CheckedNonIdRank.no_feasible proofCarryingNonIdResidual000Evidence

end Cuboctahedron.Generated.NonIdentity.Residual.ProofCarryingSmoke
