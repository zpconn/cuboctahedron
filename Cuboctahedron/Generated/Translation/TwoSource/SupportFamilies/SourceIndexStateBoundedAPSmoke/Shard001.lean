import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Generated bounded source-index/state coverage shard for Phase 6Z.6K.8I.

The descriptor `Applies` predicates are source-index/state predicates.
This shard is a bounded gate, not final global coverage.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard001

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-- Source-index/state bounded coverage descriptor `07df79ba535ad420c5b600b5315e79c9af7b32caa4c46b14074a0a6f51780199`.
Observed bounded cases: 28. -/
private def fam_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_000_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 23
  secondIndex := 0
  support := fam_000_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `54d0c8c40e9b0d9f9519cb7c7408f01fbde155d55fa47406050bae66230fa261`.
Observed bounded cases: 19. -/
private def fam_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_001_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 0
  support := fam_001_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `976bc3a2ee25ce8a02c2dddf48cec166060bf46e866b86a4ef0107b559468085`.
Observed bounded cases: 7. -/
private def fam_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_002_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 7
  support := fam_002_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Source-index/state bounded coverage descriptor `eb4c456fc66410a7b8aa45c64cb8e7e30799ef477fdc1b2697e1e1f95417a217`.
Observed bounded cases: 7. -/
private def fam_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_003_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 24
  secondIndex := 1
  support := fam_003_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Source-index/state bounded coverage descriptor `4fda77f1bb3ebbed92f40e150884471b84d123e5b2d9d45e0eaff7690fb57cc9`.
Observed bounded cases: 4. -/
private def fam_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_004_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 109
  secondIndex := 1
  support := fam_004_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Source-index/state bounded coverage descriptor `a781759219e5c92e7bf68c6cb4c21987fb5a17290c17eb050d2c16c071373e07`.
Observed bounded cases: 3. -/
private def fam_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_005_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 25
  secondIndex := 2
  support := fam_005_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Source-index/state bounded coverage descriptor `f4720b9b7c334ff3bd51b6ed20a9ebe7147a3827ee0d000ff0ef889dbb1da232`.
Observed bounded cases: 3. -/
private def fam_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_006_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 13
  support := fam_006_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Source-index/state bounded coverage descriptor `1fbb3ca1bb9f9d06de3fcfe2b546b99940e647fba253b01170c57f26e4cf605e`.
Observed bounded cases: 2. -/
private def fam_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_007_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 167
  secondIndex := 0
  support := fam_007_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `1051d2b13a449cbd9f9812d12bc8463552e4a275d660b1b6ee617c733cf3b31c`.
Observed bounded cases: 2. -/
private def fam_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_008_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 14
  support := fam_008_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Source-index/state bounded coverage descriptor `62f5ae522c0e7133d5843c313ca60aeae4e0b20c912d1f80286ac540b2b6eb8a`.
Observed bounded cases: 1. -/
private def fam_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_009_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 147
  secondIndex := 0
  support := fam_009_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `969bdd36c0ff690c62a0b53d598d08baaaffcf117b705925f574eaf39d9931f0`.
Observed bounded cases: 1. -/
private def fam_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_010_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 105
  secondIndex := 0
  support := fam_010_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `9ee6b2e564d663d2a48b04a5f6c09a2f659d7008458c98b9a5c078536ec01da9`.
Observed bounded cases: 1. -/
private def fam_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_011_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 148
  secondIndex := 0
  support := fam_011_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `eec6cea09d6d89c03f3c4577319600781c82fe093551478e4074800b6ef59c13`.
Observed bounded cases: 1. -/
private def fam_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_012_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 136
  secondIndex := 0
  support := fam_012_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Source-index/state bounded coverage descriptor `bbbd1b52ffaff83f416f83cf6570a124f64b171786df2a706b8e6f478a7c5e6a`.
Observed bounded cases: 1. -/
private def fam_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_013_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 13
  support := fam_013_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Source-index/state bounded coverage descriptor `be3dd4a888d16f51b23fd34ec28e9487d7bfc244316bb453c8d15aed5684bede`.
Observed bounded cases: 1. -/
private def fam_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_014_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 7
  support := fam_014_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Source-index/state bounded coverage descriptor `3b759ab3163ba9496a7005928678cb5a209032fa5b627ee33ba282b0bdd0155e`.
Observed bounded cases: 1. -/
private def fam_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_015_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 12
  support := fam_015_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

inductive BoundedCovered : Nat -> SignMask -> Prop
  | fam000 {r : Nat} {mask : SignMask} (h : fam_000_desc.Applies r mask) : BoundedCovered r mask
  | fam001 {r : Nat} {mask : SignMask} (h : fam_001_desc.Applies r mask) : BoundedCovered r mask
  | fam002 {r : Nat} {mask : SignMask} (h : fam_002_desc.Applies r mask) : BoundedCovered r mask
  | fam003 {r : Nat} {mask : SignMask} (h : fam_003_desc.Applies r mask) : BoundedCovered r mask
  | fam004 {r : Nat} {mask : SignMask} (h : fam_004_desc.Applies r mask) : BoundedCovered r mask
  | fam005 {r : Nat} {mask : SignMask} (h : fam_005_desc.Applies r mask) : BoundedCovered r mask
  | fam006 {r : Nat} {mask : SignMask} (h : fam_006_desc.Applies r mask) : BoundedCovered r mask
  | fam007 {r : Nat} {mask : SignMask} (h : fam_007_desc.Applies r mask) : BoundedCovered r mask
  | fam008 {r : Nat} {mask : SignMask} (h : fam_008_desc.Applies r mask) : BoundedCovered r mask
  | fam009 {r : Nat} {mask : SignMask} (h : fam_009_desc.Applies r mask) : BoundedCovered r mask
  | fam010 {r : Nat} {mask : SignMask} (h : fam_010_desc.Applies r mask) : BoundedCovered r mask
  | fam011 {r : Nat} {mask : SignMask} (h : fam_011_desc.Applies r mask) : BoundedCovered r mask
  | fam012 {r : Nat} {mask : SignMask} (h : fam_012_desc.Applies r mask) : BoundedCovered r mask
  | fam013 {r : Nat} {mask : SignMask} (h : fam_013_desc.Applies r mask) : BoundedCovered r mask
  | fam014 {r : Nat} {mask : SignMask} (h : fam_014_desc.Applies r mask) : BoundedCovered r mask
  | fam015 {r : Nat} {mask : SignMask} (h : fam_015_desc.Applies r mask) : BoundedCovered r mask

def boundedFamily : RowPropertyMembershipFamily where
  Applies := BoundedCovered
  covered := by
    intro r mask h
    cases h with
    | fam000 h =>
        exact fam_000_desc.covered_of_applies h
    | fam001 h =>
        exact fam_001_desc.covered_of_applies h
    | fam002 h =>
        exact fam_002_desc.covered_of_applies h
    | fam003 h =>
        exact fam_003_desc.covered_of_applies h
    | fam004 h =>
        exact fam_004_desc.covered_of_applies h
    | fam005 h =>
        exact fam_005_desc.covered_of_applies h
    | fam006 h =>
        exact fam_006_desc.covered_of_applies h
    | fam007 h =>
        exact fam_007_desc.covered_of_applies h
    | fam008 h =>
        exact fam_008_desc.covered_of_applies h
    | fam009 h =>
        exact fam_009_desc.covered_of_applies h
    | fam010 h =>
        exact fam_010_desc.covered_of_applies h
    | fam011 h =>
        exact fam_011_desc.covered_of_applies h
    | fam012 h =>
        exact fam_012_desc.covered_of_applies h
    | fam013 h =>
        exact fam_013_desc.covered_of_applies h
    | fam014 h =>
        exact fam_014_desc.covered_of_applies h
    | fam015 h =>
        exact fam_015_desc.covered_of_applies h

private def rank_000000004_nonidentity_rank : Fin numPairWords := ⟨4, by decide⟩
private def rank_000000004_nonidentity_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d1m1], by decide⟩

@[simp] theorem rank_000000004_nonidentity_word_get00_num :
    rank_000000004_nonidentity_word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem rank_000000004_nonidentity_word_get00_mk (h : 0 < 13) :
    rank_000000004_nonidentity_word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000004_nonidentity_word_get01_num :
    rank_000000004_nonidentity_word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000004_nonidentity_word_get01_mk (h : 1 < 13) :
    rank_000000004_nonidentity_word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000004_nonidentity_word_get02_num :
    rank_000000004_nonidentity_word.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000004_nonidentity_word_get02_mk (h : 2 < 13) :
    rank_000000004_nonidentity_word.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000004_nonidentity_word_get03_num :
    rank_000000004_nonidentity_word.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000004_nonidentity_word_get03_mk (h : 3 < 13) :
    rank_000000004_nonidentity_word.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000004_nonidentity_word_get04_num :
    rank_000000004_nonidentity_word.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000004_nonidentity_word_get04_mk (h : 4 < 13) :
    rank_000000004_nonidentity_word.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000004_nonidentity_word_get05_num :
    rank_000000004_nonidentity_word.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000004_nonidentity_word_get05_mk (h : 5 < 13) :
    rank_000000004_nonidentity_word.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000004_nonidentity_word_get06_num :
    rank_000000004_nonidentity_word.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000004_nonidentity_word_get06_mk (h : 6 < 13) :
    rank_000000004_nonidentity_word.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000004_nonidentity_word_get07_num :
    rank_000000004_nonidentity_word.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000004_nonidentity_word_get07_mk (h : 7 < 13) :
    rank_000000004_nonidentity_word.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000004_nonidentity_word_get08_num :
    rank_000000004_nonidentity_word.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000004_nonidentity_word_get08_mk (h : 8 < 13) :
    rank_000000004_nonidentity_word.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000004_nonidentity_word_get09_num :
    rank_000000004_nonidentity_word.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000004_nonidentity_word_get09_mk (h : 9 < 13) :
    rank_000000004_nonidentity_word.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000004_nonidentity_word_get10_num :
    rank_000000004_nonidentity_word.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000004_nonidentity_word_get10_mk (h : 10 < 13) :
    rank_000000004_nonidentity_word.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000004_nonidentity_word_get11_num :
    rank_000000004_nonidentity_word.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000004_nonidentity_word_get11_mk (h : 11 < 13) :
    rank_000000004_nonidentity_word.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000004_nonidentity_word_get12_num :
    rank_000000004_nonidentity_word.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000004_nonidentity_word_get12_mk (h : 12 < 13) :
    rank_000000004_nonidentity_word.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem rank_000000004_nonidentity_rankWord :
    rankPairWord? rank_000000004_nonidentity_word = some rank_000000004_nonidentity_rank := by
  decide

private theorem rank_000000004_nonidentity_unrank :
    unrankPairWord rank_000000004_nonidentity_rank = rank_000000004_nonidentity_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000004_nonidentity_word rank_000000004_nonidentity_rank).1
    rank_000000004_nonidentity_rankWord |>.symm

set_option maxHeartbeats 1200000 in
private theorem rank_000000004_nonidentity_totalLinear :
    totalLinearOfPairWord rank_000000004_nonidentity_word =
      { m00 := (49/81), m01 := (-32/81), m02 := (56/81), m10 := (-32/81), m11 := (49/81), m12 := (56/81), m20 := (-56/81), m21 := (-56/81), m22 := (17/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

private theorem rank_000000004_nonidentity_linear_ne :
    totalLinearOfPairWord rank_000000004_nonidentity_word ≠ (matId : Mat3 Rat) := by
  rw [rank_000000004_nonidentity_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

private theorem rank_000000004_nonidentity_linear_ne_atRank
    (hlt : 4 < numPairWords) :
    totalLinearOfPairWord
      (unrankPairWord (⟨4, hlt⟩ : Fin numPairWords)) ≠
        (matId : Mat3 Rat) := by
  have hrank :
      (⟨4, hlt⟩ : Fin numPairWords) = rank_000000004_nonidentity_rank := by
    ext
    rfl
  simpa [hrank, rank_000000004_nonidentity_unrank] using rank_000000004_nonidentity_linear_ne

private def rank_000000006_nonidentity_rank : Fin numPairWords := ⟨6, by decide⟩
private def rank_000000006_nonidentity_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩

@[simp] theorem rank_000000006_nonidentity_word_get00_num :
    rank_000000006_nonidentity_word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem rank_000000006_nonidentity_word_get00_mk (h : 0 < 13) :
    rank_000000006_nonidentity_word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000006_nonidentity_word_get01_num :
    rank_000000006_nonidentity_word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000006_nonidentity_word_get01_mk (h : 1 < 13) :
    rank_000000006_nonidentity_word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000006_nonidentity_word_get02_num :
    rank_000000006_nonidentity_word.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000006_nonidentity_word_get02_mk (h : 2 < 13) :
    rank_000000006_nonidentity_word.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000006_nonidentity_word_get03_num :
    rank_000000006_nonidentity_word.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000006_nonidentity_word_get03_mk (h : 3 < 13) :
    rank_000000006_nonidentity_word.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000006_nonidentity_word_get04_num :
    rank_000000006_nonidentity_word.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000006_nonidentity_word_get04_mk (h : 4 < 13) :
    rank_000000006_nonidentity_word.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000006_nonidentity_word_get05_num :
    rank_000000006_nonidentity_word.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000006_nonidentity_word_get05_mk (h : 5 < 13) :
    rank_000000006_nonidentity_word.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000006_nonidentity_word_get06_num :
    rank_000000006_nonidentity_word.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000006_nonidentity_word_get06_mk (h : 6 < 13) :
    rank_000000006_nonidentity_word.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000006_nonidentity_word_get07_num :
    rank_000000006_nonidentity_word.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000006_nonidentity_word_get07_mk (h : 7 < 13) :
    rank_000000006_nonidentity_word.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000006_nonidentity_word_get08_num :
    rank_000000006_nonidentity_word.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000006_nonidentity_word_get08_mk (h : 8 < 13) :
    rank_000000006_nonidentity_word.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000006_nonidentity_word_get09_num :
    rank_000000006_nonidentity_word.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000006_nonidentity_word_get09_mk (h : 9 < 13) :
    rank_000000006_nonidentity_word.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000006_nonidentity_word_get10_num :
    rank_000000006_nonidentity_word.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000006_nonidentity_word_get10_mk (h : 10 < 13) :
    rank_000000006_nonidentity_word.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000006_nonidentity_word_get11_num :
    rank_000000006_nonidentity_word.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000006_nonidentity_word_get11_mk (h : 11 < 13) :
    rank_000000006_nonidentity_word.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000006_nonidentity_word_get12_num :
    rank_000000006_nonidentity_word.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000006_nonidentity_word_get12_mk (h : 12 < 13) :
    rank_000000006_nonidentity_word.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem rank_000000006_nonidentity_rankWord :
    rankPairWord? rank_000000006_nonidentity_word = some rank_000000006_nonidentity_rank := by
  decide

private theorem rank_000000006_nonidentity_unrank :
    unrankPairWord rank_000000006_nonidentity_rank = rank_000000006_nonidentity_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000006_nonidentity_word rank_000000006_nonidentity_rank).1
    rank_000000006_nonidentity_rankWord |>.symm

set_option maxHeartbeats 1200000 in
private theorem rank_000000006_nonidentity_totalLinear :
    totalLinearOfPairWord rank_000000006_nonidentity_word =
      { m00 := (17/81), m01 := (56/81), m02 := (-56/81), m10 := (-56/81), m11 := (49/81), m12 := (32/81), m20 := (56/81), m21 := (32/81), m22 := (49/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

private theorem rank_000000006_nonidentity_linear_ne :
    totalLinearOfPairWord rank_000000006_nonidentity_word ≠ (matId : Mat3 Rat) := by
  rw [rank_000000006_nonidentity_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

private theorem rank_000000006_nonidentity_linear_ne_atRank
    (hlt : 6 < numPairWords) :
    totalLinearOfPairWord
      (unrankPairWord (⟨6, hlt⟩ : Fin numPairWords)) ≠
        (matId : Mat3 Rat) := by
  have hrank :
      (⟨6, hlt⟩ : Fin numPairWords) = rank_000000006_nonidentity_rank := by
    ext
    rfl
  simpa [hrank, rank_000000006_nonidentity_unrank] using rank_000000006_nonidentity_linear_ne

private def rank_000000007_nonidentity_rank : Fin numPairWords := ⟨7, by decide⟩
private def rank_000000007_nonidentity_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.dm11], by decide⟩

@[simp] theorem rank_000000007_nonidentity_word_get00_num :
    rank_000000007_nonidentity_word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem rank_000000007_nonidentity_word_get00_mk (h : 0 < 13) :
    rank_000000007_nonidentity_word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000007_nonidentity_word_get01_num :
    rank_000000007_nonidentity_word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000007_nonidentity_word_get01_mk (h : 1 < 13) :
    rank_000000007_nonidentity_word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000007_nonidentity_word_get02_num :
    rank_000000007_nonidentity_word.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000007_nonidentity_word_get02_mk (h : 2 < 13) :
    rank_000000007_nonidentity_word.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000007_nonidentity_word_get03_num :
    rank_000000007_nonidentity_word.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000007_nonidentity_word_get03_mk (h : 3 < 13) :
    rank_000000007_nonidentity_word.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000007_nonidentity_word_get04_num :
    rank_000000007_nonidentity_word.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000007_nonidentity_word_get04_mk (h : 4 < 13) :
    rank_000000007_nonidentity_word.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000007_nonidentity_word_get05_num :
    rank_000000007_nonidentity_word.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000007_nonidentity_word_get05_mk (h : 5 < 13) :
    rank_000000007_nonidentity_word.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000007_nonidentity_word_get06_num :
    rank_000000007_nonidentity_word.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000007_nonidentity_word_get06_mk (h : 6 < 13) :
    rank_000000007_nonidentity_word.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000007_nonidentity_word_get07_num :
    rank_000000007_nonidentity_word.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000007_nonidentity_word_get07_mk (h : 7 < 13) :
    rank_000000007_nonidentity_word.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000007_nonidentity_word_get08_num :
    rank_000000007_nonidentity_word.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000007_nonidentity_word_get08_mk (h : 8 < 13) :
    rank_000000007_nonidentity_word.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000007_nonidentity_word_get09_num :
    rank_000000007_nonidentity_word.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000007_nonidentity_word_get09_mk (h : 9 < 13) :
    rank_000000007_nonidentity_word.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000007_nonidentity_word_get10_num :
    rank_000000007_nonidentity_word.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000007_nonidentity_word_get10_mk (h : 10 < 13) :
    rank_000000007_nonidentity_word.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000007_nonidentity_word_get11_num :
    rank_000000007_nonidentity_word.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000007_nonidentity_word_get11_mk (h : 11 < 13) :
    rank_000000007_nonidentity_word.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000007_nonidentity_word_get12_num :
    rank_000000007_nonidentity_word.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000007_nonidentity_word_get12_mk (h : 12 < 13) :
    rank_000000007_nonidentity_word.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem rank_000000007_nonidentity_rankWord :
    rankPairWord? rank_000000007_nonidentity_word = some rank_000000007_nonidentity_rank := by
  decide

private theorem rank_000000007_nonidentity_unrank :
    unrankPairWord rank_000000007_nonidentity_rank = rank_000000007_nonidentity_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000007_nonidentity_word rank_000000007_nonidentity_rank).1
    rank_000000007_nonidentity_rankWord |>.symm

set_option maxHeartbeats 1200000 in
private theorem rank_000000007_nonidentity_totalLinear :
    totalLinearOfPairWord rank_000000007_nonidentity_word =
      { m00 := (-455/729), m01 := (-104/729), m02 := (-560/729), m10 := (-280/729), m11 := (665/729), m12 := (104/729), m20 := (496/729), m21 := (280/729), m22 := (-455/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

private theorem rank_000000007_nonidentity_linear_ne :
    totalLinearOfPairWord rank_000000007_nonidentity_word ≠ (matId : Mat3 Rat) := by
  rw [rank_000000007_nonidentity_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

private theorem rank_000000007_nonidentity_linear_ne_atRank
    (hlt : 7 < numPairWords) :
    totalLinearOfPairWord
      (unrankPairWord (⟨7, hlt⟩ : Fin numPairWords)) ≠
        (matId : Mat3 Rat) := by
  have hrank :
      (⟨7, hlt⟩ : Fin numPairWords) = rank_000000007_nonidentity_rank := by
    ext
    rfl
  simpa [hrank, rank_000000007_nonidentity_unrank] using rank_000000007_nonidentity_linear_ne

private def rank_000000005_mask_00_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_00_badDirection_mask : SignMask := ⟨0, by decide⟩
private def rank_000000005_mask_00_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_00_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_00_badDirection_b : Vec3 Rat := { x := (4/3), y := (-28/3), z := (-28/3) }
private def rank_000000005_mask_00_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_00_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_00_badDirection_word = some rank_000000005_mask_00_badDirection_rank := by
  decide

private theorem rank_000000005_mask_00_badDirection_unrank :
    unrankPairWord rank_000000005_mask_00_badDirection_rank = rank_000000005_mask_00_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_00_badDirection_word rank_000000005_mask_00_badDirection_rank).1
    rank_000000005_mask_00_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_00_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_00_badDirection_word rank_000000005_mask_00_badDirection_mask = rank_000000005_mask_00_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_00_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_00_badDirection_rank rank_000000005_mask_00_badDirection_mask = rank_000000005_mask_00_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_00_badDirection_unrank]
  exact rank_000000005_mask_00_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_00_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_00_badDirection_rank rank_000000005_mask_00_badDirection_mask = rank_000000005_mask_00_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_00_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_00_badDirection_b, rank_000000005_mask_00_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_00_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_00_badDirection_rank rank_000000005_mask_00_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_00_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_00_badDirection_seqAtRank, rank_000000005_mask_00_badDirection_bAtRank]
  norm_num [rank_000000005_mask_00_badDirection_denom, rank_000000005_mask_00_badDirection_seq, rank_000000005_mask_00_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_00_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_00_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_00_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_00_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_00_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_00_badDirection_denom]

private def rank_000000005_mask_01_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_01_badDirection_mask : SignMask := ⟨1, by decide⟩
private def rank_000000005_mask_01_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_01_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_01_badDirection_b : Vec3 Rat := { x := (4/3), y := (-4/3), z := (-28/3) }
private def rank_000000005_mask_01_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_01_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_01_badDirection_word = some rank_000000005_mask_01_badDirection_rank := by
  decide

private theorem rank_000000005_mask_01_badDirection_unrank :
    unrankPairWord rank_000000005_mask_01_badDirection_rank = rank_000000005_mask_01_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_01_badDirection_word rank_000000005_mask_01_badDirection_rank).1
    rank_000000005_mask_01_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_01_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_01_badDirection_word rank_000000005_mask_01_badDirection_mask = rank_000000005_mask_01_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_01_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_01_badDirection_rank rank_000000005_mask_01_badDirection_mask = rank_000000005_mask_01_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_01_badDirection_unrank]
  exact rank_000000005_mask_01_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_01_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_01_badDirection_rank rank_000000005_mask_01_badDirection_mask = rank_000000005_mask_01_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_01_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_01_badDirection_b, rank_000000005_mask_01_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_01_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_01_badDirection_rank rank_000000005_mask_01_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_01_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_01_badDirection_seqAtRank, rank_000000005_mask_01_badDirection_bAtRank]
  norm_num [rank_000000005_mask_01_badDirection_denom, rank_000000005_mask_01_badDirection_seq, rank_000000005_mask_01_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_01_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_01_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_01_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_01_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_01_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_01_badDirection_denom]

private def rank_000000005_mask_02_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_02_badDirection_mask : SignMask := ⟨2, by decide⟩
private def rank_000000005_mask_02_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_02_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_02_badDirection_b : Vec3 Rat := { x := (4/3), y := (-28/3), z := (-4/3) }
private def rank_000000005_mask_02_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_02_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_02_badDirection_word = some rank_000000005_mask_02_badDirection_rank := by
  decide

private theorem rank_000000005_mask_02_badDirection_unrank :
    unrankPairWord rank_000000005_mask_02_badDirection_rank = rank_000000005_mask_02_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_02_badDirection_word rank_000000005_mask_02_badDirection_rank).1
    rank_000000005_mask_02_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_02_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_02_badDirection_word rank_000000005_mask_02_badDirection_mask = rank_000000005_mask_02_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_02_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_02_badDirection_rank rank_000000005_mask_02_badDirection_mask = rank_000000005_mask_02_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_02_badDirection_unrank]
  exact rank_000000005_mask_02_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_02_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_02_badDirection_rank rank_000000005_mask_02_badDirection_mask = rank_000000005_mask_02_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_02_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_02_badDirection_b, rank_000000005_mask_02_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_02_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_02_badDirection_rank rank_000000005_mask_02_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_02_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_02_badDirection_seqAtRank, rank_000000005_mask_02_badDirection_bAtRank]
  norm_num [rank_000000005_mask_02_badDirection_denom, rank_000000005_mask_02_badDirection_seq, rank_000000005_mask_02_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_02_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_02_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_02_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_02_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_02_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_02_badDirection_denom]

private def rank_000000005_mask_03_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_03_badDirection_mask : SignMask := ⟨3, by decide⟩
private def rank_000000005_mask_03_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_03_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_03_badDirection_b : Vec3 Rat := { x := (4/3), y := (-4/3), z := (-4/3) }
private def rank_000000005_mask_03_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_03_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_03_badDirection_word = some rank_000000005_mask_03_badDirection_rank := by
  decide

private theorem rank_000000005_mask_03_badDirection_unrank :
    unrankPairWord rank_000000005_mask_03_badDirection_rank = rank_000000005_mask_03_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_03_badDirection_word rank_000000005_mask_03_badDirection_rank).1
    rank_000000005_mask_03_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_03_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_03_badDirection_word rank_000000005_mask_03_badDirection_mask = rank_000000005_mask_03_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_03_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_03_badDirection_rank rank_000000005_mask_03_badDirection_mask = rank_000000005_mask_03_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_03_badDirection_unrank]
  exact rank_000000005_mask_03_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_03_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_03_badDirection_rank rank_000000005_mask_03_badDirection_mask = rank_000000005_mask_03_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_03_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_03_badDirection_b, rank_000000005_mask_03_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_03_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_03_badDirection_rank rank_000000005_mask_03_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_03_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_03_badDirection_seqAtRank, rank_000000005_mask_03_badDirection_bAtRank]
  norm_num [rank_000000005_mask_03_badDirection_denom, rank_000000005_mask_03_badDirection_seq, rank_000000005_mask_03_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_03_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_03_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_03_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_03_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_03_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_03_badDirection_denom]

private def rank_000000005_mask_04_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_04_badDirection_mask : SignMask := ⟨4, by decide⟩
private def rank_000000005_mask_04_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_04_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_04_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := -4 }
private def rank_000000005_mask_04_badDirection_denom : Rat := -4

private theorem rank_000000005_mask_04_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_04_badDirection_word = some rank_000000005_mask_04_badDirection_rank := by
  decide

private theorem rank_000000005_mask_04_badDirection_unrank :
    unrankPairWord rank_000000005_mask_04_badDirection_rank = rank_000000005_mask_04_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_04_badDirection_word rank_000000005_mask_04_badDirection_rank).1
    rank_000000005_mask_04_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_04_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_04_badDirection_word rank_000000005_mask_04_badDirection_mask = rank_000000005_mask_04_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_04_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_04_badDirection_rank rank_000000005_mask_04_badDirection_mask = rank_000000005_mask_04_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_04_badDirection_unrank]
  exact rank_000000005_mask_04_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_04_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_04_badDirection_rank rank_000000005_mask_04_badDirection_mask = rank_000000005_mask_04_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_04_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_04_badDirection_b, rank_000000005_mask_04_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_04_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_04_badDirection_rank rank_000000005_mask_04_badDirection_mask ⟨6, by decide⟩ =
      rank_000000005_mask_04_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_04_badDirection_seqAtRank, rank_000000005_mask_04_badDirection_bAtRank]
  norm_num [rank_000000005_mask_04_badDirection_denom, rank_000000005_mask_04_badDirection_seq, rank_000000005_mask_04_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_04_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_04_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_04_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_04_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_04_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_04_badDirection_denom]

private def rank_000000005_mask_05_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_05_badDirection_mask : SignMask := ⟨5, by decide⟩
private def rank_000000005_mask_05_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_05_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_05_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := -4 }
private def rank_000000005_mask_05_badDirection_denom : Rat := -12

private theorem rank_000000005_mask_05_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_05_badDirection_word = some rank_000000005_mask_05_badDirection_rank := by
  decide

private theorem rank_000000005_mask_05_badDirection_unrank :
    unrankPairWord rank_000000005_mask_05_badDirection_rank = rank_000000005_mask_05_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_05_badDirection_word rank_000000005_mask_05_badDirection_rank).1
    rank_000000005_mask_05_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_05_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_05_badDirection_word rank_000000005_mask_05_badDirection_mask = rank_000000005_mask_05_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_05_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_05_badDirection_rank rank_000000005_mask_05_badDirection_mask = rank_000000005_mask_05_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_05_badDirection_unrank]
  exact rank_000000005_mask_05_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_05_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_05_badDirection_rank rank_000000005_mask_05_badDirection_mask = rank_000000005_mask_05_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_05_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_05_badDirection_b, rank_000000005_mask_05_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_05_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_05_badDirection_rank rank_000000005_mask_05_badDirection_mask ⟨8, by decide⟩ =
      rank_000000005_mask_05_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_05_badDirection_seqAtRank, rank_000000005_mask_05_badDirection_bAtRank]
  norm_num [rank_000000005_mask_05_badDirection_denom, rank_000000005_mask_05_badDirection_seq, rank_000000005_mask_05_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_05_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_05_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_05_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_05_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_05_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_05_badDirection_denom]

private def rank_000000005_mask_06_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_06_badDirection_mask : SignMask := ⟨6, by decide⟩
private def rank_000000005_mask_06_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_06_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_06_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := 4 }
private def rank_000000005_mask_06_badDirection_denom : Rat := -12

private theorem rank_000000005_mask_06_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_06_badDirection_word = some rank_000000005_mask_06_badDirection_rank := by
  decide

private theorem rank_000000005_mask_06_badDirection_unrank :
    unrankPairWord rank_000000005_mask_06_badDirection_rank = rank_000000005_mask_06_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_06_badDirection_word rank_000000005_mask_06_badDirection_rank).1
    rank_000000005_mask_06_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_06_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_06_badDirection_word rank_000000005_mask_06_badDirection_mask = rank_000000005_mask_06_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_06_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_06_badDirection_rank rank_000000005_mask_06_badDirection_mask = rank_000000005_mask_06_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_06_badDirection_unrank]
  exact rank_000000005_mask_06_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_06_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_06_badDirection_rank rank_000000005_mask_06_badDirection_mask = rank_000000005_mask_06_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_06_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_06_badDirection_b, rank_000000005_mask_06_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_06_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_06_badDirection_rank rank_000000005_mask_06_badDirection_mask ⟨12, by decide⟩ =
      rank_000000005_mask_06_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_06_badDirection_seqAtRank, rank_000000005_mask_06_badDirection_bAtRank]
  norm_num [rank_000000005_mask_06_badDirection_denom, rank_000000005_mask_06_badDirection_seq, rank_000000005_mask_06_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_06_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_06_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_06_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_06_badDirection_mask)
      (i := ⟨12, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_06_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_06_badDirection_denom]

private def rank_000000005_mask_07_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_07_badDirection_mask : SignMask := ⟨7, by decide⟩
private def rank_000000005_mask_07_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_07_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_07_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := 4 }
private def rank_000000005_mask_07_badDirection_denom : Rat := -4

private theorem rank_000000005_mask_07_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_07_badDirection_word = some rank_000000005_mask_07_badDirection_rank := by
  decide

private theorem rank_000000005_mask_07_badDirection_unrank :
    unrankPairWord rank_000000005_mask_07_badDirection_rank = rank_000000005_mask_07_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_07_badDirection_word rank_000000005_mask_07_badDirection_rank).1
    rank_000000005_mask_07_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_07_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_07_badDirection_word rank_000000005_mask_07_badDirection_mask = rank_000000005_mask_07_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_07_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_07_badDirection_rank rank_000000005_mask_07_badDirection_mask = rank_000000005_mask_07_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_07_badDirection_unrank]
  exact rank_000000005_mask_07_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_07_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_07_badDirection_rank rank_000000005_mask_07_badDirection_mask = rank_000000005_mask_07_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_07_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_07_badDirection_b, rank_000000005_mask_07_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_07_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_07_badDirection_rank rank_000000005_mask_07_badDirection_mask ⟨8, by decide⟩ =
      rank_000000005_mask_07_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_07_badDirection_seqAtRank, rank_000000005_mask_07_badDirection_bAtRank]
  norm_num [rank_000000005_mask_07_badDirection_denom, rank_000000005_mask_07_badDirection_seq, rank_000000005_mask_07_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_07_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_07_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_07_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_07_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_07_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_07_badDirection_denom]

private def rank_000000005_mask_10_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_10_badDirection_mask : SignMask := ⟨10, by decide⟩
private def rank_000000005_mask_10_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_10_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_10_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := (-20/3) }
private def rank_000000005_mask_10_badDirection_denom : Rat := (-20/3)

private theorem rank_000000005_mask_10_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_10_badDirection_word = some rank_000000005_mask_10_badDirection_rank := by
  decide

private theorem rank_000000005_mask_10_badDirection_unrank :
    unrankPairWord rank_000000005_mask_10_badDirection_rank = rank_000000005_mask_10_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_10_badDirection_word rank_000000005_mask_10_badDirection_rank).1
    rank_000000005_mask_10_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_10_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_10_badDirection_word rank_000000005_mask_10_badDirection_mask = rank_000000005_mask_10_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_10_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_10_badDirection_rank rank_000000005_mask_10_badDirection_mask = rank_000000005_mask_10_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_10_badDirection_unrank]
  exact rank_000000005_mask_10_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_10_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_10_badDirection_rank rank_000000005_mask_10_badDirection_mask = rank_000000005_mask_10_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_10_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_10_badDirection_b, rank_000000005_mask_10_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_10_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_10_badDirection_rank rank_000000005_mask_10_badDirection_mask ⟨4, by decide⟩ =
      rank_000000005_mask_10_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_10_badDirection_seqAtRank, rank_000000005_mask_10_badDirection_bAtRank]
  norm_num [rank_000000005_mask_10_badDirection_denom, rank_000000005_mask_10_badDirection_seq, rank_000000005_mask_10_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_10_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_10_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_10_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_10_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_10_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_10_badDirection_denom]

private def rank_000000005_mask_11_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_11_badDirection_mask : SignMask := ⟨11, by decide⟩
private def rank_000000005_mask_11_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_11_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_11_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := (-20/3) }
private def rank_000000005_mask_11_badDirection_denom : Rat := (-20/3)

private theorem rank_000000005_mask_11_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_11_badDirection_word = some rank_000000005_mask_11_badDirection_rank := by
  decide

private theorem rank_000000005_mask_11_badDirection_unrank :
    unrankPairWord rank_000000005_mask_11_badDirection_rank = rank_000000005_mask_11_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_11_badDirection_word rank_000000005_mask_11_badDirection_rank).1
    rank_000000005_mask_11_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_11_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_11_badDirection_word rank_000000005_mask_11_badDirection_mask = rank_000000005_mask_11_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_11_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_11_badDirection_rank rank_000000005_mask_11_badDirection_mask = rank_000000005_mask_11_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_11_badDirection_unrank]
  exact rank_000000005_mask_11_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_11_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_11_badDirection_rank rank_000000005_mask_11_badDirection_mask = rank_000000005_mask_11_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_11_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_11_badDirection_b, rank_000000005_mask_11_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_11_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_11_badDirection_rank rank_000000005_mask_11_badDirection_mask ⟨4, by decide⟩ =
      rank_000000005_mask_11_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_11_badDirection_seqAtRank, rank_000000005_mask_11_badDirection_bAtRank]
  norm_num [rank_000000005_mask_11_badDirection_denom, rank_000000005_mask_11_badDirection_seq, rank_000000005_mask_11_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_11_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_11_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_11_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_11_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_11_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_11_badDirection_denom]

private def rank_000000005_mask_12_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_12_badDirection_mask : SignMask := ⟨12, by decide⟩
private def rank_000000005_mask_12_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_12_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_12_badDirection_b : Vec3 Rat := { x := (-28/3), y := (4/3), z := (-28/3) }
private def rank_000000005_mask_12_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_12_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_12_badDirection_word = some rank_000000005_mask_12_badDirection_rank := by
  decide

private theorem rank_000000005_mask_12_badDirection_unrank :
    unrankPairWord rank_000000005_mask_12_badDirection_rank = rank_000000005_mask_12_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_12_badDirection_word rank_000000005_mask_12_badDirection_rank).1
    rank_000000005_mask_12_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_12_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_12_badDirection_word rank_000000005_mask_12_badDirection_mask = rank_000000005_mask_12_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_12_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_12_badDirection_rank rank_000000005_mask_12_badDirection_mask = rank_000000005_mask_12_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_12_badDirection_unrank]
  exact rank_000000005_mask_12_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_12_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_12_badDirection_rank rank_000000005_mask_12_badDirection_mask = rank_000000005_mask_12_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_12_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_12_badDirection_b, rank_000000005_mask_12_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_12_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_12_badDirection_rank rank_000000005_mask_12_badDirection_mask ⟨2, by decide⟩ =
      rank_000000005_mask_12_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_12_badDirection_seqAtRank, rank_000000005_mask_12_badDirection_bAtRank]
  norm_num [rank_000000005_mask_12_badDirection_denom, rank_000000005_mask_12_badDirection_seq, rank_000000005_mask_12_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_12_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_12_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_12_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_12_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_12_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_12_badDirection_denom]

private def rank_000000005_mask_14_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_14_badDirection_mask : SignMask := ⟨14, by decide⟩
private def rank_000000005_mask_14_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_14_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_14_badDirection_b : Vec3 Rat := { x := (-28/3), y := (4/3), z := (-4/3) }
private def rank_000000005_mask_14_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_14_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_14_badDirection_word = some rank_000000005_mask_14_badDirection_rank := by
  decide

private theorem rank_000000005_mask_14_badDirection_unrank :
    unrankPairWord rank_000000005_mask_14_badDirection_rank = rank_000000005_mask_14_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_14_badDirection_word rank_000000005_mask_14_badDirection_rank).1
    rank_000000005_mask_14_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_14_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_14_badDirection_word rank_000000005_mask_14_badDirection_mask = rank_000000005_mask_14_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_14_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_14_badDirection_rank rank_000000005_mask_14_badDirection_mask = rank_000000005_mask_14_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_14_badDirection_unrank]
  exact rank_000000005_mask_14_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_14_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_14_badDirection_rank rank_000000005_mask_14_badDirection_mask = rank_000000005_mask_14_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_14_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_14_badDirection_b, rank_000000005_mask_14_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_14_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_14_badDirection_rank rank_000000005_mask_14_badDirection_mask ⟨2, by decide⟩ =
      rank_000000005_mask_14_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_14_badDirection_seqAtRank, rank_000000005_mask_14_badDirection_bAtRank]
  norm_num [rank_000000005_mask_14_badDirection_denom, rank_000000005_mask_14_badDirection_seq, rank_000000005_mask_14_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_14_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_14_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_14_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_14_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_14_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_14_badDirection_denom]

private def rank_000000005_mask_15_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_15_badDirection_mask : SignMask := ⟨15, by decide⟩
private def rank_000000005_mask_15_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_15_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_15_badDirection_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-4/3) }
private def rank_000000005_mask_15_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_15_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_15_badDirection_word = some rank_000000005_mask_15_badDirection_rank := by
  decide

private theorem rank_000000005_mask_15_badDirection_unrank :
    unrankPairWord rank_000000005_mask_15_badDirection_rank = rank_000000005_mask_15_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_15_badDirection_word rank_000000005_mask_15_badDirection_rank).1
    rank_000000005_mask_15_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_15_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_15_badDirection_word rank_000000005_mask_15_badDirection_mask = rank_000000005_mask_15_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_15_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_15_badDirection_rank rank_000000005_mask_15_badDirection_mask = rank_000000005_mask_15_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_15_badDirection_unrank]
  exact rank_000000005_mask_15_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_15_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_15_badDirection_rank rank_000000005_mask_15_badDirection_mask = rank_000000005_mask_15_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_15_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_15_badDirection_b, rank_000000005_mask_15_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_15_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_15_badDirection_rank rank_000000005_mask_15_badDirection_mask ⟨4, by decide⟩ =
      rank_000000005_mask_15_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_15_badDirection_seqAtRank, rank_000000005_mask_15_badDirection_bAtRank]
  norm_num [rank_000000005_mask_15_badDirection_denom, rank_000000005_mask_15_badDirection_seq, rank_000000005_mask_15_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_15_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_15_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_15_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_15_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_15_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_15_badDirection_denom]

private def rank_000000005_mask_17_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_17_badDirection_mask : SignMask := ⟨17, by decide⟩
private def rank_000000005_mask_17_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_17_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_17_badDirection_b : Vec3 Rat := { x := -4, y := (-20/3), z := -4 }
private def rank_000000005_mask_17_badDirection_denom : Rat := (-20/3)

private theorem rank_000000005_mask_17_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_17_badDirection_word = some rank_000000005_mask_17_badDirection_rank := by
  decide

private theorem rank_000000005_mask_17_badDirection_unrank :
    unrankPairWord rank_000000005_mask_17_badDirection_rank = rank_000000005_mask_17_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_17_badDirection_word rank_000000005_mask_17_badDirection_rank).1
    rank_000000005_mask_17_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_17_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_17_badDirection_word rank_000000005_mask_17_badDirection_mask = rank_000000005_mask_17_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_17_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_17_badDirection_rank rank_000000005_mask_17_badDirection_mask = rank_000000005_mask_17_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_17_badDirection_unrank]
  exact rank_000000005_mask_17_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_17_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_17_badDirection_rank rank_000000005_mask_17_badDirection_mask = rank_000000005_mask_17_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_17_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_17_badDirection_b, rank_000000005_mask_17_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_17_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_17_badDirection_rank rank_000000005_mask_17_badDirection_mask ⟨2, by decide⟩ =
      rank_000000005_mask_17_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_17_badDirection_seqAtRank, rank_000000005_mask_17_badDirection_bAtRank]
  norm_num [rank_000000005_mask_17_badDirection_denom, rank_000000005_mask_17_badDirection_seq, rank_000000005_mask_17_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_17_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_17_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_17_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_17_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_17_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_17_badDirection_denom]

private def rank_000000005_mask_19_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_19_badDirection_mask : SignMask := ⟨19, by decide⟩
private def rank_000000005_mask_19_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_19_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_19_badDirection_b : Vec3 Rat := { x := -4, y := (-20/3), z := 4 }
private def rank_000000005_mask_19_badDirection_denom : Rat := (-20/3)

private theorem rank_000000005_mask_19_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_19_badDirection_word = some rank_000000005_mask_19_badDirection_rank := by
  decide

private theorem rank_000000005_mask_19_badDirection_unrank :
    unrankPairWord rank_000000005_mask_19_badDirection_rank = rank_000000005_mask_19_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_19_badDirection_word rank_000000005_mask_19_badDirection_rank).1
    rank_000000005_mask_19_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_19_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_19_badDirection_word rank_000000005_mask_19_badDirection_mask = rank_000000005_mask_19_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_19_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_19_badDirection_rank rank_000000005_mask_19_badDirection_mask = rank_000000005_mask_19_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_19_badDirection_unrank]
  exact rank_000000005_mask_19_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_19_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_19_badDirection_rank rank_000000005_mask_19_badDirection_mask = rank_000000005_mask_19_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_19_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_19_badDirection_b, rank_000000005_mask_19_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_19_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_19_badDirection_rank rank_000000005_mask_19_badDirection_mask ⟨2, by decide⟩ =
      rank_000000005_mask_19_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_19_badDirection_seqAtRank, rank_000000005_mask_19_badDirection_bAtRank]
  norm_num [rank_000000005_mask_19_badDirection_denom, rank_000000005_mask_19_badDirection_seq, rank_000000005_mask_19_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_19_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_19_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_19_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_19_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_19_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_19_badDirection_denom]

private def rank_000000005_mask_20_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_20_badDirection_mask : SignMask := ⟨20, by decide⟩
private def rank_000000005_mask_20_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_20_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_20_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (4/3) }
private def rank_000000005_mask_20_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_20_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_20_badDirection_word = some rank_000000005_mask_20_badDirection_rank := by
  decide

private theorem rank_000000005_mask_20_badDirection_unrank :
    unrankPairWord rank_000000005_mask_20_badDirection_rank = rank_000000005_mask_20_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_20_badDirection_word rank_000000005_mask_20_badDirection_rank).1
    rank_000000005_mask_20_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_20_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_20_badDirection_word rank_000000005_mask_20_badDirection_mask = rank_000000005_mask_20_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_20_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_20_badDirection_rank rank_000000005_mask_20_badDirection_mask = rank_000000005_mask_20_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_20_badDirection_unrank]
  exact rank_000000005_mask_20_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_20_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_20_badDirection_rank rank_000000005_mask_20_badDirection_mask = rank_000000005_mask_20_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_20_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_20_badDirection_b, rank_000000005_mask_20_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_20_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_20_badDirection_rank rank_000000005_mask_20_badDirection_mask ⟨4, by decide⟩ =
      rank_000000005_mask_20_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_20_badDirection_seqAtRank, rank_000000005_mask_20_badDirection_bAtRank]
  norm_num [rank_000000005_mask_20_badDirection_denom, rank_000000005_mask_20_badDirection_seq, rank_000000005_mask_20_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_20_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_20_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_20_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_20_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_20_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_20_badDirection_denom]

private def rank_000000005_mask_21_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_21_badDirection_mask : SignMask := ⟨21, by decide⟩
private def rank_000000005_mask_21_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_21_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_21_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (4/3) }
private def rank_000000005_mask_21_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_21_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_21_badDirection_word = some rank_000000005_mask_21_badDirection_rank := by
  decide

private theorem rank_000000005_mask_21_badDirection_unrank :
    unrankPairWord rank_000000005_mask_21_badDirection_rank = rank_000000005_mask_21_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_21_badDirection_word rank_000000005_mask_21_badDirection_rank).1
    rank_000000005_mask_21_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_21_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_21_badDirection_word rank_000000005_mask_21_badDirection_mask = rank_000000005_mask_21_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_21_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_21_badDirection_rank rank_000000005_mask_21_badDirection_mask = rank_000000005_mask_21_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_21_badDirection_unrank]
  exact rank_000000005_mask_21_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_21_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_21_badDirection_rank rank_000000005_mask_21_badDirection_mask = rank_000000005_mask_21_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_21_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_21_badDirection_b, rank_000000005_mask_21_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_21_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_21_badDirection_rank rank_000000005_mask_21_badDirection_mask ⟨2, by decide⟩ =
      rank_000000005_mask_21_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_21_badDirection_seqAtRank, rank_000000005_mask_21_badDirection_bAtRank]
  norm_num [rank_000000005_mask_21_badDirection_denom, rank_000000005_mask_21_badDirection_seq, rank_000000005_mask_21_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_21_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_21_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_21_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_21_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_21_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_21_badDirection_denom]

private def rank_000000005_mask_23_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_23_badDirection_mask : SignMask := ⟨23, by decide⟩
private def rank_000000005_mask_23_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_23_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_23_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (28/3) }
private def rank_000000005_mask_23_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_23_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_23_badDirection_word = some rank_000000005_mask_23_badDirection_rank := by
  decide

private theorem rank_000000005_mask_23_badDirection_unrank :
    unrankPairWord rank_000000005_mask_23_badDirection_rank = rank_000000005_mask_23_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_23_badDirection_word rank_000000005_mask_23_badDirection_rank).1
    rank_000000005_mask_23_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_23_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_23_badDirection_word rank_000000005_mask_23_badDirection_mask = rank_000000005_mask_23_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_23_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_23_badDirection_rank rank_000000005_mask_23_badDirection_mask = rank_000000005_mask_23_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_23_badDirection_unrank]
  exact rank_000000005_mask_23_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_23_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_23_badDirection_rank rank_000000005_mask_23_badDirection_mask = rank_000000005_mask_23_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_23_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_23_badDirection_b, rank_000000005_mask_23_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_23_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_23_badDirection_rank rank_000000005_mask_23_badDirection_mask ⟨2, by decide⟩ =
      rank_000000005_mask_23_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_23_badDirection_seqAtRank, rank_000000005_mask_23_badDirection_bAtRank]
  norm_num [rank_000000005_mask_23_badDirection_denom, rank_000000005_mask_23_badDirection_seq, rank_000000005_mask_23_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_23_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_23_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_23_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_23_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_23_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_23_badDirection_denom]

private def rank_000000005_mask_25_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_25_badDirection_mask : SignMask := ⟨25, by decide⟩
private def rank_000000005_mask_25_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_25_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_25_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (-28/3) }
private def rank_000000005_mask_25_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_25_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_25_badDirection_word = some rank_000000005_mask_25_badDirection_rank := by
  decide

private theorem rank_000000005_mask_25_badDirection_unrank :
    unrankPairWord rank_000000005_mask_25_badDirection_rank = rank_000000005_mask_25_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_25_badDirection_word rank_000000005_mask_25_badDirection_rank).1
    rank_000000005_mask_25_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_25_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_25_badDirection_word rank_000000005_mask_25_badDirection_mask = rank_000000005_mask_25_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_25_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_25_badDirection_rank rank_000000005_mask_25_badDirection_mask = rank_000000005_mask_25_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_25_badDirection_unrank]
  exact rank_000000005_mask_25_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_25_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_25_badDirection_rank rank_000000005_mask_25_badDirection_mask = rank_000000005_mask_25_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_25_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_25_badDirection_b, rank_000000005_mask_25_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_25_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_25_badDirection_rank rank_000000005_mask_25_badDirection_mask ⟨2, by decide⟩ =
      rank_000000005_mask_25_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_25_badDirection_seqAtRank, rank_000000005_mask_25_badDirection_bAtRank]
  norm_num [rank_000000005_mask_25_badDirection_denom, rank_000000005_mask_25_badDirection_seq, rank_000000005_mask_25_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_25_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_25_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_25_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_25_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_25_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_25_badDirection_denom]

private def rank_000000005_mask_26_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_26_badDirection_mask : SignMask := ⟨26, by decide⟩
private def rank_000000005_mask_26_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_26_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_26_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-4/3) }
private def rank_000000005_mask_26_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_26_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_26_badDirection_word = some rank_000000005_mask_26_badDirection_rank := by
  decide

private theorem rank_000000005_mask_26_badDirection_unrank :
    unrankPairWord rank_000000005_mask_26_badDirection_rank = rank_000000005_mask_26_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_26_badDirection_word rank_000000005_mask_26_badDirection_rank).1
    rank_000000005_mask_26_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_26_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_26_badDirection_word rank_000000005_mask_26_badDirection_mask = rank_000000005_mask_26_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_26_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_26_badDirection_rank rank_000000005_mask_26_badDirection_mask = rank_000000005_mask_26_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_26_badDirection_unrank]
  exact rank_000000005_mask_26_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_26_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_26_badDirection_rank rank_000000005_mask_26_badDirection_mask = rank_000000005_mask_26_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_26_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_26_badDirection_b, rank_000000005_mask_26_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_26_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_26_badDirection_rank rank_000000005_mask_26_badDirection_mask ⟨4, by decide⟩ =
      rank_000000005_mask_26_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_26_badDirection_seqAtRank, rank_000000005_mask_26_badDirection_bAtRank]
  norm_num [rank_000000005_mask_26_badDirection_denom, rank_000000005_mask_26_badDirection_seq, rank_000000005_mask_26_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_26_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_26_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_26_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_26_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_26_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_26_badDirection_denom]

private def rank_000000005_mask_27_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_27_badDirection_mask : SignMask := ⟨27, by decide⟩
private def rank_000000005_mask_27_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_27_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_27_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (-4/3) }
private def rank_000000005_mask_27_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_27_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_27_badDirection_word = some rank_000000005_mask_27_badDirection_rank := by
  decide

private theorem rank_000000005_mask_27_badDirection_unrank :
    unrankPairWord rank_000000005_mask_27_badDirection_rank = rank_000000005_mask_27_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_27_badDirection_word rank_000000005_mask_27_badDirection_rank).1
    rank_000000005_mask_27_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_27_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_27_badDirection_word rank_000000005_mask_27_badDirection_mask = rank_000000005_mask_27_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_27_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_27_badDirection_rank rank_000000005_mask_27_badDirection_mask = rank_000000005_mask_27_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_27_badDirection_unrank]
  exact rank_000000005_mask_27_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_27_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_27_badDirection_rank rank_000000005_mask_27_badDirection_mask = rank_000000005_mask_27_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_27_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_27_badDirection_b, rank_000000005_mask_27_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_27_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_27_badDirection_rank rank_000000005_mask_27_badDirection_mask ⟨2, by decide⟩ =
      rank_000000005_mask_27_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_27_badDirection_seqAtRank, rank_000000005_mask_27_badDirection_bAtRank]
  norm_num [rank_000000005_mask_27_badDirection_denom, rank_000000005_mask_27_badDirection_seq, rank_000000005_mask_27_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_27_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_27_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_27_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_27_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_27_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_27_badDirection_denom]

private def rank_000000005_mask_32_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_32_badDirection_mask : SignMask := ⟨32, by decide⟩
private def rank_000000005_mask_32_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_32_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_32_badDirection_b : Vec3 Rat := { x := (20/3), y := -4, z := -4 }
private def rank_000000005_mask_32_badDirection_denom : Rat := (-20/3)

private theorem rank_000000005_mask_32_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_32_badDirection_word = some rank_000000005_mask_32_badDirection_rank := by
  decide

private theorem rank_000000005_mask_32_badDirection_unrank :
    unrankPairWord rank_000000005_mask_32_badDirection_rank = rank_000000005_mask_32_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_32_badDirection_word rank_000000005_mask_32_badDirection_rank).1
    rank_000000005_mask_32_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_32_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_32_badDirection_word rank_000000005_mask_32_badDirection_mask = rank_000000005_mask_32_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_32_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_32_badDirection_rank rank_000000005_mask_32_badDirection_mask = rank_000000005_mask_32_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_32_badDirection_unrank]
  exact rank_000000005_mask_32_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_32_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_32_badDirection_rank rank_000000005_mask_32_badDirection_mask = rank_000000005_mask_32_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_32_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_32_badDirection_b, rank_000000005_mask_32_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_32_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_32_badDirection_rank rank_000000005_mask_32_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_32_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_32_badDirection_seqAtRank, rank_000000005_mask_32_badDirection_bAtRank]
  norm_num [rank_000000005_mask_32_badDirection_denom, rank_000000005_mask_32_badDirection_seq, rank_000000005_mask_32_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_32_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_32_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_32_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_32_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_32_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_32_badDirection_denom]

private def rank_000000005_mask_33_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_33_badDirection_mask : SignMask := ⟨33, by decide⟩
private def rank_000000005_mask_33_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_33_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_33_badDirection_b : Vec3 Rat := { x := (20/3), y := 4, z := -4 }
private def rank_000000005_mask_33_badDirection_denom : Rat := (-20/3)

private theorem rank_000000005_mask_33_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_33_badDirection_word = some rank_000000005_mask_33_badDirection_rank := by
  decide

private theorem rank_000000005_mask_33_badDirection_unrank :
    unrankPairWord rank_000000005_mask_33_badDirection_rank = rank_000000005_mask_33_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_33_badDirection_word rank_000000005_mask_33_badDirection_rank).1
    rank_000000005_mask_33_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_33_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_33_badDirection_word rank_000000005_mask_33_badDirection_mask = rank_000000005_mask_33_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_33_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_33_badDirection_rank rank_000000005_mask_33_badDirection_mask = rank_000000005_mask_33_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_33_badDirection_unrank]
  exact rank_000000005_mask_33_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_33_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_33_badDirection_rank rank_000000005_mask_33_badDirection_mask = rank_000000005_mask_33_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_33_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_33_badDirection_b, rank_000000005_mask_33_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_33_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_33_badDirection_rank rank_000000005_mask_33_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_33_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_33_badDirection_seqAtRank, rank_000000005_mask_33_badDirection_bAtRank]
  norm_num [rank_000000005_mask_33_badDirection_denom, rank_000000005_mask_33_badDirection_seq, rank_000000005_mask_33_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_33_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_33_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_33_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_33_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_33_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_33_badDirection_denom]

private def rank_000000005_mask_34_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_34_badDirection_mask : SignMask := ⟨34, by decide⟩
private def rank_000000005_mask_34_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_34_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_34_badDirection_b : Vec3 Rat := { x := (20/3), y := -4, z := 4 }
private def rank_000000005_mask_34_badDirection_denom : Rat := (-20/3)

private theorem rank_000000005_mask_34_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_34_badDirection_word = some rank_000000005_mask_34_badDirection_rank := by
  decide

private theorem rank_000000005_mask_34_badDirection_unrank :
    unrankPairWord rank_000000005_mask_34_badDirection_rank = rank_000000005_mask_34_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_34_badDirection_word rank_000000005_mask_34_badDirection_rank).1
    rank_000000005_mask_34_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_34_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_34_badDirection_word rank_000000005_mask_34_badDirection_mask = rank_000000005_mask_34_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_34_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_34_badDirection_rank rank_000000005_mask_34_badDirection_mask = rank_000000005_mask_34_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_34_badDirection_unrank]
  exact rank_000000005_mask_34_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_34_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_34_badDirection_rank rank_000000005_mask_34_badDirection_mask = rank_000000005_mask_34_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_34_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_34_badDirection_b, rank_000000005_mask_34_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_34_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_34_badDirection_rank rank_000000005_mask_34_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_34_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_34_badDirection_seqAtRank, rank_000000005_mask_34_badDirection_bAtRank]
  norm_num [rank_000000005_mask_34_badDirection_denom, rank_000000005_mask_34_badDirection_seq, rank_000000005_mask_34_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_34_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_34_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_34_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_34_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_34_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_34_badDirection_denom]

private def rank_000000005_mask_35_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_35_badDirection_mask : SignMask := ⟨35, by decide⟩
private def rank_000000005_mask_35_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_35_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_35_badDirection_b : Vec3 Rat := { x := (20/3), y := 4, z := 4 }
private def rank_000000005_mask_35_badDirection_denom : Rat := (-20/3)

private theorem rank_000000005_mask_35_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_35_badDirection_word = some rank_000000005_mask_35_badDirection_rank := by
  decide

private theorem rank_000000005_mask_35_badDirection_unrank :
    unrankPairWord rank_000000005_mask_35_badDirection_rank = rank_000000005_mask_35_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_35_badDirection_word rank_000000005_mask_35_badDirection_rank).1
    rank_000000005_mask_35_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_35_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_35_badDirection_word rank_000000005_mask_35_badDirection_mask = rank_000000005_mask_35_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_35_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_35_badDirection_rank rank_000000005_mask_35_badDirection_mask = rank_000000005_mask_35_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_35_badDirection_unrank]
  exact rank_000000005_mask_35_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_35_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_35_badDirection_rank rank_000000005_mask_35_badDirection_mask = rank_000000005_mask_35_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_35_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_35_badDirection_b, rank_000000005_mask_35_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_35_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_35_badDirection_rank rank_000000005_mask_35_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_35_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_35_badDirection_seqAtRank, rank_000000005_mask_35_badDirection_bAtRank]
  norm_num [rank_000000005_mask_35_badDirection_denom, rank_000000005_mask_35_badDirection_seq, rank_000000005_mask_35_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_35_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_35_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_35_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_35_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_35_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_35_badDirection_denom]

private def rank_000000005_mask_36_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_36_badDirection_mask : SignMask := ⟨36, by decide⟩
private def rank_000000005_mask_36_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_36_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_36_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (4/3) }
private def rank_000000005_mask_36_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_36_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_36_badDirection_word = some rank_000000005_mask_36_badDirection_rank := by
  decide

private theorem rank_000000005_mask_36_badDirection_unrank :
    unrankPairWord rank_000000005_mask_36_badDirection_rank = rank_000000005_mask_36_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_36_badDirection_word rank_000000005_mask_36_badDirection_rank).1
    rank_000000005_mask_36_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_36_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_36_badDirection_word rank_000000005_mask_36_badDirection_mask = rank_000000005_mask_36_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_36_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_36_badDirection_rank rank_000000005_mask_36_badDirection_mask = rank_000000005_mask_36_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_36_badDirection_unrank]
  exact rank_000000005_mask_36_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_36_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_36_badDirection_rank rank_000000005_mask_36_badDirection_mask = rank_000000005_mask_36_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_36_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_36_badDirection_b, rank_000000005_mask_36_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_36_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_36_badDirection_rank rank_000000005_mask_36_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_36_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_36_badDirection_seqAtRank, rank_000000005_mask_36_badDirection_bAtRank]
  norm_num [rank_000000005_mask_36_badDirection_denom, rank_000000005_mask_36_badDirection_seq, rank_000000005_mask_36_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_36_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_36_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_36_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_36_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_36_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_36_badDirection_denom]

private def rank_000000005_mask_37_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_37_badDirection_mask : SignMask := ⟨37, by decide⟩
private def rank_000000005_mask_37_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_37_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_37_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (4/3) }
private def rank_000000005_mask_37_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_37_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_37_badDirection_word = some rank_000000005_mask_37_badDirection_rank := by
  decide

private theorem rank_000000005_mask_37_badDirection_unrank :
    unrankPairWord rank_000000005_mask_37_badDirection_rank = rank_000000005_mask_37_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_37_badDirection_word rank_000000005_mask_37_badDirection_rank).1
    rank_000000005_mask_37_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_37_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_37_badDirection_word rank_000000005_mask_37_badDirection_mask = rank_000000005_mask_37_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_37_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_37_badDirection_rank rank_000000005_mask_37_badDirection_mask = rank_000000005_mask_37_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_37_badDirection_unrank]
  exact rank_000000005_mask_37_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_37_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_37_badDirection_rank rank_000000005_mask_37_badDirection_mask = rank_000000005_mask_37_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_37_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_37_badDirection_b, rank_000000005_mask_37_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_37_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_37_badDirection_rank rank_000000005_mask_37_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_37_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_37_badDirection_seqAtRank, rank_000000005_mask_37_badDirection_bAtRank]
  norm_num [rank_000000005_mask_37_badDirection_denom, rank_000000005_mask_37_badDirection_seq, rank_000000005_mask_37_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_37_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_37_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_37_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_37_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_37_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_37_badDirection_denom]

private def rank_000000005_mask_38_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_38_badDirection_mask : SignMask := ⟨38, by decide⟩
private def rank_000000005_mask_38_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_38_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_38_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (28/3) }
private def rank_000000005_mask_38_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_38_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_38_badDirection_word = some rank_000000005_mask_38_badDirection_rank := by
  decide

private theorem rank_000000005_mask_38_badDirection_unrank :
    unrankPairWord rank_000000005_mask_38_badDirection_rank = rank_000000005_mask_38_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_38_badDirection_word rank_000000005_mask_38_badDirection_rank).1
    rank_000000005_mask_38_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_38_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_38_badDirection_word rank_000000005_mask_38_badDirection_mask = rank_000000005_mask_38_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_38_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_38_badDirection_rank rank_000000005_mask_38_badDirection_mask = rank_000000005_mask_38_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_38_badDirection_unrank]
  exact rank_000000005_mask_38_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_38_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_38_badDirection_rank rank_000000005_mask_38_badDirection_mask = rank_000000005_mask_38_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_38_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_38_badDirection_b, rank_000000005_mask_38_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_38_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_38_badDirection_rank rank_000000005_mask_38_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_38_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_38_badDirection_seqAtRank, rank_000000005_mask_38_badDirection_bAtRank]
  norm_num [rank_000000005_mask_38_badDirection_denom, rank_000000005_mask_38_badDirection_seq, rank_000000005_mask_38_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_38_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_38_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_38_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_38_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_38_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_38_badDirection_denom]

private def rank_000000005_mask_39_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_39_badDirection_mask : SignMask := ⟨39, by decide⟩
private def rank_000000005_mask_39_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_39_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_39_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (28/3) }
private def rank_000000005_mask_39_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_39_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_39_badDirection_word = some rank_000000005_mask_39_badDirection_rank := by
  decide

private theorem rank_000000005_mask_39_badDirection_unrank :
    unrankPairWord rank_000000005_mask_39_badDirection_rank = rank_000000005_mask_39_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_39_badDirection_word rank_000000005_mask_39_badDirection_rank).1
    rank_000000005_mask_39_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_39_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_39_badDirection_word rank_000000005_mask_39_badDirection_mask = rank_000000005_mask_39_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_39_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_39_badDirection_rank rank_000000005_mask_39_badDirection_mask = rank_000000005_mask_39_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_39_badDirection_unrank]
  exact rank_000000005_mask_39_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_39_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_39_badDirection_rank rank_000000005_mask_39_badDirection_mask = rank_000000005_mask_39_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_39_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_39_badDirection_b, rank_000000005_mask_39_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_39_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_39_badDirection_rank rank_000000005_mask_39_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_39_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_39_badDirection_seqAtRank, rank_000000005_mask_39_badDirection_bAtRank]
  norm_num [rank_000000005_mask_39_badDirection_denom, rank_000000005_mask_39_badDirection_seq, rank_000000005_mask_39_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_39_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_39_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_39_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_39_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_39_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_39_badDirection_denom]

private def rank_000000005_mask_40_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_40_badDirection_mask : SignMask := ⟨40, by decide⟩
private def rank_000000005_mask_40_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_40_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_40_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (-28/3) }
private def rank_000000005_mask_40_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_40_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_40_badDirection_word = some rank_000000005_mask_40_badDirection_rank := by
  decide

private theorem rank_000000005_mask_40_badDirection_unrank :
    unrankPairWord rank_000000005_mask_40_badDirection_rank = rank_000000005_mask_40_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_40_badDirection_word rank_000000005_mask_40_badDirection_rank).1
    rank_000000005_mask_40_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_40_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_40_badDirection_word rank_000000005_mask_40_badDirection_mask = rank_000000005_mask_40_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_40_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_40_badDirection_rank rank_000000005_mask_40_badDirection_mask = rank_000000005_mask_40_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_40_badDirection_unrank]
  exact rank_000000005_mask_40_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_40_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_40_badDirection_rank rank_000000005_mask_40_badDirection_mask = rank_000000005_mask_40_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_40_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_40_badDirection_b, rank_000000005_mask_40_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_40_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_40_badDirection_rank rank_000000005_mask_40_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_40_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_40_badDirection_seqAtRank, rank_000000005_mask_40_badDirection_bAtRank]
  norm_num [rank_000000005_mask_40_badDirection_denom, rank_000000005_mask_40_badDirection_seq, rank_000000005_mask_40_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_40_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_40_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_40_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_40_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_40_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_40_badDirection_denom]

private def rank_000000005_mask_41_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_41_badDirection_mask : SignMask := ⟨41, by decide⟩
private def rank_000000005_mask_41_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_41_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_41_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (-28/3) }
private def rank_000000005_mask_41_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_41_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_41_badDirection_word = some rank_000000005_mask_41_badDirection_rank := by
  decide

private theorem rank_000000005_mask_41_badDirection_unrank :
    unrankPairWord rank_000000005_mask_41_badDirection_rank = rank_000000005_mask_41_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_41_badDirection_word rank_000000005_mask_41_badDirection_rank).1
    rank_000000005_mask_41_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_41_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_41_badDirection_word rank_000000005_mask_41_badDirection_mask = rank_000000005_mask_41_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_41_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_41_badDirection_rank rank_000000005_mask_41_badDirection_mask = rank_000000005_mask_41_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_41_badDirection_unrank]
  exact rank_000000005_mask_41_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_41_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_41_badDirection_rank rank_000000005_mask_41_badDirection_mask = rank_000000005_mask_41_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_41_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_41_badDirection_b, rank_000000005_mask_41_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_41_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_41_badDirection_rank rank_000000005_mask_41_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_41_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_41_badDirection_seqAtRank, rank_000000005_mask_41_badDirection_bAtRank]
  norm_num [rank_000000005_mask_41_badDirection_denom, rank_000000005_mask_41_badDirection_seq, rank_000000005_mask_41_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_41_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_41_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_41_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_41_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_41_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_41_badDirection_denom]

private def rank_000000005_mask_42_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_42_badDirection_mask : SignMask := ⟨42, by decide⟩
private def rank_000000005_mask_42_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_42_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_42_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (-4/3) }
private def rank_000000005_mask_42_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_42_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_42_badDirection_word = some rank_000000005_mask_42_badDirection_rank := by
  decide

private theorem rank_000000005_mask_42_badDirection_unrank :
    unrankPairWord rank_000000005_mask_42_badDirection_rank = rank_000000005_mask_42_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_42_badDirection_word rank_000000005_mask_42_badDirection_rank).1
    rank_000000005_mask_42_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_42_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_42_badDirection_word rank_000000005_mask_42_badDirection_mask = rank_000000005_mask_42_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_42_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_42_badDirection_rank rank_000000005_mask_42_badDirection_mask = rank_000000005_mask_42_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_42_badDirection_unrank]
  exact rank_000000005_mask_42_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_42_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_42_badDirection_rank rank_000000005_mask_42_badDirection_mask = rank_000000005_mask_42_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_42_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_42_badDirection_b, rank_000000005_mask_42_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_42_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_42_badDirection_rank rank_000000005_mask_42_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_42_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_42_badDirection_seqAtRank, rank_000000005_mask_42_badDirection_bAtRank]
  norm_num [rank_000000005_mask_42_badDirection_denom, rank_000000005_mask_42_badDirection_seq, rank_000000005_mask_42_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_42_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_42_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_42_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_42_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_42_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_42_badDirection_denom]

private def rank_000000005_mask_43_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_43_badDirection_mask : SignMask := ⟨43, by decide⟩
private def rank_000000005_mask_43_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_43_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_43_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (-4/3) }
private def rank_000000005_mask_43_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_43_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_43_badDirection_word = some rank_000000005_mask_43_badDirection_rank := by
  decide

private theorem rank_000000005_mask_43_badDirection_unrank :
    unrankPairWord rank_000000005_mask_43_badDirection_rank = rank_000000005_mask_43_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_43_badDirection_word rank_000000005_mask_43_badDirection_rank).1
    rank_000000005_mask_43_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_43_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_43_badDirection_word rank_000000005_mask_43_badDirection_mask = rank_000000005_mask_43_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_43_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_43_badDirection_rank rank_000000005_mask_43_badDirection_mask = rank_000000005_mask_43_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_43_badDirection_unrank]
  exact rank_000000005_mask_43_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_43_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_43_badDirection_rank rank_000000005_mask_43_badDirection_mask = rank_000000005_mask_43_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_43_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_43_badDirection_b, rank_000000005_mask_43_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_43_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_43_badDirection_rank rank_000000005_mask_43_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_43_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_43_badDirection_seqAtRank, rank_000000005_mask_43_badDirection_bAtRank]
  norm_num [rank_000000005_mask_43_badDirection_denom, rank_000000005_mask_43_badDirection_seq, rank_000000005_mask_43_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_43_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_43_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_43_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_43_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_43_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_43_badDirection_denom]

private def rank_000000005_mask_44_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_44_badDirection_mask : SignMask := ⟨44, by decide⟩
private def rank_000000005_mask_44_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_44_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_44_badDirection_b : Vec3 Rat := { x := -4, y := (20/3), z := -4 }
private def rank_000000005_mask_44_badDirection_denom : Rat := (-20/3)

private theorem rank_000000005_mask_44_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_44_badDirection_word = some rank_000000005_mask_44_badDirection_rank := by
  decide

private theorem rank_000000005_mask_44_badDirection_unrank :
    unrankPairWord rank_000000005_mask_44_badDirection_rank = rank_000000005_mask_44_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_44_badDirection_word rank_000000005_mask_44_badDirection_rank).1
    rank_000000005_mask_44_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_44_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_44_badDirection_word rank_000000005_mask_44_badDirection_mask = rank_000000005_mask_44_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_44_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_44_badDirection_rank rank_000000005_mask_44_badDirection_mask = rank_000000005_mask_44_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_44_badDirection_unrank]
  exact rank_000000005_mask_44_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_44_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_44_badDirection_rank rank_000000005_mask_44_badDirection_mask = rank_000000005_mask_44_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_44_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_44_badDirection_b, rank_000000005_mask_44_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_44_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_44_badDirection_rank rank_000000005_mask_44_badDirection_mask ⟨2, by decide⟩ =
      rank_000000005_mask_44_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_44_badDirection_seqAtRank, rank_000000005_mask_44_badDirection_bAtRank]
  norm_num [rank_000000005_mask_44_badDirection_denom, rank_000000005_mask_44_badDirection_seq, rank_000000005_mask_44_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_44_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_44_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_44_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_44_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_44_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_44_badDirection_denom]

private def rank_000000005_mask_46_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_46_badDirection_mask : SignMask := ⟨46, by decide⟩
private def rank_000000005_mask_46_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_46_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000005_mask_46_badDirection_b : Vec3 Rat := { x := -4, y := (20/3), z := 4 }
private def rank_000000005_mask_46_badDirection_denom : Rat := (-20/3)

private theorem rank_000000005_mask_46_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_46_badDirection_word = some rank_000000005_mask_46_badDirection_rank := by
  decide

private theorem rank_000000005_mask_46_badDirection_unrank :
    unrankPairWord rank_000000005_mask_46_badDirection_rank = rank_000000005_mask_46_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_46_badDirection_word rank_000000005_mask_46_badDirection_rank).1
    rank_000000005_mask_46_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_46_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_46_badDirection_word rank_000000005_mask_46_badDirection_mask = rank_000000005_mask_46_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_46_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_46_badDirection_rank rank_000000005_mask_46_badDirection_mask = rank_000000005_mask_46_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_46_badDirection_unrank]
  exact rank_000000005_mask_46_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_46_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_46_badDirection_rank rank_000000005_mask_46_badDirection_mask = rank_000000005_mask_46_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_46_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_46_badDirection_b, rank_000000005_mask_46_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_46_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_46_badDirection_rank rank_000000005_mask_46_badDirection_mask ⟨2, by decide⟩ =
      rank_000000005_mask_46_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_46_badDirection_seqAtRank, rank_000000005_mask_46_badDirection_bAtRank]
  norm_num [rank_000000005_mask_46_badDirection_denom, rank_000000005_mask_46_badDirection_seq, rank_000000005_mask_46_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_46_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_46_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_46_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_46_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_46_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_46_badDirection_denom]

private def rank_000000005_mask_48_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_48_badDirection_mask : SignMask := ⟨48, by decide⟩
private def rank_000000005_mask_48_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_48_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_48_badDirection_b : Vec3 Rat := { x := (4/3), y := (-28/3), z := (4/3) }
private def rank_000000005_mask_48_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_48_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_48_badDirection_word = some rank_000000005_mask_48_badDirection_rank := by
  decide

private theorem rank_000000005_mask_48_badDirection_unrank :
    unrankPairWord rank_000000005_mask_48_badDirection_rank = rank_000000005_mask_48_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_48_badDirection_word rank_000000005_mask_48_badDirection_rank).1
    rank_000000005_mask_48_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_48_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_48_badDirection_word rank_000000005_mask_48_badDirection_mask = rank_000000005_mask_48_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_48_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_48_badDirection_rank rank_000000005_mask_48_badDirection_mask = rank_000000005_mask_48_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_48_badDirection_unrank]
  exact rank_000000005_mask_48_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_48_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_48_badDirection_rank rank_000000005_mask_48_badDirection_mask = rank_000000005_mask_48_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_48_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_48_badDirection_b, rank_000000005_mask_48_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_48_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_48_badDirection_rank rank_000000005_mask_48_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_48_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_48_badDirection_seqAtRank, rank_000000005_mask_48_badDirection_bAtRank]
  norm_num [rank_000000005_mask_48_badDirection_denom, rank_000000005_mask_48_badDirection_seq, rank_000000005_mask_48_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_48_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_48_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_48_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_48_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_48_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_48_badDirection_denom]

private def rank_000000005_mask_49_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_49_badDirection_mask : SignMask := ⟨49, by decide⟩
private def rank_000000005_mask_49_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_49_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_49_badDirection_b : Vec3 Rat := { x := (4/3), y := (-4/3), z := (4/3) }
private def rank_000000005_mask_49_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_49_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_49_badDirection_word = some rank_000000005_mask_49_badDirection_rank := by
  decide

private theorem rank_000000005_mask_49_badDirection_unrank :
    unrankPairWord rank_000000005_mask_49_badDirection_rank = rank_000000005_mask_49_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_49_badDirection_word rank_000000005_mask_49_badDirection_rank).1
    rank_000000005_mask_49_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_49_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_49_badDirection_word rank_000000005_mask_49_badDirection_mask = rank_000000005_mask_49_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_49_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_49_badDirection_rank rank_000000005_mask_49_badDirection_mask = rank_000000005_mask_49_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_49_badDirection_unrank]
  exact rank_000000005_mask_49_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_49_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_49_badDirection_rank rank_000000005_mask_49_badDirection_mask = rank_000000005_mask_49_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_49_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_49_badDirection_b, rank_000000005_mask_49_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_49_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_49_badDirection_rank rank_000000005_mask_49_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_49_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_49_badDirection_seqAtRank, rank_000000005_mask_49_badDirection_bAtRank]
  norm_num [rank_000000005_mask_49_badDirection_denom, rank_000000005_mask_49_badDirection_seq, rank_000000005_mask_49_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_49_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_49_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_49_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_49_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_49_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_49_badDirection_denom]

private def rank_000000005_mask_50_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_50_badDirection_mask : SignMask := ⟨50, by decide⟩
private def rank_000000005_mask_50_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_50_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_50_badDirection_b : Vec3 Rat := { x := (4/3), y := (-28/3), z := (28/3) }
private def rank_000000005_mask_50_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_50_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_50_badDirection_word = some rank_000000005_mask_50_badDirection_rank := by
  decide

private theorem rank_000000005_mask_50_badDirection_unrank :
    unrankPairWord rank_000000005_mask_50_badDirection_rank = rank_000000005_mask_50_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_50_badDirection_word rank_000000005_mask_50_badDirection_rank).1
    rank_000000005_mask_50_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_50_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_50_badDirection_word rank_000000005_mask_50_badDirection_mask = rank_000000005_mask_50_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_50_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_50_badDirection_rank rank_000000005_mask_50_badDirection_mask = rank_000000005_mask_50_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_50_badDirection_unrank]
  exact rank_000000005_mask_50_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_50_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_50_badDirection_rank rank_000000005_mask_50_badDirection_mask = rank_000000005_mask_50_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_50_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_50_badDirection_b, rank_000000005_mask_50_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_50_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_50_badDirection_rank rank_000000005_mask_50_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_50_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_50_badDirection_seqAtRank, rank_000000005_mask_50_badDirection_bAtRank]
  norm_num [rank_000000005_mask_50_badDirection_denom, rank_000000005_mask_50_badDirection_seq, rank_000000005_mask_50_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_50_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_50_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_50_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_50_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_50_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_50_badDirection_denom]

private def rank_000000005_mask_51_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_51_badDirection_mask : SignMask := ⟨51, by decide⟩
private def rank_000000005_mask_51_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_51_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_51_badDirection_b : Vec3 Rat := { x := (4/3), y := (-4/3), z := (28/3) }
private def rank_000000005_mask_51_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_51_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_51_badDirection_word = some rank_000000005_mask_51_badDirection_rank := by
  decide

private theorem rank_000000005_mask_51_badDirection_unrank :
    unrankPairWord rank_000000005_mask_51_badDirection_rank = rank_000000005_mask_51_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_51_badDirection_word rank_000000005_mask_51_badDirection_rank).1
    rank_000000005_mask_51_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_51_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_51_badDirection_word rank_000000005_mask_51_badDirection_mask = rank_000000005_mask_51_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_51_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_51_badDirection_rank rank_000000005_mask_51_badDirection_mask = rank_000000005_mask_51_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_51_badDirection_unrank]
  exact rank_000000005_mask_51_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_51_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_51_badDirection_rank rank_000000005_mask_51_badDirection_mask = rank_000000005_mask_51_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_51_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_51_badDirection_b, rank_000000005_mask_51_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_51_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_51_badDirection_rank rank_000000005_mask_51_badDirection_mask ⟨1, by decide⟩ =
      rank_000000005_mask_51_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_51_badDirection_seqAtRank, rank_000000005_mask_51_badDirection_bAtRank]
  norm_num [rank_000000005_mask_51_badDirection_denom, rank_000000005_mask_51_badDirection_seq, rank_000000005_mask_51_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_51_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_51_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_51_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_51_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_51_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_51_badDirection_denom]

private def rank_000000005_mask_52_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_52_badDirection_mask : SignMask := ⟨52, by decide⟩
private def rank_000000005_mask_52_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_52_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_52_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := (20/3) }
private def rank_000000005_mask_52_badDirection_denom : Rat := (-20/3)

private theorem rank_000000005_mask_52_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_52_badDirection_word = some rank_000000005_mask_52_badDirection_rank := by
  decide

private theorem rank_000000005_mask_52_badDirection_unrank :
    unrankPairWord rank_000000005_mask_52_badDirection_rank = rank_000000005_mask_52_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_52_badDirection_word rank_000000005_mask_52_badDirection_rank).1
    rank_000000005_mask_52_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_52_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_52_badDirection_word rank_000000005_mask_52_badDirection_mask = rank_000000005_mask_52_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_52_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_52_badDirection_rank rank_000000005_mask_52_badDirection_mask = rank_000000005_mask_52_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_52_badDirection_unrank]
  exact rank_000000005_mask_52_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_52_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_52_badDirection_rank rank_000000005_mask_52_badDirection_mask = rank_000000005_mask_52_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_52_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_52_badDirection_b, rank_000000005_mask_52_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_52_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_52_badDirection_rank rank_000000005_mask_52_badDirection_mask ⟨4, by decide⟩ =
      rank_000000005_mask_52_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_52_badDirection_seqAtRank, rank_000000005_mask_52_badDirection_bAtRank]
  norm_num [rank_000000005_mask_52_badDirection_denom, rank_000000005_mask_52_badDirection_seq, rank_000000005_mask_52_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_52_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_52_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_52_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_52_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_52_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_52_badDirection_denom]

private def rank_000000005_mask_53_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_53_badDirection_mask : SignMask := ⟨53, by decide⟩
private def rank_000000005_mask_53_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_53_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_53_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := (20/3) }
private def rank_000000005_mask_53_badDirection_denom : Rat := (-20/3)

private theorem rank_000000005_mask_53_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_53_badDirection_word = some rank_000000005_mask_53_badDirection_rank := by
  decide

private theorem rank_000000005_mask_53_badDirection_unrank :
    unrankPairWord rank_000000005_mask_53_badDirection_rank = rank_000000005_mask_53_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_53_badDirection_word rank_000000005_mask_53_badDirection_rank).1
    rank_000000005_mask_53_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_53_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_53_badDirection_word rank_000000005_mask_53_badDirection_mask = rank_000000005_mask_53_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_53_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_53_badDirection_rank rank_000000005_mask_53_badDirection_mask = rank_000000005_mask_53_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_53_badDirection_unrank]
  exact rank_000000005_mask_53_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_53_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_53_badDirection_rank rank_000000005_mask_53_badDirection_mask = rank_000000005_mask_53_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_53_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_53_badDirection_b, rank_000000005_mask_53_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_53_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_53_badDirection_rank rank_000000005_mask_53_badDirection_mask ⟨4, by decide⟩ =
      rank_000000005_mask_53_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_53_badDirection_seqAtRank, rank_000000005_mask_53_badDirection_bAtRank]
  norm_num [rank_000000005_mask_53_badDirection_denom, rank_000000005_mask_53_badDirection_seq, rank_000000005_mask_53_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_53_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_53_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_53_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_53_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_53_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_53_badDirection_denom]

private def rank_000000005_mask_56_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_56_badDirection_mask : SignMask := ⟨56, by decide⟩
private def rank_000000005_mask_56_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_56_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_56_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := -4 }
private def rank_000000005_mask_56_badDirection_denom : Rat := -12

private theorem rank_000000005_mask_56_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_56_badDirection_word = some rank_000000005_mask_56_badDirection_rank := by
  decide

private theorem rank_000000005_mask_56_badDirection_unrank :
    unrankPairWord rank_000000005_mask_56_badDirection_rank = rank_000000005_mask_56_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_56_badDirection_word rank_000000005_mask_56_badDirection_rank).1
    rank_000000005_mask_56_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_56_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_56_badDirection_word rank_000000005_mask_56_badDirection_mask = rank_000000005_mask_56_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_56_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_56_badDirection_rank rank_000000005_mask_56_badDirection_mask = rank_000000005_mask_56_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_56_badDirection_unrank]
  exact rank_000000005_mask_56_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_56_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_56_badDirection_rank rank_000000005_mask_56_badDirection_mask = rank_000000005_mask_56_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_56_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_56_badDirection_b, rank_000000005_mask_56_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_56_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_56_badDirection_rank rank_000000005_mask_56_badDirection_mask ⟨10, by decide⟩ =
      rank_000000005_mask_56_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_56_badDirection_seqAtRank, rank_000000005_mask_56_badDirection_bAtRank]
  norm_num [rank_000000005_mask_56_badDirection_denom, rank_000000005_mask_56_badDirection_seq, rank_000000005_mask_56_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_56_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_56_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_56_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_56_badDirection_mask)
      (i := ⟨10, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_56_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_56_badDirection_denom]

private def rank_000000005_mask_57_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_57_badDirection_mask : SignMask := ⟨57, by decide⟩
private def rank_000000005_mask_57_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_57_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_57_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := -4 }
private def rank_000000005_mask_57_badDirection_denom : Rat := -4

private theorem rank_000000005_mask_57_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_57_badDirection_word = some rank_000000005_mask_57_badDirection_rank := by
  decide

private theorem rank_000000005_mask_57_badDirection_unrank :
    unrankPairWord rank_000000005_mask_57_badDirection_rank = rank_000000005_mask_57_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_57_badDirection_word rank_000000005_mask_57_badDirection_rank).1
    rank_000000005_mask_57_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_57_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_57_badDirection_word rank_000000005_mask_57_badDirection_mask = rank_000000005_mask_57_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_57_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_57_badDirection_rank rank_000000005_mask_57_badDirection_mask = rank_000000005_mask_57_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_57_badDirection_unrank]
  exact rank_000000005_mask_57_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_57_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_57_badDirection_rank rank_000000005_mask_57_badDirection_mask = rank_000000005_mask_57_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_57_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_57_badDirection_b, rank_000000005_mask_57_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_57_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_57_badDirection_rank rank_000000005_mask_57_badDirection_mask ⟨6, by decide⟩ =
      rank_000000005_mask_57_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_57_badDirection_seqAtRank, rank_000000005_mask_57_badDirection_bAtRank]
  norm_num [rank_000000005_mask_57_badDirection_denom, rank_000000005_mask_57_badDirection_seq, rank_000000005_mask_57_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_57_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_57_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_57_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_57_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_57_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_57_badDirection_denom]

private def rank_000000005_mask_58_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_58_badDirection_mask : SignMask := ⟨58, by decide⟩
private def rank_000000005_mask_58_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_58_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_58_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := 4 }
private def rank_000000005_mask_58_badDirection_denom : Rat := -4

private theorem rank_000000005_mask_58_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_58_badDirection_word = some rank_000000005_mask_58_badDirection_rank := by
  decide

private theorem rank_000000005_mask_58_badDirection_unrank :
    unrankPairWord rank_000000005_mask_58_badDirection_rank = rank_000000005_mask_58_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_58_badDirection_word rank_000000005_mask_58_badDirection_rank).1
    rank_000000005_mask_58_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_58_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_58_badDirection_word rank_000000005_mask_58_badDirection_mask = rank_000000005_mask_58_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_58_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_58_badDirection_rank rank_000000005_mask_58_badDirection_mask = rank_000000005_mask_58_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_58_badDirection_unrank]
  exact rank_000000005_mask_58_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_58_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_58_badDirection_rank rank_000000005_mask_58_badDirection_mask = rank_000000005_mask_58_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_58_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_58_badDirection_b, rank_000000005_mask_58_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_58_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_58_badDirection_rank rank_000000005_mask_58_badDirection_mask ⟨6, by decide⟩ =
      rank_000000005_mask_58_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_58_badDirection_seqAtRank, rank_000000005_mask_58_badDirection_bAtRank]
  norm_num [rank_000000005_mask_58_badDirection_denom, rank_000000005_mask_58_badDirection_seq, rank_000000005_mask_58_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_58_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_58_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_58_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_58_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_58_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_58_badDirection_denom]

private def rank_000000005_mask_59_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_59_badDirection_mask : SignMask := ⟨59, by decide⟩
private def rank_000000005_mask_59_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_59_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_59_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := 4 }
private def rank_000000005_mask_59_badDirection_denom : Rat := -12

private theorem rank_000000005_mask_59_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_59_badDirection_word = some rank_000000005_mask_59_badDirection_rank := by
  decide

private theorem rank_000000005_mask_59_badDirection_unrank :
    unrankPairWord rank_000000005_mask_59_badDirection_rank = rank_000000005_mask_59_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_59_badDirection_word rank_000000005_mask_59_badDirection_rank).1
    rank_000000005_mask_59_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_59_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_59_badDirection_word rank_000000005_mask_59_badDirection_mask = rank_000000005_mask_59_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_59_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_59_badDirection_rank rank_000000005_mask_59_badDirection_mask = rank_000000005_mask_59_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_59_badDirection_unrank]
  exact rank_000000005_mask_59_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_59_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_59_badDirection_rank rank_000000005_mask_59_badDirection_mask = rank_000000005_mask_59_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_59_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_59_badDirection_b, rank_000000005_mask_59_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_59_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_59_badDirection_rank rank_000000005_mask_59_badDirection_mask ⟨6, by decide⟩ =
      rank_000000005_mask_59_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_59_badDirection_seqAtRank, rank_000000005_mask_59_badDirection_bAtRank]
  norm_num [rank_000000005_mask_59_badDirection_denom, rank_000000005_mask_59_badDirection_seq, rank_000000005_mask_59_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_59_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_59_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_59_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_59_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_59_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_59_badDirection_denom]

private def rank_000000005_mask_60_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_60_badDirection_mask : SignMask := ⟨60, by decide⟩
private def rank_000000005_mask_60_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_60_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_60_badDirection_b : Vec3 Rat := { x := (-28/3), y := (4/3), z := (4/3) }
private def rank_000000005_mask_60_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_60_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_60_badDirection_word = some rank_000000005_mask_60_badDirection_rank := by
  decide

private theorem rank_000000005_mask_60_badDirection_unrank :
    unrankPairWord rank_000000005_mask_60_badDirection_rank = rank_000000005_mask_60_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_60_badDirection_word rank_000000005_mask_60_badDirection_rank).1
    rank_000000005_mask_60_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_60_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_60_badDirection_word rank_000000005_mask_60_badDirection_mask = rank_000000005_mask_60_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_60_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_60_badDirection_rank rank_000000005_mask_60_badDirection_mask = rank_000000005_mask_60_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_60_badDirection_unrank]
  exact rank_000000005_mask_60_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_60_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_60_badDirection_rank rank_000000005_mask_60_badDirection_mask = rank_000000005_mask_60_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_60_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_60_badDirection_b, rank_000000005_mask_60_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_60_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_60_badDirection_rank rank_000000005_mask_60_badDirection_mask ⟨2, by decide⟩ =
      rank_000000005_mask_60_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_60_badDirection_seqAtRank, rank_000000005_mask_60_badDirection_bAtRank]
  norm_num [rank_000000005_mask_60_badDirection_denom, rank_000000005_mask_60_badDirection_seq, rank_000000005_mask_60_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_60_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_60_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_60_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_60_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_60_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_60_badDirection_denom]

private def rank_000000005_mask_61_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_61_badDirection_mask : SignMask := ⟨61, by decide⟩
private def rank_000000005_mask_61_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_61_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_61_badDirection_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (4/3) }
private def rank_000000005_mask_61_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_61_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_61_badDirection_word = some rank_000000005_mask_61_badDirection_rank := by
  decide

private theorem rank_000000005_mask_61_badDirection_unrank :
    unrankPairWord rank_000000005_mask_61_badDirection_rank = rank_000000005_mask_61_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_61_badDirection_word rank_000000005_mask_61_badDirection_rank).1
    rank_000000005_mask_61_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_61_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_61_badDirection_word rank_000000005_mask_61_badDirection_mask = rank_000000005_mask_61_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_61_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_61_badDirection_rank rank_000000005_mask_61_badDirection_mask = rank_000000005_mask_61_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_61_badDirection_unrank]
  exact rank_000000005_mask_61_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_61_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_61_badDirection_rank rank_000000005_mask_61_badDirection_mask = rank_000000005_mask_61_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_61_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_61_badDirection_b, rank_000000005_mask_61_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_61_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_61_badDirection_rank rank_000000005_mask_61_badDirection_mask ⟨4, by decide⟩ =
      rank_000000005_mask_61_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_61_badDirection_seqAtRank, rank_000000005_mask_61_badDirection_bAtRank]
  norm_num [rank_000000005_mask_61_badDirection_denom, rank_000000005_mask_61_badDirection_seq, rank_000000005_mask_61_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_61_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_61_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_61_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_61_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_61_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_61_badDirection_denom]

private def rank_000000005_mask_62_badDirection_rank : Fin numPairWords := ⟨5, by decide⟩
private def rank_000000005_mask_62_badDirection_mask : SignMask := ⟨62, by decide⟩
private def rank_000000005_mask_62_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def rank_000000005_mask_62_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000005_mask_62_badDirection_b : Vec3 Rat := { x := (-28/3), y := (4/3), z := (28/3) }
private def rank_000000005_mask_62_badDirection_denom : Rat := (-4/3)

private theorem rank_000000005_mask_62_badDirection_rankWord :
    rankPairWord? rank_000000005_mask_62_badDirection_word = some rank_000000005_mask_62_badDirection_rank := by
  decide

private theorem rank_000000005_mask_62_badDirection_unrank :
    unrankPairWord rank_000000005_mask_62_badDirection_rank = rank_000000005_mask_62_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000005_mask_62_badDirection_word rank_000000005_mask_62_badDirection_rank).1
    rank_000000005_mask_62_badDirection_rankWord |>.symm

private theorem rank_000000005_mask_62_badDirection_seqChoice :
    translationChoiceSeq rank_000000005_mask_62_badDirection_word rank_000000005_mask_62_badDirection_mask = rank_000000005_mask_62_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000005_mask_62_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000005_mask_62_badDirection_rank rank_000000005_mask_62_badDirection_mask = rank_000000005_mask_62_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000005_mask_62_badDirection_unrank]
  exact rank_000000005_mask_62_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_62_badDirection_bAtRank :
    translationBAtRankMask rank_000000005_mask_62_badDirection_rank rank_000000005_mask_62_badDirection_mask = rank_000000005_mask_62_badDirection_b := by
  rw [translationBAtRankMask, rank_000000005_mask_62_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000005_mask_62_badDirection_b, rank_000000005_mask_62_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000005_mask_62_badDirection_denomAtRank :
    impactDenomAtRank rank_000000005_mask_62_badDirection_rank rank_000000005_mask_62_badDirection_mask ⟨2, by decide⟩ =
      rank_000000005_mask_62_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000005_mask_62_badDirection_seqAtRank, rank_000000005_mask_62_badDirection_bAtRank]
  norm_num [rank_000000005_mask_62_badDirection_denom, rank_000000005_mask_62_badDirection_seq, rank_000000005_mask_62_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000005_mask_62_badDirection_notGood
    (hlt : 5 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords)
      rank_000000005_mask_62_badDirection_mask := by
  have hrank :
      (⟨5, hlt⟩ : Fin numPairWords) = rank_000000005_mask_62_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨5, hlt⟩ : Fin numPairWords))
      (mask := rank_000000005_mask_62_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000005_mask_62_badDirection_denomAtRank]
  norm_num [rank_000000005_mask_62_badDirection_denom]

private def case_000042_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000042_mask : SignMask := ⟨8, by decide⟩
private def case_000042_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000042_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000042_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_000042_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000042_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000042_rankWord :
    rankPairWord? case_000042_word = some case_000042_rank := by
  decide

private theorem case_000042_unrank :
    unrankPairWord case_000042_rank = case_000042_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000042_word case_000042_rank).1
    case_000042_rankWord |>.symm

private theorem case_000042_seqChoice :
    translationChoiceSeq case_000042_word case_000042_mask = case_000042_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000042_seqAtRank :
    translationSeqAtRankMask case_000042_rank case_000042_mask = case_000042_seq := by
  rw [translationSeqAtRankMask, case_000042_unrank]
  exact case_000042_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000042_bAtRank :
    translationBAtRankMask case_000042_rank case_000042_mask = case_000042_b := by
  rw [translationBAtRankMask, case_000042_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000042_b, case_000042_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000042_firstLine_eq :
    case_000042_support.firstLine case_000042_seq case_000042_b = case_000042_firstLine := by
  norm_num [case_000042_firstLine, case_000042_support, case_000042_seq, case_000042_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000042_secondLine_eq :
    case_000042_support.secondLine case_000042_seq case_000042_b = case_000042_secondLine := by
  norm_num [case_000042_secondLine, case_000042_support, case_000042_seq, case_000042_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000042_rows :
    EqEqPosVarFirstRows case_000042_support case_000042_rank.val case_000042_mask := by
  intro hlt
  have hrank : (⟨case_000042_rank.val, hlt⟩ : Fin numPairWords) = case_000042_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000042_rank.val, hlt⟩ case_000042_mask =
        case_000042_seq := by
    simpa [hrank] using case_000042_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000042_rank.val, hlt⟩ case_000042_mask =
        case_000042_b := by
    simpa [hrank] using case_000042_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000042_support case_000042_rank.val hlt
          case_000042_mask = case_000042_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000042_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000042_support case_000042_rank.val hlt
          case_000042_mask = case_000042_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000042_secondLine_eq]
  have case_000042_rowFirst :
      EqEqPosRow (FirstLineAt case_000042_support case_000042_rank.val hlt case_000042_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000042_firstLine, EqEqPosRow]
  have case_000042_fixedSecond :
      FixedRow (SecondLineAt case_000042_support case_000042_rank.val hlt case_000042_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000042_secondLine, FixedRow]
  exact ⟨case_000042_rowFirst, case_000042_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000042_sourceMatches :
    fam_000_desc.SourceMatches case_000042_rank.val case_000042_mask := by
  intro hlt
  have hrank :
      (⟨case_000042_rank.val, hlt⟩ : Fin numPairWords) = case_000042_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000042_rank.val, hlt⟩ case_000042_mask =
        case_000042_seq := by
    simpa [hrank] using case_000042_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000042_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000042_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000042_rank.val hlt case_000042_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000042_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000042_applies :
    fam_000_desc.Applies case_000042_rank.val case_000042_mask := by
  exact ⟨
    case_000042_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000042_support] using case_000042_rows
  ⟩

private theorem case_000042_covered :
    BoundedCovered case_000042_rank.val case_000042_mask :=
  BoundedCovered.fam000 case_000042_applies

private def case_000043_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000043_mask : SignMask := ⟨9, by decide⟩
private def case_000043_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000043_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000043_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000043_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000043_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000043_rankWord :
    rankPairWord? case_000043_word = some case_000043_rank := by
  decide

private theorem case_000043_unrank :
    unrankPairWord case_000043_rank = case_000043_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000043_word case_000043_rank).1
    case_000043_rankWord |>.symm

private theorem case_000043_seqChoice :
    translationChoiceSeq case_000043_word case_000043_mask = case_000043_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000043_seqAtRank :
    translationSeqAtRankMask case_000043_rank case_000043_mask = case_000043_seq := by
  rw [translationSeqAtRankMask, case_000043_unrank]
  exact case_000043_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000043_bAtRank :
    translationBAtRankMask case_000043_rank case_000043_mask = case_000043_b := by
  rw [translationBAtRankMask, case_000043_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000043_b, case_000043_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000043_firstLine_eq :
    case_000043_support.firstLine case_000043_seq case_000043_b = case_000043_firstLine := by
  norm_num [case_000043_firstLine, case_000043_support, case_000043_seq, case_000043_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000043_secondLine_eq :
    case_000043_support.secondLine case_000043_seq case_000043_b = case_000043_secondLine := by
  norm_num [case_000043_secondLine, case_000043_support, case_000043_seq, case_000043_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000043_rows :
    EqEqPosVarFirstRows case_000043_support case_000043_rank.val case_000043_mask := by
  intro hlt
  have hrank : (⟨case_000043_rank.val, hlt⟩ : Fin numPairWords) = case_000043_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000043_rank.val, hlt⟩ case_000043_mask =
        case_000043_seq := by
    simpa [hrank] using case_000043_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000043_rank.val, hlt⟩ case_000043_mask =
        case_000043_b := by
    simpa [hrank] using case_000043_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000043_support case_000043_rank.val hlt
          case_000043_mask = case_000043_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000043_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000043_support case_000043_rank.val hlt
          case_000043_mask = case_000043_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000043_secondLine_eq]
  have case_000043_rowFirst :
      EqEqPosRow (FirstLineAt case_000043_support case_000043_rank.val hlt case_000043_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000043_firstLine, EqEqPosRow]
  have case_000043_fixedSecond :
      FixedRow (SecondLineAt case_000043_support case_000043_rank.val hlt case_000043_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000043_secondLine, FixedRow]
  exact ⟨case_000043_rowFirst, case_000043_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000043_sourceMatches :
    fam_000_desc.SourceMatches case_000043_rank.val case_000043_mask := by
  intro hlt
  have hrank :
      (⟨case_000043_rank.val, hlt⟩ : Fin numPairWords) = case_000043_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000043_rank.val, hlt⟩ case_000043_mask =
        case_000043_seq := by
    simpa [hrank] using case_000043_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000043_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000043_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000043_rank.val hlt case_000043_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000043_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000043_applies :
    fam_000_desc.Applies case_000043_rank.val case_000043_mask := by
  exact ⟨
    case_000043_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000043_support] using case_000043_rows
  ⟩

private theorem case_000043_covered :
    BoundedCovered case_000043_rank.val case_000043_mask :=
  BoundedCovered.fam000 case_000043_applies

private def case_000044_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000044_mask : SignMask := ⟨13, by decide⟩
private def case_000044_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000044_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000044_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000044_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000044_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000044_rankWord :
    rankPairWord? case_000044_word = some case_000044_rank := by
  decide

private theorem case_000044_unrank :
    unrankPairWord case_000044_rank = case_000044_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000044_word case_000044_rank).1
    case_000044_rankWord |>.symm

private theorem case_000044_seqChoice :
    translationChoiceSeq case_000044_word case_000044_mask = case_000044_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000044_seqAtRank :
    translationSeqAtRankMask case_000044_rank case_000044_mask = case_000044_seq := by
  rw [translationSeqAtRankMask, case_000044_unrank]
  exact case_000044_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000044_bAtRank :
    translationBAtRankMask case_000044_rank case_000044_mask = case_000044_b := by
  rw [translationBAtRankMask, case_000044_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000044_b, case_000044_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000044_firstLine_eq :
    case_000044_support.firstLine case_000044_seq case_000044_b = case_000044_firstLine := by
  norm_num [case_000044_firstLine, case_000044_support, case_000044_seq, case_000044_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000044_secondLine_eq :
    case_000044_support.secondLine case_000044_seq case_000044_b = case_000044_secondLine := by
  norm_num [case_000044_secondLine, case_000044_support, case_000044_seq, case_000044_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000044_rows :
    EqEqPosVarSecondRows case_000044_support case_000044_rank.val case_000044_mask := by
  intro hlt
  have hrank : (⟨case_000044_rank.val, hlt⟩ : Fin numPairWords) = case_000044_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000044_rank.val, hlt⟩ case_000044_mask =
        case_000044_seq := by
    simpa [hrank] using case_000044_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000044_rank.val, hlt⟩ case_000044_mask =
        case_000044_b := by
    simpa [hrank] using case_000044_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000044_support case_000044_rank.val hlt
          case_000044_mask = case_000044_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000044_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000044_support case_000044_rank.val hlt
          case_000044_mask = case_000044_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000044_secondLine_eq]
  have case_000044_fixedFirst :
      FixedRow (FirstLineAt case_000044_support case_000044_rank.val hlt case_000044_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000044_firstLine, FixedRow]
  have case_000044_rowSecond :
      EqEqPosRow (SecondLineAt case_000044_support case_000044_rank.val hlt case_000044_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000044_secondLine, EqEqPosRow]
  exact ⟨case_000044_fixedFirst, case_000044_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000044_sourceMatches :
    fam_002_desc.SourceMatches case_000044_rank.val case_000044_mask := by
  intro hlt
  have hrank :
      (⟨case_000044_rank.val, hlt⟩ : Fin numPairWords) = case_000044_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000044_rank.val, hlt⟩ case_000044_mask =
        case_000044_seq := by
    simpa [hrank] using case_000044_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000044_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000044_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000044_rank.val hlt case_000044_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000044_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000044_applies :
    fam_002_desc.Applies case_000044_rank.val case_000044_mask := by
  exact ⟨
    case_000044_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000044_support] using case_000044_rows
  ⟩

private theorem case_000044_covered :
    BoundedCovered case_000044_rank.val case_000044_mask :=
  BoundedCovered.fam002 case_000044_applies

private def case_000045_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000045_mask : SignMask := ⟨16, by decide⟩
private def case_000045_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000045_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000045_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000045_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000045_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000045_rankWord :
    rankPairWord? case_000045_word = some case_000045_rank := by
  decide

private theorem case_000045_unrank :
    unrankPairWord case_000045_rank = case_000045_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000045_word case_000045_rank).1
    case_000045_rankWord |>.symm

private theorem case_000045_seqChoice :
    translationChoiceSeq case_000045_word case_000045_mask = case_000045_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000045_seqAtRank :
    translationSeqAtRankMask case_000045_rank case_000045_mask = case_000045_seq := by
  rw [translationSeqAtRankMask, case_000045_unrank]
  exact case_000045_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000045_bAtRank :
    translationBAtRankMask case_000045_rank case_000045_mask = case_000045_b := by
  rw [translationBAtRankMask, case_000045_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000045_b, case_000045_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000045_firstLine_eq :
    case_000045_support.firstLine case_000045_seq case_000045_b = case_000045_firstLine := by
  norm_num [case_000045_firstLine, case_000045_support, case_000045_seq, case_000045_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000045_secondLine_eq :
    case_000045_support.secondLine case_000045_seq case_000045_b = case_000045_secondLine := by
  norm_num [case_000045_secondLine, case_000045_support, case_000045_seq, case_000045_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000045_rows :
    EqEqPosVarFirstRows case_000045_support case_000045_rank.val case_000045_mask := by
  intro hlt
  have hrank : (⟨case_000045_rank.val, hlt⟩ : Fin numPairWords) = case_000045_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000045_rank.val, hlt⟩ case_000045_mask =
        case_000045_seq := by
    simpa [hrank] using case_000045_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000045_rank.val, hlt⟩ case_000045_mask =
        case_000045_b := by
    simpa [hrank] using case_000045_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000045_support case_000045_rank.val hlt
          case_000045_mask = case_000045_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000045_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000045_support case_000045_rank.val hlt
          case_000045_mask = case_000045_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000045_secondLine_eq]
  have case_000045_rowFirst :
      EqEqPosRow (FirstLineAt case_000045_support case_000045_rank.val hlt case_000045_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000045_firstLine, EqEqPosRow]
  have case_000045_fixedSecond :
      FixedRow (SecondLineAt case_000045_support case_000045_rank.val hlt case_000045_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000045_secondLine, FixedRow]
  exact ⟨case_000045_rowFirst, case_000045_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000045_sourceMatches :
    fam_000_desc.SourceMatches case_000045_rank.val case_000045_mask := by
  intro hlt
  have hrank :
      (⟨case_000045_rank.val, hlt⟩ : Fin numPairWords) = case_000045_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000045_rank.val, hlt⟩ case_000045_mask =
        case_000045_seq := by
    simpa [hrank] using case_000045_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000045_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000045_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000045_rank.val hlt case_000045_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000045_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000045_applies :
    fam_000_desc.Applies case_000045_rank.val case_000045_mask := by
  exact ⟨
    case_000045_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000045_support] using case_000045_rows
  ⟩

private theorem case_000045_covered :
    BoundedCovered case_000045_rank.val case_000045_mask :=
  BoundedCovered.fam000 case_000045_applies

private def case_000046_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000046_mask : SignMask := ⟨18, by decide⟩
private def case_000046_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000046_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000046_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000046_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000046_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000046_rankWord :
    rankPairWord? case_000046_word = some case_000046_rank := by
  decide

private theorem case_000046_unrank :
    unrankPairWord case_000046_rank = case_000046_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000046_word case_000046_rank).1
    case_000046_rankWord |>.symm

private theorem case_000046_seqChoice :
    translationChoiceSeq case_000046_word case_000046_mask = case_000046_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000046_seqAtRank :
    translationSeqAtRankMask case_000046_rank case_000046_mask = case_000046_seq := by
  rw [translationSeqAtRankMask, case_000046_unrank]
  exact case_000046_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000046_bAtRank :
    translationBAtRankMask case_000046_rank case_000046_mask = case_000046_b := by
  rw [translationBAtRankMask, case_000046_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000046_b, case_000046_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000046_firstLine_eq :
    case_000046_support.firstLine case_000046_seq case_000046_b = case_000046_firstLine := by
  norm_num [case_000046_firstLine, case_000046_support, case_000046_seq, case_000046_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000046_secondLine_eq :
    case_000046_support.secondLine case_000046_seq case_000046_b = case_000046_secondLine := by
  norm_num [case_000046_secondLine, case_000046_support, case_000046_seq, case_000046_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000046_rows :
    EqEqPosVarFirstRows case_000046_support case_000046_rank.val case_000046_mask := by
  intro hlt
  have hrank : (⟨case_000046_rank.val, hlt⟩ : Fin numPairWords) = case_000046_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000046_rank.val, hlt⟩ case_000046_mask =
        case_000046_seq := by
    simpa [hrank] using case_000046_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000046_rank.val, hlt⟩ case_000046_mask =
        case_000046_b := by
    simpa [hrank] using case_000046_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000046_support case_000046_rank.val hlt
          case_000046_mask = case_000046_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000046_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000046_support case_000046_rank.val hlt
          case_000046_mask = case_000046_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000046_secondLine_eq]
  have case_000046_rowFirst :
      EqEqPosRow (FirstLineAt case_000046_support case_000046_rank.val hlt case_000046_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000046_firstLine, EqEqPosRow]
  have case_000046_fixedSecond :
      FixedRow (SecondLineAt case_000046_support case_000046_rank.val hlt case_000046_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000046_secondLine, FixedRow]
  exact ⟨case_000046_rowFirst, case_000046_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000046_sourceMatches :
    fam_000_desc.SourceMatches case_000046_rank.val case_000046_mask := by
  intro hlt
  have hrank :
      (⟨case_000046_rank.val, hlt⟩ : Fin numPairWords) = case_000046_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000046_rank.val, hlt⟩ case_000046_mask =
        case_000046_seq := by
    simpa [hrank] using case_000046_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000046_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000046_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000046_rank.val hlt case_000046_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000046_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000046_applies :
    fam_000_desc.Applies case_000046_rank.val case_000046_mask := by
  exact ⟨
    case_000046_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000046_support] using case_000046_rows
  ⟩

private theorem case_000046_covered :
    BoundedCovered case_000046_rank.val case_000046_mask :=
  BoundedCovered.fam000 case_000046_applies

private def case_000047_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000047_mask : SignMask := ⟨22, by decide⟩
private def case_000047_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000047_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000047_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000047_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000047_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000047_rankWord :
    rankPairWord? case_000047_word = some case_000047_rank := by
  decide

private theorem case_000047_unrank :
    unrankPairWord case_000047_rank = case_000047_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000047_word case_000047_rank).1
    case_000047_rankWord |>.symm

private theorem case_000047_seqChoice :
    translationChoiceSeq case_000047_word case_000047_mask = case_000047_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000047_seqAtRank :
    translationSeqAtRankMask case_000047_rank case_000047_mask = case_000047_seq := by
  rw [translationSeqAtRankMask, case_000047_unrank]
  exact case_000047_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000047_bAtRank :
    translationBAtRankMask case_000047_rank case_000047_mask = case_000047_b := by
  rw [translationBAtRankMask, case_000047_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000047_b, case_000047_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000047_firstLine_eq :
    case_000047_support.firstLine case_000047_seq case_000047_b = case_000047_firstLine := by
  norm_num [case_000047_firstLine, case_000047_support, case_000047_seq, case_000047_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000047_secondLine_eq :
    case_000047_support.secondLine case_000047_seq case_000047_b = case_000047_secondLine := by
  norm_num [case_000047_secondLine, case_000047_support, case_000047_seq, case_000047_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000047_rows :
    EqEqPosVarFirstRows case_000047_support case_000047_rank.val case_000047_mask := by
  intro hlt
  have hrank : (⟨case_000047_rank.val, hlt⟩ : Fin numPairWords) = case_000047_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000047_rank.val, hlt⟩ case_000047_mask =
        case_000047_seq := by
    simpa [hrank] using case_000047_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000047_rank.val, hlt⟩ case_000047_mask =
        case_000047_b := by
    simpa [hrank] using case_000047_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000047_support case_000047_rank.val hlt
          case_000047_mask = case_000047_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000047_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000047_support case_000047_rank.val hlt
          case_000047_mask = case_000047_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000047_secondLine_eq]
  have case_000047_rowFirst :
      EqEqPosRow (FirstLineAt case_000047_support case_000047_rank.val hlt case_000047_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000047_firstLine, EqEqPosRow]
  have case_000047_fixedSecond :
      FixedRow (SecondLineAt case_000047_support case_000047_rank.val hlt case_000047_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000047_secondLine, FixedRow]
  exact ⟨case_000047_rowFirst, case_000047_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000047_sourceMatches :
    fam_001_desc.SourceMatches case_000047_rank.val case_000047_mask := by
  intro hlt
  have hrank :
      (⟨case_000047_rank.val, hlt⟩ : Fin numPairWords) = case_000047_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000047_rank.val, hlt⟩ case_000047_mask =
        case_000047_seq := by
    simpa [hrank] using case_000047_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000047_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000047_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000047_rank.val hlt case_000047_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000047_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000047_applies :
    fam_001_desc.Applies case_000047_rank.val case_000047_mask := by
  exact ⟨
    case_000047_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000047_support] using case_000047_rows
  ⟩

private theorem case_000047_covered :
    BoundedCovered case_000047_rank.val case_000047_mask :=
  BoundedCovered.fam001 case_000047_applies

private def case_000048_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000048_mask : SignMask := ⟨24, by decide⟩
private def case_000048_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000048_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000048_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000048_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000048_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000048_rankWord :
    rankPairWord? case_000048_word = some case_000048_rank := by
  decide

private theorem case_000048_unrank :
    unrankPairWord case_000048_rank = case_000048_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000048_word case_000048_rank).1
    case_000048_rankWord |>.symm

private theorem case_000048_seqChoice :
    translationChoiceSeq case_000048_word case_000048_mask = case_000048_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000048_seqAtRank :
    translationSeqAtRankMask case_000048_rank case_000048_mask = case_000048_seq := by
  rw [translationSeqAtRankMask, case_000048_unrank]
  exact case_000048_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000048_bAtRank :
    translationBAtRankMask case_000048_rank case_000048_mask = case_000048_b := by
  rw [translationBAtRankMask, case_000048_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000048_b, case_000048_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000048_firstLine_eq :
    case_000048_support.firstLine case_000048_seq case_000048_b = case_000048_firstLine := by
  norm_num [case_000048_firstLine, case_000048_support, case_000048_seq, case_000048_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000048_secondLine_eq :
    case_000048_support.secondLine case_000048_seq case_000048_b = case_000048_secondLine := by
  norm_num [case_000048_secondLine, case_000048_support, case_000048_seq, case_000048_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000048_rows :
    EqEqPosVarFirstRows case_000048_support case_000048_rank.val case_000048_mask := by
  intro hlt
  have hrank : (⟨case_000048_rank.val, hlt⟩ : Fin numPairWords) = case_000048_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000048_rank.val, hlt⟩ case_000048_mask =
        case_000048_seq := by
    simpa [hrank] using case_000048_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000048_rank.val, hlt⟩ case_000048_mask =
        case_000048_b := by
    simpa [hrank] using case_000048_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000048_support case_000048_rank.val hlt
          case_000048_mask = case_000048_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000048_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000048_support case_000048_rank.val hlt
          case_000048_mask = case_000048_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000048_secondLine_eq]
  have case_000048_rowFirst :
      EqEqPosRow (FirstLineAt case_000048_support case_000048_rank.val hlt case_000048_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000048_firstLine, EqEqPosRow]
  have case_000048_fixedSecond :
      FixedRow (SecondLineAt case_000048_support case_000048_rank.val hlt case_000048_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000048_secondLine, FixedRow]
  exact ⟨case_000048_rowFirst, case_000048_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000048_sourceMatches :
    fam_000_desc.SourceMatches case_000048_rank.val case_000048_mask := by
  intro hlt
  have hrank :
      (⟨case_000048_rank.val, hlt⟩ : Fin numPairWords) = case_000048_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000048_rank.val, hlt⟩ case_000048_mask =
        case_000048_seq := by
    simpa [hrank] using case_000048_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000048_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000048_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000048_rank.val hlt case_000048_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000048_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000048_applies :
    fam_000_desc.Applies case_000048_rank.val case_000048_mask := by
  exact ⟨
    case_000048_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000048_support] using case_000048_rows
  ⟩

private theorem case_000048_covered :
    BoundedCovered case_000048_rank.val case_000048_mask :=
  BoundedCovered.fam000 case_000048_applies

private def case_000049_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000049_mask : SignMask := ⟨28, by decide⟩
private def case_000049_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000049_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000049_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000049_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000049_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000049_rankWord :
    rankPairWord? case_000049_word = some case_000049_rank := by
  decide

private theorem case_000049_unrank :
    unrankPairWord case_000049_rank = case_000049_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000049_word case_000049_rank).1
    case_000049_rankWord |>.symm

private theorem case_000049_seqChoice :
    translationChoiceSeq case_000049_word case_000049_mask = case_000049_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000049_seqAtRank :
    translationSeqAtRankMask case_000049_rank case_000049_mask = case_000049_seq := by
  rw [translationSeqAtRankMask, case_000049_unrank]
  exact case_000049_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000049_bAtRank :
    translationBAtRankMask case_000049_rank case_000049_mask = case_000049_b := by
  rw [translationBAtRankMask, case_000049_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000049_b, case_000049_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000049_firstLine_eq :
    case_000049_support.firstLine case_000049_seq case_000049_b = case_000049_firstLine := by
  norm_num [case_000049_firstLine, case_000049_support, case_000049_seq, case_000049_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000049_secondLine_eq :
    case_000049_support.secondLine case_000049_seq case_000049_b = case_000049_secondLine := by
  norm_num [case_000049_secondLine, case_000049_support, case_000049_seq, case_000049_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000049_rows :
    OppOneMinusVarFirstRows case_000049_support case_000049_rank.val case_000049_mask := by
  intro hlt
  have hrank : (⟨case_000049_rank.val, hlt⟩ : Fin numPairWords) = case_000049_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000049_rank.val, hlt⟩ case_000049_mask =
        case_000049_seq := by
    simpa [hrank] using case_000049_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000049_rank.val, hlt⟩ case_000049_mask =
        case_000049_b := by
    simpa [hrank] using case_000049_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000049_support case_000049_rank.val hlt
          case_000049_mask = case_000049_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000049_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000049_support case_000049_rank.val hlt
          case_000049_mask = case_000049_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000049_secondLine_eq]
  have case_000049_rowFirst :
      OppPosRow (FirstLineAt case_000049_support case_000049_rank.val hlt case_000049_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000049_firstLine, OppPosRow]
  have case_000049_fixedSecond :
      FixedRow (SecondLineAt case_000049_support case_000049_rank.val hlt case_000049_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000049_secondLine, FixedRow]
  exact ⟨case_000049_rowFirst, case_000049_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000049_sourceMatches :
    fam_004_desc.SourceMatches case_000049_rank.val case_000049_mask := by
  intro hlt
  have hrank :
      (⟨case_000049_rank.val, hlt⟩ : Fin numPairWords) = case_000049_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000049_rank.val, hlt⟩ case_000049_mask =
        case_000049_seq := by
    simpa [hrank] using case_000049_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000049_seq)
          fam_004_desc.firstIndex = some fam_004_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000049_seq)
          fam_004_desc.secondIndex = some fam_004_support.second := by
    decide
  have hchecks :
      SourceChecks fam_004_support case_000049_rank.val hlt case_000049_mask := by
    simp [SourceChecks, hseq, fam_004_support,
      checkTranslationConstraintSource, case_000049_seq, impactFace]
  exact ⟨
    by simpa [fam_004_desc, hseq] using hfirstIndex,
    by simpa [fam_004_desc, hseq] using hsecondIndex,
    by simpa [fam_004_desc] using hchecks
  ⟩

private theorem case_000049_applies :
    fam_004_desc.Applies case_000049_rank.val case_000049_mask := by
  exact ⟨
    case_000049_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_004_desc, fam_004_support, case_000049_support] using case_000049_rows
  ⟩

private theorem case_000049_covered :
    BoundedCovered case_000049_rank.val case_000049_mask :=
  BoundedCovered.fam004 case_000049_applies

private def case_000050_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000050_mask : SignMask := ⟨29, by decide⟩
private def case_000050_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000050_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000050_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000050_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000050_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_000050_rankWord :
    rankPairWord? case_000050_word = some case_000050_rank := by
  decide

private theorem case_000050_unrank :
    unrankPairWord case_000050_rank = case_000050_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000050_word case_000050_rank).1
    case_000050_rankWord |>.symm

private theorem case_000050_seqChoice :
    translationChoiceSeq case_000050_word case_000050_mask = case_000050_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000050_seqAtRank :
    translationSeqAtRankMask case_000050_rank case_000050_mask = case_000050_seq := by
  rw [translationSeqAtRankMask, case_000050_unrank]
  exact case_000050_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000050_bAtRank :
    translationBAtRankMask case_000050_rank case_000050_mask = case_000050_b := by
  rw [translationBAtRankMask, case_000050_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000050_b, case_000050_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000050_firstLine_eq :
    case_000050_support.firstLine case_000050_seq case_000050_b = case_000050_firstLine := by
  norm_num [case_000050_firstLine, case_000050_support, case_000050_seq, case_000050_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000050_secondLine_eq :
    case_000050_support.secondLine case_000050_seq case_000050_b = case_000050_secondLine := by
  norm_num [case_000050_secondLine, case_000050_support, case_000050_seq, case_000050_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000050_rows :
    EqEqPosVarSecondRows case_000050_support case_000050_rank.val case_000050_mask := by
  intro hlt
  have hrank : (⟨case_000050_rank.val, hlt⟩ : Fin numPairWords) = case_000050_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000050_rank.val, hlt⟩ case_000050_mask =
        case_000050_seq := by
    simpa [hrank] using case_000050_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000050_rank.val, hlt⟩ case_000050_mask =
        case_000050_b := by
    simpa [hrank] using case_000050_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000050_support case_000050_rank.val hlt
          case_000050_mask = case_000050_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000050_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000050_support case_000050_rank.val hlt
          case_000050_mask = case_000050_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000050_secondLine_eq]
  have case_000050_fixedFirst :
      FixedRow (FirstLineAt case_000050_support case_000050_rank.val hlt case_000050_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000050_firstLine, FixedRow]
  have case_000050_rowSecond :
      EqEqPosRow (SecondLineAt case_000050_support case_000050_rank.val hlt case_000050_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000050_secondLine, EqEqPosRow]
  exact ⟨case_000050_fixedFirst, case_000050_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000050_sourceMatches :
    fam_002_desc.SourceMatches case_000050_rank.val case_000050_mask := by
  intro hlt
  have hrank :
      (⟨case_000050_rank.val, hlt⟩ : Fin numPairWords) = case_000050_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000050_rank.val, hlt⟩ case_000050_mask =
        case_000050_seq := by
    simpa [hrank] using case_000050_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000050_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000050_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000050_rank.val hlt case_000050_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000050_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000050_applies :
    fam_002_desc.Applies case_000050_rank.val case_000050_mask := by
  exact ⟨
    case_000050_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000050_support] using case_000050_rows
  ⟩

private theorem case_000050_covered :
    BoundedCovered case_000050_rank.val case_000050_mask :=
  BoundedCovered.fam002 case_000050_applies

private def case_000051_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000051_mask : SignMask := ⟨30, by decide⟩
private def case_000051_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000051_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000051_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000051_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000051_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000051_rankWord :
    rankPairWord? case_000051_word = some case_000051_rank := by
  decide

private theorem case_000051_unrank :
    unrankPairWord case_000051_rank = case_000051_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000051_word case_000051_rank).1
    case_000051_rankWord |>.symm

private theorem case_000051_seqChoice :
    translationChoiceSeq case_000051_word case_000051_mask = case_000051_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000051_seqAtRank :
    translationSeqAtRankMask case_000051_rank case_000051_mask = case_000051_seq := by
  rw [translationSeqAtRankMask, case_000051_unrank]
  exact case_000051_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000051_bAtRank :
    translationBAtRankMask case_000051_rank case_000051_mask = case_000051_b := by
  rw [translationBAtRankMask, case_000051_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000051_b, case_000051_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000051_firstLine_eq :
    case_000051_support.firstLine case_000051_seq case_000051_b = case_000051_firstLine := by
  norm_num [case_000051_firstLine, case_000051_support, case_000051_seq, case_000051_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000051_secondLine_eq :
    case_000051_support.secondLine case_000051_seq case_000051_b = case_000051_secondLine := by
  norm_num [case_000051_secondLine, case_000051_support, case_000051_seq, case_000051_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000051_rows :
    EqEqPosVarFirstRows case_000051_support case_000051_rank.val case_000051_mask := by
  intro hlt
  have hrank : (⟨case_000051_rank.val, hlt⟩ : Fin numPairWords) = case_000051_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000051_rank.val, hlt⟩ case_000051_mask =
        case_000051_seq := by
    simpa [hrank] using case_000051_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000051_rank.val, hlt⟩ case_000051_mask =
        case_000051_b := by
    simpa [hrank] using case_000051_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000051_support case_000051_rank.val hlt
          case_000051_mask = case_000051_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000051_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000051_support case_000051_rank.val hlt
          case_000051_mask = case_000051_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000051_secondLine_eq]
  have case_000051_rowFirst :
      EqEqPosRow (FirstLineAt case_000051_support case_000051_rank.val hlt case_000051_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000051_firstLine, EqEqPosRow]
  have case_000051_fixedSecond :
      FixedRow (SecondLineAt case_000051_support case_000051_rank.val hlt case_000051_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000051_secondLine, FixedRow]
  exact ⟨case_000051_rowFirst, case_000051_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000051_sourceMatches :
    fam_001_desc.SourceMatches case_000051_rank.val case_000051_mask := by
  intro hlt
  have hrank :
      (⟨case_000051_rank.val, hlt⟩ : Fin numPairWords) = case_000051_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000051_rank.val, hlt⟩ case_000051_mask =
        case_000051_seq := by
    simpa [hrank] using case_000051_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000051_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000051_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000051_rank.val hlt case_000051_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000051_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000051_applies :
    fam_001_desc.Applies case_000051_rank.val case_000051_mask := by
  exact ⟨
    case_000051_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000051_support] using case_000051_rows
  ⟩

private theorem case_000051_covered :
    BoundedCovered case_000051_rank.val case_000051_mask :=
  BoundedCovered.fam001 case_000051_applies

private def case_000052_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000052_mask : SignMask := ⟨31, by decide⟩
private def case_000052_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000052_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000052_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_000052_firstLine : StrictLin2 := { a := (-11/17), b := (-11/17), c := (-75/17) }
private def case_000052_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000052_rankWord :
    rankPairWord? case_000052_word = some case_000052_rank := by
  decide

private theorem case_000052_unrank :
    unrankPairWord case_000052_rank = case_000052_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000052_word case_000052_rank).1
    case_000052_rankWord |>.symm

private theorem case_000052_seqChoice :
    translationChoiceSeq case_000052_word case_000052_mask = case_000052_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000052_seqAtRank :
    translationSeqAtRankMask case_000052_rank case_000052_mask = case_000052_seq := by
  rw [translationSeqAtRankMask, case_000052_unrank]
  exact case_000052_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000052_bAtRank :
    translationBAtRankMask case_000052_rank case_000052_mask = case_000052_b := by
  rw [translationBAtRankMask, case_000052_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000052_b, case_000052_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000052_firstLine_eq :
    case_000052_support.firstLine case_000052_seq case_000052_b = case_000052_firstLine := by
  norm_num [case_000052_firstLine, case_000052_support, case_000052_seq, case_000052_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000052_secondLine_eq :
    case_000052_support.secondLine case_000052_seq case_000052_b = case_000052_secondLine := by
  norm_num [case_000052_secondLine, case_000052_support, case_000052_seq, case_000052_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000052_rows :
    EqEqPosVarFirstRows case_000052_support case_000052_rank.val case_000052_mask := by
  intro hlt
  have hrank : (⟨case_000052_rank.val, hlt⟩ : Fin numPairWords) = case_000052_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000052_rank.val, hlt⟩ case_000052_mask =
        case_000052_seq := by
    simpa [hrank] using case_000052_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000052_rank.val, hlt⟩ case_000052_mask =
        case_000052_b := by
    simpa [hrank] using case_000052_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000052_support case_000052_rank.val hlt
          case_000052_mask = case_000052_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000052_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000052_support case_000052_rank.val hlt
          case_000052_mask = case_000052_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000052_secondLine_eq]
  have case_000052_rowFirst :
      EqEqPosRow (FirstLineAt case_000052_support case_000052_rank.val hlt case_000052_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000052_firstLine, EqEqPosRow]
  have case_000052_fixedSecond :
      FixedRow (SecondLineAt case_000052_support case_000052_rank.val hlt case_000052_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000052_secondLine, FixedRow]
  exact ⟨case_000052_rowFirst, case_000052_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000052_sourceMatches :
    fam_001_desc.SourceMatches case_000052_rank.val case_000052_mask := by
  intro hlt
  have hrank :
      (⟨case_000052_rank.val, hlt⟩ : Fin numPairWords) = case_000052_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000052_rank.val, hlt⟩ case_000052_mask =
        case_000052_seq := by
    simpa [hrank] using case_000052_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000052_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000052_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000052_rank.val hlt case_000052_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000052_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000052_applies :
    fam_001_desc.Applies case_000052_rank.val case_000052_mask := by
  exact ⟨
    case_000052_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000052_support] using case_000052_rows
  ⟩

private theorem case_000052_covered :
    BoundedCovered case_000052_rank.val case_000052_mask :=
  BoundedCovered.fam001 case_000052_applies

private def case_000053_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000053_mask : SignMask := ⟨45, by decide⟩
private def case_000053_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000053_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000053_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000053_firstLine : StrictLin2 := { a := 1, b := -1, c := (-25/3) }
private def case_000053_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000053_rankWord :
    rankPairWord? case_000053_word = some case_000053_rank := by
  decide

private theorem case_000053_unrank :
    unrankPairWord case_000053_rank = case_000053_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000053_word case_000053_rank).1
    case_000053_rankWord |>.symm

private theorem case_000053_seqChoice :
    translationChoiceSeq case_000053_word case_000053_mask = case_000053_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000053_seqAtRank :
    translationSeqAtRankMask case_000053_rank case_000053_mask = case_000053_seq := by
  rw [translationSeqAtRankMask, case_000053_unrank]
  exact case_000053_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000053_bAtRank :
    translationBAtRankMask case_000053_rank case_000053_mask = case_000053_b := by
  rw [translationBAtRankMask, case_000053_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000053_b, case_000053_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000053_firstLine_eq :
    case_000053_support.firstLine case_000053_seq case_000053_b = case_000053_firstLine := by
  norm_num [case_000053_firstLine, case_000053_support, case_000053_seq, case_000053_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000053_secondLine_eq :
    case_000053_support.secondLine case_000053_seq case_000053_b = case_000053_secondLine := by
  norm_num [case_000053_secondLine, case_000053_support, case_000053_seq, case_000053_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000053_rows :
    OppMinusOneVarFirstRows case_000053_support case_000053_rank.val case_000053_mask := by
  intro hlt
  have hrank : (⟨case_000053_rank.val, hlt⟩ : Fin numPairWords) = case_000053_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000053_rank.val, hlt⟩ case_000053_mask =
        case_000053_seq := by
    simpa [hrank] using case_000053_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000053_rank.val, hlt⟩ case_000053_mask =
        case_000053_b := by
    simpa [hrank] using case_000053_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000053_support case_000053_rank.val hlt
          case_000053_mask = case_000053_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000053_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000053_support case_000053_rank.val hlt
          case_000053_mask = case_000053_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000053_secondLine_eq]
  have case_000053_rowFirst :
      OppNegRow (FirstLineAt case_000053_support case_000053_rank.val hlt case_000053_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000053_firstLine, OppNegRow]
  have case_000053_fixedSecond :
      FixedRow (SecondLineAt case_000053_support case_000053_rank.val hlt case_000053_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000053_secondLine, FixedRow]
  exact ⟨case_000053_rowFirst, case_000053_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000053_sourceMatches :
    fam_005_desc.SourceMatches case_000053_rank.val case_000053_mask := by
  intro hlt
  have hrank :
      (⟨case_000053_rank.val, hlt⟩ : Fin numPairWords) = case_000053_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000053_rank.val, hlt⟩ case_000053_mask =
        case_000053_seq := by
    simpa [hrank] using case_000053_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000053_seq)
          fam_005_desc.firstIndex = some fam_005_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000053_seq)
          fam_005_desc.secondIndex = some fam_005_support.second := by
    decide
  have hchecks :
      SourceChecks fam_005_support case_000053_rank.val hlt case_000053_mask := by
    simp [SourceChecks, hseq, fam_005_support,
      checkTranslationConstraintSource, case_000053_seq, impactFace]
  exact ⟨
    by simpa [fam_005_desc, hseq] using hfirstIndex,
    by simpa [fam_005_desc, hseq] using hsecondIndex,
    by simpa [fam_005_desc] using hchecks
  ⟩

private theorem case_000053_applies :
    fam_005_desc.Applies case_000053_rank.val case_000053_mask := by
  exact ⟨
    case_000053_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_005_desc, fam_005_support, case_000053_support] using case_000053_rows
  ⟩

private theorem case_000053_covered :
    BoundedCovered case_000053_rank.val case_000053_mask :=
  BoundedCovered.fam005 case_000053_applies

private def case_000054_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000054_mask : SignMask := ⟨47, by decide⟩
private def case_000054_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000054_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmp
private def case_000054_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_000054_firstLine : StrictLin2 := { a := 1, b := -1, c := (-13/3) }
private def case_000054_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000054_rankWord :
    rankPairWord? case_000054_word = some case_000054_rank := by
  decide

private theorem case_000054_unrank :
    unrankPairWord case_000054_rank = case_000054_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000054_word case_000054_rank).1
    case_000054_rankWord |>.symm

private theorem case_000054_seqChoice :
    translationChoiceSeq case_000054_word case_000054_mask = case_000054_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000054_seqAtRank :
    translationSeqAtRankMask case_000054_rank case_000054_mask = case_000054_seq := by
  rw [translationSeqAtRankMask, case_000054_unrank]
  exact case_000054_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000054_bAtRank :
    translationBAtRankMask case_000054_rank case_000054_mask = case_000054_b := by
  rw [translationBAtRankMask, case_000054_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000054_b, case_000054_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000054_firstLine_eq :
    case_000054_support.firstLine case_000054_seq case_000054_b = case_000054_firstLine := by
  norm_num [case_000054_firstLine, case_000054_support, case_000054_seq, case_000054_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000054_secondLine_eq :
    case_000054_support.secondLine case_000054_seq case_000054_b = case_000054_secondLine := by
  norm_num [case_000054_secondLine, case_000054_support, case_000054_seq, case_000054_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000054_rows :
    OppMinusOneVarFirstRows case_000054_support case_000054_rank.val case_000054_mask := by
  intro hlt
  have hrank : (⟨case_000054_rank.val, hlt⟩ : Fin numPairWords) = case_000054_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000054_rank.val, hlt⟩ case_000054_mask =
        case_000054_seq := by
    simpa [hrank] using case_000054_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000054_rank.val, hlt⟩ case_000054_mask =
        case_000054_b := by
    simpa [hrank] using case_000054_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000054_support case_000054_rank.val hlt
          case_000054_mask = case_000054_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000054_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000054_support case_000054_rank.val hlt
          case_000054_mask = case_000054_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000054_secondLine_eq]
  have case_000054_rowFirst :
      OppNegRow (FirstLineAt case_000054_support case_000054_rank.val hlt case_000054_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000054_firstLine, OppNegRow]
  have case_000054_fixedSecond :
      FixedRow (SecondLineAt case_000054_support case_000054_rank.val hlt case_000054_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000054_secondLine, FixedRow]
  exact ⟨case_000054_rowFirst, case_000054_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000054_sourceMatches :
    fam_005_desc.SourceMatches case_000054_rank.val case_000054_mask := by
  intro hlt
  have hrank :
      (⟨case_000054_rank.val, hlt⟩ : Fin numPairWords) = case_000054_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000054_rank.val, hlt⟩ case_000054_mask =
        case_000054_seq := by
    simpa [hrank] using case_000054_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000054_seq)
          fam_005_desc.firstIndex = some fam_005_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000054_seq)
          fam_005_desc.secondIndex = some fam_005_support.second := by
    decide
  have hchecks :
      SourceChecks fam_005_support case_000054_rank.val hlt case_000054_mask := by
    simp [SourceChecks, hseq, fam_005_support,
      checkTranslationConstraintSource, case_000054_seq, impactFace]
  exact ⟨
    by simpa [fam_005_desc, hseq] using hfirstIndex,
    by simpa [fam_005_desc, hseq] using hsecondIndex,
    by simpa [fam_005_desc] using hchecks
  ⟩

private theorem case_000054_applies :
    fam_005_desc.Applies case_000054_rank.val case_000054_mask := by
  exact ⟨
    case_000054_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_005_desc, fam_005_support, case_000054_support] using case_000054_rows
  ⟩

private theorem case_000054_covered :
    BoundedCovered case_000054_rank.val case_000054_mask :=
  BoundedCovered.fam005 case_000054_applies

private def case_000055_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000055_mask : SignMask := ⟨54, by decide⟩
private def case_000055_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000055_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000055_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000055_firstLine : StrictLin2 := { a := (-3/5), b := (-3/5), c := (-11/3) }
private def case_000055_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000055_rankWord :
    rankPairWord? case_000055_word = some case_000055_rank := by
  decide

private theorem case_000055_unrank :
    unrankPairWord case_000055_rank = case_000055_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000055_word case_000055_rank).1
    case_000055_rankWord |>.symm

private theorem case_000055_seqChoice :
    translationChoiceSeq case_000055_word case_000055_mask = case_000055_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000055_seqAtRank :
    translationSeqAtRankMask case_000055_rank case_000055_mask = case_000055_seq := by
  rw [translationSeqAtRankMask, case_000055_unrank]
  exact case_000055_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000055_bAtRank :
    translationBAtRankMask case_000055_rank case_000055_mask = case_000055_b := by
  rw [translationBAtRankMask, case_000055_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000055_b, case_000055_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000055_firstLine_eq :
    case_000055_support.firstLine case_000055_seq case_000055_b = case_000055_firstLine := by
  norm_num [case_000055_firstLine, case_000055_support, case_000055_seq, case_000055_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000055_secondLine_eq :
    case_000055_support.secondLine case_000055_seq case_000055_b = case_000055_secondLine := by
  norm_num [case_000055_secondLine, case_000055_support, case_000055_seq, case_000055_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000055_rows :
    EqEqPosVarFirstRows case_000055_support case_000055_rank.val case_000055_mask := by
  intro hlt
  have hrank : (⟨case_000055_rank.val, hlt⟩ : Fin numPairWords) = case_000055_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000055_rank.val, hlt⟩ case_000055_mask =
        case_000055_seq := by
    simpa [hrank] using case_000055_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000055_rank.val, hlt⟩ case_000055_mask =
        case_000055_b := by
    simpa [hrank] using case_000055_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000055_support case_000055_rank.val hlt
          case_000055_mask = case_000055_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000055_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000055_support case_000055_rank.val hlt
          case_000055_mask = case_000055_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000055_secondLine_eq]
  have case_000055_rowFirst :
      EqEqPosRow (FirstLineAt case_000055_support case_000055_rank.val hlt case_000055_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000055_firstLine, EqEqPosRow]
  have case_000055_fixedSecond :
      FixedRow (SecondLineAt case_000055_support case_000055_rank.val hlt case_000055_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000055_secondLine, FixedRow]
  exact ⟨case_000055_rowFirst, case_000055_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000055_sourceMatches :
    fam_011_desc.SourceMatches case_000055_rank.val case_000055_mask := by
  intro hlt
  have hrank :
      (⟨case_000055_rank.val, hlt⟩ : Fin numPairWords) = case_000055_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000055_rank.val, hlt⟩ case_000055_mask =
        case_000055_seq := by
    simpa [hrank] using case_000055_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000055_seq)
          fam_011_desc.firstIndex = some fam_011_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000055_seq)
          fam_011_desc.secondIndex = some fam_011_support.second := by
    decide
  have hchecks :
      SourceChecks fam_011_support case_000055_rank.val hlt case_000055_mask := by
    simp [SourceChecks, hseq, fam_011_support,
      checkTranslationConstraintSource, case_000055_seq, impactFace]
  exact ⟨
    by simpa [fam_011_desc, hseq] using hfirstIndex,
    by simpa [fam_011_desc, hseq] using hsecondIndex,
    by simpa [fam_011_desc] using hchecks
  ⟩

private theorem case_000055_applies :
    fam_011_desc.Applies case_000055_rank.val case_000055_mask := by
  exact ⟨
    case_000055_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_011_desc, fam_011_support, case_000055_support] using case_000055_rows
  ⟩

private theorem case_000055_covered :
    BoundedCovered case_000055_rank.val case_000055_mask :=
  BoundedCovered.fam011 case_000055_applies

private def case_000056_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000056_mask : SignMask := ⟨55, by decide⟩
private def case_000056_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000056_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000056_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_000056_firstLine : StrictLin2 := { a := (-6/11), b := (-6/11), c := (-8/11) }
private def case_000056_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000056_rankWord :
    rankPairWord? case_000056_word = some case_000056_rank := by
  decide

private theorem case_000056_unrank :
    unrankPairWord case_000056_rank = case_000056_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000056_word case_000056_rank).1
    case_000056_rankWord |>.symm

private theorem case_000056_seqChoice :
    translationChoiceSeq case_000056_word case_000056_mask = case_000056_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000056_seqAtRank :
    translationSeqAtRankMask case_000056_rank case_000056_mask = case_000056_seq := by
  rw [translationSeqAtRankMask, case_000056_unrank]
  exact case_000056_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000056_bAtRank :
    translationBAtRankMask case_000056_rank case_000056_mask = case_000056_b := by
  rw [translationBAtRankMask, case_000056_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000056_b, case_000056_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000056_firstLine_eq :
    case_000056_support.firstLine case_000056_seq case_000056_b = case_000056_firstLine := by
  norm_num [case_000056_firstLine, case_000056_support, case_000056_seq, case_000056_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000056_secondLine_eq :
    case_000056_support.secondLine case_000056_seq case_000056_b = case_000056_secondLine := by
  norm_num [case_000056_secondLine, case_000056_support, case_000056_seq, case_000056_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000056_rows :
    EqEqPosVarFirstRows case_000056_support case_000056_rank.val case_000056_mask := by
  intro hlt
  have hrank : (⟨case_000056_rank.val, hlt⟩ : Fin numPairWords) = case_000056_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000056_rank.val, hlt⟩ case_000056_mask =
        case_000056_seq := by
    simpa [hrank] using case_000056_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000056_rank.val, hlt⟩ case_000056_mask =
        case_000056_b := by
    simpa [hrank] using case_000056_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000056_support case_000056_rank.val hlt
          case_000056_mask = case_000056_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000056_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000056_support case_000056_rank.val hlt
          case_000056_mask = case_000056_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000056_secondLine_eq]
  have case_000056_rowFirst :
      EqEqPosRow (FirstLineAt case_000056_support case_000056_rank.val hlt case_000056_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000056_firstLine, EqEqPosRow]
  have case_000056_fixedSecond :
      FixedRow (SecondLineAt case_000056_support case_000056_rank.val hlt case_000056_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000056_secondLine, FixedRow]
  exact ⟨case_000056_rowFirst, case_000056_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000056_sourceMatches :
    fam_009_desc.SourceMatches case_000056_rank.val case_000056_mask := by
  intro hlt
  have hrank :
      (⟨case_000056_rank.val, hlt⟩ : Fin numPairWords) = case_000056_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000056_rank.val, hlt⟩ case_000056_mask =
        case_000056_seq := by
    simpa [hrank] using case_000056_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000056_seq)
          fam_009_desc.firstIndex = some fam_009_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000056_seq)
          fam_009_desc.secondIndex = some fam_009_support.second := by
    decide
  have hchecks :
      SourceChecks fam_009_support case_000056_rank.val hlt case_000056_mask := by
    simp [SourceChecks, hseq, fam_009_support,
      checkTranslationConstraintSource, case_000056_seq, impactFace]
  exact ⟨
    by simpa [fam_009_desc, hseq] using hfirstIndex,
    by simpa [fam_009_desc, hseq] using hsecondIndex,
    by simpa [fam_009_desc] using hchecks
  ⟩

private theorem case_000056_applies :
    fam_009_desc.Applies case_000056_rank.val case_000056_mask := by
  exact ⟨
    case_000056_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_009_desc, fam_009_support, case_000056_support] using case_000056_rows
  ⟩

private theorem case_000056_covered :
    BoundedCovered case_000056_rank.val case_000056_mask :=
  BoundedCovered.fam009 case_000056_applies

private def case_000057_rank : Fin numPairWords := ⟨5, by decide⟩
private def case_000057_mask : SignMask := ⟨63, by decide⟩
private def case_000057_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩
private def case_000057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000057_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpm
private def case_000057_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000057_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000057_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000057_rankWord :
    rankPairWord? case_000057_word = some case_000057_rank := by
  decide

private theorem case_000057_unrank :
    unrankPairWord case_000057_rank = case_000057_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000057_word case_000057_rank).1
    case_000057_rankWord |>.symm

private theorem case_000057_seqChoice :
    translationChoiceSeq case_000057_word case_000057_mask = case_000057_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000057_seqAtRank :
    translationSeqAtRankMask case_000057_rank case_000057_mask = case_000057_seq := by
  rw [translationSeqAtRankMask, case_000057_unrank]
  exact case_000057_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000057_bAtRank :
    translationBAtRankMask case_000057_rank case_000057_mask = case_000057_b := by
  rw [translationBAtRankMask, case_000057_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000057_b, case_000057_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000057_firstLine_eq :
    case_000057_support.firstLine case_000057_seq case_000057_b = case_000057_firstLine := by
  norm_num [case_000057_firstLine, case_000057_support, case_000057_seq, case_000057_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000057_secondLine_eq :
    case_000057_support.secondLine case_000057_seq case_000057_b = case_000057_secondLine := by
  norm_num [case_000057_secondLine, case_000057_support, case_000057_seq, case_000057_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000057_rows :
    EqEqPosVarFirstRows case_000057_support case_000057_rank.val case_000057_mask := by
  intro hlt
  have hrank : (⟨case_000057_rank.val, hlt⟩ : Fin numPairWords) = case_000057_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000057_rank.val, hlt⟩ case_000057_mask =
        case_000057_seq := by
    simpa [hrank] using case_000057_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000057_rank.val, hlt⟩ case_000057_mask =
        case_000057_b := by
    simpa [hrank] using case_000057_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000057_support case_000057_rank.val hlt
          case_000057_mask = case_000057_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000057_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000057_support case_000057_rank.val hlt
          case_000057_mask = case_000057_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000057_secondLine_eq]
  have case_000057_rowFirst :
      EqEqPosRow (FirstLineAt case_000057_support case_000057_rank.val hlt case_000057_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000057_firstLine, EqEqPosRow]
  have case_000057_fixedSecond :
      FixedRow (SecondLineAt case_000057_support case_000057_rank.val hlt case_000057_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000057_secondLine, FixedRow]
  exact ⟨case_000057_rowFirst, case_000057_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000057_sourceMatches :
    fam_001_desc.SourceMatches case_000057_rank.val case_000057_mask := by
  intro hlt
  have hrank :
      (⟨case_000057_rank.val, hlt⟩ : Fin numPairWords) = case_000057_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000057_rank.val, hlt⟩ case_000057_mask =
        case_000057_seq := by
    simpa [hrank] using case_000057_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000057_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000057_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000057_rank.val hlt case_000057_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000057_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000057_applies :
    fam_001_desc.Applies case_000057_rank.val case_000057_mask := by
  exact ⟨
    case_000057_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000057_support] using case_000057_rows
  ⟩

private theorem case_000057_covered :
    BoundedCovered case_000057_rank.val case_000057_mask :=
  BoundedCovered.fam001 case_000057_applies

private theorem rank_000000004_coverage
    (hlt : 4 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨4, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨4, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 4 mask := by
  exact False.elim ((rank_000000004_nonidentity_linear_ne_atRank hlt) hM)

private theorem rank_000000005_coverage
    (hlt : 5 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨5, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨5, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 5 mask := by
  fin_cases mask
  · exact False.elim ((rank_000000005_mask_00_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_01_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_02_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_03_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_04_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_05_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_06_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_07_badDirection_notGood hlt) hgood)
  · exact case_000042_covered
  · exact case_000043_covered
  · exact False.elim ((rank_000000005_mask_10_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_11_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_12_badDirection_notGood hlt) hgood)
  · exact case_000044_covered
  · exact False.elim ((rank_000000005_mask_14_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_15_badDirection_notGood hlt) hgood)
  · exact case_000045_covered
  · exact False.elim ((rank_000000005_mask_17_badDirection_notGood hlt) hgood)
  · exact case_000046_covered
  · exact False.elim ((rank_000000005_mask_19_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_20_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_21_badDirection_notGood hlt) hgood)
  · exact case_000047_covered
  · exact False.elim ((rank_000000005_mask_23_badDirection_notGood hlt) hgood)
  · exact case_000048_covered
  · exact False.elim ((rank_000000005_mask_25_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_26_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_27_badDirection_notGood hlt) hgood)
  · exact case_000049_covered
  · exact case_000050_covered
  · exact case_000051_covered
  · exact case_000052_covered
  · exact False.elim ((rank_000000005_mask_32_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_33_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_34_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_35_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_36_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_37_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_38_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_39_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_40_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_41_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_42_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_43_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_44_badDirection_notGood hlt) hgood)
  · exact case_000053_covered
  · exact False.elim ((rank_000000005_mask_46_badDirection_notGood hlt) hgood)
  · exact case_000054_covered
  · exact False.elim ((rank_000000005_mask_48_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_49_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_50_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_51_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_52_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_53_badDirection_notGood hlt) hgood)
  · exact case_000055_covered
  · exact case_000056_covered
  · exact False.elim ((rank_000000005_mask_56_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_57_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_58_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_59_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_60_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_61_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000005_mask_62_badDirection_notGood hlt) hgood)
  · exact case_000057_covered

private theorem rank_000000006_coverage
    (hlt : 6 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨6, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨6, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 6 mask := by
  exact False.elim ((rank_000000006_nonidentity_linear_ne_atRank hlt) hM)

private theorem rank_000000007_coverage
    (hlt : 7 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨7, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨7, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 7 mask := by
  exact False.elim ((rank_000000007_nonidentity_linear_ne_atRank hlt) hM)

set_option maxHeartbeats 4000000 in
theorem shardCoverage :
    RowPropertyMembershipCoverageOnIdentityRange boundedFamily 4 8 := by
  intro r hlt mask hlo hhi hM hgood
  interval_cases r
  · exact rank_000000004_coverage hlt mask hM hgood
  · exact rank_000000005_coverage hlt mask hM hgood
  · exact rank_000000006_coverage hlt mask hM hgood
  · exact rank_000000007_coverage hlt mask hM hgood

theorem shardGoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (hlo : 4 <= r) (hhi : r < 8)
    (hM : totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) =
      (matId : Mat3 Rat)) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  boundedFamily.identityRangeKills shardCoverage r hlt mask hlo hhi hM

theorem shard_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard001
