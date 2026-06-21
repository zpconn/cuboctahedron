import Cuboctahedron.Generated.SymmetryEvidence.FamilyInterval
import Cuboctahedron.Search.NonIdentityFamilies

/-!
Generated synthesized family-interval evidence.

This root groups a contiguous run of exact non-identity certificates
with the same failure kind into one `NonIdParametricFamily` interval.
-/

namespace Cuboctahedron.Generated.SynthFamilyInterval.Run000000422_000000430_badDirectionSign

set_option maxHeartbeats 2400000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def wordRank000000422 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.dm11, PairId.d11m, PairId.d111, PairId.d1m1], by decide⟩

@[simp] theorem wordRank000000422_get00_num :
    wordRank000000422.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000422_get00_mk (h : 0 < 13) :
    wordRank000000422.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000422_get01_num :
    wordRank000000422.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000422_get01_mk (h : 1 < 13) :
    wordRank000000422.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000422_get02_num :
    wordRank000000422.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000422_get02_mk (h : 2 < 13) :
    wordRank000000422.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000422_get03_num :
    wordRank000000422.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000422_get03_mk (h : 3 < 13) :
    wordRank000000422.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000422_get04_num :
    wordRank000000422.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000422_get04_mk (h : 4 < 13) :
    wordRank000000422.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000422_get05_num :
    wordRank000000422.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000422_get05_mk (h : 5 < 13) :
    wordRank000000422.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000422_get06_num :
    wordRank000000422.get (6 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000422_get06_mk (h : 6 < 13) :
    wordRank000000422.get ⟨6, h⟩ = PairId.d1m1 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000422_get07_num :
    wordRank000000422.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000422_get07_mk (h : 7 < 13) :
    wordRank000000422.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000422_get08_num :
    wordRank000000422.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000422_get08_mk (h : 8 < 13) :
    wordRank000000422.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000422_get09_num :
    wordRank000000422.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000422_get09_mk (h : 9 < 13) :
    wordRank000000422.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000422_get10_num :
    wordRank000000422.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000422_get10_mk (h : 10 < 13) :
    wordRank000000422.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000422_get11_num :
    wordRank000000422.get (11 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000422_get11_mk (h : 11 < 13) :
    wordRank000000422.get ⟨11, h⟩ = PairId.d111 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000422_get12_num :
    wordRank000000422.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000422_get12_mk (h : 12 < 13) :
    wordRank000000422.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000423 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d111], by decide⟩

@[simp] theorem wordRank000000423_get00_num :
    wordRank000000423.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000423_get00_mk (h : 0 < 13) :
    wordRank000000423.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000423_get01_num :
    wordRank000000423.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000423_get01_mk (h : 1 < 13) :
    wordRank000000423.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000423_get02_num :
    wordRank000000423.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000423_get02_mk (h : 2 < 13) :
    wordRank000000423.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000423_get03_num :
    wordRank000000423.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000423_get03_mk (h : 3 < 13) :
    wordRank000000423.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000423_get04_num :
    wordRank000000423.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000423_get04_mk (h : 4 < 13) :
    wordRank000000423.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000423_get05_num :
    wordRank000000423.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000423_get05_mk (h : 5 < 13) :
    wordRank000000423.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000423_get06_num :
    wordRank000000423.get (6 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000423_get06_mk (h : 6 < 13) :
    wordRank000000423.get ⟨6, h⟩ = PairId.d1m1 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000423_get07_num :
    wordRank000000423.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000423_get07_mk (h : 7 < 13) :
    wordRank000000423.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000423_get08_num :
    wordRank000000423.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000423_get08_mk (h : 8 < 13) :
    wordRank000000423.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000423_get09_num :
    wordRank000000423.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000423_get09_mk (h : 9 < 13) :
    wordRank000000423.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000423_get10_num :
    wordRank000000423.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000423_get10_mk (h : 10 < 13) :
    wordRank000000423.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000423_get11_num :
    wordRank000000423.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000423_get11_mk (h : 11 < 13) :
    wordRank000000423.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000423_get12_num :
    wordRank000000423.get (12 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000423_get12_mk (h : 12 < 13) :
    wordRank000000423.get ⟨12, h⟩ = PairId.d111 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000424 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m], by decide⟩

@[simp] theorem wordRank000000424_get00_num :
    wordRank000000424.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000424_get00_mk (h : 0 < 13) :
    wordRank000000424.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000424_get01_num :
    wordRank000000424.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000424_get01_mk (h : 1 < 13) :
    wordRank000000424.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000424_get02_num :
    wordRank000000424.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000424_get02_mk (h : 2 < 13) :
    wordRank000000424.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000424_get03_num :
    wordRank000000424.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000424_get03_mk (h : 3 < 13) :
    wordRank000000424.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000424_get04_num :
    wordRank000000424.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000424_get04_mk (h : 4 < 13) :
    wordRank000000424.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000424_get05_num :
    wordRank000000424.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000424_get05_mk (h : 5 < 13) :
    wordRank000000424.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000424_get06_num :
    wordRank000000424.get (6 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000424_get06_mk (h : 6 < 13) :
    wordRank000000424.get ⟨6, h⟩ = PairId.d1m1 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000424_get07_num :
    wordRank000000424.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000424_get07_mk (h : 7 < 13) :
    wordRank000000424.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000424_get08_num :
    wordRank000000424.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000424_get08_mk (h : 8 < 13) :
    wordRank000000424.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000424_get09_num :
    wordRank000000424.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000424_get09_mk (h : 9 < 13) :
    wordRank000000424.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000424_get10_num :
    wordRank000000424.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000424_get10_mk (h : 10 < 13) :
    wordRank000000424.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000424_get11_num :
    wordRank000000424.get (11 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000424_get11_mk (h : 11 < 13) :
    wordRank000000424.get ⟨11, h⟩ = PairId.d111 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000424_get12_num :
    wordRank000000424.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000424_get12_mk (h : 12 < 13) :
    wordRank000000424.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000425 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d111], by decide⟩

@[simp] theorem wordRank000000425_get00_num :
    wordRank000000425.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000425_get00_mk (h : 0 < 13) :
    wordRank000000425.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000425_get01_num :
    wordRank000000425.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000425_get01_mk (h : 1 < 13) :
    wordRank000000425.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000425_get02_num :
    wordRank000000425.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000425_get02_mk (h : 2 < 13) :
    wordRank000000425.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000425_get03_num :
    wordRank000000425.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000425_get03_mk (h : 3 < 13) :
    wordRank000000425.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000425_get04_num :
    wordRank000000425.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000425_get04_mk (h : 4 < 13) :
    wordRank000000425.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000425_get05_num :
    wordRank000000425.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000425_get05_mk (h : 5 < 13) :
    wordRank000000425.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000425_get06_num :
    wordRank000000425.get (6 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000425_get06_mk (h : 6 < 13) :
    wordRank000000425.get ⟨6, h⟩ = PairId.d1m1 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000425_get07_num :
    wordRank000000425.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000425_get07_mk (h : 7 < 13) :
    wordRank000000425.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000425_get08_num :
    wordRank000000425.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000425_get08_mk (h : 8 < 13) :
    wordRank000000425.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000425_get09_num :
    wordRank000000425.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000425_get09_mk (h : 9 < 13) :
    wordRank000000425.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000425_get10_num :
    wordRank000000425.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000425_get10_mk (h : 10 < 13) :
    wordRank000000425.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000425_get11_num :
    wordRank000000425.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000425_get11_mk (h : 11 < 13) :
    wordRank000000425.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000425_get12_num :
    wordRank000000425.get (12 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000425_get12_mk (h : 12 < 13) :
    wordRank000000425.get ⟨12, h⟩ = PairId.d111 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000426 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000426_get00_num :
    wordRank000000426.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000426_get00_mk (h : 0 < 13) :
    wordRank000000426.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000426_get01_num :
    wordRank000000426.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000426_get01_mk (h : 1 < 13) :
    wordRank000000426.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000426_get02_num :
    wordRank000000426.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000426_get02_mk (h : 2 < 13) :
    wordRank000000426.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000426_get03_num :
    wordRank000000426.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000426_get03_mk (h : 3 < 13) :
    wordRank000000426.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000426_get04_num :
    wordRank000000426.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000426_get04_mk (h : 4 < 13) :
    wordRank000000426.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000426_get05_num :
    wordRank000000426.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000426_get05_mk (h : 5 < 13) :
    wordRank000000426.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000426_get06_num :
    wordRank000000426.get (6 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000426_get06_mk (h : 6 < 13) :
    wordRank000000426.get ⟨6, h⟩ = PairId.d1m1 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000426_get07_num :
    wordRank000000426.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000426_get07_mk (h : 7 < 13) :
    wordRank000000426.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000426_get08_num :
    wordRank000000426.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000426_get08_mk (h : 8 < 13) :
    wordRank000000426.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000426_get09_num :
    wordRank000000426.get (9 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000426_get09_mk (h : 9 < 13) :
    wordRank000000426.get ⟨9, h⟩ = PairId.d111 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000426_get10_num :
    wordRank000000426.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000426_get10_mk (h : 10 < 13) :
    wordRank000000426.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000426_get11_num :
    wordRank000000426.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000426_get11_mk (h : 11 < 13) :
    wordRank000000426.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000426_get12_num :
    wordRank000000426.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000426_get12_mk (h : 12 < 13) :
    wordRank000000426.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000427 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.d111, PairId.d11m, PairId.dm11, PairId.d11m], by decide⟩

@[simp] theorem wordRank000000427_get00_num :
    wordRank000000427.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000427_get00_mk (h : 0 < 13) :
    wordRank000000427.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000427_get01_num :
    wordRank000000427.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000427_get01_mk (h : 1 < 13) :
    wordRank000000427.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000427_get02_num :
    wordRank000000427.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000427_get02_mk (h : 2 < 13) :
    wordRank000000427.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000427_get03_num :
    wordRank000000427.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000427_get03_mk (h : 3 < 13) :
    wordRank000000427.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000427_get04_num :
    wordRank000000427.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000427_get04_mk (h : 4 < 13) :
    wordRank000000427.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000427_get05_num :
    wordRank000000427.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000427_get05_mk (h : 5 < 13) :
    wordRank000000427.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000427_get06_num :
    wordRank000000427.get (6 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000427_get06_mk (h : 6 < 13) :
    wordRank000000427.get ⟨6, h⟩ = PairId.d1m1 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000427_get07_num :
    wordRank000000427.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000427_get07_mk (h : 7 < 13) :
    wordRank000000427.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000427_get08_num :
    wordRank000000427.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000427_get08_mk (h : 8 < 13) :
    wordRank000000427.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000427_get09_num :
    wordRank000000427.get (9 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000427_get09_mk (h : 9 < 13) :
    wordRank000000427.get ⟨9, h⟩ = PairId.d111 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000427_get10_num :
    wordRank000000427.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000427_get10_mk (h : 10 < 13) :
    wordRank000000427.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000427_get11_num :
    wordRank000000427.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000427_get11_mk (h : 11 < 13) :
    wordRank000000427.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000427_get12_num :
    wordRank000000427.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000427_get12_mk (h : 12 < 13) :
    wordRank000000427.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000428 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m], by decide⟩

@[simp] theorem wordRank000000428_get00_num :
    wordRank000000428.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000428_get00_mk (h : 0 < 13) :
    wordRank000000428.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000428_get01_num :
    wordRank000000428.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000428_get01_mk (h : 1 < 13) :
    wordRank000000428.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000428_get02_num :
    wordRank000000428.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000428_get02_mk (h : 2 < 13) :
    wordRank000000428.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000428_get03_num :
    wordRank000000428.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000428_get03_mk (h : 3 < 13) :
    wordRank000000428.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000428_get04_num :
    wordRank000000428.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000428_get04_mk (h : 4 < 13) :
    wordRank000000428.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000428_get05_num :
    wordRank000000428.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000428_get05_mk (h : 5 < 13) :
    wordRank000000428.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000428_get06_num :
    wordRank000000428.get (6 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000428_get06_mk (h : 6 < 13) :
    wordRank000000428.get ⟨6, h⟩ = PairId.d1m1 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000428_get07_num :
    wordRank000000428.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000428_get07_mk (h : 7 < 13) :
    wordRank000000428.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000428_get08_num :
    wordRank000000428.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000428_get08_mk (h : 8 < 13) :
    wordRank000000428.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000428_get09_num :
    wordRank000000428.get (9 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000428_get09_mk (h : 9 < 13) :
    wordRank000000428.get ⟨9, h⟩ = PairId.d111 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000428_get10_num :
    wordRank000000428.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000428_get10_mk (h : 10 < 13) :
    wordRank000000428.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000428_get11_num :
    wordRank000000428.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000428_get11_mk (h : 11 < 13) :
    wordRank000000428.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000428_get12_num :
    wordRank000000428.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000428_get12_mk (h : 12 < 13) :
    wordRank000000428.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000429 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d111, PairId.d11m, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000429_get00_num :
    wordRank000000429.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000429_get00_mk (h : 0 < 13) :
    wordRank000000429.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000429_get01_num :
    wordRank000000429.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000429_get01_mk (h : 1 < 13) :
    wordRank000000429.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000429_get02_num :
    wordRank000000429.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000429_get02_mk (h : 2 < 13) :
    wordRank000000429.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000429_get03_num :
    wordRank000000429.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000429_get03_mk (h : 3 < 13) :
    wordRank000000429.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000429_get04_num :
    wordRank000000429.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000429_get04_mk (h : 4 < 13) :
    wordRank000000429.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000429_get05_num :
    wordRank000000429.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000429_get05_mk (h : 5 < 13) :
    wordRank000000429.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000429_get06_num :
    wordRank000000429.get (6 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000429_get06_mk (h : 6 < 13) :
    wordRank000000429.get ⟨6, h⟩ = PairId.d1m1 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000429_get07_num :
    wordRank000000429.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000429_get07_mk (h : 7 < 13) :
    wordRank000000429.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000429_get08_num :
    wordRank000000429.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000429_get08_mk (h : 8 < 13) :
    wordRank000000429.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000429_get09_num :
    wordRank000000429.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000429_get09_mk (h : 9 < 13) :
    wordRank000000429.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000429_get10_num :
    wordRank000000429.get (10 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000429_get10_mk (h : 10 < 13) :
    wordRank000000429.get ⟨10, h⟩ = PairId.d111 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000429_get11_num :
    wordRank000000429.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000429_get11_mk (h : 11 < 13) :
    wordRank000000429.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000429_get12_num :
    wordRank000000429.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000429_get12_mk (h : 12 < 13) :
    wordRank000000429.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000422Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tpmp, Face.tmpp, Face.tppm, Face.tmpp, Face.tppm, Face.tppp, Face.tpmp], by decide⟩

@[simp] theorem synthNonIdCert000000422Seq_get00_num :
    synthNonIdCert000000422Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000422Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000422Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000422Seq_get01_num :
    synthNonIdCert000000422Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000422Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000422Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000422Seq_get02_num :
    synthNonIdCert000000422Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000422Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000422Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000422Seq_get03_num :
    synthNonIdCert000000422Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000422Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000422Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000422Seq_get04_num :
    synthNonIdCert000000422Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000422Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000422Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000422Seq_get05_num :
    synthNonIdCert000000422Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000422Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000422Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000422Seq_get06_num :
    synthNonIdCert000000422Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000422Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000422Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000422Seq_get07_num :
    synthNonIdCert000000422Seq.get (7 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000422Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000422Seq.get ⟨7, h⟩ = Face.tpmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000422Seq_get08_num :
    synthNonIdCert000000422Seq.get (8 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000422Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000422Seq.get ⟨8, h⟩ = Face.tmpp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000422Seq_get09_num :
    synthNonIdCert000000422Seq.get (9 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000422Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000422Seq.get ⟨9, h⟩ = Face.tppm := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000422Seq_get10_num :
    synthNonIdCert000000422Seq.get (10 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000422Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000422Seq.get ⟨10, h⟩ = Face.tmpp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000422Seq_get11_num :
    synthNonIdCert000000422Seq.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000422Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000422Seq.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000422Seq_get12_num :
    synthNonIdCert000000422Seq.get (12 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000422Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000422Seq.get ⟨12, h⟩ = Face.tppp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000422Seq_get13_num :
    synthNonIdCert000000422Seq.get (13 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000422Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000422Seq.get ⟨13, h⟩ = Face.tpmp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000422 : NonIdCert where
  word := wordRank000000422
  axis := { x := (-1/8), y := 0, z := 1 }
  kernel := { crossFactor := { m00 := (49/128), m01 := (1/2), m02 := 0, m10 := (-65/128), m11 := (49/128), m12 := 0, m20 := (49/1024), m21 := (1/16), m22 := 0 } }
  forcedSeq := synthNonIdCert000000422Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨1, by decide⟩

theorem synthNonIdCert000000422_validPairWord :
    ValidPairWord wordRank000000422 := by
  unfold wordRank000000422 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000422_totalLinear :
    totalLinearOfPairWord wordRank000000422 = { m00 := (-1631/6561), m01 := (-6272/6561), m02 := (-1024/6561), m10 := (6272/6561), m11 := (-1759/6561), m12 := (784/6561), m20 := (-1024/6561), m21 := (-784/6561), m22 := (6433/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000422_nonIdentity :
    totalLinearOfPairWord wordRank000000422 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000422_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000422_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000422)
      { x := (-1/8), y := 0, z := 1 }
      { crossFactor := { m00 := (49/128), m01 := (1/2), m02 := 0, m10 := (-65/128), m11 := (49/128), m12 := 0, m20 := (49/1024), m21 := (1/16), m22 := 0 } } = true := by
  rw [synthNonIdCert000000422_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000422_check :
    checkNonIdCert synthNonIdCert000000422 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000422 ⟨1, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000422] using synthNonIdCert000000422_validPairWord
  · simpa [synthNonIdCert000000422] using synthNonIdCert000000422_nonIdentity
  · simpa [synthNonIdCert000000422] using synthNonIdCert000000422_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000422, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000422_coveredRank :
    checkNonIdCoveredRank 422 synthNonIdCert000000422 = true := by
  decide

theorem synthNonIdCert000000422_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000422 = true := by
  rfl

def synthNonIdCert000000423Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tpmp, Face.tmpp, Face.tppm, Face.tmpp, Face.tppm, Face.tpmp, Face.tppp], by decide⟩

@[simp] theorem synthNonIdCert000000423Seq_get00_num :
    synthNonIdCert000000423Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000423Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000423Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000423Seq_get01_num :
    synthNonIdCert000000423Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000423Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000423Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000423Seq_get02_num :
    synthNonIdCert000000423Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000423Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000423Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000423Seq_get03_num :
    synthNonIdCert000000423Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000423Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000423Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000423Seq_get04_num :
    synthNonIdCert000000423Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000423Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000423Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000423Seq_get05_num :
    synthNonIdCert000000423Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000423Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000423Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000423Seq_get06_num :
    synthNonIdCert000000423Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000423Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000423Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000423Seq_get07_num :
    synthNonIdCert000000423Seq.get (7 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000423Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000423Seq.get ⟨7, h⟩ = Face.tpmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000423Seq_get08_num :
    synthNonIdCert000000423Seq.get (8 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000423Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000423Seq.get ⟨8, h⟩ = Face.tmpp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000423Seq_get09_num :
    synthNonIdCert000000423Seq.get (9 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000423Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000423Seq.get ⟨9, h⟩ = Face.tppm := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000423Seq_get10_num :
    synthNonIdCert000000423Seq.get (10 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000423Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000423Seq.get ⟨10, h⟩ = Face.tmpp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000423Seq_get11_num :
    synthNonIdCert000000423Seq.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000423Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000423Seq.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000423Seq_get12_num :
    synthNonIdCert000000423Seq.get (12 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000423Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000423Seq.get ⟨12, h⟩ = Face.tpmp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000423Seq_get13_num :
    synthNonIdCert000000423Seq.get (13 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000423Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000423Seq.get ⟨13, h⟩ = Face.tppp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000423 : NonIdCert where
  word := wordRank000000423
  axis := { x := -1, y := (-8/7), z := 1 }
  kernel := { crossFactor := { m00 := (95/56), m01 := (113/98), m02 := 0, m10 := -1, m11 := (31/56), m12 := 0, m20 := (31/56), m21 := (25/14), m22 := 0 } }
  forcedSeq := synthNonIdCert000000423Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨7, by decide⟩

theorem synthNonIdCert000000423_validPairWord :
    ValidPairWord wordRank000000423 := by
  unfold wordRank000000423 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000423_totalLinear :
    totalLinearOfPairWord wordRank000000423 = { m00 := (2945/6561), m01 := (-1736/6561), m02 := (-5600/6561), m10 := (5320/6561), m11 := (3425/6561), m12 := (1736/6561), m20 := (2464/6561), m21 := (-5320/6561), m22 := (2945/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000423_nonIdentity :
    totalLinearOfPairWord wordRank000000423 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000423_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000423_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000423)
      { x := -1, y := (-8/7), z := 1 }
      { crossFactor := { m00 := (95/56), m01 := (113/98), m02 := 0, m10 := -1, m11 := (31/56), m12 := 0, m20 := (31/56), m21 := (25/14), m22 := 0 } } = true := by
  rw [synthNonIdCert000000423_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000423_check :
    checkNonIdCert synthNonIdCert000000423 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000423 ⟨7, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000423] using synthNonIdCert000000423_validPairWord
  · simpa [synthNonIdCert000000423] using synthNonIdCert000000423_nonIdentity
  · simpa [synthNonIdCert000000423] using synthNonIdCert000000423_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000423, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000423_coveredRank :
    checkNonIdCoveredRank 423 synthNonIdCert000000423 = true := by
  decide

theorem synthNonIdCert000000423_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000423 = true := by
  rfl

def synthNonIdCert000000424Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tpmp, Face.tmpp, Face.tppm, Face.tmpp, Face.tpmp, Face.tppp, Face.tppm], by decide⟩

@[simp] theorem synthNonIdCert000000424Seq_get00_num :
    synthNonIdCert000000424Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000424Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000424Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000424Seq_get01_num :
    synthNonIdCert000000424Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000424Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000424Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000424Seq_get02_num :
    synthNonIdCert000000424Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000424Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000424Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000424Seq_get03_num :
    synthNonIdCert000000424Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000424Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000424Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000424Seq_get04_num :
    synthNonIdCert000000424Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000424Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000424Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000424Seq_get05_num :
    synthNonIdCert000000424Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000424Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000424Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000424Seq_get06_num :
    synthNonIdCert000000424Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000424Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000424Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000424Seq_get07_num :
    synthNonIdCert000000424Seq.get (7 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000424Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000424Seq.get ⟨7, h⟩ = Face.tpmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000424Seq_get08_num :
    synthNonIdCert000000424Seq.get (8 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000424Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000424Seq.get ⟨8, h⟩ = Face.tmpp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000424Seq_get09_num :
    synthNonIdCert000000424Seq.get (9 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000424Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000424Seq.get ⟨9, h⟩ = Face.tppm := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000424Seq_get10_num :
    synthNonIdCert000000424Seq.get (10 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000424Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000424Seq.get ⟨10, h⟩ = Face.tmpp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000424Seq_get11_num :
    synthNonIdCert000000424Seq.get (11 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000424Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000424Seq.get ⟨11, h⟩ = Face.tpmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000424Seq_get12_num :
    synthNonIdCert000000424Seq.get (12 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000424Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000424Seq.get ⟨12, h⟩ = Face.tppp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000424Seq_get13_num :
    synthNonIdCert000000424Seq.get (13 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000424Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000424Seq.get ⟨13, h⟩ = Face.tppm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000424 : NonIdCert where
  word := wordRank000000424
  axis := { x := (-8/3), y := (-5/3), z := 1 }
  kernel := { crossFactor := { m00 := (269/144), m01 := (17/9), m02 := 0, m10 := (-73/18), m11 := (-371/144), m12 := 0, m20 := (-16/9), m21 := (107/144), m22 := 0 } }
  forcedSeq := synthNonIdCert000000424Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨8, by decide⟩

theorem synthNonIdCert000000424_validPairWord :
    ValidPairWord wordRank000000424 := by
  unfold wordRank000000424 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000424_totalLinear :
    totalLinearOfPairWord wordRank000000424 = { m00 := (2209/6561), m01 := (5936/6561), m02 := (-1712/6561), m10 := (4304/6561), m11 := (-2783/6561), m12 := (-4096/6561), m20 := (-4432/6561), m21 := (256/6561), m22 := (-4831/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000424_nonIdentity :
    totalLinearOfPairWord wordRank000000424 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000424_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000424_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000424)
      { x := (-8/3), y := (-5/3), z := 1 }
      { crossFactor := { m00 := (269/144), m01 := (17/9), m02 := 0, m10 := (-73/18), m11 := (-371/144), m12 := 0, m20 := (-16/9), m21 := (107/144), m22 := 0 } } = true := by
  rw [synthNonIdCert000000424_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000424_check :
    checkNonIdCert synthNonIdCert000000424 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000424 ⟨8, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000424] using synthNonIdCert000000424_validPairWord
  · simpa [synthNonIdCert000000424] using synthNonIdCert000000424_nonIdentity
  · simpa [synthNonIdCert000000424] using synthNonIdCert000000424_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000424, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000424_coveredRank :
    checkNonIdCoveredRank 424 synthNonIdCert000000424 = true := by
  decide

theorem synthNonIdCert000000424_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000424 = true := by
  rfl

def synthNonIdCert000000425Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tpmp, Face.tmpp, Face.tppm, Face.tmpp, Face.tpmp, Face.tppm, Face.tppp], by decide⟩

@[simp] theorem synthNonIdCert000000425Seq_get00_num :
    synthNonIdCert000000425Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000425Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000425Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000425Seq_get01_num :
    synthNonIdCert000000425Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000425Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000425Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000425Seq_get02_num :
    synthNonIdCert000000425Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000425Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000425Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000425Seq_get03_num :
    synthNonIdCert000000425Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000425Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000425Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000425Seq_get04_num :
    synthNonIdCert000000425Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000425Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000425Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000425Seq_get05_num :
    synthNonIdCert000000425Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000425Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000425Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000425Seq_get06_num :
    synthNonIdCert000000425Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000425Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000425Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000425Seq_get07_num :
    synthNonIdCert000000425Seq.get (7 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000425Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000425Seq.get ⟨7, h⟩ = Face.tpmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000425Seq_get08_num :
    synthNonIdCert000000425Seq.get (8 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000425Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000425Seq.get ⟨8, h⟩ = Face.tmpp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000425Seq_get09_num :
    synthNonIdCert000000425Seq.get (9 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000425Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000425Seq.get ⟨9, h⟩ = Face.tppm := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000425Seq_get10_num :
    synthNonIdCert000000425Seq.get (10 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000425Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000425Seq.get ⟨10, h⟩ = Face.tmpp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000425Seq_get11_num :
    synthNonIdCert000000425Seq.get (11 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000425Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000425Seq.get ⟨11, h⟩ = Face.tpmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000425Seq_get12_num :
    synthNonIdCert000000425Seq.get (12 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000425Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000425Seq.get ⟨12, h⟩ = Face.tppm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000425Seq_get13_num :
    synthNonIdCert000000425Seq.get (13 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000425Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000425Seq.get ⟨13, h⟩ = Face.tppp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000425 : NonIdCert where
  word := wordRank000000425
  axis := { x := (-17/2), y := (-7/2), z := 1 }
  kernel := { crossFactor := { m00 := (271/16), m01 := (53/8), m02 := 0, m10 := (-293/8), m11 := (-205/16), m12 := 0, m20 := (505/32), m21 := (367/32), m22 := 0 } }
  forcedSeq := synthNonIdCert000000425Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨8, by decide⟩

theorem synthNonIdCert000000425_validPairWord :
    ValidPairWord wordRank000000425 := by
  unfold wordRank000000425 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000425_totalLinear :
    totalLinearOfPairWord wordRank000000425 = { m00 := (4865/6561), m01 := (3280/6561), m02 := (-2936/6561), m10 := (4336/6561), m11 := (-2815/6561), m12 := (4040/6561), m20 := (760/6561), m21 := (-4936/6561), m22 := (-4255/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000425_nonIdentity :
    totalLinearOfPairWord wordRank000000425 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000425_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000425_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000425)
      { x := (-17/2), y := (-7/2), z := 1 }
      { crossFactor := { m00 := (271/16), m01 := (53/8), m02 := 0, m10 := (-293/8), m11 := (-205/16), m12 := 0, m20 := (505/32), m21 := (367/32), m22 := 0 } } = true := by
  rw [synthNonIdCert000000425_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000425_check :
    checkNonIdCert synthNonIdCert000000425 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000425 ⟨8, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000425] using synthNonIdCert000000425_validPairWord
  · simpa [synthNonIdCert000000425] using synthNonIdCert000000425_nonIdentity
  · simpa [synthNonIdCert000000425] using synthNonIdCert000000425_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000425, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000425_coveredRank :
    checkNonIdCoveredRank 425 synthNonIdCert000000425 = true := by
  decide

theorem synthNonIdCert000000425_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000425 = true := by
  rfl

def synthNonIdCert000000426Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tpmp, Face.tmpp, Face.tpmp, Face.tppp, Face.tppm, Face.tppm, Face.tmpp], by decide⟩

@[simp] theorem synthNonIdCert000000426Seq_get00_num :
    synthNonIdCert000000426Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000426Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000426Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000426Seq_get01_num :
    synthNonIdCert000000426Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000426Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000426Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000426Seq_get02_num :
    synthNonIdCert000000426Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000426Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000426Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000426Seq_get03_num :
    synthNonIdCert000000426Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000426Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000426Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000426Seq_get04_num :
    synthNonIdCert000000426Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000426Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000426Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000426Seq_get05_num :
    synthNonIdCert000000426Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000426Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000426Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000426Seq_get06_num :
    synthNonIdCert000000426Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000426Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000426Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000426Seq_get07_num :
    synthNonIdCert000000426Seq.get (7 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000426Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000426Seq.get ⟨7, h⟩ = Face.tpmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000426Seq_get08_num :
    synthNonIdCert000000426Seq.get (8 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000426Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000426Seq.get ⟨8, h⟩ = Face.tmpp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000426Seq_get09_num :
    synthNonIdCert000000426Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000426Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000426Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000426Seq_get10_num :
    synthNonIdCert000000426Seq.get (10 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000426Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000426Seq.get ⟨10, h⟩ = Face.tppp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000426Seq_get11_num :
    synthNonIdCert000000426Seq.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000426Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000426Seq.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000426Seq_get12_num :
    synthNonIdCert000000426Seq.get (12 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000426Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000426Seq.get ⟨12, h⟩ = Face.tppm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000426Seq_get13_num :
    synthNonIdCert000000426Seq.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000426Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000426Seq.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000426 : NonIdCert where
  word := wordRank000000426
  axis := { x := (-3/5), y := (-2/5), z := 1 }
  kernel := { crossFactor := { m00 := (-31/200), m01 := (29/50), m02 := 0, m10 := (-17/25), m11 := (-79/200), m12 := 0, m20 := (-73/200), m21 := (19/100), m22 := 0 } }
  forcedSeq := synthNonIdCert000000426Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨7, by decide⟩

theorem synthNonIdCert000000426_validPairWord :
    ValidPairWord wordRank000000426 := by
  unfold wordRank000000426 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000426_totalLinear :
    totalLinearOfPairWord wordRank000000426 = { m00 := (-199/729), m01 := (632/729), m02 := (-304/729), m10 := (-248/729), m11 := (-359/729), m12 := (-584/729), m20 := (-656/729), m21 := (-56/729), m22 := (313/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000426_nonIdentity :
    totalLinearOfPairWord wordRank000000426 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000426_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000426_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000426)
      { x := (-3/5), y := (-2/5), z := 1 }
      { crossFactor := { m00 := (-31/200), m01 := (29/50), m02 := 0, m10 := (-17/25), m11 := (-79/200), m12 := 0, m20 := (-73/200), m21 := (19/100), m22 := 0 } } = true := by
  rw [synthNonIdCert000000426_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000426_check :
    checkNonIdCert synthNonIdCert000000426 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000426 ⟨7, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000426] using synthNonIdCert000000426_validPairWord
  · simpa [synthNonIdCert000000426] using synthNonIdCert000000426_nonIdentity
  · simpa [synthNonIdCert000000426] using synthNonIdCert000000426_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000426, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000426_coveredRank :
    checkNonIdCoveredRank 426 synthNonIdCert000000426 = true := by
  decide

theorem synthNonIdCert000000426_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000426 = true := by
  rfl

def synthNonIdCert000000427Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tpmp, Face.tmpp, Face.tpmp, Face.tppp, Face.tppm, Face.tmpp, Face.tppm], by decide⟩

@[simp] theorem synthNonIdCert000000427Seq_get00_num :
    synthNonIdCert000000427Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000427Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000427Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000427Seq_get01_num :
    synthNonIdCert000000427Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000427Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000427Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000427Seq_get02_num :
    synthNonIdCert000000427Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000427Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000427Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000427Seq_get03_num :
    synthNonIdCert000000427Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000427Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000427Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000427Seq_get04_num :
    synthNonIdCert000000427Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000427Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000427Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000427Seq_get05_num :
    synthNonIdCert000000427Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000427Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000427Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000427Seq_get06_num :
    synthNonIdCert000000427Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000427Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000427Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000427Seq_get07_num :
    synthNonIdCert000000427Seq.get (7 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000427Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000427Seq.get ⟨7, h⟩ = Face.tpmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000427Seq_get08_num :
    synthNonIdCert000000427Seq.get (8 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000427Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000427Seq.get ⟨8, h⟩ = Face.tmpp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000427Seq_get09_num :
    synthNonIdCert000000427Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000427Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000427Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000427Seq_get10_num :
    synthNonIdCert000000427Seq.get (10 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000427Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000427Seq.get ⟨10, h⟩ = Face.tppp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000427Seq_get11_num :
    synthNonIdCert000000427Seq.get (11 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000427Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000427Seq.get ⟨11, h⟩ = Face.tppm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000427Seq_get12_num :
    synthNonIdCert000000427Seq.get (12 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000427Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000427Seq.get ⟨12, h⟩ = Face.tmpp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000427Seq_get13_num :
    synthNonIdCert000000427Seq.get (13 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000427Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000427Seq.get ⟨13, h⟩ = Face.tppm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000427 : NonIdCert where
  word := wordRank000000427
  axis := { x := (-4/9), y := (-1/9), z := 1 }
  kernel := { crossFactor := { m00 := (185/1296), m01 := (41/81), m02 := 0, m10 := (-97/162), m11 := (121/1296), m12 := 0, m20 := (-1/324), m21 := (305/1296), m22 := 0 } }
  forcedSeq := synthNonIdCert000000427Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨7, by decide⟩

theorem synthNonIdCert000000427_validPairWord :
    ValidPairWord wordRank000000427 := by
  unfold wordRank000000427 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000427_totalLinear :
    totalLinearOfPairWord wordRank000000427 = { m00 := (-3935/6561), m01 := (-1936/6561), m02 := (-4880/6561), m10 := (2960/6561), m11 := (-5855/6561), m12 := (-64/6561), m20 := (-4336/6561), m21 := (-2240/6561), m22 := (4385/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000427_nonIdentity :
    totalLinearOfPairWord wordRank000000427 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000427_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000427_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000427)
      { x := (-4/9), y := (-1/9), z := 1 }
      { crossFactor := { m00 := (185/1296), m01 := (41/81), m02 := 0, m10 := (-97/162), m11 := (121/1296), m12 := 0, m20 := (-1/324), m21 := (305/1296), m22 := 0 } } = true := by
  rw [synthNonIdCert000000427_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000427_check :
    checkNonIdCert synthNonIdCert000000427 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000427 ⟨7, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000427] using synthNonIdCert000000427_validPairWord
  · simpa [synthNonIdCert000000427] using synthNonIdCert000000427_nonIdentity
  · simpa [synthNonIdCert000000427] using synthNonIdCert000000427_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000427, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000427_coveredRank :
    checkNonIdCoveredRank 427 synthNonIdCert000000427 = true := by
  decide

theorem synthNonIdCert000000427_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000427 = true := by
  rfl

def synthNonIdCert000000428Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tpmp, Face.tmpp, Face.tpmp, Face.tppp, Face.tmpp, Face.tppm, Face.tppm], by decide⟩

@[simp] theorem synthNonIdCert000000428Seq_get00_num :
    synthNonIdCert000000428Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000428Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000428Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000428Seq_get01_num :
    synthNonIdCert000000428Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000428Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000428Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000428Seq_get02_num :
    synthNonIdCert000000428Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000428Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000428Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000428Seq_get03_num :
    synthNonIdCert000000428Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000428Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000428Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000428Seq_get04_num :
    synthNonIdCert000000428Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000428Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000428Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000428Seq_get05_num :
    synthNonIdCert000000428Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000428Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000428Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000428Seq_get06_num :
    synthNonIdCert000000428Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000428Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000428Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000428Seq_get07_num :
    synthNonIdCert000000428Seq.get (7 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000428Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000428Seq.get ⟨7, h⟩ = Face.tpmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000428Seq_get08_num :
    synthNonIdCert000000428Seq.get (8 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000428Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000428Seq.get ⟨8, h⟩ = Face.tmpp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000428Seq_get09_num :
    synthNonIdCert000000428Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000428Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000428Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000428Seq_get10_num :
    synthNonIdCert000000428Seq.get (10 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000428Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000428Seq.get ⟨10, h⟩ = Face.tppp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000428Seq_get11_num :
    synthNonIdCert000000428Seq.get (11 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000428Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000428Seq.get ⟨11, h⟩ = Face.tmpp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000428Seq_get12_num :
    synthNonIdCert000000428Seq.get (12 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000428Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000428Seq.get ⟨12, h⟩ = Face.tppm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000428Seq_get13_num :
    synthNonIdCert000000428Seq.get (13 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000428Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000428Seq.get ⟨13, h⟩ = Face.tppm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000428 : NonIdCert where
  word := wordRank000000428
  axis := { x := (-3/5), y := (-2/5), z := 1 }
  kernel := { crossFactor := { m00 := (-31/200), m01 := (29/50), m02 := 0, m10 := (-17/25), m11 := (-79/200), m12 := 0, m20 := (-73/200), m21 := (19/100), m22 := 0 } }
  forcedSeq := synthNonIdCert000000428Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨7, by decide⟩

theorem synthNonIdCert000000428_validPairWord :
    ValidPairWord wordRank000000428 := by
  unfold wordRank000000428 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000428_totalLinear :
    totalLinearOfPairWord wordRank000000428 = { m00 := (-199/729), m01 := (632/729), m02 := (-304/729), m10 := (-248/729), m11 := (-359/729), m12 := (-584/729), m20 := (-656/729), m21 := (-56/729), m22 := (313/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000428_nonIdentity :
    totalLinearOfPairWord wordRank000000428 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000428_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000428_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000428)
      { x := (-3/5), y := (-2/5), z := 1 }
      { crossFactor := { m00 := (-31/200), m01 := (29/50), m02 := 0, m10 := (-17/25), m11 := (-79/200), m12 := 0, m20 := (-73/200), m21 := (19/100), m22 := 0 } } = true := by
  rw [synthNonIdCert000000428_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000428_check :
    checkNonIdCert synthNonIdCert000000428 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000428 ⟨7, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000428] using synthNonIdCert000000428_validPairWord
  · simpa [synthNonIdCert000000428] using synthNonIdCert000000428_nonIdentity
  · simpa [synthNonIdCert000000428] using synthNonIdCert000000428_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000428, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000428_coveredRank :
    checkNonIdCoveredRank 428 synthNonIdCert000000428 = true := by
  decide

theorem synthNonIdCert000000428_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000428 = true := by
  rfl

def synthNonIdCert000000429Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tpmp, Face.tmpp, Face.tpmp, Face.tppm, Face.tppp, Face.tppm, Face.tmpp], by decide⟩

@[simp] theorem synthNonIdCert000000429Seq_get00_num :
    synthNonIdCert000000429Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000429Seq_get00_mk (h : 0 < 14) :
    synthNonIdCert000000429Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000429Seq_get01_num :
    synthNonIdCert000000429Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem synthNonIdCert000000429Seq_get01_mk (h : 1 < 14) :
    synthNonIdCert000000429Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000429Seq_get02_num :
    synthNonIdCert000000429Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000429Seq_get02_mk (h : 2 < 14) :
    synthNonIdCert000000429Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000429Seq_get03_num :
    synthNonIdCert000000429Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem synthNonIdCert000000429Seq_get03_mk (h : 3 < 14) :
    synthNonIdCert000000429Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000429Seq_get04_num :
    synthNonIdCert000000429Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000429Seq_get04_mk (h : 4 < 14) :
    synthNonIdCert000000429Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000429Seq_get05_num :
    synthNonIdCert000000429Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem synthNonIdCert000000429Seq_get05_mk (h : 5 < 14) :
    synthNonIdCert000000429Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000429Seq_get06_num :
    synthNonIdCert000000429Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000429Seq_get06_mk (h : 6 < 14) :
    synthNonIdCert000000429Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000429Seq_get07_num :
    synthNonIdCert000000429Seq.get (7 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000429Seq_get07_mk (h : 7 < 14) :
    synthNonIdCert000000429Seq.get ⟨7, h⟩ = Face.tpmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000429Seq_get08_num :
    synthNonIdCert000000429Seq.get (8 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000429Seq_get08_mk (h : 8 < 14) :
    synthNonIdCert000000429Seq.get ⟨8, h⟩ = Face.tmpp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000429Seq_get09_num :
    synthNonIdCert000000429Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem synthNonIdCert000000429Seq_get09_mk (h : 9 < 14) :
    synthNonIdCert000000429Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000429Seq_get10_num :
    synthNonIdCert000000429Seq.get (10 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000429Seq_get10_mk (h : 10 < 14) :
    synthNonIdCert000000429Seq.get ⟨10, h⟩ = Face.tppm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000429Seq_get11_num :
    synthNonIdCert000000429Seq.get (11 : Step14) = Face.tppp := by
  decide

@[simp] theorem synthNonIdCert000000429Seq_get11_mk (h : 11 < 14) :
    synthNonIdCert000000429Seq.get ⟨11, h⟩ = Face.tppp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000429Seq_get12_num :
    synthNonIdCert000000429Seq.get (12 : Step14) = Face.tppm := by
  decide

@[simp] theorem synthNonIdCert000000429Seq_get12_mk (h : 12 < 14) :
    synthNonIdCert000000429Seq.get ⟨12, h⟩ = Face.tppm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem synthNonIdCert000000429Seq_get13_num :
    synthNonIdCert000000429Seq.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem synthNonIdCert000000429Seq_get13_mk (h : 13 < 14) :
    synthNonIdCert000000429Seq.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def synthNonIdCert000000429 : NonIdCert where
  word := wordRank000000429
  axis := { x := 0, y := (-11/17), z := 1 }
  kernel := { crossFactor := { m00 := (1/136), m01 := (205/289), m02 := 0, m10 := (-1/2), m11 := (1/136), m12 := 0, m20 := (-11/34), m21 := (11/2312), m22 := 0 } }
  forcedSeq := synthNonIdCert000000429Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨0, by decide⟩

theorem synthNonIdCert000000429_validPairWord :
    ValidPairWord wordRank000000429 := by
  unfold wordRank000000429 ValidPairWord pairCount
  decide

theorem synthNonIdCert000000429_totalLinear :
    totalLinearOfPairWord wordRank000000429 = { m00 := (-6559/6561), m01 := (-136/6561), m02 := (-88/6561), m10 := (136/6561), m11 := (-2687/6561), m12 := (-5984/6561), m20 := (88/6561), m21 := (-5984/6561), m22 := (2689/6561) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem synthNonIdCert000000429_nonIdentity :
    totalLinearOfPairWord wordRank000000429 ≠ (matId : Mat3 Rat) := by
  rw [synthNonIdCert000000429_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem synthNonIdCert000000429_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000429)
      { x := 0, y := (-11/17), z := 1 }
      { crossFactor := { m00 := (1/136), m01 := (205/289), m02 := 0, m10 := (-1/2), m11 := (1/136), m12 := 0, m20 := (-11/34), m21 := (11/2312), m22 := 0 } } = true := by
  rw [synthNonIdCert000000429_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem synthNonIdCert000000429_check :
    checkNonIdCert synthNonIdCert000000429 = true := by
  apply checkNonIdCert_badDirectionSign synthNonIdCert000000429 ⟨0, by decide⟩
  · rfl
  · simpa [synthNonIdCert000000429] using synthNonIdCert000000429_validPairWord
  · simpa [synthNonIdCert000000429] using synthNonIdCert000000429_nonIdentity
  · simpa [synthNonIdCert000000429] using synthNonIdCert000000429_kernelCheck
  · intro f hf
    cases f <;> simp [synthNonIdCert000000429, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem synthNonIdCert000000429_coveredRank :
    checkNonIdCoveredRank 429 synthNonIdCert000000429 = true := by
  decide

theorem synthNonIdCert000000429_familyFailure :
    checkNonIdFamilyFailureMatches
      NonIdFamilyFailure.badDirectionSign
      synthNonIdCert000000429 = true := by
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
  startRank := 422
  endRank := 430

private def certForRank : Nat -> NonIdCert
  | 422 => synthNonIdCert000000422
  | 423 => synthNonIdCert000000423
  | 424 => synthNonIdCert000000424
  | 425 => synthNonIdCert000000425
  | 426 => synthNonIdCert000000426
  | 427 => synthNonIdCert000000427
  | 428 => synthNonIdCert000000428
  | 429 => synthNonIdCert000000429
  | _ => synthNonIdCert000000422

private def family : NonIdParametricFamily where
  name := "synth-badDirectionSign-422-430"
  failure := NonIdFamilyFailure.badDirectionSign
  interval := familyInterval
  certForRank := certForRank
  certForRank_sound := by
    intro r hcontains
    rcases r with ⟨rank, hrank⟩
    simp [RankInterval.ContainsPairRank, familyInterval] at hcontains
    have hRank : rank = 422 ∨ rank = 423 ∨ rank = 424 ∨ rank = 425 ∨ rank = 426 ∨ rank = 427 ∨ rank = 428 ∨ rank = 429 := by omega
    rcases hRank with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000422_coveredRank
          (And.intro synthNonIdCert000000422_check
            synthNonIdCert000000422_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000423_coveredRank
          (And.intro synthNonIdCert000000423_check
            synthNonIdCert000000423_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000424_coveredRank
          (And.intro synthNonIdCert000000424_check
            synthNonIdCert000000424_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000425_coveredRank
          (And.intro synthNonIdCert000000425_check
            synthNonIdCert000000425_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000426_coveredRank
          (And.intro synthNonIdCert000000426_check
            synthNonIdCert000000426_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000427_coveredRank
          (And.intro synthNonIdCert000000427_check
            synthNonIdCert000000427_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000428_coveredRank
          (And.intro synthNonIdCert000000428_check
            synthNonIdCert000000428_familyFailure)
    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro synthNonIdCert000000429_coveredRank
          (And.intro synthNonIdCert000000429_check
            synthNonIdCert000000429_familyFailure)

private theorem family_check :
    checkNonIdParametricFamily family = true := by
  norm_num [checkNonIdParametricFamily, family, familyInterval,
    checkRankInterval, numPairWords]

private theorem family_contains
    {r : Nat} {hlt : r < numPairWords}
    (hlo : 422 <= r) (hhi : r < 430) :
    family.ContainsPairRank (⟨r, hlt⟩ : Fin numPairWords) := by
  simpa [NonIdParametricFamily.ContainsPairRank, family, familyInterval,
    RankInterval.ContainsPairRank] using And.intro hlo hhi

theorem nonidentity_residual_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 422 430 := by
  intro r hlo hhi hlt _hclass _hM
  have hcontains := family_contains (r := r) (hlt := hlt) hlo hhi
  rcases checkNonIdParametricFamily_sound family_check hcontains with
    ⟨cert, hcovered, hcert⟩
  exact ⟨cert, checkNonIdCoveredRank_word hcovered, hcert⟩

theorem translation_farkas_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 422 430 := by
  intro r hlo hhi hlt _mask _hclass hM
  have hcontains := family_contains (r := r) (hlt := hlt) hlo hhi
  exact False.elim
    ((checkNonIdParametricFamily_nonIdentity family_check hcontains) hM)

def nonidentityWitness :
    Cuboctahedron.Generated.SymmetryEvidence.NonIdentityWitnessInterval
      nonIdentityClassifier 422 430 where
  residual := nonidentity_residual_interval

def translationWitness :
    Cuboctahedron.Generated.SymmetryEvidence.TranslationWitnessInterval
      translationClassifier 422 430 where
  farkas := translation_farkas_interval

def coverage :
    Cuboctahedron.Generated.SymmetryEvidence.FamilyIntervalEvidence
      422 430 where
  nonidentityClassifier := nonIdentityClassifier
  translationClassifier := translationClassifier
  nonidentity := nonidentityWitness
  translation := translationWitness

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat
      422 430 :=
  coverage.nonidentity_killed

theorem translation_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.SymmetryEvidence.TranslationRankKilledNat
      422 430 :=
  coverage.translation_killed

end Cuboctahedron.Generated.SynthFamilyInterval.Run000000422_000000430_badDirectionSign
