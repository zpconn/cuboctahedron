import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationBridge

/-!
Generated trace-level start-violation provider for graph-accepted trace `t012`.

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

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace012StartViolationProvider

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationBridge

private def trace012Seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tppm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.zm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.yp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private def trace012Vector : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.zm, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp], by decide⟩

@[simp] private theorem trace012Vector_get00_num :
    trace012Vector.get (0 : Step14) = Face.xp := by
  decide

@[simp] private theorem trace012Vector_get00_mk (h : 0 < 14) :
    trace012Vector.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Vector_get01_num :
    trace012Vector.get (1 : Step14) = Face.xm := by
  decide

@[simp] private theorem trace012Vector_get01_mk (h : 1 < 14) :
    trace012Vector.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Vector_get02_num :
    trace012Vector.get (2 : Step14) = Face.ym := by
  decide

@[simp] private theorem trace012Vector_get02_mk (h : 2 < 14) :
    trace012Vector.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Vector_get03_num :
    trace012Vector.get (3 : Step14) = Face.tmpm := by
  decide

@[simp] private theorem trace012Vector_get03_mk (h : 3 < 14) :
    trace012Vector.get ⟨3, h⟩ = Face.tmpm := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Vector_get04_num :
    trace012Vector.get (4 : Step14) = Face.tppm := by
  decide

@[simp] private theorem trace012Vector_get04_mk (h : 4 < 14) :
    trace012Vector.get ⟨4, h⟩ = Face.tppm := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Vector_get05_num :
    trace012Vector.get (5 : Step14) = Face.tpmm := by
  decide

@[simp] private theorem trace012Vector_get05_mk (h : 5 < 14) :
    trace012Vector.get ⟨5, h⟩ = Face.tpmm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Vector_get06_num :
    trace012Vector.get (6 : Step14) = Face.tppp := by
  decide

@[simp] private theorem trace012Vector_get06_mk (h : 6 < 14) :
    trace012Vector.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Vector_get07_num :
    trace012Vector.get (7 : Step14) = Face.zp := by
  decide

@[simp] private theorem trace012Vector_get07_mk (h : 7 < 14) :
    trace012Vector.get ⟨7, h⟩ = Face.zp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Vector_get08_num :
    trace012Vector.get (8 : Step14) = Face.zm := by
  decide

@[simp] private theorem trace012Vector_get08_mk (h : 8 < 14) :
    trace012Vector.get ⟨8, h⟩ = Face.zm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Vector_get09_num :
    trace012Vector.get (9 : Step14) = Face.tmmm := by
  decide

@[simp] private theorem trace012Vector_get09_mk (h : 9 < 14) :
    trace012Vector.get ⟨9, h⟩ = Face.tmmm := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Vector_get10_num :
    trace012Vector.get (10 : Step14) = Face.tpmp := by
  decide

@[simp] private theorem trace012Vector_get10_mk (h : 10 < 14) :
    trace012Vector.get ⟨10, h⟩ = Face.tpmp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Vector_get11_num :
    trace012Vector.get (11 : Step14) = Face.yp := by
  decide

@[simp] private theorem trace012Vector_get11_mk (h : 11 < 14) :
    trace012Vector.get ⟨11, h⟩ = Face.yp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Vector_get12_num :
    trace012Vector.get (12 : Step14) = Face.tmpp := by
  decide

@[simp] private theorem trace012Vector_get12_mk (h : 12 < 14) :
    trace012Vector.get ⟨12, h⟩ = Face.tmpp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Vector_get13_num :
    trace012Vector.get (13 : Step14) = Face.tmmp := by
  decide

@[simp] private theorem trace012Vector_get13_mk (h : 13 < 14) :
    trace012Vector.get ⟨13, h⟩ = Face.tmmp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

private def trace012Word : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.d111, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.y, PairId.dm11, PairId.d11m], by decide⟩

@[simp] private theorem trace012Word_get00_num :
    trace012Word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] private theorem trace012Word_get00_mk (h : 0 < 13) :
    trace012Word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Word_get01_num :
    trace012Word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] private theorem trace012Word_get01_mk (h : 1 < 13) :
    trace012Word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Word_get02_num :
    trace012Word.get (2 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] private theorem trace012Word_get02_mk (h : 2 < 13) :
    trace012Word.get ⟨2, h⟩ = PairId.d1m1 := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Word_get03_num :
    trace012Word.get (3 : WordIndex) = PairId.d11m := by
  decide

@[simp] private theorem trace012Word_get03_mk (h : 3 < 13) :
    trace012Word.get ⟨3, h⟩ = PairId.d11m := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Word_get04_num :
    trace012Word.get (4 : WordIndex) = PairId.dm11 := by
  decide

@[simp] private theorem trace012Word_get04_mk (h : 4 < 13) :
    trace012Word.get ⟨4, h⟩ = PairId.dm11 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Word_get05_num :
    trace012Word.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] private theorem trace012Word_get05_mk (h : 5 < 13) :
    trace012Word.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Word_get06_num :
    trace012Word.get (6 : WordIndex) = PairId.z := by
  decide

@[simp] private theorem trace012Word_get06_mk (h : 6 < 13) :
    trace012Word.get ⟨6, h⟩ = PairId.z := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Word_get07_num :
    trace012Word.get (7 : WordIndex) = PairId.z := by
  decide

@[simp] private theorem trace012Word_get07_mk (h : 7 < 13) :
    trace012Word.get ⟨7, h⟩ = PairId.z := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Word_get08_num :
    trace012Word.get (8 : WordIndex) = PairId.d111 := by
  decide

@[simp] private theorem trace012Word_get08_mk (h : 8 < 13) :
    trace012Word.get ⟨8, h⟩ = PairId.d111 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Word_get09_num :
    trace012Word.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] private theorem trace012Word_get09_mk (h : 9 < 13) :
    trace012Word.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Word_get10_num :
    trace012Word.get (10 : WordIndex) = PairId.y := by
  decide

@[simp] private theorem trace012Word_get10_mk (h : 10 < 13) :
    trace012Word.get ⟨10, h⟩ = PairId.y := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Word_get11_num :
    trace012Word.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] private theorem trace012Word_get11_mk (h : 11 < 13) :
    trace012Word.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace012Word_get12_num :
    trace012Word.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] private theorem trace012Word_get12_mk (h : 12 < 13) :
    trace012Word.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem trace012Vector_seq_eq :
    faceVectorSeq trace012Vector = trace012Seq := by
  funext i
  fin_cases i <;> rfl

private theorem trace012_contribution_labels :
    faceLabelsInContributionOrder (fun f : Face => f) trace012Seq =
      acceptedTraceOfId AcceptedTraceId.t012 := by
  decide

private theorem trace012Word_eq_pairWordOfSeq :
    trace012Word = pairWordOfSeq trace012Seq := by
  decide

private def trace012Axis : Vec3 Rat :=
  { x := (-1/3), y := (-1/3), z := -1 }

private def trace012Kernel : KernelLineWitness :=
  { crossFactor := { m00 := (7/144), m01 := (-5/9), m02 := 0, m10 := (5/9), m11 := (23/144), m12 := 0, m20 := (-29/144), m21 := (19/144), m22 := 0 } }

private def trace012Cert : NonIdCert where
  word := trace012Word
  axis := trace012Axis
  kernel := trace012Kernel
  forcedSeq := trace012Vector
  p0 := { x := 1, y := (-7/2), z := -2 }
  lambda := 12
  solve := { leftInverse := { m00 := 0, m01 := 0, m02 := 0, m03 := 1, m10 := (103/176), m11 := (-73/176), m12 := (-5/88), m13 := 1, m20 := (259/176), m21 := (25/88), m22 := (-103/176), m23 := 3, m30 := (3/11), m31 := (3/11), m32 := (9/11), m33 := 0 } }
  failure := NonIdFailure.axisMissesStartInterior

private theorem trace012_word_eq :
    trace012Cert.word = pairWordOfSeq trace012Seq := by
  exact trace012Word_eq_pairWordOfSeq

private theorem trace012TotalLinear :
    totalLinearOfPairWord trace012Word = { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

private theorem trace012_kernel_check :
    checkKernelLineWitness (totalLinearOfPairWord trace012Cert.word)
      trace012Cert.axis trace012Cert.kernel = true := by
  change checkKernelLineWitness (totalLinearOfPairWord trace012Word)
      trace012Axis trace012Kernel = true
  rw [trace012TotalLinear]
  norm_num [
    trace012Axis, trace012Kernel, checkKernelLineWitness,
    checkVec3NonzeroQ, fixedPart, crossLeftMatrix, matSub, matId,
    matMul, matVec]

private theorem trace012FinalAxisDot :
    finalAxisDotQ trace012Word trace012Axis = (1/3) := by
  norm_num [trace012Axis, finalAxisDotQ, pairPrefixLinearNat,
    trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer, matVec]

private theorem trace012PrefixLinear00 :
    pairPrefixLinearNat trace012Word 0 =
      { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace012PrefixLinear01 :
    pairPrefixLinearNat trace012Word 1 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace012PrefixLinear02 :
    pairPrefixLinearNat trace012Word 2 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace012PrefixLinear03 :
    pairPrefixLinearNat trace012Word 3 =
      { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) } := by
  norm_num [pairPrefixLinearNat, trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace012PrefixLinear04 :
    pairPrefixLinearNat trace012Word 4 =
      { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) } := by
  norm_num [pairPrefixLinearNat, trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace012PrefixLinear05 :
    pairPrefixLinearNat trace012Word 5 =
      { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) } := by
  norm_num [pairPrefixLinearNat, trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace012PrefixLinear06 :
    pairPrefixLinearNat trace012Word 6 =
      { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) } := by
  norm_num [pairPrefixLinearNat, trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace012PrefixLinear07 :
    pairPrefixLinearNat trace012Word 7 =
      { m00 := (-49/81), m01 := (8/81), m02 := (64/81), m10 := (-8/81), m11 := (79/81), m12 := (-16/81), m20 := (64/81), m21 := (16/81), m22 := (47/81) } := by
  norm_num [pairPrefixLinearNat, trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace012PrefixLinear08 :
    pairPrefixLinearNat trace012Word 8 =
      { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) } := by
  norm_num [pairPrefixLinearNat, trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace012PrefixLinear09 :
    pairPrefixLinearNat trace012Word 9 =
      { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) } := by
  norm_num [pairPrefixLinearNat, trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace012PrefixLinear10 :
    pairPrefixLinearNat trace012Word 10 =
      { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) } := by
  norm_num [pairPrefixLinearNat, trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace012PrefixLinear11 :
    pairPrefixLinearNat trace012Word 11 =
      { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) } := by
  norm_num [pairPrefixLinearNat, trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace012PrefixLinear12 :
    pairPrefixLinearNat trace012Word 12 =
      { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) } := by
  norm_num [pairPrefixLinearNat, trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace012PrefixLinear13 :
    pairPrefixLinearNat trace012Word 13 =
      { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) } := by
  norm_num [pairPrefixLinearNat, trace012Word_get00_num, trace012Word_get01_num, trace012Word_get02_num, trace012Word_get03_num, trace012Word_get04_num, trace012Word_get05_num, trace012Word_get06_num, trace012Word_get07_num, trace012Word_get08_num, trace012Word_get09_num, trace012Word_get10_num, trace012Word_get11_num, trace012Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace012AxisForcesAt00 (f : Face)
    (hf : pairOfFace f = trace012Word.get (0 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace012Word 0)
        (normalQ f)) trace012Axis) :
    normalQ (trace012Seq (afterStart (0 : WordIndex))) =
      normalQ f := by
  rw [trace012PrefixLinear00] at hpos
  cases f <;>
    simp [trace012Axis, trace012Seq, trace012Word_get00_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace012AxisForcesAt01 (f : Face)
    (hf : pairOfFace f = trace012Word.get (1 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace012Word 1)
        (normalQ f)) trace012Axis) :
    normalQ (trace012Seq (afterStart (1 : WordIndex))) =
      normalQ f := by
  rw [trace012PrefixLinear01] at hpos
  cases f <;>
    simp [trace012Axis, trace012Seq, trace012Word_get01_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace012AxisForcesAt02 (f : Face)
    (hf : pairOfFace f = trace012Word.get (2 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace012Word 2)
        (normalQ f)) trace012Axis) :
    normalQ (trace012Seq (afterStart (2 : WordIndex))) =
      normalQ f := by
  rw [trace012PrefixLinear02] at hpos
  cases f <;>
    simp [trace012Axis, trace012Seq, trace012Word_get02_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace012AxisForcesAt03 (f : Face)
    (hf : pairOfFace f = trace012Word.get (3 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace012Word 3)
        (normalQ f)) trace012Axis) :
    normalQ (trace012Seq (afterStart (3 : WordIndex))) =
      normalQ f := by
  rw [trace012PrefixLinear03] at hpos
  cases f <;>
    simp [trace012Axis, trace012Seq, trace012Word_get03_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace012AxisForcesAt04 (f : Face)
    (hf : pairOfFace f = trace012Word.get (4 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace012Word 4)
        (normalQ f)) trace012Axis) :
    normalQ (trace012Seq (afterStart (4 : WordIndex))) =
      normalQ f := by
  rw [trace012PrefixLinear04] at hpos
  cases f <;>
    simp [trace012Axis, trace012Seq, trace012Word_get04_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace012AxisForcesAt05 (f : Face)
    (hf : pairOfFace f = trace012Word.get (5 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace012Word 5)
        (normalQ f)) trace012Axis) :
    normalQ (trace012Seq (afterStart (5 : WordIndex))) =
      normalQ f := by
  rw [trace012PrefixLinear05] at hpos
  cases f <;>
    simp [trace012Axis, trace012Seq, trace012Word_get05_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace012AxisForcesAt06 (f : Face)
    (hf : pairOfFace f = trace012Word.get (6 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace012Word 6)
        (normalQ f)) trace012Axis) :
    normalQ (trace012Seq (afterStart (6 : WordIndex))) =
      normalQ f := by
  rw [trace012PrefixLinear06] at hpos
  cases f <;>
    simp [trace012Axis, trace012Seq, trace012Word_get06_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace012AxisForcesAt07 (f : Face)
    (hf : pairOfFace f = trace012Word.get (7 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace012Word 7)
        (normalQ f)) trace012Axis) :
    normalQ (trace012Seq (afterStart (7 : WordIndex))) =
      normalQ f := by
  rw [trace012PrefixLinear07] at hpos
  cases f <;>
    simp [trace012Axis, trace012Seq, trace012Word_get07_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace012AxisForcesAt08 (f : Face)
    (hf : pairOfFace f = trace012Word.get (8 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace012Word 8)
        (normalQ f)) trace012Axis) :
    normalQ (trace012Seq (afterStart (8 : WordIndex))) =
      normalQ f := by
  rw [trace012PrefixLinear08] at hpos
  cases f <;>
    simp [trace012Axis, trace012Seq, trace012Word_get08_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace012AxisForcesAt09 (f : Face)
    (hf : pairOfFace f = trace012Word.get (9 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace012Word 9)
        (normalQ f)) trace012Axis) :
    normalQ (trace012Seq (afterStart (9 : WordIndex))) =
      normalQ f := by
  rw [trace012PrefixLinear09] at hpos
  cases f <;>
    simp [trace012Axis, trace012Seq, trace012Word_get09_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace012AxisForcesAt10 (f : Face)
    (hf : pairOfFace f = trace012Word.get (10 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace012Word 10)
        (normalQ f)) trace012Axis) :
    normalQ (trace012Seq (afterStart (10 : WordIndex))) =
      normalQ f := by
  rw [trace012PrefixLinear10] at hpos
  cases f <;>
    simp [trace012Axis, trace012Seq, trace012Word_get10_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace012AxisForcesAt11 (f : Face)
    (hf : pairOfFace f = trace012Word.get (11 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace012Word 11)
        (normalQ f)) trace012Axis) :
    normalQ (trace012Seq (afterStart (11 : WordIndex))) =
      normalQ f := by
  rw [trace012PrefixLinear11] at hpos
  cases f <;>
    simp [trace012Axis, trace012Seq, trace012Word_get11_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace012AxisForcesAt12 (f : Face)
    (hf : pairOfFace f = trace012Word.get (12 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace012Word 12)
        (normalQ f)) trace012Axis) :
    normalQ (trace012Seq (afterStart (12 : WordIndex))) =
      normalQ f := by
  rw [trace012PrefixLinear12] at hpos
  cases f <;>
    simp [trace012Axis, trace012Seq, trace012Word_get12_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace012_axis_forces :
    AxisForcesForcedSeq trace012Cert.word trace012Cert.axis
      (faceVectorSeq trace012Cert.forcedSeq) := by
  change AxisForcesForcedSeq trace012Word trace012Axis
      (faceVectorSeq trace012Vector)
  rw [trace012Vector_seq_eq]
  constructor
  · unfold StartsXp trace012Seq
    decide
  constructor
  · rw [trace012Word_eq_pairWordOfSeq]
    exact pairWordOfSeq_matches trace012Seq
  constructor
  · rw [trace012FinalAxisDot]
    norm_num
  · intro i f hf hpos
    fin_cases i
    · exact trace012AxisForcesAt00 f hf hpos
    · exact trace012AxisForcesAt01 f hf hpos
    · exact trace012AxisForcesAt02 f hf hpos
    · exact trace012AxisForcesAt03 f hf hpos
    · exact trace012AxisForcesAt04 f hf hpos
    · exact trace012AxisForcesAt05 f hf hpos
    · exact trace012AxisForcesAt06 f hf hpos
    · exact trace012AxisForcesAt07 f hf hpos
    · exact trace012AxisForcesAt08 f hf hpos
    · exact trace012AxisForcesAt09 f hf hpos
    · exact trace012AxisForcesAt10 f hf hpos
    · exact trace012AxisForcesAt11 f hf hpos
    · exact trace012AxisForcesAt12 f hf hpos

private theorem trace012Cert_pathPrefix00 :
    pathPrefixAffNat (faceVectorSeq trace012Vector) 0 = { M := { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := 0, y := 0, z := 0 } } := by
  simp [trace012Vector, faceVectorSeq, pathPrefixAffNat, affId, matId]

private theorem trace012Cert_pathPrefix01 :
    pathPrefixAffNat (faceVectorSeq trace012Vector) 1 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := 0, z := 0 } } := by
  simp [pathPrefixAffNat, trace012Cert_pathPrefix00, faceVectorSeq,
    trace012Vector_get01_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace012Cert_pathPrefix02 :
    pathPrefixAffNat (faceVectorSeq trace012Vector) 2 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -2, z := 0 } } := by
  simp [pathPrefixAffNat, trace012Cert_pathPrefix01, faceVectorSeq,
    trace012Vector_get02_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace012Cert_pathPrefix03 :
    pathPrefixAffNat (faceVectorSeq trace012Vector) 3 = { M := { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }, b := { x := (-2/3), y := (-10/3), z := (-4/3) } } := by
  simp [pathPrefixAffNat, trace012Cert_pathPrefix02, faceVectorSeq,
    trace012Vector_get03_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace012Cert_pathPrefix04 :
    pathPrefixAffNat (faceVectorSeq trace012Vector) 4 = { M := { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }, b := { x := (-26/9), y := (-34/9), z := (-16/9) } } := by
  simp [pathPrefixAffNat, trace012Cert_pathPrefix03, faceVectorSeq,
    trace012Vector_get04_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace012Cert_pathPrefix05 :
    pathPrefixAffNat (faceVectorSeq trace012Vector) 5 = { M := { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }, b := { x := (-50/27), y := (-82/27), z := (-100/27) } } := by
  simp [pathPrefixAffNat, trace012Cert_pathPrefix04, faceVectorSeq,
    trace012Vector_get05_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace012Cert_pathPrefix06 :
    pathPrefixAffNat (faceVectorSeq trace012Vector) 6 = { M := { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }, b := { x := (-10/81), y := (-362/81), z := (-344/81) } } := by
  simp [pathPrefixAffNat, trace012Cert_pathPrefix05, faceVectorSeq,
    trace012Vector_get06_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace012Cert_pathPrefix07 :
    pathPrefixAffNat (faceVectorSeq trace012Vector) 7 = { M := { m00 := (-49/81), m01 := (8/81), m02 := (64/81), m10 := (-8/81), m11 := (79/81), m12 := (-16/81), m20 := (64/81), m21 := (16/81), m22 := (47/81) }, b := { x := (-46/27), y := (-110/27), z := (-146/27) } } := by
  simp [pathPrefixAffNat, trace012Cert_pathPrefix06, faceVectorSeq,
    trace012Vector_get07_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace012Cert_pathPrefix08 :
    pathPrefixAffNat (faceVectorSeq trace012Vector) 8 = { M := { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }, b := { x := (-266/81), y := (-298/81), z := (-532/81) } } := by
  simp [pathPrefixAffNat, trace012Cert_pathPrefix07, faceVectorSeq,
    trace012Vector_get08_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace012Cert_pathPrefix09 :
    pathPrefixAffNat (faceVectorSeq trace012Vector) 9 = { M := { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }, b := { x := (-14/9), y := (-46/9), z := (-64/9) } } := by
  simp [pathPrefixAffNat, trace012Cert_pathPrefix08, faceVectorSeq,
    trace012Vector_get09_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace012Cert_pathPrefix10 :
    pathPrefixAffNat (faceVectorSeq trace012Vector) 10 = { M := { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }, b := { x := (-194/81), y := (-586/81), z := (-604/81) } } := by
  simp [pathPrefixAffNat, trace012Cert_pathPrefix09, faceVectorSeq,
    trace012Vector_get10_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace012Cert_pathPrefix11 :
    pathPrefixAffNat (faceVectorSeq trace012Vector) 11 = { M := { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }, b := { x := (-106/81), y := (-716/81), z := (-644/81) } } := by
  simp [pathPrefixAffNat, trace012Cert_pathPrefix10, faceVectorSeq,
    trace012Vector_get11_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace012Cert_pathPrefix12 :
    pathPrefixAffNat (faceVectorSeq trace012Vector) 12 = { M := { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }, b := { x := (-554/243), y := (-1792/243), z := (-2296/243) } } := by
  simp [pathPrefixAffNat, trace012Cert_pathPrefix11, faceVectorSeq,
    trace012Vector_get12_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace012Cert_pathPrefix13 :
    pathPrefixAffNat (faceVectorSeq trace012Vector) 13 = { M := { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (-842/729), y := (-6580/729), z := (-7732/729) } } := by
  simp [pathPrefixAffNat, trace012Cert_pathPrefix12, faceVectorSeq,
    trace012Vector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace012Cert_totalAff :
    totalAff (faceVectorSeq trace012Cert.forcedSeq) = { M := { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (260/729), y := (-6356/729), z := (-8660/729) } } := by
  rw [totalAff_eq_finalPath]
  change affCompose (pathPrefixAffNat (faceVectorSeq trace012Vector) 13)
      (faceReflectionQ (faceVectorSeq trace012Vector 0)) = { M := { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (260/729), y := (-6356/729), z := (-8660/729) } }
  rw [trace012Cert_pathPrefix13]
  simp [faceVectorSeq, trace012Vector_get00_num,
    faceReflectionQ, reflM, reflD, normalQ, offsetQ, affCompose,
    matSub, matId, scalarMat, outer, dot, matMul, matVec, vecAdd,
    scalarMul]
  norm_num

private theorem trace012Cert_axisSolveCheck :
    checkAffineAxisSolveWitness
      (totalAff (faceVectorSeq trace012Cert.forcedSeq))
      trace012Cert.axis trace012Cert.p0 trace012Cert.lambda trace012Cert.solve = true := by
  rw [trace012Cert_totalAff]
  norm_num [trace012Cert, trace012Axis, checkAffineAxisSolveWitness, axisSolveMatrix,
    axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec, mat4Id, matId, matSub]

private theorem trace012_solve_check :
    checkAffineAxisSolveWitness (totalAff (faceVectorSeq trace012Cert.forcedSeq))
      trace012Cert.axis trace012Cert.p0 trace012Cert.lambda trace012Cert.solve = true := by
  exact trace012Cert_axisSolveCheck

private theorem trace012_badFace_ne_xp :
    Face.ym ≠ Face.xp := by
  decide

private theorem trace012_badFace_violation :
    offsetR Face.ym <=
      dot (normalR Face.ym) (vecRatToReal trace012Cert.p0) := by
  norm_num [trace012Cert, offsetR, normalR, offsetQ, normalQ,
    vecRatToReal, dot]

private def trace012StartViolationCert (margin : Int) :
    TraceStartViolationMarginCert trace012Seq margin where
  cert := trace012Cert
  word_eq := trace012_word_eq
  kernel_check := trace012_kernel_check
  solve_check := trace012_solve_check
  axis_forces := trace012_axis_forces
  badFace := Face.ym
  badFace_ne_xp := trace012_badFace_ne_xp
  badFace_violation := trace012_badFace_violation

def objectStartViolationMarginCert_of_trace012
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (htrace :
      topPairingRankFaceLabels rank =
        acceptedTraceOfId AcceptedTraceId.t012) :
    ObjectStartViolationMarginCert rank (scaledMargin rank) :=
  objectStartViolationMarginCert_of_traceCert
    (trace012StartViolationCert (scaledMargin rank))
    (by
      rw [trace012_contribution_labels]
      exact htrace)
end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace012StartViolationProvider
