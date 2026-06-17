import Cuboctahedron.Search.Certificates

/-!
Generated representative non-identity family coverage sample for Step 14E.4.

This file exercises a sparse forest of family leaves.  Each leaf covers
a contiguous rank interval whose certificates all share the same exact
failure kind. It is representative data, not the exhaustive search tree.
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

def nonIdFamilyBadDirection000Coverage : CanonicalPairCoverage :=
  { rawRank := 13, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.dm11, PairId.d1m1], by decide⟩, canonical := { rank := 13, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.dm11, PairId.d1m1], by decide⟩ }, rawToCanonicalTransformId := 0, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := false }, canonicalToRawTransformId := 0, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := false } }

theorem nonIdFamilyBadDirection000Coverage_check :
    checkCanonicalPairCoverage nonIdFamilyBadDirection000Coverage = true := by
  decide

theorem nonIdFamilyBadDirection000Coverage_canonicalRank :
    nonIdFamilyBadDirection000Coverage.canonical.rank = 13 := by
  decide

theorem nonIdFamilyBadDirection000Coverage_coveredRank :
    checkNonIdCoveredRank nonIdFamilyBadDirection000Coverage.rawRank nonIdFamilyBadDirection000 = true := by
  decide

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

def nonIdFamilyBadDirection001Coverage : CanonicalPairCoverage :=
  { rawRank := 14, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩, canonical := { rank := 14, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩ }, rawToCanonicalTransformId := 0, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := false }, canonicalToRawTransformId := 0, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := false } }

theorem nonIdFamilyBadDirection001Coverage_check :
    checkCanonicalPairCoverage nonIdFamilyBadDirection001Coverage = true := by
  decide

theorem nonIdFamilyBadDirection001Coverage_canonicalRank :
    nonIdFamilyBadDirection001Coverage.canonical.rank = 14 := by
  decide

theorem nonIdFamilyBadDirection001Coverage_coveredRank :
    checkNonIdCoveredRank nonIdFamilyBadDirection001Coverage.rawRank nonIdFamilyBadDirection001 = true := by
  decide

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

def nonIdFamilyBadDirection002Coverage : CanonicalPairCoverage :=
  { rawRank := 15, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩, canonical := { rank := 15, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩ }, rawToCanonicalTransformId := 0, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := false }, canonicalToRawTransformId := 0, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := false } }

theorem nonIdFamilyBadDirection002Coverage_check :
    checkCanonicalPairCoverage nonIdFamilyBadDirection002Coverage = true := by
  decide

theorem nonIdFamilyBadDirection002Coverage_canonicalRank :
    nonIdFamilyBadDirection002Coverage.canonical.rank = 15 := by
  decide

theorem nonIdFamilyBadDirection002Coverage_coveredRank :
    checkNonIdCoveredRank nonIdFamilyBadDirection002Coverage.rawRank nonIdFamilyBadDirection002 = true := by
  decide

def nonIdFamilyBadPairBalance000Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zp, Face.zm, Face.tppp, Face.tmmp, Face.tppp, Face.tpmp, Face.tpmm, Face.tppm, Face.tmpm, Face.tmpp], by decide⟩

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get00_num :
    nonIdFamilyBadPairBalance000Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get00_mk (h : 0 < 14) :
    nonIdFamilyBadPairBalance000Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get01_num :
    nonIdFamilyBadPairBalance000Seq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get01_mk (h : 1 < 14) :
    nonIdFamilyBadPairBalance000Seq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get02_num :
    nonIdFamilyBadPairBalance000Seq.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get02_mk (h : 2 < 14) :
    nonIdFamilyBadPairBalance000Seq.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get03_num :
    nonIdFamilyBadPairBalance000Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get03_mk (h : 3 < 14) :
    nonIdFamilyBadPairBalance000Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get04_num :
    nonIdFamilyBadPairBalance000Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get04_mk (h : 4 < 14) :
    nonIdFamilyBadPairBalance000Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get05_num :
    nonIdFamilyBadPairBalance000Seq.get (5 : Step14) = Face.zm := by
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get05_mk (h : 5 < 14) :
    nonIdFamilyBadPairBalance000Seq.get ⟨5, h⟩ = Face.zm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get06_num :
    nonIdFamilyBadPairBalance000Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get06_mk (h : 6 < 14) :
    nonIdFamilyBadPairBalance000Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get07_num :
    nonIdFamilyBadPairBalance000Seq.get (7 : Step14) = Face.tmmp := by
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get07_mk (h : 7 < 14) :
    nonIdFamilyBadPairBalance000Seq.get ⟨7, h⟩ = Face.tmmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get08_num :
    nonIdFamilyBadPairBalance000Seq.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get08_mk (h : 8 < 14) :
    nonIdFamilyBadPairBalance000Seq.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get09_num :
    nonIdFamilyBadPairBalance000Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get09_mk (h : 9 < 14) :
    nonIdFamilyBadPairBalance000Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get10_num :
    nonIdFamilyBadPairBalance000Seq.get (10 : Step14) = Face.tpmm := by
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get10_mk (h : 10 < 14) :
    nonIdFamilyBadPairBalance000Seq.get ⟨10, h⟩ = Face.tpmm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get11_num :
    nonIdFamilyBadPairBalance000Seq.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get11_mk (h : 11 < 14) :
    nonIdFamilyBadPairBalance000Seq.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get12_num :
    nonIdFamilyBadPairBalance000Seq.get (12 : Step14) = Face.tmpm := by
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get12_mk (h : 12 < 14) :
    nonIdFamilyBadPairBalance000Seq.get ⟨12, h⟩ = Face.tmpm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get13_num :
    nonIdFamilyBadPairBalance000Seq.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem nonIdFamilyBadPairBalance000Seq_get13_mk (h : 13 < 14) :
    nonIdFamilyBadPairBalance000Seq.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def nonIdFamilyBadPairBalance000 : NonIdCert where
  word := wordRank000000102
  axis := { x := (-9/10), y := (-13/10), z := 1 }
  kernel := { crossFactor := { m00 := (79/400), m01 := (269/200), m02 := 0, m10 := (-181/200), m11 := (-389/400), m12 := 0, m20 := (-799/800), m21 := (-43/800), m22 := 0 } }
  forcedSeq := nonIdFamilyBadPairBalance000Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badPairBalance

def nonIdFamilyBadPairBalance000Coverage : CanonicalPairCoverage :=
  { rawRank := 102, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.dm11], by decide⟩, canonical := { rank := 102, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.dm11], by decide⟩ }, rawToCanonicalTransformId := 0, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := false }, canonicalToRawTransformId := 0, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := false } }

theorem nonIdFamilyBadPairBalance000Coverage_check :
    checkCanonicalPairCoverage nonIdFamilyBadPairBalance000Coverage = true := by
  decide

theorem nonIdFamilyBadPairBalance000Coverage_canonicalRank :
    nonIdFamilyBadPairBalance000Coverage.canonical.rank = 102 := by
  decide

theorem nonIdFamilyBadPairBalance000Coverage_coveredRank :
    checkNonIdCoveredRank nonIdFamilyBadPairBalance000Coverage.rawRank nonIdFamilyBadPairBalance000 = true := by
  decide

def nonIdFamilyAxisMiss000Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zp, Face.zm, Face.tppp, Face.tmmp, Face.tmmm, Face.tpmp, Face.tpmm, Face.tmpm, Face.tppm, Face.tmpp], by decide⟩

@[simp] theorem nonIdFamilyAxisMiss000Seq_get00_num :
    nonIdFamilyAxisMiss000Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get00_mk (h : 0 < 14) :
    nonIdFamilyAxisMiss000Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get01_num :
    nonIdFamilyAxisMiss000Seq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get01_mk (h : 1 < 14) :
    nonIdFamilyAxisMiss000Seq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get02_num :
    nonIdFamilyAxisMiss000Seq.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get02_mk (h : 2 < 14) :
    nonIdFamilyAxisMiss000Seq.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get03_num :
    nonIdFamilyAxisMiss000Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get03_mk (h : 3 < 14) :
    nonIdFamilyAxisMiss000Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get04_num :
    nonIdFamilyAxisMiss000Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get04_mk (h : 4 < 14) :
    nonIdFamilyAxisMiss000Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get05_num :
    nonIdFamilyAxisMiss000Seq.get (5 : Step14) = Face.zm := by
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get05_mk (h : 5 < 14) :
    nonIdFamilyAxisMiss000Seq.get ⟨5, h⟩ = Face.zm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get06_num :
    nonIdFamilyAxisMiss000Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get06_mk (h : 6 < 14) :
    nonIdFamilyAxisMiss000Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get07_num :
    nonIdFamilyAxisMiss000Seq.get (7 : Step14) = Face.tmmp := by
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get07_mk (h : 7 < 14) :
    nonIdFamilyAxisMiss000Seq.get ⟨7, h⟩ = Face.tmmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get08_num :
    nonIdFamilyAxisMiss000Seq.get (8 : Step14) = Face.tmmm := by
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get08_mk (h : 8 < 14) :
    nonIdFamilyAxisMiss000Seq.get ⟨8, h⟩ = Face.tmmm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get09_num :
    nonIdFamilyAxisMiss000Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get09_mk (h : 9 < 14) :
    nonIdFamilyAxisMiss000Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get10_num :
    nonIdFamilyAxisMiss000Seq.get (10 : Step14) = Face.tpmm := by
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get10_mk (h : 10 < 14) :
    nonIdFamilyAxisMiss000Seq.get ⟨10, h⟩ = Face.tpmm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get11_num :
    nonIdFamilyAxisMiss000Seq.get (11 : Step14) = Face.tmpm := by
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get11_mk (h : 11 < 14) :
    nonIdFamilyAxisMiss000Seq.get ⟨11, h⟩ = Face.tmpm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get12_num :
    nonIdFamilyAxisMiss000Seq.get (12 : Step14) = Face.tppm := by
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get12_mk (h : 12 < 14) :
    nonIdFamilyAxisMiss000Seq.get ⟨12, h⟩ = Face.tppm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get13_num :
    nonIdFamilyAxisMiss000Seq.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem nonIdFamilyAxisMiss000Seq_get13_mk (h : 13 < 14) :
    nonIdFamilyAxisMiss000Seq.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def nonIdFamilyAxisMiss000 : NonIdCert where
  word := wordRank000000104
  axis := { x := (-15/13), y := (-4/13), z := 1 }
  kernel := { crossFactor := { m00 := (227/1352), m01 := (185/338), m02 := 0, m10 := (-197/169), m11 := (-253/1352), m12 := 0, m20 := (-223/1352), m21 := (97/169), m22 := 0 } }
  forcedSeq := nonIdFamilyAxisMiss000Seq
  p0 := { x := 1, y := (263/6150), z := (10189/6150) }
  lambda := (1872/205)
  solve := { leftInverse := { m00 := 0, m01 := 0, m02 := 0, m03 := 1, m10 := (1351/9840), m11 := (-6137/12300), m12 := (241/49200), m13 := (4/15), m20 := (-1063/2460), m21 := (-197/24600), m22 := (-6163/12300), m23 := (-13/15), m30 := (39/82), m31 := (26/205), m32 := (-169/410), m33 := 0 } }
  failure := NonIdFailure.axisMissesStartInterior

def nonIdFamilyAxisMiss000Coverage : CanonicalPairCoverage :=
  { rawRank := 104, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩, canonical := { rank := 104, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩ }, rawToCanonicalTransformId := 0, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := false }, canonicalToRawTransformId := 0, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := false } }

theorem nonIdFamilyAxisMiss000Coverage_check :
    checkCanonicalPairCoverage nonIdFamilyAxisMiss000Coverage = true := by
  decide

theorem nonIdFamilyAxisMiss000Coverage_canonicalRank :
    nonIdFamilyAxisMiss000Coverage.canonical.rank = 104 := by
  decide

theorem nonIdFamilyAxisMiss000Coverage_coveredRank :
    checkNonIdCoveredRank nonIdFamilyAxisMiss000Coverage.rawRank nonIdFamilyAxisMiss000 = true := by
  decide

def nonIdFamilyAxisMiss001Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zp, Face.zm, Face.tppp, Face.tmmp, Face.tmmm, Face.tpmp, Face.tpmm, Face.tmpm, Face.tmpp, Face.tppm], by decide⟩

@[simp] theorem nonIdFamilyAxisMiss001Seq_get00_num :
    nonIdFamilyAxisMiss001Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get00_mk (h : 0 < 14) :
    nonIdFamilyAxisMiss001Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get01_num :
    nonIdFamilyAxisMiss001Seq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get01_mk (h : 1 < 14) :
    nonIdFamilyAxisMiss001Seq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get02_num :
    nonIdFamilyAxisMiss001Seq.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get02_mk (h : 2 < 14) :
    nonIdFamilyAxisMiss001Seq.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get03_num :
    nonIdFamilyAxisMiss001Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get03_mk (h : 3 < 14) :
    nonIdFamilyAxisMiss001Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get04_num :
    nonIdFamilyAxisMiss001Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get04_mk (h : 4 < 14) :
    nonIdFamilyAxisMiss001Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get05_num :
    nonIdFamilyAxisMiss001Seq.get (5 : Step14) = Face.zm := by
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get05_mk (h : 5 < 14) :
    nonIdFamilyAxisMiss001Seq.get ⟨5, h⟩ = Face.zm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get06_num :
    nonIdFamilyAxisMiss001Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get06_mk (h : 6 < 14) :
    nonIdFamilyAxisMiss001Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get07_num :
    nonIdFamilyAxisMiss001Seq.get (7 : Step14) = Face.tmmp := by
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get07_mk (h : 7 < 14) :
    nonIdFamilyAxisMiss001Seq.get ⟨7, h⟩ = Face.tmmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get08_num :
    nonIdFamilyAxisMiss001Seq.get (8 : Step14) = Face.tmmm := by
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get08_mk (h : 8 < 14) :
    nonIdFamilyAxisMiss001Seq.get ⟨8, h⟩ = Face.tmmm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get09_num :
    nonIdFamilyAxisMiss001Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get09_mk (h : 9 < 14) :
    nonIdFamilyAxisMiss001Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get10_num :
    nonIdFamilyAxisMiss001Seq.get (10 : Step14) = Face.tpmm := by
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get10_mk (h : 10 < 14) :
    nonIdFamilyAxisMiss001Seq.get ⟨10, h⟩ = Face.tpmm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get11_num :
    nonIdFamilyAxisMiss001Seq.get (11 : Step14) = Face.tmpm := by
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get11_mk (h : 11 < 14) :
    nonIdFamilyAxisMiss001Seq.get ⟨11, h⟩ = Face.tmpm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get12_num :
    nonIdFamilyAxisMiss001Seq.get (12 : Step14) = Face.tmpp := by
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get12_mk (h : 12 < 14) :
    nonIdFamilyAxisMiss001Seq.get ⟨12, h⟩ = Face.tmpp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get13_num :
    nonIdFamilyAxisMiss001Seq.get (13 : Step14) = Face.tppm := by
  decide

@[simp] theorem nonIdFamilyAxisMiss001Seq_get13_mk (h : 13 < 14) :
    nonIdFamilyAxisMiss001Seq.get ⟨13, h⟩ = Face.tppm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def nonIdFamilyAxisMiss001 : NonIdCert where
  word := wordRank000000105
  axis := { x := (-5/6), y := (-1/3), z := 1 }
  kernel := { crossFactor := { m00 := (187/288), m01 := (5/9), m02 := 0, m10 := (-61/72), m11 := (107/288), m12 := 0, m20 := (149/576), m21 := (169/288), m22 := 0 } }
  forcedSeq := nonIdFamilyAxisMiss001Seq
  p0 := { x := 1, y := (-141/1300), z := (2423/1300) }
  lambda := (696/65)
  solve := { leftInverse := { m00 := 0, m01 := 0, m02 := 0, m03 := 1, m10 := (-43/520), m11 := (-797/1300), m12 := (-1421/5200), m13 := (2/5), m20 := (-361/520), m21 := (2989/5200), m22 := (-503/1300), m23 := (-6/5), m30 := (6/13), m31 := (12/65), m32 := (-36/65), m33 := 0 } }
  failure := NonIdFailure.axisMissesStartInterior

def nonIdFamilyAxisMiss001Coverage : CanonicalPairCoverage :=
  { rawRank := 105, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩, canonical := { rank := 105, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩ }, rawToCanonicalTransformId := 0, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := false }, canonicalToRawTransformId := 0, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := false } }

theorem nonIdFamilyAxisMiss001Coverage_check :
    checkCanonicalPairCoverage nonIdFamilyAxisMiss001Coverage = true := by
  decide

theorem nonIdFamilyAxisMiss001Coverage_canonicalRank :
    nonIdFamilyAxisMiss001Coverage.canonical.rank = 105 := by
  decide

theorem nonIdFamilyAxisMiss001Coverage_coveredRank :
    checkNonIdCoveredRank nonIdFamilyAxisMiss001Coverage.rawRank nonIdFamilyAxisMiss001 = true := by
  decide

def nonIdFamilyBadFirstHit000Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zp, Face.zm, Face.tppp, Face.tmmp, Face.tpmp, Face.tmmm, Face.tpmm, Face.tmpm, Face.tmpp, Face.tppm], by decide⟩

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get00_num :
    nonIdFamilyBadFirstHit000Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get00_mk (h : 0 < 14) :
    nonIdFamilyBadFirstHit000Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get01_num :
    nonIdFamilyBadFirstHit000Seq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get01_mk (h : 1 < 14) :
    nonIdFamilyBadFirstHit000Seq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get02_num :
    nonIdFamilyBadFirstHit000Seq.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get02_mk (h : 2 < 14) :
    nonIdFamilyBadFirstHit000Seq.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get03_num :
    nonIdFamilyBadFirstHit000Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get03_mk (h : 3 < 14) :
    nonIdFamilyBadFirstHit000Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get04_num :
    nonIdFamilyBadFirstHit000Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get04_mk (h : 4 < 14) :
    nonIdFamilyBadFirstHit000Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get05_num :
    nonIdFamilyBadFirstHit000Seq.get (5 : Step14) = Face.zm := by
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get05_mk (h : 5 < 14) :
    nonIdFamilyBadFirstHit000Seq.get ⟨5, h⟩ = Face.zm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get06_num :
    nonIdFamilyBadFirstHit000Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get06_mk (h : 6 < 14) :
    nonIdFamilyBadFirstHit000Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get07_num :
    nonIdFamilyBadFirstHit000Seq.get (7 : Step14) = Face.tmmp := by
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get07_mk (h : 7 < 14) :
    nonIdFamilyBadFirstHit000Seq.get ⟨7, h⟩ = Face.tmmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get08_num :
    nonIdFamilyBadFirstHit000Seq.get (8 : Step14) = Face.tpmp := by
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get08_mk (h : 8 < 14) :
    nonIdFamilyBadFirstHit000Seq.get ⟨8, h⟩ = Face.tpmp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get09_num :
    nonIdFamilyBadFirstHit000Seq.get (9 : Step14) = Face.tmmm := by
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get09_mk (h : 9 < 14) :
    nonIdFamilyBadFirstHit000Seq.get ⟨9, h⟩ = Face.tmmm := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get10_num :
    nonIdFamilyBadFirstHit000Seq.get (10 : Step14) = Face.tpmm := by
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get10_mk (h : 10 < 14) :
    nonIdFamilyBadFirstHit000Seq.get ⟨10, h⟩ = Face.tpmm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get11_num :
    nonIdFamilyBadFirstHit000Seq.get (11 : Step14) = Face.tmpm := by
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get11_mk (h : 11 < 14) :
    nonIdFamilyBadFirstHit000Seq.get ⟨11, h⟩ = Face.tmpm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get12_num :
    nonIdFamilyBadFirstHit000Seq.get (12 : Step14) = Face.tmpp := by
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get12_mk (h : 12 < 14) :
    nonIdFamilyBadFirstHit000Seq.get ⟨12, h⟩ = Face.tmpp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get13_num :
    nonIdFamilyBadFirstHit000Seq.get (13 : Step14) = Face.tppm := by
  decide

@[simp] theorem nonIdFamilyBadFirstHit000Seq_get13_mk (h : 13 < 14) :
    nonIdFamilyBadFirstHit000Seq.get ⟨13, h⟩ = Face.tppm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def nonIdFamilyBadFirstHit000 : NonIdCert where
  word := wordRank000000159
  axis := { x := (-11/15), y := (-8/15), z := 1 }
  kernel := { crossFactor := { m00 := (337/1800), m01 := (289/450), m02 := 0, m10 := (-173/225), m11 := (-367/1800), m12 := 0, m20 := (-491/1800), m21 := (163/450), m22 := 0 } }
  forcedSeq := nonIdFamilyBadFirstHit000Seq
  p0 := { x := 1, y := (33/41), z := (-29/410) }
  lambda := (444/41)
  solve := { leftInverse := { m00 := 0, m01 := 0, m02 := 0, m03 := 1, m10 := (2657/7216), m11 := (-224/451), m12 := (37/7216), m13 := (8/11), m20 := (-1532/2255), m21 := (-173/18040), m22 := (-227/451), m23 := (-15/11), m30 := (33/82), m31 := (12/41), m32 := (-45/82), m33 := 0 } }
  failure := NonIdFailure.badFirstHit { step := ⟨3, by decide⟩ }

def nonIdFamilyBadFirstHit000Coverage : CanonicalPairCoverage :=
  { rawRank := 159, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩, canonical := { rank := 159, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩ }, rawToCanonicalTransformId := 0, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := false }, canonicalToRawTransformId := 0, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := false } }

theorem nonIdFamilyBadFirstHit000Coverage_check :
    checkCanonicalPairCoverage nonIdFamilyBadFirstHit000Coverage = true := by
  decide

theorem nonIdFamilyBadFirstHit000Coverage_canonicalRank :
    nonIdFamilyBadFirstHit000Coverage.canonical.rank = 159 := by
  decide

theorem nonIdFamilyBadFirstHit000Coverage_coveredRank :
    checkNonIdCoveredRank nonIdFamilyBadFirstHit000Coverage.rawRank nonIdFamilyBadFirstHit000 = true := by
  decide

theorem nonIdFamilyBadDirection000_validPairWord :
    ValidPairWord wordRank000000013 := by
  unfold wordRank000000013 ValidPairWord pairCount
  decide

theorem nonIdFamilyBadDirection000_totalLinear :
    totalLinearOfPairWord wordRank000000013 = { m00 := (-199/729), m01 := (656/729), m02 := (-248/729), m10 := (304/729), m11 := (313/729), m12 := (584/729), m20 := (632/729), m21 := (56/729), m22 := (-359/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem nonIdFamilyBadDirection000_nonIdentity :
    totalLinearOfPairWord wordRank000000013 ≠ (matId : Mat3 Rat) := by
  rw [nonIdFamilyBadDirection000_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

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
  · simpa [nonIdFamilyBadDirection000] using nonIdFamilyBadDirection000_validPairWord
  · simpa [nonIdFamilyBadDirection000] using nonIdFamilyBadDirection000_nonIdentity
  · simpa [nonIdFamilyBadDirection000] using nonIdFamilyBadDirection000_kernelCheck
  · intro f hf
    cases f <;> simp [nonIdFamilyBadDirection000, pairOfFace, pairPrefixLinearNat,
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

theorem nonIdFamilyBadDirection001_validPairWord :
    ValidPairWord wordRank000000014 := by
  unfold wordRank000000014 ValidPairWord pairCount
  decide

theorem nonIdFamilyBadDirection001_totalLinear :
    totalLinearOfPairWord wordRank000000014 = { m00 := (-359/729), m01 := (-248/729), m02 := (-584/729), m10 := (632/729), m11 := (-199/729), m12 := (-304/729), m20 := (-56/729), m21 := (-656/729), m22 := (313/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem nonIdFamilyBadDirection001_nonIdentity :
    totalLinearOfPairWord wordRank000000014 ≠ (matId : Mat3 Rat) := by
  rw [nonIdFamilyBadDirection001_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

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
  · simpa [nonIdFamilyBadDirection001] using nonIdFamilyBadDirection001_validPairWord
  · simpa [nonIdFamilyBadDirection001] using nonIdFamilyBadDirection001_nonIdentity
  · simpa [nonIdFamilyBadDirection001] using nonIdFamilyBadDirection001_kernelCheck
  · intro f hf
    cases f <;> simp [nonIdFamilyBadDirection001, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem nonIdFamilyBadDirection001_coveredRank :
    checkNonIdCoveredRank 14 nonIdFamilyBadDirection001 = true := by
  decide

theorem nonIdFamilyBadDirection001_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      nonIdFamilyBadDirection001 = true := by
  rfl

theorem nonIdFamilyBadDirection002_validPairWord :
    ValidPairWord wordRank000000015 := by
  unfold wordRank000000015 ValidPairWord pairCount
  decide

theorem nonIdFamilyBadDirection002_totalLinear :
    totalLinearOfPairWord wordRank000000015 = { m00 := (185/729), m01 := (-704/729), m02 := (-40/729), m10 := (640/729), m11 := (185/729), m12 := (-296/729), m20 := (296/729), m21 := (40/729), m22 := (665/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem nonIdFamilyBadDirection002_nonIdentity :
    totalLinearOfPairWord wordRank000000015 ≠ (matId : Mat3 Rat) := by
  rw [nonIdFamilyBadDirection002_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

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
  · simpa [nonIdFamilyBadDirection002] using nonIdFamilyBadDirection002_validPairWord
  · simpa [nonIdFamilyBadDirection002] using nonIdFamilyBadDirection002_nonIdentity
  · simpa [nonIdFamilyBadDirection002] using nonIdFamilyBadDirection002_kernelCheck
  · intro f hf
    cases f <;> simp [nonIdFamilyBadDirection002, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem nonIdFamilyBadDirection002_coveredRank :
    checkNonIdCoveredRank 15 nonIdFamilyBadDirection002 = true := by
  decide

theorem nonIdFamilyBadDirection002_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      nonIdFamilyBadDirection002 = true := by
  rfl

theorem nonIdFamilyBadPairBalance000_validPairWord :
    ValidPairWord wordRank000000102 := by
  unfold wordRank000000102 ValidPairWord pairCount
  decide

theorem nonIdFamilyBadPairBalance000_totalLinear :
    totalLinearOfPairWord wordRank000000102 = { m00 := (-2047/6561), m01 := (6224/6561), m02 := (344/6561), m10 := (1264/6561), m11 := (769/6561), m12 := (-6392/6561), m20 := (-6104/6561), m21 := (-1928/6561), m22 := (-1439/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem nonIdFamilyBadPairBalance000_nonIdentity :
    totalLinearOfPairWord wordRank000000102 ≠ (matId : Mat3 Rat) := by
  rw [nonIdFamilyBadPairBalance000_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem nonIdFamilyBadPairBalance000_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000102)
      { x := (-9/10), y := (-13/10), z := 1 }
      { crossFactor := { m00 := (79/400), m01 := (269/200), m02 := 0, m10 := (-181/200), m11 := (-389/400), m12 := 0, m20 := (-799/800), m21 := (-43/800), m22 := 0 } } = true := by
  rw [nonIdFamilyBadPairBalance000_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem nonIdFamilyBadPairBalance000_finalAxisDot :
    finalAxisDotQ wordRank000000102 { x := (-9/10), y := (-13/10), z := 1 } = (9/10) := by
  simp [finalAxisDotQ, pairPrefixLinearNat,
    wordRank000000102_get00_num, wordRank000000102_get01_num, wordRank000000102_get02_num, wordRank000000102_get03_num, wordRank000000102_get04_num, wordRank000000102_get05_num, wordRank000000102_get06_num, wordRank000000102_get07_num, wordRank000000102_get08_num, wordRank000000102_get09_num, wordRank000000102_get10_num, wordRank000000102_get11_num, wordRank000000102_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
    scalarMat, outer, matVec]
  norm_num

theorem nonIdFamilyBadPairBalance000_axisForces :
    AxisForcesForcedSeq nonIdFamilyBadPairBalance000.word nonIdFamilyBadPairBalance000.axis
      (faceVectorSeq nonIdFamilyBadPairBalance000.forcedSeq) := by
  constructor
  · unfold StartsXp nonIdFamilyBadPairBalance000 nonIdFamilyBadPairBalance000Seq faceVectorSeq
    decide
  constructor
  · intro i
    fin_cases i <;> unfold nonIdFamilyBadPairBalance000 nonIdFamilyBadPairBalance000Seq faceVectorSeq <;> decide
  constructor
  · change 0 < finalAxisDotQ wordRank000000102 { x := (-9/10), y := (-13/10), z := 1 }
    rw [nonIdFamilyBadPairBalance000_finalAxisDot]
    norm_num
  · intro i f hf hpos
    fin_cases i <;> cases f <;>
      simp [nonIdFamilyBadPairBalance000, nonIdFamilyBadPairBalance000Seq, faceVectorSeq, afterStart,
        wordRank000000102_get00_num, wordRank000000102_get01_num, wordRank000000102_get02_num, wordRank000000102_get03_num, wordRank000000102_get04_num, wordRank000000102_get05_num, wordRank000000102_get06_num, wordRank000000102_get07_num, wordRank000000102_get08_num, wordRank000000102_get09_num, wordRank000000102_get10_num, wordRank000000102_get11_num, wordRank000000102_get12_num, nonIdFamilyBadPairBalance000Seq_get00_num, nonIdFamilyBadPairBalance000Seq_get01_num, nonIdFamilyBadPairBalance000Seq_get02_num, nonIdFamilyBadPairBalance000Seq_get03_num, nonIdFamilyBadPairBalance000Seq_get04_num, nonIdFamilyBadPairBalance000Seq_get05_num, nonIdFamilyBadPairBalance000Seq_get06_num, nonIdFamilyBadPairBalance000Seq_get07_num, nonIdFamilyBadPairBalance000Seq_get08_num, nonIdFamilyBadPairBalance000Seq_get09_num, nonIdFamilyBadPairBalance000Seq_get10_num, nonIdFamilyBadPairBalance000Seq_get11_num, nonIdFamilyBadPairBalance000Seq_get12_num, nonIdFamilyBadPairBalance000Seq_get13_num,
        pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ,
        matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec]
        at hf hpos ⊢ <;>
      first | contradiction | linarith | rfl

theorem nonIdFamilyBadPairBalance000_notOmni :
    ¬ IsOmniSeq (faceVectorSeq nonIdFamilyBadPairBalance000.forcedSeq) := by
  intro h
  have hEq :
      faceVectorSeq nonIdFamilyBadPairBalance000.forcedSeq (6 : Step14) =
        faceVectorSeq nonIdFamilyBadPairBalance000.forcedSeq (8 : Step14) := by
    decide
  have hIdx := h.1 hEq
  exact (by decide : (6 : Step14) ≠ (8 : Step14)) hIdx

theorem nonIdFamilyBadPairBalance000_check :
    checkNonIdCert nonIdFamilyBadPairBalance000 = true := by
  apply checkNonIdCert_badPairBalance_forced nonIdFamilyBadPairBalance000
  · rfl
  · simpa [nonIdFamilyBadPairBalance000] using nonIdFamilyBadPairBalance000_validPairWord
  · simpa [nonIdFamilyBadPairBalance000] using nonIdFamilyBadPairBalance000_nonIdentity
  · simpa [nonIdFamilyBadPairBalance000] using nonIdFamilyBadPairBalance000_kernelCheck
  · simpa [nonIdFamilyBadPairBalance000] using nonIdFamilyBadPairBalance000_axisForces
  · simpa [nonIdFamilyBadPairBalance000] using nonIdFamilyBadPairBalance000_notOmni

theorem nonIdFamilyBadPairBalance000_coveredRank :
    checkNonIdCoveredRank 102 nonIdFamilyBadPairBalance000 = true := by
  decide

theorem nonIdFamilyBadPairBalance000_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badPairBalance
      nonIdFamilyBadPairBalance000 = true := by
  rfl

theorem nonIdFamilyAxisMiss000_validPairWord :
    ValidPairWord wordRank000000104 := by
  unfold wordRank000000104 ValidPairWord pairCount
  decide

theorem nonIdFamilyAxisMiss000_totalLinear :
    totalLinearOfPairWord wordRank000000104 = { m00 := (641/6561), m01 := (2024/6561), m02 := (-6208/6561), m10 := (1816/6561), m11 := (-6047/6561), m12 := (-1784/6561), m20 := (-6272/6561), m21 := (-1544/6561), m22 := (-1151/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem nonIdFamilyAxisMiss000_nonIdentity :
    totalLinearOfPairWord wordRank000000104 ≠ (matId : Mat3 Rat) := by
  rw [nonIdFamilyAxisMiss000_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem nonIdFamilyAxisMiss000_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000104)
      { x := (-15/13), y := (-4/13), z := 1 }
      { crossFactor := { m00 := (227/1352), m01 := (185/338), m02 := 0, m10 := (-197/169), m11 := (-253/1352), m12 := 0, m20 := (-223/1352), m21 := (97/169), m22 := 0 } } = true := by
  rw [nonIdFamilyAxisMiss000_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem nonIdFamilyAxisMiss000_finalAxisDot :
    finalAxisDotQ wordRank000000104 { x := (-15/13), y := (-4/13), z := 1 } = (15/13) := by
  simp [finalAxisDotQ, pairPrefixLinearNat,
    wordRank000000104_get00_num, wordRank000000104_get01_num, wordRank000000104_get02_num, wordRank000000104_get03_num, wordRank000000104_get04_num, wordRank000000104_get05_num, wordRank000000104_get06_num, wordRank000000104_get07_num, wordRank000000104_get08_num, wordRank000000104_get09_num, wordRank000000104_get10_num, wordRank000000104_get11_num, wordRank000000104_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
    scalarMat, outer, matVec]
  norm_num

theorem nonIdFamilyAxisMiss000_axisForces :
    AxisForcesForcedSeq nonIdFamilyAxisMiss000.word nonIdFamilyAxisMiss000.axis
      (faceVectorSeq nonIdFamilyAxisMiss000.forcedSeq) := by
  constructor
  · unfold StartsXp nonIdFamilyAxisMiss000 nonIdFamilyAxisMiss000Seq faceVectorSeq
    decide
  constructor
  · intro i
    fin_cases i <;> unfold nonIdFamilyAxisMiss000 nonIdFamilyAxisMiss000Seq faceVectorSeq <;> decide
  constructor
  · change 0 < finalAxisDotQ wordRank000000104 { x := (-15/13), y := (-4/13), z := 1 }
    rw [nonIdFamilyAxisMiss000_finalAxisDot]
    norm_num
  · intro i f hf hpos
    fin_cases i <;> cases f <;>
      simp [nonIdFamilyAxisMiss000, nonIdFamilyAxisMiss000Seq, faceVectorSeq, afterStart,
        wordRank000000104_get00_num, wordRank000000104_get01_num, wordRank000000104_get02_num, wordRank000000104_get03_num, wordRank000000104_get04_num, wordRank000000104_get05_num, wordRank000000104_get06_num, wordRank000000104_get07_num, wordRank000000104_get08_num, wordRank000000104_get09_num, wordRank000000104_get10_num, wordRank000000104_get11_num, wordRank000000104_get12_num, nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num,
        pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ,
        matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec]
        at hf hpos ⊢ <;>
      first | contradiction | linarith | rfl

theorem nonIdFamilyAxisMiss000_pathPrefix00 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 0 = { M := { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := 0, y := 0, z := 0 } } := by
  simp [nonIdFamilyAxisMiss000Seq, faceVectorSeq, pathPrefixAffNat, affId, matId]

theorem nonIdFamilyAxisMiss000_pathPrefix01 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 1 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := 0, z := 0 } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss000_pathPrefix00, faceVectorSeq,
    nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss000_pathPrefix02 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 2 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -2, z := 0 } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss000_pathPrefix01, faceVectorSeq,
    nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss000_pathPrefix03 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 3 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 0 } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss000_pathPrefix02, faceVectorSeq,
    nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss000_pathPrefix04 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 4 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }, b := { x := -2, y := -4, z := 2 } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss000_pathPrefix03, faceVectorSeq,
    nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss000_pathPrefix05 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 5 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 4 } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss000_pathPrefix04, faceVectorSeq,
    nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss000_pathPrefix06 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 6 = { M := { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }, b := { x := (-10/3), y := (-8/3), z := (16/3) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss000_pathPrefix05, faceVectorSeq,
    nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss000_pathPrefix07 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 7 = { M := { m00 := (-1/9), m01 := (8/9), m02 := (4/9), m10 := (-8/9), m11 := (1/9), m12 := (-4/9), m20 := (4/9), m21 := (4/9), m22 := (-7/9) }, b := { x := (-26/9), y := (-28/9), z := (68/9) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss000_pathPrefix06, faceVectorSeq,
    nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss000_pathPrefix08 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 8 = { M := { m00 := (-25/27), m01 := (2/27), m02 := (-10/27), m10 := (-2/27), m11 := (25/27), m12 := (10/27), m20 := (10/27), m21 := (10/27), m22 := (-23/27) }, b := { x := (-122/27), y := (-40/27), z := (200/27) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss000_pathPrefix07, faceVectorSeq,
    nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss000_pathPrefix09 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 9 = { M := { m00 := (-1/81), m01 := (-68/81), m02 := (44/81), m10 := (28/81), m11 := (41/81), m12 := (64/81), m20 := (76/81), m21 := (-16/81), m22 := (-23/81) }, b := { x := (-514/81), y := (-188/81), z := (508/81) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss000_pathPrefix08, faceVectorSeq,
    nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss000_pathPrefix10 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 10 = { M := { m00 := (-49/243), m01 := (-158/243), m02 := (178/243), m10 := (238/243), m11 := (-31/243), m12 := (38/243), m20 := (-2/243), m21 := (182/243), m22 := (161/243) }, b := { x := (-1450/243), y := (-872/243), z := (1984/243) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss000_pathPrefix09, faceVectorSeq,
    nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss000_pathPrefix11 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 11 = { M := { m00 := (-721/729), m01 := (100/729), m02 := (-40/729), m10 := (100/729), m11 := (521/729), m12 := (-500/729), m20 := (40/729), m21 := (500/729), m22 := (529/729) }, b := { x := (-5498/729), y := (-3844/729), z := (6044/729) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss000_pathPrefix10, faceVectorSeq,
    nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss000_pathPrefix12 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 12 = { M := { m00 := (-1001/2187), m01 := (1462/2187), m02 := (-1282/2187), m10 := (-1942/2187), m11 := (-679/2187), m12 := (742/2187), m20 := (98/2187), m21 := (1478/2187), m22 := (1609/2187) }, b := { x := (-18818/2187), y := (-7048/2187), z := (18176/2187) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss000_pathPrefix11, faceVectorSeq,
    nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss000_pathPrefix13 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 13 = { M := { m00 := (-641/6561), m01 := (2024/6561), m02 := (-6208/6561), m10 := (-1816/6561), m11 := (-6047/6561), m12 := (-1784/6561), m20 := (6272/6561), m21 := (-1544/6561), m22 := (-1151/6561) }, b := { x := (-51730/6561), y := (-13124/6561), z := (66484/6561) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss000_pathPrefix12, faceVectorSeq,
    nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss000_totalAff :
    totalAff (faceVectorSeq nonIdFamilyAxisMiss000.forcedSeq) = { M := { m00 := (641/6561), m01 := (2024/6561), m02 := (-6208/6561), m10 := (1816/6561), m11 := (-6047/6561), m12 := (-1784/6561), m20 := (-6272/6561), m21 := (-1544/6561), m22 := (-1151/6561) }, b := { x := (-53012/6561), y := (-16756/6561), z := (79028/6561) } } := by
  rw [totalAff_eq_finalPath]
  change affCompose (pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss000Seq) 13)
      (faceReflectionQ (faceVectorSeq nonIdFamilyAxisMiss000Seq 0)) = { M := { m00 := (641/6561), m01 := (2024/6561), m02 := (-6208/6561), m10 := (1816/6561), m11 := (-6047/6561), m12 := (-1784/6561), m20 := (-6272/6561), m21 := (-1544/6561), m22 := (-1151/6561) }, b := { x := (-53012/6561), y := (-16756/6561), z := (79028/6561) } }
  rw [nonIdFamilyAxisMiss000_pathPrefix13]
  simp [faceVectorSeq, nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num,
    faceReflectionQ, reflM, reflD, normalQ, offsetQ, affCompose,
    matSub, matId, scalarMat, outer, dot, matMul, matVec, vecAdd,
    scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss000_axisSolveCheck :
    checkAffineAxisSolveWitness
      (totalAff (faceVectorSeq nonIdFamilyAxisMiss000.forcedSeq))
      nonIdFamilyAxisMiss000.axis nonIdFamilyAxisMiss000.p0 nonIdFamilyAxisMiss000.lambda nonIdFamilyAxisMiss000.solve = true := by
  rw [nonIdFamilyAxisMiss000_totalAff]
  norm_num [nonIdFamilyAxisMiss000, checkAffineAxisSolveWitness, axisSolveMatrix,
    axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec, mat4Id, matId, matSub]

theorem nonIdFamilyAxisMiss000_forcedSeqMatches :
    checkForcedSeqMatchesWord nonIdFamilyAxisMiss000 = true := by
  classical
  unfold checkForcedSeqMatchesWord
  apply decide_eq_true
  constructor
  · unfold StartsXp nonIdFamilyAxisMiss000 faceVectorSeq
    decide
  · intro i
    fin_cases i <;> simp [nonIdFamilyAxisMiss000, faceVectorSeq, afterStart,
      wordRank000000104_get00_num, wordRank000000104_get01_num, wordRank000000104_get02_num, wordRank000000104_get03_num, wordRank000000104_get04_num, wordRank000000104_get05_num, wordRank000000104_get06_num, wordRank000000104_get07_num, wordRank000000104_get08_num, wordRank000000104_get09_num, wordRank000000104_get10_num, wordRank000000104_get11_num, wordRank000000104_get12_num,
      nonIdFamilyAxisMiss000Seq_get00_num, nonIdFamilyAxisMiss000Seq_get01_num, nonIdFamilyAxisMiss000Seq_get02_num, nonIdFamilyAxisMiss000Seq_get03_num, nonIdFamilyAxisMiss000Seq_get04_num, nonIdFamilyAxisMiss000Seq_get05_num, nonIdFamilyAxisMiss000Seq_get06_num, nonIdFamilyAxisMiss000Seq_get07_num, nonIdFamilyAxisMiss000Seq_get08_num, nonIdFamilyAxisMiss000Seq_get09_num, nonIdFamilyAxisMiss000Seq_get10_num, nonIdFamilyAxisMiss000Seq_get11_num, nonIdFamilyAxisMiss000Seq_get12_num, nonIdFamilyAxisMiss000Seq_get13_num, pairOfFace]

theorem nonIdFamilyAxisMiss000_commonCheck :
    checkNonIdCommon nonIdFamilyAxisMiss000 = true := by
  have hValid : ValidPairWord nonIdFamilyAxisMiss000.word := by
    simpa [nonIdFamilyAxisMiss000] using nonIdFamilyAxisMiss000_validPairWord
  have hNonId : totalLinearOfPairWord nonIdFamilyAxisMiss000.word ≠ (matId : Mat3 Rat) := by
    simpa [nonIdFamilyAxisMiss000] using nonIdFamilyAxisMiss000_nonIdentity
  have hKernel :
      checkKernelLineWitness (totalLinearOfPairWord nonIdFamilyAxisMiss000.word)
        nonIdFamilyAxisMiss000.axis nonIdFamilyAxisMiss000.kernel = true := by
    simpa [nonIdFamilyAxisMiss000] using nonIdFamilyAxisMiss000_kernelCheck
  unfold checkNonIdCommon
  simp [hValid, hNonId, hKernel, nonIdFamilyAxisMiss000_forcedSeqMatches, nonIdFamilyAxisMiss000_axisSolveCheck]

theorem nonIdFamilyAxisMiss000_notXpStartInterior :
    ¬ XpStartInteriorQ nonIdFamilyAxisMiss000.p0 := by
  unfold XpStartInteriorQ nonIdFamilyAxisMiss000
  norm_num

theorem nonIdFamilyAxisMiss000_check :
    checkNonIdCert nonIdFamilyAxisMiss000 = true := by
  apply checkNonIdCert_axisMissesStartInterior nonIdFamilyAxisMiss000
  · rfl
  · simpa using nonIdFamilyAxisMiss000_commonCheck
  · simpa [nonIdFamilyAxisMiss000] using nonIdFamilyAxisMiss000_axisForces
  · simpa [nonIdFamilyAxisMiss000] using nonIdFamilyAxisMiss000_notXpStartInterior

theorem nonIdFamilyAxisMiss000_coveredRank :
    checkNonIdCoveredRank 104 nonIdFamilyAxisMiss000 = true := by
  decide

theorem nonIdFamilyAxisMiss000_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.axisMissesStartInterior
      nonIdFamilyAxisMiss000 = true := by
  rfl

theorem nonIdFamilyAxisMiss001_validPairWord :
    ValidPairWord wordRank000000105 := by
  unfold wordRank000000105 ValidPairWord pairCount
  decide

theorem nonIdFamilyAxisMiss001_totalLinear :
    totalLinearOfPairWord wordRank000000105 = { m00 := (1441/6561), m01 := (-3424/6561), m02 := (-5408/6561), m10 := (5984/6561), m11 := (-1247/6561), m12 := (2384/6561), m20 := (-2272/6561), m21 := (-5456/6561), m22 := (2849/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem nonIdFamilyAxisMiss001_nonIdentity :
    totalLinearOfPairWord wordRank000000105 ≠ (matId : Mat3 Rat) := by
  rw [nonIdFamilyAxisMiss001_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem nonIdFamilyAxisMiss001_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000105)
      { x := (-5/6), y := (-1/3), z := 1 }
      { crossFactor := { m00 := (187/288), m01 := (5/9), m02 := 0, m10 := (-61/72), m11 := (107/288), m12 := 0, m20 := (149/576), m21 := (169/288), m22 := 0 } } = true := by
  rw [nonIdFamilyAxisMiss001_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem nonIdFamilyAxisMiss001_finalAxisDot :
    finalAxisDotQ wordRank000000105 { x := (-5/6), y := (-1/3), z := 1 } = (5/6) := by
  simp [finalAxisDotQ, pairPrefixLinearNat,
    wordRank000000105_get00_num, wordRank000000105_get01_num, wordRank000000105_get02_num, wordRank000000105_get03_num, wordRank000000105_get04_num, wordRank000000105_get05_num, wordRank000000105_get06_num, wordRank000000105_get07_num, wordRank000000105_get08_num, wordRank000000105_get09_num, wordRank000000105_get10_num, wordRank000000105_get11_num, wordRank000000105_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
    scalarMat, outer, matVec]
  norm_num

theorem nonIdFamilyAxisMiss001_axisForces :
    AxisForcesForcedSeq nonIdFamilyAxisMiss001.word nonIdFamilyAxisMiss001.axis
      (faceVectorSeq nonIdFamilyAxisMiss001.forcedSeq) := by
  constructor
  · unfold StartsXp nonIdFamilyAxisMiss001 nonIdFamilyAxisMiss001Seq faceVectorSeq
    decide
  constructor
  · intro i
    fin_cases i <;> unfold nonIdFamilyAxisMiss001 nonIdFamilyAxisMiss001Seq faceVectorSeq <;> decide
  constructor
  · change 0 < finalAxisDotQ wordRank000000105 { x := (-5/6), y := (-1/3), z := 1 }
    rw [nonIdFamilyAxisMiss001_finalAxisDot]
    norm_num
  · intro i f hf hpos
    fin_cases i <;> cases f <;>
      simp [nonIdFamilyAxisMiss001, nonIdFamilyAxisMiss001Seq, faceVectorSeq, afterStart,
        wordRank000000105_get00_num, wordRank000000105_get01_num, wordRank000000105_get02_num, wordRank000000105_get03_num, wordRank000000105_get04_num, wordRank000000105_get05_num, wordRank000000105_get06_num, wordRank000000105_get07_num, wordRank000000105_get08_num, wordRank000000105_get09_num, wordRank000000105_get10_num, wordRank000000105_get11_num, wordRank000000105_get12_num, nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num,
        pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ,
        matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec]
        at hf hpos ⊢ <;>
      first | contradiction | linarith | rfl

theorem nonIdFamilyAxisMiss001_pathPrefix00 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 0 = { M := { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := 0, y := 0, z := 0 } } := by
  simp [nonIdFamilyAxisMiss001Seq, faceVectorSeq, pathPrefixAffNat, affId, matId]

theorem nonIdFamilyAxisMiss001_pathPrefix01 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 1 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := 0, z := 0 } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss001_pathPrefix00, faceVectorSeq,
    nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss001_pathPrefix02 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 2 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -2, z := 0 } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss001_pathPrefix01, faceVectorSeq,
    nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss001_pathPrefix03 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 3 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 0 } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss001_pathPrefix02, faceVectorSeq,
    nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss001_pathPrefix04 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 4 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }, b := { x := -2, y := -4, z := 2 } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss001_pathPrefix03, faceVectorSeq,
    nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss001_pathPrefix05 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 5 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 4 } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss001_pathPrefix04, faceVectorSeq,
    nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss001_pathPrefix06 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 6 = { M := { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }, b := { x := (-10/3), y := (-8/3), z := (16/3) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss001_pathPrefix05, faceVectorSeq,
    nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss001_pathPrefix07 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 7 = { M := { m00 := (-1/9), m01 := (8/9), m02 := (4/9), m10 := (-8/9), m11 := (1/9), m12 := (-4/9), m20 := (4/9), m21 := (4/9), m22 := (-7/9) }, b := { x := (-26/9), y := (-28/9), z := (68/9) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss001_pathPrefix06, faceVectorSeq,
    nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss001_pathPrefix08 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 8 = { M := { m00 := (-25/27), m01 := (2/27), m02 := (-10/27), m10 := (-2/27), m11 := (25/27), m12 := (10/27), m20 := (10/27), m21 := (10/27), m22 := (-23/27) }, b := { x := (-122/27), y := (-40/27), z := (200/27) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss001_pathPrefix07, faceVectorSeq,
    nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss001_pathPrefix09 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 9 = { M := { m00 := (-1/81), m01 := (-68/81), m02 := (44/81), m10 := (28/81), m11 := (41/81), m12 := (64/81), m20 := (76/81), m21 := (-16/81), m22 := (-23/81) }, b := { x := (-514/81), y := (-188/81), z := (508/81) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss001_pathPrefix08, faceVectorSeq,
    nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss001_pathPrefix10 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 10 = { M := { m00 := (-49/243), m01 := (-158/243), m02 := (178/243), m10 := (238/243), m11 := (-31/243), m12 := (38/243), m20 := (-2/243), m21 := (182/243), m22 := (161/243) }, b := { x := (-1450/243), y := (-872/243), z := (1984/243) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss001_pathPrefix09, faceVectorSeq,
    nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss001_pathPrefix11 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 11 = { M := { m00 := (-721/729), m01 := (100/729), m02 := (-40/729), m10 := (100/729), m11 := (521/729), m12 := (-500/729), m20 := (40/729), m21 := (500/729), m22 := (529/729) }, b := { x := (-5498/729), y := (-3844/729), z := (6044/729) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss001_pathPrefix10, faceVectorSeq,
    nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss001_pathPrefix12 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 12 = { M := { m00 := (-601/2187), m01 := (-1262/2187), m02 := (-1682/2187), m10 := (142/2187), m11 := (1721/2187), m12 := (-1342/2187), m20 := (2098/2187), m21 := (-478/2187), m22 := (-391/2187) }, b := { x := (-13370/2187), y := (-11848/2187), z := (22088/2187) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss001_pathPrefix11, faceVectorSeq,
    nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss001_pathPrefix13 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 13 = { M := { m00 := (-1441/6561), m01 := (-3424/6561), m02 := (-5408/6561), m10 := (-5984/6561), m11 := (-1247/6561), m12 := (2384/6561), m20 := (2272/6561), m21 := (-5456/6561), m22 := (2849/6561) }, b := { x := (-40834/6561), y := (-22724/6561), z := (74308/6561) } } := by
  simp [pathPrefixAffNat, nonIdFamilyAxisMiss001_pathPrefix12, faceVectorSeq,
    nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss001_totalAff :
    totalAff (faceVectorSeq nonIdFamilyAxisMiss001.forcedSeq) = { M := { m00 := (1441/6561), m01 := (-3424/6561), m02 := (-5408/6561), m10 := (5984/6561), m11 := (-1247/6561), m12 := (2384/6561), m20 := (-2272/6561), m21 := (-5456/6561), m22 := (2849/6561) }, b := { x := (-14572/2187), y := (-11564/2187), z := (26284/2187) } } := by
  rw [totalAff_eq_finalPath]
  change affCompose (pathPrefixAffNat (faceVectorSeq nonIdFamilyAxisMiss001Seq) 13)
      (faceReflectionQ (faceVectorSeq nonIdFamilyAxisMiss001Seq 0)) = { M := { m00 := (1441/6561), m01 := (-3424/6561), m02 := (-5408/6561), m10 := (5984/6561), m11 := (-1247/6561), m12 := (2384/6561), m20 := (-2272/6561), m21 := (-5456/6561), m22 := (2849/6561) }, b := { x := (-14572/2187), y := (-11564/2187), z := (26284/2187) } }
  rw [nonIdFamilyAxisMiss001_pathPrefix13]
  simp [faceVectorSeq, nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num,
    faceReflectionQ, reflM, reflD, normalQ, offsetQ, affCompose,
    matSub, matId, scalarMat, outer, dot, matMul, matVec, vecAdd,
    scalarMul]
  norm_num

theorem nonIdFamilyAxisMiss001_axisSolveCheck :
    checkAffineAxisSolveWitness
      (totalAff (faceVectorSeq nonIdFamilyAxisMiss001.forcedSeq))
      nonIdFamilyAxisMiss001.axis nonIdFamilyAxisMiss001.p0 nonIdFamilyAxisMiss001.lambda nonIdFamilyAxisMiss001.solve = true := by
  rw [nonIdFamilyAxisMiss001_totalAff]
  norm_num [nonIdFamilyAxisMiss001, checkAffineAxisSolveWitness, axisSolveMatrix,
    axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec, mat4Id, matId, matSub]

theorem nonIdFamilyAxisMiss001_forcedSeqMatches :
    checkForcedSeqMatchesWord nonIdFamilyAxisMiss001 = true := by
  classical
  unfold checkForcedSeqMatchesWord
  apply decide_eq_true
  constructor
  · unfold StartsXp nonIdFamilyAxisMiss001 faceVectorSeq
    decide
  · intro i
    fin_cases i <;> simp [nonIdFamilyAxisMiss001, faceVectorSeq, afterStart,
      wordRank000000105_get00_num, wordRank000000105_get01_num, wordRank000000105_get02_num, wordRank000000105_get03_num, wordRank000000105_get04_num, wordRank000000105_get05_num, wordRank000000105_get06_num, wordRank000000105_get07_num, wordRank000000105_get08_num, wordRank000000105_get09_num, wordRank000000105_get10_num, wordRank000000105_get11_num, wordRank000000105_get12_num,
      nonIdFamilyAxisMiss001Seq_get00_num, nonIdFamilyAxisMiss001Seq_get01_num, nonIdFamilyAxisMiss001Seq_get02_num, nonIdFamilyAxisMiss001Seq_get03_num, nonIdFamilyAxisMiss001Seq_get04_num, nonIdFamilyAxisMiss001Seq_get05_num, nonIdFamilyAxisMiss001Seq_get06_num, nonIdFamilyAxisMiss001Seq_get07_num, nonIdFamilyAxisMiss001Seq_get08_num, nonIdFamilyAxisMiss001Seq_get09_num, nonIdFamilyAxisMiss001Seq_get10_num, nonIdFamilyAxisMiss001Seq_get11_num, nonIdFamilyAxisMiss001Seq_get12_num, nonIdFamilyAxisMiss001Seq_get13_num, pairOfFace]

theorem nonIdFamilyAxisMiss001_commonCheck :
    checkNonIdCommon nonIdFamilyAxisMiss001 = true := by
  have hValid : ValidPairWord nonIdFamilyAxisMiss001.word := by
    simpa [nonIdFamilyAxisMiss001] using nonIdFamilyAxisMiss001_validPairWord
  have hNonId : totalLinearOfPairWord nonIdFamilyAxisMiss001.word ≠ (matId : Mat3 Rat) := by
    simpa [nonIdFamilyAxisMiss001] using nonIdFamilyAxisMiss001_nonIdentity
  have hKernel :
      checkKernelLineWitness (totalLinearOfPairWord nonIdFamilyAxisMiss001.word)
        nonIdFamilyAxisMiss001.axis nonIdFamilyAxisMiss001.kernel = true := by
    simpa [nonIdFamilyAxisMiss001] using nonIdFamilyAxisMiss001_kernelCheck
  unfold checkNonIdCommon
  simp [hValid, hNonId, hKernel, nonIdFamilyAxisMiss001_forcedSeqMatches, nonIdFamilyAxisMiss001_axisSolveCheck]

theorem nonIdFamilyAxisMiss001_notXpStartInterior :
    ¬ XpStartInteriorQ nonIdFamilyAxisMiss001.p0 := by
  unfold XpStartInteriorQ nonIdFamilyAxisMiss001
  norm_num

theorem nonIdFamilyAxisMiss001_check :
    checkNonIdCert nonIdFamilyAxisMiss001 = true := by
  apply checkNonIdCert_axisMissesStartInterior nonIdFamilyAxisMiss001
  · rfl
  · simpa using nonIdFamilyAxisMiss001_commonCheck
  · simpa [nonIdFamilyAxisMiss001] using nonIdFamilyAxisMiss001_axisForces
  · simpa [nonIdFamilyAxisMiss001] using nonIdFamilyAxisMiss001_notXpStartInterior

theorem nonIdFamilyAxisMiss001_coveredRank :
    checkNonIdCoveredRank 105 nonIdFamilyAxisMiss001 = true := by
  decide

theorem nonIdFamilyAxisMiss001_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.axisMissesStartInterior
      nonIdFamilyAxisMiss001 = true := by
  rfl

theorem nonIdFamilyBadFirstHit000_validPairWord :
    ValidPairWord wordRank000000159 := by
  unfold wordRank000000159 ValidPairWord pairCount
  decide

theorem nonIdFamilyBadFirstHit000_totalLinear :
    totalLinearOfPairWord wordRank000000159 = { m00 := (-2687/6561), m01 := (2936/6561), m02 := (-5216/6561), m10 := (2696/6561), m11 := (-4511/6561), m12 := (-3928/6561), m20 := (-5344/6561), m21 := (-3752/6561), m22 := (641/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_nonIdentity :
    totalLinearOfPairWord wordRank000000159 ≠ (matId : Mat3 Rat) := by
  rw [nonIdFamilyBadFirstHit000_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem nonIdFamilyBadFirstHit000_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000159)
      { x := (-11/15), y := (-8/15), z := 1 }
      { crossFactor := { m00 := (337/1800), m01 := (289/450), m02 := 0, m10 := (-173/225), m11 := (-367/1800), m12 := 0, m20 := (-491/1800), m21 := (163/450), m22 := 0 } } = true := by
  rw [nonIdFamilyBadFirstHit000_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem nonIdFamilyBadFirstHit000_finalAxisDot :
    finalAxisDotQ wordRank000000159 { x := (-11/15), y := (-8/15), z := 1 } = (11/15) := by
  simp [finalAxisDotQ, pairPrefixLinearNat,
    wordRank000000159_get00_num, wordRank000000159_get01_num, wordRank000000159_get02_num, wordRank000000159_get03_num, wordRank000000159_get04_num, wordRank000000159_get05_num, wordRank000000159_get06_num, wordRank000000159_get07_num, wordRank000000159_get08_num, wordRank000000159_get09_num, wordRank000000159_get10_num, wordRank000000159_get11_num, wordRank000000159_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
    scalarMat, outer, matVec]
  norm_num

theorem nonIdFamilyBadFirstHit000_axisForces :
    AxisForcesForcedSeq nonIdFamilyBadFirstHit000.word nonIdFamilyBadFirstHit000.axis
      (faceVectorSeq nonIdFamilyBadFirstHit000.forcedSeq) := by
  constructor
  · unfold StartsXp nonIdFamilyBadFirstHit000 nonIdFamilyBadFirstHit000Seq faceVectorSeq
    decide
  constructor
  · intro i
    fin_cases i <;> unfold nonIdFamilyBadFirstHit000 nonIdFamilyBadFirstHit000Seq faceVectorSeq <;> decide
  constructor
  · change 0 < finalAxisDotQ wordRank000000159 { x := (-11/15), y := (-8/15), z := 1 }
    rw [nonIdFamilyBadFirstHit000_finalAxisDot]
    norm_num
  · intro i f hf hpos
    fin_cases i <;> cases f <;>
      simp [nonIdFamilyBadFirstHit000, nonIdFamilyBadFirstHit000Seq, faceVectorSeq, afterStart,
        wordRank000000159_get00_num, wordRank000000159_get01_num, wordRank000000159_get02_num, wordRank000000159_get03_num, wordRank000000159_get04_num, wordRank000000159_get05_num, wordRank000000159_get06_num, wordRank000000159_get07_num, wordRank000000159_get08_num, wordRank000000159_get09_num, wordRank000000159_get10_num, wordRank000000159_get11_num, wordRank000000159_get12_num, nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num,
        pairPrefixLinearNat, pairOfFace, canonicalNormalQ, normalQ,
        matId, matMul, reflM, dot, matSub, scalarMat, outer, matVec]
        at hf hpos ⊢ <;>
      first | contradiction | linarith | rfl

theorem nonIdFamilyBadFirstHit000_pathPrefix00 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 0 = { M := { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := 0, y := 0, z := 0 } } := by
  simp [nonIdFamilyBadFirstHit000Seq, faceVectorSeq, pathPrefixAffNat, affId, matId]

theorem nonIdFamilyBadFirstHit000_pathPrefix01 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 1 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := 0, z := 0 } } := by
  simp [pathPrefixAffNat, nonIdFamilyBadFirstHit000_pathPrefix00, faceVectorSeq,
    nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_pathPrefix02 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 2 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -2, z := 0 } } := by
  simp [pathPrefixAffNat, nonIdFamilyBadFirstHit000_pathPrefix01, faceVectorSeq,
    nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_pathPrefix03 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 3 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 0 } } := by
  simp [pathPrefixAffNat, nonIdFamilyBadFirstHit000_pathPrefix02, faceVectorSeq,
    nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_pathPrefix04 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 4 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }, b := { x := -2, y := -4, z := 2 } } := by
  simp [pathPrefixAffNat, nonIdFamilyBadFirstHit000_pathPrefix03, faceVectorSeq,
    nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_pathPrefix05 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 5 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 4 } } := by
  simp [pathPrefixAffNat, nonIdFamilyBadFirstHit000_pathPrefix04, faceVectorSeq,
    nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_pathPrefix06 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 6 = { M := { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }, b := { x := (-10/3), y := (-8/3), z := (16/3) } } := by
  simp [pathPrefixAffNat, nonIdFamilyBadFirstHit000_pathPrefix05, faceVectorSeq,
    nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_pathPrefix07 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 7 = { M := { m00 := (-1/9), m01 := (8/9), m02 := (4/9), m10 := (-8/9), m11 := (1/9), m12 := (-4/9), m20 := (4/9), m21 := (4/9), m22 := (-7/9) }, b := { x := (-26/9), y := (-28/9), z := (68/9) } } := by
  simp [pathPrefixAffNat, nonIdFamilyBadFirstHit000_pathPrefix06, faceVectorSeq,
    nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_pathPrefix08 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 8 = { M := { m00 := (7/27), m01 := (14/27), m02 := (22/27), m10 := (2/27), m11 := (-23/27), m12 := (14/27), m20 := (26/27), m21 := (-2/27), m22 := (-7/27) }, b := { x := (-98/27), y := (-136/27), z := (176/27) } } := by
  simp [pathPrefixAffNat, nonIdFamilyBadFirstHit000_pathPrefix07, faceVectorSeq,
    nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_pathPrefix09 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 9 = { M := { m00 := (-65/81), m01 := (-44/81), m02 := (-20/81), m10 := (20/81), m11 := (-55/81), m12 := (56/81), m20 := (44/81), m21 := (-40/81), m22 := (-55/81) }, b := { x := (-466/81), y := (-380/81), z := (460/81) } } := by
  simp [pathPrefixAffNat, nonIdFamilyBadFirstHit000_pathPrefix08, faceVectorSeq,
    nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_pathPrefix10 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 10 = { M := { m00 := (-193/243), m01 := (-134/243), m02 := (-62/243), m10 := (22/243), m11 := (-127/243), m12 := (206/243), m20 := (-146/243), m21 := (158/243), m22 := (113/243) }, b := { x := (-1402/243), y := (-1064/243), z := (1936/243) } } := by
  simp [pathPrefixAffNat, nonIdFamilyBadFirstHit000_pathPrefix09, faceVectorSeq,
    nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_pathPrefix11 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 11 = { M := { m00 := (-337/729), m01 := (-644/729), m02 := (56/729), m10 := (-644/729), m11 := (329/729), m12 := (-92/729), m20 := (-56/729), m21 := (92/729), m22 := (721/729) }, b := { x := (-3722/729), y := (-4612/729), z := (6572/729) } } := by
  simp [pathPrefixAffNat, nonIdFamilyBadFirstHit000_pathPrefix10, faceVectorSeq,
    nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_pathPrefix12 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 12 = { M := { m00 := (-1513/2187), m01 := (-1430/2187), m02 := (670/2187), m10 := (-170/2187), m11 := (-775/2187), m12 := (-2038/2187), m20 := (1570/2187), m21 := (-1462/2187), m22 := (425/2187) }, b := { x := (-12170/2187), y := (-10312/2187), z := (23192/2187) } } := by
  simp [pathPrefixAffNat, nonIdFamilyBadFirstHit000_pathPrefix11, faceVectorSeq,
    nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_pathPrefix13 :
    pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 13 = { M := { m00 := (2687/6561), m01 := (2936/6561), m02 := (-5216/6561), m10 := (-2696/6561), m11 := (-4511/6561), m12 := (-3928/6561), m20 := (5344/6561), m21 := (-3752/6561), m22 := (641/6561) }, b := { x := (-50962/6561), y := (-26564/6561), z := (68308/6561) } } := by
  simp [pathPrefixAffNat, nonIdFamilyBadFirstHit000_pathPrefix12, faceVectorSeq,
    nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_totalAff :
    totalAff (faceVectorSeq nonIdFamilyBadFirstHit000.forcedSeq) = { M := { m00 := (-2687/6561), m01 := (2936/6561), m02 := (-5216/6561), m10 := (2696/6561), m11 := (-4511/6561), m12 := (-3928/6561), m20 := (-5344/6561), m21 := (-3752/6561), m22 := (641/6561) }, b := { x := (-15196/2187), y := (-10652/2187), z := (26332/2187) } } := by
  rw [totalAff_eq_finalPath]
  change affCompose (pathPrefixAffNat (faceVectorSeq nonIdFamilyBadFirstHit000Seq) 13)
      (faceReflectionQ (faceVectorSeq nonIdFamilyBadFirstHit000Seq 0)) = { M := { m00 := (-2687/6561), m01 := (2936/6561), m02 := (-5216/6561), m10 := (2696/6561), m11 := (-4511/6561), m12 := (-3928/6561), m20 := (-5344/6561), m21 := (-3752/6561), m22 := (641/6561) }, b := { x := (-15196/2187), y := (-10652/2187), z := (26332/2187) } }
  rw [nonIdFamilyBadFirstHit000_pathPrefix13]
  simp [faceVectorSeq, nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num,
    faceReflectionQ, reflM, reflD, normalQ, offsetQ, affCompose,
    matSub, matId, scalarMat, outer, dot, matMul, matVec, vecAdd,
    scalarMul]
  norm_num

theorem nonIdFamilyBadFirstHit000_axisSolveCheck :
    checkAffineAxisSolveWitness
      (totalAff (faceVectorSeq nonIdFamilyBadFirstHit000.forcedSeq))
      nonIdFamilyBadFirstHit000.axis nonIdFamilyBadFirstHit000.p0 nonIdFamilyBadFirstHit000.lambda nonIdFamilyBadFirstHit000.solve = true := by
  rw [nonIdFamilyBadFirstHit000_totalAff]
  norm_num [nonIdFamilyBadFirstHit000, checkAffineAxisSolveWitness, axisSolveMatrix,
    axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec, mat4Id, matId, matSub]

theorem nonIdFamilyBadFirstHit000_forcedSeqMatches :
    checkForcedSeqMatchesWord nonIdFamilyBadFirstHit000 = true := by
  classical
  unfold checkForcedSeqMatchesWord
  apply decide_eq_true
  constructor
  · unfold StartsXp nonIdFamilyBadFirstHit000 faceVectorSeq
    decide
  · intro i
    fin_cases i <;> simp [nonIdFamilyBadFirstHit000, faceVectorSeq, afterStart,
      wordRank000000159_get00_num, wordRank000000159_get01_num, wordRank000000159_get02_num, wordRank000000159_get03_num, wordRank000000159_get04_num, wordRank000000159_get05_num, wordRank000000159_get06_num, wordRank000000159_get07_num, wordRank000000159_get08_num, wordRank000000159_get09_num, wordRank000000159_get10_num, wordRank000000159_get11_num, wordRank000000159_get12_num,
      nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num, pairOfFace]

theorem nonIdFamilyBadFirstHit000_commonCheck :
    checkNonIdCommon nonIdFamilyBadFirstHit000 = true := by
  have hValid : ValidPairWord nonIdFamilyBadFirstHit000.word := by
    simpa [nonIdFamilyBadFirstHit000] using nonIdFamilyBadFirstHit000_validPairWord
  have hNonId : totalLinearOfPairWord nonIdFamilyBadFirstHit000.word ≠ (matId : Mat3 Rat) := by
    simpa [nonIdFamilyBadFirstHit000] using nonIdFamilyBadFirstHit000_nonIdentity
  have hKernel :
      checkKernelLineWitness (totalLinearOfPairWord nonIdFamilyBadFirstHit000.word)
        nonIdFamilyBadFirstHit000.axis nonIdFamilyBadFirstHit000.kernel = true := by
    simpa [nonIdFamilyBadFirstHit000] using nonIdFamilyBadFirstHit000_kernelCheck
  unfold checkNonIdCommon
  simp [hValid, hNonId, hKernel, nonIdFamilyBadFirstHit000_forcedSeqMatches, nonIdFamilyBadFirstHit000_axisSolveCheck]

theorem nonIdFamilyBadFirstHit000_candidateW :
    candidateWQ (faceVectorSeq nonIdFamilyBadFirstHit000.forcedSeq) nonIdFamilyBadFirstHit000.p0 = { x := (-1628/205), y := (-1184/205), z := (444/41) } := by
  unfold candidateWQ
  rw [nonIdFamilyBadFirstHit000_totalAff]
  norm_num [nonIdFamilyBadFirstHit000, affApply, matVec, vecSub, vecAdd]

theorem nonIdFamilyBadFirstHit000_candidateTime03 :
    candidateImpactTimeQ (faceVectorSeq nonIdFamilyBadFirstHit000.forcedSeq) nonIdFamilyBadFirstHit000.p0
      (candidateWQ (faceVectorSeq nonIdFamilyBadFirstHit000.forcedSeq) nonIdFamilyBadFirstHit000.p0)
      (3 : Impact15) = (195/296) := by
  rw [nonIdFamilyBadFirstHit000_candidateW]
  simp [candidateImpactTimeQ, candidateImpactDenomQ,
    impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ,
    copiedOffsetQ, preImpactCopyAff, pathPrefixAff,
    impactFace, wordImpact, afterStart, nextImpact, lastImpact,
    nonIdFamilyBadFirstHit000, faceVectorSeq, nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num,
    nonIdFamilyBadFirstHit000_pathPrefix00, nonIdFamilyBadFirstHit000_pathPrefix01, nonIdFamilyBadFirstHit000_pathPrefix02, nonIdFamilyBadFirstHit000_pathPrefix03, nonIdFamilyBadFirstHit000_pathPrefix04, nonIdFamilyBadFirstHit000_pathPrefix05, nonIdFamilyBadFirstHit000_pathPrefix06, nonIdFamilyBadFirstHit000_pathPrefix07, nonIdFamilyBadFirstHit000_pathPrefix08, nonIdFamilyBadFirstHit000_pathPrefix09, nonIdFamilyBadFirstHit000_pathPrefix10, nonIdFamilyBadFirstHit000_pathPrefix11, nonIdFamilyBadFirstHit000_pathPrefix12, nonIdFamilyBadFirstHit000_pathPrefix13,
    normalQ, offsetQ, matVec, dot, vecAdd]
  norm_num

theorem nonIdFamilyBadFirstHit000_candidateTime04 :
    candidateImpactTimeQ (faceVectorSeq nonIdFamilyBadFirstHit000.forcedSeq) nonIdFamilyBadFirstHit000.p0
      (candidateWQ (faceVectorSeq nonIdFamilyBadFirstHit000.forcedSeq) nonIdFamilyBadFirstHit000.p0)
      (4 : Impact15) = (439/4440) := by
  rw [nonIdFamilyBadFirstHit000_candidateW]
  simp [candidateImpactTimeQ, candidateImpactDenomQ,
    impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ,
    copiedOffsetQ, preImpactCopyAff, pathPrefixAff,
    impactFace, wordImpact, afterStart, nextImpact, lastImpact,
    nonIdFamilyBadFirstHit000, faceVectorSeq, nonIdFamilyBadFirstHit000Seq_get00_num, nonIdFamilyBadFirstHit000Seq_get01_num, nonIdFamilyBadFirstHit000Seq_get02_num, nonIdFamilyBadFirstHit000Seq_get03_num, nonIdFamilyBadFirstHit000Seq_get04_num, nonIdFamilyBadFirstHit000Seq_get05_num, nonIdFamilyBadFirstHit000Seq_get06_num, nonIdFamilyBadFirstHit000Seq_get07_num, nonIdFamilyBadFirstHit000Seq_get08_num, nonIdFamilyBadFirstHit000Seq_get09_num, nonIdFamilyBadFirstHit000Seq_get10_num, nonIdFamilyBadFirstHit000Seq_get11_num, nonIdFamilyBadFirstHit000Seq_get12_num, nonIdFamilyBadFirstHit000Seq_get13_num,
    nonIdFamilyBadFirstHit000_pathPrefix00, nonIdFamilyBadFirstHit000_pathPrefix01, nonIdFamilyBadFirstHit000_pathPrefix02, nonIdFamilyBadFirstHit000_pathPrefix03, nonIdFamilyBadFirstHit000_pathPrefix04, nonIdFamilyBadFirstHit000_pathPrefix05, nonIdFamilyBadFirstHit000_pathPrefix06, nonIdFamilyBadFirstHit000_pathPrefix07, nonIdFamilyBadFirstHit000_pathPrefix08, nonIdFamilyBadFirstHit000_pathPrefix09, nonIdFamilyBadFirstHit000_pathPrefix10, nonIdFamilyBadFirstHit000_pathPrefix11, nonIdFamilyBadFirstHit000_pathPrefix12, nonIdFamilyBadFirstHit000_pathPrefix13,
    normalQ, offsetQ, matVec, dot, vecAdd]
  norm_num

theorem nonIdFamilyBadFirstHit000_candidateOrderingFails :
    CandidateOrderingFails (faceVectorSeq nonIdFamilyBadFirstHit000.forcedSeq) nonIdFamilyBadFirstHit000.p0
      (candidateWQ (faceVectorSeq nonIdFamilyBadFirstHit000.forcedSeq) nonIdFamilyBadFirstHit000.p0)
      { step := ⟨3, by decide⟩ } := by
  unfold CandidateOrderingFails
  change candidateImpactTimeQ (faceVectorSeq nonIdFamilyBadFirstHit000.forcedSeq) nonIdFamilyBadFirstHit000.p0
      (candidateWQ (faceVectorSeq nonIdFamilyBadFirstHit000.forcedSeq) nonIdFamilyBadFirstHit000.p0)
      (4 : Impact15) <=
    candidateImpactTimeQ (faceVectorSeq nonIdFamilyBadFirstHit000.forcedSeq) nonIdFamilyBadFirstHit000.p0
      (candidateWQ (faceVectorSeq nonIdFamilyBadFirstHit000.forcedSeq) nonIdFamilyBadFirstHit000.p0)
      (3 : Impact15)
  rw [nonIdFamilyBadFirstHit000_candidateTime04, nonIdFamilyBadFirstHit000_candidateTime03]
  norm_num

theorem nonIdFamilyBadFirstHit000_check :
    checkNonIdCert nonIdFamilyBadFirstHit000 = true := by
  apply checkNonIdCert_badFirstHit nonIdFamilyBadFirstHit000 { step := ⟨3, by decide⟩ }
  · rfl
  · simpa using nonIdFamilyBadFirstHit000_commonCheck
  · simpa [nonIdFamilyBadFirstHit000] using nonIdFamilyBadFirstHit000_axisForces
  · simpa [nonIdFamilyBadFirstHit000] using nonIdFamilyBadFirstHit000_candidateOrderingFails

theorem nonIdFamilyBadFirstHit000_coveredRank :
    checkNonIdCoveredRank 159 nonIdFamilyBadFirstHit000 = true := by
  decide

theorem nonIdFamilyBadFirstHit000_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badFirstHit
      nonIdFamilyBadFirstHit000 = true := by
  rfl

def sampleBadDirectionFamilyCertInterval : RankInterval where
  startRank := 13
  endRank := 16

def sampleBadDirectionFamilyCert : NonIdFamilyCert where
  name := "sampleBadDirectionFamily"
  failure := NonIdFamilyFailure.badDirectionSign
  coverages := #[nonIdFamilyBadDirection000Coverage, nonIdFamilyBadDirection001Coverage, nonIdFamilyBadDirection002Coverage]
  certs := #[nonIdFamilyBadDirection000, nonIdFamilyBadDirection001, nonIdFamilyBadDirection002]

theorem sampleBadDirectionFamilyCert_check :
    checkNonIdFamilyCert sampleBadDirectionFamilyCertInterval sampleBadDirectionFamilyCert = true := by
  unfold checkNonIdFamilyCert sampleBadDirectionFamilyCertInterval sampleBadDirectionFamilyCert
  change
      (checkRankInterval { startRank := 13, endRank := 16 } &&
        checkNonIdFamilyEntries
          NonIdFamilyFailure.badDirectionSign
          13 16
          [nonIdFamilyBadDirection000Coverage, nonIdFamilyBadDirection001Coverage, nonIdFamilyBadDirection002Coverage]
          [nonIdFamilyBadDirection000, nonIdFamilyBadDirection001, nonIdFamilyBadDirection002]) = true
  simp [checkRankInterval, checkNonIdFamilyEntries,
    nonIdFamilyBadDirection000Coverage_check, nonIdFamilyBadDirection001Coverage_check, nonIdFamilyBadDirection002Coverage_check, nonIdFamilyBadDirection000Coverage_canonicalRank, nonIdFamilyBadDirection001Coverage_canonicalRank, nonIdFamilyBadDirection002Coverage_canonicalRank, nonIdFamilyBadDirection000Coverage_coveredRank, nonIdFamilyBadDirection001Coverage_coveredRank, nonIdFamilyBadDirection002Coverage_coveredRank, nonIdFamilyBadDirection000_coveredRank, nonIdFamilyBadDirection001_coveredRank, nonIdFamilyBadDirection002_coveredRank, nonIdFamilyBadDirection000_check, nonIdFamilyBadDirection001_check, nonIdFamilyBadDirection002_check, nonIdFamilyBadDirection000_familyFailure, nonIdFamilyBadDirection001_familyFailure, nonIdFamilyBadDirection002_familyFailure]
  norm_num [numPairWords]

theorem sampleBadDirectionFamilyCert_leafCheck :
    checkNonIdCoverageLeaf sampleBadDirectionFamilyCertInterval
      (NonIdCoverageLeaf.family sampleBadDirectionFamilyCert) = true := by
  unfold checkNonIdCoverageLeaf checkNonIdCoverageLeafPayload
  change
      (checkRankInterval sampleBadDirectionFamilyCertInterval &&
        checkNonIdFamilyCert sampleBadDirectionFamilyCertInterval sampleBadDirectionFamilyCert) = true
  rw [sampleBadDirectionFamilyCert_check]
  simp [sampleBadDirectionFamilyCertInterval, checkRankInterval]
  norm_num [numPairWords]

def sampleBadDirectionFamilyCertLeaf : NonIdCoverageTree :=
  NonIdCoverageTree.leaf sampleBadDirectionFamilyCertInterval
    (NonIdCoverageLeaf.family sampleBadDirectionFamilyCert)

def sampleBadDirectionFamilyCertTree : NonIdCoverageTree :=
  NonIdCoverageTree.branch sampleBadDirectionFamilyCertInterval [sampleBadDirectionFamilyCertLeaf]

theorem sampleBadDirectionFamilyCert_treeCheck :
    checkNonIdCoverageTree sampleBadDirectionFamilyCertTree = true := by
  unfold checkNonIdCoverageTree sampleBadDirectionFamilyCertTree sampleBadDirectionFamilyCertLeaf coverageTreeFuel
  simp [checkNonIdCoverageTreeFuel, checkNonIdCoverageChildrenWith,
    sampleBadDirectionFamilyCert_leafCheck, checkRankInterval,
    NonIdCoverageTree.interval]
  norm_num [numPairWords, sampleBadDirectionFamilyCertInterval]

def sampleBadPairBalanceFamilyCertInterval : RankInterval where
  startRank := 102
  endRank := 103

def sampleBadPairBalanceFamilyCert : NonIdFamilyCert where
  name := "sampleBadPairBalanceFamily"
  failure := NonIdFamilyFailure.badPairBalance
  coverages := #[nonIdFamilyBadPairBalance000Coverage]
  certs := #[nonIdFamilyBadPairBalance000]

theorem sampleBadPairBalanceFamilyCert_check :
    checkNonIdFamilyCert sampleBadPairBalanceFamilyCertInterval sampleBadPairBalanceFamilyCert = true := by
  unfold checkNonIdFamilyCert sampleBadPairBalanceFamilyCertInterval sampleBadPairBalanceFamilyCert
  change
      (checkRankInterval { startRank := 102, endRank := 103 } &&
        checkNonIdFamilyEntries
          NonIdFamilyFailure.badPairBalance
          102 103
          [nonIdFamilyBadPairBalance000Coverage]
          [nonIdFamilyBadPairBalance000]) = true
  simp [checkRankInterval, checkNonIdFamilyEntries,
    nonIdFamilyBadPairBalance000Coverage_check, nonIdFamilyBadPairBalance000Coverage_canonicalRank, nonIdFamilyBadPairBalance000Coverage_coveredRank, nonIdFamilyBadPairBalance000_coveredRank, nonIdFamilyBadPairBalance000_check, nonIdFamilyBadPairBalance000_familyFailure]
  norm_num [numPairWords]

theorem sampleBadPairBalanceFamilyCert_leafCheck :
    checkNonIdCoverageLeaf sampleBadPairBalanceFamilyCertInterval
      (NonIdCoverageLeaf.family sampleBadPairBalanceFamilyCert) = true := by
  unfold checkNonIdCoverageLeaf checkNonIdCoverageLeafPayload
  change
      (checkRankInterval sampleBadPairBalanceFamilyCertInterval &&
        checkNonIdFamilyCert sampleBadPairBalanceFamilyCertInterval sampleBadPairBalanceFamilyCert) = true
  rw [sampleBadPairBalanceFamilyCert_check]
  simp [sampleBadPairBalanceFamilyCertInterval, checkRankInterval]
  norm_num [numPairWords]

def sampleBadPairBalanceFamilyCertLeaf : NonIdCoverageTree :=
  NonIdCoverageTree.leaf sampleBadPairBalanceFamilyCertInterval
    (NonIdCoverageLeaf.family sampleBadPairBalanceFamilyCert)

def sampleBadPairBalanceFamilyCertTree : NonIdCoverageTree :=
  NonIdCoverageTree.branch sampleBadPairBalanceFamilyCertInterval [sampleBadPairBalanceFamilyCertLeaf]

theorem sampleBadPairBalanceFamilyCert_treeCheck :
    checkNonIdCoverageTree sampleBadPairBalanceFamilyCertTree = true := by
  unfold checkNonIdCoverageTree sampleBadPairBalanceFamilyCertTree sampleBadPairBalanceFamilyCertLeaf coverageTreeFuel
  simp [checkNonIdCoverageTreeFuel, checkNonIdCoverageChildrenWith,
    sampleBadPairBalanceFamilyCert_leafCheck, checkRankInterval,
    NonIdCoverageTree.interval]
  norm_num [numPairWords, sampleBadPairBalanceFamilyCertInterval]

def sampleAxisMissFamilyCertInterval : RankInterval where
  startRank := 104
  endRank := 106

def sampleAxisMissFamilyCert : NonIdFamilyCert where
  name := "sampleAxisMissFamily"
  failure := NonIdFamilyFailure.axisMissesStartInterior
  coverages := #[nonIdFamilyAxisMiss000Coverage, nonIdFamilyAxisMiss001Coverage]
  certs := #[nonIdFamilyAxisMiss000, nonIdFamilyAxisMiss001]

theorem sampleAxisMissFamilyCert_check :
    checkNonIdFamilyCert sampleAxisMissFamilyCertInterval sampleAxisMissFamilyCert = true := by
  unfold checkNonIdFamilyCert sampleAxisMissFamilyCertInterval sampleAxisMissFamilyCert
  change
      (checkRankInterval { startRank := 104, endRank := 106 } &&
        checkNonIdFamilyEntries
          NonIdFamilyFailure.axisMissesStartInterior
          104 106
          [nonIdFamilyAxisMiss000Coverage, nonIdFamilyAxisMiss001Coverage]
          [nonIdFamilyAxisMiss000, nonIdFamilyAxisMiss001]) = true
  simp [checkRankInterval, checkNonIdFamilyEntries,
    nonIdFamilyAxisMiss000Coverage_check, nonIdFamilyAxisMiss001Coverage_check, nonIdFamilyAxisMiss000Coverage_canonicalRank, nonIdFamilyAxisMiss001Coverage_canonicalRank, nonIdFamilyAxisMiss000Coverage_coveredRank, nonIdFamilyAxisMiss001Coverage_coveredRank, nonIdFamilyAxisMiss000_coveredRank, nonIdFamilyAxisMiss001_coveredRank, nonIdFamilyAxisMiss000_check, nonIdFamilyAxisMiss001_check, nonIdFamilyAxisMiss000_familyFailure, nonIdFamilyAxisMiss001_familyFailure]
  norm_num [numPairWords]

theorem sampleAxisMissFamilyCert_leafCheck :
    checkNonIdCoverageLeaf sampleAxisMissFamilyCertInterval
      (NonIdCoverageLeaf.family sampleAxisMissFamilyCert) = true := by
  unfold checkNonIdCoverageLeaf checkNonIdCoverageLeafPayload
  change
      (checkRankInterval sampleAxisMissFamilyCertInterval &&
        checkNonIdFamilyCert sampleAxisMissFamilyCertInterval sampleAxisMissFamilyCert) = true
  rw [sampleAxisMissFamilyCert_check]
  simp [sampleAxisMissFamilyCertInterval, checkRankInterval]
  norm_num [numPairWords]

def sampleAxisMissFamilyCertLeaf : NonIdCoverageTree :=
  NonIdCoverageTree.leaf sampleAxisMissFamilyCertInterval
    (NonIdCoverageLeaf.family sampleAxisMissFamilyCert)

def sampleAxisMissFamilyCertTree : NonIdCoverageTree :=
  NonIdCoverageTree.branch sampleAxisMissFamilyCertInterval [sampleAxisMissFamilyCertLeaf]

theorem sampleAxisMissFamilyCert_treeCheck :
    checkNonIdCoverageTree sampleAxisMissFamilyCertTree = true := by
  unfold checkNonIdCoverageTree sampleAxisMissFamilyCertTree sampleAxisMissFamilyCertLeaf coverageTreeFuel
  simp [checkNonIdCoverageTreeFuel, checkNonIdCoverageChildrenWith,
    sampleAxisMissFamilyCert_leafCheck, checkRankInterval,
    NonIdCoverageTree.interval]
  norm_num [numPairWords, sampleAxisMissFamilyCertInterval]

def sampleBadFirstHitFamilyCertInterval : RankInterval where
  startRank := 159
  endRank := 160

def sampleBadFirstHitFamilyCert : NonIdFamilyCert where
  name := "sampleBadFirstHitFamily"
  failure := NonIdFamilyFailure.badFirstHit
  coverages := #[nonIdFamilyBadFirstHit000Coverage]
  certs := #[nonIdFamilyBadFirstHit000]

theorem sampleBadFirstHitFamilyCert_check :
    checkNonIdFamilyCert sampleBadFirstHitFamilyCertInterval sampleBadFirstHitFamilyCert = true := by
  unfold checkNonIdFamilyCert sampleBadFirstHitFamilyCertInterval sampleBadFirstHitFamilyCert
  change
      (checkRankInterval { startRank := 159, endRank := 160 } &&
        checkNonIdFamilyEntries
          NonIdFamilyFailure.badFirstHit
          159 160
          [nonIdFamilyBadFirstHit000Coverage]
          [nonIdFamilyBadFirstHit000]) = true
  simp [checkRankInterval, checkNonIdFamilyEntries,
    nonIdFamilyBadFirstHit000Coverage_check, nonIdFamilyBadFirstHit000Coverage_canonicalRank, nonIdFamilyBadFirstHit000Coverage_coveredRank, nonIdFamilyBadFirstHit000_coveredRank, nonIdFamilyBadFirstHit000_check, nonIdFamilyBadFirstHit000_familyFailure]
  norm_num [numPairWords]

theorem sampleBadFirstHitFamilyCert_leafCheck :
    checkNonIdCoverageLeaf sampleBadFirstHitFamilyCertInterval
      (NonIdCoverageLeaf.family sampleBadFirstHitFamilyCert) = true := by
  unfold checkNonIdCoverageLeaf checkNonIdCoverageLeafPayload
  change
      (checkRankInterval sampleBadFirstHitFamilyCertInterval &&
        checkNonIdFamilyCert sampleBadFirstHitFamilyCertInterval sampleBadFirstHitFamilyCert) = true
  rw [sampleBadFirstHitFamilyCert_check]
  simp [sampleBadFirstHitFamilyCertInterval, checkRankInterval]
  norm_num [numPairWords]

def sampleBadFirstHitFamilyCertLeaf : NonIdCoverageTree :=
  NonIdCoverageTree.leaf sampleBadFirstHitFamilyCertInterval
    (NonIdCoverageLeaf.family sampleBadFirstHitFamilyCert)

def sampleBadFirstHitFamilyCertTree : NonIdCoverageTree :=
  NonIdCoverageTree.branch sampleBadFirstHitFamilyCertInterval [sampleBadFirstHitFamilyCertLeaf]

theorem sampleBadFirstHitFamilyCert_treeCheck :
    checkNonIdCoverageTree sampleBadFirstHitFamilyCertTree = true := by
  unfold checkNonIdCoverageTree sampleBadFirstHitFamilyCertTree sampleBadFirstHitFamilyCertLeaf coverageTreeFuel
  simp [checkNonIdCoverageTreeFuel, checkNonIdCoverageChildrenWith,
    sampleBadFirstHitFamilyCert_leafCheck, checkRankInterval,
    NonIdCoverageTree.interval]
  norm_num [numPairWords, sampleBadFirstHitFamilyCertInterval]

def sampleFamilyCoverage : NonIdCoverageForest where
  trees := [sampleBadDirectionFamilyCertTree, sampleBadPairBalanceFamilyCertTree, sampleAxisMissFamilyCertTree, sampleBadFirstHitFamilyCertTree]

theorem sampleFamilyCoverage_check :
    checkNonIdCoverageForest sampleFamilyCoverage = true := by
  unfold checkNonIdCoverageForest sampleFamilyCoverage
  simp [sampleBadDirectionFamilyCert_treeCheck, sampleBadPairBalanceFamilyCert_treeCheck, sampleAxisMissFamilyCert_treeCheck, sampleBadFirstHitFamilyCert_treeCheck]

theorem sampleFamilyCoverage_sound
    {r : Fin numPairWords}
    (hcontains : sampleFamilyCoverage.ContainsPairRank r) :
    exists cert : NonIdCert,
      checkNonIdCoveredRank r.val cert = true /\
        checkNonIdCert cert = true :=
  checkNonIdCoverageForest_pairRank_sound
    sampleFamilyCoverage_check hcontains

#check Cuboctahedron.Generated.NonIdentity.sampleFamilyCoverage
#check Cuboctahedron.Generated.NonIdentity.sampleFamilyCoverage_sound

end Cuboctahedron.Generated.NonIdentity
