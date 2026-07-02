import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationBridge

/-!
Generated trace-level start-violation provider for graph-accepted trace `t033`.

This module is semantic-provider evidence: it exports a theorem from
accepted trace-label equality to `ObjectStartViolationMarginCert` and does
not introduce sampled rank/path objects.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace033StartViolationProvider

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationBridge

private def trace033Seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.zm
  | ⟨4, _⟩ => Face.yp
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private def trace033Vector : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp], by decide⟩

@[simp] private theorem trace033Vector_get00_num :
    trace033Vector.get (0 : Step14) = Face.xp := by
  decide

@[simp] private theorem trace033Vector_get00_mk (h : 0 < 14) :
    trace033Vector.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Vector_get01_num :
    trace033Vector.get (1 : Step14) = Face.xm := by
  decide

@[simp] private theorem trace033Vector_get01_mk (h : 1 < 14) :
    trace033Vector.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Vector_get02_num :
    trace033Vector.get (2 : Step14) = Face.ym := by
  decide

@[simp] private theorem trace033Vector_get02_mk (h : 2 < 14) :
    trace033Vector.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Vector_get03_num :
    trace033Vector.get (3 : Step14) = Face.zm := by
  decide

@[simp] private theorem trace033Vector_get03_mk (h : 3 < 14) :
    trace033Vector.get ⟨3, h⟩ = Face.zm := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Vector_get04_num :
    trace033Vector.get (4 : Step14) = Face.yp := by
  decide

@[simp] private theorem trace033Vector_get04_mk (h : 4 < 14) :
    trace033Vector.get ⟨4, h⟩ = Face.yp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Vector_get05_num :
    trace033Vector.get (5 : Step14) = Face.zp := by
  decide

@[simp] private theorem trace033Vector_get05_mk (h : 5 < 14) :
    trace033Vector.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Vector_get06_num :
    trace033Vector.get (6 : Step14) = Face.tmmm := by
  decide

@[simp] private theorem trace033Vector_get06_mk (h : 6 < 14) :
    trace033Vector.get ⟨6, h⟩ = Face.tmmm := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Vector_get07_num :
    trace033Vector.get (7 : Step14) = Face.tpmm := by
  decide

@[simp] private theorem trace033Vector_get07_mk (h : 7 < 14) :
    trace033Vector.get ⟨7, h⟩ = Face.tpmm := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Vector_get08_num :
    trace033Vector.get (8 : Step14) = Face.tppm := by
  decide

@[simp] private theorem trace033Vector_get08_mk (h : 8 < 14) :
    trace033Vector.get ⟨8, h⟩ = Face.tppm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Vector_get09_num :
    trace033Vector.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] private theorem trace033Vector_get09_mk (h : 9 < 14) :
    trace033Vector.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Vector_get10_num :
    trace033Vector.get (10 : Step14) = Face.tmpm := by
  decide

@[simp] private theorem trace033Vector_get10_mk (h : 10 < 14) :
    trace033Vector.get ⟨10, h⟩ = Face.tmpm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Vector_get11_num :
    trace033Vector.get (11 : Step14) = Face.tppp := by
  decide

@[simp] private theorem trace033Vector_get11_mk (h : 11 < 14) :
    trace033Vector.get ⟨11, h⟩ = Face.tppp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Vector_get12_num :
    trace033Vector.get (12 : Step14) = Face.tmpp := by
  decide

@[simp] private theorem trace033Vector_get12_mk (h : 12 < 14) :
    trace033Vector.get ⟨12, h⟩ = Face.tmpp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Vector_get13_num :
    trace033Vector.get (13 : Step14) = Face.tmmp := by
  decide

@[simp] private theorem trace033Vector_get13_mk (h : 13 < 14) :
    trace033Vector.get ⟨13, h⟩ = Face.tmmp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

private def trace033Word : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.z, PairId.y, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d11m], by decide⟩

@[simp] private theorem trace033Word_get00_num :
    trace033Word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] private theorem trace033Word_get00_mk (h : 0 < 13) :
    trace033Word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Word_get01_num :
    trace033Word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] private theorem trace033Word_get01_mk (h : 1 < 13) :
    trace033Word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Word_get02_num :
    trace033Word.get (2 : WordIndex) = PairId.z := by
  decide

@[simp] private theorem trace033Word_get02_mk (h : 2 < 13) :
    trace033Word.get ⟨2, h⟩ = PairId.z := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Word_get03_num :
    trace033Word.get (3 : WordIndex) = PairId.y := by
  decide

@[simp] private theorem trace033Word_get03_mk (h : 3 < 13) :
    trace033Word.get ⟨3, h⟩ = PairId.y := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Word_get04_num :
    trace033Word.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] private theorem trace033Word_get04_mk (h : 4 < 13) :
    trace033Word.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Word_get05_num :
    trace033Word.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] private theorem trace033Word_get05_mk (h : 5 < 13) :
    trace033Word.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Word_get06_num :
    trace033Word.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] private theorem trace033Word_get06_mk (h : 6 < 13) :
    trace033Word.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Word_get07_num :
    trace033Word.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] private theorem trace033Word_get07_mk (h : 7 < 13) :
    trace033Word.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Word_get08_num :
    trace033Word.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] private theorem trace033Word_get08_mk (h : 8 < 13) :
    trace033Word.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Word_get09_num :
    trace033Word.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] private theorem trace033Word_get09_mk (h : 9 < 13) :
    trace033Word.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Word_get10_num :
    trace033Word.get (10 : WordIndex) = PairId.d111 := by
  decide

@[simp] private theorem trace033Word_get10_mk (h : 10 < 13) :
    trace033Word.get ⟨10, h⟩ = PairId.d111 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Word_get11_num :
    trace033Word.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] private theorem trace033Word_get11_mk (h : 11 < 13) :
    trace033Word.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace033Word_get12_num :
    trace033Word.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] private theorem trace033Word_get12_mk (h : 12 < 13) :
    trace033Word.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem trace033Vector_seq_eq :
    faceVectorSeq trace033Vector = trace033Seq := by
  funext i
  fin_cases i <;> rfl

private theorem trace033_contribution_labels :
    faceLabelsInContributionOrder (fun f : Face => f) trace033Seq =
      acceptedTraceOfId AcceptedTraceId.t033 := by
  decide

private theorem trace033Word_eq_pairWordOfSeq :
    trace033Word = pairWordOfSeq trace033Seq := by
  decide

private def trace033Axis : Vec3 Rat :=
  { x := (-1/3), y := (-1/3), z := -1 }

private def trace033Kernel : KernelLineWitness :=
  { crossFactor := { m00 := (7/144), m01 := (-5/9), m02 := 0, m10 := (5/9), m11 := (23/144), m12 := 0, m20 := (-29/144), m21 := (19/144), m22 := 0 } }

private def trace033Cert : NonIdCert where
  word := trace033Word
  axis := trace033Axis
  kernel := trace033Kernel
  forcedSeq := trace033Vector
  p0 := { x := 1, y := (-58/11), z := (-119/22) }
  lambda := (140/11)
  solve := { leftInverse := { m00 := 0, m01 := 0, m02 := 0, m03 := 1, m10 := (103/176), m11 := (-73/176), m12 := (-5/88), m13 := 1, m20 := (259/176), m21 := (25/88), m22 := (-103/176), m23 := 3, m30 := (3/11), m31 := (3/11), m32 := (9/11), m33 := 0 } }
  failure := NonIdFailure.axisMissesStartInterior

private theorem trace033_word_eq :
    trace033Cert.word = pairWordOfSeq trace033Seq := by
  exact trace033Word_eq_pairWordOfSeq

private theorem trace033TotalLinear :
    totalLinearOfPairWord trace033Word = { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

private theorem trace033_kernel_check :
    checkKernelLineWitness (totalLinearOfPairWord trace033Cert.word)
      trace033Cert.axis trace033Cert.kernel = true := by
  change checkKernelLineWitness (totalLinearOfPairWord trace033Word)
      trace033Axis trace033Kernel = true
  rw [trace033TotalLinear]
  norm_num [
    trace033Axis, trace033Kernel, checkKernelLineWitness,
    checkVec3NonzeroQ, fixedPart, crossLeftMatrix, matSub, matId,
    matMul, matVec]

private theorem trace033FinalAxisDot :
    finalAxisDotQ trace033Word trace033Axis = (1/3) := by
  norm_num [trace033Axis, finalAxisDotQ, pairPrefixLinearNat,
    trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer, matVec]

private theorem trace033PrefixLinear00 :
    pairPrefixLinearNat trace033Word 0 =
      { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace033PrefixLinear01 :
    pairPrefixLinearNat trace033Word 1 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace033PrefixLinear02 :
    pairPrefixLinearNat trace033Word 2 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace033PrefixLinear03 :
    pairPrefixLinearNat trace033Word 3 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 } := by
  norm_num [pairPrefixLinearNat, trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace033PrefixLinear04 :
    pairPrefixLinearNat trace033Word 4 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 } := by
  norm_num [pairPrefixLinearNat, trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace033PrefixLinear05 :
    pairPrefixLinearNat trace033Word 5 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace033PrefixLinear06 :
    pairPrefixLinearNat trace033Word 6 =
      { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) } := by
  norm_num [pairPrefixLinearNat, trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace033PrefixLinear07 :
    pairPrefixLinearNat trace033Word 7 =
      { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) } := by
  norm_num [pairPrefixLinearNat, trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace033PrefixLinear08 :
    pairPrefixLinearNat trace033Word 8 =
      { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) } := by
  norm_num [pairPrefixLinearNat, trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace033PrefixLinear09 :
    pairPrefixLinearNat trace033Word 9 =
      { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) } := by
  norm_num [pairPrefixLinearNat, trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace033PrefixLinear10 :
    pairPrefixLinearNat trace033Word 10 =
      { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) } := by
  norm_num [pairPrefixLinearNat, trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace033PrefixLinear11 :
    pairPrefixLinearNat trace033Word 11 =
      { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) } := by
  norm_num [pairPrefixLinearNat, trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace033PrefixLinear12 :
    pairPrefixLinearNat trace033Word 12 =
      { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) } := by
  norm_num [pairPrefixLinearNat, trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace033PrefixLinear13 :
    pairPrefixLinearNat trace033Word 13 =
      { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) } := by
  norm_num [pairPrefixLinearNat, trace033Word_get00_num, trace033Word_get01_num, trace033Word_get02_num, trace033Word_get03_num, trace033Word_get04_num, trace033Word_get05_num, trace033Word_get06_num, trace033Word_get07_num, trace033Word_get08_num, trace033Word_get09_num, trace033Word_get10_num, trace033Word_get11_num, trace033Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace033AxisForcesAt00 (f : Face)
    (hf : pairOfFace f = trace033Word.get (0 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace033Word 0)
        (normalQ f)) trace033Axis) :
    normalQ (trace033Seq (afterStart (0 : WordIndex))) =
      normalQ f := by
  rw [trace033PrefixLinear00] at hpos
  cases f <;>
    simp [trace033Axis, trace033Seq, trace033Word_get00_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace033AxisForcesAt01 (f : Face)
    (hf : pairOfFace f = trace033Word.get (1 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace033Word 1)
        (normalQ f)) trace033Axis) :
    normalQ (trace033Seq (afterStart (1 : WordIndex))) =
      normalQ f := by
  rw [trace033PrefixLinear01] at hpos
  cases f <;>
    simp [trace033Axis, trace033Seq, trace033Word_get01_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace033AxisForcesAt02 (f : Face)
    (hf : pairOfFace f = trace033Word.get (2 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace033Word 2)
        (normalQ f)) trace033Axis) :
    normalQ (trace033Seq (afterStart (2 : WordIndex))) =
      normalQ f := by
  rw [trace033PrefixLinear02] at hpos
  cases f <;>
    simp [trace033Axis, trace033Seq, trace033Word_get02_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace033AxisForcesAt03 (f : Face)
    (hf : pairOfFace f = trace033Word.get (3 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace033Word 3)
        (normalQ f)) trace033Axis) :
    normalQ (trace033Seq (afterStart (3 : WordIndex))) =
      normalQ f := by
  rw [trace033PrefixLinear03] at hpos
  cases f <;>
    simp [trace033Axis, trace033Seq, trace033Word_get03_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace033AxisForcesAt04 (f : Face)
    (hf : pairOfFace f = trace033Word.get (4 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace033Word 4)
        (normalQ f)) trace033Axis) :
    normalQ (trace033Seq (afterStart (4 : WordIndex))) =
      normalQ f := by
  rw [trace033PrefixLinear04] at hpos
  cases f <;>
    simp [trace033Axis, trace033Seq, trace033Word_get04_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace033AxisForcesAt05 (f : Face)
    (hf : pairOfFace f = trace033Word.get (5 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace033Word 5)
        (normalQ f)) trace033Axis) :
    normalQ (trace033Seq (afterStart (5 : WordIndex))) =
      normalQ f := by
  rw [trace033PrefixLinear05] at hpos
  cases f <;>
    simp [trace033Axis, trace033Seq, trace033Word_get05_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace033AxisForcesAt06 (f : Face)
    (hf : pairOfFace f = trace033Word.get (6 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace033Word 6)
        (normalQ f)) trace033Axis) :
    normalQ (trace033Seq (afterStart (6 : WordIndex))) =
      normalQ f := by
  rw [trace033PrefixLinear06] at hpos
  cases f <;>
    simp [trace033Axis, trace033Seq, trace033Word_get06_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace033AxisForcesAt07 (f : Face)
    (hf : pairOfFace f = trace033Word.get (7 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace033Word 7)
        (normalQ f)) trace033Axis) :
    normalQ (trace033Seq (afterStart (7 : WordIndex))) =
      normalQ f := by
  rw [trace033PrefixLinear07] at hpos
  cases f <;>
    simp [trace033Axis, trace033Seq, trace033Word_get07_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace033AxisForcesAt08 (f : Face)
    (hf : pairOfFace f = trace033Word.get (8 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace033Word 8)
        (normalQ f)) trace033Axis) :
    normalQ (trace033Seq (afterStart (8 : WordIndex))) =
      normalQ f := by
  rw [trace033PrefixLinear08] at hpos
  cases f <;>
    simp [trace033Axis, trace033Seq, trace033Word_get08_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace033AxisForcesAt09 (f : Face)
    (hf : pairOfFace f = trace033Word.get (9 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace033Word 9)
        (normalQ f)) trace033Axis) :
    normalQ (trace033Seq (afterStart (9 : WordIndex))) =
      normalQ f := by
  rw [trace033PrefixLinear09] at hpos
  cases f <;>
    simp [trace033Axis, trace033Seq, trace033Word_get09_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace033AxisForcesAt10 (f : Face)
    (hf : pairOfFace f = trace033Word.get (10 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace033Word 10)
        (normalQ f)) trace033Axis) :
    normalQ (trace033Seq (afterStart (10 : WordIndex))) =
      normalQ f := by
  rw [trace033PrefixLinear10] at hpos
  cases f <;>
    simp [trace033Axis, trace033Seq, trace033Word_get10_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace033AxisForcesAt11 (f : Face)
    (hf : pairOfFace f = trace033Word.get (11 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace033Word 11)
        (normalQ f)) trace033Axis) :
    normalQ (trace033Seq (afterStart (11 : WordIndex))) =
      normalQ f := by
  rw [trace033PrefixLinear11] at hpos
  cases f <;>
    simp [trace033Axis, trace033Seq, trace033Word_get11_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace033AxisForcesAt12 (f : Face)
    (hf : pairOfFace f = trace033Word.get (12 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace033Word 12)
        (normalQ f)) trace033Axis) :
    normalQ (trace033Seq (afterStart (12 : WordIndex))) =
      normalQ f := by
  rw [trace033PrefixLinear12] at hpos
  cases f <;>
    simp [trace033Axis, trace033Seq, trace033Word_get12_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace033_axis_forces :
    AxisForcesForcedSeq trace033Cert.word trace033Cert.axis
      (faceVectorSeq trace033Cert.forcedSeq) := by
  change AxisForcesForcedSeq trace033Word trace033Axis
      (faceVectorSeq trace033Vector)
  rw [trace033Vector_seq_eq]
  constructor
  · unfold StartsXp trace033Seq
    decide
  constructor
  · rw [trace033Word_eq_pairWordOfSeq]
    exact pairWordOfSeq_matches trace033Seq
  constructor
  · rw [trace033FinalAxisDot]
    norm_num
  · intro i f hf hpos
    fin_cases i
    · exact trace033AxisForcesAt00 f hf hpos
    · exact trace033AxisForcesAt01 f hf hpos
    · exact trace033AxisForcesAt02 f hf hpos
    · exact trace033AxisForcesAt03 f hf hpos
    · exact trace033AxisForcesAt04 f hf hpos
    · exact trace033AxisForcesAt05 f hf hpos
    · exact trace033AxisForcesAt06 f hf hpos
    · exact trace033AxisForcesAt07 f hf hpos
    · exact trace033AxisForcesAt08 f hf hpos
    · exact trace033AxisForcesAt09 f hf hpos
    · exact trace033AxisForcesAt10 f hf hpos
    · exact trace033AxisForcesAt11 f hf hpos
    · exact trace033AxisForcesAt12 f hf hpos

private theorem trace033Cert_pathPrefix00 :
    pathPrefixAffNat (faceVectorSeq trace033Vector) 0 = { M := { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := 0, y := 0, z := 0 } } := by
  simp [trace033Vector, faceVectorSeq, pathPrefixAffNat, affId, matId]

private theorem trace033Cert_pathPrefix01 :
    pathPrefixAffNat (faceVectorSeq trace033Vector) 1 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := 0, z := 0 } } := by
  simp [pathPrefixAffNat, trace033Cert_pathPrefix00, faceVectorSeq,
    trace033Vector_get01_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace033Cert_pathPrefix02 :
    pathPrefixAffNat (faceVectorSeq trace033Vector) 2 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -2, z := 0 } } := by
  simp [pathPrefixAffNat, trace033Cert_pathPrefix01, faceVectorSeq,
    trace033Vector_get02_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace033Cert_pathPrefix03 :
    pathPrefixAffNat (faceVectorSeq trace033Vector) 3 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }, b := { x := -2, y := -2, z := -2 } } := by
  simp [pathPrefixAffNat, trace033Cert_pathPrefix02, faceVectorSeq,
    trace033Vector_get03_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace033Cert_pathPrefix04 :
    pathPrefixAffNat (faceVectorSeq trace033Vector) 4 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }, b := { x := -2, y := -4, z := -2 } } := by
  simp [pathPrefixAffNat, trace033Cert_pathPrefix03, faceVectorSeq,
    trace033Vector_get04_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace033Cert_pathPrefix05 :
    pathPrefixAffNat (faceVectorSeq trace033Vector) 5 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := -4 } } := by
  simp [pathPrefixAffNat, trace033Cert_pathPrefix04, faceVectorSeq,
    trace033Vector_get05_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace033Cert_pathPrefix06 :
    pathPrefixAffNat (faceVectorSeq trace033Vector) 6 = { M := { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }, b := { x := (-2/3), y := (-16/3), z := (-16/3) } } := by
  simp [pathPrefixAffNat, trace033Cert_pathPrefix05, faceVectorSeq,
    trace033Vector_get06_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace033Cert_pathPrefix07 :
    pathPrefixAffNat (faceVectorSeq trace033Vector) 7 = { M := { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }, b := { x := (-26/9), y := (-52/9), z := (-52/9) } } := by
  simp [pathPrefixAffNat, trace033Cert_pathPrefix06, faceVectorSeq,
    trace033Vector_get07_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace033Cert_pathPrefix08 :
    pathPrefixAffNat (faceVectorSeq trace033Vector) 8 = { M := { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }, b := { x := (-50/27), y := (-136/27), z := (-208/27) } } := by
  simp [pathPrefixAffNat, trace033Cert_pathPrefix07, faceVectorSeq,
    trace033Vector_get08_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace033Cert_pathPrefix09 :
    pathPrefixAffNat (faceVectorSeq trace033Vector) 9 = { M := { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }, b := { x := (-10/81), y := (-524/81), z := (-668/81) } } := by
  simp [pathPrefixAffNat, trace033Cert_pathPrefix08, faceVectorSeq,
    trace033Vector_get09_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace033Cert_pathPrefix10 :
    pathPrefixAffNat (faceVectorSeq trace033Vector) 10 = { M := { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }, b := { x := (130/81), y := (-640/81), z := (-712/81) } } := by
  simp [pathPrefixAffNat, trace033Cert_pathPrefix09, faceVectorSeq,
    trace033Vector_get10_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace033Cert_pathPrefix11 :
    pathPrefixAffNat (faceVectorSeq trace033Vector) 11 = { M := { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }, b := { x := (62/81), y := (-812/81), z := (-740/81) } } := by
  simp [pathPrefixAffNat, trace033Cert_pathPrefix10, faceVectorSeq,
    trace033Vector_get11_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace033Cert_pathPrefix12 :
    pathPrefixAffNat (faceVectorSeq trace033Vector) 12 = { M := { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }, b := { x := (-50/243), y := (-2080/243), z := (-2584/243) } } := by
  simp [pathPrefixAffNat, trace033Cert_pathPrefix11, faceVectorSeq,
    trace033Vector_get12_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace033Cert_pathPrefix13 :
    pathPrefixAffNat (faceVectorSeq trace033Vector) 13 = { M := { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (670/729), y := (-7444/729), z := (-8596/729) } } := by
  simp [pathPrefixAffNat, trace033Cert_pathPrefix12, faceVectorSeq,
    trace033Vector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace033Cert_totalAff :
    totalAff (faceVectorSeq trace033Cert.forcedSeq) = { M := { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (1772/729), y := (-7220/729), z := (-9524/729) } } := by
  rw [totalAff_eq_finalPath]
  change affCompose (pathPrefixAffNat (faceVectorSeq trace033Vector) 13)
      (faceReflectionQ (faceVectorSeq trace033Vector 0)) = { M := { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (1772/729), y := (-7220/729), z := (-9524/729) } }
  rw [trace033Cert_pathPrefix13]
  simp [faceVectorSeq, trace033Vector_get00_num,
    faceReflectionQ, reflM, reflD, normalQ, offsetQ, affCompose,
    matSub, matId, scalarMat, outer, dot, matMul, matVec, vecAdd,
    scalarMul]
  norm_num

private theorem trace033Cert_axisSolveCheck :
    checkAffineAxisSolveWitness
      (totalAff (faceVectorSeq trace033Cert.forcedSeq))
      trace033Cert.axis trace033Cert.p0 trace033Cert.lambda trace033Cert.solve = true := by
  rw [trace033Cert_totalAff]
  norm_num [trace033Cert, trace033Axis, checkAffineAxisSolveWitness, axisSolveMatrix,
    axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec, mat4Id, matId, matSub]

private theorem trace033_solve_check :
    checkAffineAxisSolveWitness (totalAff (faceVectorSeq trace033Cert.forcedSeq))
      trace033Cert.axis trace033Cert.p0 trace033Cert.lambda trace033Cert.solve = true := by
  exact trace033Cert_axisSolveCheck

private theorem trace033_badFace_ne_xp :
    Face.ym ≠ Face.xp := by
  decide

private theorem trace033_badFace_violation :
    offsetR Face.ym <=
      dot (normalR Face.ym) (vecRatToReal trace033Cert.p0) := by
  norm_num [trace033Cert, offsetR, normalR, offsetQ, normalQ,
    vecRatToReal, dot]

private def trace033StartViolationCert (margin : Int) :
    TraceStartViolationMarginCert trace033Seq margin where
  cert := trace033Cert
  word_eq := trace033_word_eq
  kernel_check := trace033_kernel_check
  solve_check := trace033_solve_check
  axis_forces := trace033_axis_forces
  badFace := Face.ym
  badFace_ne_xp := trace033_badFace_ne_xp
  badFace_violation := trace033_badFace_violation

def objectStartViolationMarginCert_of_trace033
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (htrace :
      topPairingRankFaceLabels rank =
        acceptedTraceOfId AcceptedTraceId.t033) :
    ObjectStartViolationMarginCert rank (scaledMargin rank) :=
  objectStartViolationMarginCert_of_traceCert
    (trace033StartViolationCert (scaledMargin rank))
    (by
      rw [trace033_contribution_labels]
      exact htrace)
end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace033StartViolationProvider
