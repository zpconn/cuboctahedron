import Cuboctahedron.Generated.NonIdentity.PrefixPruning

/-!
Generated semantic prefix-pruning prototype.

This root proves a bounded bad-pair-balance interval without local checked
certificate literals and without a singleton rank-leaf module.
-/

namespace Cuboctahedron.Generated.PrefixPruningPrototype.BadPairBalance102

set_option maxHeartbeats 1600000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def prototypeRank : Fin numPairWords :=
  ⟨102, by decide⟩

def prototypePairPrefix : Cuboctahedron.Generated.Coverage.PairPrefix where
  entries := [PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.dm11]
  length_le := by decide

def prototypeWord : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.dm11], by decide⟩

@[simp] theorem prototypeWord_get00_num :
    prototypeWord.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem prototypeWord_get00_mk (h : 0 < 13) :
    prototypeWord.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeWord_get01_num :
    prototypeWord.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem prototypeWord_get01_mk (h : 1 < 13) :
    prototypeWord.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeWord_get02_num :
    prototypeWord.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem prototypeWord_get02_mk (h : 2 < 13) :
    prototypeWord.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeWord_get03_num :
    prototypeWord.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem prototypeWord_get03_mk (h : 3 < 13) :
    prototypeWord.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeWord_get04_num :
    prototypeWord.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem prototypeWord_get04_mk (h : 4 < 13) :
    prototypeWord.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeWord_get05_num :
    prototypeWord.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem prototypeWord_get05_mk (h : 5 < 13) :
    prototypeWord.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeWord_get06_num :
    prototypeWord.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem prototypeWord_get06_mk (h : 6 < 13) :
    prototypeWord.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeWord_get07_num :
    prototypeWord.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem prototypeWord_get07_mk (h : 7 < 13) :
    prototypeWord.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeWord_get08_num :
    prototypeWord.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem prototypeWord_get08_mk (h : 8 < 13) :
    prototypeWord.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeWord_get09_num :
    prototypeWord.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem prototypeWord_get09_mk (h : 9 < 13) :
    prototypeWord.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeWord_get10_num :
    prototypeWord.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem prototypeWord_get10_mk (h : 10 < 13) :
    prototypeWord.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeWord_get11_num :
    prototypeWord.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem prototypeWord_get11_mk (h : 11 < 13) :
    prototypeWord.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeWord_get12_num :
    prototypeWord.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem prototypeWord_get12_mk (h : 12 < 13) :
    prototypeWord.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem prototypeRank_rank :
    rankPairWord? prototypeWord = some prototypeRank := by
  decide

theorem prototypeRank_unrank :
    unrankPairWord prototypeRank = prototypeWord :=
  ((rankPairWord?_eq_some_iff_unrank prototypeWord prototypeRank).mp
    prototypeRank_rank).symm

def prototypeAxis : Vec3 Rat :=
  { x := -9 / 10, y := -13 / 10, z := 1 }

def prototypeKernel : KernelLineWitness where
  crossFactor :=
    { m00 := 79 / 400, m01 := 269 / 200, m02 := 0,
      m10 := -181 / 200, m11 := -389 / 400, m12 := 0,
      m20 := -799 / 800, m21 := -43 / 800, m22 := 0 }

def prototypeForcedFaces : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zp, Face.zm, Face.tppp, Face.tmmp, Face.tppp, Face.tpmp, Face.tpmm, Face.tppm, Face.tmpm, Face.tmpp], by decide⟩

@[simp] theorem prototypeForcedFaces_get00_num :
    prototypeForcedFaces.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem prototypeForcedFaces_get00_mk (h : 0 < 14) :
    prototypeForcedFaces.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeForcedFaces_get01_num :
    prototypeForcedFaces.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem prototypeForcedFaces_get01_mk (h : 1 < 14) :
    prototypeForcedFaces.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeForcedFaces_get02_num :
    prototypeForcedFaces.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem prototypeForcedFaces_get02_mk (h : 2 < 14) :
    prototypeForcedFaces.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeForcedFaces_get03_num :
    prototypeForcedFaces.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem prototypeForcedFaces_get03_mk (h : 3 < 14) :
    prototypeForcedFaces.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeForcedFaces_get04_num :
    prototypeForcedFaces.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem prototypeForcedFaces_get04_mk (h : 4 < 14) :
    prototypeForcedFaces.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeForcedFaces_get05_num :
    prototypeForcedFaces.get (5 : Step14) = Face.zm := by
  decide

@[simp] theorem prototypeForcedFaces_get05_mk (h : 5 < 14) :
    prototypeForcedFaces.get ⟨5, h⟩ = Face.zm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeForcedFaces_get06_num :
    prototypeForcedFaces.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem prototypeForcedFaces_get06_mk (h : 6 < 14) :
    prototypeForcedFaces.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeForcedFaces_get07_num :
    prototypeForcedFaces.get (7 : Step14) = Face.tmmp := by
  decide

@[simp] theorem prototypeForcedFaces_get07_mk (h : 7 < 14) :
    prototypeForcedFaces.get ⟨7, h⟩ = Face.tmmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeForcedFaces_get08_num :
    prototypeForcedFaces.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem prototypeForcedFaces_get08_mk (h : 8 < 14) :
    prototypeForcedFaces.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeForcedFaces_get09_num :
    prototypeForcedFaces.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem prototypeForcedFaces_get09_mk (h : 9 < 14) :
    prototypeForcedFaces.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeForcedFaces_get10_num :
    prototypeForcedFaces.get (10 : Step14) = Face.tpmm := by
  decide

@[simp] theorem prototypeForcedFaces_get10_mk (h : 10 < 14) :
    prototypeForcedFaces.get ⟨10, h⟩ = Face.tpmm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeForcedFaces_get11_num :
    prototypeForcedFaces.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem prototypeForcedFaces_get11_mk (h : 11 < 14) :
    prototypeForcedFaces.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeForcedFaces_get12_num :
    prototypeForcedFaces.get (12 : Step14) = Face.tmpm := by
  decide

@[simp] theorem prototypeForcedFaces_get12_mk (h : 12 < 14) :
    prototypeForcedFaces.get ⟨12, h⟩ = Face.tmpm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem prototypeForcedFaces_get13_num :
    prototypeForcedFaces.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem prototypeForcedFaces_get13_mk (h : 13 < 14) :
    prototypeForcedFaces.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide


def prototypeForcedSeq : Step14 -> Face :=
  faceVectorSeq prototypeForcedFaces

theorem prototypeTotalLinear :
    totalLinearOfPairWord prototypeWord = { m00 := (-2047/6561), m01 := (6224/6561), m02 := (344/6561), m10 := (1264/6561), m11 := (769/6561), m12 := (-6392/6561), m20 := (-6104/6561), m21 := (-1928/6561), m22 := (-1439/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem prototypeKernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord prototypeWord)
      prototypeAxis prototypeKernel = true := by
  rw [prototypeTotalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, prototypeAxis,
    prototypeKernel]

theorem prototypeFinalAxisDot :
    finalAxisDotQ prototypeWord prototypeAxis = (9/10) := by
  simp [finalAxisDotQ, pairPrefixLinearNat, prototypeWord_get00_num, prototypeWord_get01_num, prototypeWord_get02_num, prototypeWord_get03_num, prototypeWord_get04_num, prototypeWord_get05_num, prototypeWord_get06_num, prototypeWord_get07_num, prototypeWord_get08_num, prototypeWord_get09_num, prototypeWord_get10_num, prototypeWord_get11_num, prototypeWord_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
    scalarMat, outer, matVec, prototypeAxis]
  norm_num

theorem prototypeForceSign00 (f : Face)
    (hf : pairOfFace f = prototypeWord.get (0 : WordIndex))
    (hpos :
      0 <
        dot
          (matVec (pairPrefixLinearNat prototypeWord 0)
            (normalQ f)) prototypeAxis) :
    normalQ
      (prototypeForcedSeq (afterStart (0 : WordIndex))) =
      normalQ f := by
  cases f <;>
    simp [prototypeForcedSeq, faceVectorSeq, afterStart, prototypeWord_get00_num, prototypeWord_get01_num, prototypeWord_get02_num, prototypeWord_get03_num, prototypeWord_get04_num, prototypeWord_get05_num, prototypeWord_get06_num, prototypeWord_get07_num, prototypeWord_get08_num, prototypeWord_get09_num, prototypeWord_get10_num, prototypeWord_get11_num, prototypeWord_get12_num, prototypeForcedFaces_get00_num, prototypeForcedFaces_get01_num, prototypeForcedFaces_get02_num, prototypeForcedFaces_get03_num, prototypeForcedFaces_get04_num, prototypeForcedFaces_get05_num, prototypeForcedFaces_get06_num, prototypeForcedFaces_get07_num, prototypeForcedFaces_get08_num, prototypeForcedFaces_get09_num, prototypeForcedFaces_get10_num, prototypeForcedFaces_get11_num, prototypeForcedFaces_get12_num, prototypeForcedFaces_get13_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec, prototypeAxis] at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

theorem prototypeForceSign01 (f : Face)
    (hf : pairOfFace f = prototypeWord.get (1 : WordIndex))
    (hpos :
      0 <
        dot
          (matVec (pairPrefixLinearNat prototypeWord 1)
            (normalQ f)) prototypeAxis) :
    normalQ
      (prototypeForcedSeq (afterStart (1 : WordIndex))) =
      normalQ f := by
  cases f <;>
    simp [prototypeForcedSeq, faceVectorSeq, afterStart, prototypeWord_get00_num, prototypeWord_get01_num, prototypeWord_get02_num, prototypeWord_get03_num, prototypeWord_get04_num, prototypeWord_get05_num, prototypeWord_get06_num, prototypeWord_get07_num, prototypeWord_get08_num, prototypeWord_get09_num, prototypeWord_get10_num, prototypeWord_get11_num, prototypeWord_get12_num, prototypeForcedFaces_get00_num, prototypeForcedFaces_get01_num, prototypeForcedFaces_get02_num, prototypeForcedFaces_get03_num, prototypeForcedFaces_get04_num, prototypeForcedFaces_get05_num, prototypeForcedFaces_get06_num, prototypeForcedFaces_get07_num, prototypeForcedFaces_get08_num, prototypeForcedFaces_get09_num, prototypeForcedFaces_get10_num, prototypeForcedFaces_get11_num, prototypeForcedFaces_get12_num, prototypeForcedFaces_get13_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec, prototypeAxis] at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

theorem prototypeForceSign02 (f : Face)
    (hf : pairOfFace f = prototypeWord.get (2 : WordIndex))
    (hpos :
      0 <
        dot
          (matVec (pairPrefixLinearNat prototypeWord 2)
            (normalQ f)) prototypeAxis) :
    normalQ
      (prototypeForcedSeq (afterStart (2 : WordIndex))) =
      normalQ f := by
  cases f <;>
    simp [prototypeForcedSeq, faceVectorSeq, afterStart, prototypeWord_get00_num, prototypeWord_get01_num, prototypeWord_get02_num, prototypeWord_get03_num, prototypeWord_get04_num, prototypeWord_get05_num, prototypeWord_get06_num, prototypeWord_get07_num, prototypeWord_get08_num, prototypeWord_get09_num, prototypeWord_get10_num, prototypeWord_get11_num, prototypeWord_get12_num, prototypeForcedFaces_get00_num, prototypeForcedFaces_get01_num, prototypeForcedFaces_get02_num, prototypeForcedFaces_get03_num, prototypeForcedFaces_get04_num, prototypeForcedFaces_get05_num, prototypeForcedFaces_get06_num, prototypeForcedFaces_get07_num, prototypeForcedFaces_get08_num, prototypeForcedFaces_get09_num, prototypeForcedFaces_get10_num, prototypeForcedFaces_get11_num, prototypeForcedFaces_get12_num, prototypeForcedFaces_get13_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec, prototypeAxis] at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

theorem prototypeForceSign03 (f : Face)
    (hf : pairOfFace f = prototypeWord.get (3 : WordIndex))
    (hpos :
      0 <
        dot
          (matVec (pairPrefixLinearNat prototypeWord 3)
            (normalQ f)) prototypeAxis) :
    normalQ
      (prototypeForcedSeq (afterStart (3 : WordIndex))) =
      normalQ f := by
  cases f <;>
    simp [prototypeForcedSeq, faceVectorSeq, afterStart, prototypeWord_get00_num, prototypeWord_get01_num, prototypeWord_get02_num, prototypeWord_get03_num, prototypeWord_get04_num, prototypeWord_get05_num, prototypeWord_get06_num, prototypeWord_get07_num, prototypeWord_get08_num, prototypeWord_get09_num, prototypeWord_get10_num, prototypeWord_get11_num, prototypeWord_get12_num, prototypeForcedFaces_get00_num, prototypeForcedFaces_get01_num, prototypeForcedFaces_get02_num, prototypeForcedFaces_get03_num, prototypeForcedFaces_get04_num, prototypeForcedFaces_get05_num, prototypeForcedFaces_get06_num, prototypeForcedFaces_get07_num, prototypeForcedFaces_get08_num, prototypeForcedFaces_get09_num, prototypeForcedFaces_get10_num, prototypeForcedFaces_get11_num, prototypeForcedFaces_get12_num, prototypeForcedFaces_get13_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec, prototypeAxis] at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

theorem prototypeForceSign04 (f : Face)
    (hf : pairOfFace f = prototypeWord.get (4 : WordIndex))
    (hpos :
      0 <
        dot
          (matVec (pairPrefixLinearNat prototypeWord 4)
            (normalQ f)) prototypeAxis) :
    normalQ
      (prototypeForcedSeq (afterStart (4 : WordIndex))) =
      normalQ f := by
  cases f <;>
    simp [prototypeForcedSeq, faceVectorSeq, afterStart, prototypeWord_get00_num, prototypeWord_get01_num, prototypeWord_get02_num, prototypeWord_get03_num, prototypeWord_get04_num, prototypeWord_get05_num, prototypeWord_get06_num, prototypeWord_get07_num, prototypeWord_get08_num, prototypeWord_get09_num, prototypeWord_get10_num, prototypeWord_get11_num, prototypeWord_get12_num, prototypeForcedFaces_get00_num, prototypeForcedFaces_get01_num, prototypeForcedFaces_get02_num, prototypeForcedFaces_get03_num, prototypeForcedFaces_get04_num, prototypeForcedFaces_get05_num, prototypeForcedFaces_get06_num, prototypeForcedFaces_get07_num, prototypeForcedFaces_get08_num, prototypeForcedFaces_get09_num, prototypeForcedFaces_get10_num, prototypeForcedFaces_get11_num, prototypeForcedFaces_get12_num, prototypeForcedFaces_get13_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec, prototypeAxis] at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

theorem prototypeForceSign05 (f : Face)
    (hf : pairOfFace f = prototypeWord.get (5 : WordIndex))
    (hpos :
      0 <
        dot
          (matVec (pairPrefixLinearNat prototypeWord 5)
            (normalQ f)) prototypeAxis) :
    normalQ
      (prototypeForcedSeq (afterStart (5 : WordIndex))) =
      normalQ f := by
  cases f <;>
    simp [prototypeForcedSeq, faceVectorSeq, afterStart, prototypeWord_get00_num, prototypeWord_get01_num, prototypeWord_get02_num, prototypeWord_get03_num, prototypeWord_get04_num, prototypeWord_get05_num, prototypeWord_get06_num, prototypeWord_get07_num, prototypeWord_get08_num, prototypeWord_get09_num, prototypeWord_get10_num, prototypeWord_get11_num, prototypeWord_get12_num, prototypeForcedFaces_get00_num, prototypeForcedFaces_get01_num, prototypeForcedFaces_get02_num, prototypeForcedFaces_get03_num, prototypeForcedFaces_get04_num, prototypeForcedFaces_get05_num, prototypeForcedFaces_get06_num, prototypeForcedFaces_get07_num, prototypeForcedFaces_get08_num, prototypeForcedFaces_get09_num, prototypeForcedFaces_get10_num, prototypeForcedFaces_get11_num, prototypeForcedFaces_get12_num, prototypeForcedFaces_get13_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec, prototypeAxis] at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

theorem prototypeForceSign06 (f : Face)
    (hf : pairOfFace f = prototypeWord.get (6 : WordIndex))
    (hpos :
      0 <
        dot
          (matVec (pairPrefixLinearNat prototypeWord 6)
            (normalQ f)) prototypeAxis) :
    normalQ
      (prototypeForcedSeq (afterStart (6 : WordIndex))) =
      normalQ f := by
  cases f <;>
    simp [prototypeForcedSeq, faceVectorSeq, afterStart, prototypeWord_get00_num, prototypeWord_get01_num, prototypeWord_get02_num, prototypeWord_get03_num, prototypeWord_get04_num, prototypeWord_get05_num, prototypeWord_get06_num, prototypeWord_get07_num, prototypeWord_get08_num, prototypeWord_get09_num, prototypeWord_get10_num, prototypeWord_get11_num, prototypeWord_get12_num, prototypeForcedFaces_get00_num, prototypeForcedFaces_get01_num, prototypeForcedFaces_get02_num, prototypeForcedFaces_get03_num, prototypeForcedFaces_get04_num, prototypeForcedFaces_get05_num, prototypeForcedFaces_get06_num, prototypeForcedFaces_get07_num, prototypeForcedFaces_get08_num, prototypeForcedFaces_get09_num, prototypeForcedFaces_get10_num, prototypeForcedFaces_get11_num, prototypeForcedFaces_get12_num, prototypeForcedFaces_get13_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec, prototypeAxis] at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

theorem prototypeForceSign07 (f : Face)
    (hf : pairOfFace f = prototypeWord.get (7 : WordIndex))
    (hpos :
      0 <
        dot
          (matVec (pairPrefixLinearNat prototypeWord 7)
            (normalQ f)) prototypeAxis) :
    normalQ
      (prototypeForcedSeq (afterStart (7 : WordIndex))) =
      normalQ f := by
  cases f <;>
    simp [prototypeForcedSeq, faceVectorSeq, afterStart, prototypeWord_get00_num, prototypeWord_get01_num, prototypeWord_get02_num, prototypeWord_get03_num, prototypeWord_get04_num, prototypeWord_get05_num, prototypeWord_get06_num, prototypeWord_get07_num, prototypeWord_get08_num, prototypeWord_get09_num, prototypeWord_get10_num, prototypeWord_get11_num, prototypeWord_get12_num, prototypeForcedFaces_get00_num, prototypeForcedFaces_get01_num, prototypeForcedFaces_get02_num, prototypeForcedFaces_get03_num, prototypeForcedFaces_get04_num, prototypeForcedFaces_get05_num, prototypeForcedFaces_get06_num, prototypeForcedFaces_get07_num, prototypeForcedFaces_get08_num, prototypeForcedFaces_get09_num, prototypeForcedFaces_get10_num, prototypeForcedFaces_get11_num, prototypeForcedFaces_get12_num, prototypeForcedFaces_get13_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec, prototypeAxis] at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

theorem prototypeForceSign08 (f : Face)
    (hf : pairOfFace f = prototypeWord.get (8 : WordIndex))
    (hpos :
      0 <
        dot
          (matVec (pairPrefixLinearNat prototypeWord 8)
            (normalQ f)) prototypeAxis) :
    normalQ
      (prototypeForcedSeq (afterStart (8 : WordIndex))) =
      normalQ f := by
  cases f <;>
    simp [prototypeForcedSeq, faceVectorSeq, afterStart, prototypeWord_get00_num, prototypeWord_get01_num, prototypeWord_get02_num, prototypeWord_get03_num, prototypeWord_get04_num, prototypeWord_get05_num, prototypeWord_get06_num, prototypeWord_get07_num, prototypeWord_get08_num, prototypeWord_get09_num, prototypeWord_get10_num, prototypeWord_get11_num, prototypeWord_get12_num, prototypeForcedFaces_get00_num, prototypeForcedFaces_get01_num, prototypeForcedFaces_get02_num, prototypeForcedFaces_get03_num, prototypeForcedFaces_get04_num, prototypeForcedFaces_get05_num, prototypeForcedFaces_get06_num, prototypeForcedFaces_get07_num, prototypeForcedFaces_get08_num, prototypeForcedFaces_get09_num, prototypeForcedFaces_get10_num, prototypeForcedFaces_get11_num, prototypeForcedFaces_get12_num, prototypeForcedFaces_get13_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec, prototypeAxis] at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

theorem prototypeForceSign09 (f : Face)
    (hf : pairOfFace f = prototypeWord.get (9 : WordIndex))
    (hpos :
      0 <
        dot
          (matVec (pairPrefixLinearNat prototypeWord 9)
            (normalQ f)) prototypeAxis) :
    normalQ
      (prototypeForcedSeq (afterStart (9 : WordIndex))) =
      normalQ f := by
  cases f <;>
    simp [prototypeForcedSeq, faceVectorSeq, afterStart, prototypeWord_get00_num, prototypeWord_get01_num, prototypeWord_get02_num, prototypeWord_get03_num, prototypeWord_get04_num, prototypeWord_get05_num, prototypeWord_get06_num, prototypeWord_get07_num, prototypeWord_get08_num, prototypeWord_get09_num, prototypeWord_get10_num, prototypeWord_get11_num, prototypeWord_get12_num, prototypeForcedFaces_get00_num, prototypeForcedFaces_get01_num, prototypeForcedFaces_get02_num, prototypeForcedFaces_get03_num, prototypeForcedFaces_get04_num, prototypeForcedFaces_get05_num, prototypeForcedFaces_get06_num, prototypeForcedFaces_get07_num, prototypeForcedFaces_get08_num, prototypeForcedFaces_get09_num, prototypeForcedFaces_get10_num, prototypeForcedFaces_get11_num, prototypeForcedFaces_get12_num, prototypeForcedFaces_get13_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec, prototypeAxis] at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

theorem prototypeForceSign10 (f : Face)
    (hf : pairOfFace f = prototypeWord.get (10 : WordIndex))
    (hpos :
      0 <
        dot
          (matVec (pairPrefixLinearNat prototypeWord 10)
            (normalQ f)) prototypeAxis) :
    normalQ
      (prototypeForcedSeq (afterStart (10 : WordIndex))) =
      normalQ f := by
  cases f <;>
    simp [prototypeForcedSeq, faceVectorSeq, afterStart, prototypeWord_get00_num, prototypeWord_get01_num, prototypeWord_get02_num, prototypeWord_get03_num, prototypeWord_get04_num, prototypeWord_get05_num, prototypeWord_get06_num, prototypeWord_get07_num, prototypeWord_get08_num, prototypeWord_get09_num, prototypeWord_get10_num, prototypeWord_get11_num, prototypeWord_get12_num, prototypeForcedFaces_get00_num, prototypeForcedFaces_get01_num, prototypeForcedFaces_get02_num, prototypeForcedFaces_get03_num, prototypeForcedFaces_get04_num, prototypeForcedFaces_get05_num, prototypeForcedFaces_get06_num, prototypeForcedFaces_get07_num, prototypeForcedFaces_get08_num, prototypeForcedFaces_get09_num, prototypeForcedFaces_get10_num, prototypeForcedFaces_get11_num, prototypeForcedFaces_get12_num, prototypeForcedFaces_get13_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec, prototypeAxis] at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

theorem prototypeForceSign11 (f : Face)
    (hf : pairOfFace f = prototypeWord.get (11 : WordIndex))
    (hpos :
      0 <
        dot
          (matVec (pairPrefixLinearNat prototypeWord 11)
            (normalQ f)) prototypeAxis) :
    normalQ
      (prototypeForcedSeq (afterStart (11 : WordIndex))) =
      normalQ f := by
  cases f <;>
    simp [prototypeForcedSeq, faceVectorSeq, afterStart, prototypeWord_get00_num, prototypeWord_get01_num, prototypeWord_get02_num, prototypeWord_get03_num, prototypeWord_get04_num, prototypeWord_get05_num, prototypeWord_get06_num, prototypeWord_get07_num, prototypeWord_get08_num, prototypeWord_get09_num, prototypeWord_get10_num, prototypeWord_get11_num, prototypeWord_get12_num, prototypeForcedFaces_get00_num, prototypeForcedFaces_get01_num, prototypeForcedFaces_get02_num, prototypeForcedFaces_get03_num, prototypeForcedFaces_get04_num, prototypeForcedFaces_get05_num, prototypeForcedFaces_get06_num, prototypeForcedFaces_get07_num, prototypeForcedFaces_get08_num, prototypeForcedFaces_get09_num, prototypeForcedFaces_get10_num, prototypeForcedFaces_get11_num, prototypeForcedFaces_get12_num, prototypeForcedFaces_get13_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec, prototypeAxis] at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

theorem prototypeForceSign12 (f : Face)
    (hf : pairOfFace f = prototypeWord.get (12 : WordIndex))
    (hpos :
      0 <
        dot
          (matVec (pairPrefixLinearNat prototypeWord 12)
            (normalQ f)) prototypeAxis) :
    normalQ
      (prototypeForcedSeq (afterStart (12 : WordIndex))) =
      normalQ f := by
  cases f <;>
    simp [prototypeForcedSeq, faceVectorSeq, afterStart, prototypeWord_get00_num, prototypeWord_get01_num, prototypeWord_get02_num, prototypeWord_get03_num, prototypeWord_get04_num, prototypeWord_get05_num, prototypeWord_get06_num, prototypeWord_get07_num, prototypeWord_get08_num, prototypeWord_get09_num, prototypeWord_get10_num, prototypeWord_get11_num, prototypeWord_get12_num, prototypeForcedFaces_get00_num, prototypeForcedFaces_get01_num, prototypeForcedFaces_get02_num, prototypeForcedFaces_get03_num, prototypeForcedFaces_get04_num, prototypeForcedFaces_get05_num, prototypeForcedFaces_get06_num, prototypeForcedFaces_get07_num, prototypeForcedFaces_get08_num, prototypeForcedFaces_get09_num, prototypeForcedFaces_get10_num, prototypeForcedFaces_get11_num, prototypeForcedFaces_get12_num, prototypeForcedFaces_get13_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec, prototypeAxis] at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl


theorem prototypePrefix_covers :
    Cuboctahedron.Generated.Coverage.PrefixRankInterval
      prototypePairPrefix 102 103 := by
  intro raw hlo hhi hlt
  have hRaw : raw = 102 := by omega
  subst raw
  have hRank :
      (⟨102, hlt⟩ : Fin numPairWords) = prototypeRank := by
    ext
    rfl
  rw [hRank]
  rw [prototypeRank_unrank]
  intro i
  fin_cases i <;> decide

theorem prototypeKernel_sound
    (raw : Nat) (hlo : 102 <= raw) (hhi : raw < 103)
    (hlt : raw < numPairWords)
    (_hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix prototypePairPrefix
        (unrankPairWord ⟨raw, hlt⟩)) :
    checkKernelLineWitness
      (totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩))
      prototypeAxis prototypeKernel = true := by
  have hRaw : raw = 102 := by omega
  subst raw
  have hRank :
      (⟨102, hlt⟩ : Fin numPairWords) = prototypeRank := by
    ext
    rfl
  rw [hRank]
  rw [prototypeRank_unrank]
  exact prototypeKernelCheck

theorem prototypeForces_sound
    (raw : Nat) (hlo : 102 <= raw) (hhi : raw < 103)
    (hlt : raw < numPairWords)
    (_hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix prototypePairPrefix
        (unrankPairWord ⟨raw, hlt⟩)) :
    AxisForcesForcedSeq (unrankPairWord ⟨raw, hlt⟩)
      prototypeAxis prototypeForcedSeq := by
  have hRaw : raw = 102 := by omega
  subst raw
  have hRank :
      (⟨102, hlt⟩ : Fin numPairWords) = prototypeRank := by
    ext
    rfl
  rw [hRank]
  rw [prototypeRank_unrank]
  constructor
  · unfold StartsXp prototypeForcedSeq prototypeForcedFaces faceVectorSeq
    decide
  constructor
  · intro i
    fin_cases i <;>
      unfold prototypeWord prototypeForcedSeq prototypeForcedFaces
        faceVectorSeq afterStart <;>
      decide
  constructor
  · change 0 < finalAxisDotQ prototypeWord prototypeAxis
    rw [prototypeFinalAxisDot]
    norm_num
  · intro i f hf hpos
    fin_cases i
    · exact prototypeForceSign00 f hf hpos
    · exact prototypeForceSign01 f hf hpos
    · exact prototypeForceSign02 f hf hpos
    · exact prototypeForceSign03 f hf hpos
    · exact prototypeForceSign04 f hf hpos
    · exact prototypeForceSign05 f hf hpos
    · exact prototypeForceSign06 f hf hpos
    · exact prototypeForceSign07 f hf hpos
    · exact prototypeForceSign08 f hf hpos
    · exact prototypeForceSign09 f hf hpos
    · exact prototypeForceSign10 f hf hpos
    · exact prototypeForceSign11 f hf hpos
    · exact prototypeForceSign12 f hf hpos

theorem prototypeNotOmni :
    ¬ IsOmniSeq prototypeForcedSeq := by
  intro h
  have hEq :
      prototypeForcedSeq (6 : Step14) =
        prototypeForcedSeq (8 : Step14) := by
    decide
  have hIdx := h.1 hEq
  exact (by decide : (6 : Step14) ≠ (8 : Step14)) hIdx

def prototypeEvidence :
    Cuboctahedron.Generated.NonIdentity.PrefixPruning.BadPairBalancePrefixCert
      102 103 where
  pairPrefix := prototypePairPrefix
  prefix_covers := prototypePrefix_covers
  axis := prototypeAxis
  kernel := prototypeKernel
  forcedSeq := prototypeForcedSeq
  kernel_sound := prototypeKernel_sound
  forces_sound := prototypeForces_sound
  not_omni := prototypeNotOmni

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat
      102 103 :=
  prototypeEvidence.sound

end Cuboctahedron.Generated.PrefixPruningPrototype.BadPairBalance102
