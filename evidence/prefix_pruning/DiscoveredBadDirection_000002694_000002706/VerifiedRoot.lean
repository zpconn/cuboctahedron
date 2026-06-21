import Cuboctahedron.Generated.NonIdentity.PrefixPruning

/-!
Generated semantic prefix-pruning prototype.

This root proves an automatically discovered bad-direction prefix interval covering 12 pair-word ranks. It exports one interval theorem and does not contain
per-rank rank-certificate literals.
-/

namespace Cuboctahedron.Generated.PrefixPruningPrototype.DiscoveredBadDirection000002694_000002706

set_option maxHeartbeats 2200000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def badDirectionPairPrefix : Cuboctahedron.Generated.Coverage.PairPrefix where
  entries := [PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1]
  length_le := by decide


def rank000002694 : Fin numPairWords :=
  ⟨2694, by decide⟩

def wordRank000002694 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩

@[simp] theorem wordRank000002694_get00_num :
    wordRank000002694.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002694_get00_mk (h : 0 < 13) :
    wordRank000002694.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002694_get01_num :
    wordRank000002694.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002694_get01_mk (h : 1 < 13) :
    wordRank000002694.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002694_get02_num :
    wordRank000002694.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002694_get02_mk (h : 2 < 13) :
    wordRank000002694.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002694_get03_num :
    wordRank000002694.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002694_get03_mk (h : 3 < 13) :
    wordRank000002694.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002694_get04_num :
    wordRank000002694.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002694_get04_mk (h : 4 < 13) :
    wordRank000002694.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002694_get05_num :
    wordRank000002694.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002694_get05_mk (h : 5 < 13) :
    wordRank000002694.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002694_get06_num :
    wordRank000002694.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002694_get06_mk (h : 6 < 13) :
    wordRank000002694.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002694_get07_num :
    wordRank000002694.get (7 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002694_get07_mk (h : 7 < 13) :
    wordRank000002694.get ⟨7, h⟩ = PairId.d1m1 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002694_get08_num :
    wordRank000002694.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002694_get08_mk (h : 8 < 13) :
    wordRank000002694.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002694_get09_num :
    wordRank000002694.get (9 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002694_get09_mk (h : 9 < 13) :
    wordRank000002694.get ⟨9, h⟩ = PairId.d111 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002694_get10_num :
    wordRank000002694.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002694_get10_mk (h : 10 < 13) :
    wordRank000002694.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002694_get11_num :
    wordRank000002694.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002694_get11_mk (h : 11 < 13) :
    wordRank000002694.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002694_get12_num :
    wordRank000002694.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002694_get12_mk (h : 12 < 13) :
    wordRank000002694.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002694_rank :
    rankPairWord? wordRank000002694 = some rank000002694 := by
  decide

theorem rank000002694_unrank :
    unrankPairWord rank000002694 = wordRank000002694 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002694 rank000002694).mp
    rank000002694_rank).symm

theorem rank000002694_totalLinear :
    totalLinearOfPairWord wordRank000002694 = { m00 := (1/9), m01 := (8/9), m02 := (4/9), m10 := (8/9), m11 := (1/9), m12 := (-4/9), m20 := (-4/9), m21 := (4/9), m22 := (-7/9) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002694_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000002694_kernel : KernelLineWitness where
  crossFactor := { m00 := (-1/4), m01 := 0, m02 := (1/2), m10 := (1/4), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (-1/4) }

theorem rank000002694_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002694)
      rank000002694_axis rank000002694_kernel = true := by
  rw [rank000002694_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002694_axis,
    rank000002694_kernel]

theorem rank000002694_axisZero :
    AxisDotZeroAtWord wordRank000002694 rank000002694_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002694_get00_num, wordRank000002694_get01_num, wordRank000002694_get02_num, wordRank000002694_get03_num, wordRank000002694_get04_num, wordRank000002694_get05_num, wordRank000002694_get06_num, wordRank000002694_get07_num, wordRank000002694_get08_num, wordRank000002694_get09_num, wordRank000002694_get10_num, wordRank000002694_get11_num, wordRank000002694_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002694_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002695 : Fin numPairWords :=
  ⟨2695, by decide⟩

def wordRank000002695 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d11m, PairId.dm11], by decide⟩

@[simp] theorem wordRank000002695_get00_num :
    wordRank000002695.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002695_get00_mk (h : 0 < 13) :
    wordRank000002695.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002695_get01_num :
    wordRank000002695.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002695_get01_mk (h : 1 < 13) :
    wordRank000002695.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002695_get02_num :
    wordRank000002695.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002695_get02_mk (h : 2 < 13) :
    wordRank000002695.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002695_get03_num :
    wordRank000002695.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002695_get03_mk (h : 3 < 13) :
    wordRank000002695.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002695_get04_num :
    wordRank000002695.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002695_get04_mk (h : 4 < 13) :
    wordRank000002695.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002695_get05_num :
    wordRank000002695.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002695_get05_mk (h : 5 < 13) :
    wordRank000002695.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002695_get06_num :
    wordRank000002695.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002695_get06_mk (h : 6 < 13) :
    wordRank000002695.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002695_get07_num :
    wordRank000002695.get (7 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002695_get07_mk (h : 7 < 13) :
    wordRank000002695.get ⟨7, h⟩ = PairId.d1m1 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002695_get08_num :
    wordRank000002695.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002695_get08_mk (h : 8 < 13) :
    wordRank000002695.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002695_get09_num :
    wordRank000002695.get (9 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002695_get09_mk (h : 9 < 13) :
    wordRank000002695.get ⟨9, h⟩ = PairId.d111 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002695_get10_num :
    wordRank000002695.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002695_get10_mk (h : 10 < 13) :
    wordRank000002695.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002695_get11_num :
    wordRank000002695.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002695_get11_mk (h : 11 < 13) :
    wordRank000002695.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002695_get12_num :
    wordRank000002695.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002695_get12_mk (h : 12 < 13) :
    wordRank000002695.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002695_rank :
    rankPairWord? wordRank000002695 = some rank000002695 := by
  decide

theorem rank000002695_unrank :
    unrankPairWord rank000002695 = wordRank000002695 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002695 rank000002695).mp
    rank000002695_rank).symm

theorem rank000002695_totalLinear :
    totalLinearOfPairWord wordRank000002695 = { m00 := (41/81), m01 := (-16/81), m02 := (68/81), m10 := (64/81), m11 := (-23/81), m12 := (-44/81), m20 := (28/81), m21 := (76/81), m22 := (1/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002695_axis : Vec3 Rat :=
  { x := (-3/2), y := (-1/2), z := -1 }

def rank000002695_kernel : KernelLineWitness where
  crossFactor := { m00 := -1, m01 := (-5/8), m02 := 0, m10 := (13/8), m11 := (-1/4), m12 := 0, m20 := (11/16), m21 := (17/16), m22 := 0 }

theorem rank000002695_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002695)
      rank000002695_axis rank000002695_kernel = true := by
  rw [rank000002695_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002695_axis,
    rank000002695_kernel]

theorem rank000002695_axisZero :
    AxisDotZeroAtWord wordRank000002695 rank000002695_axis
      (9 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002695_get00_num, wordRank000002695_get01_num, wordRank000002695_get02_num, wordRank000002695_get03_num, wordRank000002695_get04_num, wordRank000002695_get05_num, wordRank000002695_get06_num, wordRank000002695_get07_num, wordRank000002695_get08_num, wordRank000002695_get09_num, wordRank000002695_get10_num, wordRank000002695_get11_num, wordRank000002695_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002695_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002696 : Fin numPairWords :=
  ⟨2696, by decide⟩

def wordRank000002696 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩

@[simp] theorem wordRank000002696_get00_num :
    wordRank000002696.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002696_get00_mk (h : 0 < 13) :
    wordRank000002696.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002696_get01_num :
    wordRank000002696.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002696_get01_mk (h : 1 < 13) :
    wordRank000002696.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002696_get02_num :
    wordRank000002696.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002696_get02_mk (h : 2 < 13) :
    wordRank000002696.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002696_get03_num :
    wordRank000002696.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002696_get03_mk (h : 3 < 13) :
    wordRank000002696.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002696_get04_num :
    wordRank000002696.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002696_get04_mk (h : 4 < 13) :
    wordRank000002696.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002696_get05_num :
    wordRank000002696.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002696_get05_mk (h : 5 < 13) :
    wordRank000002696.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002696_get06_num :
    wordRank000002696.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002696_get06_mk (h : 6 < 13) :
    wordRank000002696.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002696_get07_num :
    wordRank000002696.get (7 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002696_get07_mk (h : 7 < 13) :
    wordRank000002696.get ⟨7, h⟩ = PairId.d1m1 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002696_get08_num :
    wordRank000002696.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002696_get08_mk (h : 8 < 13) :
    wordRank000002696.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002696_get09_num :
    wordRank000002696.get (9 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002696_get09_mk (h : 9 < 13) :
    wordRank000002696.get ⟨9, h⟩ = PairId.d111 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002696_get10_num :
    wordRank000002696.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002696_get10_mk (h : 10 < 13) :
    wordRank000002696.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002696_get11_num :
    wordRank000002696.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002696_get11_mk (h : 11 < 13) :
    wordRank000002696.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002696_get12_num :
    wordRank000002696.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002696_get12_mk (h : 12 < 13) :
    wordRank000002696.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002696_rank :
    rankPairWord? wordRank000002696 = some rank000002696 := by
  decide

theorem rank000002696_unrank :
    unrankPairWord rank000002696 = wordRank000002696 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002696 rank000002696).mp
    rank000002696_rank).symm

theorem rank000002696_totalLinear :
    totalLinearOfPairWord wordRank000002696 = { m00 := (1/9), m01 := (8/9), m02 := (4/9), m10 := (8/9), m11 := (1/9), m12 := (-4/9), m20 := (-4/9), m21 := (4/9), m22 := (-7/9) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002696_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000002696_kernel : KernelLineWitness where
  crossFactor := { m00 := (-1/4), m01 := 0, m02 := (1/2), m10 := (1/4), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (-1/4) }

theorem rank000002696_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002696)
      rank000002696_axis rank000002696_kernel = true := by
  rw [rank000002696_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002696_axis,
    rank000002696_kernel]

theorem rank000002696_axisZero :
    AxisDotZeroAtWord wordRank000002696 rank000002696_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002696_get00_num, wordRank000002696_get01_num, wordRank000002696_get02_num, wordRank000002696_get03_num, wordRank000002696_get04_num, wordRank000002696_get05_num, wordRank000002696_get06_num, wordRank000002696_get07_num, wordRank000002696_get08_num, wordRank000002696_get09_num, wordRank000002696_get10_num, wordRank000002696_get11_num, wordRank000002696_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002696_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002697 : Fin numPairWords :=
  ⟨2697, by decide⟩

def wordRank000002697 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩

@[simp] theorem wordRank000002697_get00_num :
    wordRank000002697.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002697_get00_mk (h : 0 < 13) :
    wordRank000002697.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002697_get01_num :
    wordRank000002697.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002697_get01_mk (h : 1 < 13) :
    wordRank000002697.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002697_get02_num :
    wordRank000002697.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002697_get02_mk (h : 2 < 13) :
    wordRank000002697.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002697_get03_num :
    wordRank000002697.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002697_get03_mk (h : 3 < 13) :
    wordRank000002697.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002697_get04_num :
    wordRank000002697.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002697_get04_mk (h : 4 < 13) :
    wordRank000002697.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002697_get05_num :
    wordRank000002697.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002697_get05_mk (h : 5 < 13) :
    wordRank000002697.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002697_get06_num :
    wordRank000002697.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002697_get06_mk (h : 6 < 13) :
    wordRank000002697.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002697_get07_num :
    wordRank000002697.get (7 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002697_get07_mk (h : 7 < 13) :
    wordRank000002697.get ⟨7, h⟩ = PairId.d1m1 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002697_get08_num :
    wordRank000002697.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002697_get08_mk (h : 8 < 13) :
    wordRank000002697.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002697_get09_num :
    wordRank000002697.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002697_get09_mk (h : 9 < 13) :
    wordRank000002697.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002697_get10_num :
    wordRank000002697.get (10 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002697_get10_mk (h : 10 < 13) :
    wordRank000002697.get ⟨10, h⟩ = PairId.d111 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002697_get11_num :
    wordRank000002697.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002697_get11_mk (h : 11 < 13) :
    wordRank000002697.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002697_get12_num :
    wordRank000002697.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002697_get12_mk (h : 12 < 13) :
    wordRank000002697.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002697_rank :
    rankPairWord? wordRank000002697 = some rank000002697 := by
  decide

theorem rank000002697_unrank :
    unrankPairWord rank000002697 = wordRank000002697 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002697 rank000002697).mp
    rank000002697_rank).symm

theorem rank000002697_totalLinear :
    totalLinearOfPairWord wordRank000002697 = { m00 := (1/9), m01 := (8/9), m02 := (-4/9), m10 := (8/9), m11 := (1/9), m12 := (4/9), m20 := (4/9), m21 := (-4/9), m22 := (-7/9) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002697_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000002697_kernel : KernelLineWitness where
  crossFactor := { m00 := (1/4), m01 := 0, m02 := (1/2), m10 := (-1/4), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (1/4) }

theorem rank000002697_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002697)
      rank000002697_axis rank000002697_kernel = true := by
  rw [rank000002697_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002697_axis,
    rank000002697_kernel]

theorem rank000002697_axisZero :
    AxisDotZeroAtWord wordRank000002697 rank000002697_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002697_get00_num, wordRank000002697_get01_num, wordRank000002697_get02_num, wordRank000002697_get03_num, wordRank000002697_get04_num, wordRank000002697_get05_num, wordRank000002697_get06_num, wordRank000002697_get07_num, wordRank000002697_get08_num, wordRank000002697_get09_num, wordRank000002697_get10_num, wordRank000002697_get11_num, wordRank000002697_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002697_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002698 : Fin numPairWords :=
  ⟨2698, by decide⟩

def wordRank000002698 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.d111, PairId.dm11], by decide⟩

@[simp] theorem wordRank000002698_get00_num :
    wordRank000002698.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002698_get00_mk (h : 0 < 13) :
    wordRank000002698.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002698_get01_num :
    wordRank000002698.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002698_get01_mk (h : 1 < 13) :
    wordRank000002698.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002698_get02_num :
    wordRank000002698.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002698_get02_mk (h : 2 < 13) :
    wordRank000002698.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002698_get03_num :
    wordRank000002698.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002698_get03_mk (h : 3 < 13) :
    wordRank000002698.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002698_get04_num :
    wordRank000002698.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002698_get04_mk (h : 4 < 13) :
    wordRank000002698.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002698_get05_num :
    wordRank000002698.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002698_get05_mk (h : 5 < 13) :
    wordRank000002698.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002698_get06_num :
    wordRank000002698.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002698_get06_mk (h : 6 < 13) :
    wordRank000002698.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002698_get07_num :
    wordRank000002698.get (7 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002698_get07_mk (h : 7 < 13) :
    wordRank000002698.get ⟨7, h⟩ = PairId.d1m1 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002698_get08_num :
    wordRank000002698.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002698_get08_mk (h : 8 < 13) :
    wordRank000002698.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002698_get09_num :
    wordRank000002698.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002698_get09_mk (h : 9 < 13) :
    wordRank000002698.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002698_get10_num :
    wordRank000002698.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002698_get10_mk (h : 10 < 13) :
    wordRank000002698.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002698_get11_num :
    wordRank000002698.get (11 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002698_get11_mk (h : 11 < 13) :
    wordRank000002698.get ⟨11, h⟩ = PairId.d111 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002698_get12_num :
    wordRank000002698.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002698_get12_mk (h : 12 < 13) :
    wordRank000002698.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002698_rank :
    rankPairWord? wordRank000002698 = some rank000002698 := by
  decide

theorem rank000002698_unrank :
    unrankPairWord rank000002698 = wordRank000002698 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002698 rank000002698).mp
    rank000002698_rank).symm

theorem rank000002698_totalLinear :
    totalLinearOfPairWord wordRank000002698 = { m00 := (-23/81), m01 := (64/81), m02 := (-44/81), m10 := (-16/81), m11 := (41/81), m12 := (68/81), m20 := (76/81), m21 := (28/81), m22 := (1/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002698_axis : Vec3 Rat :=
  { x := (-1/2), y := (-3/2), z := -1 }

def rank000002698_kernel : KernelLineWitness where
  crossFactor := { m00 := (1/4), m01 := (-13/8), m02 := 0, m10 := (5/8), m11 := 1, m12 := 0, m20 := (-17/16), m21 := (-11/16), m22 := 0 }

theorem rank000002698_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002698)
      rank000002698_axis rank000002698_kernel = true := by
  rw [rank000002698_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002698_axis,
    rank000002698_kernel]

theorem rank000002698_axisZero :
    AxisDotZeroAtWord wordRank000002698 rank000002698_axis
      (4 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002698_get00_num, wordRank000002698_get01_num, wordRank000002698_get02_num, wordRank000002698_get03_num, wordRank000002698_get04_num, wordRank000002698_get05_num, wordRank000002698_get06_num, wordRank000002698_get07_num, wordRank000002698_get08_num, wordRank000002698_get09_num, wordRank000002698_get10_num, wordRank000002698_get11_num, wordRank000002698_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002698_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002699 : Fin numPairWords :=
  ⟨2699, by decide⟩

def wordRank000002699 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩

@[simp] theorem wordRank000002699_get00_num :
    wordRank000002699.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002699_get00_mk (h : 0 < 13) :
    wordRank000002699.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002699_get01_num :
    wordRank000002699.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002699_get01_mk (h : 1 < 13) :
    wordRank000002699.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002699_get02_num :
    wordRank000002699.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002699_get02_mk (h : 2 < 13) :
    wordRank000002699.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002699_get03_num :
    wordRank000002699.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002699_get03_mk (h : 3 < 13) :
    wordRank000002699.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002699_get04_num :
    wordRank000002699.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002699_get04_mk (h : 4 < 13) :
    wordRank000002699.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002699_get05_num :
    wordRank000002699.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002699_get05_mk (h : 5 < 13) :
    wordRank000002699.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002699_get06_num :
    wordRank000002699.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002699_get06_mk (h : 6 < 13) :
    wordRank000002699.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002699_get07_num :
    wordRank000002699.get (7 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002699_get07_mk (h : 7 < 13) :
    wordRank000002699.get ⟨7, h⟩ = PairId.d1m1 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002699_get08_num :
    wordRank000002699.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002699_get08_mk (h : 8 < 13) :
    wordRank000002699.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002699_get09_num :
    wordRank000002699.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002699_get09_mk (h : 9 < 13) :
    wordRank000002699.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002699_get10_num :
    wordRank000002699.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002699_get10_mk (h : 10 < 13) :
    wordRank000002699.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002699_get11_num :
    wordRank000002699.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002699_get11_mk (h : 11 < 13) :
    wordRank000002699.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002699_get12_num :
    wordRank000002699.get (12 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002699_get12_mk (h : 12 < 13) :
    wordRank000002699.get ⟨12, h⟩ = PairId.d111 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002699_rank :
    rankPairWord? wordRank000002699 = some rank000002699 := by
  decide

theorem rank000002699_unrank :
    unrankPairWord rank000002699 = wordRank000002699 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002699 rank000002699).mp
    rank000002699_rank).symm

theorem rank000002699_totalLinear :
    totalLinearOfPairWord wordRank000002699 = { m00 := (1/9), m01 := (8/9), m02 := (-4/9), m10 := (8/9), m11 := (1/9), m12 := (4/9), m20 := (4/9), m21 := (-4/9), m22 := (-7/9) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002699_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000002699_kernel : KernelLineWitness where
  crossFactor := { m00 := (1/4), m01 := 0, m02 := (1/2), m10 := (-1/4), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (1/4) }

theorem rank000002699_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002699)
      rank000002699_axis rank000002699_kernel = true := by
  rw [rank000002699_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002699_axis,
    rank000002699_kernel]

theorem rank000002699_axisZero :
    AxisDotZeroAtWord wordRank000002699 rank000002699_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002699_get00_num, wordRank000002699_get01_num, wordRank000002699_get02_num, wordRank000002699_get03_num, wordRank000002699_get04_num, wordRank000002699_get05_num, wordRank000002699_get06_num, wordRank000002699_get07_num, wordRank000002699_get08_num, wordRank000002699_get09_num, wordRank000002699_get10_num, wordRank000002699_get11_num, wordRank000002699_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002699_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002700 : Fin numPairWords :=
  ⟨2700, by decide⟩

def wordRank000002700 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d11m, PairId.dm11], by decide⟩

@[simp] theorem wordRank000002700_get00_num :
    wordRank000002700.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002700_get00_mk (h : 0 < 13) :
    wordRank000002700.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002700_get01_num :
    wordRank000002700.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002700_get01_mk (h : 1 < 13) :
    wordRank000002700.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002700_get02_num :
    wordRank000002700.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002700_get02_mk (h : 2 < 13) :
    wordRank000002700.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002700_get03_num :
    wordRank000002700.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002700_get03_mk (h : 3 < 13) :
    wordRank000002700.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002700_get04_num :
    wordRank000002700.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002700_get04_mk (h : 4 < 13) :
    wordRank000002700.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002700_get05_num :
    wordRank000002700.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002700_get05_mk (h : 5 < 13) :
    wordRank000002700.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002700_get06_num :
    wordRank000002700.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002700_get06_mk (h : 6 < 13) :
    wordRank000002700.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002700_get07_num :
    wordRank000002700.get (7 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002700_get07_mk (h : 7 < 13) :
    wordRank000002700.get ⟨7, h⟩ = PairId.d1m1 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002700_get08_num :
    wordRank000002700.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002700_get08_mk (h : 8 < 13) :
    wordRank000002700.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002700_get09_num :
    wordRank000002700.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002700_get09_mk (h : 9 < 13) :
    wordRank000002700.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002700_get10_num :
    wordRank000002700.get (10 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002700_get10_mk (h : 10 < 13) :
    wordRank000002700.get ⟨10, h⟩ = PairId.d111 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002700_get11_num :
    wordRank000002700.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002700_get11_mk (h : 11 < 13) :
    wordRank000002700.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002700_get12_num :
    wordRank000002700.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002700_get12_mk (h : 12 < 13) :
    wordRank000002700.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002700_rank :
    rankPairWord? wordRank000002700 = some rank000002700 := by
  decide

theorem rank000002700_unrank :
    unrankPairWord rank000002700 = wordRank000002700 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002700 rank000002700).mp
    rank000002700_rank).symm

theorem rank000002700_totalLinear :
    totalLinearOfPairWord wordRank000002700 = { m00 := (-55/81), m01 := (-40/81), m02 := (44/81), m10 := (56/81), m11 := (-55/81), m12 := (20/81), m20 := (20/81), m21 := (44/81), m22 := (65/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002700_axis : Vec3 Rat :=
  { x := (-1/4), y := (-1/4), z := -1 }

def rank000002700_kernel : KernelLineWitness where
  crossFactor := { m00 := (-7/32), m01 := (-17/32), m02 := 0, m10 := (17/32), m11 := (-5/32), m12 := 0, m20 := (-5/64), m21 := (11/64), m22 := 0 }

theorem rank000002700_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002700)
      rank000002700_axis rank000002700_kernel = true := by
  rw [rank000002700_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002700_axis,
    rank000002700_kernel]

theorem rank000002700_axisZero :
    AxisDotZeroAtWord wordRank000002700 rank000002700_axis
      (10 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002700_get00_num, wordRank000002700_get01_num, wordRank000002700_get02_num, wordRank000002700_get03_num, wordRank000002700_get04_num, wordRank000002700_get05_num, wordRank000002700_get06_num, wordRank000002700_get07_num, wordRank000002700_get08_num, wordRank000002700_get09_num, wordRank000002700_get10_num, wordRank000002700_get11_num, wordRank000002700_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002700_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002701 : Fin numPairWords :=
  ⟨2701, by decide⟩

def wordRank000002701 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.dm11, PairId.d11m], by decide⟩

@[simp] theorem wordRank000002701_get00_num :
    wordRank000002701.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002701_get00_mk (h : 0 < 13) :
    wordRank000002701.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002701_get01_num :
    wordRank000002701.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002701_get01_mk (h : 1 < 13) :
    wordRank000002701.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002701_get02_num :
    wordRank000002701.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002701_get02_mk (h : 2 < 13) :
    wordRank000002701.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002701_get03_num :
    wordRank000002701.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002701_get03_mk (h : 3 < 13) :
    wordRank000002701.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002701_get04_num :
    wordRank000002701.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002701_get04_mk (h : 4 < 13) :
    wordRank000002701.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002701_get05_num :
    wordRank000002701.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002701_get05_mk (h : 5 < 13) :
    wordRank000002701.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002701_get06_num :
    wordRank000002701.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002701_get06_mk (h : 6 < 13) :
    wordRank000002701.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002701_get07_num :
    wordRank000002701.get (7 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002701_get07_mk (h : 7 < 13) :
    wordRank000002701.get ⟨7, h⟩ = PairId.d1m1 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002701_get08_num :
    wordRank000002701.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002701_get08_mk (h : 8 < 13) :
    wordRank000002701.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002701_get09_num :
    wordRank000002701.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002701_get09_mk (h : 9 < 13) :
    wordRank000002701.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002701_get10_num :
    wordRank000002701.get (10 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002701_get10_mk (h : 10 < 13) :
    wordRank000002701.get ⟨10, h⟩ = PairId.d111 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002701_get11_num :
    wordRank000002701.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002701_get11_mk (h : 11 < 13) :
    wordRank000002701.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002701_get12_num :
    wordRank000002701.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002701_get12_mk (h : 12 < 13) :
    wordRank000002701.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002701_rank :
    rankPairWord? wordRank000002701 = some rank000002701 := by
  decide

theorem rank000002701_unrank :
    unrankPairWord rank000002701 = wordRank000002701 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002701 rank000002701).mp
    rank000002701_rank).symm

theorem rank000002701_totalLinear :
    totalLinearOfPairWord wordRank000002701 = { m00 := (-23/81), m01 := (-16/81), m02 := (76/81), m10 := (64/81), m11 := (41/81), m12 := (28/81), m20 := (-44/81), m21 := (68/81), m22 := (1/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002701_axis : Vec3 Rat :=
  { x := (-1/2), y := (-3/2), z := -1 }

def rank000002701_kernel : KernelLineWitness where
  crossFactor := { m00 := -1, m01 := (-13/8), m02 := 0, m10 := (5/8), m11 := (-1/4), m12 := 0, m20 := (-7/16), m21 := (19/16), m22 := 0 }

theorem rank000002701_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002701)
      rank000002701_axis rank000002701_kernel = true := by
  rw [rank000002701_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002701_axis,
    rank000002701_kernel]

theorem rank000002701_axisZero :
    AxisDotZeroAtWord wordRank000002701 rank000002701_axis
      (4 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002701_get00_num, wordRank000002701_get01_num, wordRank000002701_get02_num, wordRank000002701_get03_num, wordRank000002701_get04_num, wordRank000002701_get05_num, wordRank000002701_get06_num, wordRank000002701_get07_num, wordRank000002701_get08_num, wordRank000002701_get09_num, wordRank000002701_get10_num, wordRank000002701_get11_num, wordRank000002701_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002701_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002702 : Fin numPairWords :=
  ⟨2702, by decide⟩

def wordRank000002702 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d111, PairId.dm11], by decide⟩

@[simp] theorem wordRank000002702_get00_num :
    wordRank000002702.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002702_get00_mk (h : 0 < 13) :
    wordRank000002702.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002702_get01_num :
    wordRank000002702.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002702_get01_mk (h : 1 < 13) :
    wordRank000002702.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002702_get02_num :
    wordRank000002702.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002702_get02_mk (h : 2 < 13) :
    wordRank000002702.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002702_get03_num :
    wordRank000002702.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002702_get03_mk (h : 3 < 13) :
    wordRank000002702.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002702_get04_num :
    wordRank000002702.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002702_get04_mk (h : 4 < 13) :
    wordRank000002702.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002702_get05_num :
    wordRank000002702.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002702_get05_mk (h : 5 < 13) :
    wordRank000002702.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002702_get06_num :
    wordRank000002702.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002702_get06_mk (h : 6 < 13) :
    wordRank000002702.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002702_get07_num :
    wordRank000002702.get (7 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002702_get07_mk (h : 7 < 13) :
    wordRank000002702.get ⟨7, h⟩ = PairId.d1m1 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002702_get08_num :
    wordRank000002702.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002702_get08_mk (h : 8 < 13) :
    wordRank000002702.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002702_get09_num :
    wordRank000002702.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002702_get09_mk (h : 9 < 13) :
    wordRank000002702.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002702_get10_num :
    wordRank000002702.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002702_get10_mk (h : 10 < 13) :
    wordRank000002702.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002702_get11_num :
    wordRank000002702.get (11 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002702_get11_mk (h : 11 < 13) :
    wordRank000002702.get ⟨11, h⟩ = PairId.d111 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002702_get12_num :
    wordRank000002702.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002702_get12_mk (h : 12 < 13) :
    wordRank000002702.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002702_rank :
    rankPairWord? wordRank000002702 = some rank000002702 := by
  decide

theorem rank000002702_unrank :
    unrankPairWord rank000002702 = wordRank000002702 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002702 rank000002702).mp
    rank000002702_rank).symm

theorem rank000002702_totalLinear :
    totalLinearOfPairWord wordRank000002702 = { m00 := (-55/81), m01 := (56/81), m02 := (20/81), m10 := (-40/81), m11 := (-55/81), m12 := (44/81), m20 := (44/81), m21 := (20/81), m22 := (65/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002702_axis : Vec3 Rat :=
  { x := (-1/4), y := (-1/4), z := -1 }

def rank000002702_kernel : KernelLineWitness where
  crossFactor := { m00 := (5/32), m01 := (-17/32), m02 := 0, m10 := (17/32), m11 := (7/32), m12 := 0, m20 := (-11/64), m21 := (5/64), m22 := 0 }

theorem rank000002702_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002702)
      rank000002702_axis rank000002702_kernel = true := by
  rw [rank000002702_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002702_axis,
    rank000002702_kernel]

theorem rank000002702_axisZero :
    AxisDotZeroAtWord wordRank000002702 rank000002702_axis
      (10 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002702_get00_num, wordRank000002702_get01_num, wordRank000002702_get02_num, wordRank000002702_get03_num, wordRank000002702_get04_num, wordRank000002702_get05_num, wordRank000002702_get06_num, wordRank000002702_get07_num, wordRank000002702_get08_num, wordRank000002702_get09_num, wordRank000002702_get10_num, wordRank000002702_get11_num, wordRank000002702_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002702_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002703 : Fin numPairWords :=
  ⟨2703, by decide⟩

def wordRank000002703 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.dm11, PairId.d111], by decide⟩

@[simp] theorem wordRank000002703_get00_num :
    wordRank000002703.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002703_get00_mk (h : 0 < 13) :
    wordRank000002703.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002703_get01_num :
    wordRank000002703.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002703_get01_mk (h : 1 < 13) :
    wordRank000002703.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002703_get02_num :
    wordRank000002703.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002703_get02_mk (h : 2 < 13) :
    wordRank000002703.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002703_get03_num :
    wordRank000002703.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002703_get03_mk (h : 3 < 13) :
    wordRank000002703.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002703_get04_num :
    wordRank000002703.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002703_get04_mk (h : 4 < 13) :
    wordRank000002703.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002703_get05_num :
    wordRank000002703.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002703_get05_mk (h : 5 < 13) :
    wordRank000002703.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002703_get06_num :
    wordRank000002703.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002703_get06_mk (h : 6 < 13) :
    wordRank000002703.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002703_get07_num :
    wordRank000002703.get (7 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002703_get07_mk (h : 7 < 13) :
    wordRank000002703.get ⟨7, h⟩ = PairId.d1m1 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002703_get08_num :
    wordRank000002703.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002703_get08_mk (h : 8 < 13) :
    wordRank000002703.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002703_get09_num :
    wordRank000002703.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002703_get09_mk (h : 9 < 13) :
    wordRank000002703.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002703_get10_num :
    wordRank000002703.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002703_get10_mk (h : 10 < 13) :
    wordRank000002703.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002703_get11_num :
    wordRank000002703.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002703_get11_mk (h : 11 < 13) :
    wordRank000002703.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002703_get12_num :
    wordRank000002703.get (12 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002703_get12_mk (h : 12 < 13) :
    wordRank000002703.get ⟨12, h⟩ = PairId.d111 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002703_rank :
    rankPairWord? wordRank000002703 = some rank000002703 := by
  decide

theorem rank000002703_unrank :
    unrankPairWord rank000002703 = wordRank000002703 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002703 rank000002703).mp
    rank000002703_rank).symm

theorem rank000002703_totalLinear :
    totalLinearOfPairWord wordRank000002703 = { m00 := (41/81), m01 := (64/81), m02 := (28/81), m10 := (-16/81), m11 := (-23/81), m12 := (76/81), m20 := (68/81), m21 := (-44/81), m22 := (1/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002703_axis : Vec3 Rat :=
  { x := (-3/2), y := (-1/2), z := -1 }

def rank000002703_kernel : KernelLineWitness where
  crossFactor := { m00 := (1/4), m01 := (-5/8), m02 := 0, m10 := (13/8), m11 := 1, m12 := 0, m20 := (-19/16), m21 := (7/16), m22 := 0 }

theorem rank000002703_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002703)
      rank000002703_axis rank000002703_kernel = true := by
  rw [rank000002703_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002703_axis,
    rank000002703_kernel]

theorem rank000002703_axisZero :
    AxisDotZeroAtWord wordRank000002703 rank000002703_axis
      (10 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002703_get00_num, wordRank000002703_get01_num, wordRank000002703_get02_num, wordRank000002703_get03_num, wordRank000002703_get04_num, wordRank000002703_get05_num, wordRank000002703_get06_num, wordRank000002703_get07_num, wordRank000002703_get08_num, wordRank000002703_get09_num, wordRank000002703_get10_num, wordRank000002703_get11_num, wordRank000002703_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002703_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002704 : Fin numPairWords :=
  ⟨2704, by decide⟩

def wordRank000002704 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111, PairId.d11m], by decide⟩

@[simp] theorem wordRank000002704_get00_num :
    wordRank000002704.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002704_get00_mk (h : 0 < 13) :
    wordRank000002704.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002704_get01_num :
    wordRank000002704.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002704_get01_mk (h : 1 < 13) :
    wordRank000002704.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002704_get02_num :
    wordRank000002704.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002704_get02_mk (h : 2 < 13) :
    wordRank000002704.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002704_get03_num :
    wordRank000002704.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002704_get03_mk (h : 3 < 13) :
    wordRank000002704.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002704_get04_num :
    wordRank000002704.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002704_get04_mk (h : 4 < 13) :
    wordRank000002704.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002704_get05_num :
    wordRank000002704.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002704_get05_mk (h : 5 < 13) :
    wordRank000002704.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002704_get06_num :
    wordRank000002704.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002704_get06_mk (h : 6 < 13) :
    wordRank000002704.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002704_get07_num :
    wordRank000002704.get (7 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002704_get07_mk (h : 7 < 13) :
    wordRank000002704.get ⟨7, h⟩ = PairId.d1m1 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002704_get08_num :
    wordRank000002704.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002704_get08_mk (h : 8 < 13) :
    wordRank000002704.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002704_get09_num :
    wordRank000002704.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002704_get09_mk (h : 9 < 13) :
    wordRank000002704.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002704_get10_num :
    wordRank000002704.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002704_get10_mk (h : 10 < 13) :
    wordRank000002704.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002704_get11_num :
    wordRank000002704.get (11 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002704_get11_mk (h : 11 < 13) :
    wordRank000002704.get ⟨11, h⟩ = PairId.d111 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002704_get12_num :
    wordRank000002704.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002704_get12_mk (h : 12 < 13) :
    wordRank000002704.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002704_rank :
    rankPairWord? wordRank000002704 = some rank000002704 := by
  decide

theorem rank000002704_unrank :
    unrankPairWord rank000002704 = wordRank000002704 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002704 rank000002704).mp
    rank000002704_rank).symm

theorem rank000002704_totalLinear :
    totalLinearOfPairWord wordRank000002704 = { m00 := (1/9), m01 := (8/9), m02 := (4/9), m10 := (8/9), m11 := (1/9), m12 := (-4/9), m20 := (-4/9), m21 := (4/9), m22 := (-7/9) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002704_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000002704_kernel : KernelLineWitness where
  crossFactor := { m00 := (-1/4), m01 := 0, m02 := (1/2), m10 := (1/4), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (-1/4) }

theorem rank000002704_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002704)
      rank000002704_axis rank000002704_kernel = true := by
  rw [rank000002704_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002704_axis,
    rank000002704_kernel]

theorem rank000002704_axisZero :
    AxisDotZeroAtWord wordRank000002704 rank000002704_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002704_get00_num, wordRank000002704_get01_num, wordRank000002704_get02_num, wordRank000002704_get03_num, wordRank000002704_get04_num, wordRank000002704_get05_num, wordRank000002704_get06_num, wordRank000002704_get07_num, wordRank000002704_get08_num, wordRank000002704_get09_num, wordRank000002704_get10_num, wordRank000002704_get11_num, wordRank000002704_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002704_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


def rank000002705 : Fin numPairWords :=
  ⟨2705, by decide⟩

def wordRank000002705 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d111, PairId.z, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d111], by decide⟩

@[simp] theorem wordRank000002705_get00_num :
    wordRank000002705.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000002705_get00_mk (h : 0 < 13) :
    wordRank000002705.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002705_get01_num :
    wordRank000002705.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002705_get01_mk (h : 1 < 13) :
    wordRank000002705.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002705_get02_num :
    wordRank000002705.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000002705_get02_mk (h : 2 < 13) :
    wordRank000002705.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002705_get03_num :
    wordRank000002705.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002705_get03_mk (h : 3 < 13) :
    wordRank000002705.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002705_get04_num :
    wordRank000002705.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002705_get04_mk (h : 4 < 13) :
    wordRank000002705.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002705_get05_num :
    wordRank000002705.get (5 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000002705_get05_mk (h : 5 < 13) :
    wordRank000002705.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002705_get06_num :
    wordRank000002705.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002705_get06_mk (h : 6 < 13) :
    wordRank000002705.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002705_get07_num :
    wordRank000002705.get (7 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002705_get07_mk (h : 7 < 13) :
    wordRank000002705.get ⟨7, h⟩ = PairId.d1m1 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002705_get08_num :
    wordRank000002705.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000002705_get08_mk (h : 8 < 13) :
    wordRank000002705.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002705_get09_num :
    wordRank000002705.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002705_get09_mk (h : 9 < 13) :
    wordRank000002705.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002705_get10_num :
    wordRank000002705.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000002705_get10_mk (h : 10 < 13) :
    wordRank000002705.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002705_get11_num :
    wordRank000002705.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000002705_get11_mk (h : 11 < 13) :
    wordRank000002705.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000002705_get12_num :
    wordRank000002705.get (12 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000002705_get12_mk (h : 12 < 13) :
    wordRank000002705.get ⟨12, h⟩ = PairId.d111 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide


theorem rank000002705_rank :
    rankPairWord? wordRank000002705 = some rank000002705 := by
  decide

theorem rank000002705_unrank :
    unrankPairWord rank000002705 = wordRank000002705 :=
  ((rankPairWord?_eq_some_iff_unrank wordRank000002705 rank000002705).mp
    rank000002705_rank).symm

theorem rank000002705_totalLinear :
    totalLinearOfPairWord wordRank000002705 = { m00 := (1/9), m01 := (8/9), m02 := (-4/9), m10 := (8/9), m11 := (1/9), m12 := (4/9), m20 := (4/9), m21 := (-4/9), m22 := (-7/9) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num


def rank000002705_axis : Vec3 Rat :=
  { x := -1, y := -1, z := 0 }

def rank000002705_kernel : KernelLineWitness where
  crossFactor := { m00 := (1/4), m01 := 0, m02 := (1/2), m10 := (-1/4), m11 := 0, m12 := (-1/2), m20 := -1, m21 := 0, m22 := (1/4) }

theorem rank000002705_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000002705)
      rank000002705_axis rank000002705_kernel = true := by
  rw [rank000002705_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec, rank000002705_axis,
    rank000002705_kernel]

theorem rank000002705_axisZero :
    AxisDotZeroAtWord wordRank000002705 rank000002705_axis
      (3 : WordIndex) := by
  intro f hf
  cases f <;>
    simp [wordRank000002705_get00_num, wordRank000002705_get01_num, wordRank000002705_get02_num, wordRank000002705_get03_num, wordRank000002705_get04_num, wordRank000002705_get05_num, wordRank000002705_get06_num, wordRank000002705_get07_num, wordRank000002705_get08_num, wordRank000002705_get09_num, wordRank000002705_get10_num, wordRank000002705_get11_num, wordRank000002705_get12_num, pairPrefixLinearNat, pairOfFace, canonicalNormalQ,
      normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer,
      matVec, rank000002705_axis] at hf ⊢ <;>
    first | contradiction | norm_num at hf ⊢


theorem badDirectionPrefix_covers :
    Cuboctahedron.Generated.Coverage.PrefixRankInterval
      badDirectionPairPrefix 2694 2706 := by
  intro raw hlo hhi hlt
  have hRaw : raw = 2694 ∨ raw = 2695 ∨ raw = 2696 ∨ raw = 2697 ∨ raw = 2698 ∨ raw = 2699 ∨ raw = 2700 ∨ raw = 2701 ∨ raw = 2702 ∨ raw = 2703 ∨ raw = 2704 ∨ raw = 2705 := by omega
  rcases hRaw with hRaw | hRaw2695 | hRaw2696 | hRaw2697 | hRaw2698 | hRaw2699 | hRaw2700 | hRaw2701 | hRaw2702 | hRaw2703 | hRaw2704 | hRaw2705
  · subst raw
    have hRank :
        (⟨2694, hlt⟩ : Fin numPairWords) = rank000002694 := by
      ext
      rfl
    rw [hRank, rank000002694_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2695, hlt⟩ : Fin numPairWords) = rank000002695 := by
      ext
      rfl
    rw [hRank, rank000002695_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2696, hlt⟩ : Fin numPairWords) = rank000002696 := by
      ext
      rfl
    rw [hRank, rank000002696_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2697, hlt⟩ : Fin numPairWords) = rank000002697 := by
      ext
      rfl
    rw [hRank, rank000002697_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2698, hlt⟩ : Fin numPairWords) = rank000002698 := by
      ext
      rfl
    rw [hRank, rank000002698_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2699, hlt⟩ : Fin numPairWords) = rank000002699 := by
      ext
      rfl
    rw [hRank, rank000002699_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2700, hlt⟩ : Fin numPairWords) = rank000002700 := by
      ext
      rfl
    rw [hRank, rank000002700_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2701, hlt⟩ : Fin numPairWords) = rank000002701 := by
      ext
      rfl
    rw [hRank, rank000002701_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2702, hlt⟩ : Fin numPairWords) = rank000002702 := by
      ext
      rfl
    rw [hRank, rank000002702_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2703, hlt⟩ : Fin numPairWords) = rank000002703 := by
      ext
      rfl
    rw [hRank, rank000002703_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2704, hlt⟩ : Fin numPairWords) = rank000002704 := by
      ext
      rfl
    rw [hRank, rank000002704_unrank]
    intro i
    fin_cases i <;> decide
  · subst raw
    have hRank :
        (⟨2705, hlt⟩ : Fin numPairWords) = rank000002705 := by
      ext
      rfl
    rw [hRank, rank000002705_unrank]
    intro i
    fin_cases i <;> decide


theorem badDirection_sound
    (raw : Nat) (hlo : 2694 <= raw)
    (hhi : raw < 2706)
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
  have hRaw : raw = 2694 ∨ raw = 2695 ∨ raw = 2696 ∨ raw = 2697 ∨ raw = 2698 ∨ raw = 2699 ∨ raw = 2700 ∨ raw = 2701 ∨ raw = 2702 ∨ raw = 2703 ∨ raw = 2704 ∨ raw = 2705 := by omega
  rcases hRaw with hRaw | hRaw2695 | hRaw2696 | hRaw2697 | hRaw2698 | hRaw2699 | hRaw2700 | hRaw2701 | hRaw2702 | hRaw2703 | hRaw2704 | hRaw2705
  · subst raw
    have hRank :
        (⟨2694, hlt⟩ : Fin numPairWords) = rank000002694 := by
      ext
      rfl
    rw [hRank, rank000002694_unrank] at hM ⊢
    refine ⟨rank000002694_axis, rank000002694_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000002694_kernelCheck
    · exact rank000002694_axisZero
  · subst raw
    have hRank :
        (⟨2695, hlt⟩ : Fin numPairWords) = rank000002695 := by
      ext
      rfl
    rw [hRank, rank000002695_unrank] at hM ⊢
    refine ⟨rank000002695_axis, rank000002695_kernel,
      (9 : WordIndex), ?_, ?_⟩
    · exact rank000002695_kernelCheck
    · exact rank000002695_axisZero
  · subst raw
    have hRank :
        (⟨2696, hlt⟩ : Fin numPairWords) = rank000002696 := by
      ext
      rfl
    rw [hRank, rank000002696_unrank] at hM ⊢
    refine ⟨rank000002696_axis, rank000002696_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000002696_kernelCheck
    · exact rank000002696_axisZero
  · subst raw
    have hRank :
        (⟨2697, hlt⟩ : Fin numPairWords) = rank000002697 := by
      ext
      rfl
    rw [hRank, rank000002697_unrank] at hM ⊢
    refine ⟨rank000002697_axis, rank000002697_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000002697_kernelCheck
    · exact rank000002697_axisZero
  · subst raw
    have hRank :
        (⟨2698, hlt⟩ : Fin numPairWords) = rank000002698 := by
      ext
      rfl
    rw [hRank, rank000002698_unrank] at hM ⊢
    refine ⟨rank000002698_axis, rank000002698_kernel,
      (4 : WordIndex), ?_, ?_⟩
    · exact rank000002698_kernelCheck
    · exact rank000002698_axisZero
  · subst raw
    have hRank :
        (⟨2699, hlt⟩ : Fin numPairWords) = rank000002699 := by
      ext
      rfl
    rw [hRank, rank000002699_unrank] at hM ⊢
    refine ⟨rank000002699_axis, rank000002699_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000002699_kernelCheck
    · exact rank000002699_axisZero
  · subst raw
    have hRank :
        (⟨2700, hlt⟩ : Fin numPairWords) = rank000002700 := by
      ext
      rfl
    rw [hRank, rank000002700_unrank] at hM ⊢
    refine ⟨rank000002700_axis, rank000002700_kernel,
      (10 : WordIndex), ?_, ?_⟩
    · exact rank000002700_kernelCheck
    · exact rank000002700_axisZero
  · subst raw
    have hRank :
        (⟨2701, hlt⟩ : Fin numPairWords) = rank000002701 := by
      ext
      rfl
    rw [hRank, rank000002701_unrank] at hM ⊢
    refine ⟨rank000002701_axis, rank000002701_kernel,
      (4 : WordIndex), ?_, ?_⟩
    · exact rank000002701_kernelCheck
    · exact rank000002701_axisZero
  · subst raw
    have hRank :
        (⟨2702, hlt⟩ : Fin numPairWords) = rank000002702 := by
      ext
      rfl
    rw [hRank, rank000002702_unrank] at hM ⊢
    refine ⟨rank000002702_axis, rank000002702_kernel,
      (10 : WordIndex), ?_, ?_⟩
    · exact rank000002702_kernelCheck
    · exact rank000002702_axisZero
  · subst raw
    have hRank :
        (⟨2703, hlt⟩ : Fin numPairWords) = rank000002703 := by
      ext
      rfl
    rw [hRank, rank000002703_unrank] at hM ⊢
    refine ⟨rank000002703_axis, rank000002703_kernel,
      (10 : WordIndex), ?_, ?_⟩
    · exact rank000002703_kernelCheck
    · exact rank000002703_axisZero
  · subst raw
    have hRank :
        (⟨2704, hlt⟩ : Fin numPairWords) = rank000002704 := by
      ext
      rfl
    rw [hRank, rank000002704_unrank] at hM ⊢
    refine ⟨rank000002704_axis, rank000002704_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000002704_kernelCheck
    · exact rank000002704_axisZero
  · subst raw
    have hRank :
        (⟨2705, hlt⟩ : Fin numPairWords) = rank000002705 := by
      ext
      rfl
    rw [hRank, rank000002705_unrank] at hM ⊢
    refine ⟨rank000002705_axis, rank000002705_kernel,
      (3 : WordIndex), ?_, ?_⟩
    · exact rank000002705_kernelCheck
    · exact rank000002705_axisZero

def badDirectionEvidence :
    Cuboctahedron.Generated.NonIdentity.PrefixPruning.BadDirectionPrefixCert
      2694 2706 where
  pairPrefix := badDirectionPairPrefix
  prefix_covers := badDirectionPrefix_covers
  direction_sound := badDirection_sound

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat
      2694 2706 :=
  badDirectionEvidence.sound

end Cuboctahedron.Generated.PrefixPruningPrototype.DiscoveredBadDirection000002694_000002706
