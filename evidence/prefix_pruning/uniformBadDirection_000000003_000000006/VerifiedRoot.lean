import Cuboctahedron.Generated.NonIdentity.PrefixPruning

/-!
Generated uniform bad-direction prefix family.

The axis, kernel witness, and zero-impact witness are shared by every
non-identity rank in this bounded prefix interval.
-/

namespace Cuboctahedron.Generated.PrefixPruningPrototype.UniformBadDirection000000003_000000006

set_option maxHeartbeats 2200000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def uniformPairPrefix : Cuboctahedron.Generated.Coverage.PairPrefix where
  entries := [PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11]
  length_le := by decide

def uniformAxis : Vec3 Rat :=
  { x := -1, y := 1, z := 0 }

def uniformKernel : KernelLineWitness where
  crossFactor := { m00 := (7/8), m01 := 0, m02 := (-1/2), m10 := (7/8), m11 := 0, m12 := (-1/2), m20 := 1, m21 := 0, m22 := (7/8) }


def rank000000003 : Fin numPairWords :=
  ⟨3, by decide⟩

def wordRank000000003 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000003_get00_num :
    wordRank000000003.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000003_get00_mk (h : 0 < 13) :
    wordRank000000003.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000003_get01_num :
    wordRank000000003.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000003_get01_mk (h : 1 < 13) :
    wordRank000000003.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000003_get02_num :
    wordRank000000003.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000003_get02_mk (h : 2 < 13) :
    wordRank000000003.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000003_get03_num :
    wordRank000000003.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000003_get03_mk (h : 3 < 13) :
    wordRank000000003.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000003_get04_num :
    wordRank000000003.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000003_get04_mk (h : 4 < 13) :
    wordRank000000003.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000003_get05_num :
    wordRank000000003.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000003_get05_mk (h : 5 < 13) :
    wordRank000000003.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000003_get06_num :
    wordRank000000003.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000003_get06_mk (h : 6 < 13) :
    wordRank000000003.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000003_get07_num :
    wordRank000000003.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000003_get07_mk (h : 7 < 13) :
    wordRank000000003.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000003_get08_num :
    wordRank000000003.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000003_get08_mk (h : 8 < 13) :
    wordRank000000003.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000003_get09_num :
    wordRank000000003.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000003_get09_mk (h : 9 < 13) :
    wordRank000000003.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000003_get10_num :
    wordRank000000003.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000003_get10_mk (h : 10 < 13) :
    wordRank000000003.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000003_get11_num :
    wordRank000000003.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000003_get11_mk (h : 11 < 13) :
    wordRank000000003.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000003_get12_num :
    wordRank000000003.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000003_get12_mk (h : 12 < 13) :
    wordRank000000003.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000000003_rank :
    rankPairWord? wordRank000000003 = some rank000000003 := by
  decide

theorem rank000000003_unrank :
    unrankPairWord rank000000003 = wordRank000000003 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000000003 rank000000003).mp
    rank000000003_rank).symm

theorem rank000000003_totalLinear :
    totalLinearOfPairWord wordRank000000003 = { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000000004 : Fin numPairWords :=
  ⟨4, by decide⟩

def wordRank000000004 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000000004_get00_num :
    wordRank000000004.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000004_get00_mk (h : 0 < 13) :
    wordRank000000004.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000004_get01_num :
    wordRank000000004.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000004_get01_mk (h : 1 < 13) :
    wordRank000000004.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000004_get02_num :
    wordRank000000004.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000004_get02_mk (h : 2 < 13) :
    wordRank000000004.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000004_get03_num :
    wordRank000000004.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000004_get03_mk (h : 3 < 13) :
    wordRank000000004.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000004_get04_num :
    wordRank000000004.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000004_get04_mk (h : 4 < 13) :
    wordRank000000004.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000004_get05_num :
    wordRank000000004.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000004_get05_mk (h : 5 < 13) :
    wordRank000000004.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000004_get06_num :
    wordRank000000004.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000004_get06_mk (h : 6 < 13) :
    wordRank000000004.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000004_get07_num :
    wordRank000000004.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000004_get07_mk (h : 7 < 13) :
    wordRank000000004.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000004_get08_num :
    wordRank000000004.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000004_get08_mk (h : 8 < 13) :
    wordRank000000004.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000004_get09_num :
    wordRank000000004.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000004_get09_mk (h : 9 < 13) :
    wordRank000000004.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000004_get10_num :
    wordRank000000004.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000004_get10_mk (h : 10 < 13) :
    wordRank000000004.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000004_get11_num :
    wordRank000000004.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000004_get11_mk (h : 11 < 13) :
    wordRank000000004.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000004_get12_num :
    wordRank000000004.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000004_get12_mk (h : 12 < 13) :
    wordRank000000004.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000000004_rank :
    rankPairWord? wordRank000000004 = some rank000000004 := by
  decide

theorem rank000000004_unrank :
    unrankPairWord rank000000004 = wordRank000000004 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000000004 rank000000004).mp
    rank000000004_rank).symm

theorem rank000000004_totalLinear :
    totalLinearOfPairWord wordRank000000004 = { m00 := (49/81), m01 := (-32/81), m02 := (56/81), m10 := (-32/81), m11 := (49/81), m12 := (56/81), m20 := (-56/81), m21 := (-56/81), m22 := (17/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000000005 : Fin numPairWords :=
  ⟨5, by decide⟩

def wordRank000000005 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000000005_get00_num :
    wordRank000000005.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000005_get00_mk (h : 0 < 13) :
    wordRank000000005.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000005_get01_num :
    wordRank000000005.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000005_get01_mk (h : 1 < 13) :
    wordRank000000005.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000005_get02_num :
    wordRank000000005.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000005_get02_mk (h : 2 < 13) :
    wordRank000000005.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000005_get03_num :
    wordRank000000005.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000005_get03_mk (h : 3 < 13) :
    wordRank000000005.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000005_get04_num :
    wordRank000000005.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000005_get04_mk (h : 4 < 13) :
    wordRank000000005.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000005_get05_num :
    wordRank000000005.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000005_get05_mk (h : 5 < 13) :
    wordRank000000005.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000005_get06_num :
    wordRank000000005.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000005_get06_mk (h : 6 < 13) :
    wordRank000000005.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000005_get07_num :
    wordRank000000005.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000005_get07_mk (h : 7 < 13) :
    wordRank000000005.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000005_get08_num :
    wordRank000000005.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000005_get08_mk (h : 8 < 13) :
    wordRank000000005.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000005_get09_num :
    wordRank000000005.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000005_get09_mk (h : 9 < 13) :
    wordRank000000005.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000005_get10_num :
    wordRank000000005.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000005_get10_mk (h : 10 < 13) :
    wordRank000000005.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000005_get11_num :
    wordRank000000005.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000005_get11_mk (h : 11 < 13) :
    wordRank000000005.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000005_get12_num :
    wordRank000000005.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000005_get12_mk (h : 12 < 13) :
    wordRank000000005.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000000005_rank :
    rankPairWord? wordRank000000005 = some rank000000005 := by
  decide

theorem rank000000005_unrank :
    unrankPairWord rank000000005 = wordRank000000005 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000000005 rank000000005).mp
    rank000000005_rank).symm

theorem rank000000005_totalLinear :
    totalLinearOfPairWord wordRank000000005 = { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num



theorem rank000000004_uniformKernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000004)
      uniformAxis uniformKernel = true := by
  rw [rank000000004_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, uniformAxis,
    uniformKernel]

theorem rank000000004_uniformAxisZero :
    AxisDotZeroAtWord wordRank000000004 uniformAxis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000000004_get00_num, wordRank000000004_get01_num, wordRank000000004_get02_num, wordRank000000004_get03_num, wordRank000000004_get04_num, wordRank000000004_get05_num, wordRank000000004_get06_num, wordRank000000004_get07_num, wordRank000000004_get08_num, wordRank000000004_get09_num, wordRank000000004_get10_num, wordRank000000004_get11_num, wordRank000000004_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, uniformAxis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


theorem uniformPrefix_covers :
    Cuboctahedron.Generated.Coverage.PrefixRankInterval
      uniformPairPrefix 3 6 := by
  intro raw hlo hhi hlt
  have hRaw : raw = 3 ∨ raw = 4 ∨ raw = 5 := by omega
  rcases hRaw with hRaw | hRaw4 | hRaw5
  · subst raw
    have hRank :
        (⟨3, hlt⟩ : Fin numPairWords) = rank000000003 := by
      ext
      rfl
    rw [hRank, rank000000003_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨4, hlt⟩ : Fin numPairWords) = rank000000004 := by
      ext
      rfl
    rw [hRank, rank000000004_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨5, hlt⟩ : Fin numPairWords) = rank000000005 := by
      ext
      rfl
    rw [hRank, rank000000005_unrank]
    intro i
    fin_cases i <;> decide


theorem uniformKernel_sound
    (raw : Nat) (hlo : 3 <= raw)
    (hhi : raw < 6)
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
  have hRaw : raw = 3 ∨ raw = 4 ∨ raw = 5 := by omega
  rcases hRaw with hRaw | hRaw4 | hRaw5
  · subst raw
    have hRank :
        (⟨3, hlt⟩ : Fin numPairWords) = rank000000003 := by
      ext
      rfl
    rw [hRank, rank000000003_unrank] at hM
    exfalso
    apply hM
    rw [rank000000003_totalLinear]
    norm_num [matId]
  · subst raw
    have hRank :
        (⟨4, hlt⟩ : Fin numPairWords) = rank000000004 := by
      ext
      rfl
    rw [hRank, rank000000004_unrank]
    exact rank000000004_uniformKernelCheck
  · subst raw
    have hRank :
        (⟨5, hlt⟩ : Fin numPairWords) = rank000000005 := by
      ext
      rfl
    rw [hRank, rank000000005_unrank] at hM
    exfalso
    apply hM
    rw [rank000000005_totalLinear]
    norm_num [matId]

theorem uniformAxisZero_sound
    (raw : Nat) (hlo : 3 <= raw)
    (hhi : raw < 6)
    (hlt : raw < numPairWords)
    (_hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix uniformPairPrefix
        (unrankPairWord ⟨raw, hlt⟩))
    (hM :
      totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩) ≠
        (matId : Mat3 Rat)) :
    AxisDotZeroAtWord (unrankPairWord ⟨raw, hlt⟩) uniformAxis
      (3 : WordIndex) := by
  have hRaw : raw = 3 ∨ raw = 4 ∨ raw = 5 := by omega
  rcases hRaw with hRaw | hRaw4 | hRaw5
  · subst raw
    have hRank :
        (⟨3, hlt⟩ : Fin numPairWords) = rank000000003 := by
      ext
      rfl
    rw [hRank, rank000000003_unrank] at hM
    exfalso
    apply hM
    rw [rank000000003_totalLinear]
    norm_num [matId]
  · subst raw
    have hRank :
        (⟨4, hlt⟩ : Fin numPairWords) = rank000000004 := by
      ext
      rfl
    rw [hRank, rank000000004_unrank]
    exact rank000000004_uniformAxisZero
  · subst raw
    have hRank :
        (⟨5, hlt⟩ : Fin numPairWords) = rank000000005 := by
      ext
      rfl
    rw [hRank, rank000000005_unrank] at hM
    exfalso
    apply hM
    rw [rank000000005_totalLinear]
    norm_num [matId]

def uniformEvidence :
    Cuboctahedron.Generated.NonIdentity.PrefixPruning.UniformBadDirectionPrefixCert
      3 6 where
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
      3 6 :=
  uniformEvidence.sound

end Cuboctahedron.Generated.PrefixPruningPrototype.UniformBadDirection000000003_000000006
