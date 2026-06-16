import Cuboctahedron.Generated.SmallSample

/-!
Generated representative symmetry/canonicalization sample for Step 14E.2.
-/

namespace Cuboctahedron.Generated.CanonicalSample

set_option maxHeartbeats 1600000
set_option maxRecDepth 10000

def sampleSym : StartedSym :=
  { swapYZ := false, negY := false, negZ := true }

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

def wordRank000000814 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000000814_get00_num :
    wordRank000000814.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000814_get00_mk (h : 0 < 13) :
    wordRank000000814.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000814_get01_num :
    wordRank000000814.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000814_get01_mk (h : 1 < 13) :
    wordRank000000814.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000814_get02_num :
    wordRank000000814.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000814_get02_mk (h : 2 < 13) :
    wordRank000000814.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000814_get03_num :
    wordRank000000814.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000814_get03_mk (h : 3 < 13) :
    wordRank000000814.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000814_get04_num :
    wordRank000000814.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000814_get04_mk (h : 4 < 13) :
    wordRank000000814.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000814_get05_num :
    wordRank000000814.get (5 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000814_get05_mk (h : 5 < 13) :
    wordRank000000814.get ⟨5, h⟩ = PairId.d11m := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000814_get06_num :
    wordRank000000814.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000814_get06_mk (h : 6 < 13) :
    wordRank000000814.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000814_get07_num :
    wordRank000000814.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000814_get07_mk (h : 7 < 13) :
    wordRank000000814.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000814_get08_num :
    wordRank000000814.get (8 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000814_get08_mk (h : 8 < 13) :
    wordRank000000814.get ⟨8, h⟩ = PairId.d111 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000814_get09_num :
    wordRank000000814.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000814_get09_mk (h : 9 < 13) :
    wordRank000000814.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000814_get10_num :
    wordRank000000814.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000814_get10_mk (h : 10 < 13) :
    wordRank000000814.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000814_get11_num :
    wordRank000000814.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000814_get11_mk (h : 11 < 13) :
    wordRank000000814.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000814_get12_num :
    wordRank000000814.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000814_get12_mk (h : 12 < 13) :
    wordRank000000814.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000815 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000000815_get00_num :
    wordRank000000815.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000815_get00_mk (h : 0 < 13) :
    wordRank000000815.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000815_get01_num :
    wordRank000000815.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000815_get01_mk (h : 1 < 13) :
    wordRank000000815.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000815_get02_num :
    wordRank000000815.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000815_get02_mk (h : 2 < 13) :
    wordRank000000815.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000815_get03_num :
    wordRank000000815.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000815_get03_mk (h : 3 < 13) :
    wordRank000000815.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000815_get04_num :
    wordRank000000815.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000815_get04_mk (h : 4 < 13) :
    wordRank000000815.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000815_get05_num :
    wordRank000000815.get (5 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000815_get05_mk (h : 5 < 13) :
    wordRank000000815.get ⟨5, h⟩ = PairId.d11m := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000815_get06_num :
    wordRank000000815.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000815_get06_mk (h : 6 < 13) :
    wordRank000000815.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000815_get07_num :
    wordRank000000815.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000815_get07_mk (h : 7 < 13) :
    wordRank000000815.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000815_get08_num :
    wordRank000000815.get (8 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000815_get08_mk (h : 8 < 13) :
    wordRank000000815.get ⟨8, h⟩ = PairId.d111 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000815_get09_num :
    wordRank000000815.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000815_get09_mk (h : 9 < 13) :
    wordRank000000815.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000815_get10_num :
    wordRank000000815.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000815_get10_mk (h : 10 < 13) :
    wordRank000000815.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000815_get11_num :
    wordRank000000815.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000815_get11_mk (h : 11 < 13) :
    wordRank000000815.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000815_get12_num :
    wordRank000000815.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000815_get12_mk (h : 12 < 13) :
    wordRank000000815.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def nonIdBadDirectionSym000Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zm, Face.zm, Face.tppm, Face.tppm, Face.tppp, Face.tppp, Face.tpmm, Face.tmpm, Face.tpmm, Face.tmpm], by decide⟩

@[simp] theorem nonIdBadDirectionSym000Seq_get00_num :
    nonIdBadDirectionSym000Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get00_mk (h : 0 < 14) :
    nonIdBadDirectionSym000Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get01_num :
    nonIdBadDirectionSym000Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get01_mk (h : 1 < 14) :
    nonIdBadDirectionSym000Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get02_num :
    nonIdBadDirectionSym000Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get02_mk (h : 2 < 14) :
    nonIdBadDirectionSym000Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get03_num :
    nonIdBadDirectionSym000Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get03_mk (h : 3 < 14) :
    nonIdBadDirectionSym000Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get04_num :
    nonIdBadDirectionSym000Seq.get (4 : Step14) = Face.zm := by
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get04_mk (h : 4 < 14) :
    nonIdBadDirectionSym000Seq.get ⟨4, h⟩ = Face.zm := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get05_num :
    nonIdBadDirectionSym000Seq.get (5 : Step14) = Face.zm := by
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get05_mk (h : 5 < 14) :
    nonIdBadDirectionSym000Seq.get ⟨5, h⟩ = Face.zm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get06_num :
    nonIdBadDirectionSym000Seq.get (6 : Step14) = Face.tppm := by
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get06_mk (h : 6 < 14) :
    nonIdBadDirectionSym000Seq.get ⟨6, h⟩ = Face.tppm := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get07_num :
    nonIdBadDirectionSym000Seq.get (7 : Step14) = Face.tppm := by
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get07_mk (h : 7 < 14) :
    nonIdBadDirectionSym000Seq.get ⟨7, h⟩ = Face.tppm := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get08_num :
    nonIdBadDirectionSym000Seq.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get08_mk (h : 8 < 14) :
    nonIdBadDirectionSym000Seq.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get09_num :
    nonIdBadDirectionSym000Seq.get (9 : Step14) = Face.tppp := by
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get09_mk (h : 9 < 14) :
    nonIdBadDirectionSym000Seq.get ⟨9, h⟩ = Face.tppp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get10_num :
    nonIdBadDirectionSym000Seq.get (10 : Step14) = Face.tpmm := by
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get10_mk (h : 10 < 14) :
    nonIdBadDirectionSym000Seq.get ⟨10, h⟩ = Face.tpmm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get11_num :
    nonIdBadDirectionSym000Seq.get (11 : Step14) = Face.tmpm := by
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get11_mk (h : 11 < 14) :
    nonIdBadDirectionSym000Seq.get ⟨11, h⟩ = Face.tmpm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get12_num :
    nonIdBadDirectionSym000Seq.get (12 : Step14) = Face.tpmm := by
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get12_mk (h : 12 < 14) :
    nonIdBadDirectionSym000Seq.get ⟨12, h⟩ = Face.tpmm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get13_num :
    nonIdBadDirectionSym000Seq.get (13 : Step14) = Face.tmpm := by
  decide

@[simp] theorem nonIdBadDirectionSym000Seq_get13_mk (h : 13 < 14) :
    nonIdBadDirectionSym000Seq.get ⟨13, h⟩ = Face.tmpm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def nonIdBadDirectionSym000 : NonIdCert where
  word := wordRank000000814
  axis := { x := -1, y := 1, z := 0 }
  kernel := { crossFactor := { m00 := (7/8), m01 := 0, m02 := (-1/2), m10 := (7/8), m11 := 0, m12 := (-1/2), m20 := 1, m21 := 0, m22 := (7/8) } }
  forcedSeq := nonIdBadDirectionSym000Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := mat4Id }
  failure := NonIdFailure.badDirectionSign ⟨3, by decide⟩

def translationBadDirectionSym000Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zp, Face.zm, Face.tmmp, Face.tppm, Face.tmmm, Face.tppp, Face.tmpp, Face.tpmm, Face.tpmp, Face.tmpm], by decide⟩

@[simp] theorem translationBadDirectionSym000Seq_get00_num :
    translationBadDirectionSym000Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem translationBadDirectionSym000Seq_get00_mk (h : 0 < 14) :
    translationBadDirectionSym000Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationBadDirectionSym000Seq_get01_num :
    translationBadDirectionSym000Seq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem translationBadDirectionSym000Seq_get01_mk (h : 1 < 14) :
    translationBadDirectionSym000Seq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationBadDirectionSym000Seq_get02_num :
    translationBadDirectionSym000Seq.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem translationBadDirectionSym000Seq_get02_mk (h : 2 < 14) :
    translationBadDirectionSym000Seq.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationBadDirectionSym000Seq_get03_num :
    translationBadDirectionSym000Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem translationBadDirectionSym000Seq_get03_mk (h : 3 < 14) :
    translationBadDirectionSym000Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationBadDirectionSym000Seq_get04_num :
    translationBadDirectionSym000Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem translationBadDirectionSym000Seq_get04_mk (h : 4 < 14) :
    translationBadDirectionSym000Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationBadDirectionSym000Seq_get05_num :
    translationBadDirectionSym000Seq.get (5 : Step14) = Face.zm := by
  decide

@[simp] theorem translationBadDirectionSym000Seq_get05_mk (h : 5 < 14) :
    translationBadDirectionSym000Seq.get ⟨5, h⟩ = Face.zm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationBadDirectionSym000Seq_get06_num :
    translationBadDirectionSym000Seq.get (6 : Step14) = Face.tmmp := by
  decide

@[simp] theorem translationBadDirectionSym000Seq_get06_mk (h : 6 < 14) :
    translationBadDirectionSym000Seq.get ⟨6, h⟩ = Face.tmmp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationBadDirectionSym000Seq_get07_num :
    translationBadDirectionSym000Seq.get (7 : Step14) = Face.tppm := by
  decide

@[simp] theorem translationBadDirectionSym000Seq_get07_mk (h : 7 < 14) :
    translationBadDirectionSym000Seq.get ⟨7, h⟩ = Face.tppm := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationBadDirectionSym000Seq_get08_num :
    translationBadDirectionSym000Seq.get (8 : Step14) = Face.tmmm := by
  decide

@[simp] theorem translationBadDirectionSym000Seq_get08_mk (h : 8 < 14) :
    translationBadDirectionSym000Seq.get ⟨8, h⟩ = Face.tmmm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationBadDirectionSym000Seq_get09_num :
    translationBadDirectionSym000Seq.get (9 : Step14) = Face.tppp := by
  decide

@[simp] theorem translationBadDirectionSym000Seq_get09_mk (h : 9 < 14) :
    translationBadDirectionSym000Seq.get ⟨9, h⟩ = Face.tppp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationBadDirectionSym000Seq_get10_num :
    translationBadDirectionSym000Seq.get (10 : Step14) = Face.tmpp := by
  decide

@[simp] theorem translationBadDirectionSym000Seq_get10_mk (h : 10 < 14) :
    translationBadDirectionSym000Seq.get ⟨10, h⟩ = Face.tmpp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationBadDirectionSym000Seq_get11_num :
    translationBadDirectionSym000Seq.get (11 : Step14) = Face.tpmm := by
  decide

@[simp] theorem translationBadDirectionSym000Seq_get11_mk (h : 11 < 14) :
    translationBadDirectionSym000Seq.get ⟨11, h⟩ = Face.tpmm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationBadDirectionSym000Seq_get12_num :
    translationBadDirectionSym000Seq.get (12 : Step14) = Face.tpmp := by
  decide

@[simp] theorem translationBadDirectionSym000Seq_get12_mk (h : 12 < 14) :
    translationBadDirectionSym000Seq.get ⟨12, h⟩ = Face.tpmp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationBadDirectionSym000Seq_get13_num :
    translationBadDirectionSym000Seq.get (13 : Step14) = Face.tmpm := by
  decide

@[simp] theorem translationBadDirectionSym000Seq_get13_mk (h : 13 < 14) :
    translationBadDirectionSym000Seq.get ⟨13, h⟩ = Face.tmpm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def translationBadDirectionSym000 : TranslationCert where
  word := wordRank000000815
  signMask := ⟨50, by decide⟩
  seq := translationBadDirectionSym000Seq
  b := { x := (4/3), y := (-28/3), z := (28/3) }
  failure := TranslationFailure.badDirectionSign ⟨1, by decide⟩

theorem nonIdBadDirectionSym000_check : checkNonIdCert nonIdBadDirectionSym000 = true := by
  apply checkNonIdCert_badDirectionSign nonIdBadDirectionSym000 ⟨3, by decide⟩
  · rfl
  · unfold nonIdBadDirectionSym000 wordRank000000814 ValidPairWord pairCount
    decide
  · rw [totalLinearOfPairWord_eq_pairLinearProductRight]
    simp [nonIdBadDirectionSym000, pairLinearProductRight, pairLinearSuffixNat, reflM,
      canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
    norm_num
  · rw [totalLinearOfPairWord_eq_pairLinearProductRight]
    simp [nonIdBadDirectionSym000, checkKernelLineWitness, checkVec3NonzeroQ,
      pairLinearProductRight, pairLinearSuffixNat, reflM, canonicalNormalQ,
      matSub, matId, scalarMat, outer, dot, matMul, matVec, fixedPart,
      crossLeftMatrix]
    norm_num
  · intro f hf
    cases f <;> simp [nonIdBadDirectionSym000, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢

theorem translationBadDirectionSym000_check : checkTranslationCert translationBadDirectionSym000 = true := by
  apply checkTranslationCert_badDirectionSign translationBadDirectionSym000 ⟨1, by decide⟩
  · rfl
  · unfold translationBadDirectionSym000 wordRank000000815 ValidPairWord pairCount
    decide
  · rw [totalLinearOfPairWord_eq_pairLinearProductRight]
    simp [translationBadDirectionSym000, pairLinearProductRight, pairLinearSuffixNat, reflM,
      canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
    norm_num
  · intro i
    fin_cases i <;> simp [translationBadDirectionSym000, translationChoiceSeq, signedPositiveAt,
      maskBitForPair, countPairBeforeNat, faceVectorSeq, faceOfPairSign]
  · apply Vec3.ext <;> norm_num [
      translationBadDirectionSym000, TranslationCert.seqFun, faceVectorSeq, totalAff,
      totalOrder, composeFaceList, affCompose, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul]
  · decide
  · decide
  · norm_num [
      translationBadDirectionSym000, TranslationCert.seqFun, faceVectorSeq, impactDenom,
      impactPlaneNormalQ, copiedNormalQ, preImpactNormalQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId,
      affId, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul]

def nonidentityTransport : CanonicalNonIdTransport where
  sym := sampleSym
  canonical := Cuboctahedron.Generated.SmallSample.nonIdBadDirection000
  raw := nonIdBadDirectionSym000

theorem nonidentity_transport_check :
    checkCanonicalNonIdTransport nonidentityTransport = true := by
  simp [checkCanonicalNonIdTransport, nonidentityTransport, sampleSym,
    nonIdBadDirectionSym000_check,
    Cuboctahedron.Generated.SmallSample.nonIdBadDirection000_check]
  decide

theorem nonidentity_transport_raw_check :
    checkNonIdCert nonIdBadDirectionSym000 = true :=
  canonical_nonidentity_failure_transport nonidentityTransport
    nonidentity_transport_check

def translationTransport : CanonicalTranslationTransport where
  sym := sampleSym
  canonical := Cuboctahedron.Generated.SmallSample.translationBadDirection000
  raw := translationBadDirectionSym000

theorem translation_transport_check :
    checkCanonicalTranslationTransport translationTransport = true := by
  simp [checkCanonicalTranslationTransport, translationTransport, sampleSym,
    translationBadDirectionSym000_check,
    Cuboctahedron.Generated.SmallSample.translationBadDirection000_check]
  refine And.intro ?left0 ?failure
  · refine And.intro ?left1 ?vec
    · refine And.intro ?left2 ?seq
      · exact And.intro (by decide) (by decide)
      · decide
    · norm_num [
        translationBadDirectionSym000,
        Cuboctahedron.Generated.SmallSample.translationBadDirection000, symVecQ, negIf]
  · decide

theorem translation_transport_raw_check :
    checkTranslationCert translationBadDirectionSym000 = true :=
  canonical_translation_failure_transport translationTransport
    translation_transport_check

#check canonical_nonidentity_failure_transport
#check canonical_translation_failure_transport
#check nonidentity_transport_check
#check translation_transport_check

end Cuboctahedron.Generated.CanonicalSample
