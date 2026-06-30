import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TranslationWalshVector

/-!
Generated AP16DK split Walsh-vector trace data for rank `149`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank149SplitSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def generatedRank : Fin numPairWords := ⟨149, by decide⟩

def generatedWord : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩

theorem generatedRankWord :
    rankPairWord? generatedWord = some generatedRank := by
  decide

theorem generatedUnrank :
    unrankPairWord generatedRank = generatedWord := by
  exact (rankPairWord?_eq_some_iff_unrank generatedWord generatedRank).1
    generatedRankWord |>.symm

@[simp] theorem generatedWord_getFin_00 :
    Vector.get generatedWord (0 : WordIndex) = PairId.x := by
  rfl

@[simp] theorem generatedWord_get_00
    (h : (0 : Nat) < 13) :
    generatedWord.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] theorem generatedWord_getFin_01 :
    Vector.get generatedWord (1 : WordIndex) = PairId.y := by
  rfl

@[simp] theorem generatedWord_get_01
    (h : (1 : Nat) < 13) :
    generatedWord.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] theorem generatedWord_getFin_02 :
    Vector.get generatedWord (2 : WordIndex) = PairId.y := by
  rfl

@[simp] theorem generatedWord_get_02
    (h : (2 : Nat) < 13) :
    generatedWord.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] theorem generatedWord_getFin_03 :
    Vector.get generatedWord (3 : WordIndex) = PairId.z := by
  rfl

@[simp] theorem generatedWord_get_03
    (h : (3 : Nat) < 13) :
    generatedWord.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] theorem generatedWord_getFin_04 :
    Vector.get generatedWord (4 : WordIndex) = PairId.z := by
  rfl

@[simp] theorem generatedWord_get_04
    (h : (4 : Nat) < 13) :
    generatedWord.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] theorem generatedWord_getFin_05 :
    Vector.get generatedWord (5 : WordIndex) = PairId.d111 := by
  rfl

@[simp] theorem generatedWord_get_05
    (h : (5 : Nat) < 13) :
    generatedWord.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] theorem generatedWord_getFin_06 :
    Vector.get generatedWord (6 : WordIndex) = PairId.d11m := by
  rfl

@[simp] theorem generatedWord_get_06
    (h : (6 : Nat) < 13) :
    generatedWord.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] theorem generatedWord_getFin_07 :
    Vector.get generatedWord (7 : WordIndex) = PairId.d11m := by
  rfl

@[simp] theorem generatedWord_get_07
    (h : (7 : Nat) < 13) :
    generatedWord.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] theorem generatedWord_getFin_08 :
    Vector.get generatedWord (8 : WordIndex) = PairId.dm11 := by
  rfl

@[simp] theorem generatedWord_get_08
    (h : (8 : Nat) < 13) :
    generatedWord.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] theorem generatedWord_getFin_09 :
    Vector.get generatedWord (9 : WordIndex) = PairId.dm11 := by
  rfl

@[simp] theorem generatedWord_get_09
    (h : (9 : Nat) < 13) :
    generatedWord.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] theorem generatedWord_getFin_10 :
    Vector.get generatedWord (10 : WordIndex) = PairId.d1m1 := by
  rfl

@[simp] theorem generatedWord_get_10
    (h : (10 : Nat) < 13) :
    generatedWord.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] theorem generatedWord_getFin_11 :
    Vector.get generatedWord (11 : WordIndex) = PairId.d1m1 := by
  rfl

@[simp] theorem generatedWord_get_11
    (h : (11 : Nat) < 13) :
    generatedWord.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

@[simp] theorem generatedWord_getFin_12 :
    Vector.get generatedWord (12 : WordIndex) = PairId.d111 := by
  rfl

@[simp] theorem generatedWord_get_12
    (h : (12 : Nat) < 13) :
    generatedWord.get ⟨12, h⟩ = PairId.d111 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  rfl

def generatedPref00_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref00_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref00_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref00 : WalshAffineVec3 where
  x := generatedPref00_x
  y := generatedPref00_y
  z := generatedPref00_z

def generatedPref01_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref01_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref01_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref01 : WalshAffineVec3 where
  x := generatedPref01_x
  y := generatedPref01_y
  z := generatedPref01_z

def generatedPref02_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref02_y : WalshAffine where
  c := 0
  y := 2
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref02_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref02 : WalshAffineVec3 where
  x := generatedPref02_x
  y := generatedPref02_y
  z := generatedPref02_z

def generatedPref03_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref03_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref03_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref03 : WalshAffineVec3 where
  x := generatedPref03_x
  y := generatedPref03_y
  z := generatedPref03_z

def generatedPref04_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref04_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref04_z : WalshAffine where
  c := 0
  y := 0
  z := 2
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref04 : WalshAffineVec3 where
  x := generatedPref04_x
  y := generatedPref04_y
  z := generatedPref04_z

def generatedPref05_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref05_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref05_z : WalshAffine where
  c := 0
  y := 0
  z := 4
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref05 : WalshAffineVec3 where
  x := generatedPref05_x
  y := generatedPref05_y
  z := generatedPref05_z

def generatedPref06_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := -4/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref06_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 4/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref06_z : WalshAffine where
  c := 0
  y := 0
  z := 4
  d111 := 4/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedPref06 : WalshAffineVec3 where
  x := generatedPref06_x
  y := generatedPref06_y
  z := generatedPref06_z

def generatedPref07_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := -4/3
  d11m := -4/9
  d1m1 := 0
  dm11 := 0

def generatedPref07_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 4/3
  d11m := 4/9
  d1m1 := 0
  dm11 := 0

def generatedPref07_z : WalshAffine where
  c := 0
  y := 0
  z := 4
  d111 := 4/3
  d11m := -20/9
  d1m1 := 0
  dm11 := 0

def generatedPref07 : WalshAffineVec3 where
  x := generatedPref07_x
  y := generatedPref07_y
  z := generatedPref07_z

def generatedPref08_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := -4/3
  d11m := -8/9
  d1m1 := 0
  dm11 := 0

def generatedPref08_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 4/3
  d11m := 8/9
  d1m1 := 0
  dm11 := 0

def generatedPref08_z : WalshAffine where
  c := 0
  y := 0
  z := 4
  d111 := 4/3
  d11m := -40/9
  d1m1 := 0
  dm11 := 0

def generatedPref08 : WalshAffineVec3 where
  x := generatedPref08_x
  y := generatedPref08_y
  z := generatedPref08_z

def generatedPref09_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := -4/3
  d11m := -8/9
  d1m1 := 0
  dm11 := 20/9

def generatedPref09_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 4/3
  d11m := 8/9
  d1m1 := 0
  dm11 := 4/9

def generatedPref09_z : WalshAffine where
  c := 0
  y := 0
  z := 4
  d111 := 4/3
  d11m := -40/9
  d1m1 := 0
  dm11 := 4/9

def generatedPref09 : WalshAffineVec3 where
  x := generatedPref09_x
  y := generatedPref09_y
  z := generatedPref09_z

def generatedPref10_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := -4/3
  d11m := -8/9
  d1m1 := 0
  dm11 := 40/9

def generatedPref10_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 4/3
  d11m := 8/9
  d1m1 := 0
  dm11 := 8/9

def generatedPref10_z : WalshAffine where
  c := 0
  y := 0
  z := 4
  d111 := 4/3
  d11m := -40/9
  d1m1 := 0
  dm11 := 8/9

def generatedPref10 : WalshAffineVec3 where
  x := generatedPref10_x
  y := generatedPref10_y
  z := generatedPref10_z

def generatedPref11_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := -4/3
  d11m := -8/9
  d1m1 := -4/9
  dm11 := 40/9

def generatedPref11_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 4/3
  d11m := 8/9
  d1m1 := -20/9
  dm11 := 8/9

def generatedPref11_z : WalshAffine where
  c := 0
  y := 0
  z := 4
  d111 := 4/3
  d11m := -40/9
  d1m1 := 4/9
  dm11 := 8/9

def generatedPref11 : WalshAffineVec3 where
  x := generatedPref11_x
  y := generatedPref11_y
  z := generatedPref11_z

def generatedPref12_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := -4/3
  d11m := -8/9
  d1m1 := -8/9
  dm11 := 40/9

def generatedPref12_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 4/3
  d11m := 8/9
  d1m1 := -40/9
  dm11 := 8/9

def generatedPref12_z : WalshAffine where
  c := 0
  y := 0
  z := 4
  d111 := 4/3
  d11m := -40/9
  d1m1 := 8/9
  dm11 := 8/9

def generatedPref12 : WalshAffineVec3 where
  x := generatedPref12_x
  y := generatedPref12_y
  z := generatedPref12_z

def generatedPref13_x : WalshAffine where
  c := -2
  y := 0
  z := 0
  d111 := -8/3
  d11m := -8/9
  d1m1 := -8/9
  dm11 := 40/9

def generatedPref13_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 8/3
  d11m := 8/9
  d1m1 := -40/9
  dm11 := 8/9

def generatedPref13_z : WalshAffine where
  c := 0
  y := 0
  z := 4
  d111 := 8/3
  d11m := -40/9
  d1m1 := 8/9
  dm11 := 8/9

def generatedPref13 : WalshAffineVec3 where
  x := generatedPref13_x
  y := generatedPref13_y
  z := generatedPref13_z

def generatedVector_x : WalshAffine where
  c := -4
  y := 0
  z := 0
  d111 := -8/3
  d11m := -8/9
  d1m1 := -8/9
  dm11 := 40/9

def generatedVector_y : WalshAffine where
  c := 0
  y := 4
  z := 0
  d111 := 8/3
  d11m := 8/9
  d1m1 := -40/9
  dm11 := 8/9

def generatedVector_z : WalshAffine where
  c := 0
  y := 0
  z := 4
  d111 := 8/3
  d11m := -40/9
  d1m1 := 8/9
  dm11 := 8/9

def generatedVector : WalshAffineVec3 where
  x := generatedVector_x
  y := generatedVector_y
  z := generatedVector_z

def generatedPrefix : Nat -> WalshAffineVec3
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

theorem splitTraceData_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank149SplitSmoke
