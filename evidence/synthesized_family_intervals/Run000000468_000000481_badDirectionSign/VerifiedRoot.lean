import Cuboctahedron.Generated.SymmetryEvidence.FamilyInterval
import Cuboctahedron.Search.NonIdentityFamilies

/-!
Generated synthesized family-interval evidence.

This root groups a contiguous run of exact non-identity certificates
with the same failure kind into one `NonIdParametricFamily` interval.
-/

namespace Cuboctahedron.Generated.SynthFamilyInterval.Run000000468_000000481_badDirectionSign

set_option maxHeartbeats 2400000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def wordRank000000468 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000468_get00_num :
    wordRank000000468.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000468_get00_mk (h : 0 < 13) :
    wordRank000000468.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000468_get01_num :
    wordRank000000468.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000468_get01_mk (h : 1 < 13) :
    wordRank000000468.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000468_get02_num :
    wordRank000000468.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000468_get02_mk (h : 2 < 13) :
    wordRank000000468.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000468_get03_num :
    wordRank000000468.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000468_get03_mk (h : 3 < 13) :
    wordRank000000468.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000468_get04_num :
    wordRank000000468.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000468_get04_mk (h : 4 < 13) :
    wordRank000000468.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000468_get05_num :
    wordRank000000468.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000468_get05_mk (h : 5 < 13) :
    wordRank000000468.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000468_get06_num :
    wordRank000000468.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000468_get06_mk (h : 6 < 13) :
    wordRank000000468.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000468_get07_num :
    wordRank000000468.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000468_get07_mk (h : 7 < 13) :
    wordRank000000468.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000468_get08_num :
    wordRank000000468.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000468_get08_mk (h : 8 < 13) :
    wordRank000000468.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000468_get09_num :
    wordRank000000468.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000468_get09_mk (h : 9 < 13) :
    wordRank000000468.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000468_get10_num :
    wordRank000000468.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000468_get10_mk (h : 10 < 13) :
    wordRank000000468.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000468_get11_num :
    wordRank000000468.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000468_get11_mk (h : 11 < 13) :
    wordRank000000468.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000468_get12_num :
    wordRank000000468.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000468_get12_mk (h : 12 < 13) :
    wordRank000000468.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000469 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.d11m], by decide⟩

@[simp] theorem wordRank000000469_get00_num :
    wordRank000000469.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000469_get00_mk (h : 0 < 13) :
    wordRank000000469.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000469_get01_num :
    wordRank000000469.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000469_get01_mk (h : 1 < 13) :
    wordRank000000469.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000469_get02_num :
    wordRank000000469.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000469_get02_mk (h : 2 < 13) :
    wordRank000000469.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000469_get03_num :
    wordRank000000469.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000469_get03_mk (h : 3 < 13) :
    wordRank000000469.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000469_get04_num :
    wordRank000000469.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000469_get04_mk (h : 4 < 13) :
    wordRank000000469.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000469_get05_num :
    wordRank000000469.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000469_get05_mk (h : 5 < 13) :
    wordRank000000469.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000469_get06_num :
    wordRank000000469.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000469_get06_mk (h : 6 < 13) :
    wordRank000000469.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000469_get07_num :
    wordRank000000469.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000469_get07_mk (h : 7 < 13) :
    wordRank000000469.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000469_get08_num :
    wordRank000000469.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000469_get08_mk (h : 8 < 13) :
    wordRank000000469.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000469_get09_num :
    wordRank000000469.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000469_get09_mk (h : 9 < 13) :
    wordRank000000469.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000469_get10_num :
    wordRank000000469.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000469_get10_mk (h : 10 < 13) :
    wordRank000000469.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000469_get11_num :
    wordRank000000469.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000469_get11_mk (h : 11 < 13) :
    wordRank000000469.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000469_get12_num :
    wordRank000000469.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000469_get12_mk (h : 12 < 13) :
    wordRank000000469.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000470 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩

@[simp] theorem wordRank000000470_get00_num :
    wordRank000000470.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000470_get00_mk (h : 0 < 13) :
    wordRank000000470.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000470_get01_num :
    wordRank000000470.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000470_get01_mk (h : 1 < 13) :
    wordRank000000470.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000470_get02_num :
    wordRank000000470.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000470_get02_mk (h : 2 < 13) :
    wordRank000000470.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000470_get03_num :
    wordRank000000470.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000470_get03_mk (h : 3 < 13) :
    wordRank000000470.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000470_get04_num :
    wordRank000000470.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000470_get04_mk (h : 4 < 13) :
    wordRank000000470.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000470_get05_num :
    wordRank000000470.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000470_get05_mk (h : 5 < 13) :
    wordRank000000470.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000470_get06_num :
    wordRank000000470.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000470_get06_mk (h : 6 < 13) :
    wordRank000000470.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000470_get07_num :
    wordRank000000470.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000470_get07_mk (h : 7 < 13) :
    wordRank000000470.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000470_get08_num :
    wordRank000000470.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000470_get08_mk (h : 8 < 13) :
    wordRank000000470.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000470_get09_num :
    wordRank000000470.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000470_get09_mk (h : 9 < 13) :
    wordRank000000470.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000470_get10_num :
    wordRank000000470.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000470_get10_mk (h : 10 < 13) :
    wordRank000000470.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000470_get11_num :
    wordRank000000470.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000470_get11_mk (h : 11 < 13) :
    wordRank000000470.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000470_get12_num :
    wordRank000000470.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000470_get12_mk (h : 12 < 13) :
    wordRank000000470.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000471 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000000471_get00_num :
    wordRank000000471.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000471_get00_mk (h : 0 < 13) :
    wordRank000000471.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000471_get01_num :
    wordRank000000471.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000471_get01_mk (h : 1 < 13) :
    wordRank000000471.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000471_get02_num :
    wordRank000000471.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000471_get02_mk (h : 2 < 13) :
    wordRank000000471.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000471_get03_num :
    wordRank000000471.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000471_get03_mk (h : 3 < 13) :
    wordRank000000471.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000471_get04_num :
    wordRank000000471.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000471_get04_mk (h : 4 < 13) :
    wordRank000000471.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000471_get05_num :
    wordRank000000471.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000471_get05_mk (h : 5 < 13) :
    wordRank000000471.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000471_get06_num :
    wordRank000000471.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000471_get06_mk (h : 6 < 13) :
    wordRank000000471.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000471_get07_num :
    wordRank000000471.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000471_get07_mk (h : 7 < 13) :
    wordRank000000471.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000471_get08_num :
    wordRank000000471.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000471_get08_mk (h : 8 < 13) :
    wordRank000000471.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000471_get09_num :
    wordRank000000471.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000471_get09_mk (h : 9 < 13) :
    wordRank000000471.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000471_get10_num :
    wordRank000000471.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000471_get10_mk (h : 10 < 13) :
    wordRank000000471.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000471_get11_num :
    wordRank000000471.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000471_get11_mk (h : 11 < 13) :
    wordRank000000471.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000471_get12_num :
    wordRank000000471.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000471_get12_mk (h : 12 < 13) :
    wordRank000000471.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000472 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d11m], by decide⟩

@[simp] theorem wordRank000000472_get00_num :
    wordRank000000472.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000472_get00_mk (h : 0 < 13) :
    wordRank000000472.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000472_get01_num :
    wordRank000000472.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000472_get01_mk (h : 1 < 13) :
    wordRank000000472.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000472_get02_num :
    wordRank000000472.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000472_get02_mk (h : 2 < 13) :
    wordRank000000472.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000472_get03_num :
    wordRank000000472.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000472_get03_mk (h : 3 < 13) :
    wordRank000000472.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000472_get04_num :
    wordRank000000472.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000472_get04_mk (h : 4 < 13) :
    wordRank000000472.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000472_get05_num :
    wordRank000000472.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000472_get05_mk (h : 5 < 13) :
    wordRank000000472.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000472_get06_num :
    wordRank000000472.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000472_get06_mk (h : 6 < 13) :
    wordRank000000472.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000472_get07_num :
    wordRank000000472.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000472_get07_mk (h : 7 < 13) :
    wordRank000000472.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000472_get08_num :
    wordRank000000472.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000472_get08_mk (h : 8 < 13) :
    wordRank000000472.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000472_get09_num :
    wordRank000000472.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000472_get09_mk (h : 9 < 13) :
    wordRank000000472.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000472_get10_num :
    wordRank000000472.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000472_get10_mk (h : 10 < 13) :
    wordRank000000472.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000472_get11_num :
    wordRank000000472.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000472_get11_mk (h : 11 < 13) :
    wordRank000000472.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000472_get12_num :
    wordRank000000472.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000472_get12_mk (h : 12 < 13) :
    wordRank000000472.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000473 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩

@[simp] theorem wordRank000000473_get00_num :
    wordRank000000473.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000473_get00_mk (h : 0 < 13) :
    wordRank000000473.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000473_get01_num :
    wordRank000000473.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000473_get01_mk (h : 1 < 13) :
    wordRank000000473.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000473_get02_num :
    wordRank000000473.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000473_get02_mk (h : 2 < 13) :
    wordRank000000473.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000473_get03_num :
    wordRank000000473.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000473_get03_mk (h : 3 < 13) :
    wordRank000000473.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000473_get04_num :
    wordRank000000473.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000473_get04_mk (h : 4 < 13) :
    wordRank000000473.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000473_get05_num :
    wordRank000000473.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000473_get05_mk (h : 5 < 13) :
    wordRank000000473.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000473_get06_num :
    wordRank000000473.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000473_get06_mk (h : 6 < 13) :
    wordRank000000473.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000473_get07_num :
    wordRank000000473.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000473_get07_mk (h : 7 < 13) :
    wordRank000000473.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000473_get08_num :
    wordRank000000473.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000473_get08_mk (h : 8 < 13) :
    wordRank000000473.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000473_get09_num :
    wordRank000000473.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000473_get09_mk (h : 9 < 13) :
    wordRank000000473.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000473_get10_num :
    wordRank000000473.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000473_get10_mk (h : 10 < 13) :
    wordRank000000473.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000473_get11_num :
    wordRank000000473.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000473_get11_mk (h : 11 < 13) :
    wordRank000000473.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000473_get12_num :
    wordRank000000473.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000473_get12_mk (h : 12 < 13) :
    wordRank000000473.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000474 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000000474_get00_num :
    wordRank000000474.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000474_get00_mk (h : 0 < 13) :
    wordRank000000474.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000474_get01_num :
    wordRank000000474.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000474_get01_mk (h : 1 < 13) :
    wordRank000000474.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000474_get02_num :
    wordRank000000474.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000474_get02_mk (h : 2 < 13) :
    wordRank000000474.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000474_get03_num :
    wordRank000000474.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000474_get03_mk (h : 3 < 13) :
    wordRank000000474.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000474_get04_num :
    wordRank000000474.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000474_get04_mk (h : 4 < 13) :
    wordRank000000474.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000474_get05_num :
    wordRank000000474.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000474_get05_mk (h : 5 < 13) :
    wordRank000000474.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000474_get06_num :
    wordRank000000474.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000474_get06_mk (h : 6 < 13) :
    wordRank000000474.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000474_get07_num :
    wordRank000000474.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000474_get07_mk (h : 7 < 13) :
    wordRank000000474.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000474_get08_num :
    wordRank000000474.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000474_get08_mk (h : 8 < 13) :
    wordRank000000474.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000474_get09_num :
    wordRank000000474.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000474_get09_mk (h : 9 < 13) :
    wordRank000000474.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000474_get10_num :
    wordRank000000474.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000474_get10_mk (h : 10 < 13) :
    wordRank000000474.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000474_get11_num :
    wordRank000000474.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000474_get11_mk (h : 11 < 13) :
    wordRank000000474.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000474_get12_num :
    wordRank000000474.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000474_get12_mk (h : 12 < 13) :
    wordRank000000474.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000475 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d11m, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000000475_get00_num :
    wordRank000000475.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000475_get00_mk (h : 0 < 13) :
    wordRank000000475.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000475_get01_num :
    wordRank000000475.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000475_get01_mk (h : 1 < 13) :
    wordRank000000475.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000475_get02_num :
    wordRank000000475.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000475_get02_mk (h : 2 < 13) :
    wordRank000000475.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000475_get03_num :
    wordRank000000475.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000475_get03_mk (h : 3 < 13) :
    wordRank000000475.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000475_get04_num :
    wordRank000000475.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000475_get04_mk (h : 4 < 13) :
    wordRank000000475.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000475_get05_num :
    wordRank000000475.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000475_get05_mk (h : 5 < 13) :
    wordRank000000475.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000475_get06_num :
    wordRank000000475.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000475_get06_mk (h : 6 < 13) :
    wordRank000000475.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000475_get07_num :
    wordRank000000475.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000475_get07_mk (h : 7 < 13) :
    wordRank000000475.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000475_get08_num :
    wordRank000000475.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000475_get08_mk (h : 8 < 13) :
    wordRank000000475.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000475_get09_num :
    wordRank000000475.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000475_get09_mk (h : 9 < 13) :
    wordRank000000475.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000475_get10_num :
    wordRank000000475.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000475_get10_mk (h : 10 < 13) :
    wordRank000000475.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000475_get11_num :
    wordRank000000475.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000475_get11_mk (h : 11 < 13) :
    wordRank000000475.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000475_get12_num :
    wordRank000000475.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000475_get12_mk (h : 12 < 13) :
    wordRank000000475.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000476 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m], by decide⟩

@[simp] theorem wordRank000000476_get00_num :
    wordRank000000476.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000476_get00_mk (h : 0 < 13) :
    wordRank000000476.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000476_get01_num :
    wordRank000000476.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000476_get01_mk (h : 1 < 13) :
    wordRank000000476.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000476_get02_num :
    wordRank000000476.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000476_get02_mk (h : 2 < 13) :
    wordRank000000476.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000476_get03_num :
    wordRank000000476.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000476_get03_mk (h : 3 < 13) :
    wordRank000000476.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000476_get04_num :
    wordRank000000476.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000476_get04_mk (h : 4 < 13) :
    wordRank000000476.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000476_get05_num :
    wordRank000000476.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000476_get05_mk (h : 5 < 13) :
    wordRank000000476.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000476_get06_num :
    wordRank000000476.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000476_get06_mk (h : 6 < 13) :
    wordRank000000476.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000476_get07_num :
    wordRank000000476.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000476_get07_mk (h : 7 < 13) :
    wordRank000000476.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000476_get08_num :
    wordRank000000476.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000476_get08_mk (h : 8 < 13) :
    wordRank000000476.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000476_get09_num :
    wordRank000000476.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000476_get09_mk (h : 9 < 13) :
    wordRank000000476.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000476_get10_num :
    wordRank000000476.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000476_get10_mk (h : 10 < 13) :
    wordRank000000476.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000476_get11_num :
    wordRank000000476.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000476_get11_mk (h : 11 < 13) :
    wordRank000000476.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000476_get12_num :
    wordRank000000476.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000476_get12_mk (h : 12 < 13) :
    wordRank000000476.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000477 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000000477_get00_num :
    wordRank000000477.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000477_get00_mk (h : 0 < 13) :
    wordRank000000477.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000477_get01_num :
    wordRank000000477.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000477_get01_mk (h : 1 < 13) :
    wordRank000000477.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000477_get02_num :
    wordRank000000477.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000477_get02_mk (h : 2 < 13) :
    wordRank000000477.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000477_get03_num :
    wordRank000000477.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000477_get03_mk (h : 3 < 13) :
    wordRank000000477.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000477_get04_num :
    wordRank000000477.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000477_get04_mk (h : 4 < 13) :
    wordRank000000477.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000477_get05_num :
    wordRank000000477.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000477_get05_mk (h : 5 < 13) :
    wordRank000000477.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000477_get06_num :
    wordRank000000477.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000477_get06_mk (h : 6 < 13) :
    wordRank000000477.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000477_get07_num :
    wordRank000000477.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000477_get07_mk (h : 7 < 13) :
    wordRank000000477.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000477_get08_num :
    wordRank000000477.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000477_get08_mk (h : 8 < 13) :
    wordRank000000477.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000477_get09_num :
    wordRank000000477.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000477_get09_mk (h : 9 < 13) :
    wordRank000000477.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000477_get10_num :
    wordRank000000477.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000477_get10_mk (h : 10 < 13) :
    wordRank000000477.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000477_get11_num :
    wordRank000000477.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000477_get11_mk (h : 11 < 13) :
    wordRank000000477.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000477_get12_num :
    wordRank000000477.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000477_get12_mk (h : 12 < 13) :
    wordRank000000477.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000478 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d1m1, PairId.d11m], by decide⟩

@[simp] theorem wordRank000000478_get00_num :
    wordRank000000478.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000478_get00_mk (h : 0 < 13) :
    wordRank000000478.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000478_get01_num :
    wordRank000000478.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000478_get01_mk (h : 1 < 13) :
    wordRank000000478.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000478_get02_num :
    wordRank000000478.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000478_get02_mk (h : 2 < 13) :
    wordRank000000478.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000478_get03_num :
    wordRank000000478.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000478_get03_mk (h : 3 < 13) :
    wordRank000000478.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000478_get04_num :
    wordRank000000478.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000478_get04_mk (h : 4 < 13) :
    wordRank000000478.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000478_get05_num :
    wordRank000000478.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000478_get05_mk (h : 5 < 13) :
    wordRank000000478.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000478_get06_num :
    wordRank000000478.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000478_get06_mk (h : 6 < 13) :
    wordRank000000478.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000478_get07_num :
    wordRank000000478.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000478_get07_mk (h : 7 < 13) :
    wordRank000000478.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000478_get08_num :
    wordRank000000478.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000478_get08_mk (h : 8 < 13) :
    wordRank000000478.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000478_get09_num :
    wordRank000000478.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000478_get09_mk (h : 9 < 13) :
    wordRank000000478.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000478_get10_num :
    wordRank000000478.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000478_get10_mk (h : 10 < 13) :
    wordRank000000478.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000478_get11_num :
    wordRank000000478.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000478_get11_mk (h : 11 < 13) :
    wordRank000000478.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000478_get12_num :
    wordRank000000478.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000478_get12_mk (h : 12 < 13) :
    wordRank000000478.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000479 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d111, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩

@[simp] theorem wordRank000000479_get00_num :
    wordRank000000479.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000479_get00_mk (h : 0 < 13) :
    wordRank000000479.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000479_get01_num :
    wordRank000000479.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000479_get01_mk (h : 1 < 13) :
    wordRank000000479.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000479_get02_num :
    wordRank000000479.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000479_get02_mk (h : 2 < 13) :
    wordRank000000479.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000479_get03_num :
    wordRank000000479.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000479_get03_mk (h : 3 < 13) :
    wordRank000000479.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000479_get04_num :
    wordRank000000479.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000479_get04_mk (h : 4 < 13) :
    wordRank000000479.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000479_get05_num :
    wordRank000000479.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000479_get05_mk (h : 5 < 13) :
    wordRank000000479.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000479_get06_num :
    wordRank000000479.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000479_get06_mk (h : 6 < 13) :
    wordRank000000479.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000479_get07_num :
    wordRank000000479.get (7 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000479_get07_mk (h : 7 < 13) :
    wordRank000000479.get ⟨7, h⟩ = PairId.d111 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000479_get08_num :
    wordRank000000479.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000479_get08_mk (h : 8 < 13) :
    wordRank000000479.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000479_get09_num :
    wordRank000000479.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000479_get09_mk (h : 9 < 13) :
    wordRank000000479.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000479_get10_num :
    wordRank000000479.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000479_get10_mk (h : 10 < 13) :
    wordRank000000479.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000479_get11_num :
    wordRank000000479.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000479_get11_mk (h : 11 < 13) :
    wordRank000000479.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000479_get12_num :
    wordRank000000479.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000479_get12_mk (h : 12 < 13) :
    wordRank000000479.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000480 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000480_get00_num :
    wordRank000000480.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000480_get00_mk (h : 0 < 13) :
    wordRank000000480.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000480_get01_num :
    wordRank000000480.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000480_get01_mk (h : 1 < 13) :
    wordRank000000480.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000480_get02_num :
    wordRank000000480.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000480_get02_mk (h : 2 < 13) :
    wordRank000000480.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000480_get03_num :
    wordRank000000480.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000480_get03_mk (h : 3 < 13) :
    wordRank000000480.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000480_get04_num :
    wordRank000000480.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000480_get04_mk (h : 4 < 13) :
    wordRank000000480.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000480_get05_num :
    wordRank000000480.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000480_get05_mk (h : 5 < 13) :
    wordRank000000480.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000480_get06_num :
    wordRank000000480.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000480_get06_mk (h : 6 < 13) :
    wordRank000000480.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000480_get07_num :
    wordRank000000480.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000480_get07_mk (h : 7 < 13) :
    wordRank000000480.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000480_get08_num :
    wordRank000000480.get (8 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000480_get08_mk (h : 8 < 13) :
    wordRank000000480.get ⟨8, h⟩ = PairId.d111 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000480_get09_num :
    wordRank000000480.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000480_get09_mk (h : 9 < 13) :
    wordRank000000480.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000480_get10_num :
    wordRank000000480.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000480_get10_mk (h : 10 < 13) :
    wordRank000000480.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000480_get11_num :
    wordRank000000480.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000480_get11_mk (h : 11 < 13) :
    wordRank000000480.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000480_get12_num :
    wordRank000000480.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000480_get12_mk (h : 12 < 13) :
    wordRank000000480.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000468Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tmpp, Face.tppp, Face.tpmp, Face.tpmp, Face.tppm, Face.tppm, Face.tmpp], by decide⟩

@[simp] theorem synthNonIdCert000000468Seq_get00_num :
    synthNonIdCert000000468Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000468Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000468Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000468Seq_get01_num :
    synthNonIdCert000000468Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000468Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000468Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000468Seq_get02_num :
    synthNonIdCert000000468Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000468Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000468Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000468Seq_get03_num :
    synthNonIdCert000000468Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000468Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000468Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000468Seq_get04_num :
    synthNonIdCert000000468Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000468Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000468Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000468Seq_get05_num :
    synthNonIdCert000000468Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000468Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000468Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000468Seq_get06_num :
    synthNonIdCert000000468Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000468Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000468Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000468Seq_get07_num :
    synthNonIdCert000000468Seq.get (7 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000468Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000468Seq.get ⟨7, h⟩ = Face.tmpp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000468Seq_get08_num :
    synthNonIdCert000000468Seq.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000468Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000468Seq.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000468Seq_get09_num :
    synthNonIdCert000000468Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000468Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000468Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000468Seq_get10_num :
    synthNonIdCert000000468Seq.get (10 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000468Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000468Seq.get ⟨10, h⟩ = Face.tpmp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000468Seq_get11_num :
    synthNonIdCert000000468Seq.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000468Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000468Seq.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000468Seq_get12_num :
    synthNonIdCert000000468Seq.get (12 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000468Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000468Seq.get ⟨12, h⟩ = Face.tppm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000468Seq_get13_num :
    synthNonIdCert000000468Seq.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000468Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000468Seq.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000468 : NonIdCert where
  word := wordRank000000468
  axis := { x := 0, y := -1, z := 1 }
  kernel := { crossFactor := { m00 := (-7/8), m01 := 1, m02 := 0, m10 := (-1/2), m11 := (-7/8), m12 := 0, m20 := (-1/2), m21 := (-7/8), m22 := 0 } }
  forcedSeq := synthNonIdCert000000468Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨0, by decide⟩

theorem synthNonIdCert000000468_validPairWord :
    ValidPairWord wordRank000000468 := by
  unfold wordRank000000468 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000468_totalLinear :
    totalLinearOfPairWord wordRank000000468 = { m00 := (17/81), m01 := (56/81), m02 := (56/81), m10 := (-56/81), m11 := (49/81), m12 := (-32/81), m20 := (-56/81), m21 := (-32/81), m22 := (49/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000468_nonIdentity :
    totalLinearOfPairWord wordRank000000468 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000468_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000468_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000468)
      { x := 0, y := -1, z := 1 }
      { crossFactor := { m00 := (-7/8), m01 := 1, m02 := 0, m10 := (-1/2), m11 := (-7/8), m12 := 0, m20 := (-1/2), m21 := (-7/8), m22 := 0 } } = true := by
  rw [synthNonIdCert000000468_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000468_check :
    checkNonIdCert synthNonIdCert000000468 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000468 ⟨0, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000468] using synthNonIdCert000000468_validPairWord
  · simpa [synthNonIdCert000000468] using synthNonIdCert000000468_nonIdentity
  · simpa [synthNonIdCert000000468] using synthNonIdCert000000468_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000468, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000468_coveredRank :
    checkNonIdCoveredRank 468 synthNonIdCert000000468 = true := by
  decide

theorem synthNonIdCert000000468_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000468 = true := by
  rfl

def synthNonIdCert000000469Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tmpp, Face.tppp, Face.tpmp, Face.tpmp, Face.tppm, Face.tmpp, Face.tppm], by decide⟩

@[simp] theorem synthNonIdCert000000469Seq_get00_num :
    synthNonIdCert000000469Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000469Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000469Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000469Seq_get01_num :
    synthNonIdCert000000469Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000469Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000469Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000469Seq_get02_num :
    synthNonIdCert000000469Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000469Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000469Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000469Seq_get03_num :
    synthNonIdCert000000469Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000469Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000469Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000469Seq_get04_num :
    synthNonIdCert000000469Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000469Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000469Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000469Seq_get05_num :
    synthNonIdCert000000469Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000469Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000469Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000469Seq_get06_num :
    synthNonIdCert000000469Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000469Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000469Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000469Seq_get07_num :
    synthNonIdCert000000469Seq.get (7 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000469Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000469Seq.get ⟨7, h⟩ = Face.tmpp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000469Seq_get08_num :
    synthNonIdCert000000469Seq.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000469Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000469Seq.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000469Seq_get09_num :
    synthNonIdCert000000469Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000469Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000469Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000469Seq_get10_num :
    synthNonIdCert000000469Seq.get (10 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000469Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000469Seq.get ⟨10, h⟩ = Face.tpmp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000469Seq_get11_num :
    synthNonIdCert000000469Seq.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000469Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000469Seq.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000469Seq_get12_num :
    synthNonIdCert000000469Seq.get (12 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000469Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000469Seq.get ⟨12, h⟩ = Face.tmpp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000469Seq_get13_num :
    synthNonIdCert000000469Seq.get (13 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000469Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000469Seq.get ⟨13, h⟩ = Face.tppm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000469 : NonIdCert where
  word := wordRank000000469
  axis := { x := (-1/6), y := (-1/6), z := 1 }
  kernel := { crossFactor := { m00 := (-31/144), m01 := (37/72), m02 := 0, m10 := (-37/72), m11 := (-35/144), m12 := 0, m20 := (-35/288), m21 := (13/288), m22 := 0 } }
  forcedSeq := synthNonIdCert000000469Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨6, by decide⟩

theorem synthNonIdCert000000469_validPairWord :
    ValidPairWord wordRank000000469 := by
  unfold wordRank000000469 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000469_totalLinear :
    totalLinearOfPairWord wordRank000000469 = { m00 := (-455/729), m01 := (560/729), m02 := (-104/729), m10 := (-496/729), m11 := (-455/729), m12 := (-280/729), m20 := (-280/729), m21 := (-104/729), m22 := (665/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000469_nonIdentity :
    totalLinearOfPairWord wordRank000000469 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000469_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000469_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000469)
      { x := (-1/6), y := (-1/6), z := 1 }
      { crossFactor := { m00 := (-31/144), m01 := (37/72), m02 := 0, m10 := (-37/72), m11 := (-35/144), m12 := 0, m20 := (-35/288), m21 := (13/288), m22 := 0 } } = true := by
  rw [synthNonIdCert000000469_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000469_check :
    checkNonIdCert synthNonIdCert000000469 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000469 ⟨6, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000469] using synthNonIdCert000000469_validPairWord
  · simpa [synthNonIdCert000000469] using synthNonIdCert000000469_nonIdentity
  · simpa [synthNonIdCert000000469] using synthNonIdCert000000469_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000469, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000469_coveredRank :
    checkNonIdCoveredRank 469 synthNonIdCert000000469 = true := by
  decide

theorem synthNonIdCert000000469_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000469 = true := by
  rfl

def synthNonIdCert000000470Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tmpp, Face.tppp, Face.tpmp, Face.tpmp, Face.tmpp, Face.tppm, Face.tppm], by decide⟩

@[simp] theorem synthNonIdCert000000470Seq_get00_num :
    synthNonIdCert000000470Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000470Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000470Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000470Seq_get01_num :
    synthNonIdCert000000470Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000470Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000470Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000470Seq_get02_num :
    synthNonIdCert000000470Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000470Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000470Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000470Seq_get03_num :
    synthNonIdCert000000470Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000470Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000470Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000470Seq_get04_num :
    synthNonIdCert000000470Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000470Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000470Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000470Seq_get05_num :
    synthNonIdCert000000470Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000470Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000470Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000470Seq_get06_num :
    synthNonIdCert000000470Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000470Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000470Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000470Seq_get07_num :
    synthNonIdCert000000470Seq.get (7 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000470Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000470Seq.get ⟨7, h⟩ = Face.tmpp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000470Seq_get08_num :
    synthNonIdCert000000470Seq.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000470Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000470Seq.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000470Seq_get09_num :
    synthNonIdCert000000470Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000470Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000470Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000470Seq_get10_num :
    synthNonIdCert000000470Seq.get (10 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000470Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000470Seq.get ⟨10, h⟩ = Face.tpmp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000470Seq_get11_num :
    synthNonIdCert000000470Seq.get (11 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000470Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000470Seq.get ⟨11, h⟩ = Face.tmpp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000470Seq_get12_num :
    synthNonIdCert000000470Seq.get (12 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000470Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000470Seq.get ⟨12, h⟩ = Face.tppm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000470Seq_get13_num :
    synthNonIdCert000000470Seq.get (13 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000470Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000470Seq.get ⟨13, h⟩ = Face.tppm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000470 : NonIdCert where
  word := wordRank000000470
  axis := { x := 0, y := -1, z := 1 }
  kernel := { crossFactor := { m00 := (-7/8), m01 := 1, m02 := 0, m10 := (-1/2), m11 := (-7/8), m12 := 0, m20 := (-1/2), m21 := (-7/8), m22 := 0 } }
  forcedSeq := synthNonIdCert000000470Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨0, by decide⟩

theorem synthNonIdCert000000470_validPairWord :
    ValidPairWord wordRank000000470 := by
  unfold wordRank000000470 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000470_totalLinear :
    totalLinearOfPairWord wordRank000000470 = { m00 := (17/81), m01 := (56/81), m02 := (56/81), m10 := (-56/81), m11 := (49/81), m12 := (-32/81), m20 := (-56/81), m21 := (-32/81), m22 := (49/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000470_nonIdentity :
    totalLinearOfPairWord wordRank000000470 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000470_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000470_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000470)
      { x := 0, y := -1, z := 1 }
      { crossFactor := { m00 := (-7/8), m01 := 1, m02 := 0, m10 := (-1/2), m11 := (-7/8), m12 := 0, m20 := (-1/2), m21 := (-7/8), m22 := 0 } } = true := by
  rw [synthNonIdCert000000470_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000470_check :
    checkNonIdCert synthNonIdCert000000470 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000470 ⟨0, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000470] using synthNonIdCert000000470_validPairWord
  · simpa [synthNonIdCert000000470] using synthNonIdCert000000470_nonIdentity
  · simpa [synthNonIdCert000000470] using synthNonIdCert000000470_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000470, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000470_coveredRank :
    checkNonIdCoveredRank 470 synthNonIdCert000000470 = true := by
  decide

theorem synthNonIdCert000000470_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000470 = true := by
  rfl

def synthNonIdCert000000471Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tmpp, Face.tppp, Face.tpmp, Face.tmpp, Face.tppm, Face.tppm, Face.tpmp], by decide⟩

@[simp] theorem synthNonIdCert000000471Seq_get00_num :
    synthNonIdCert000000471Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000471Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000471Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000471Seq_get01_num :
    synthNonIdCert000000471Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000471Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000471Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000471Seq_get02_num :
    synthNonIdCert000000471Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000471Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000471Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000471Seq_get03_num :
    synthNonIdCert000000471Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000471Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000471Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000471Seq_get04_num :
    synthNonIdCert000000471Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000471Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000471Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000471Seq_get05_num :
    synthNonIdCert000000471Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000471Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000471Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000471Seq_get06_num :
    synthNonIdCert000000471Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000471Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000471Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000471Seq_get07_num :
    synthNonIdCert000000471Seq.get (7 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000471Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000471Seq.get ⟨7, h⟩ = Face.tmpp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000471Seq_get08_num :
    synthNonIdCert000000471Seq.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000471Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000471Seq.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000471Seq_get09_num :
    synthNonIdCert000000471Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000471Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000471Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000471Seq_get10_num :
    synthNonIdCert000000471Seq.get (10 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000471Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000471Seq.get ⟨10, h⟩ = Face.tmpp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000471Seq_get11_num :
    synthNonIdCert000000471Seq.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000471Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000471Seq.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000471Seq_get12_num :
    synthNonIdCert000000471Seq.get (12 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000471Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000471Seq.get ⟨12, h⟩ = Face.tppm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000471Seq_get13_num :
    synthNonIdCert000000471Seq.get (13 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000471Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000471Seq.get ⟨13, h⟩ = Face.tpmp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000471 : NonIdCert where
  word := wordRank000000471
  axis := { x := -1, y := 6, z := -1 }
  kernel := { crossFactor := { m00 := (35/8), m01 := (-37/2), m02 := 0, m10 := 1, m11 := (-13/8), m12 := 0, m20 := (13/8), m21 := (35/4), m22 := 0 } }
  forcedSeq := synthNonIdCert000000471Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨6, by decide⟩

theorem synthNonIdCert000000471_validPairWord :
    ValidPairWord wordRank000000471 := by
  unfold wordRank000000471 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000471_totalLinear :
    totalLinearOfPairWord wordRank000000471 = { m00 := (-455/729), m01 := (-104/729), m02 := (560/729), m10 := (-280/729), m11 := (665/729), m12 := (-104/729), m20 := (-496/729), m21 := (-280/729), m22 := (-455/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000471_nonIdentity :
    totalLinearOfPairWord wordRank000000471 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000471_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000471_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000471)
      { x := -1, y := 6, z := -1 }
      { crossFactor := { m00 := (35/8), m01 := (-37/2), m02 := 0, m10 := 1, m11 := (-13/8), m12 := 0, m20 := (13/8), m21 := (35/4), m22 := 0 } } = true := by
  rw [synthNonIdCert000000471_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000471_check :
    checkNonIdCert synthNonIdCert000000471 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000471 ⟨6, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000471] using synthNonIdCert000000471_validPairWord
  · simpa [synthNonIdCert000000471] using synthNonIdCert000000471_nonIdentity
  · simpa [synthNonIdCert000000471] using synthNonIdCert000000471_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000471, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000471_coveredRank :
    checkNonIdCoveredRank 471 synthNonIdCert000000471 = true := by
  decide

theorem synthNonIdCert000000471_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000471 = true := by
  rfl

def synthNonIdCert000000472Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tmpp, Face.tppp, Face.tpmp, Face.tmpp, Face.tppm, Face.tpmp, Face.tppm], by decide⟩

@[simp] theorem synthNonIdCert000000472Seq_get00_num :
    synthNonIdCert000000472Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000472Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000472Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000472Seq_get01_num :
    synthNonIdCert000000472Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000472Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000472Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000472Seq_get02_num :
    synthNonIdCert000000472Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000472Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000472Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000472Seq_get03_num :
    synthNonIdCert000000472Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000472Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000472Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000472Seq_get04_num :
    synthNonIdCert000000472Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000472Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000472Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000472Seq_get05_num :
    synthNonIdCert000000472Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000472Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000472Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000472Seq_get06_num :
    synthNonIdCert000000472Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000472Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000472Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000472Seq_get07_num :
    synthNonIdCert000000472Seq.get (7 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000472Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000472Seq.get ⟨7, h⟩ = Face.tmpp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000472Seq_get08_num :
    synthNonIdCert000000472Seq.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000472Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000472Seq.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000472Seq_get09_num :
    synthNonIdCert000000472Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000472Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000472Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000472Seq_get10_num :
    synthNonIdCert000000472Seq.get (10 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000472Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000472Seq.get ⟨10, h⟩ = Face.tmpp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000472Seq_get11_num :
    synthNonIdCert000000472Seq.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000472Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000472Seq.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000472Seq_get12_num :
    synthNonIdCert000000472Seq.get (12 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000472Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000472Seq.get ⟨12, h⟩ = Face.tpmp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000472Seq_get13_num :
    synthNonIdCert000000472Seq.get (13 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000472Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000472Seq.get ⟨13, h⟩ = Face.tppm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000472 : NonIdCert where
  word := wordRank000000472
  axis := { x := (-7/19), y := -1, z := 0 }
  kernel := { crossFactor := { m00 := (1/152), m01 := 0, m02 := (1/2), m10 := (-7/2888), m11 := 0, m12 := (-7/38), m20 := (-205/361), m21 := 0, m22 := (1/152) } }
  forcedSeq := synthNonIdCert000000472Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨3, by decide⟩

theorem synthNonIdCert000000472_validPairWord :
    ValidPairWord wordRank000000472 := by
  unfold wordRank000000472 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000472_totalLinear :
    totalLinearOfPairWord wordRank000000472 = { m00 := (-4991/6561), m01 := (4256/6561), m02 := (-152/6561), m10 := (4256/6561), m11 := (4993/6561), m12 := (56/6561), m20 := (152/6561), m21 := (-56/6561), m22 := (-6559/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000472_nonIdentity :
    totalLinearOfPairWord wordRank000000472 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000472_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000472_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000472)
      { x := (-7/19), y := -1, z := 0 }
      { crossFactor := { m00 := (1/152), m01 := 0, m02 := (1/2), m10 := (-7/2888), m11 := 0, m12 := (-7/38), m20 := (-205/361), m21 := 0, m22 := (1/152) } } = true := by
  rw [synthNonIdCert000000472_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000472_check :
    checkNonIdCert synthNonIdCert000000472 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000472 ⟨3, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000472] using synthNonIdCert000000472_validPairWord
  · simpa [synthNonIdCert000000472] using synthNonIdCert000000472_nonIdentity
  · simpa [synthNonIdCert000000472] using synthNonIdCert000000472_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000472, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000472_coveredRank :
    checkNonIdCoveredRank 472 synthNonIdCert000000472 = true := by
  decide

theorem synthNonIdCert000000472_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000472 = true := by
  rfl

def synthNonIdCert000000473Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tmpp, Face.tppp, Face.tpmp, Face.tmpp, Face.tpmp, Face.tppm, Face.tppm], by decide⟩

@[simp] theorem synthNonIdCert000000473Seq_get00_num :
    synthNonIdCert000000473Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000473Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000473Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000473Seq_get01_num :
    synthNonIdCert000000473Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000473Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000473Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000473Seq_get02_num :
    synthNonIdCert000000473Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000473Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000473Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000473Seq_get03_num :
    synthNonIdCert000000473Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000473Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000473Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000473Seq_get04_num :
    synthNonIdCert000000473Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000473Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000473Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000473Seq_get05_num :
    synthNonIdCert000000473Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000473Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000473Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000473Seq_get06_num :
    synthNonIdCert000000473Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000473Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000473Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000473Seq_get07_num :
    synthNonIdCert000000473Seq.get (7 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000473Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000473Seq.get ⟨7, h⟩ = Face.tmpp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000473Seq_get08_num :
    synthNonIdCert000000473Seq.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000473Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000473Seq.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000473Seq_get09_num :
    synthNonIdCert000000473Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000473Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000473Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000473Seq_get10_num :
    synthNonIdCert000000473Seq.get (10 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000473Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000473Seq.get ⟨10, h⟩ = Face.tmpp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000473Seq_get11_num :
    synthNonIdCert000000473Seq.get (11 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000473Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000473Seq.get ⟨11, h⟩ = Face.tpmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000473Seq_get12_num :
    synthNonIdCert000000473Seq.get (12 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000473Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000473Seq.get ⟨12, h⟩ = Face.tppm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000473Seq_get13_num :
    synthNonIdCert000000473Seq.get (13 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000473Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000473Seq.get ⟨13, h⟩ = Face.tppm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000473 : NonIdCert where
  word := wordRank000000473
  axis := { x := -1, y := 6, z := -1 }
  kernel := { crossFactor := { m00 := (35/8), m01 := (-37/2), m02 := 0, m10 := 1, m11 := (-13/8), m12 := 0, m20 := (13/8), m21 := (35/4), m22 := 0 } }
  forcedSeq := synthNonIdCert000000473Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨6, by decide⟩

theorem synthNonIdCert000000473_validPairWord :
    ValidPairWord wordRank000000473 := by
  unfold wordRank000000473 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000473_totalLinear :
    totalLinearOfPairWord wordRank000000473 = { m00 := (-455/729), m01 := (-104/729), m02 := (560/729), m10 := (-280/729), m11 := (665/729), m12 := (-104/729), m20 := (-496/729), m21 := (-280/729), m22 := (-455/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000473_nonIdentity :
    totalLinearOfPairWord wordRank000000473 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000473_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000473_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000473)
      { x := -1, y := 6, z := -1 }
      { crossFactor := { m00 := (35/8), m01 := (-37/2), m02 := 0, m10 := 1, m11 := (-13/8), m12 := 0, m20 := (13/8), m21 := (35/4), m22 := 0 } } = true := by
  rw [synthNonIdCert000000473_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000473_check :
    checkNonIdCert synthNonIdCert000000473 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000473 ⟨6, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000473] using synthNonIdCert000000473_validPairWord
  · simpa [synthNonIdCert000000473] using synthNonIdCert000000473_nonIdentity
  · simpa [synthNonIdCert000000473] using synthNonIdCert000000473_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000473, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000473_coveredRank :
    checkNonIdCoveredRank 473 synthNonIdCert000000473 = true := by
  decide

theorem synthNonIdCert000000473_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000473 = true := by
  rfl

def synthNonIdCert000000474Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tmpp, Face.tppp, Face.tmpp, Face.tppm, Face.tppm, Face.tpmp, Face.tpmp], by decide⟩

@[simp] theorem synthNonIdCert000000474Seq_get00_num :
    synthNonIdCert000000474Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000474Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000474Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000474Seq_get01_num :
    synthNonIdCert000000474Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000474Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000474Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000474Seq_get02_num :
    synthNonIdCert000000474Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000474Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000474Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000474Seq_get03_num :
    synthNonIdCert000000474Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000474Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000474Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000474Seq_get04_num :
    synthNonIdCert000000474Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000474Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000474Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000474Seq_get05_num :
    synthNonIdCert000000474Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000474Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000474Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000474Seq_get06_num :
    synthNonIdCert000000474Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000474Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000474Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000474Seq_get07_num :
    synthNonIdCert000000474Seq.get (7 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000474Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000474Seq.get ⟨7, h⟩ = Face.tmpp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000474Seq_get08_num :
    synthNonIdCert000000474Seq.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000474Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000474Seq.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000474Seq_get09_num :
    synthNonIdCert000000474Seq.get (9 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000474Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000474Seq.get ⟨9, h⟩ = Face.tmpp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000474Seq_get10_num :
    synthNonIdCert000000474Seq.get (10 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000474Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000474Seq.get ⟨10, h⟩ = Face.tppm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000474Seq_get11_num :
    synthNonIdCert000000474Seq.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000474Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000474Seq.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000474Seq_get12_num :
    synthNonIdCert000000474Seq.get (12 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000474Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000474Seq.get ⟨12, h⟩ = Face.tpmp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000474Seq_get13_num :
    synthNonIdCert000000474Seq.get (13 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000474Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000474Seq.get ⟨13, h⟩ = Face.tpmp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000474 : NonIdCert where
  word := wordRank000000474
  axis := { x := 0, y := -1, z := 1 }
  kernel := { crossFactor := { m00 := (-7/8), m01 := 1, m02 := 0, m10 := (-1/2), m11 := (-7/8), m12 := 0, m20 := (-1/2), m21 := (-7/8), m22 := 0 } }
  forcedSeq := synthNonIdCert000000474Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨0, by decide⟩

theorem synthNonIdCert000000474_validPairWord :
    ValidPairWord wordRank000000474 := by
  unfold wordRank000000474 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000474_totalLinear :
    totalLinearOfPairWord wordRank000000474 = { m00 := (17/81), m01 := (56/81), m02 := (56/81), m10 := (-56/81), m11 := (49/81), m12 := (-32/81), m20 := (-56/81), m21 := (-32/81), m22 := (49/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000474_nonIdentity :
    totalLinearOfPairWord wordRank000000474 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000474_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000474_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000474)
      { x := 0, y := -1, z := 1 }
      { crossFactor := { m00 := (-7/8), m01 := 1, m02 := 0, m10 := (-1/2), m11 := (-7/8), m12 := 0, m20 := (-1/2), m21 := (-7/8), m22 := 0 } } = true := by
  rw [synthNonIdCert000000474_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000474_check :
    checkNonIdCert synthNonIdCert000000474 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000474 ⟨0, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000474] using synthNonIdCert000000474_validPairWord
  · simpa [synthNonIdCert000000474] using synthNonIdCert000000474_nonIdentity
  · simpa [synthNonIdCert000000474] using synthNonIdCert000000474_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000474, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000474_coveredRank :
    checkNonIdCoveredRank 474 synthNonIdCert000000474 = true := by
  decide

theorem synthNonIdCert000000474_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000474 = true := by
  rfl

def synthNonIdCert000000475Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tmpp, Face.tppp, Face.tmpp, Face.tppm, Face.tpmp, Face.tppm, Face.tpmp], by decide⟩

@[simp] theorem synthNonIdCert000000475Seq_get00_num :
    synthNonIdCert000000475Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000475Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000475Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000475Seq_get01_num :
    synthNonIdCert000000475Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000475Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000475Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000475Seq_get02_num :
    synthNonIdCert000000475Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000475Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000475Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000475Seq_get03_num :
    synthNonIdCert000000475Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000475Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000475Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000475Seq_get04_num :
    synthNonIdCert000000475Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000475Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000475Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000475Seq_get05_num :
    synthNonIdCert000000475Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000475Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000475Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000475Seq_get06_num :
    synthNonIdCert000000475Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000475Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000475Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000475Seq_get07_num :
    synthNonIdCert000000475Seq.get (7 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000475Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000475Seq.get ⟨7, h⟩ = Face.tmpp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000475Seq_get08_num :
    synthNonIdCert000000475Seq.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000475Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000475Seq.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000475Seq_get09_num :
    synthNonIdCert000000475Seq.get (9 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000475Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000475Seq.get ⟨9, h⟩ = Face.tmpp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000475Seq_get10_num :
    synthNonIdCert000000475Seq.get (10 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000475Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000475Seq.get ⟨10, h⟩ = Face.tppm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000475Seq_get11_num :
    synthNonIdCert000000475Seq.get (11 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000475Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000475Seq.get ⟨11, h⟩ = Face.tpmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000475Seq_get12_num :
    synthNonIdCert000000475Seq.get (12 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000475Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000475Seq.get ⟨12, h⟩ = Face.tppm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000475Seq_get13_num :
    synthNonIdCert000000475Seq.get (13 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000475Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000475Seq.get ⟨13, h⟩ = Face.tpmp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000475 : NonIdCert where
  word := wordRank000000475
  axis := { x := (-4/7), y := 0, z := -1 }
  kernel := { crossFactor := { m00 := (7/16), m01 := (-1/2), m02 := 0, m10 := (65/98), m11 := (7/16), m12 := 0, m20 := (-1/4), m21 := (2/7), m22 := 0 } }
  forcedSeq := synthNonIdCert000000475Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨1, by decide⟩

theorem synthNonIdCert000000475_validPairWord :
    ValidPairWord wordRank000000475 := by
  unfold wordRank000000475 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000475_totalLinear :
    totalLinearOfPairWord wordRank000000475 = { m00 := (289/6561), m01 := (5488/6561), m02 := (3584/6561), m10 := (-5488/6561), m11 := (-1759/6561), m12 := (3136/6561), m20 := (3584/6561), m21 := (-3136/6561), m22 := (4513/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000475_nonIdentity :
    totalLinearOfPairWord wordRank000000475 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000475_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000475_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000475)
      { x := (-4/7), y := 0, z := -1 }
      { crossFactor := { m00 := (7/16), m01 := (-1/2), m02 := 0, m10 := (65/98), m11 := (7/16), m12 := 0, m20 := (-1/4), m21 := (2/7), m22 := 0 } } = true := by
  rw [synthNonIdCert000000475_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000475_check :
    checkNonIdCert synthNonIdCert000000475 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000475 ⟨1, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000475] using synthNonIdCert000000475_validPairWord
  · simpa [synthNonIdCert000000475] using synthNonIdCert000000475_nonIdentity
  · simpa [synthNonIdCert000000475] using synthNonIdCert000000475_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000475, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000475_coveredRank :
    checkNonIdCoveredRank 475 synthNonIdCert000000475 = true := by
  decide

theorem synthNonIdCert000000475_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000475 = true := by
  rfl

def synthNonIdCert000000476Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tmpp, Face.tppp, Face.tmpp, Face.tppm, Face.tpmp, Face.tpmp, Face.tppm], by decide⟩

@[simp] theorem synthNonIdCert000000476Seq_get00_num :
    synthNonIdCert000000476Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000476Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000476Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000476Seq_get01_num :
    synthNonIdCert000000476Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000476Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000476Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000476Seq_get02_num :
    synthNonIdCert000000476Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000476Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000476Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000476Seq_get03_num :
    synthNonIdCert000000476Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000476Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000476Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000476Seq_get04_num :
    synthNonIdCert000000476Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000476Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000476Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000476Seq_get05_num :
    synthNonIdCert000000476Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000476Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000476Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000476Seq_get06_num :
    synthNonIdCert000000476Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000476Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000476Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000476Seq_get07_num :
    synthNonIdCert000000476Seq.get (7 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000476Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000476Seq.get ⟨7, h⟩ = Face.tmpp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000476Seq_get08_num :
    synthNonIdCert000000476Seq.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000476Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000476Seq.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000476Seq_get09_num :
    synthNonIdCert000000476Seq.get (9 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000476Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000476Seq.get ⟨9, h⟩ = Face.tmpp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000476Seq_get10_num :
    synthNonIdCert000000476Seq.get (10 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000476Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000476Seq.get ⟨10, h⟩ = Face.tppm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000476Seq_get11_num :
    synthNonIdCert000000476Seq.get (11 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000476Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000476Seq.get ⟨11, h⟩ = Face.tpmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000476Seq_get12_num :
    synthNonIdCert000000476Seq.get (12 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000476Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000476Seq.get ⟨12, h⟩ = Face.tpmp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000476Seq_get13_num :
    synthNonIdCert000000476Seq.get (13 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000476Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000476Seq.get ⟨13, h⟩ = Face.tppm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000476 : NonIdCert where
  word := wordRank000000476
  axis := { x := 0, y := -1, z := 1 }
  kernel := { crossFactor := { m00 := (-7/8), m01 := 1, m02 := 0, m10 := (-1/2), m11 := (-7/8), m12 := 0, m20 := (-1/2), m21 := (-7/8), m22 := 0 } }
  forcedSeq := synthNonIdCert000000476Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨0, by decide⟩

theorem synthNonIdCert000000476_validPairWord :
    ValidPairWord wordRank000000476 := by
  unfold wordRank000000476 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000476_totalLinear :
    totalLinearOfPairWord wordRank000000476 = { m00 := (17/81), m01 := (56/81), m02 := (56/81), m10 := (-56/81), m11 := (49/81), m12 := (-32/81), m20 := (-56/81), m21 := (-32/81), m22 := (49/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000476_nonIdentity :
    totalLinearOfPairWord wordRank000000476 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000476_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000476_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000476)
      { x := 0, y := -1, z := 1 }
      { crossFactor := { m00 := (-7/8), m01 := 1, m02 := 0, m10 := (-1/2), m11 := (-7/8), m12 := 0, m20 := (-1/2), m21 := (-7/8), m22 := 0 } } = true := by
  rw [synthNonIdCert000000476_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000476_check :
    checkNonIdCert synthNonIdCert000000476 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000476 ⟨0, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000476] using synthNonIdCert000000476_validPairWord
  · simpa [synthNonIdCert000000476] using synthNonIdCert000000476_nonIdentity
  · simpa [synthNonIdCert000000476] using synthNonIdCert000000476_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000476, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000476_coveredRank :
    checkNonIdCoveredRank 476 synthNonIdCert000000476 = true := by
  decide

theorem synthNonIdCert000000476_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000476 = true := by
  rfl

def synthNonIdCert000000477Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tmpp, Face.tppp, Face.tmpp, Face.tpmp, Face.tppm, Face.tppm, Face.tpmp], by decide⟩

@[simp] theorem synthNonIdCert000000477Seq_get00_num :
    synthNonIdCert000000477Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000477Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000477Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000477Seq_get01_num :
    synthNonIdCert000000477Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000477Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000477Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000477Seq_get02_num :
    synthNonIdCert000000477Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000477Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000477Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000477Seq_get03_num :
    synthNonIdCert000000477Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000477Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000477Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000477Seq_get04_num :
    synthNonIdCert000000477Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000477Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000477Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000477Seq_get05_num :
    synthNonIdCert000000477Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000477Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000477Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000477Seq_get06_num :
    synthNonIdCert000000477Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000477Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000477Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000477Seq_get07_num :
    synthNonIdCert000000477Seq.get (7 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000477Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000477Seq.get ⟨7, h⟩ = Face.tmpp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000477Seq_get08_num :
    synthNonIdCert000000477Seq.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000477Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000477Seq.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000477Seq_get09_num :
    synthNonIdCert000000477Seq.get (9 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000477Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000477Seq.get ⟨9, h⟩ = Face.tmpp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000477Seq_get10_num :
    synthNonIdCert000000477Seq.get (10 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000477Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000477Seq.get ⟨10, h⟩ = Face.tpmp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000477Seq_get11_num :
    synthNonIdCert000000477Seq.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000477Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000477Seq.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000477Seq_get12_num :
    synthNonIdCert000000477Seq.get (12 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000477Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000477Seq.get ⟨12, h⟩ = Face.tppm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000477Seq_get13_num :
    synthNonIdCert000000477Seq.get (13 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000477Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000477Seq.get ⟨13, h⟩ = Face.tpmp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000477 : NonIdCert where
  word := wordRank000000477
  axis := { x := 0, y := -1, z := 1 }
  kernel := { crossFactor := { m00 := (-7/8), m01 := 1, m02 := 0, m10 := (-1/2), m11 := (-7/8), m12 := 0, m20 := (-1/2), m21 := (-7/8), m22 := 0 } }
  forcedSeq := synthNonIdCert000000477Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨0, by decide⟩

theorem synthNonIdCert000000477_validPairWord :
    ValidPairWord wordRank000000477 := by
  unfold wordRank000000477 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000477_totalLinear :
    totalLinearOfPairWord wordRank000000477 = { m00 := (17/81), m01 := (56/81), m02 := (56/81), m10 := (-56/81), m11 := (49/81), m12 := (-32/81), m20 := (-56/81), m21 := (-32/81), m22 := (49/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000477_nonIdentity :
    totalLinearOfPairWord wordRank000000477 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000477_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000477_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000477)
      { x := 0, y := -1, z := 1 }
      { crossFactor := { m00 := (-7/8), m01 := 1, m02 := 0, m10 := (-1/2), m11 := (-7/8), m12 := 0, m20 := (-1/2), m21 := (-7/8), m22 := 0 } } = true := by
  rw [synthNonIdCert000000477_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000477_check :
    checkNonIdCert synthNonIdCert000000477 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000477 ⟨0, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000477] using synthNonIdCert000000477_validPairWord
  · simpa [synthNonIdCert000000477] using synthNonIdCert000000477_nonIdentity
  · simpa [synthNonIdCert000000477] using synthNonIdCert000000477_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000477, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000477_coveredRank :
    checkNonIdCoveredRank 477 synthNonIdCert000000477 = true := by
  decide

theorem synthNonIdCert000000477_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000477 = true := by
  rfl

def synthNonIdCert000000478Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tmpp, Face.tppp, Face.tmpp, Face.tpmp, Face.tppm, Face.tpmp, Face.tppm], by decide⟩

@[simp] theorem synthNonIdCert000000478Seq_get00_num :
    synthNonIdCert000000478Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000478Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000478Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000478Seq_get01_num :
    synthNonIdCert000000478Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000478Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000478Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000478Seq_get02_num :
    synthNonIdCert000000478Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000478Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000478Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000478Seq_get03_num :
    synthNonIdCert000000478Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000478Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000478Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000478Seq_get04_num :
    synthNonIdCert000000478Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000478Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000478Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000478Seq_get05_num :
    synthNonIdCert000000478Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000478Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000478Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000478Seq_get06_num :
    synthNonIdCert000000478Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000478Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000478Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000478Seq_get07_num :
    synthNonIdCert000000478Seq.get (7 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000478Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000478Seq.get ⟨7, h⟩ = Face.tmpp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000478Seq_get08_num :
    synthNonIdCert000000478Seq.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000478Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000478Seq.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000478Seq_get09_num :
    synthNonIdCert000000478Seq.get (9 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000478Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000478Seq.get ⟨9, h⟩ = Face.tmpp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000478Seq_get10_num :
    synthNonIdCert000000478Seq.get (10 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000478Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000478Seq.get ⟨10, h⟩ = Face.tpmp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000478Seq_get11_num :
    synthNonIdCert000000478Seq.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000478Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000478Seq.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000478Seq_get12_num :
    synthNonIdCert000000478Seq.get (12 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000478Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000478Seq.get ⟨12, h⟩ = Face.tpmp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000478Seq_get13_num :
    synthNonIdCert000000478Seq.get (13 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000478Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000478Seq.get ⟨13, h⟩ = Face.tppm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000478 : NonIdCert where
  word := wordRank000000478
  axis := { x := (-4/7), y := -1, z := 0 }
  kernel := { crossFactor := { m00 := (-7/16), m01 := 0, m02 := (1/2), m10 := (1/4), m11 := 0, m12 := (-2/7), m20 := (-65/98), m21 := 0, m22 := (-7/16) } }
  forcedSeq := synthNonIdCert000000478Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨3, by decide⟩

theorem synthNonIdCert000000478_validPairWord :
    ValidPairWord wordRank000000478 := by
  unfold wordRank000000478 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000478_totalLinear :
    totalLinearOfPairWord wordRank000000478 = { m00 := (289/6561), m01 := (3584/6561), m02 := (5488/6561), m10 := (3584/6561), m11 := (4513/6561), m12 := (-3136/6561), m20 := (-5488/6561), m21 := (3136/6561), m22 := (-1759/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000478_nonIdentity :
    totalLinearOfPairWord wordRank000000478 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000478_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000478_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000478)
      { x := (-4/7), y := -1, z := 0 }
      { crossFactor := { m00 := (-7/16), m01 := 0, m02 := (1/2), m10 := (1/4), m11 := 0, m12 := (-2/7), m20 := (-65/98), m21 := 0, m22 := (-7/16) } } = true := by
  rw [synthNonIdCert000000478_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000478_check :
    checkNonIdCert synthNonIdCert000000478 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000478 ⟨3, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000478] using synthNonIdCert000000478_validPairWord
  · simpa [synthNonIdCert000000478] using synthNonIdCert000000478_nonIdentity
  · simpa [synthNonIdCert000000478] using synthNonIdCert000000478_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000478, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000478_coveredRank :
    checkNonIdCoveredRank 478 synthNonIdCert000000478 = true := by
  decide

theorem synthNonIdCert000000478_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000478 = true := by
  rfl

def synthNonIdCert000000479Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tmpp, Face.tppp, Face.tmpp, Face.tpmp, Face.tpmp, Face.tppm, Face.tppm], by decide⟩

@[simp] theorem synthNonIdCert000000479Seq_get00_num :
    synthNonIdCert000000479Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000479Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000479Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000479Seq_get01_num :
    synthNonIdCert000000479Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000479Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000479Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000479Seq_get02_num :
    synthNonIdCert000000479Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000479Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000479Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000479Seq_get03_num :
    synthNonIdCert000000479Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000479Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000479Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000479Seq_get04_num :
    synthNonIdCert000000479Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000479Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000479Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000479Seq_get05_num :
    synthNonIdCert000000479Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000479Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000479Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000479Seq_get06_num :
    synthNonIdCert000000479Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000479Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000479Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000479Seq_get07_num :
    synthNonIdCert000000479Seq.get (7 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000479Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000479Seq.get ⟨7, h⟩ = Face.tmpp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000479Seq_get08_num :
    synthNonIdCert000000479Seq.get (8 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000479Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000479Seq.get ⟨8, h⟩ = Face.tppp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000479Seq_get09_num :
    synthNonIdCert000000479Seq.get (9 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000479Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000479Seq.get ⟨9, h⟩ = Face.tmpp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000479Seq_get10_num :
    synthNonIdCert000000479Seq.get (10 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000479Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000479Seq.get ⟨10, h⟩ = Face.tpmp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000479Seq_get11_num :
    synthNonIdCert000000479Seq.get (11 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000479Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000479Seq.get ⟨11, h⟩ = Face.tpmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000479Seq_get12_num :
    synthNonIdCert000000479Seq.get (12 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000479Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000479Seq.get ⟨12, h⟩ = Face.tppm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000479Seq_get13_num :
    synthNonIdCert000000479Seq.get (13 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000479Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000479Seq.get ⟨13, h⟩ = Face.tppm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000479 : NonIdCert where
  word := wordRank000000479
  axis := { x := 0, y := -1, z := 1 }
  kernel := { crossFactor := { m00 := (-7/8), m01 := 1, m02 := 0, m10 := (-1/2), m11 := (-7/8), m12 := 0, m20 := (-1/2), m21 := (-7/8), m22 := 0 } }
  forcedSeq := synthNonIdCert000000479Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨0, by decide⟩

theorem synthNonIdCert000000479_validPairWord :
    ValidPairWord wordRank000000479 := by
  unfold wordRank000000479 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000479_totalLinear :
    totalLinearOfPairWord wordRank000000479 = { m00 := (17/81), m01 := (56/81), m02 := (56/81), m10 := (-56/81), m11 := (49/81), m12 := (-32/81), m20 := (-56/81), m21 := (-32/81), m22 := (49/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000479_nonIdentity :
    totalLinearOfPairWord wordRank000000479 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000479_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000479_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000479)
      { x := 0, y := -1, z := 1 }
      { crossFactor := { m00 := (-7/8), m01 := 1, m02 := 0, m10 := (-1/2), m11 := (-7/8), m12 := 0, m20 := (-1/2), m21 := (-7/8), m22 := 0 } } = true := by
  rw [synthNonIdCert000000479_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000479_check :
    checkNonIdCert synthNonIdCert000000479 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000479 ⟨0, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000479] using synthNonIdCert000000479_validPairWord
  · simpa [synthNonIdCert000000479] using synthNonIdCert000000479_nonIdentity
  · simpa [synthNonIdCert000000479] using synthNonIdCert000000479_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000479, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000479_coveredRank :
    checkNonIdCoveredRank 479 synthNonIdCert000000479 = true := by
  decide

theorem synthNonIdCert000000479_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000479 = true := by
  rfl

def synthNonIdCert000000480Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tmpp, Face.tppm, Face.tppp, Face.tppm, Face.tpmp, Face.tpmp, Face.tmpp], by decide⟩

@[simp] theorem synthNonIdCert000000480Seq_get00_num :
    synthNonIdCert000000480Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000480Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000480Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000480Seq_get01_num :
    synthNonIdCert000000480Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000480Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000480Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000480Seq_get02_num :
    synthNonIdCert000000480Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000480Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000480Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000480Seq_get03_num :
    synthNonIdCert000000480Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000480Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000480Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000480Seq_get04_num :
    synthNonIdCert000000480Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000480Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000480Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000480Seq_get05_num :
    synthNonIdCert000000480Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000480Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000480Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000480Seq_get06_num :
    synthNonIdCert000000480Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000480Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000480Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000480Seq_get07_num :
    synthNonIdCert000000480Seq.get (7 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000480Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000480Seq.get ⟨7, h⟩ = Face.tmpp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000480Seq_get08_num :
    synthNonIdCert000000480Seq.get (8 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000480Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000480Seq.get ⟨8, h⟩ = Face.tppm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000480Seq_get09_num :
    synthNonIdCert000000480Seq.get (9 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000480Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000480Seq.get ⟨9, h⟩ = Face.tppp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000480Seq_get10_num :
    synthNonIdCert000000480Seq.get (10 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000480Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000480Seq.get ⟨10, h⟩ = Face.tppm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000480Seq_get11_num :
    synthNonIdCert000000480Seq.get (11 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000480Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000480Seq.get ⟨11, h⟩ = Face.tpmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000480Seq_get12_num :
    synthNonIdCert000000480Seq.get (12 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000480Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000480Seq.get ⟨12, h⟩ = Face.tpmp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000480Seq_get13_num :
    synthNonIdCert000000480Seq.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000480Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000480Seq.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000480 : NonIdCert where
  word := wordRank000000480
  axis := { x := (-3/5), y := (2/5), z := -1 }
  kernel := { crossFactor := { m00 := (79/200), m01 := (-29/50), m02 := 0, m10 := (17/25), m11 := (31/200), m12 := 0, m20 := (7/200), m21 := (41/100), m22 := 0 } }
  forcedSeq := synthNonIdCert000000480Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨5, by decide⟩

theorem synthNonIdCert000000480_validPairWord :
    ValidPairWord wordRank000000480 := by
  unfold wordRank000000480 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000480_totalLinear :
    totalLinearOfPairWord wordRank000000480 = { m00 := (-199/729), m01 := (248/729), m02 := (656/729), m10 := (-632/729), m11 := (-359/729), m12 := (-56/729), m20 := (304/729), m21 := (-584/729), m22 := (313/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000480_nonIdentity :
    totalLinearOfPairWord wordRank000000480 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000480_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000480_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000480)
      { x := (-3/5), y := (2/5), z := -1 }
      { crossFactor := { m00 := (79/200), m01 := (-29/50), m02 := 0, m10 := (17/25), m11 := (31/200), m12 := 0, m20 := (7/200), m21 := (41/100), m22 := 0 } } = true := by
  rw [synthNonIdCert000000480_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000480_check :
    checkNonIdCert synthNonIdCert000000480 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000480 ⟨5, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000480] using synthNonIdCert000000480_validPairWord
  · simpa [synthNonIdCert000000480] using synthNonIdCert000000480_nonIdentity
  · simpa [synthNonIdCert000000480] using synthNonIdCert000000480_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000480, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000480_coveredRank :
    checkNonIdCoveredRank 480 synthNonIdCert000000480 = true := by
  decide

theorem synthNonIdCert000000480_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000480 = true := by
  rfl

def nonIdentityClassifier :
    Cuboctahedron.Generated.Coverage.NonIdComputableClassifier where
  badDirectionFamilies := []
  badPairBalanceFamilies := []

def translationClassifier :
    Cuboctahedron.Generated.Coverage.TranslationComputableClassifier where
  badDirectionFamilies := []
  badVectorFamilies := []

private def familyInterval : RankInterval where
  startRank := 468
  endRank := 481

private def certForRank : Nat -> NonIdCert
  | 468 => synthNonIdCert000000468
  | 469 => synthNonIdCert000000469
  | 470 => synthNonIdCert000000470
  | 471 => synthNonIdCert000000471
  | 472 => synthNonIdCert000000472
  | 473 => synthNonIdCert000000473
  | 474 => synthNonIdCert000000474
  | 475 => synthNonIdCert000000475
  | 476 => synthNonIdCert000000476
  | 477 => synthNonIdCert000000477
  | 478 => synthNonIdCert000000478
  | 479 => synthNonIdCert000000479
  | 480 => synthNonIdCert000000480
  | _ => synthNonIdCert000000468

private def family : NonIdParametricFamily where
  name := "synth-badDirectionSign-468-481"
  failure := NonIdFamilyFailure.badDirectionSign
  interval := familyInterval
  certForRank := certForRank
  certForRank_sound := by
    intro r hcontains
    rcases r with ⟨rank, hrank⟩
    simp [RankInterval.ContainsPairRank, familyInterval] at hcontains
    have hRank : rank = 468 ∨ rank = 469 ∨ rank = 470 ∨ rank = 471 ∨ rank = 472 ∨ rank = 473 ∨ rank = 474 ∨ rank = 475 ∨ rank = 476 ∨ rank = 477 ∨ rank = 478 ∨ rank = 479 ∨ rank = 480 := by omega
    rcases hRank with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000468_coveredRank
          (And.intro synthNonIdCert000000468_check
            synthNonIdCert000000468_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000469_coveredRank
          (And.intro synthNonIdCert000000469_check
            synthNonIdCert000000469_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000470_coveredRank
          (And.intro synthNonIdCert000000470_check
            synthNonIdCert000000470_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000471_coveredRank
          (And.intro synthNonIdCert000000471_check
            synthNonIdCert000000471_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000472_coveredRank
          (And.intro synthNonIdCert000000472_check
            synthNonIdCert000000472_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000473_coveredRank
          (And.intro synthNonIdCert000000473_check
            synthNonIdCert000000473_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000474_coveredRank
          (And.intro synthNonIdCert000000474_check
            synthNonIdCert000000474_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000475_coveredRank
          (And.intro synthNonIdCert000000475_check
            synthNonIdCert000000475_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000476_coveredRank
          (And.intro synthNonIdCert000000476_check
            synthNonIdCert000000476_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000477_coveredRank
          (And.intro synthNonIdCert000000477_check
            synthNonIdCert000000477_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000478_coveredRank
          (And.intro synthNonIdCert000000478_check
            synthNonIdCert000000478_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000479_coveredRank
          (And.intro synthNonIdCert000000479_check
            synthNonIdCert000000479_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000480_coveredRank
          (And.intro synthNonIdCert000000480_check
            synthNonIdCert000000480_familyFailure)

private theorem family_check :
    checkNonIdParametricFamily family = true := by
  norm_num [checkNonIdParametricFamily, family, familyInterval,
    checkRankInterval, numPairWords]

private theorem family_contains
    {r : Nat} {hlt : r < numPairWords}
    (hlo : 468 <= r) (hhi : r < 481) :
    family.ContainsPairRank (⟨r, hlt⟩ : Fin numPairWords) := by
  simpa [NonIdParametricFamily.ContainsPairRank, family, familyInterval,
    RankInterval.ContainsPairRank] using And.intro hlo hhi

theorem nonidentity_residual_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 468 481 := by
  intro r hlo hhi hlt _hclass _hM
  have hcontains := family_contains (r := r) (hlt := hlt) hlo hhi
  rcases checkNonIdParametricFamily_sound family_check hcontains with
    ⟨cert, hcovered, hcert⟩
  exact ⟨cert, checkNonIdCoveredRank_word hcovered, hcert⟩

theorem translation_farkas_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 468 481 := by
  intro r hlo hhi hlt _mask _hclass hM
  have hcontains := family_contains (r := r) (hlt := hlt) hlo hhi
  exact False.elim
    ((checkNonIdParametricFamily_nonIdentity family_check hcontains) hM)

def nonidentityWitness :
    Cuboctahedron.Generated.SymmetryEvidence.NonIdentityWitnessInterval
      nonIdentityClassifier 468 481 where
  residual := nonidentity_residual_interval

def translationWitness :
    Cuboctahedron.Generated.SymmetryEvidence.TranslationWitnessInterval
      translationClassifier 468 481 where
  farkas := translation_farkas_interval

def coverage :
    Cuboctahedron.Generated.SymmetryEvidence.FamilyIntervalEvidence
      468 481 where
  nonidentityClassifier := nonIdentityClassifier
  translationClassifier := translationClassifier
  nonidentity := nonidentityWitness
  translation := translationWitness

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat
      468 481 :=
  coverage.nonidentity_killed

theorem translation_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.SymmetryEvidence.TranslationRankKilledNat
      468 481 :=
  coverage.translation_killed

end Cuboctahedron.Generated.SynthFamilyInterval.Run000000468_000000481_badDirectionSign
