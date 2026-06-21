import Cuboctahedron.Generated.NonIdentity.PrefixPruning

/-!
Generated uniform bad-direction prefix family.

The axis, kernel witness, and zero-impact witness are shared by every
non-identity rank in this bounded prefix interval.
-/

namespace Cuboctahedron.Generated.PrefixPruningPrototype.UniformBadDirection000000000_000000003

set_option maxHeartbeats 2200000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def uniformPairPrefix : Cuboctahedron.Generated.Coverage.PairPrefix where
  entries := [PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1]
  length_le := by decide

def uniformAxis : Vec3 Rat :=
  { x := -1, y := 1, z := 0 }

def uniformKernel : KernelLineWitness where
  crossFactor := { m00 := (-7/8), m01 := 0, m02 := (-1/2), m10 := (-7/8), m11 := 0, m12 := (-1/2), m20 := 1, m21 := 0, m22 := (-7/8) }


def rank000000000 : Fin numPairWords :=
  ⟨0, by decide⟩

def wordRank000000000 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000000_get00_num :
    wordRank000000000.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000000_get00_mk (h : 0 < 13) :
    wordRank000000000.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000000_get01_num :
    wordRank000000000.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000000_get01_mk (h : 1 < 13) :
    wordRank000000000.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000000_get02_num :
    wordRank000000000.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000000_get02_mk (h : 2 < 13) :
    wordRank000000000.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000000_get03_num :
    wordRank000000000.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000000_get03_mk (h : 3 < 13) :
    wordRank000000000.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000000_get04_num :
    wordRank000000000.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000000_get04_mk (h : 4 < 13) :
    wordRank000000000.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000000_get05_num :
    wordRank000000000.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000000_get05_mk (h : 5 < 13) :
    wordRank000000000.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000000_get06_num :
    wordRank000000000.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000000_get06_mk (h : 6 < 13) :
    wordRank000000000.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000000_get07_num :
    wordRank000000000.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000000_get07_mk (h : 7 < 13) :
    wordRank000000000.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000000_get08_num :
    wordRank000000000.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000000_get08_mk (h : 8 < 13) :
    wordRank000000000.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000000_get09_num :
    wordRank000000000.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000000_get09_mk (h : 9 < 13) :
    wordRank000000000.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000000_get10_num :
    wordRank000000000.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000000_get10_mk (h : 10 < 13) :
    wordRank000000000.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000000_get11_num :
    wordRank000000000.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000000_get11_mk (h : 11 < 13) :
    wordRank000000000.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000000_get12_num :
    wordRank000000000.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000000_get12_mk (h : 12 < 13) :
    wordRank000000000.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000000000_rank :
    rankPairWord? wordRank000000000 = some rank000000000 := by
  decide

theorem rank000000000_unrank :
    unrankPairWord rank000000000 = wordRank000000000 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000000000 rank000000000).mp
    rank000000000_rank).symm

theorem rank000000000_totalLinear :
    totalLinearOfPairWord wordRank000000000 = { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000000001 : Fin numPairWords :=
  ⟨1, by decide⟩

def wordRank000000001 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000001_get00_num :
    wordRank000000001.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000001_get00_mk (h : 0 < 13) :
    wordRank000000001.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000001_get01_num :
    wordRank000000001.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000001_get01_mk (h : 1 < 13) :
    wordRank000000001.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000001_get02_num :
    wordRank000000001.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000001_get02_mk (h : 2 < 13) :
    wordRank000000001.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000001_get03_num :
    wordRank000000001.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000001_get03_mk (h : 3 < 13) :
    wordRank000000001.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000001_get04_num :
    wordRank000000001.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000001_get04_mk (h : 4 < 13) :
    wordRank000000001.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000001_get05_num :
    wordRank000000001.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000001_get05_mk (h : 5 < 13) :
    wordRank000000001.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000001_get06_num :
    wordRank000000001.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000001_get06_mk (h : 6 < 13) :
    wordRank000000001.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000001_get07_num :
    wordRank000000001.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000001_get07_mk (h : 7 < 13) :
    wordRank000000001.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000001_get08_num :
    wordRank000000001.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000001_get08_mk (h : 8 < 13) :
    wordRank000000001.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000001_get09_num :
    wordRank000000001.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000001_get09_mk (h : 9 < 13) :
    wordRank000000001.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000001_get10_num :
    wordRank000000001.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000001_get10_mk (h : 10 < 13) :
    wordRank000000001.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000001_get11_num :
    wordRank000000001.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000001_get11_mk (h : 11 < 13) :
    wordRank000000001.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000001_get12_num :
    wordRank000000001.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000001_get12_mk (h : 12 < 13) :
    wordRank000000001.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000000001_rank :
    rankPairWord? wordRank000000001 = some rank000000001 := by
  decide

theorem rank000000001_unrank :
    unrankPairWord rank000000001 = wordRank000000001 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000000001 rank000000001).mp
    rank000000001_rank).symm

theorem rank000000001_totalLinear :
    totalLinearOfPairWord wordRank000000001 = { m00 := (49/81), m01 := (-32/81), m02 := (-56/81), m10 := (-32/81), m11 := (49/81), m12 := (-56/81), m20 := (56/81), m21 := (56/81), m22 := (17/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000000002 : Fin numPairWords :=
  ⟨2, by decide⟩

def wordRank000000002 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000000002_get00_num :
    wordRank000000002.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000002_get00_mk (h : 0 < 13) :
    wordRank000000002.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000002_get01_num :
    wordRank000000002.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000002_get01_mk (h : 1 < 13) :
    wordRank000000002.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000002_get02_num :
    wordRank000000002.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000002_get02_mk (h : 2 < 13) :
    wordRank000000002.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000002_get03_num :
    wordRank000000002.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000002_get03_mk (h : 3 < 13) :
    wordRank000000002.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000002_get04_num :
    wordRank000000002.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000002_get04_mk (h : 4 < 13) :
    wordRank000000002.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000002_get05_num :
    wordRank000000002.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000002_get05_mk (h : 5 < 13) :
    wordRank000000002.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000002_get06_num :
    wordRank000000002.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000002_get06_mk (h : 6 < 13) :
    wordRank000000002.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000002_get07_num :
    wordRank000000002.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000002_get07_mk (h : 7 < 13) :
    wordRank000000002.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000002_get08_num :
    wordRank000000002.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000002_get08_mk (h : 8 < 13) :
    wordRank000000002.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000002_get09_num :
    wordRank000000002.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000002_get09_mk (h : 9 < 13) :
    wordRank000000002.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000002_get10_num :
    wordRank000000002.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000002_get10_mk (h : 10 < 13) :
    wordRank000000002.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000002_get11_num :
    wordRank000000002.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000002_get11_mk (h : 11 < 13) :
    wordRank000000002.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000002_get12_num :
    wordRank000000002.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000002_get12_mk (h : 12 < 13) :
    wordRank000000002.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000000002_rank :
    rankPairWord? wordRank000000002 = some rank000000002 := by
  decide

theorem rank000000002_unrank :
    unrankPairWord rank000000002 = wordRank000000002 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000000002 rank000000002).mp
    rank000000002_rank).symm

theorem rank000000002_totalLinear :
    totalLinearOfPairWord wordRank000000002 = { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num



theorem rank000000001_uniformKernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000001)
      uniformAxis uniformKernel = true := by
  rw [rank000000001_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, uniformAxis,
    uniformKernel]

theorem rank000000001_uniformAxisZero :
    AxisDotZeroAtWord wordRank000000001 uniformAxis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000000001_get00_num, wordRank000000001_get01_num, wordRank000000001_get02_num, wordRank000000001_get03_num, wordRank000000001_get04_num, wordRank000000001_get05_num, wordRank000000001_get06_num, wordRank000000001_get07_num, wordRank000000001_get08_num, wordRank000000001_get09_num, wordRank000000001_get10_num, wordRank000000001_get11_num, wordRank000000001_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, uniformAxis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


theorem uniformPrefix_covers :
    Cuboctahedron.Generated.Coverage.PrefixRankInterval
      uniformPairPrefix 0 3 := by
  intro raw hlo hhi hlt
  have hRaw : raw = 0 ∨ raw = 1 ∨ raw = 2 := by omega
  rcases hRaw with hRaw | hRaw1 | hRaw2
  · subst raw
    have hRank :
        (⟨0, hlt⟩ : Fin numPairWords) = rank000000000 := by
      ext
      rfl
    rw [hRank, rank000000000_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨1, hlt⟩ : Fin numPairWords) = rank000000001 := by
      ext
      rfl
    rw [hRank, rank000000001_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2, hlt⟩ : Fin numPairWords) = rank000000002 := by
      ext
      rfl
    rw [hRank, rank000000002_unrank]
    intro i
    fin_cases i <;> decide


theorem uniformKernel_sound
    (raw : Nat) (hlo : 0 <= raw)
    (hhi : raw < 3)
    (hlt : raw < numPairWords)
    (_hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix uniformPairPrefix
        (unrankPairWord ⟨raw, hlt⟩))
    (hM :
      totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩) ≠
        (matId : Mat3 Rat)) :
    checkKernelLineWitness
      (totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩))
      uniformAxis uniformKernel = true := by
  have hRaw : raw = 0 ∨ raw = 1 ∨ raw = 2 := by omega
  rcases hRaw with hRaw | hRaw1 | hRaw2
  · subst raw
    have hRank :
        (⟨0, hlt⟩ : Fin numPairWords) = rank000000000 := by
      ext
      rfl
    rw [hRank, rank000000000_unrank] at hM
    exfalso
    apply hM
    rw [rank000000000_totalLinear]
    norm_num [matId]
  · subst raw
    have hRank :
        (⟨1, hlt⟩ : Fin numPairWords) = rank000000001 := by
      ext
      rfl
    rw [hRank, rank000000001_unrank]
    exact rank000000001_uniformKernelCheck
  · subst raw
    have hRank :
        (⟨2, hlt⟩ : Fin numPairWords) = rank000000002 := by
      ext
      rfl
    rw [hRank, rank000000002_unrank] at hM
    exfalso
    apply hM
    rw [rank000000002_totalLinear]
    norm_num [matId]

theorem uniformAxisZero_sound
    (raw : Nat) (hlo : 0 <= raw)
    (hhi : raw < 3)
    (hlt : raw < numPairWords)
    (_hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix uniformPairPrefix
        (unrankPairWord ⟨raw, hlt⟩))
    (hM :
      totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩) ≠
        (matId : Mat3 Rat)) :
    AxisDotZeroAtWord (unrankPairWord ⟨raw, hlt⟩) uniformAxis
      (3 : WordIndex) := by
  have hRaw : raw = 0 ∨ raw = 1 ∨ raw = 2 := by omega
  rcases hRaw with hRaw | hRaw1 | hRaw2
  · subst raw
    have hRank :
        (⟨0, hlt⟩ : Fin numPairWords) = rank000000000 := by
      ext
      rfl
    rw [hRank, rank000000000_unrank] at hM
    exfalso
    apply hM
    rw [rank000000000_totalLinear]
    norm_num [matId]
  · subst raw
    have hRank :
        (⟨1, hlt⟩ : Fin numPairWords) = rank000000001 := by
      ext
      rfl
    rw [hRank, rank000000001_unrank]
    exact rank000000001_uniformAxisZero
  · subst raw
    have hRank :
        (⟨2, hlt⟩ : Fin numPairWords) = rank000000002 := by
      ext
      rfl
    rw [hRank, rank000000002_unrank] at hM
    exfalso
    apply hM
    rw [rank000000002_totalLinear]
    norm_num [matId]

def uniformEvidence :
    Cuboctahedron.Generated.NonIdentity.PrefixPruning.UniformBadDirectionPrefixCert
      0 3 where
  pairPrefix := uniformPairPrefix
  prefix_covers := uniformPrefix_covers
  axis := uniformAxis
  kernel := uniformKernel
  impact := (3 : WordIndex)
  kernel_sound := uniformKernel_sound
  axis_zero_sound := uniformAxisZero_sound

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat
      0 3 :=
  uniformEvidence.sound

end Cuboctahedron.Generated.PrefixPruningPrototype.UniformBadDirection000000000_000000003
