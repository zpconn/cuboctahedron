import Cuboctahedron.Search.Certificates

/-!
Generated representative non-identity family coverage sample for Step 14E.4.

This file exercises one family leaf covering a nontrivial contiguous
rank interval. It is representative data, not the exhaustive search tree.
-/

namespace Cuboctahedron.Generated.NonIdentity

set_option maxHeartbeats 1600000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

def wordRank000000013 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.dm11, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000000013_get00_num :
    wordRank000000013.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000013_get00_mk (h : 0 < 13) :
    wordRank000000013.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000013_get01_num :
    wordRank000000013.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000013_get01_mk (h : 1 < 13) :
    wordRank000000013.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000013_get02_num :
    wordRank000000013.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000013_get02_mk (h : 2 < 13) :
    wordRank000000013.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000013_get03_num :
    wordRank000000013.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000013_get03_mk (h : 3 < 13) :
    wordRank000000013.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000013_get04_num :
    wordRank000000013.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000013_get04_mk (h : 4 < 13) :
    wordRank000000013.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000013_get05_num :
    wordRank000000013.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000013_get05_mk (h : 5 < 13) :
    wordRank000000013.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000013_get06_num :
    wordRank000000013.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000013_get06_mk (h : 6 < 13) :
    wordRank000000013.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000013_get07_num :
    wordRank000000013.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000013_get07_mk (h : 7 < 13) :
    wordRank000000013.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000013_get08_num :
    wordRank000000013.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000013_get08_mk (h : 8 < 13) :
    wordRank000000013.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000013_get09_num :
    wordRank000000013.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000013_get09_mk (h : 9 < 13) :
    wordRank000000013.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000013_get10_num :
    wordRank000000013.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000013_get10_mk (h : 10 < 13) :
    wordRank000000013.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000013_get11_num :
    wordRank000000013.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000013_get11_mk (h : 11 < 13) :
    wordRank000000013.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000013_get12_num :
    wordRank000000013.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000013_get12_mk (h : 12 < 13) :
    wordRank000000013.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000014 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000014_get00_num :
    wordRank000000014.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000014_get00_mk (h : 0 < 13) :
    wordRank000000014.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000014_get01_num :
    wordRank000000014.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000014_get01_mk (h : 1 < 13) :
    wordRank000000014.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000014_get02_num :
    wordRank000000014.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000014_get02_mk (h : 2 < 13) :
    wordRank000000014.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000014_get03_num :
    wordRank000000014.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000014_get03_mk (h : 3 < 13) :
    wordRank000000014.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000014_get04_num :
    wordRank000000014.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000014_get04_mk (h : 4 < 13) :
    wordRank000000014.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000014_get05_num :
    wordRank000000014.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000014_get05_mk (h : 5 < 13) :
    wordRank000000014.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000014_get06_num :
    wordRank000000014.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000014_get06_mk (h : 6 < 13) :
    wordRank000000014.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000014_get07_num :
    wordRank000000014.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000014_get07_mk (h : 7 < 13) :
    wordRank000000014.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000014_get08_num :
    wordRank000000014.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000014_get08_mk (h : 8 < 13) :
    wordRank000000014.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000014_get09_num :
    wordRank000000014.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000014_get09_mk (h : 9 < 13) :
    wordRank000000014.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000014_get10_num :
    wordRank000000014.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000014_get10_mk (h : 10 < 13) :
    wordRank000000014.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000014_get11_num :
    wordRank000000014.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000014_get11_mk (h : 11 < 13) :
    wordRank000000014.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000014_get12_num :
    wordRank000000014.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000014_get12_mk (h : 12 < 13) :
    wordRank000000014.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000015 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩

@[simp] theorem wordRank000000015_get00_num :
    wordRank000000015.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000015_get00_mk (h : 0 < 13) :
    wordRank000000015.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000015_get01_num :
    wordRank000000015.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000015_get01_mk (h : 1 < 13) :
    wordRank000000015.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000015_get02_num :
    wordRank000000015.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000015_get02_mk (h : 2 < 13) :
    wordRank000000015.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000015_get03_num :
    wordRank000000015.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000015_get03_mk (h : 3 < 13) :
    wordRank000000015.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000015_get04_num :
    wordRank000000015.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000015_get04_mk (h : 4 < 13) :
    wordRank000000015.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000015_get05_num :
    wordRank000000015.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000015_get05_mk (h : 5 < 13) :
    wordRank000000015.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000015_get06_num :
    wordRank000000015.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000015_get06_mk (h : 6 < 13) :
    wordRank000000015.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000015_get07_num :
    wordRank000000015.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000015_get07_mk (h : 7 < 13) :
    wordRank000000015.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000015_get08_num :
    wordRank000000015.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000015_get08_mk (h : 8 < 13) :
    wordRank000000015.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000015_get09_num :
    wordRank000000015.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000015_get09_mk (h : 9 < 13) :
    wordRank000000015.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000015_get10_num :
    wordRank000000015.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000015_get10_mk (h : 10 < 13) :
    wordRank000000015.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000015_get11_num :
    wordRank000000015.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000015_get11_mk (h : 11 < 13) :
    wordRank000000015.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000015_get12_num :
    wordRank000000015.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000015_get12_mk (h : 12 < 13) :
    wordRank000000015.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000102 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000102_get00_num :
    wordRank000000102.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000102_get00_mk (h : 0 < 13) :
    wordRank000000102.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000102_get01_num :
    wordRank000000102.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000102_get01_mk (h : 1 < 13) :
    wordRank000000102.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000102_get02_num :
    wordRank000000102.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000102_get02_mk (h : 2 < 13) :
    wordRank000000102.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000102_get03_num :
    wordRank000000102.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000102_get03_mk (h : 3 < 13) :
    wordRank000000102.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000102_get04_num :
    wordRank000000102.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000102_get04_mk (h : 4 < 13) :
    wordRank000000102.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000102_get05_num :
    wordRank000000102.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000102_get05_mk (h : 5 < 13) :
    wordRank000000102.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000102_get06_num :
    wordRank000000102.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000102_get06_mk (h : 6 < 13) :
    wordRank000000102.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000102_get07_num :
    wordRank000000102.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000102_get07_mk (h : 7 < 13) :
    wordRank000000102.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000102_get08_num :
    wordRank000000102.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000102_get08_mk (h : 8 < 13) :
    wordRank000000102.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000102_get09_num :
    wordRank000000102.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000102_get09_mk (h : 9 < 13) :
    wordRank000000102.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000102_get10_num :
    wordRank000000102.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000102_get10_mk (h : 10 < 13) :
    wordRank000000102.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000102_get11_num :
    wordRank000000102.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000102_get11_mk (h : 11 < 13) :
    wordRank000000102.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000102_get12_num :
    wordRank000000102.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000102_get12_mk (h : 12 < 13) :
    wordRank000000102.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000104 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000104_get00_num :
    wordRank000000104.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000104_get00_mk (h : 0 < 13) :
    wordRank000000104.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000104_get01_num :
    wordRank000000104.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000104_get01_mk (h : 1 < 13) :
    wordRank000000104.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000104_get02_num :
    wordRank000000104.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000104_get02_mk (h : 2 < 13) :
    wordRank000000104.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000104_get03_num :
    wordRank000000104.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000104_get03_mk (h : 3 < 13) :
    wordRank000000104.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000104_get04_num :
    wordRank000000104.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000104_get04_mk (h : 4 < 13) :
    wordRank000000104.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000104_get05_num :
    wordRank000000104.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000104_get05_mk (h : 5 < 13) :
    wordRank000000104.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000104_get06_num :
    wordRank000000104.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000104_get06_mk (h : 6 < 13) :
    wordRank000000104.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000104_get07_num :
    wordRank000000104.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000104_get07_mk (h : 7 < 13) :
    wordRank000000104.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000104_get08_num :
    wordRank000000104.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000104_get08_mk (h : 8 < 13) :
    wordRank000000104.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000104_get09_num :
    wordRank000000104.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000104_get09_mk (h : 9 < 13) :
    wordRank000000104.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000104_get10_num :
    wordRank000000104.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000104_get10_mk (h : 10 < 13) :
    wordRank000000104.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000104_get11_num :
    wordRank000000104.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000104_get11_mk (h : 11 < 13) :
    wordRank000000104.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000104_get12_num :
    wordRank000000104.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000104_get12_mk (h : 12 < 13) :
    wordRank000000104.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000105 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩

@[simp] theorem wordRank000000105_get00_num :
    wordRank000000105.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000105_get00_mk (h : 0 < 13) :
    wordRank000000105.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000105_get01_num :
    wordRank000000105.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000105_get01_mk (h : 1 < 13) :
    wordRank000000105.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000105_get02_num :
    wordRank000000105.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000105_get02_mk (h : 2 < 13) :
    wordRank000000105.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000105_get03_num :
    wordRank000000105.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000105_get03_mk (h : 3 < 13) :
    wordRank000000105.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000105_get04_num :
    wordRank000000105.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000105_get04_mk (h : 4 < 13) :
    wordRank000000105.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000105_get05_num :
    wordRank000000105.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000105_get05_mk (h : 5 < 13) :
    wordRank000000105.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000105_get06_num :
    wordRank000000105.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000105_get06_mk (h : 6 < 13) :
    wordRank000000105.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000105_get07_num :
    wordRank000000105.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000105_get07_mk (h : 7 < 13) :
    wordRank000000105.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000105_get08_num :
    wordRank000000105.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000105_get08_mk (h : 8 < 13) :
    wordRank000000105.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000105_get09_num :
    wordRank000000105.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000105_get09_mk (h : 9 < 13) :
    wordRank000000105.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000105_get10_num :
    wordRank000000105.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000105_get10_mk (h : 10 < 13) :
    wordRank000000105.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000105_get11_num :
    wordRank000000105.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000105_get11_mk (h : 11 < 13) :
    wordRank000000105.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000105_get12_num :
    wordRank000000105.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000105_get12_mk (h : 12 < 13) :
    wordRank000000105.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000159 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩

@[simp] theorem wordRank000000159_get00_num :
    wordRank000000159.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000159_get00_mk (h : 0 < 13) :
    wordRank000000159.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000159_get01_num :
    wordRank000000159.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000159_get01_mk (h : 1 < 13) :
    wordRank000000159.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000159_get02_num :
    wordRank000000159.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000159_get02_mk (h : 2 < 13) :
    wordRank000000159.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000159_get03_num :
    wordRank000000159.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000159_get03_mk (h : 3 < 13) :
    wordRank000000159.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000159_get04_num :
    wordRank000000159.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000159_get04_mk (h : 4 < 13) :
    wordRank000000159.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000159_get05_num :
    wordRank000000159.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000159_get05_mk (h : 5 < 13) :
    wordRank000000159.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000159_get06_num :
    wordRank000000159.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000159_get06_mk (h : 6 < 13) :
    wordRank000000159.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000159_get07_num :
    wordRank000000159.get (7 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000159_get07_mk (h : 7 < 13) :
    wordRank000000159.get ⟨7, h⟩ = PairId.d1m1 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000159_get08_num :
    wordRank000000159.get (8 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000159_get08_mk (h : 8 < 13) :
    wordRank000000159.get ⟨8, h⟩ = PairId.d111 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000159_get09_num :
    wordRank000000159.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000159_get09_mk (h : 9 < 13) :
    wordRank000000159.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000159_get10_num :
    wordRank000000159.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000159_get10_mk (h : 10 < 13) :
    wordRank000000159.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000159_get11_num :
    wordRank000000159.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000159_get11_mk (h : 11 < 13) :
    wordRank000000159.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000159_get12_num :
    wordRank000000159.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000159_get12_mk (h : 12 < 13) :
    wordRank000000159.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def nonIdFamilyBadDirection000Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tppp, Face.tppm, Face.tpmp, Face.tmpp, Face.tppm, Face.tmpp, Face.tpmp], by decide⟩

@[simp] theorem nonIdFamilyBadDirection000Seq_get00_num :
    nonIdFamilyBadDirection000Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get00_mk (h : 0 < 14) :
    nonIdFamilyBadDirection000Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get01_num :
    nonIdFamilyBadDirection000Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get01_mk (h : 1 < 14) :
    nonIdFamilyBadDirection000Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get02_num :
    nonIdFamilyBadDirection000Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get02_mk (h : 2 < 14) :
    nonIdFamilyBadDirection000Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get03_num :
    nonIdFamilyBadDirection000Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get03_mk (h : 3 < 14) :
    nonIdFamilyBadDirection000Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get04_num :
    nonIdFamilyBadDirection000Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get04_mk (h : 4 < 14) :
    nonIdFamilyBadDirection000Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get05_num :
    nonIdFamilyBadDirection000Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get05_mk (h : 5 < 14) :
    nonIdFamilyBadDirection000Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get06_num :
    nonIdFamilyBadDirection000Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get06_mk (h : 6 < 14) :
    nonIdFamilyBadDirection000Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get07_num :
    nonIdFamilyBadDirection000Seq.get (7 : Step14) = Face.tppp := by
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get07_mk (h : 7 < 14) :
    nonIdFamilyBadDirection000Seq.get ⟨7, h⟩ = Face.tppp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get08_num :
    nonIdFamilyBadDirection000Seq.get (8 : Step14) = Face.tppm := by
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get08_mk (h : 8 < 14) :
    nonIdFamilyBadDirection000Seq.get ⟨8, h⟩ = Face.tppm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get09_num :
    nonIdFamilyBadDirection000Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get09_mk (h : 9 < 14) :
    nonIdFamilyBadDirection000Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get10_num :
    nonIdFamilyBadDirection000Seq.get (10 : Step14) = Face.tmpp := by
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get10_mk (h : 10 < 14) :
    nonIdFamilyBadDirection000Seq.get ⟨10, h⟩ = Face.tmpp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get11_num :
    nonIdFamilyBadDirection000Seq.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get11_mk (h : 11 < 14) :
    nonIdFamilyBadDirection000Seq.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get12_num :
    nonIdFamilyBadDirection000Seq.get (12 : Step14) = Face.tmpp := by
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get12_mk (h : 12 < 14) :
    nonIdFamilyBadDirection000Seq.get ⟨12, h⟩ = Face.tmpp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get13_num :
    nonIdFamilyBadDirection000Seq.get (13 : Step14) = Face.tpmp := by
  decide

@[simp] theorem nonIdFamilyBadDirection000Seq_get13_mk (h : 13 < 14) :
    nonIdFamilyBadDirection000Seq.get ⟨13, h⟩ = Face.tpmp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def nonIdFamilyBadDirection000 : NonIdCert where
  word := wordRank000000013
  axis := { x := (-3/2), y := (-5/2), z := -1 }
  kernel := { crossFactor := { m00 := (-19/16), m01 := (-29/8), m02 := 0, m10 := (13/8), m11 := (41/16), m12 := 0, m20 := (-73/32), m21 := (-31/32), m22 := 0 } }
  forcedSeq := nonIdFamilyBadDirection000Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨7, by decide⟩

def nonIdFamilyBadDirection001Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tppp, Face.tppm, Face.tpmp, Face.tmpp, Face.tpmp, Face.tppm, Face.tmpp], by decide⟩

@[simp] theorem nonIdFamilyBadDirection001Seq_get00_num :
    nonIdFamilyBadDirection001Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get00_mk (h : 0 < 14) :
    nonIdFamilyBadDirection001Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get01_num :
    nonIdFamilyBadDirection001Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get01_mk (h : 1 < 14) :
    nonIdFamilyBadDirection001Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get02_num :
    nonIdFamilyBadDirection001Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get02_mk (h : 2 < 14) :
    nonIdFamilyBadDirection001Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get03_num :
    nonIdFamilyBadDirection001Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get03_mk (h : 3 < 14) :
    nonIdFamilyBadDirection001Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get04_num :
    nonIdFamilyBadDirection001Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get04_mk (h : 4 < 14) :
    nonIdFamilyBadDirection001Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get05_num :
    nonIdFamilyBadDirection001Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get05_mk (h : 5 < 14) :
    nonIdFamilyBadDirection001Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get06_num :
    nonIdFamilyBadDirection001Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get06_mk (h : 6 < 14) :
    nonIdFamilyBadDirection001Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get07_num :
    nonIdFamilyBadDirection001Seq.get (7 : Step14) = Face.tppp := by
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get07_mk (h : 7 < 14) :
    nonIdFamilyBadDirection001Seq.get ⟨7, h⟩ = Face.tppp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get08_num :
    nonIdFamilyBadDirection001Seq.get (8 : Step14) = Face.tppm := by
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get08_mk (h : 8 < 14) :
    nonIdFamilyBadDirection001Seq.get ⟨8, h⟩ = Face.tppm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get09_num :
    nonIdFamilyBadDirection001Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get09_mk (h : 9 < 14) :
    nonIdFamilyBadDirection001Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get10_num :
    nonIdFamilyBadDirection001Seq.get (10 : Step14) = Face.tmpp := by
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get10_mk (h : 10 < 14) :
    nonIdFamilyBadDirection001Seq.get ⟨10, h⟩ = Face.tmpp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get11_num :
    nonIdFamilyBadDirection001Seq.get (11 : Step14) = Face.tpmp := by
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get11_mk (h : 11 < 14) :
    nonIdFamilyBadDirection001Seq.get ⟨11, h⟩ = Face.tpmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get12_num :
    nonIdFamilyBadDirection001Seq.get (12 : Step14) = Face.tppm := by
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get12_mk (h : 12 < 14) :
    nonIdFamilyBadDirection001Seq.get ⟨12, h⟩ = Face.tppm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get13_num :
    nonIdFamilyBadDirection001Seq.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem nonIdFamilyBadDirection001Seq_get13_mk (h : 13 < 14) :
    nonIdFamilyBadDirection001Seq.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def nonIdFamilyBadDirection001 : NonIdCert where
  word := wordRank000000014
  axis := { x := (-2/5), y := (-3/5), z := 1 }
  kernel := { crossFactor := { m00 := (79/200), m01 := (17/25), m02 := 0, m10 := (-29/50), m11 := (31/200), m12 := 0, m20 := (-19/100), m21 := (73/200), m22 := 0 } }
  forcedSeq := nonIdFamilyBadDirection001Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨9, by decide⟩

def nonIdFamilyBadDirection002Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tppp, Face.tppm, Face.tpmp, Face.tmpp, Face.tpmp, Face.tmpp, Face.tppm], by decide⟩

@[simp] theorem nonIdFamilyBadDirection002Seq_get00_num :
    nonIdFamilyBadDirection002Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get00_mk (h : 0 < 14) :
    nonIdFamilyBadDirection002Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get01_num :
    nonIdFamilyBadDirection002Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get01_mk (h : 1 < 14) :
    nonIdFamilyBadDirection002Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get02_num :
    nonIdFamilyBadDirection002Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get02_mk (h : 2 < 14) :
    nonIdFamilyBadDirection002Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get03_num :
    nonIdFamilyBadDirection002Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get03_mk (h : 3 < 14) :
    nonIdFamilyBadDirection002Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get04_num :
    nonIdFamilyBadDirection002Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get04_mk (h : 4 < 14) :
    nonIdFamilyBadDirection002Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get05_num :
    nonIdFamilyBadDirection002Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get05_mk (h : 5 < 14) :
    nonIdFamilyBadDirection002Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get06_num :
    nonIdFamilyBadDirection002Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get06_mk (h : 6 < 14) :
    nonIdFamilyBadDirection002Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get07_num :
    nonIdFamilyBadDirection002Seq.get (7 : Step14) = Face.tppp := by
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get07_mk (h : 7 < 14) :
    nonIdFamilyBadDirection002Seq.get ⟨7, h⟩ = Face.tppp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get08_num :
    nonIdFamilyBadDirection002Seq.get (8 : Step14) = Face.tppm := by
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get08_mk (h : 8 < 14) :
    nonIdFamilyBadDirection002Seq.get ⟨8, h⟩ = Face.tppm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get09_num :
    nonIdFamilyBadDirection002Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get09_mk (h : 9 < 14) :
    nonIdFamilyBadDirection002Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get10_num :
    nonIdFamilyBadDirection002Seq.get (10 : Step14) = Face.tmpp := by
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get10_mk (h : 10 < 14) :
    nonIdFamilyBadDirection002Seq.get ⟨10, h⟩ = Face.tmpp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get11_num :
    nonIdFamilyBadDirection002Seq.get (11 : Step14) = Face.tpmp := by
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get11_mk (h : 11 < 14) :
    nonIdFamilyBadDirection002Seq.get ⟨11, h⟩ = Face.tpmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get12_num :
    nonIdFamilyBadDirection002Seq.get (12 : Step14) = Face.tmpp := by
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get12_mk (h : 12 < 14) :
    nonIdFamilyBadDirection002Seq.get ⟨12, h⟩ = Face.tmpp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get13_num :
    nonIdFamilyBadDirection002Seq.get (13 : Step14) = Face.tppm := by
  decide

@[simp] theorem nonIdFamilyBadDirection002Seq_get13_mk (h : 13 < 14) :
    nonIdFamilyBadDirection002Seq.get ⟨13, h⟩ = Face.tppm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def nonIdFamilyBadDirection002 : NonIdCert where
  word := wordRank000000015
  axis := { x := (-1/4), y := (1/4), z := -1 }
  kernel := { crossFactor := { m00 := (-5/8), m01 := (-17/32), m02 := 0, m10 := (17/32), m11 := (-11/16), m12 := 0, m20 := (37/128), m21 := (-5/128), m22 := 0 } }
  forcedSeq := nonIdFamilyBadDirection002Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨8, by decide⟩

theorem nonIdFamilyBadDirection000_totalLinear :
    totalLinearOfPairWord wordRank000000013 = { m00 := (-199/729), m01 := (656/729), m02 := (-248/729), m10 := (304/729), m11 := (313/729), m12 := (584/729), m20 := (632/729), m21 := (56/729), m22 := (-359/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem nonIdFamilyBadDirection000_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000013)
      { x := (-3/2), y := (-5/2), z := -1 }
      { crossFactor := { m00 := (-19/16), m01 := (-29/8), m02 := 0, m10 := (13/8), m11 := (41/16), m12 := 0, m20 := (-73/32), m21 := (-31/32), m22 := 0 } } = true := by
  rw [nonIdFamilyBadDirection000_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem nonIdFamilyBadDirection000_check :
    checkNonIdCert nonIdFamilyBadDirection000 = true := by
  apply checkNonIdCert_badDirectionSign nonIdFamilyBadDirection000 ⟨7, by decide⟩
  · rfl
  · unfold nonIdFamilyBadDirection000 wordRank000000013 ValidPairWord pairCount
    decide
  · change totalLinearOfPairWord wordRank000000013 ≠ matId
    rw [nonIdFamilyBadDirection000_totalLinear]
    intro h
    have hm00 := congrArg Mat3.m00 h
    norm_num [matId] at hm00
  · simpa [nonIdFamilyBadDirection000] using nonIdFamilyBadDirection000_kernelCheck
  · intro f hf
    cases f <;> simp [nonIdFamilyBadDirection000, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem nonIdFamilyBadDirection001_totalLinear :
    totalLinearOfPairWord wordRank000000014 = { m00 := (-359/729), m01 := (-248/729), m02 := (-584/729), m10 := (632/729), m11 := (-199/729), m12 := (-304/729), m20 := (-56/729), m21 := (-656/729), m22 := (313/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem nonIdFamilyBadDirection001_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000014)
      { x := (-2/5), y := (-3/5), z := 1 }
      { crossFactor := { m00 := (79/200), m01 := (17/25), m02 := 0, m10 := (-29/50), m11 := (31/200), m12 := 0, m20 := (-19/100), m21 := (73/200), m22 := 0 } } = true := by
  rw [nonIdFamilyBadDirection001_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem nonIdFamilyBadDirection001_check :
    checkNonIdCert nonIdFamilyBadDirection001 = true := by
  apply checkNonIdCert_badDirectionSign nonIdFamilyBadDirection001 ⟨9, by decide⟩
  · rfl
  · unfold nonIdFamilyBadDirection001 wordRank000000014 ValidPairWord pairCount
    decide
  · change totalLinearOfPairWord wordRank000000014 ≠ matId
    rw [nonIdFamilyBadDirection001_totalLinear]
    intro h
    have hm00 := congrArg Mat3.m00 h
    norm_num [matId] at hm00
  · simpa [nonIdFamilyBadDirection001] using nonIdFamilyBadDirection001_kernelCheck
  · intro f hf
    cases f <;> simp [nonIdFamilyBadDirection001, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem nonIdFamilyBadDirection002_totalLinear :
    totalLinearOfPairWord wordRank000000015 = { m00 := (185/729), m01 := (-704/729), m02 := (-40/729), m10 := (640/729), m11 := (185/729), m12 := (-296/729), m20 := (296/729), m21 := (40/729), m22 := (665/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem nonIdFamilyBadDirection002_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000015)
      { x := (-1/4), y := (1/4), z := -1 }
      { crossFactor := { m00 := (-5/8), m01 := (-17/32), m02 := 0, m10 := (17/32), m11 := (-11/16), m12 := 0, m20 := (37/128), m21 := (-5/128), m22 := 0 } } = true := by
  rw [nonIdFamilyBadDirection002_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem nonIdFamilyBadDirection002_check :
    checkNonIdCert nonIdFamilyBadDirection002 = true := by
  apply checkNonIdCert_badDirectionSign nonIdFamilyBadDirection002 ⟨8, by decide⟩
  · rfl
  · unfold nonIdFamilyBadDirection002 wordRank000000015 ValidPairWord pairCount
    decide
  · change totalLinearOfPairWord wordRank000000015 ≠ matId
    rw [nonIdFamilyBadDirection002_totalLinear]
    intro h
    have hm00 := congrArg Mat3.m00 h
    norm_num [matId] at hm00
  · simpa [nonIdFamilyBadDirection002] using nonIdFamilyBadDirection002_kernelCheck
  · intro f hf
    cases f <;> simp [nonIdFamilyBadDirection002, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem nonIdFamilyBadDirection000_coveredRank :
    checkNonIdCoveredRank 13 nonIdFamilyBadDirection000 = true := by
  decide

theorem nonIdFamilyBadDirection000_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      nonIdFamilyBadDirection000 = true := by
  rfl

theorem nonIdFamilyBadDirection001_coveredRank :
    checkNonIdCoveredRank 14 nonIdFamilyBadDirection001 = true := by
  decide

theorem nonIdFamilyBadDirection001_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      nonIdFamilyBadDirection001 = true := by
  rfl

theorem nonIdFamilyBadDirection002_coveredRank :
    checkNonIdCoveredRank 15 nonIdFamilyBadDirection002 = true := by
  decide

theorem nonIdFamilyBadDirection002_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      nonIdFamilyBadDirection002 = true := by
  rfl

def sampleFamilyInterval : RankInterval where
  startRank := 13
  endRank := 16

def sampleFamilyCert : NonIdFamilyCert where
  name := "sampleBadDirectionFamily"
  failure := NonIdFamilyFailure.badDirectionSign
  coveredRanks := #[13, 14, 15]
  certs := #[nonIdFamilyBadDirection000, nonIdFamilyBadDirection001, nonIdFamilyBadDirection002]

theorem sampleFamilyCert_check :
    checkNonIdFamilyCert sampleFamilyInterval sampleFamilyCert = true := by
  unfold checkNonIdFamilyCert sampleFamilyInterval sampleFamilyCert
  change
      (checkRankInterval { startRank := 13, endRank := 16 } &&
        checkNonIdFamilyEntries
          NonIdFamilyFailure.badDirectionSign
          13 16
          [13, 14, 15]
          [nonIdFamilyBadDirection000, nonIdFamilyBadDirection001, nonIdFamilyBadDirection002]) = true
  simp [checkRankInterval, checkNonIdFamilyEntries,
    nonIdFamilyBadDirection000_coveredRank, nonIdFamilyBadDirection001_coveredRank, nonIdFamilyBadDirection002_coveredRank, nonIdFamilyBadDirection000_check, nonIdFamilyBadDirection001_check, nonIdFamilyBadDirection002_check, nonIdFamilyBadDirection000_familyFailure, nonIdFamilyBadDirection001_familyFailure, nonIdFamilyBadDirection002_familyFailure]
  norm_num [numPairWords]

theorem sampleFamilyLeaf_check :
    checkNonIdCoverageLeaf sampleFamilyInterval
      (NonIdCoverageLeaf.family sampleFamilyCert) = true := by
  unfold checkNonIdCoverageLeaf checkNonIdCoverageLeafPayload
  change
      (checkRankInterval sampleFamilyInterval &&
        checkNonIdFamilyCert sampleFamilyInterval sampleFamilyCert) = true
  rw [sampleFamilyCert_check]
  simp [sampleFamilyInterval, checkRankInterval]
  norm_num [numPairWords]

def sampleFamilyCoverage : NonIdCoverageTree :=
  NonIdCoverageTree.branch sampleFamilyInterval
    [NonIdCoverageTree.leaf sampleFamilyInterval
      (NonIdCoverageLeaf.family sampleFamilyCert)]

theorem sampleFamilyCoverage_check :
    checkNonIdCoverageTree sampleFamilyCoverage = true := by
  unfold checkNonIdCoverageTree sampleFamilyCoverage coverageTreeFuel
  simp [checkNonIdCoverageTreeFuel, checkNonIdCoverageChildrenWith,
    sampleFamilyLeaf_check, checkRankInterval,
    NonIdCoverageTree.interval]
  norm_num [numPairWords, sampleFamilyInterval]

theorem sampleFamilyCoverage_sound
    {r : Fin numPairWords}
    (hcontains : sampleFamilyCoverage.interval.ContainsPairRank r) :
    exists cert : NonIdCert,
      checkNonIdCoveredRank r.val cert = true /\
        checkNonIdCert cert = true :=
  checkNonIdCoverageTree_sound sampleFamilyCoverage_check hcontains

#check Cuboctahedron.Generated.NonIdentity.sampleFamilyCoverage
#check Cuboctahedron.Generated.NonIdentity.sampleFamilyCoverage_sound

end Cuboctahedron.Generated.NonIdentity
