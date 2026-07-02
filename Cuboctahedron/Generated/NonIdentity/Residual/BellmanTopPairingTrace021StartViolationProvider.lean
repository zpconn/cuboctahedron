import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationBridge

/-!
Generated trace-level start-violation provider for graph-accepted trace `t021`.

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

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace021StartViolationProvider

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationBridge

private def trace021Seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmmm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tmpm
  | ⟨9, _⟩ => Face.zp
  | ⟨10, _⟩ => Face.zm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private def trace021Vector : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.zp, Face.zm, Face.tppp, Face.tmpp, Face.tmmp], by decide⟩

@[simp] private theorem trace021Vector_get00_num :
    trace021Vector.get (0 : Step14) = Face.xp := by
  decide

@[simp] private theorem trace021Vector_get00_mk (h : 0 < 14) :
    trace021Vector.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Vector_get01_num :
    trace021Vector.get (1 : Step14) = Face.xm := by
  decide

@[simp] private theorem trace021Vector_get01_mk (h : 1 < 14) :
    trace021Vector.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Vector_get02_num :
    trace021Vector.get (2 : Step14) = Face.ym := by
  decide

@[simp] private theorem trace021Vector_get02_mk (h : 2 < 14) :
    trace021Vector.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Vector_get03_num :
    trace021Vector.get (3 : Step14) = Face.yp := by
  decide

@[simp] private theorem trace021Vector_get03_mk (h : 3 < 14) :
    trace021Vector.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Vector_get04_num :
    trace021Vector.get (4 : Step14) = Face.tmmm := by
  decide

@[simp] private theorem trace021Vector_get04_mk (h : 4 < 14) :
    trace021Vector.get ⟨4, h⟩ = Face.tmmm := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Vector_get05_num :
    trace021Vector.get (5 : Step14) = Face.tpmm := by
  decide

@[simp] private theorem trace021Vector_get05_mk (h : 5 < 14) :
    trace021Vector.get ⟨5, h⟩ = Face.tpmm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Vector_get06_num :
    trace021Vector.get (6 : Step14) = Face.tppm := by
  decide

@[simp] private theorem trace021Vector_get06_mk (h : 6 < 14) :
    trace021Vector.get ⟨6, h⟩ = Face.tppm := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Vector_get07_num :
    trace021Vector.get (7 : Step14) = Face.tpmp := by
  decide

@[simp] private theorem trace021Vector_get07_mk (h : 7 < 14) :
    trace021Vector.get ⟨7, h⟩ = Face.tpmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Vector_get08_num :
    trace021Vector.get (8 : Step14) = Face.tmpm := by
  decide

@[simp] private theorem trace021Vector_get08_mk (h : 8 < 14) :
    trace021Vector.get ⟨8, h⟩ = Face.tmpm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Vector_get09_num :
    trace021Vector.get (9 : Step14) = Face.zp := by
  decide

@[simp] private theorem trace021Vector_get09_mk (h : 9 < 14) :
    trace021Vector.get ⟨9, h⟩ = Face.zp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Vector_get10_num :
    trace021Vector.get (10 : Step14) = Face.zm := by
  decide

@[simp] private theorem trace021Vector_get10_mk (h : 10 < 14) :
    trace021Vector.get ⟨10, h⟩ = Face.zm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Vector_get11_num :
    trace021Vector.get (11 : Step14) = Face.tppp := by
  decide

@[simp] private theorem trace021Vector_get11_mk (h : 11 < 14) :
    trace021Vector.get ⟨11, h⟩ = Face.tppp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Vector_get12_num :
    trace021Vector.get (12 : Step14) = Face.tmpp := by
  decide

@[simp] private theorem trace021Vector_get12_mk (h : 12 < 14) :
    trace021Vector.get ⟨12, h⟩ = Face.tmpp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Vector_get13_num :
    trace021Vector.get (13 : Step14) = Face.tmmp := by
  decide

@[simp] private theorem trace021Vector_get13_mk (h : 13 < 14) :
    trace021Vector.get ⟨13, h⟩ = Face.tmmp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

private def trace021Word : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m], by decide⟩

@[simp] private theorem trace021Word_get00_num :
    trace021Word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] private theorem trace021Word_get00_mk (h : 0 < 13) :
    trace021Word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Word_get01_num :
    trace021Word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] private theorem trace021Word_get01_mk (h : 1 < 13) :
    trace021Word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Word_get02_num :
    trace021Word.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] private theorem trace021Word_get02_mk (h : 2 < 13) :
    trace021Word.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Word_get03_num :
    trace021Word.get (3 : WordIndex) = PairId.d111 := by
  decide

@[simp] private theorem trace021Word_get03_mk (h : 3 < 13) :
    trace021Word.get ⟨3, h⟩ = PairId.d111 := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Word_get04_num :
    trace021Word.get (4 : WordIndex) = PairId.dm11 := by
  decide

@[simp] private theorem trace021Word_get04_mk (h : 4 < 13) :
    trace021Word.get ⟨4, h⟩ = PairId.dm11 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Word_get05_num :
    trace021Word.get (5 : WordIndex) = PairId.d11m := by
  decide

@[simp] private theorem trace021Word_get05_mk (h : 5 < 13) :
    trace021Word.get ⟨5, h⟩ = PairId.d11m := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Word_get06_num :
    trace021Word.get (6 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] private theorem trace021Word_get06_mk (h : 6 < 13) :
    trace021Word.get ⟨6, h⟩ = PairId.d1m1 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Word_get07_num :
    trace021Word.get (7 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] private theorem trace021Word_get07_mk (h : 7 < 13) :
    trace021Word.get ⟨7, h⟩ = PairId.d1m1 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Word_get08_num :
    trace021Word.get (8 : WordIndex) = PairId.z := by
  decide

@[simp] private theorem trace021Word_get08_mk (h : 8 < 13) :
    trace021Word.get ⟨8, h⟩ = PairId.z := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Word_get09_num :
    trace021Word.get (9 : WordIndex) = PairId.z := by
  decide

@[simp] private theorem trace021Word_get09_mk (h : 9 < 13) :
    trace021Word.get ⟨9, h⟩ = PairId.z := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Word_get10_num :
    trace021Word.get (10 : WordIndex) = PairId.d111 := by
  decide

@[simp] private theorem trace021Word_get10_mk (h : 10 < 13) :
    trace021Word.get ⟨10, h⟩ = PairId.d111 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Word_get11_num :
    trace021Word.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] private theorem trace021Word_get11_mk (h : 11 < 13) :
    trace021Word.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] private theorem trace021Word_get12_num :
    trace021Word.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] private theorem trace021Word_get12_mk (h : 12 < 13) :
    trace021Word.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem trace021Vector_seq_eq :
    faceVectorSeq trace021Vector = trace021Seq := by
  funext i
  fin_cases i <;> rfl

private theorem trace021_contribution_labels :
    faceLabelsInContributionOrder (fun f : Face => f) trace021Seq =
      acceptedTraceOfId AcceptedTraceId.t021 := by
  decide

private theorem trace021Word_eq_pairWordOfSeq :
    trace021Word = pairWordOfSeq trace021Seq := by
  decide

private def trace021Axis : Vec3 Rat :=
  { x := (-1/3), y := (-1/3), z := -1 }

private def trace021Kernel : KernelLineWitness :=
  { crossFactor := { m00 := (7/144), m01 := (-5/9), m02 := 0, m10 := (5/9), m11 := (23/144), m12 := 0, m20 := (-29/144), m21 := (19/144), m22 := 0 } }

private def trace021Cert : NonIdCert where
  word := trace021Word
  axis := trace021Axis
  kernel := trace021Kernel
  forcedSeq := trace021Vector
  p0 := { x := 1, y := (-69/11), z := (-54/11) }
  lambda := (140/11)
  solve := { leftInverse := { m00 := 0, m01 := 0, m02 := 0, m03 := 1, m10 := (103/176), m11 := (-73/176), m12 := (-5/88), m13 := 1, m20 := (259/176), m21 := (25/88), m22 := (-103/176), m23 := 3, m30 := (3/11), m31 := (3/11), m32 := (9/11), m33 := 0 } }
  failure := NonIdFailure.axisMissesStartInterior

private theorem trace021_word_eq :
    trace021Cert.word = pairWordOfSeq trace021Seq := by
  exact trace021Word_eq_pairWordOfSeq

private theorem trace021TotalLinear :
    totalLinearOfPairWord trace021Word = { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

private theorem trace021_kernel_check :
    checkKernelLineWitness (totalLinearOfPairWord trace021Cert.word)
      trace021Cert.axis trace021Cert.kernel = true := by
  change checkKernelLineWitness (totalLinearOfPairWord trace021Word)
      trace021Axis trace021Kernel = true
  rw [trace021TotalLinear]
  norm_num [
    trace021Axis, trace021Kernel, checkKernelLineWitness,
    checkVec3NonzeroQ, fixedPart, crossLeftMatrix, matSub, matId,
    matMul, matVec]

private theorem trace021FinalAxisDot :
    finalAxisDotQ trace021Word trace021Axis = (1/3) := by
  norm_num [trace021Axis, finalAxisDotQ, pairPrefixLinearNat,
    trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer, matVec]

private theorem trace021PrefixLinear00 :
    pairPrefixLinearNat trace021Word 0 =
      { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace021PrefixLinear01 :
    pairPrefixLinearNat trace021Word 1 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace021PrefixLinear02 :
    pairPrefixLinearNat trace021Word 2 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace021PrefixLinear03 :
    pairPrefixLinearNat trace021Word 3 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace021PrefixLinear04 :
    pairPrefixLinearNat trace021Word 4 =
      { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) } := by
  norm_num [pairPrefixLinearNat, trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace021PrefixLinear05 :
    pairPrefixLinearNat trace021Word 5 =
      { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) } := by
  norm_num [pairPrefixLinearNat, trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace021PrefixLinear06 :
    pairPrefixLinearNat trace021Word 6 =
      { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) } := by
  norm_num [pairPrefixLinearNat, trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace021PrefixLinear07 :
    pairPrefixLinearNat trace021Word 7 =
      { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) } := by
  norm_num [pairPrefixLinearNat, trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace021PrefixLinear08 :
    pairPrefixLinearNat trace021Word 8 =
      { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) } := by
  norm_num [pairPrefixLinearNat, trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace021PrefixLinear09 :
    pairPrefixLinearNat trace021Word 9 =
      { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) } := by
  norm_num [pairPrefixLinearNat, trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace021PrefixLinear10 :
    pairPrefixLinearNat trace021Word 10 =
      { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) } := by
  norm_num [pairPrefixLinearNat, trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace021PrefixLinear11 :
    pairPrefixLinearNat trace021Word 11 =
      { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) } := by
  norm_num [pairPrefixLinearNat, trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace021PrefixLinear12 :
    pairPrefixLinearNat trace021Word 12 =
      { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) } := by
  norm_num [pairPrefixLinearNat, trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace021PrefixLinear13 :
    pairPrefixLinearNat trace021Word 13 =
      { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) } := by
  norm_num [pairPrefixLinearNat, trace021Word_get00_num, trace021Word_get01_num, trace021Word_get02_num, trace021Word_get03_num, trace021Word_get04_num, trace021Word_get05_num, trace021Word_get06_num, trace021Word_get07_num, trace021Word_get08_num, trace021Word_get09_num, trace021Word_get10_num, trace021Word_get11_num, trace021Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem trace021AxisForcesAt00 (f : Face)
    (hf : pairOfFace f = trace021Word.get (0 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace021Word 0)
        (normalQ f)) trace021Axis) :
    normalQ (trace021Seq (afterStart (0 : WordIndex))) =
      normalQ f := by
  rw [trace021PrefixLinear00] at hpos
  cases f <;>
    simp [trace021Axis, trace021Seq, trace021Word_get00_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace021AxisForcesAt01 (f : Face)
    (hf : pairOfFace f = trace021Word.get (1 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace021Word 1)
        (normalQ f)) trace021Axis) :
    normalQ (trace021Seq (afterStart (1 : WordIndex))) =
      normalQ f := by
  rw [trace021PrefixLinear01] at hpos
  cases f <;>
    simp [trace021Axis, trace021Seq, trace021Word_get01_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace021AxisForcesAt02 (f : Face)
    (hf : pairOfFace f = trace021Word.get (2 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace021Word 2)
        (normalQ f)) trace021Axis) :
    normalQ (trace021Seq (afterStart (2 : WordIndex))) =
      normalQ f := by
  rw [trace021PrefixLinear02] at hpos
  cases f <;>
    simp [trace021Axis, trace021Seq, trace021Word_get02_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace021AxisForcesAt03 (f : Face)
    (hf : pairOfFace f = trace021Word.get (3 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace021Word 3)
        (normalQ f)) trace021Axis) :
    normalQ (trace021Seq (afterStart (3 : WordIndex))) =
      normalQ f := by
  rw [trace021PrefixLinear03] at hpos
  cases f <;>
    simp [trace021Axis, trace021Seq, trace021Word_get03_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace021AxisForcesAt04 (f : Face)
    (hf : pairOfFace f = trace021Word.get (4 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace021Word 4)
        (normalQ f)) trace021Axis) :
    normalQ (trace021Seq (afterStart (4 : WordIndex))) =
      normalQ f := by
  rw [trace021PrefixLinear04] at hpos
  cases f <;>
    simp [trace021Axis, trace021Seq, trace021Word_get04_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace021AxisForcesAt05 (f : Face)
    (hf : pairOfFace f = trace021Word.get (5 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace021Word 5)
        (normalQ f)) trace021Axis) :
    normalQ (trace021Seq (afterStart (5 : WordIndex))) =
      normalQ f := by
  rw [trace021PrefixLinear05] at hpos
  cases f <;>
    simp [trace021Axis, trace021Seq, trace021Word_get05_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace021AxisForcesAt06 (f : Face)
    (hf : pairOfFace f = trace021Word.get (6 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace021Word 6)
        (normalQ f)) trace021Axis) :
    normalQ (trace021Seq (afterStart (6 : WordIndex))) =
      normalQ f := by
  rw [trace021PrefixLinear06] at hpos
  cases f <;>
    simp [trace021Axis, trace021Seq, trace021Word_get06_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace021AxisForcesAt07 (f : Face)
    (hf : pairOfFace f = trace021Word.get (7 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace021Word 7)
        (normalQ f)) trace021Axis) :
    normalQ (trace021Seq (afterStart (7 : WordIndex))) =
      normalQ f := by
  rw [trace021PrefixLinear07] at hpos
  cases f <;>
    simp [trace021Axis, trace021Seq, trace021Word_get07_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace021AxisForcesAt08 (f : Face)
    (hf : pairOfFace f = trace021Word.get (8 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace021Word 8)
        (normalQ f)) trace021Axis) :
    normalQ (trace021Seq (afterStart (8 : WordIndex))) =
      normalQ f := by
  rw [trace021PrefixLinear08] at hpos
  cases f <;>
    simp [trace021Axis, trace021Seq, trace021Word_get08_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace021AxisForcesAt09 (f : Face)
    (hf : pairOfFace f = trace021Word.get (9 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace021Word 9)
        (normalQ f)) trace021Axis) :
    normalQ (trace021Seq (afterStart (9 : WordIndex))) =
      normalQ f := by
  rw [trace021PrefixLinear09] at hpos
  cases f <;>
    simp [trace021Axis, trace021Seq, trace021Word_get09_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace021AxisForcesAt10 (f : Face)
    (hf : pairOfFace f = trace021Word.get (10 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace021Word 10)
        (normalQ f)) trace021Axis) :
    normalQ (trace021Seq (afterStart (10 : WordIndex))) =
      normalQ f := by
  rw [trace021PrefixLinear10] at hpos
  cases f <;>
    simp [trace021Axis, trace021Seq, trace021Word_get10_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace021AxisForcesAt11 (f : Face)
    (hf : pairOfFace f = trace021Word.get (11 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace021Word 11)
        (normalQ f)) trace021Axis) :
    normalQ (trace021Seq (afterStart (11 : WordIndex))) =
      normalQ f := by
  rw [trace021PrefixLinear11] at hpos
  cases f <;>
    simp [trace021Axis, trace021Seq, trace021Word_get11_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace021AxisForcesAt12 (f : Face)
    (hf : pairOfFace f = trace021Word.get (12 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat trace021Word 12)
        (normalQ f)) trace021Axis) :
    normalQ (trace021Seq (afterStart (12 : WordIndex))) =
      normalQ f := by
  rw [trace021PrefixLinear12] at hpos
  cases f <;>
    simp [trace021Axis, trace021Seq, trace021Word_get12_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem trace021_axis_forces :
    AxisForcesForcedSeq trace021Cert.word trace021Cert.axis
      (faceVectorSeq trace021Cert.forcedSeq) := by
  change AxisForcesForcedSeq trace021Word trace021Axis
      (faceVectorSeq trace021Vector)
  rw [trace021Vector_seq_eq]
  constructor
  · unfold StartsXp trace021Seq
    decide
  constructor
  · rw [trace021Word_eq_pairWordOfSeq]
    exact pairWordOfSeq_matches trace021Seq
  constructor
  · rw [trace021FinalAxisDot]
    norm_num
  · intro i f hf hpos
    fin_cases i
    · exact trace021AxisForcesAt00 f hf hpos
    · exact trace021AxisForcesAt01 f hf hpos
    · exact trace021AxisForcesAt02 f hf hpos
    · exact trace021AxisForcesAt03 f hf hpos
    · exact trace021AxisForcesAt04 f hf hpos
    · exact trace021AxisForcesAt05 f hf hpos
    · exact trace021AxisForcesAt06 f hf hpos
    · exact trace021AxisForcesAt07 f hf hpos
    · exact trace021AxisForcesAt08 f hf hpos
    · exact trace021AxisForcesAt09 f hf hpos
    · exact trace021AxisForcesAt10 f hf hpos
    · exact trace021AxisForcesAt11 f hf hpos
    · exact trace021AxisForcesAt12 f hf hpos

private theorem trace021Cert_pathPrefix00 :
    pathPrefixAffNat (faceVectorSeq trace021Vector) 0 = { M := { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := 0, y := 0, z := 0 } } := by
  simp [trace021Vector, faceVectorSeq, pathPrefixAffNat, affId, matId]

private theorem trace021Cert_pathPrefix01 :
    pathPrefixAffNat (faceVectorSeq trace021Vector) 1 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := 0, z := 0 } } := by
  simp [pathPrefixAffNat, trace021Cert_pathPrefix00, faceVectorSeq,
    trace021Vector_get01_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace021Cert_pathPrefix02 :
    pathPrefixAffNat (faceVectorSeq trace021Vector) 2 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -2, z := 0 } } := by
  simp [pathPrefixAffNat, trace021Cert_pathPrefix01, faceVectorSeq,
    trace021Vector_get02_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace021Cert_pathPrefix03 :
    pathPrefixAffNat (faceVectorSeq trace021Vector) 3 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 0 } } := by
  simp [pathPrefixAffNat, trace021Cert_pathPrefix02, faceVectorSeq,
    trace021Vector_get03_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace021Cert_pathPrefix04 :
    pathPrefixAffNat (faceVectorSeq trace021Vector) 4 = { M := { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }, b := { x := (-2/3), y := (-16/3), z := (-4/3) } } := by
  simp [pathPrefixAffNat, trace021Cert_pathPrefix03, faceVectorSeq,
    trace021Vector_get04_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace021Cert_pathPrefix05 :
    pathPrefixAffNat (faceVectorSeq trace021Vector) 5 = { M := { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }, b := { x := (-26/9), y := (-52/9), z := (-16/9) } } := by
  simp [pathPrefixAffNat, trace021Cert_pathPrefix04, faceVectorSeq,
    trace021Vector_get05_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace021Cert_pathPrefix06 :
    pathPrefixAffNat (faceVectorSeq trace021Vector) 6 = { M := { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }, b := { x := (-50/27), y := (-136/27), z := (-100/27) } } := by
  simp [pathPrefixAffNat, trace021Cert_pathPrefix05, faceVectorSeq,
    trace021Vector_get06_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace021Cert_pathPrefix07 :
    pathPrefixAffNat (faceVectorSeq trace021Vector) 7 = { M := { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }, b := { x := (-10/81), y := (-524/81), z := (-344/81) } } := by
  simp [pathPrefixAffNat, trace021Cert_pathPrefix06, faceVectorSeq,
    trace021Vector_get07_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace021Cert_pathPrefix08 :
    pathPrefixAffNat (faceVectorSeq trace021Vector) 8 = { M := { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }, b := { x := (130/81), y := (-640/81), z := (-388/81) } } := by
  simp [pathPrefixAffNat, trace021Cert_pathPrefix07, faceVectorSeq,
    trace021Vector_get08_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace021Cert_pathPrefix09 :
    pathPrefixAffNat (faceVectorSeq trace021Vector) 9 = { M := { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) }, b := { x := (142/81), y := (-724/81), z := (-526/81) } } := by
  simp [pathPrefixAffNat, trace021Cert_pathPrefix08, faceVectorSeq,
    trace021Vector_get09_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace021Cert_pathPrefix10 :
    pathPrefixAffNat (faceVectorSeq trace021Vector) 10 = { M := { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }, b := { x := (154/81), y := (-808/81), z := (-664/81) } } := by
  simp [pathPrefixAffNat, trace021Cert_pathPrefix09, faceVectorSeq,
    trace021Vector_get10_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace021Cert_pathPrefix11 :
    pathPrefixAffNat (faceVectorSeq trace021Vector) 11 = { M := { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }, b := { x := (86/81), y := (-980/81), z := (-692/81) } } := by
  simp [pathPrefixAffNat, trace021Cert_pathPrefix10, faceVectorSeq,
    trace021Vector_get11_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace021Cert_pathPrefix12 :
    pathPrefixAffNat (faceVectorSeq trace021Vector) 12 = { M := { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }, b := { x := (22/243), y := (-2584/243), z := (-2440/243) } } := by
  simp [pathPrefixAffNat, trace021Cert_pathPrefix11, faceVectorSeq,
    trace021Vector_get12_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace021Cert_pathPrefix13 :
    pathPrefixAffNat (faceVectorSeq trace021Vector) 13 = { M := { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (886/729), y := (-8956/729), z := (-8164/729) } } := by
  simp [pathPrefixAffNat, trace021Cert_pathPrefix12, faceVectorSeq,
    trace021Vector_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

private theorem trace021Cert_totalAff :
    totalAff (faceVectorSeq trace021Cert.forcedSeq) = { M := { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (1988/729), y := (-8732/729), z := (-9092/729) } } := by
  rw [totalAff_eq_finalPath]
  change affCompose (pathPrefixAffNat (faceVectorSeq trace021Vector) 13)
      (faceReflectionQ (faceVectorSeq trace021Vector 0)) = { M := { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (1988/729), y := (-8732/729), z := (-9092/729) } }
  rw [trace021Cert_pathPrefix13]
  simp [faceVectorSeq, trace021Vector_get00_num,
    faceReflectionQ, reflM, reflD, normalQ, offsetQ, affCompose,
    matSub, matId, scalarMat, outer, dot, matMul, matVec, vecAdd,
    scalarMul]
  norm_num

private theorem trace021Cert_axisSolveCheck :
    checkAffineAxisSolveWitness
      (totalAff (faceVectorSeq trace021Cert.forcedSeq))
      trace021Cert.axis trace021Cert.p0 trace021Cert.lambda trace021Cert.solve = true := by
  rw [trace021Cert_totalAff]
  norm_num [trace021Cert, trace021Axis, checkAffineAxisSolveWitness, axisSolveMatrix,
    axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec, mat4Id, matId, matSub]

private theorem trace021_solve_check :
    checkAffineAxisSolveWitness (totalAff (faceVectorSeq trace021Cert.forcedSeq))
      trace021Cert.axis trace021Cert.p0 trace021Cert.lambda trace021Cert.solve = true := by
  exact trace021Cert_axisSolveCheck

private theorem trace021_badFace_ne_xp :
    Face.ym ≠ Face.xp := by
  decide

private theorem trace021_badFace_violation :
    offsetR Face.ym <=
      dot (normalR Face.ym) (vecRatToReal trace021Cert.p0) := by
  norm_num [trace021Cert, offsetR, normalR, offsetQ, normalQ,
    vecRatToReal, dot]

private def trace021StartViolationCert (margin : Int) :
    TraceStartViolationMarginCert trace021Seq margin where
  cert := trace021Cert
  word_eq := trace021_word_eq
  kernel_check := trace021_kernel_check
  solve_check := trace021_solve_check
  axis_forces := trace021_axis_forces
  badFace := Face.ym
  badFace_ne_xp := trace021_badFace_ne_xp
  badFace_violation := trace021_badFace_violation

def objectStartViolationMarginCert_of_trace021
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (htrace :
      topPairingRankFaceLabels rank =
        acceptedTraceOfId AcceptedTraceId.t021) :
    ObjectStartViolationMarginCert rank (scaledMargin rank) :=
  objectStartViolationMarginCert_of_traceCert
    (trace021StartViolationCert (scaledMargin rank))
    (by
      rw [trace021_contribution_labels]
      exact htrace)
end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace021StartViolationProvider
