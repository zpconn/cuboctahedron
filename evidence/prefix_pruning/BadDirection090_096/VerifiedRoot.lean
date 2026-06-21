import Cuboctahedron.Generated.NonIdentity.PrefixPruning

/-!
Generated semantic prefix-pruning prototype.

This root proves a depth-9 bad-direction prefix interval covering six pair-word
ranks.  It exports one interval theorem and does not contain per-rank
rank-certificate literals.
-/

namespace Cuboctahedron.Generated.PrefixPruningPrototype.BadDirection090_096

set_option maxHeartbeats 2200000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def badDirectionPairPrefix : Cuboctahedron.Generated.Coverage.PairPrefix where
  entries := [PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d11m]
  length_le := by decide


def rank000000090 : Fin numPairWords :=
  ⟨90, by decide⟩

def wordRank000000090 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000090_get00_num :
    wordRank000000090.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000090_get00_mk (h : 0 < 13) :
    wordRank000000090.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000090_get01_num :
    wordRank000000090.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000090_get01_mk (h : 1 < 13) :
    wordRank000000090.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000090_get02_num :
    wordRank000000090.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000090_get02_mk (h : 2 < 13) :
    wordRank000000090.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000090_get03_num :
    wordRank000000090.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000090_get03_mk (h : 3 < 13) :
    wordRank000000090.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000090_get04_num :
    wordRank000000090.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000090_get04_mk (h : 4 < 13) :
    wordRank000000090.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000090_get05_num :
    wordRank000000090.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000090_get05_mk (h : 5 < 13) :
    wordRank000000090.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000090_get06_num :
    wordRank000000090.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000090_get06_mk (h : 6 < 13) :
    wordRank000000090.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000090_get07_num :
    wordRank000000090.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000090_get07_mk (h : 7 < 13) :
    wordRank000000090.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000090_get08_num :
    wordRank000000090.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000090_get08_mk (h : 8 < 13) :
    wordRank000000090.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000090_get09_num :
    wordRank000000090.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000090_get09_mk (h : 9 < 13) :
    wordRank000000090.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000090_get10_num :
    wordRank000000090.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000090_get10_mk (h : 10 < 13) :
    wordRank000000090.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000090_get11_num :
    wordRank000000090.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000090_get11_mk (h : 11 < 13) :
    wordRank000000090.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000090_get12_num :
    wordRank000000090.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000090_get12_mk (h : 12 < 13) :
    wordRank000000090.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000000090_rank :
    rankPairWord? wordRank000000090 = some rank000000090 := by
  decide

theorem rank000000090_unrank :
    unrankPairWord rank000000090 = wordRank000000090 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000000090 rank000000090).mp
    rank000000090_rank).symm

theorem rank000000090_totalLinear :
    totalLinearOfPairWord wordRank000000090 = { m00 := (49/81), m01 := (32/81), m02 := (-56/81), m10 := (32/81), m11 := (49/81), m12 := (56/81), m20 := (56/81), m21 := (-56/81), m22 := (17/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

def rank000000090_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000000090_kernel : KernelLineWitness where
  crossFactor := { m00 := (7/8), m01 := 0, m02 := (1/2), m10 := (-7/8), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (7/8) }

theorem rank000000090_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000090)
      rank000000090_axis rank000000090_kernel = true := by
  rw [rank000000090_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000000090_axis,
    rank000000090_kernel]

theorem rank000000090_axisZero :
    AxisDotZeroAtWord wordRank000000090 rank000000090_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000000090_get00_num, wordRank000000090_get01_num, wordRank000000090_get02_num, wordRank000000090_get03_num, wordRank000000090_get04_num, wordRank000000090_get05_num, wordRank000000090_get06_num, wordRank000000090_get07_num, wordRank000000090_get08_num, wordRank000000090_get09_num, wordRank000000090_get10_num, wordRank000000090_get11_num, wordRank000000090_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000000090_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000000091 : Fin numPairWords :=
  ⟨91, by decide⟩

def wordRank000000091 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000091_get00_num :
    wordRank000000091.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000091_get00_mk (h : 0 < 13) :
    wordRank000000091.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000091_get01_num :
    wordRank000000091.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000091_get01_mk (h : 1 < 13) :
    wordRank000000091.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000091_get02_num :
    wordRank000000091.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000091_get02_mk (h : 2 < 13) :
    wordRank000000091.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000091_get03_num :
    wordRank000000091.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000091_get03_mk (h : 3 < 13) :
    wordRank000000091.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000091_get04_num :
    wordRank000000091.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000091_get04_mk (h : 4 < 13) :
    wordRank000000091.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000091_get05_num :
    wordRank000000091.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000091_get05_mk (h : 5 < 13) :
    wordRank000000091.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000091_get06_num :
    wordRank000000091.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000091_get06_mk (h : 6 < 13) :
    wordRank000000091.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000091_get07_num :
    wordRank000000091.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000091_get07_mk (h : 7 < 13) :
    wordRank000000091.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000091_get08_num :
    wordRank000000091.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000091_get08_mk (h : 8 < 13) :
    wordRank000000091.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000091_get09_num :
    wordRank000000091.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000091_get09_mk (h : 9 < 13) :
    wordRank000000091.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000091_get10_num :
    wordRank000000091.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000091_get10_mk (h : 10 < 13) :
    wordRank000000091.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000091_get11_num :
    wordRank000000091.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000091_get11_mk (h : 11 < 13) :
    wordRank000000091.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000091_get12_num :
    wordRank000000091.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000091_get12_mk (h : 12 < 13) :
    wordRank000000091.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000000091_rank :
    rankPairWord? wordRank000000091 = some rank000000091 := by
  decide

theorem rank000000091_unrank :
    unrankPairWord rank000000091 = wordRank000000091 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000000091 rank000000091).mp
    rank000000091_rank).symm

theorem rank000000091_totalLinear :
    totalLinearOfPairWord wordRank000000091 = { m00 := (-1759/6561), m01 := (-3136/6561), m02 := (-5488/6561), m10 := (3136/6561), m11 := (4513/6561), m12 := (-3584/6561), m20 := (5488/6561), m21 := (-3584/6561), m22 := (289/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

def rank000000091_axis : Vec3 Rat :=
  { x := 0, y := (-7/4), z := 1 }

def rank000000091_kernel : KernelLineWitness where
  crossFactor := { m00 := (49/64), m01 := (65/32), m02 := 0, m10 := (-1/2), m11 := (49/64), m12 := 0, m20 := (-7/8), m21 := (343/256), m22 := 0 }

theorem rank000000091_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000091)
      rank000000091_axis rank000000091_kernel = true := by
  rw [rank000000091_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000000091_axis,
    rank000000091_kernel]

theorem rank000000091_axisZero :
    AxisDotZeroAtWord wordRank000000091 rank000000091_axis
      (0 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000000091_get00_num, wordRank000000091_get01_num, wordRank000000091_get02_num, wordRank000000091_get03_num, wordRank000000091_get04_num, wordRank000000091_get05_num, wordRank000000091_get06_num, wordRank000000091_get07_num, wordRank000000091_get08_num, wordRank000000091_get09_num, wordRank000000091_get10_num, wordRank000000091_get11_num, wordRank000000091_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000000091_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000000092 : Fin numPairWords :=
  ⟨92, by decide⟩

def wordRank000000092 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000000092_get00_num :
    wordRank000000092.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000092_get00_mk (h : 0 < 13) :
    wordRank000000092.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000092_get01_num :
    wordRank000000092.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000092_get01_mk (h : 1 < 13) :
    wordRank000000092.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000092_get02_num :
    wordRank000000092.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000092_get02_mk (h : 2 < 13) :
    wordRank000000092.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000092_get03_num :
    wordRank000000092.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000092_get03_mk (h : 3 < 13) :
    wordRank000000092.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000092_get04_num :
    wordRank000000092.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000092_get04_mk (h : 4 < 13) :
    wordRank000000092.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000092_get05_num :
    wordRank000000092.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000092_get05_mk (h : 5 < 13) :
    wordRank000000092.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000092_get06_num :
    wordRank000000092.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000092_get06_mk (h : 6 < 13) :
    wordRank000000092.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000092_get07_num :
    wordRank000000092.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000092_get07_mk (h : 7 < 13) :
    wordRank000000092.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000092_get08_num :
    wordRank000000092.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000092_get08_mk (h : 8 < 13) :
    wordRank000000092.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000092_get09_num :
    wordRank000000092.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000092_get09_mk (h : 9 < 13) :
    wordRank000000092.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000092_get10_num :
    wordRank000000092.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000092_get10_mk (h : 10 < 13) :
    wordRank000000092.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000092_get11_num :
    wordRank000000092.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000092_get11_mk (h : 11 < 13) :
    wordRank000000092.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000092_get12_num :
    wordRank000000092.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000092_get12_mk (h : 12 < 13) :
    wordRank000000092.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000000092_rank :
    rankPairWord? wordRank000000092 = some rank000000092 := by
  decide

theorem rank000000092_unrank :
    unrankPairWord rank000000092 = wordRank000000092 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000000092 rank000000092).mp
    rank000000092_rank).symm

theorem rank000000092_totalLinear :
    totalLinearOfPairWord wordRank000000092 = { m00 := (49/81), m01 := (32/81), m02 := (-56/81), m10 := (32/81), m11 := (49/81), m12 := (56/81), m20 := (56/81), m21 := (-56/81), m22 := (17/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

def rank000000092_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000000092_kernel : KernelLineWitness where
  crossFactor := { m00 := (7/8), m01 := 0, m02 := (1/2), m10 := (-7/8), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (7/8) }

theorem rank000000092_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000092)
      rank000000092_axis rank000000092_kernel = true := by
  rw [rank000000092_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000000092_axis,
    rank000000092_kernel]

theorem rank000000092_axisZero :
    AxisDotZeroAtWord wordRank000000092 rank000000092_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000000092_get00_num, wordRank000000092_get01_num, wordRank000000092_get02_num, wordRank000000092_get03_num, wordRank000000092_get04_num, wordRank000000092_get05_num, wordRank000000092_get06_num, wordRank000000092_get07_num, wordRank000000092_get08_num, wordRank000000092_get09_num, wordRank000000092_get10_num, wordRank000000092_get11_num, wordRank000000092_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000000092_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000000093 : Fin numPairWords :=
  ⟨93, by decide⟩

def wordRank000000093 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000093_get00_num :
    wordRank000000093.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000093_get00_mk (h : 0 < 13) :
    wordRank000000093.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000093_get01_num :
    wordRank000000093.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000093_get01_mk (h : 1 < 13) :
    wordRank000000093.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000093_get02_num :
    wordRank000000093.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000093_get02_mk (h : 2 < 13) :
    wordRank000000093.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000093_get03_num :
    wordRank000000093.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000093_get03_mk (h : 3 < 13) :
    wordRank000000093.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000093_get04_num :
    wordRank000000093.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000093_get04_mk (h : 4 < 13) :
    wordRank000000093.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000093_get05_num :
    wordRank000000093.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000093_get05_mk (h : 5 < 13) :
    wordRank000000093.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000093_get06_num :
    wordRank000000093.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000093_get06_mk (h : 6 < 13) :
    wordRank000000093.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000093_get07_num :
    wordRank000000093.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000093_get07_mk (h : 7 < 13) :
    wordRank000000093.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000093_get08_num :
    wordRank000000093.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000093_get08_mk (h : 8 < 13) :
    wordRank000000093.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000093_get09_num :
    wordRank000000093.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000093_get09_mk (h : 9 < 13) :
    wordRank000000093.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000093_get10_num :
    wordRank000000093.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000093_get10_mk (h : 10 < 13) :
    wordRank000000093.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000093_get11_num :
    wordRank000000093.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000093_get11_mk (h : 11 < 13) :
    wordRank000000093.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000093_get12_num :
    wordRank000000093.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000093_get12_mk (h : 12 < 13) :
    wordRank000000093.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000000093_rank :
    rankPairWord? wordRank000000093 = some rank000000093 := by
  decide

theorem rank000000093_unrank :
    unrankPairWord rank000000093 = wordRank000000093 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000000093 rank000000093).mp
    rank000000093_rank).symm

theorem rank000000093_totalLinear :
    totalLinearOfPairWord wordRank000000093 = { m00 := (49/81), m01 := (32/81), m02 := (-56/81), m10 := (32/81), m11 := (49/81), m12 := (56/81), m20 := (56/81), m21 := (-56/81), m22 := (17/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

def rank000000093_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000000093_kernel : KernelLineWitness where
  crossFactor := { m00 := (7/8), m01 := 0, m02 := (1/2), m10 := (-7/8), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (7/8) }

theorem rank000000093_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000093)
      rank000000093_axis rank000000093_kernel = true := by
  rw [rank000000093_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000000093_axis,
    rank000000093_kernel]

theorem rank000000093_axisZero :
    AxisDotZeroAtWord wordRank000000093 rank000000093_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000000093_get00_num, wordRank000000093_get01_num, wordRank000000093_get02_num, wordRank000000093_get03_num, wordRank000000093_get04_num, wordRank000000093_get05_num, wordRank000000093_get06_num, wordRank000000093_get07_num, wordRank000000093_get08_num, wordRank000000093_get09_num, wordRank000000093_get10_num, wordRank000000093_get11_num, wordRank000000093_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000000093_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000000094 : Fin numPairWords :=
  ⟨94, by decide⟩

def wordRank000000094 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000000094_get00_num :
    wordRank000000094.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000094_get00_mk (h : 0 < 13) :
    wordRank000000094.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000094_get01_num :
    wordRank000000094.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000094_get01_mk (h : 1 < 13) :
    wordRank000000094.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000094_get02_num :
    wordRank000000094.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000094_get02_mk (h : 2 < 13) :
    wordRank000000094.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000094_get03_num :
    wordRank000000094.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000094_get03_mk (h : 3 < 13) :
    wordRank000000094.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000094_get04_num :
    wordRank000000094.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000094_get04_mk (h : 4 < 13) :
    wordRank000000094.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000094_get05_num :
    wordRank000000094.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000094_get05_mk (h : 5 < 13) :
    wordRank000000094.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000094_get06_num :
    wordRank000000094.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000094_get06_mk (h : 6 < 13) :
    wordRank000000094.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000094_get07_num :
    wordRank000000094.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000094_get07_mk (h : 7 < 13) :
    wordRank000000094.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000094_get08_num :
    wordRank000000094.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000094_get08_mk (h : 8 < 13) :
    wordRank000000094.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000094_get09_num :
    wordRank000000094.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000094_get09_mk (h : 9 < 13) :
    wordRank000000094.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000094_get10_num :
    wordRank000000094.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000094_get10_mk (h : 10 < 13) :
    wordRank000000094.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000094_get11_num :
    wordRank000000094.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000094_get11_mk (h : 11 < 13) :
    wordRank000000094.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000094_get12_num :
    wordRank000000094.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000094_get12_mk (h : 12 < 13) :
    wordRank000000094.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000000094_rank :
    rankPairWord? wordRank000000094 = some rank000000094 := by
  decide

theorem rank000000094_unrank :
    unrankPairWord rank000000094 = wordRank000000094 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000000094 rank000000094).mp
    rank000000094_rank).symm

theorem rank000000094_totalLinear :
    totalLinearOfPairWord wordRank000000094 = { m00 := (4513/6561), m01 := (3136/6561), m02 := (3584/6561), m10 := (-3136/6561), m11 := (-1759/6561), m12 := (5488/6561), m20 := (3584/6561), m21 := (-5488/6561), m22 := (289/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

def rank000000094_axis : Vec3 Rat :=
  { x := (-7/4), y := 0, z := -1 }

def rank000000094_kernel : KernelLineWitness where
  crossFactor := { m00 := (49/64), m01 := (-1/2), m02 := 0, m10 := (65/32), m11 := (49/64), m12 := 0, m20 := (-343/256), m21 := (7/8), m22 := 0 }

theorem rank000000094_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000094)
      rank000000094_axis rank000000094_kernel = true := by
  rw [rank000000094_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000000094_axis,
    rank000000094_kernel]

theorem rank000000094_axisZero :
    AxisDotZeroAtWord wordRank000000094 rank000000094_axis
      (1 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000000094_get00_num, wordRank000000094_get01_num, wordRank000000094_get02_num, wordRank000000094_get03_num, wordRank000000094_get04_num, wordRank000000094_get05_num, wordRank000000094_get06_num, wordRank000000094_get07_num, wordRank000000094_get08_num, wordRank000000094_get09_num, wordRank000000094_get10_num, wordRank000000094_get11_num, wordRank000000094_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000000094_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000000095 : Fin numPairWords :=
  ⟨95, by decide⟩

def wordRank000000095 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000000095_get00_num :
    wordRank000000095.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000095_get00_mk (h : 0 < 13) :
    wordRank000000095.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000095_get01_num :
    wordRank000000095.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000095_get01_mk (h : 1 < 13) :
    wordRank000000095.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000095_get02_num :
    wordRank000000095.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000095_get02_mk (h : 2 < 13) :
    wordRank000000095.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000095_get03_num :
    wordRank000000095.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000095_get03_mk (h : 3 < 13) :
    wordRank000000095.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000095_get04_num :
    wordRank000000095.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000095_get04_mk (h : 4 < 13) :
    wordRank000000095.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000095_get05_num :
    wordRank000000095.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000095_get05_mk (h : 5 < 13) :
    wordRank000000095.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000095_get06_num :
    wordRank000000095.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000095_get06_mk (h : 6 < 13) :
    wordRank000000095.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000095_get07_num :
    wordRank000000095.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000095_get07_mk (h : 7 < 13) :
    wordRank000000095.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000095_get08_num :
    wordRank000000095.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000095_get08_mk (h : 8 < 13) :
    wordRank000000095.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000095_get09_num :
    wordRank000000095.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000095_get09_mk (h : 9 < 13) :
    wordRank000000095.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000095_get10_num :
    wordRank000000095.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000095_get10_mk (h : 10 < 13) :
    wordRank000000095.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000095_get11_num :
    wordRank000000095.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000095_get11_mk (h : 11 < 13) :
    wordRank000000095.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000095_get12_num :
    wordRank000000095.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000095_get12_mk (h : 12 < 13) :
    wordRank000000095.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000000095_rank :
    rankPairWord? wordRank000000095 = some rank000000095 := by
  decide

theorem rank000000095_unrank :
    unrankPairWord rank000000095 = wordRank000000095 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000000095 rank000000095).mp
    rank000000095_rank).symm

theorem rank000000095_totalLinear :
    totalLinearOfPairWord wordRank000000095 = { m00 := (49/81), m01 := (32/81), m02 := (-56/81), m10 := (32/81), m11 := (49/81), m12 := (56/81), m20 := (56/81), m21 := (-56/81), m22 := (17/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

def rank000000095_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000000095_kernel : KernelLineWitness where
  crossFactor := { m00 := (7/8), m01 := 0, m02 := (1/2), m10 := (-7/8), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (7/8) }

theorem rank000000095_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000095)
      rank000000095_axis rank000000095_kernel = true := by
  rw [rank000000095_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000000095_axis,
    rank000000095_kernel]

theorem rank000000095_axisZero :
    AxisDotZeroAtWord wordRank000000095 rank000000095_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000000095_get00_num, wordRank000000095_get01_num, wordRank000000095_get02_num, wordRank000000095_get03_num, wordRank000000095_get04_num, wordRank000000095_get05_num, wordRank000000095_get06_num, wordRank000000095_get07_num, wordRank000000095_get08_num, wordRank000000095_get09_num, wordRank000000095_get10_num, wordRank000000095_get11_num, wordRank000000095_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000000095_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


theorem badDirectionPrefix_covers :
    Cuboctahedron.Generated.Coverage.PrefixRankInterval
      badDirectionPairPrefix 90 96 := by
  intro raw hlo hhi hlt
  have hRaw : raw = 90 ∨ raw = 91 ∨ raw = 92 ∨ raw = 93 ∨ raw = 94 ∨ raw = 95 := by omega
  rcases hRaw with hRaw | hRaw91 | hRaw92 | hRaw93 | hRaw94 | hRaw95
  · subst raw
    have hRank :
        (⟨90, hlt⟩ : Fin numPairWords) = rank000000090 := by
      ext
      rfl
    rw [hRank, rank000000090_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨91, hlt⟩ : Fin numPairWords) = rank000000091 := by
      ext
      rfl
    rw [hRank, rank000000091_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨92, hlt⟩ : Fin numPairWords) = rank000000092 := by
      ext
      rfl
    rw [hRank, rank000000092_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨93, hlt⟩ : Fin numPairWords) = rank000000093 := by
      ext
      rfl
    rw [hRank, rank000000093_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨94, hlt⟩ : Fin numPairWords) = rank000000094 := by
      ext
      rfl
    rw [hRank, rank000000094_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨95, hlt⟩ : Fin numPairWords) = rank000000095 := by
      ext
      rfl
    rw [hRank, rank000000095_unrank]
    intro i
    fin_cases i <;> decide


theorem badDirection_sound
    (raw : Nat) (hlo : 90 <= raw)
    (hhi : raw < 96)
    (hlt : raw < numPairWords)
    (_hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix badDirectionPairPrefix
        (unrankPairWord ⟨raw, hlt⟩))
    (hM :
      totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩) ≠
        (matId : Mat3 Rat)) :
    exists axis : Vec3 Rat, exists kernel : KernelLineWitness,
      exists i : WordIndex,
        checkKernelLineWitness
          (totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩))
          axis kernel = true /\
        AxisDotZeroAtWord (unrankPairWord ⟨raw, hlt⟩) axis i := by
  have hRaw : raw = 90 ∨ raw = 91 ∨ raw = 92 ∨ raw = 93 ∨ raw = 94 ∨ raw = 95 := by omega
  rcases hRaw with hRaw | hRaw91 | hRaw92 | hRaw93 | hRaw94 | hRaw95
  · subst raw
    have hRank :
        (⟨90, hlt⟩ : Fin numPairWords) = rank000000090 := by
      ext
      rfl
    rw [hRank, rank000000090_unrank] at hM ⊢
    refine ⟨rank000000090_axis, rank000000090_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000000090_kernelCheck
    · exact rank000000090_axisZero
  · subst raw
    have hRank :
        (⟨91, hlt⟩ : Fin numPairWords) = rank000000091 := by
      ext
      rfl
    rw [hRank, rank000000091_unrank] at hM ⊢
    refine ⟨rank000000091_axis, rank000000091_kernel,
      (0 : WordIndex), ?_, ?_⟩
    · exact rank000000091_kernelCheck
    · exact rank000000091_axisZero
  · subst raw
    have hRank :
        (⟨92, hlt⟩ : Fin numPairWords) = rank000000092 := by
      ext
      rfl
    rw [hRank, rank000000092_unrank] at hM ⊢
    refine ⟨rank000000092_axis, rank000000092_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000000092_kernelCheck
    · exact rank000000092_axisZero
  · subst raw
    have hRank :
        (⟨93, hlt⟩ : Fin numPairWords) = rank000000093 := by
      ext
      rfl
    rw [hRank, rank000000093_unrank] at hM ⊢
    refine ⟨rank000000093_axis, rank000000093_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000000093_kernelCheck
    · exact rank000000093_axisZero
  · subst raw
    have hRank :
        (⟨94, hlt⟩ : Fin numPairWords) = rank000000094 := by
      ext
      rfl
    rw [hRank, rank000000094_unrank] at hM ⊢
    refine ⟨rank000000094_axis, rank000000094_kernel,
      (1 : WordIndex), ?_, ?_⟩
    · exact rank000000094_kernelCheck
    · exact rank000000094_axisZero
  · subst raw
    have hRank :
        (⟨95, hlt⟩ : Fin numPairWords) = rank000000095 := by
      ext
      rfl
    rw [hRank, rank000000095_unrank] at hM ⊢
    refine ⟨rank000000095_axis, rank000000095_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000000095_kernelCheck
    · exact rank000000095_axisZero

def badDirectionEvidence :
    Cuboctahedron.Generated.NonIdentity.PrefixPruning.BadDirectionPrefixCert
      90 96 where
  pairPrefix := badDirectionPairPrefix
  prefix_covers := badDirectionPrefix_covers
  direction_sound := badDirection_sound

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat
      90 96 :=
  badDirectionEvidence.sound

end Cuboctahedron.Generated.PrefixPruningPrototype.BadDirection090_096
