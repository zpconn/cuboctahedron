import Cuboctahedron.Generated.NonIdentity.PrefixPruning

/-!
Generated semantic prefix-pruning prototype.

This root proves an automatically discovered bad-direction prefix interval covering 12 pair-word ranks. It exports one interval theorem and does not contain
per-rank rank-certificate literals.
-/

namespace Cuboctahedron.Generated.PrefixPruningPrototype.DiscoveredBadDirection000002778_000002790

set_option maxHeartbeats 2200000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def badDirectionPairPrefix : Cuboctahedron.Generated.Coverage.PairPrefix where
  entries := [PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.dm11, PairId.dm11]
  length_le := by decide


def rank000002778 : Fin numPairWords :=
  ⟨2778, by decide⟩

def wordRank000002778 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000002778_get00_num :
    wordRank000002778.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002778_get00_mk (h : 0 < 13) :
    wordRank000002778.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002778_get01_num :
    wordRank000002778.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002778_get01_mk (h : 1 < 13) :
    wordRank000002778.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002778_get02_num :
    wordRank000002778.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002778_get02_mk (h : 2 < 13) :
    wordRank000002778.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002778_get03_num :
    wordRank000002778.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002778_get03_mk (h : 3 < 13) :
    wordRank000002778.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002778_get04_num :
    wordRank000002778.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002778_get04_mk (h : 4 < 13) :
    wordRank000002778.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002778_get05_num :
    wordRank000002778.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002778_get05_mk (h : 5 < 13) :
    wordRank000002778.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002778_get06_num :
    wordRank000002778.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002778_get06_mk (h : 6 < 13) :
    wordRank000002778.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002778_get07_num :
    wordRank000002778.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002778_get07_mk (h : 7 < 13) :
    wordRank000002778.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002778_get08_num :
    wordRank000002778.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002778_get08_mk (h : 8 < 13) :
    wordRank000002778.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002778_get09_num :
    wordRank000002778.get (9 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002778_get09_mk (h : 9 < 13) :
    wordRank000002778.get ⟨9, h⟩ = PairId.d111 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002778_get10_num :
    wordRank000002778.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002778_get10_mk (h : 10 < 13) :
    wordRank000002778.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002778_get11_num :
    wordRank000002778.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002778_get11_mk (h : 11 < 13) :
    wordRank000002778.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002778_get12_num :
    wordRank000002778.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002778_get12_mk (h : 12 < 13) :
    wordRank000002778.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002778_rank :
    rankPairWord? wordRank000002778 = some rank000002778 := by
  decide

theorem rank000002778_unrank :
    unrankPairWord rank000002778 = wordRank000002778 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002778 rank000002778).mp
    rank000002778_rank).symm

theorem rank000002778_totalLinear :
    totalLinearOfPairWord wordRank000002778 = { m00 := (1/9), m01 := (8/9), m02 := (4/9), m10 := (8/9), m11 := (1/9), m12 := (-4/9), m20 := (-4/9), m21 := (4/9), m22 := (-7/9) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002778_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000002778_kernel : KernelLineWitness where
  crossFactor := { m00 := (-1/4), m01 := 0, m02 := (1/2), m10 := (1/4), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (-1/4) }

theorem rank000002778_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002778)
      rank000002778_axis rank000002778_kernel = true := by
  rw [rank000002778_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002778_axis,
    rank000002778_kernel]

theorem rank000002778_axisZero :
    AxisDotZeroAtWord wordRank000002778 rank000002778_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002778_get00_num, wordRank000002778_get01_num, wordRank000002778_get02_num, wordRank000002778_get03_num, wordRank000002778_get04_num, wordRank000002778_get05_num, wordRank000002778_get06_num, wordRank000002778_get07_num, wordRank000002778_get08_num, wordRank000002778_get09_num, wordRank000002778_get10_num, wordRank000002778_get11_num, wordRank000002778_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002778_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002779 : Fin numPairWords :=
  ⟨2779, by decide⟩

def wordRank000002779 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d11m, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000002779_get00_num :
    wordRank000002779.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002779_get00_mk (h : 0 < 13) :
    wordRank000002779.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002779_get01_num :
    wordRank000002779.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002779_get01_mk (h : 1 < 13) :
    wordRank000002779.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002779_get02_num :
    wordRank000002779.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002779_get02_mk (h : 2 < 13) :
    wordRank000002779.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002779_get03_num :
    wordRank000002779.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002779_get03_mk (h : 3 < 13) :
    wordRank000002779.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002779_get04_num :
    wordRank000002779.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002779_get04_mk (h : 4 < 13) :
    wordRank000002779.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002779_get05_num :
    wordRank000002779.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002779_get05_mk (h : 5 < 13) :
    wordRank000002779.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002779_get06_num :
    wordRank000002779.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002779_get06_mk (h : 6 < 13) :
    wordRank000002779.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002779_get07_num :
    wordRank000002779.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002779_get07_mk (h : 7 < 13) :
    wordRank000002779.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002779_get08_num :
    wordRank000002779.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002779_get08_mk (h : 8 < 13) :
    wordRank000002779.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002779_get09_num :
    wordRank000002779.get (9 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002779_get09_mk (h : 9 < 13) :
    wordRank000002779.get ⟨9, h⟩ = PairId.d111 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002779_get10_num :
    wordRank000002779.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002779_get10_mk (h : 10 < 13) :
    wordRank000002779.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002779_get11_num :
    wordRank000002779.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002779_get11_mk (h : 11 < 13) :
    wordRank000002779.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002779_get12_num :
    wordRank000002779.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002779_get12_mk (h : 12 < 13) :
    wordRank000002779.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002779_rank :
    rankPairWord? wordRank000002779 = some rank000002779 := by
  decide

theorem rank000002779_unrank :
    unrankPairWord rank000002779 = wordRank000002779 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002779 rank000002779).mp
    rank000002779_rank).symm

theorem rank000002779_totalLinear :
    totalLinearOfPairWord wordRank000002779 = { m00 := (-23/81), m01 := (64/81), m02 := (44/81), m10 := (-16/81), m11 := (41/81), m12 := (-68/81), m20 := (-76/81), m21 := (-28/81), m22 := (1/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002779_axis : Vec3 Rat :=
  { x := (-1/2), y := (-3/2), z := 1 }

def rank000002779_kernel : KernelLineWitness where
  crossFactor := { m00 := (-1/4), m01 := (13/8), m02 := 0, m10 := (-5/8), m11 := -1, m12 := 0, m20 := (-17/16), m21 := (-11/16), m22 := 0 }

theorem rank000002779_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002779)
      rank000002779_axis rank000002779_kernel = true := by
  rw [rank000002779_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002779_axis,
    rank000002779_kernel]

theorem rank000002779_axisZero :
    AxisDotZeroAtWord wordRank000002779 rank000002779_axis
      (9 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002779_get00_num, wordRank000002779_get01_num, wordRank000002779_get02_num, wordRank000002779_get03_num, wordRank000002779_get04_num, wordRank000002779_get05_num, wordRank000002779_get06_num, wordRank000002779_get07_num, wordRank000002779_get08_num, wordRank000002779_get09_num, wordRank000002779_get10_num, wordRank000002779_get11_num, wordRank000002779_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002779_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002780 : Fin numPairWords :=
  ⟨2780, by decide⟩

def wordRank000002780 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩

@[simp] theorem wordRank000002780_get00_num :
    wordRank000002780.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002780_get00_mk (h : 0 < 13) :
    wordRank000002780.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002780_get01_num :
    wordRank000002780.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002780_get01_mk (h : 1 < 13) :
    wordRank000002780.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002780_get02_num :
    wordRank000002780.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002780_get02_mk (h : 2 < 13) :
    wordRank000002780.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002780_get03_num :
    wordRank000002780.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002780_get03_mk (h : 3 < 13) :
    wordRank000002780.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002780_get04_num :
    wordRank000002780.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002780_get04_mk (h : 4 < 13) :
    wordRank000002780.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002780_get05_num :
    wordRank000002780.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002780_get05_mk (h : 5 < 13) :
    wordRank000002780.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002780_get06_num :
    wordRank000002780.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002780_get06_mk (h : 6 < 13) :
    wordRank000002780.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002780_get07_num :
    wordRank000002780.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002780_get07_mk (h : 7 < 13) :
    wordRank000002780.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002780_get08_num :
    wordRank000002780.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002780_get08_mk (h : 8 < 13) :
    wordRank000002780.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002780_get09_num :
    wordRank000002780.get (9 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002780_get09_mk (h : 9 < 13) :
    wordRank000002780.get ⟨9, h⟩ = PairId.d111 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002780_get10_num :
    wordRank000002780.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002780_get10_mk (h : 10 < 13) :
    wordRank000002780.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002780_get11_num :
    wordRank000002780.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002780_get11_mk (h : 11 < 13) :
    wordRank000002780.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002780_get12_num :
    wordRank000002780.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002780_get12_mk (h : 12 < 13) :
    wordRank000002780.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002780_rank :
    rankPairWord? wordRank000002780 = some rank000002780 := by
  decide

theorem rank000002780_unrank :
    unrankPairWord rank000002780 = wordRank000002780 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002780 rank000002780).mp
    rank000002780_rank).symm

theorem rank000002780_totalLinear :
    totalLinearOfPairWord wordRank000002780 = { m00 := (1/9), m01 := (8/9), m02 := (4/9), m10 := (8/9), m11 := (1/9), m12 := (-4/9), m20 := (-4/9), m21 := (4/9), m22 := (-7/9) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002780_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000002780_kernel : KernelLineWitness where
  crossFactor := { m00 := (-1/4), m01 := 0, m02 := (1/2), m10 := (1/4), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (-1/4) }

theorem rank000002780_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002780)
      rank000002780_axis rank000002780_kernel = true := by
  rw [rank000002780_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002780_axis,
    rank000002780_kernel]

theorem rank000002780_axisZero :
    AxisDotZeroAtWord wordRank000002780 rank000002780_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002780_get00_num, wordRank000002780_get01_num, wordRank000002780_get02_num, wordRank000002780_get03_num, wordRank000002780_get04_num, wordRank000002780_get05_num, wordRank000002780_get06_num, wordRank000002780_get07_num, wordRank000002780_get08_num, wordRank000002780_get09_num, wordRank000002780_get10_num, wordRank000002780_get11_num, wordRank000002780_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002780_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002781 : Fin numPairWords :=
  ⟨2781, by decide⟩

def wordRank000002781 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111, PairId.d1m1, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000002781_get00_num :
    wordRank000002781.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002781_get00_mk (h : 0 < 13) :
    wordRank000002781.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002781_get01_num :
    wordRank000002781.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002781_get01_mk (h : 1 < 13) :
    wordRank000002781.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002781_get02_num :
    wordRank000002781.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002781_get02_mk (h : 2 < 13) :
    wordRank000002781.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002781_get03_num :
    wordRank000002781.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002781_get03_mk (h : 3 < 13) :
    wordRank000002781.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002781_get04_num :
    wordRank000002781.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002781_get04_mk (h : 4 < 13) :
    wordRank000002781.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002781_get05_num :
    wordRank000002781.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002781_get05_mk (h : 5 < 13) :
    wordRank000002781.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002781_get06_num :
    wordRank000002781.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002781_get06_mk (h : 6 < 13) :
    wordRank000002781.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002781_get07_num :
    wordRank000002781.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002781_get07_mk (h : 7 < 13) :
    wordRank000002781.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002781_get08_num :
    wordRank000002781.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002781_get08_mk (h : 8 < 13) :
    wordRank000002781.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002781_get09_num :
    wordRank000002781.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002781_get09_mk (h : 9 < 13) :
    wordRank000002781.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002781_get10_num :
    wordRank000002781.get (10 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002781_get10_mk (h : 10 < 13) :
    wordRank000002781.get ⟨10, h⟩ = PairId.d111 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002781_get11_num :
    wordRank000002781.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002781_get11_mk (h : 11 < 13) :
    wordRank000002781.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002781_get12_num :
    wordRank000002781.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002781_get12_mk (h : 12 < 13) :
    wordRank000002781.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002781_rank :
    rankPairWord? wordRank000002781 = some rank000002781 := by
  decide

theorem rank000002781_unrank :
    unrankPairWord rank000002781 = wordRank000002781 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002781 rank000002781).mp
    rank000002781_rank).symm

theorem rank000002781_totalLinear :
    totalLinearOfPairWord wordRank000002781 = { m00 := (1/9), m01 := (8/9), m02 := (-4/9), m10 := (8/9), m11 := (1/9), m12 := (4/9), m20 := (4/9), m21 := (-4/9), m22 := (-7/9) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002781_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000002781_kernel : KernelLineWitness where
  crossFactor := { m00 := (1/4), m01 := 0, m02 := (1/2), m10 := (-1/4), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (1/4) }

theorem rank000002781_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002781)
      rank000002781_axis rank000002781_kernel = true := by
  rw [rank000002781_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002781_axis,
    rank000002781_kernel]

theorem rank000002781_axisZero :
    AxisDotZeroAtWord wordRank000002781 rank000002781_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002781_get00_num, wordRank000002781_get01_num, wordRank000002781_get02_num, wordRank000002781_get03_num, wordRank000002781_get04_num, wordRank000002781_get05_num, wordRank000002781_get06_num, wordRank000002781_get07_num, wordRank000002781_get08_num, wordRank000002781_get09_num, wordRank000002781_get10_num, wordRank000002781_get11_num, wordRank000002781_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002781_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002782 : Fin numPairWords :=
  ⟨2782, by decide⟩

def wordRank000002782 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d111, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000002782_get00_num :
    wordRank000002782.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002782_get00_mk (h : 0 < 13) :
    wordRank000002782.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002782_get01_num :
    wordRank000002782.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002782_get01_mk (h : 1 < 13) :
    wordRank000002782.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002782_get02_num :
    wordRank000002782.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002782_get02_mk (h : 2 < 13) :
    wordRank000002782.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002782_get03_num :
    wordRank000002782.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002782_get03_mk (h : 3 < 13) :
    wordRank000002782.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002782_get04_num :
    wordRank000002782.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002782_get04_mk (h : 4 < 13) :
    wordRank000002782.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002782_get05_num :
    wordRank000002782.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002782_get05_mk (h : 5 < 13) :
    wordRank000002782.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002782_get06_num :
    wordRank000002782.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002782_get06_mk (h : 6 < 13) :
    wordRank000002782.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002782_get07_num :
    wordRank000002782.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002782_get07_mk (h : 7 < 13) :
    wordRank000002782.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002782_get08_num :
    wordRank000002782.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002782_get08_mk (h : 8 < 13) :
    wordRank000002782.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002782_get09_num :
    wordRank000002782.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002782_get09_mk (h : 9 < 13) :
    wordRank000002782.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002782_get10_num :
    wordRank000002782.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002782_get10_mk (h : 10 < 13) :
    wordRank000002782.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002782_get11_num :
    wordRank000002782.get (11 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002782_get11_mk (h : 11 < 13) :
    wordRank000002782.get ⟨11, h⟩ = PairId.d111 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002782_get12_num :
    wordRank000002782.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002782_get12_mk (h : 12 < 13) :
    wordRank000002782.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002782_rank :
    rankPairWord? wordRank000002782 = some rank000002782 := by
  decide

theorem rank000002782_unrank :
    unrankPairWord rank000002782 = wordRank000002782 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002782 rank000002782).mp
    rank000002782_rank).symm

theorem rank000002782_totalLinear :
    totalLinearOfPairWord wordRank000002782 = { m00 := (41/81), m01 := (-16/81), m02 := (-68/81), m10 := (64/81), m11 := (-23/81), m12 := (44/81), m20 := (-28/81), m21 := (-76/81), m22 := (1/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002782_axis : Vec3 Rat :=
  { x := (-3/2), y := (-1/2), z := 1 }

def rank000002782_kernel : KernelLineWitness where
  crossFactor := { m00 := 1, m01 := (5/8), m02 := 0, m10 := (-13/8), m11 := (1/4), m12 := 0, m20 := (11/16), m21 := (17/16), m22 := 0 }

theorem rank000002782_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002782)
      rank000002782_axis rank000002782_kernel = true := by
  rw [rank000002782_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002782_axis,
    rank000002782_kernel]

theorem rank000002782_axisZero :
    AxisDotZeroAtWord wordRank000002782 rank000002782_axis
      (4 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002782_get00_num, wordRank000002782_get01_num, wordRank000002782_get02_num, wordRank000002782_get03_num, wordRank000002782_get04_num, wordRank000002782_get05_num, wordRank000002782_get06_num, wordRank000002782_get07_num, wordRank000002782_get08_num, wordRank000002782_get09_num, wordRank000002782_get10_num, wordRank000002782_get11_num, wordRank000002782_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002782_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002783 : Fin numPairWords :=
  ⟨2783, by decide⟩

def wordRank000002783 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩

@[simp] theorem wordRank000002783_get00_num :
    wordRank000002783.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002783_get00_mk (h : 0 < 13) :
    wordRank000002783.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002783_get01_num :
    wordRank000002783.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002783_get01_mk (h : 1 < 13) :
    wordRank000002783.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002783_get02_num :
    wordRank000002783.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002783_get02_mk (h : 2 < 13) :
    wordRank000002783.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002783_get03_num :
    wordRank000002783.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002783_get03_mk (h : 3 < 13) :
    wordRank000002783.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002783_get04_num :
    wordRank000002783.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002783_get04_mk (h : 4 < 13) :
    wordRank000002783.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002783_get05_num :
    wordRank000002783.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002783_get05_mk (h : 5 < 13) :
    wordRank000002783.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002783_get06_num :
    wordRank000002783.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002783_get06_mk (h : 6 < 13) :
    wordRank000002783.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002783_get07_num :
    wordRank000002783.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002783_get07_mk (h : 7 < 13) :
    wordRank000002783.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002783_get08_num :
    wordRank000002783.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002783_get08_mk (h : 8 < 13) :
    wordRank000002783.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002783_get09_num :
    wordRank000002783.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002783_get09_mk (h : 9 < 13) :
    wordRank000002783.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002783_get10_num :
    wordRank000002783.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002783_get10_mk (h : 10 < 13) :
    wordRank000002783.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002783_get11_num :
    wordRank000002783.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002783_get11_mk (h : 11 < 13) :
    wordRank000002783.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002783_get12_num :
    wordRank000002783.get (12 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002783_get12_mk (h : 12 < 13) :
    wordRank000002783.get ⟨12, h⟩ = PairId.d111 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002783_rank :
    rankPairWord? wordRank000002783 = some rank000002783 := by
  decide

theorem rank000002783_unrank :
    unrankPairWord rank000002783 = wordRank000002783 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002783 rank000002783).mp
    rank000002783_rank).symm

theorem rank000002783_totalLinear :
    totalLinearOfPairWord wordRank000002783 = { m00 := (1/9), m01 := (8/9), m02 := (-4/9), m10 := (8/9), m11 := (1/9), m12 := (4/9), m20 := (4/9), m21 := (-4/9), m22 := (-7/9) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002783_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000002783_kernel : KernelLineWitness where
  crossFactor := { m00 := (1/4), m01 := 0, m02 := (1/2), m10 := (-1/4), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (1/4) }

theorem rank000002783_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002783)
      rank000002783_axis rank000002783_kernel = true := by
  rw [rank000002783_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002783_axis,
    rank000002783_kernel]

theorem rank000002783_axisZero :
    AxisDotZeroAtWord wordRank000002783 rank000002783_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002783_get00_num, wordRank000002783_get01_num, wordRank000002783_get02_num, wordRank000002783_get03_num, wordRank000002783_get04_num, wordRank000002783_get05_num, wordRank000002783_get06_num, wordRank000002783_get07_num, wordRank000002783_get08_num, wordRank000002783_get09_num, wordRank000002783_get10_num, wordRank000002783_get11_num, wordRank000002783_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002783_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002784 : Fin numPairWords :=
  ⟨2784, by decide⟩

def wordRank000002784 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000002784_get00_num :
    wordRank000002784.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002784_get00_mk (h : 0 < 13) :
    wordRank000002784.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002784_get01_num :
    wordRank000002784.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002784_get01_mk (h : 1 < 13) :
    wordRank000002784.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002784_get02_num :
    wordRank000002784.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002784_get02_mk (h : 2 < 13) :
    wordRank000002784.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002784_get03_num :
    wordRank000002784.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002784_get03_mk (h : 3 < 13) :
    wordRank000002784.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002784_get04_num :
    wordRank000002784.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002784_get04_mk (h : 4 < 13) :
    wordRank000002784.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002784_get05_num :
    wordRank000002784.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002784_get05_mk (h : 5 < 13) :
    wordRank000002784.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002784_get06_num :
    wordRank000002784.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002784_get06_mk (h : 6 < 13) :
    wordRank000002784.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002784_get07_num :
    wordRank000002784.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002784_get07_mk (h : 7 < 13) :
    wordRank000002784.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002784_get08_num :
    wordRank000002784.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002784_get08_mk (h : 8 < 13) :
    wordRank000002784.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002784_get09_num :
    wordRank000002784.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002784_get09_mk (h : 9 < 13) :
    wordRank000002784.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002784_get10_num :
    wordRank000002784.get (10 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002784_get10_mk (h : 10 < 13) :
    wordRank000002784.get ⟨10, h⟩ = PairId.d111 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002784_get11_num :
    wordRank000002784.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002784_get11_mk (h : 11 < 13) :
    wordRank000002784.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002784_get12_num :
    wordRank000002784.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002784_get12_mk (h : 12 < 13) :
    wordRank000002784.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002784_rank :
    rankPairWord? wordRank000002784 = some rank000002784 := by
  decide

theorem rank000002784_unrank :
    unrankPairWord rank000002784 = wordRank000002784 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002784 rank000002784).mp
    rank000002784_rank).symm

theorem rank000002784_totalLinear :
    totalLinearOfPairWord wordRank000002784 = { m00 := (-55/81), m01 := (56/81), m02 := (-20/81), m10 := (-40/81), m11 := (-55/81), m12 := (-44/81), m20 := (-44/81), m21 := (-20/81), m22 := (65/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002784_axis : Vec3 Rat :=
  { x := (-1/4), y := (-1/4), z := 1 }

def rank000002784_kernel : KernelLineWitness where
  crossFactor := { m00 := (-5/32), m01 := (17/32), m02 := 0, m10 := (-17/32), m11 := (-7/32), m12 := 0, m20 := (-11/64), m21 := (5/64), m22 := 0 }

theorem rank000002784_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002784)
      rank000002784_axis rank000002784_kernel = true := by
  rw [rank000002784_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002784_axis,
    rank000002784_kernel]

theorem rank000002784_axisZero :
    AxisDotZeroAtWord wordRank000002784 rank000002784_axis
      (10 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002784_get00_num, wordRank000002784_get01_num, wordRank000002784_get02_num, wordRank000002784_get03_num, wordRank000002784_get04_num, wordRank000002784_get05_num, wordRank000002784_get06_num, wordRank000002784_get07_num, wordRank000002784_get08_num, wordRank000002784_get09_num, wordRank000002784_get10_num, wordRank000002784_get11_num, wordRank000002784_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002784_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002785 : Fin numPairWords :=
  ⟨2785, by decide⟩

def wordRank000002785 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d1m1, PairId.d11m], by decide⟩

@[simp] theorem wordRank000002785_get00_num :
    wordRank000002785.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002785_get00_mk (h : 0 < 13) :
    wordRank000002785.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002785_get01_num :
    wordRank000002785.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002785_get01_mk (h : 1 < 13) :
    wordRank000002785.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002785_get02_num :
    wordRank000002785.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002785_get02_mk (h : 2 < 13) :
    wordRank000002785.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002785_get03_num :
    wordRank000002785.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002785_get03_mk (h : 3 < 13) :
    wordRank000002785.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002785_get04_num :
    wordRank000002785.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002785_get04_mk (h : 4 < 13) :
    wordRank000002785.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002785_get05_num :
    wordRank000002785.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002785_get05_mk (h : 5 < 13) :
    wordRank000002785.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002785_get06_num :
    wordRank000002785.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002785_get06_mk (h : 6 < 13) :
    wordRank000002785.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002785_get07_num :
    wordRank000002785.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002785_get07_mk (h : 7 < 13) :
    wordRank000002785.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002785_get08_num :
    wordRank000002785.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002785_get08_mk (h : 8 < 13) :
    wordRank000002785.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002785_get09_num :
    wordRank000002785.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002785_get09_mk (h : 9 < 13) :
    wordRank000002785.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002785_get10_num :
    wordRank000002785.get (10 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002785_get10_mk (h : 10 < 13) :
    wordRank000002785.get ⟨10, h⟩ = PairId.d111 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002785_get11_num :
    wordRank000002785.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002785_get11_mk (h : 11 < 13) :
    wordRank000002785.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002785_get12_num :
    wordRank000002785.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002785_get12_mk (h : 12 < 13) :
    wordRank000002785.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002785_rank :
    rankPairWord? wordRank000002785 = some rank000002785 := by
  decide

theorem rank000002785_unrank :
    unrankPairWord rank000002785 = wordRank000002785 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002785 rank000002785).mp
    rank000002785_rank).symm

theorem rank000002785_totalLinear :
    totalLinearOfPairWord wordRank000002785 = { m00 := (41/81), m01 := (64/81), m02 := (-28/81), m10 := (-16/81), m11 := (-23/81), m12 := (-76/81), m20 := (-68/81), m21 := (44/81), m22 := (1/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002785_axis : Vec3 Rat :=
  { x := (-3/2), y := (-1/2), z := 1 }

def rank000002785_kernel : KernelLineWitness where
  crossFactor := { m00 := (-1/4), m01 := (5/8), m02 := 0, m10 := (-13/8), m11 := -1, m12 := 0, m20 := (-19/16), m21 := (7/16), m22 := 0 }

theorem rank000002785_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002785)
      rank000002785_axis rank000002785_kernel = true := by
  rw [rank000002785_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002785_axis,
    rank000002785_kernel]

theorem rank000002785_axisZero :
    AxisDotZeroAtWord wordRank000002785 rank000002785_axis
      (4 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002785_get00_num, wordRank000002785_get01_num, wordRank000002785_get02_num, wordRank000002785_get03_num, wordRank000002785_get04_num, wordRank000002785_get05_num, wordRank000002785_get06_num, wordRank000002785_get07_num, wordRank000002785_get08_num, wordRank000002785_get09_num, wordRank000002785_get10_num, wordRank000002785_get11_num, wordRank000002785_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002785_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002786 : Fin numPairWords :=
  ⟨2786, by decide⟩

def wordRank000002786 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d111, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000002786_get00_num :
    wordRank000002786.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002786_get00_mk (h : 0 < 13) :
    wordRank000002786.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002786_get01_num :
    wordRank000002786.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002786_get01_mk (h : 1 < 13) :
    wordRank000002786.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002786_get02_num :
    wordRank000002786.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002786_get02_mk (h : 2 < 13) :
    wordRank000002786.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002786_get03_num :
    wordRank000002786.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002786_get03_mk (h : 3 < 13) :
    wordRank000002786.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002786_get04_num :
    wordRank000002786.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002786_get04_mk (h : 4 < 13) :
    wordRank000002786.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002786_get05_num :
    wordRank000002786.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002786_get05_mk (h : 5 < 13) :
    wordRank000002786.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002786_get06_num :
    wordRank000002786.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002786_get06_mk (h : 6 < 13) :
    wordRank000002786.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002786_get07_num :
    wordRank000002786.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002786_get07_mk (h : 7 < 13) :
    wordRank000002786.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002786_get08_num :
    wordRank000002786.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002786_get08_mk (h : 8 < 13) :
    wordRank000002786.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002786_get09_num :
    wordRank000002786.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002786_get09_mk (h : 9 < 13) :
    wordRank000002786.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002786_get10_num :
    wordRank000002786.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002786_get10_mk (h : 10 < 13) :
    wordRank000002786.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002786_get11_num :
    wordRank000002786.get (11 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002786_get11_mk (h : 11 < 13) :
    wordRank000002786.get ⟨11, h⟩ = PairId.d111 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002786_get12_num :
    wordRank000002786.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002786_get12_mk (h : 12 < 13) :
    wordRank000002786.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002786_rank :
    rankPairWord? wordRank000002786 = some rank000002786 := by
  decide

theorem rank000002786_unrank :
    unrankPairWord rank000002786 = wordRank000002786 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002786 rank000002786).mp
    rank000002786_rank).symm

theorem rank000002786_totalLinear :
    totalLinearOfPairWord wordRank000002786 = { m00 := (-55/81), m01 := (-40/81), m02 := (-44/81), m10 := (56/81), m11 := (-55/81), m12 := (-20/81), m20 := (-20/81), m21 := (-44/81), m22 := (65/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002786_axis : Vec3 Rat :=
  { x := (-1/4), y := (-1/4), z := 1 }

def rank000002786_kernel : KernelLineWitness where
  crossFactor := { m00 := (7/32), m01 := (17/32), m02 := 0, m10 := (-17/32), m11 := (5/32), m12 := 0, m20 := (-5/64), m21 := (11/64), m22 := 0 }

theorem rank000002786_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002786)
      rank000002786_axis rank000002786_kernel = true := by
  rw [rank000002786_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002786_axis,
    rank000002786_kernel]

theorem rank000002786_axisZero :
    AxisDotZeroAtWord wordRank000002786 rank000002786_axis
      (10 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002786_get00_num, wordRank000002786_get01_num, wordRank000002786_get02_num, wordRank000002786_get03_num, wordRank000002786_get04_num, wordRank000002786_get05_num, wordRank000002786_get06_num, wordRank000002786_get07_num, wordRank000002786_get08_num, wordRank000002786_get09_num, wordRank000002786_get10_num, wordRank000002786_get11_num, wordRank000002786_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002786_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002787 : Fin numPairWords :=
  ⟨2787, by decide⟩

def wordRank000002787 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩

@[simp] theorem wordRank000002787_get00_num :
    wordRank000002787.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002787_get00_mk (h : 0 < 13) :
    wordRank000002787.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002787_get01_num :
    wordRank000002787.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002787_get01_mk (h : 1 < 13) :
    wordRank000002787.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002787_get02_num :
    wordRank000002787.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002787_get02_mk (h : 2 < 13) :
    wordRank000002787.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002787_get03_num :
    wordRank000002787.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002787_get03_mk (h : 3 < 13) :
    wordRank000002787.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002787_get04_num :
    wordRank000002787.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002787_get04_mk (h : 4 < 13) :
    wordRank000002787.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002787_get05_num :
    wordRank000002787.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002787_get05_mk (h : 5 < 13) :
    wordRank000002787.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002787_get06_num :
    wordRank000002787.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002787_get06_mk (h : 6 < 13) :
    wordRank000002787.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002787_get07_num :
    wordRank000002787.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002787_get07_mk (h : 7 < 13) :
    wordRank000002787.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002787_get08_num :
    wordRank000002787.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002787_get08_mk (h : 8 < 13) :
    wordRank000002787.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002787_get09_num :
    wordRank000002787.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002787_get09_mk (h : 9 < 13) :
    wordRank000002787.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002787_get10_num :
    wordRank000002787.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002787_get10_mk (h : 10 < 13) :
    wordRank000002787.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002787_get11_num :
    wordRank000002787.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002787_get11_mk (h : 11 < 13) :
    wordRank000002787.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002787_get12_num :
    wordRank000002787.get (12 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002787_get12_mk (h : 12 < 13) :
    wordRank000002787.get ⟨12, h⟩ = PairId.d111 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002787_rank :
    rankPairWord? wordRank000002787 = some rank000002787 := by
  decide

theorem rank000002787_unrank :
    unrankPairWord rank000002787 = wordRank000002787 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002787 rank000002787).mp
    rank000002787_rank).symm

theorem rank000002787_totalLinear :
    totalLinearOfPairWord wordRank000002787 = { m00 := (-23/81), m01 := (-16/81), m02 := (-76/81), m10 := (64/81), m11 := (41/81), m12 := (-28/81), m20 := (44/81), m21 := (-68/81), m22 := (1/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002787_axis : Vec3 Rat :=
  { x := (-1/2), y := (-3/2), z := 1 }

def rank000002787_kernel : KernelLineWitness where
  crossFactor := { m00 := 1, m01 := (13/8), m02 := 0, m10 := (-5/8), m11 := (1/4), m12 := 0, m20 := (-7/16), m21 := (19/16), m22 := 0 }

theorem rank000002787_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002787)
      rank000002787_axis rank000002787_kernel = true := by
  rw [rank000002787_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002787_axis,
    rank000002787_kernel]

theorem rank000002787_axisZero :
    AxisDotZeroAtWord wordRank000002787 rank000002787_axis
      (10 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002787_get00_num, wordRank000002787_get01_num, wordRank000002787_get02_num, wordRank000002787_get03_num, wordRank000002787_get04_num, wordRank000002787_get05_num, wordRank000002787_get06_num, wordRank000002787_get07_num, wordRank000002787_get08_num, wordRank000002787_get09_num, wordRank000002787_get10_num, wordRank000002787_get11_num, wordRank000002787_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002787_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002788 : Fin numPairWords :=
  ⟨2788, by decide⟩

def wordRank000002788 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩

@[simp] theorem wordRank000002788_get00_num :
    wordRank000002788.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002788_get00_mk (h : 0 < 13) :
    wordRank000002788.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002788_get01_num :
    wordRank000002788.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002788_get01_mk (h : 1 < 13) :
    wordRank000002788.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002788_get02_num :
    wordRank000002788.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002788_get02_mk (h : 2 < 13) :
    wordRank000002788.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002788_get03_num :
    wordRank000002788.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002788_get03_mk (h : 3 < 13) :
    wordRank000002788.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002788_get04_num :
    wordRank000002788.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002788_get04_mk (h : 4 < 13) :
    wordRank000002788.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002788_get05_num :
    wordRank000002788.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002788_get05_mk (h : 5 < 13) :
    wordRank000002788.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002788_get06_num :
    wordRank000002788.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002788_get06_mk (h : 6 < 13) :
    wordRank000002788.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002788_get07_num :
    wordRank000002788.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002788_get07_mk (h : 7 < 13) :
    wordRank000002788.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002788_get08_num :
    wordRank000002788.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002788_get08_mk (h : 8 < 13) :
    wordRank000002788.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002788_get09_num :
    wordRank000002788.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002788_get09_mk (h : 9 < 13) :
    wordRank000002788.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002788_get10_num :
    wordRank000002788.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002788_get10_mk (h : 10 < 13) :
    wordRank000002788.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002788_get11_num :
    wordRank000002788.get (11 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002788_get11_mk (h : 11 < 13) :
    wordRank000002788.get ⟨11, h⟩ = PairId.d111 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002788_get12_num :
    wordRank000002788.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002788_get12_mk (h : 12 < 13) :
    wordRank000002788.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002788_rank :
    rankPairWord? wordRank000002788 = some rank000002788 := by
  decide

theorem rank000002788_unrank :
    unrankPairWord rank000002788 = wordRank000002788 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002788 rank000002788).mp
    rank000002788_rank).symm

theorem rank000002788_totalLinear :
    totalLinearOfPairWord wordRank000002788 = { m00 := (1/9), m01 := (8/9), m02 := (4/9), m10 := (8/9), m11 := (1/9), m12 := (-4/9), m20 := (-4/9), m21 := (4/9), m22 := (-7/9) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002788_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000002788_kernel : KernelLineWitness where
  crossFactor := { m00 := (-1/4), m01 := 0, m02 := (1/2), m10 := (1/4), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (-1/4) }

theorem rank000002788_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002788)
      rank000002788_axis rank000002788_kernel = true := by
  rw [rank000002788_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002788_axis,
    rank000002788_kernel]

theorem rank000002788_axisZero :
    AxisDotZeroAtWord wordRank000002788 rank000002788_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002788_get00_num, wordRank000002788_get01_num, wordRank000002788_get02_num, wordRank000002788_get03_num, wordRank000002788_get04_num, wordRank000002788_get05_num, wordRank000002788_get06_num, wordRank000002788_get07_num, wordRank000002788_get08_num, wordRank000002788_get09_num, wordRank000002788_get10_num, wordRank000002788_get11_num, wordRank000002788_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002788_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002789 : Fin numPairWords :=
  ⟨2789, by decide⟩

def wordRank000002789 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩

@[simp] theorem wordRank000002789_get00_num :
    wordRank000002789.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002789_get00_mk (h : 0 < 13) :
    wordRank000002789.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002789_get01_num :
    wordRank000002789.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002789_get01_mk (h : 1 < 13) :
    wordRank000002789.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002789_get02_num :
    wordRank000002789.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002789_get02_mk (h : 2 < 13) :
    wordRank000002789.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002789_get03_num :
    wordRank000002789.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002789_get03_mk (h : 3 < 13) :
    wordRank000002789.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002789_get04_num :
    wordRank000002789.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002789_get04_mk (h : 4 < 13) :
    wordRank000002789.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002789_get05_num :
    wordRank000002789.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002789_get05_mk (h : 5 < 13) :
    wordRank000002789.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002789_get06_num :
    wordRank000002789.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002789_get06_mk (h : 6 < 13) :
    wordRank000002789.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002789_get07_num :
    wordRank000002789.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002789_get07_mk (h : 7 < 13) :
    wordRank000002789.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002789_get08_num :
    wordRank000002789.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002789_get08_mk (h : 8 < 13) :
    wordRank000002789.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002789_get09_num :
    wordRank000002789.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002789_get09_mk (h : 9 < 13) :
    wordRank000002789.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002789_get10_num :
    wordRank000002789.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002789_get10_mk (h : 10 < 13) :
    wordRank000002789.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002789_get11_num :
    wordRank000002789.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002789_get11_mk (h : 11 < 13) :
    wordRank000002789.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002789_get12_num :
    wordRank000002789.get (12 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002789_get12_mk (h : 12 < 13) :
    wordRank000002789.get ⟨12, h⟩ = PairId.d111 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002789_rank :
    rankPairWord? wordRank000002789 = some rank000002789 := by
  decide

theorem rank000002789_unrank :
    unrankPairWord rank000002789 = wordRank000002789 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002789 rank000002789).mp
    rank000002789_rank).symm

theorem rank000002789_totalLinear :
    totalLinearOfPairWord wordRank000002789 = { m00 := (1/9), m01 := (8/9), m02 := (-4/9), m10 := (8/9), m11 := (1/9), m12 := (4/9), m20 := (4/9), m21 := (-4/9), m22 := (-7/9) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002789_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000002789_kernel : KernelLineWitness where
  crossFactor := { m00 := (1/4), m01 := 0, m02 := (1/2), m10 := (-1/4), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (1/4) }

theorem rank000002789_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002789)
      rank000002789_axis rank000002789_kernel = true := by
  rw [rank000002789_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002789_axis,
    rank000002789_kernel]

theorem rank000002789_axisZero :
    AxisDotZeroAtWord wordRank000002789 rank000002789_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002789_get00_num, wordRank000002789_get01_num, wordRank000002789_get02_num, wordRank000002789_get03_num, wordRank000002789_get04_num, wordRank000002789_get05_num, wordRank000002789_get06_num, wordRank000002789_get07_num, wordRank000002789_get08_num, wordRank000002789_get09_num, wordRank000002789_get10_num, wordRank000002789_get11_num, wordRank000002789_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002789_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


theorem badDirectionPrefix_covers :
    Cuboctahedron.Generated.Coverage.PrefixRankInterval
      badDirectionPairPrefix 2778 2790 := by
  intro raw hlo hhi hlt
  have hRaw : raw = 2778 ∨ raw = 2779 ∨ raw = 2780 ∨ raw = 2781 ∨ raw = 2782 ∨ raw = 2783 ∨ raw = 2784 ∨ raw = 2785 ∨ raw = 2786 ∨ raw = 2787 ∨ raw = 2788 ∨ raw = 2789 := by omega
  rcases hRaw with hRaw | hRaw2779 | hRaw2780 | hRaw2781 | hRaw2782 | hRaw2783 | hRaw2784 | hRaw2785 | hRaw2786 | hRaw2787 | hRaw2788 | hRaw2789
  · subst raw
    have hRank :
        (⟨2778, hlt⟩ : Fin numPairWords) = rank000002778 := by
      ext
      rfl
    rw [hRank, rank000002778_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2779, hlt⟩ : Fin numPairWords) = rank000002779 := by
      ext
      rfl
    rw [hRank, rank000002779_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2780, hlt⟩ : Fin numPairWords) = rank000002780 := by
      ext
      rfl
    rw [hRank, rank000002780_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2781, hlt⟩ : Fin numPairWords) = rank000002781 := by
      ext
      rfl
    rw [hRank, rank000002781_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2782, hlt⟩ : Fin numPairWords) = rank000002782 := by
      ext
      rfl
    rw [hRank, rank000002782_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2783, hlt⟩ : Fin numPairWords) = rank000002783 := by
      ext
      rfl
    rw [hRank, rank000002783_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2784, hlt⟩ : Fin numPairWords) = rank000002784 := by
      ext
      rfl
    rw [hRank, rank000002784_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2785, hlt⟩ : Fin numPairWords) = rank000002785 := by
      ext
      rfl
    rw [hRank, rank000002785_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2786, hlt⟩ : Fin numPairWords) = rank000002786 := by
      ext
      rfl
    rw [hRank, rank000002786_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2787, hlt⟩ : Fin numPairWords) = rank000002787 := by
      ext
      rfl
    rw [hRank, rank000002787_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2788, hlt⟩ : Fin numPairWords) = rank000002788 := by
      ext
      rfl
    rw [hRank, rank000002788_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2789, hlt⟩ : Fin numPairWords) = rank000002789 := by
      ext
      rfl
    rw [hRank, rank000002789_unrank]
    intro i
    fin_cases i <;> decide


theorem badDirection_sound
    (raw : Nat) (hlo : 2778 <= raw)
    (hhi : raw < 2790)
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
  have hRaw : raw = 2778 ∨ raw = 2779 ∨ raw = 2780 ∨ raw = 2781 ∨ raw = 2782 ∨ raw = 2783 ∨ raw = 2784 ∨ raw = 2785 ∨ raw = 2786 ∨ raw = 2787 ∨ raw = 2788 ∨ raw = 2789 := by omega
  rcases hRaw with hRaw | hRaw2779 | hRaw2780 | hRaw2781 | hRaw2782 | hRaw2783 | hRaw2784 | hRaw2785 | hRaw2786 | hRaw2787 | hRaw2788 | hRaw2789
  · subst raw
    have hRank :
        (⟨2778, hlt⟩ : Fin numPairWords) = rank000002778 := by
      ext
      rfl
    rw [hRank, rank000002778_unrank] at hM ⊢
    refine ⟨rank000002778_axis, rank000002778_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000002778_kernelCheck
    · exact rank000002778_axisZero
  · subst raw
    have hRank :
        (⟨2779, hlt⟩ : Fin numPairWords) = rank000002779 := by
      ext
      rfl
    rw [hRank, rank000002779_unrank] at hM ⊢
    refine ⟨rank000002779_axis, rank000002779_kernel,
      (9 : WordIndex), ?_, ?_⟩
    · exact rank000002779_kernelCheck
    · exact rank000002779_axisZero
  · subst raw
    have hRank :
        (⟨2780, hlt⟩ : Fin numPairWords) = rank000002780 := by
      ext
      rfl
    rw [hRank, rank000002780_unrank] at hM ⊢
    refine ⟨rank000002780_axis, rank000002780_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000002780_kernelCheck
    · exact rank000002780_axisZero
  · subst raw
    have hRank :
        (⟨2781, hlt⟩ : Fin numPairWords) = rank000002781 := by
      ext
      rfl
    rw [hRank, rank000002781_unrank] at hM ⊢
    refine ⟨rank000002781_axis, rank000002781_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000002781_kernelCheck
    · exact rank000002781_axisZero
  · subst raw
    have hRank :
        (⟨2782, hlt⟩ : Fin numPairWords) = rank000002782 := by
      ext
      rfl
    rw [hRank, rank000002782_unrank] at hM ⊢
    refine ⟨rank000002782_axis, rank000002782_kernel,
      (4 : WordIndex), ?_, ?_⟩
    · exact rank000002782_kernelCheck
    · exact rank000002782_axisZero
  · subst raw
    have hRank :
        (⟨2783, hlt⟩ : Fin numPairWords) = rank000002783 := by
      ext
      rfl
    rw [hRank, rank000002783_unrank] at hM ⊢
    refine ⟨rank000002783_axis, rank000002783_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000002783_kernelCheck
    · exact rank000002783_axisZero
  · subst raw
    have hRank :
        (⟨2784, hlt⟩ : Fin numPairWords) = rank000002784 := by
      ext
      rfl
    rw [hRank, rank000002784_unrank] at hM ⊢
    refine ⟨rank000002784_axis, rank000002784_kernel,
      (10 : WordIndex), ?_, ?_⟩
    · exact rank000002784_kernelCheck
    · exact rank000002784_axisZero
  · subst raw
    have hRank :
        (⟨2785, hlt⟩ : Fin numPairWords) = rank000002785 := by
      ext
      rfl
    rw [hRank, rank000002785_unrank] at hM ⊢
    refine ⟨rank000002785_axis, rank000002785_kernel,
      (4 : WordIndex), ?_, ?_⟩
    · exact rank000002785_kernelCheck
    · exact rank000002785_axisZero
  · subst raw
    have hRank :
        (⟨2786, hlt⟩ : Fin numPairWords) = rank000002786 := by
      ext
      rfl
    rw [hRank, rank000002786_unrank] at hM ⊢
    refine ⟨rank000002786_axis, rank000002786_kernel,
      (10 : WordIndex), ?_, ?_⟩
    · exact rank000002786_kernelCheck
    · exact rank000002786_axisZero
  · subst raw
    have hRank :
        (⟨2787, hlt⟩ : Fin numPairWords) = rank000002787 := by
      ext
      rfl
    rw [hRank, rank000002787_unrank] at hM ⊢
    refine ⟨rank000002787_axis, rank000002787_kernel,
      (10 : WordIndex), ?_, ?_⟩
    · exact rank000002787_kernelCheck
    · exact rank000002787_axisZero
  · subst raw
    have hRank :
        (⟨2788, hlt⟩ : Fin numPairWords) = rank000002788 := by
      ext
      rfl
    rw [hRank, rank000002788_unrank] at hM ⊢
    refine ⟨rank000002788_axis, rank000002788_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000002788_kernelCheck
    · exact rank000002788_axisZero
  · subst raw
    have hRank :
        (⟨2789, hlt⟩ : Fin numPairWords) = rank000002789 := by
      ext
      rfl
    rw [hRank, rank000002789_unrank] at hM ⊢
    refine ⟨rank000002789_axis, rank000002789_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000002789_kernelCheck
    · exact rank000002789_axisZero

def badDirectionEvidence :
    Cuboctahedron.Generated.NonIdentity.PrefixPruning.BadDirectionPrefixCert
      2778 2790 where
  pairPrefix := badDirectionPairPrefix
  prefix_covers := badDirectionPrefix_covers
  direction_sound := badDirection_sound

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat
      2778 2790 :=
  badDirectionEvidence.sound

end Cuboctahedron.Generated.PrefixPruningPrototype.DiscoveredBadDirection000002778_000002790
