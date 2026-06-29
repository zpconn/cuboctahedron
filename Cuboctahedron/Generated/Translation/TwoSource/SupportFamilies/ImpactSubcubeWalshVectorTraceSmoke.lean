import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TranslationWalshVector

/-!
Generated AP16CM Walsh-vector trace smoke.

This file proves the rank-100805 generated Walsh translation vector by
checking local prefix-step equalities against `TranslationWalshVectorTrace`,
rather than reducing the full 13-step recurrence in one equality.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

private def generatedRank : Fin numPairWords := ⟨100805, by decide⟩

private def generatedWord : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩

private theorem generatedRankWord :
    rankPairWord? generatedWord = some generatedRank := by
  decide

private theorem generatedUnrank :
    unrankPairWord generatedRank = generatedWord := by
  exact (rankPairWord?_eq_some_iff_unrank generatedWord generatedRank).1
    generatedRankWord |>.symm

@[simp] private theorem generatedWord_getFin_00 :
    Vector.get generatedWord (0 : WordIndex) = PairId.x := by
  rfl

@[simp] private theorem generatedWord_get_00
    (h : (0 : Nat) < 13) :
    generatedWord.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] private theorem generatedWord_getFin_01 :
    Vector.get generatedWord (1 : WordIndex) = PairId.y := by
  rfl

@[simp] private theorem generatedWord_get_01
    (h : (1 : Nat) < 13) :
    generatedWord.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] private theorem generatedWord_getFin_02 :
    Vector.get generatedWord (2 : WordIndex) = PairId.y := by
  rfl

@[simp] private theorem generatedWord_get_02
    (h : (2 : Nat) < 13) :
    generatedWord.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] private theorem generatedWord_getFin_03 :
    Vector.get generatedWord (3 : WordIndex) = PairId.dm11 := by
  rfl

@[simp] private theorem generatedWord_get_03
    (h : (3 : Nat) < 13) :
    generatedWord.get ⟨3, h⟩ = PairId.dm11 := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] private theorem generatedWord_getFin_04 :
    Vector.get generatedWord (4 : WordIndex) = PairId.d11m := by
  rfl

@[simp] private theorem generatedWord_get_04
    (h : (4 : Nat) < 13) :
    generatedWord.get ⟨4, h⟩ = PairId.d11m := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] private theorem generatedWord_getFin_05 :
    Vector.get generatedWord (5 : WordIndex) = PairId.z := by
  rfl

@[simp] private theorem generatedWord_get_05
    (h : (5 : Nat) < 13) :
    generatedWord.get ⟨5, h⟩ = PairId.z := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] private theorem generatedWord_getFin_06 :
    Vector.get generatedWord (6 : WordIndex) = PairId.z := by
  rfl

@[simp] private theorem generatedWord_get_06
    (h : (6 : Nat) < 13) :
    generatedWord.get ⟨6, h⟩ = PairId.z := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] private theorem generatedWord_getFin_07 :
    Vector.get generatedWord (7 : WordIndex) = PairId.d111 := by
  rfl

@[simp] private theorem generatedWord_get_07
    (h : (7 : Nat) < 13) :
    generatedWord.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] private theorem generatedWord_getFin_08 :
    Vector.get generatedWord (8 : WordIndex) = PairId.d111 := by
  rfl

@[simp] private theorem generatedWord_get_08
    (h : (8 : Nat) < 13) :
    generatedWord.get ⟨8, h⟩ = PairId.d111 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] private theorem generatedWord_getFin_09 :
    Vector.get generatedWord (9 : WordIndex) = PairId.d1m1 := by
  rfl

@[simp] private theorem generatedWord_get_09
    (h : (9 : Nat) < 13) :
    generatedWord.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] private theorem generatedWord_getFin_10 :
    Vector.get generatedWord (10 : WordIndex) = PairId.d1m1 := by
  rfl

@[simp] private theorem generatedWord_get_10
    (h : (10 : Nat) < 13) :
    generatedWord.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] private theorem generatedWord_getFin_11 :
    Vector.get generatedWord (11 : WordIndex) = PairId.d11m := by
  rfl

@[simp] private theorem generatedWord_get_11
    (h : (11 : Nat) < 13) :
    generatedWord.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] private theorem generatedWord_getFin_12 :
    Vector.get generatedWord (12 : WordIndex) = PairId.dm11 := by
  rfl

@[simp] private theorem generatedWord_get_12
    (h : (12 : Nat) < 13) :
    generatedWord.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

private def generatedPref00_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedPref00_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedPref00_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedPref00 : WalshAffineVec3 where
  x := generatedPref00_x
  y := generatedPref00_y
  z := generatedPref00_z

private def generatedPref01_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedPref01_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedPref01_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedPref01 : WalshAffineVec3 where
  x := generatedPref01_x
  y := generatedPref01_y
  z := generatedPref01_z

private def generatedPref02_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedPref02_y : WalshAffine where
  c := 0
  y := 2
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedPref02_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedPref02 : WalshAffineVec3 where
  x := generatedPref02_x
  y := generatedPref02_y
  z := generatedPref02_z

private def generatedPref03_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedPref03_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedPref03_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedPref03 : WalshAffineVec3 where
  x := generatedPref03_x
  y := generatedPref03_y
  z := generatedPref03_z

private def generatedPref04_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 4/3

private def generatedPref04_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 4/3

private def generatedPref04_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 4/3

private def generatedPref04 : WalshAffineVec3 where
  x := generatedPref04_x
  y := generatedPref04_y
  z := generatedPref04_z

private def generatedPref05_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := 0
  d11m := -4/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref05_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 0
  d11m := 20/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref05_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -4/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref05 : WalshAffineVec3 where
  x := generatedPref05_x
  y := generatedPref05_y
  z := generatedPref05_z

private def generatedPref06_x : WalshAffine where
  c := -2
  y := 0
  z := -16/9
  d111 := 0
  d11m := -4/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref06_y : WalshAffine where
  c := 0
  y := 4
  z := 8/9
  d111 := 0
  d11m := 20/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref06_z : WalshAffine where
  c := 0
  y := 0
  z := 2/9
  d111 := 0
  d11m := -4/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref06 : WalshAffineVec3 where
  x := generatedPref06_x
  y := generatedPref06_y
  z := generatedPref06_z

private def generatedPref07_x : WalshAffine where
  c := -2
  y := 0
  z := -32/9
  d111 := 0
  d11m := -4/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref07_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := 0
  d11m := 20/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref07_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 0
  d11m := -4/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref07 : WalshAffineVec3 where
  x := generatedPref07_x
  y := generatedPref07_y
  z := generatedPref07_z

private def generatedPref08_x : WalshAffine where
  c := -2
  y := 0
  z := -32/9
  d111 := -52/27
  d11m := -4/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref08_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -28/27
  d11m := 20/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref08_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 20/27
  d11m := -4/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref08 : WalshAffineVec3 where
  x := generatedPref08_x
  y := generatedPref08_y
  z := generatedPref08_z

private def generatedPref09_x : WalshAffine where
  c := -2
  y := 0
  z := -32/9
  d111 := -104/27
  d11m := -4/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref09_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -56/27
  d11m := 20/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref09_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 40/27
  d11m := -4/9
  d1m1 := 0
  dm11 := 4/3

private def generatedPref09 : WalshAffineVec3 where
  x := generatedPref09_x
  y := generatedPref09_y
  z := generatedPref09_z

private def generatedPref10_x : WalshAffine where
  c := -2
  y := 0
  z := -32/9
  d111 := -104/27
  d11m := -4/9
  d1m1 := -20/27
  dm11 := 4/3

private def generatedPref10_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -56/27
  d11m := 20/9
  d1m1 := 28/27
  dm11 := 4/3

private def generatedPref10_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 40/27
  d11m := -4/9
  d1m1 := 52/27
  dm11 := 4/3

private def generatedPref10 : WalshAffineVec3 where
  x := generatedPref10_x
  y := generatedPref10_y
  z := generatedPref10_z

private def generatedPref11_x : WalshAffine where
  c := -2
  y := 0
  z := -32/9
  d111 := -104/27
  d11m := -4/9
  d1m1 := -40/27
  dm11 := 4/3

private def generatedPref11_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -56/27
  d11m := 20/9
  d1m1 := 56/27
  dm11 := 4/3

private def generatedPref11_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 40/27
  d11m := -4/9
  d1m1 := 104/27
  dm11 := 4/3

private def generatedPref11 : WalshAffineVec3 where
  x := generatedPref11_x
  y := generatedPref11_y
  z := generatedPref11_z

private def generatedPref12_x : WalshAffine where
  c := -2
  y := 0
  z := -32/9
  d111 := -104/27
  d11m := -8/9
  d1m1 := -40/27
  dm11 := 4/3

private def generatedPref12_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -56/27
  d11m := 40/9
  d1m1 := 56/27
  dm11 := 4/3

private def generatedPref12_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 40/27
  d11m := -8/9
  d1m1 := 104/27
  dm11 := 4/3

private def generatedPref12 : WalshAffineVec3 where
  x := generatedPref12_x
  y := generatedPref12_y
  z := generatedPref12_z

private def generatedPref13_x : WalshAffine where
  c := -2
  y := 0
  z := -32/9
  d111 := -104/27
  d11m := -8/9
  d1m1 := -40/27
  dm11 := 8/3

private def generatedPref13_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -56/27
  d11m := 40/9
  d1m1 := 56/27
  dm11 := 8/3

private def generatedPref13_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 40/27
  d11m := -8/9
  d1m1 := 104/27
  dm11 := 8/3

private def generatedPref13 : WalshAffineVec3 where
  x := generatedPref13_x
  y := generatedPref13_y
  z := generatedPref13_z

private def generatedVector_x : WalshAffine where
  c := -4
  y := 0
  z := -32/9
  d111 := -104/27
  d11m := -8/9
  d1m1 := -40/27
  dm11 := 8/3

private def generatedVector_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -56/27
  d11m := 40/9
  d1m1 := 56/27
  dm11 := 8/3

private def generatedVector_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 40/27
  d11m := -8/9
  d1m1 := 104/27
  dm11 := 8/3

private def generatedVector : WalshAffineVec3 where
  x := generatedVector_x
  y := generatedVector_y
  z := generatedVector_z

private def generatedPrefix : Nat -> WalshAffineVec3
  | 0 => generatedPref00
  | 1 => generatedPref01
  | 2 => generatedPref02
  | 3 => generatedPref03
  | 4 => generatedPref04
  | 5 => generatedPref05
  | 6 => generatedPref06
  | 7 => generatedPref07
  | 8 => generatedPref08
  | 9 => generatedPref09
  | 10 => generatedPref10
  | 11 => generatedPref11
  | 12 => generatedPref12
  | 13 => generatedPref13
  | _ => generatedPref13

private theorem generatedTrace_zero :
    generatedPrefix 0 = WalshAffineVec3.zero := by
  norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, generatedPref00, generatedPref00_x, generatedPref00_y, generatedPref00_z,
    WalshAffineVec3.zero]

private theorem generatedTrace_step_00 :
    generatedPrefix (0 + 1) =
      translationPrefixWalshStepAt generatedWord (0 : WordIndex)
        (generatedPrefix 0) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref00, generatedPref00_x, generatedPref00_y, generatedPref00_z, generatedPref01, generatedPref01_x, generatedPref01_y, generatedPref01_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref00, generatedPref00_x, generatedPref00_y, generatedPref00_z, generatedPref01, generatedPref01_x, generatedPref01_y, generatedPref01_z]

private theorem generatedTrace_step_01 :
    generatedPrefix (1 + 1) =
      translationPrefixWalshStepAt generatedWord (1 : WordIndex)
        (generatedPrefix 1) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref01, generatedPref01_x, generatedPref01_y, generatedPref01_z, generatedPref02, generatedPref02_x, generatedPref02_y, generatedPref02_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref01, generatedPref01_x, generatedPref01_y, generatedPref01_z, generatedPref02, generatedPref02_x, generatedPref02_y, generatedPref02_z]

private theorem generatedTrace_step_02 :
    generatedPrefix (2 + 1) =
      translationPrefixWalshStepAt generatedWord (2 : WordIndex)
        (generatedPrefix 2) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref02, generatedPref02_x, generatedPref02_y, generatedPref02_z, generatedPref03, generatedPref03_x, generatedPref03_y, generatedPref03_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref02, generatedPref02_x, generatedPref02_y, generatedPref02_z, generatedPref03, generatedPref03_x, generatedPref03_y, generatedPref03_z]

private theorem generatedTrace_step_03 :
    generatedPrefix (3 + 1) =
      translationPrefixWalshStepAt generatedWord (3 : WordIndex)
        (generatedPrefix 3) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref03, generatedPref03_x, generatedPref03_y, generatedPref03_z, generatedPref04, generatedPref04_x, generatedPref04_y, generatedPref04_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref03, generatedPref03_x, generatedPref03_y, generatedPref03_z, generatedPref04, generatedPref04_x, generatedPref04_y, generatedPref04_z]

private theorem generatedTrace_step_04 :
    generatedPrefix (4 + 1) =
      translationPrefixWalshStepAt generatedWord (4 : WordIndex)
        (generatedPrefix 4) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref04, generatedPref04_x, generatedPref04_y, generatedPref04_z, generatedPref05, generatedPref05_x, generatedPref05_y, generatedPref05_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref04, generatedPref04_x, generatedPref04_y, generatedPref04_z, generatedPref05, generatedPref05_x, generatedPref05_y, generatedPref05_z]

private theorem generatedTrace_step_05 :
    generatedPrefix (5 + 1) =
      translationPrefixWalshStepAt generatedWord (5 : WordIndex)
        (generatedPrefix 5) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref05, generatedPref05_x, generatedPref05_y, generatedPref05_z, generatedPref06, generatedPref06_x, generatedPref06_y, generatedPref06_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref05, generatedPref05_x, generatedPref05_y, generatedPref05_z, generatedPref06, generatedPref06_x, generatedPref06_y, generatedPref06_z]

private theorem generatedTrace_step_06 :
    generatedPrefix (6 + 1) =
      translationPrefixWalshStepAt generatedWord (6 : WordIndex)
        (generatedPrefix 6) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref06, generatedPref06_x, generatedPref06_y, generatedPref06_z, generatedPref07, generatedPref07_x, generatedPref07_y, generatedPref07_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref06, generatedPref06_x, generatedPref06_y, generatedPref06_z, generatedPref07, generatedPref07_x, generatedPref07_y, generatedPref07_z]

private theorem generatedTrace_step_07 :
    generatedPrefix (7 + 1) =
      translationPrefixWalshStepAt generatedWord (7 : WordIndex)
        (generatedPrefix 7) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref07, generatedPref07_x, generatedPref07_y, generatedPref07_z, generatedPref08, generatedPref08_x, generatedPref08_y, generatedPref08_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref07, generatedPref07_x, generatedPref07_y, generatedPref07_z, generatedPref08, generatedPref08_x, generatedPref08_y, generatedPref08_z]

private theorem generatedTrace_step_08 :
    generatedPrefix (8 + 1) =
      translationPrefixWalshStepAt generatedWord (8 : WordIndex)
        (generatedPrefix 8) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref08, generatedPref08_x, generatedPref08_y, generatedPref08_z, generatedPref09, generatedPref09_x, generatedPref09_y, generatedPref09_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref08, generatedPref08_x, generatedPref08_y, generatedPref08_z, generatedPref09, generatedPref09_x, generatedPref09_y, generatedPref09_z]

private theorem generatedTrace_step_09 :
    generatedPrefix (9 + 1) =
      translationPrefixWalshStepAt generatedWord (9 : WordIndex)
        (generatedPrefix 9) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref09, generatedPref09_x, generatedPref09_y, generatedPref09_z, generatedPref10, generatedPref10_x, generatedPref10_y, generatedPref10_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref09, generatedPref09_x, generatedPref09_y, generatedPref09_z, generatedPref10, generatedPref10_x, generatedPref10_y, generatedPref10_z]

private theorem generatedTrace_step_10 :
    generatedPrefix (10 + 1) =
      translationPrefixWalshStepAt generatedWord (10 : WordIndex)
        (generatedPrefix 10) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref10, generatedPref10_x, generatedPref10_y, generatedPref10_z, generatedPref11, generatedPref11_x, generatedPref11_y, generatedPref11_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref10, generatedPref10_x, generatedPref10_y, generatedPref10_z, generatedPref11, generatedPref11_x, generatedPref11_y, generatedPref11_z]

private theorem generatedTrace_step_11 :
    generatedPrefix (11 + 1) =
      translationPrefixWalshStepAt generatedWord (11 : WordIndex)
        (generatedPrefix 11) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref11, generatedPref11_x, generatedPref11_y, generatedPref11_z, generatedPref12, generatedPref12_x, generatedPref12_y, generatedPref12_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref11, generatedPref11_x, generatedPref11_y, generatedPref11_z, generatedPref12, generatedPref12_x, generatedPref12_y, generatedPref12_z]

private theorem generatedTrace_step_12 :
    generatedPrefix (12 + 1) =
      translationPrefixWalshStepAt generatedWord (12 : WordIndex)
        (generatedPrefix 12) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref12, generatedPref12_x, generatedPref12_y, generatedPref12_z, generatedPref13, generatedPref13_x, generatedPref13_y, generatedPref13_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref12, generatedPref12_x, generatedPref12_y, generatedPref12_z, generatedPref13, generatedPref13_x, generatedPref13_y, generatedPref13_z]

private theorem generatedTrace_final :
    generatedVector =
      WalshAffineVec3.add (generatedPrefix 13)
        (WalshAffineVec3.const
          (matVec (pairPrefixLinearNat generatedWord 13)
            (pairReflectionDeltaQ PairId.x))) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, generatedVector, generatedVector_x, generatedVector_y, generatedVector_z, generatedPref13, generatedPref13_x, generatedPref13_y, generatedPref13_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, generatedVector, generatedVector_x, generatedVector_y, generatedVector_z, generatedPref13, generatedPref13_x, generatedPref13_y, generatedPref13_z]

private def generatedTrace :
    TranslationWalshVectorTrace generatedWord generatedVector where
  pref := generatedPrefix
  zero_eq := generatedTrace_zero
  step_eq := by
    intro i
    fin_cases i
    · exact generatedTrace_step_00
    · exact generatedTrace_step_01
    · exact generatedTrace_step_02
    · exact generatedTrace_step_03
    · exact generatedTrace_step_04
    · exact generatedTrace_step_05
    · exact generatedTrace_step_06
    · exact generatedTrace_step_07
    · exact generatedTrace_step_08
    · exact generatedTrace_step_09
    · exact generatedTrace_step_10
    · exact generatedTrace_step_11
    · exact generatedTrace_step_12
  final_eq := generatedTrace_final

theorem generatedVector_eq_translationVectorWalsh :
    generatedVector = translationVectorWalshOfChoice generatedWord :=
  TranslationWalshVectorTrace.final_eq_translationVectorWalsh generatedTrace

theorem generatedVector_eval_eq_translationVector (mask : SignMask) :
    generatedVector.eval mask = translationVectorOfChoice generatedWord mask := by
  rw [generatedVector_eq_translationVectorWalsh,
    translationVectorWalshOfChoice_eval]

theorem generatedUnrank_builds :
    unrankPairWord generatedRank = generatedWord :=
  generatedUnrank

theorem walshVectorTraceSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceSmoke
