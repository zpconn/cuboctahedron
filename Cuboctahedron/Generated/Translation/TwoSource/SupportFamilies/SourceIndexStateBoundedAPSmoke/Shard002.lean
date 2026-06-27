import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Generated bounded source-index/state coverage shard for Phase 6Z.6K.8I.

The descriptor `Applies` predicates are source-index/state predicates.
This shard is a bounded gate, not final global coverage.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard002

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

private def rank_000000008_nonidentity_rank : Fin numPairWords := ⟨8, by decide⟩
private def rank_000000008_nonidentity_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩

@[simp] theorem rank_000000008_nonidentity_word_get00_num :
    rank_000000008_nonidentity_word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem rank_000000008_nonidentity_word_get00_mk (h : 0 < 13) :
    rank_000000008_nonidentity_word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000008_nonidentity_word_get01_num :
    rank_000000008_nonidentity_word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000008_nonidentity_word_get01_mk (h : 1 < 13) :
    rank_000000008_nonidentity_word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000008_nonidentity_word_get02_num :
    rank_000000008_nonidentity_word.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000008_nonidentity_word_get02_mk (h : 2 < 13) :
    rank_000000008_nonidentity_word.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000008_nonidentity_word_get03_num :
    rank_000000008_nonidentity_word.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000008_nonidentity_word_get03_mk (h : 3 < 13) :
    rank_000000008_nonidentity_word.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000008_nonidentity_word_get04_num :
    rank_000000008_nonidentity_word.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000008_nonidentity_word_get04_mk (h : 4 < 13) :
    rank_000000008_nonidentity_word.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000008_nonidentity_word_get05_num :
    rank_000000008_nonidentity_word.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000008_nonidentity_word_get05_mk (h : 5 < 13) :
    rank_000000008_nonidentity_word.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000008_nonidentity_word_get06_num :
    rank_000000008_nonidentity_word.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000008_nonidentity_word_get06_mk (h : 6 < 13) :
    rank_000000008_nonidentity_word.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000008_nonidentity_word_get07_num :
    rank_000000008_nonidentity_word.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000008_nonidentity_word_get07_mk (h : 7 < 13) :
    rank_000000008_nonidentity_word.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000008_nonidentity_word_get08_num :
    rank_000000008_nonidentity_word.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000008_nonidentity_word_get08_mk (h : 8 < 13) :
    rank_000000008_nonidentity_word.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000008_nonidentity_word_get09_num :
    rank_000000008_nonidentity_word.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000008_nonidentity_word_get09_mk (h : 9 < 13) :
    rank_000000008_nonidentity_word.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000008_nonidentity_word_get10_num :
    rank_000000008_nonidentity_word.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000008_nonidentity_word_get10_mk (h : 10 < 13) :
    rank_000000008_nonidentity_word.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000008_nonidentity_word_get11_num :
    rank_000000008_nonidentity_word.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000008_nonidentity_word_get11_mk (h : 11 < 13) :
    rank_000000008_nonidentity_word.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000008_nonidentity_word_get12_num :
    rank_000000008_nonidentity_word.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000008_nonidentity_word_get12_mk (h : 12 < 13) :
    rank_000000008_nonidentity_word.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem rank_000000008_nonidentity_rankWord :
    rankPairWord? rank_000000008_nonidentity_word = some rank_000000008_nonidentity_rank := by
  decide

private theorem rank_000000008_nonidentity_unrank :
    unrankPairWord rank_000000008_nonidentity_rank = rank_000000008_nonidentity_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000008_nonidentity_word rank_000000008_nonidentity_rank).1
    rank_000000008_nonidentity_rankWord |>.symm

set_option maxHeartbeats 1200000 in
private theorem rank_000000008_nonidentity_totalLinear :
    totalLinearOfPairWord rank_000000008_nonidentity_word =
      { m00 := (17/81), m01 := (56/81), m02 := (-56/81), m10 := (-56/81), m11 := (49/81), m12 := (32/81), m20 := (56/81), m21 := (32/81), m22 := (49/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

private theorem rank_000000008_nonidentity_linear_ne :
    totalLinearOfPairWord rank_000000008_nonidentity_word ≠ (matId : Mat3 Rat) := by
  rw [rank_000000008_nonidentity_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

private theorem rank_000000008_nonidentity_linear_ne_atRank
    (hlt : 8 < numPairWords) :
    totalLinearOfPairWord
      (unrankPairWord (⟨8, hlt⟩ : Fin numPairWords)) ≠
        (matId : Mat3 Rat) := by
  have hrank :
      (⟨8, hlt⟩ : Fin numPairWords) = rank_000000008_nonidentity_rank := by
    ext
    rfl
  simpa [hrank, rank_000000008_nonidentity_unrank] using rank_000000008_nonidentity_linear_ne

private def rank_000000010_nonidentity_rank : Fin numPairWords := ⟨10, by decide⟩
private def rank_000000010_nonidentity_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.dm11], by decide⟩

@[simp] theorem rank_000000010_nonidentity_word_get00_num :
    rank_000000010_nonidentity_word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem rank_000000010_nonidentity_word_get00_mk (h : 0 < 13) :
    rank_000000010_nonidentity_word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000010_nonidentity_word_get01_num :
    rank_000000010_nonidentity_word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000010_nonidentity_word_get01_mk (h : 1 < 13) :
    rank_000000010_nonidentity_word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000010_nonidentity_word_get02_num :
    rank_000000010_nonidentity_word.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000010_nonidentity_word_get02_mk (h : 2 < 13) :
    rank_000000010_nonidentity_word.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000010_nonidentity_word_get03_num :
    rank_000000010_nonidentity_word.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000010_nonidentity_word_get03_mk (h : 3 < 13) :
    rank_000000010_nonidentity_word.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000010_nonidentity_word_get04_num :
    rank_000000010_nonidentity_word.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000010_nonidentity_word_get04_mk (h : 4 < 13) :
    rank_000000010_nonidentity_word.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000010_nonidentity_word_get05_num :
    rank_000000010_nonidentity_word.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000010_nonidentity_word_get05_mk (h : 5 < 13) :
    rank_000000010_nonidentity_word.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000010_nonidentity_word_get06_num :
    rank_000000010_nonidentity_word.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000010_nonidentity_word_get06_mk (h : 6 < 13) :
    rank_000000010_nonidentity_word.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000010_nonidentity_word_get07_num :
    rank_000000010_nonidentity_word.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000010_nonidentity_word_get07_mk (h : 7 < 13) :
    rank_000000010_nonidentity_word.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000010_nonidentity_word_get08_num :
    rank_000000010_nonidentity_word.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000010_nonidentity_word_get08_mk (h : 8 < 13) :
    rank_000000010_nonidentity_word.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000010_nonidentity_word_get09_num :
    rank_000000010_nonidentity_word.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000010_nonidentity_word_get09_mk (h : 9 < 13) :
    rank_000000010_nonidentity_word.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000010_nonidentity_word_get10_num :
    rank_000000010_nonidentity_word.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000010_nonidentity_word_get10_mk (h : 10 < 13) :
    rank_000000010_nonidentity_word.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000010_nonidentity_word_get11_num :
    rank_000000010_nonidentity_word.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000010_nonidentity_word_get11_mk (h : 11 < 13) :
    rank_000000010_nonidentity_word.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000010_nonidentity_word_get12_num :
    rank_000000010_nonidentity_word.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000010_nonidentity_word_get12_mk (h : 12 < 13) :
    rank_000000010_nonidentity_word.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem rank_000000010_nonidentity_rankWord :
    rankPairWord? rank_000000010_nonidentity_word = some rank_000000010_nonidentity_rank := by
  decide

private theorem rank_000000010_nonidentity_unrank :
    unrankPairWord rank_000000010_nonidentity_rank = rank_000000010_nonidentity_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000010_nonidentity_word rank_000000010_nonidentity_rank).1
    rank_000000010_nonidentity_rankWord |>.symm

set_option maxHeartbeats 1200000 in
private theorem rank_000000010_nonidentity_totalLinear :
    totalLinearOfPairWord rank_000000010_nonidentity_word =
      { m00 := (49/81), m01 := (-56/81), m02 := (-32/81), m10 := (56/81), m11 := (17/81), m12 := (56/81), m20 := (-32/81), m21 := (-56/81), m22 := (49/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

private theorem rank_000000010_nonidentity_linear_ne :
    totalLinearOfPairWord rank_000000010_nonidentity_word ≠ (matId : Mat3 Rat) := by
  rw [rank_000000010_nonidentity_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

private theorem rank_000000010_nonidentity_linear_ne_atRank
    (hlt : 10 < numPairWords) :
    totalLinearOfPairWord
      (unrankPairWord (⟨10, hlt⟩ : Fin numPairWords)) ≠
        (matId : Mat3 Rat) := by
  have hrank :
      (⟨10, hlt⟩ : Fin numPairWords) = rank_000000010_nonidentity_rank := by
    ext
    rfl
  simpa [hrank, rank_000000010_nonidentity_unrank] using rank_000000010_nonidentity_linear_ne

private def rank_000000009_mask_00_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_00_badDirection_mask : SignMask := ⟨0, by decide⟩
private def rank_000000009_mask_00_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_00_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_00_badDirection_b : Vec3 Rat := { x := (28/9), y := (-100/9), z := (-68/9) }
private def rank_000000009_mask_00_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_00_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_00_badDirection_word = some rank_000000009_mask_00_badDirection_rank := by
  decide

private theorem rank_000000009_mask_00_badDirection_unrank :
    unrankPairWord rank_000000009_mask_00_badDirection_rank = rank_000000009_mask_00_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_00_badDirection_word rank_000000009_mask_00_badDirection_rank).1
    rank_000000009_mask_00_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_00_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_00_badDirection_word rank_000000009_mask_00_badDirection_mask = rank_000000009_mask_00_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_00_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_00_badDirection_rank rank_000000009_mask_00_badDirection_mask = rank_000000009_mask_00_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_00_badDirection_unrank]
  exact rank_000000009_mask_00_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_00_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_00_badDirection_rank rank_000000009_mask_00_badDirection_mask = rank_000000009_mask_00_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_00_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_00_badDirection_b, rank_000000009_mask_00_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_00_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_00_badDirection_rank rank_000000009_mask_00_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_00_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_00_badDirection_seqAtRank, rank_000000009_mask_00_badDirection_bAtRank]
  norm_num [rank_000000009_mask_00_badDirection_denom, rank_000000009_mask_00_badDirection_seq, rank_000000009_mask_00_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_00_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_00_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_00_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_00_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_00_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_00_badDirection_denom]

private def rank_000000009_mask_01_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_01_badDirection_mask : SignMask := ⟨1, by decide⟩
private def rank_000000009_mask_01_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_01_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_01_badDirection_b : Vec3 Rat := { x := (28/9), y := (-28/9), z := (-68/9) }
private def rank_000000009_mask_01_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_01_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_01_badDirection_word = some rank_000000009_mask_01_badDirection_rank := by
  decide

private theorem rank_000000009_mask_01_badDirection_unrank :
    unrankPairWord rank_000000009_mask_01_badDirection_rank = rank_000000009_mask_01_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_01_badDirection_word rank_000000009_mask_01_badDirection_rank).1
    rank_000000009_mask_01_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_01_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_01_badDirection_word rank_000000009_mask_01_badDirection_mask = rank_000000009_mask_01_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_01_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_01_badDirection_rank rank_000000009_mask_01_badDirection_mask = rank_000000009_mask_01_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_01_badDirection_unrank]
  exact rank_000000009_mask_01_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_01_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_01_badDirection_rank rank_000000009_mask_01_badDirection_mask = rank_000000009_mask_01_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_01_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_01_badDirection_b, rank_000000009_mask_01_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_01_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_01_badDirection_rank rank_000000009_mask_01_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_01_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_01_badDirection_seqAtRank, rank_000000009_mask_01_badDirection_bAtRank]
  norm_num [rank_000000009_mask_01_badDirection_denom, rank_000000009_mask_01_badDirection_seq, rank_000000009_mask_01_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_01_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_01_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_01_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_01_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_01_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_01_badDirection_denom]

private def rank_000000009_mask_02_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_02_badDirection_mask : SignMask := ⟨2, by decide⟩
private def rank_000000009_mask_02_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_02_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_02_badDirection_b : Vec3 Rat := { x := (28/9), y := (-100/9), z := (4/9) }
private def rank_000000009_mask_02_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_02_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_02_badDirection_word = some rank_000000009_mask_02_badDirection_rank := by
  decide

private theorem rank_000000009_mask_02_badDirection_unrank :
    unrankPairWord rank_000000009_mask_02_badDirection_rank = rank_000000009_mask_02_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_02_badDirection_word rank_000000009_mask_02_badDirection_rank).1
    rank_000000009_mask_02_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_02_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_02_badDirection_word rank_000000009_mask_02_badDirection_mask = rank_000000009_mask_02_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_02_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_02_badDirection_rank rank_000000009_mask_02_badDirection_mask = rank_000000009_mask_02_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_02_badDirection_unrank]
  exact rank_000000009_mask_02_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_02_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_02_badDirection_rank rank_000000009_mask_02_badDirection_mask = rank_000000009_mask_02_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_02_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_02_badDirection_b, rank_000000009_mask_02_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_02_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_02_badDirection_rank rank_000000009_mask_02_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_02_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_02_badDirection_seqAtRank, rank_000000009_mask_02_badDirection_bAtRank]
  norm_num [rank_000000009_mask_02_badDirection_denom, rank_000000009_mask_02_badDirection_seq, rank_000000009_mask_02_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_02_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_02_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_02_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_02_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_02_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_02_badDirection_denom]

private def rank_000000009_mask_03_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_03_badDirection_mask : SignMask := ⟨3, by decide⟩
private def rank_000000009_mask_03_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_03_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_03_badDirection_b : Vec3 Rat := { x := (28/9), y := (-28/9), z := (4/9) }
private def rank_000000009_mask_03_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_03_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_03_badDirection_word = some rank_000000009_mask_03_badDirection_rank := by
  decide

private theorem rank_000000009_mask_03_badDirection_unrank :
    unrankPairWord rank_000000009_mask_03_badDirection_rank = rank_000000009_mask_03_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_03_badDirection_word rank_000000009_mask_03_badDirection_rank).1
    rank_000000009_mask_03_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_03_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_03_badDirection_word rank_000000009_mask_03_badDirection_mask = rank_000000009_mask_03_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_03_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_03_badDirection_rank rank_000000009_mask_03_badDirection_mask = rank_000000009_mask_03_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_03_badDirection_unrank]
  exact rank_000000009_mask_03_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_03_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_03_badDirection_rank rank_000000009_mask_03_badDirection_mask = rank_000000009_mask_03_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_03_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_03_badDirection_b, rank_000000009_mask_03_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_03_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_03_badDirection_rank rank_000000009_mask_03_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_03_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_03_badDirection_seqAtRank, rank_000000009_mask_03_badDirection_bAtRank]
  norm_num [rank_000000009_mask_03_badDirection_denom, rank_000000009_mask_03_badDirection_seq, rank_000000009_mask_03_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_03_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_03_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_03_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_03_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_03_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_03_badDirection_denom]

private def rank_000000009_mask_04_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_04_badDirection_mask : SignMask := ⟨4, by decide⟩
private def rank_000000009_mask_04_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_04_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_04_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (-20/9) }
private def rank_000000009_mask_04_badDirection_denom : Rat := (-52/9)

private theorem rank_000000009_mask_04_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_04_badDirection_word = some rank_000000009_mask_04_badDirection_rank := by
  decide

private theorem rank_000000009_mask_04_badDirection_unrank :
    unrankPairWord rank_000000009_mask_04_badDirection_rank = rank_000000009_mask_04_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_04_badDirection_word rank_000000009_mask_04_badDirection_rank).1
    rank_000000009_mask_04_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_04_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_04_badDirection_word rank_000000009_mask_04_badDirection_mask = rank_000000009_mask_04_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_04_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_04_badDirection_rank rank_000000009_mask_04_badDirection_mask = rank_000000009_mask_04_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_04_badDirection_unrank]
  exact rank_000000009_mask_04_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_04_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_04_badDirection_rank rank_000000009_mask_04_badDirection_mask = rank_000000009_mask_04_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_04_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_04_badDirection_b, rank_000000009_mask_04_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_04_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_04_badDirection_rank rank_000000009_mask_04_badDirection_mask ⟨6, by decide⟩ =
      rank_000000009_mask_04_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_04_badDirection_seqAtRank, rank_000000009_mask_04_badDirection_bAtRank]
  norm_num [rank_000000009_mask_04_badDirection_denom, rank_000000009_mask_04_badDirection_seq, rank_000000009_mask_04_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_04_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_04_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_04_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_04_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_04_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_04_badDirection_denom]

private def rank_000000009_mask_05_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_05_badDirection_mask : SignMask := ⟨5, by decide⟩
private def rank_000000009_mask_05_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_05_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_05_badDirection_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-20/9) }
private def rank_000000009_mask_05_badDirection_denom : Rat := (-20/3)

private theorem rank_000000009_mask_05_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_05_badDirection_word = some rank_000000009_mask_05_badDirection_rank := by
  decide

private theorem rank_000000009_mask_05_badDirection_unrank :
    unrankPairWord rank_000000009_mask_05_badDirection_rank = rank_000000009_mask_05_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_05_badDirection_word rank_000000009_mask_05_badDirection_rank).1
    rank_000000009_mask_05_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_05_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_05_badDirection_word rank_000000009_mask_05_badDirection_mask = rank_000000009_mask_05_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_05_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_05_badDirection_rank rank_000000009_mask_05_badDirection_mask = rank_000000009_mask_05_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_05_badDirection_unrank]
  exact rank_000000009_mask_05_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_05_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_05_badDirection_rank rank_000000009_mask_05_badDirection_mask = rank_000000009_mask_05_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_05_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_05_badDirection_b, rank_000000009_mask_05_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_05_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_05_badDirection_rank rank_000000009_mask_05_badDirection_mask ⟨8, by decide⟩ =
      rank_000000009_mask_05_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_05_badDirection_seqAtRank, rank_000000009_mask_05_badDirection_bAtRank]
  norm_num [rank_000000009_mask_05_badDirection_denom, rank_000000009_mask_05_badDirection_seq, rank_000000009_mask_05_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_05_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_05_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_05_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_05_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_05_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_05_badDirection_denom]

private def rank_000000009_mask_06_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_06_badDirection_mask : SignMask := ⟨6, by decide⟩
private def rank_000000009_mask_06_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_06_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_06_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (52/9) }
private def rank_000000009_mask_06_badDirection_denom : Rat := (-68/9)

private theorem rank_000000009_mask_06_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_06_badDirection_word = some rank_000000009_mask_06_badDirection_rank := by
  decide

private theorem rank_000000009_mask_06_badDirection_unrank :
    unrankPairWord rank_000000009_mask_06_badDirection_rank = rank_000000009_mask_06_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_06_badDirection_word rank_000000009_mask_06_badDirection_rank).1
    rank_000000009_mask_06_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_06_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_06_badDirection_word rank_000000009_mask_06_badDirection_mask = rank_000000009_mask_06_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_06_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_06_badDirection_rank rank_000000009_mask_06_badDirection_mask = rank_000000009_mask_06_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_06_badDirection_unrank]
  exact rank_000000009_mask_06_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_06_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_06_badDirection_rank rank_000000009_mask_06_badDirection_mask = rank_000000009_mask_06_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_06_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_06_badDirection_b, rank_000000009_mask_06_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_06_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_06_badDirection_rank rank_000000009_mask_06_badDirection_mask ⟨9, by decide⟩ =
      rank_000000009_mask_06_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_06_badDirection_seqAtRank, rank_000000009_mask_06_badDirection_bAtRank]
  norm_num [rank_000000009_mask_06_badDirection_denom, rank_000000009_mask_06_badDirection_seq, rank_000000009_mask_06_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_06_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_06_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_06_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_06_badDirection_mask)
      (i := ⟨9, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_06_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_06_badDirection_denom]

private def rank_000000009_mask_07_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_07_badDirection_mask : SignMask := ⟨7, by decide⟩
private def rank_000000009_mask_07_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_07_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_07_badDirection_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (52/9) }
private def rank_000000009_mask_07_badDirection_denom : Rat := (-44/9)

private theorem rank_000000009_mask_07_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_07_badDirection_word = some rank_000000009_mask_07_badDirection_rank := by
  decide

private theorem rank_000000009_mask_07_badDirection_unrank :
    unrankPairWord rank_000000009_mask_07_badDirection_rank = rank_000000009_mask_07_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_07_badDirection_word rank_000000009_mask_07_badDirection_rank).1
    rank_000000009_mask_07_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_07_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_07_badDirection_word rank_000000009_mask_07_badDirection_mask = rank_000000009_mask_07_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_07_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_07_badDirection_rank rank_000000009_mask_07_badDirection_mask = rank_000000009_mask_07_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_07_badDirection_unrank]
  exact rank_000000009_mask_07_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_07_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_07_badDirection_rank rank_000000009_mask_07_badDirection_mask = rank_000000009_mask_07_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_07_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_07_badDirection_b, rank_000000009_mask_07_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_07_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_07_badDirection_rank rank_000000009_mask_07_badDirection_mask ⟨9, by decide⟩ =
      rank_000000009_mask_07_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_07_badDirection_seqAtRank, rank_000000009_mask_07_badDirection_bAtRank]
  norm_num [rank_000000009_mask_07_badDirection_denom, rank_000000009_mask_07_badDirection_seq, rank_000000009_mask_07_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_07_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_07_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_07_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_07_badDirection_mask)
      (i := ⟨9, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_07_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_07_badDirection_denom]

private def rank_000000009_mask_08_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_08_badDirection_mask : SignMask := ⟨8, by decide⟩
private def rank_000000009_mask_08_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_08_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_08_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (-116/9) }
private def rank_000000009_mask_08_badDirection_denom : Rat := (-4/3)

private theorem rank_000000009_mask_08_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_08_badDirection_word = some rank_000000009_mask_08_badDirection_rank := by
  decide

private theorem rank_000000009_mask_08_badDirection_unrank :
    unrankPairWord rank_000000009_mask_08_badDirection_rank = rank_000000009_mask_08_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_08_badDirection_word rank_000000009_mask_08_badDirection_rank).1
    rank_000000009_mask_08_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_08_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_08_badDirection_word rank_000000009_mask_08_badDirection_mask = rank_000000009_mask_08_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_08_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_08_badDirection_rank rank_000000009_mask_08_badDirection_mask = rank_000000009_mask_08_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_08_badDirection_unrank]
  exact rank_000000009_mask_08_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_08_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_08_badDirection_rank rank_000000009_mask_08_badDirection_mask = rank_000000009_mask_08_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_08_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_08_badDirection_b, rank_000000009_mask_08_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_08_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_08_badDirection_rank rank_000000009_mask_08_badDirection_mask ⟨9, by decide⟩ =
      rank_000000009_mask_08_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_08_badDirection_seqAtRank, rank_000000009_mask_08_badDirection_bAtRank]
  norm_num [rank_000000009_mask_08_badDirection_denom, rank_000000009_mask_08_badDirection_seq, rank_000000009_mask_08_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_08_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_08_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_08_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_08_badDirection_mask)
      (i := ⟨9, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_08_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_08_badDirection_denom]

private def rank_000000009_mask_10_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_10_badDirection_mask : SignMask := ⟨10, by decide⟩
private def rank_000000009_mask_10_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_10_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_10_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (-44/9) }
private def rank_000000009_mask_10_badDirection_denom : Rat := (-44/9)

private theorem rank_000000009_mask_10_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_10_badDirection_word = some rank_000000009_mask_10_badDirection_rank := by
  decide

private theorem rank_000000009_mask_10_badDirection_unrank :
    unrankPairWord rank_000000009_mask_10_badDirection_rank = rank_000000009_mask_10_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_10_badDirection_word rank_000000009_mask_10_badDirection_rank).1
    rank_000000009_mask_10_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_10_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_10_badDirection_word rank_000000009_mask_10_badDirection_mask = rank_000000009_mask_10_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_10_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_10_badDirection_rank rank_000000009_mask_10_badDirection_mask = rank_000000009_mask_10_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_10_badDirection_unrank]
  exact rank_000000009_mask_10_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_10_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_10_badDirection_rank rank_000000009_mask_10_badDirection_mask = rank_000000009_mask_10_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_10_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_10_badDirection_b, rank_000000009_mask_10_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_10_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_10_badDirection_rank rank_000000009_mask_10_badDirection_mask ⟨4, by decide⟩ =
      rank_000000009_mask_10_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_10_badDirection_seqAtRank, rank_000000009_mask_10_badDirection_bAtRank]
  norm_num [rank_000000009_mask_10_badDirection_denom, rank_000000009_mask_10_badDirection_seq, rank_000000009_mask_10_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_10_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_10_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_10_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_10_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_10_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_10_badDirection_denom]

private def rank_000000009_mask_11_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_11_badDirection_mask : SignMask := ⟨11, by decide⟩
private def rank_000000009_mask_11_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_11_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_11_badDirection_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-44/9) }
private def rank_000000009_mask_11_badDirection_denom : Rat := (-44/9)

private theorem rank_000000009_mask_11_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_11_badDirection_word = some rank_000000009_mask_11_badDirection_rank := by
  decide

private theorem rank_000000009_mask_11_badDirection_unrank :
    unrankPairWord rank_000000009_mask_11_badDirection_rank = rank_000000009_mask_11_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_11_badDirection_word rank_000000009_mask_11_badDirection_rank).1
    rank_000000009_mask_11_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_11_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_11_badDirection_word rank_000000009_mask_11_badDirection_mask = rank_000000009_mask_11_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_11_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_11_badDirection_rank rank_000000009_mask_11_badDirection_mask = rank_000000009_mask_11_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_11_badDirection_unrank]
  exact rank_000000009_mask_11_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_11_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_11_badDirection_rank rank_000000009_mask_11_badDirection_mask = rank_000000009_mask_11_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_11_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_11_badDirection_b, rank_000000009_mask_11_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_11_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_11_badDirection_rank rank_000000009_mask_11_badDirection_mask ⟨4, by decide⟩ =
      rank_000000009_mask_11_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_11_badDirection_seqAtRank, rank_000000009_mask_11_badDirection_bAtRank]
  norm_num [rank_000000009_mask_11_badDirection_denom, rank_000000009_mask_11_badDirection_seq, rank_000000009_mask_11_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_11_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_11_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_11_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_11_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_11_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_11_badDirection_denom]

private def rank_000000009_mask_12_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_12_badDirection_mask : SignMask := ⟨12, by decide⟩
private def rank_000000009_mask_12_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_12_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_12_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-4/9), z := (-68/9) }
private def rank_000000009_mask_12_badDirection_denom : Rat := (-4/9)

private theorem rank_000000009_mask_12_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_12_badDirection_word = some rank_000000009_mask_12_badDirection_rank := by
  decide

private theorem rank_000000009_mask_12_badDirection_unrank :
    unrankPairWord rank_000000009_mask_12_badDirection_rank = rank_000000009_mask_12_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_12_badDirection_word rank_000000009_mask_12_badDirection_rank).1
    rank_000000009_mask_12_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_12_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_12_badDirection_word rank_000000009_mask_12_badDirection_mask = rank_000000009_mask_12_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_12_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_12_badDirection_rank rank_000000009_mask_12_badDirection_mask = rank_000000009_mask_12_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_12_badDirection_unrank]
  exact rank_000000009_mask_12_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_12_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_12_badDirection_rank rank_000000009_mask_12_badDirection_mask = rank_000000009_mask_12_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_12_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_12_badDirection_b, rank_000000009_mask_12_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_12_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_12_badDirection_rank rank_000000009_mask_12_badDirection_mask ⟨6, by decide⟩ =
      rank_000000009_mask_12_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_12_badDirection_seqAtRank, rank_000000009_mask_12_badDirection_bAtRank]
  norm_num [rank_000000009_mask_12_badDirection_denom, rank_000000009_mask_12_badDirection_seq, rank_000000009_mask_12_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_12_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_12_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_12_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_12_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_12_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_12_badDirection_denom]

private def rank_000000009_mask_13_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_13_badDirection_mask : SignMask := ⟨13, by decide⟩
private def rank_000000009_mask_13_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_13_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_13_badDirection_b : Vec3 Rat := { x := (-68/9), y := (68/9), z := (-68/9) }
private def rank_000000009_mask_13_badDirection_denom : Rat := (-68/9)

private theorem rank_000000009_mask_13_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_13_badDirection_word = some rank_000000009_mask_13_badDirection_rank := by
  decide

private theorem rank_000000009_mask_13_badDirection_unrank :
    unrankPairWord rank_000000009_mask_13_badDirection_rank = rank_000000009_mask_13_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_13_badDirection_word rank_000000009_mask_13_badDirection_rank).1
    rank_000000009_mask_13_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_13_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_13_badDirection_word rank_000000009_mask_13_badDirection_mask = rank_000000009_mask_13_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_13_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_13_badDirection_rank rank_000000009_mask_13_badDirection_mask = rank_000000009_mask_13_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_13_badDirection_unrank]
  exact rank_000000009_mask_13_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_13_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_13_badDirection_rank rank_000000009_mask_13_badDirection_mask = rank_000000009_mask_13_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_13_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_13_badDirection_b, rank_000000009_mask_13_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_13_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_13_badDirection_rank rank_000000009_mask_13_badDirection_mask ⟨9, by decide⟩ =
      rank_000000009_mask_13_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_13_badDirection_seqAtRank, rank_000000009_mask_13_badDirection_bAtRank]
  norm_num [rank_000000009_mask_13_badDirection_denom, rank_000000009_mask_13_badDirection_seq, rank_000000009_mask_13_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_13_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_13_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_13_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_13_badDirection_mask)
      (i := ⟨9, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_13_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_13_badDirection_denom]

private def rank_000000009_mask_14_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_14_badDirection_mask : SignMask := ⟨14, by decide⟩
private def rank_000000009_mask_14_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_14_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_14_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-4/9), z := (4/9) }
private def rank_000000009_mask_14_badDirection_denom : Rat := (-116/9)

private theorem rank_000000009_mask_14_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_14_badDirection_word = some rank_000000009_mask_14_badDirection_rank := by
  decide

private theorem rank_000000009_mask_14_badDirection_unrank :
    unrankPairWord rank_000000009_mask_14_badDirection_rank = rank_000000009_mask_14_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_14_badDirection_word rank_000000009_mask_14_badDirection_rank).1
    rank_000000009_mask_14_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_14_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_14_badDirection_word rank_000000009_mask_14_badDirection_mask = rank_000000009_mask_14_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_14_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_14_badDirection_rank rank_000000009_mask_14_badDirection_mask = rank_000000009_mask_14_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_14_badDirection_unrank]
  exact rank_000000009_mask_14_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_14_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_14_badDirection_rank rank_000000009_mask_14_badDirection_mask = rank_000000009_mask_14_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_14_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_14_badDirection_b, rank_000000009_mask_14_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_14_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_14_badDirection_rank rank_000000009_mask_14_badDirection_mask ⟨9, by decide⟩ =
      rank_000000009_mask_14_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_14_badDirection_seqAtRank, rank_000000009_mask_14_badDirection_bAtRank]
  norm_num [rank_000000009_mask_14_badDirection_denom, rank_000000009_mask_14_badDirection_seq, rank_000000009_mask_14_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_14_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_14_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_14_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_14_badDirection_mask)
      (i := ⟨9, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_14_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_14_badDirection_denom]

private def rank_000000009_mask_15_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_15_badDirection_mask : SignMask := ⟨15, by decide⟩
private def rank_000000009_mask_15_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_15_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_15_badDirection_b : Vec3 Rat := { x := (-68/9), y := (68/9), z := (4/9) }
private def rank_000000009_mask_15_badDirection_denom : Rat := (-92/9)

private theorem rank_000000009_mask_15_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_15_badDirection_word = some rank_000000009_mask_15_badDirection_rank := by
  decide

private theorem rank_000000009_mask_15_badDirection_unrank :
    unrankPairWord rank_000000009_mask_15_badDirection_rank = rank_000000009_mask_15_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_15_badDirection_word rank_000000009_mask_15_badDirection_rank).1
    rank_000000009_mask_15_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_15_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_15_badDirection_word rank_000000009_mask_15_badDirection_mask = rank_000000009_mask_15_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_15_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_15_badDirection_rank rank_000000009_mask_15_badDirection_mask = rank_000000009_mask_15_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_15_badDirection_unrank]
  exact rank_000000009_mask_15_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_15_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_15_badDirection_rank rank_000000009_mask_15_badDirection_mask = rank_000000009_mask_15_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_15_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_15_badDirection_b, rank_000000009_mask_15_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_15_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_15_badDirection_rank rank_000000009_mask_15_badDirection_mask ⟨9, by decide⟩ =
      rank_000000009_mask_15_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_15_badDirection_seqAtRank, rank_000000009_mask_15_badDirection_bAtRank]
  norm_num [rank_000000009_mask_15_badDirection_denom, rank_000000009_mask_15_badDirection_seq, rank_000000009_mask_15_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_15_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_15_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_15_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_15_badDirection_mask)
      (i := ⟨9, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_15_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_15_badDirection_denom]

private def rank_000000009_mask_17_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_17_badDirection_mask : SignMask := ⟨17, by decide⟩
private def rank_000000009_mask_17_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_17_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_17_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-44/9), z := (-52/9) }
private def rank_000000009_mask_17_badDirection_denom : Rat := (-44/9)

private theorem rank_000000009_mask_17_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_17_badDirection_word = some rank_000000009_mask_17_badDirection_rank := by
  decide

private theorem rank_000000009_mask_17_badDirection_unrank :
    unrankPairWord rank_000000009_mask_17_badDirection_rank = rank_000000009_mask_17_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_17_badDirection_word rank_000000009_mask_17_badDirection_rank).1
    rank_000000009_mask_17_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_17_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_17_badDirection_word rank_000000009_mask_17_badDirection_mask = rank_000000009_mask_17_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_17_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_17_badDirection_rank rank_000000009_mask_17_badDirection_mask = rank_000000009_mask_17_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_17_badDirection_unrank]
  exact rank_000000009_mask_17_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_17_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_17_badDirection_rank rank_000000009_mask_17_badDirection_mask = rank_000000009_mask_17_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_17_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_17_badDirection_b, rank_000000009_mask_17_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_17_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_17_badDirection_rank rank_000000009_mask_17_badDirection_mask ⟨2, by decide⟩ =
      rank_000000009_mask_17_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_17_badDirection_seqAtRank, rank_000000009_mask_17_badDirection_bAtRank]
  norm_num [rank_000000009_mask_17_badDirection_denom, rank_000000009_mask_17_badDirection_seq, rank_000000009_mask_17_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_17_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_17_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_17_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_17_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_17_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_17_badDirection_denom]

private def rank_000000009_mask_19_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_19_badDirection_mask : SignMask := ⟨19, by decide⟩
private def rank_000000009_mask_19_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_19_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_19_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-44/9), z := (20/9) }
private def rank_000000009_mask_19_badDirection_denom : Rat := (-44/9)

private theorem rank_000000009_mask_19_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_19_badDirection_word = some rank_000000009_mask_19_badDirection_rank := by
  decide

private theorem rank_000000009_mask_19_badDirection_unrank :
    unrankPairWord rank_000000009_mask_19_badDirection_rank = rank_000000009_mask_19_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_19_badDirection_word rank_000000009_mask_19_badDirection_rank).1
    rank_000000009_mask_19_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_19_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_19_badDirection_word rank_000000009_mask_19_badDirection_mask = rank_000000009_mask_19_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_19_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_19_badDirection_rank rank_000000009_mask_19_badDirection_mask = rank_000000009_mask_19_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_19_badDirection_unrank]
  exact rank_000000009_mask_19_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_19_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_19_badDirection_rank rank_000000009_mask_19_badDirection_mask = rank_000000009_mask_19_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_19_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_19_badDirection_b, rank_000000009_mask_19_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_19_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_19_badDirection_rank rank_000000009_mask_19_badDirection_mask ⟨2, by decide⟩ =
      rank_000000009_mask_19_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_19_badDirection_seqAtRank, rank_000000009_mask_19_badDirection_bAtRank]
  norm_num [rank_000000009_mask_19_badDirection_denom, rank_000000009_mask_19_badDirection_seq, rank_000000009_mask_19_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_19_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_19_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_19_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_19_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_19_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_19_badDirection_denom]

private def rank_000000009_mask_20_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_20_badDirection_mask : SignMask := ⟨20, by decide⟩
private def rank_000000009_mask_20_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_20_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_20_badDirection_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-4/9) }
private def rank_000000009_mask_20_badDirection_denom : Rat := -4

private theorem rank_000000009_mask_20_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_20_badDirection_word = some rank_000000009_mask_20_badDirection_rank := by
  decide

private theorem rank_000000009_mask_20_badDirection_unrank :
    unrankPairWord rank_000000009_mask_20_badDirection_rank = rank_000000009_mask_20_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_20_badDirection_word rank_000000009_mask_20_badDirection_rank).1
    rank_000000009_mask_20_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_20_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_20_badDirection_word rank_000000009_mask_20_badDirection_mask = rank_000000009_mask_20_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_20_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_20_badDirection_rank rank_000000009_mask_20_badDirection_mask = rank_000000009_mask_20_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_20_badDirection_unrank]
  exact rank_000000009_mask_20_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_20_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_20_badDirection_rank rank_000000009_mask_20_badDirection_mask = rank_000000009_mask_20_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_20_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_20_badDirection_b, rank_000000009_mask_20_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_20_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_20_badDirection_rank rank_000000009_mask_20_badDirection_mask ⟨8, by decide⟩ =
      rank_000000009_mask_20_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_20_badDirection_seqAtRank, rank_000000009_mask_20_badDirection_bAtRank]
  norm_num [rank_000000009_mask_20_badDirection_denom, rank_000000009_mask_20_badDirection_seq, rank_000000009_mask_20_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_20_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_20_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_20_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_20_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_20_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_20_badDirection_denom]

private def rank_000000009_mask_21_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_21_badDirection_mask : SignMask := ⟨21, by decide⟩
private def rank_000000009_mask_21_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_21_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_21_badDirection_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (-4/9) }
private def rank_000000009_mask_21_badDirection_denom : Rat := -12

private theorem rank_000000009_mask_21_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_21_badDirection_word = some rank_000000009_mask_21_badDirection_rank := by
  decide

private theorem rank_000000009_mask_21_badDirection_unrank :
    unrankPairWord rank_000000009_mask_21_badDirection_rank = rank_000000009_mask_21_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_21_badDirection_word rank_000000009_mask_21_badDirection_rank).1
    rank_000000009_mask_21_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_21_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_21_badDirection_word rank_000000009_mask_21_badDirection_mask = rank_000000009_mask_21_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_21_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_21_badDirection_rank rank_000000009_mask_21_badDirection_mask = rank_000000009_mask_21_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_21_badDirection_unrank]
  exact rank_000000009_mask_21_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_21_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_21_badDirection_rank rank_000000009_mask_21_badDirection_mask = rank_000000009_mask_21_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_21_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_21_badDirection_b, rank_000000009_mask_21_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_21_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_21_badDirection_rank rank_000000009_mask_21_badDirection_mask ⟨8, by decide⟩ =
      rank_000000009_mask_21_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_21_badDirection_seqAtRank, rank_000000009_mask_21_badDirection_bAtRank]
  norm_num [rank_000000009_mask_21_badDirection_denom, rank_000000009_mask_21_badDirection_seq, rank_000000009_mask_21_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_21_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_21_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_21_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_21_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_21_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_21_badDirection_denom]

private def rank_000000009_mask_23_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_23_badDirection_mask : SignMask := ⟨23, by decide⟩
private def rank_000000009_mask_23_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_23_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_23_badDirection_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (68/9) }
private def rank_000000009_mask_23_badDirection_denom : Rat := -4

private theorem rank_000000009_mask_23_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_23_badDirection_word = some rank_000000009_mask_23_badDirection_rank := by
  decide

private theorem rank_000000009_mask_23_badDirection_unrank :
    unrankPairWord rank_000000009_mask_23_badDirection_rank = rank_000000009_mask_23_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_23_badDirection_word rank_000000009_mask_23_badDirection_rank).1
    rank_000000009_mask_23_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_23_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_23_badDirection_word rank_000000009_mask_23_badDirection_mask = rank_000000009_mask_23_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_23_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_23_badDirection_rank rank_000000009_mask_23_badDirection_mask = rank_000000009_mask_23_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_23_badDirection_unrank]
  exact rank_000000009_mask_23_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_23_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_23_badDirection_rank rank_000000009_mask_23_badDirection_mask = rank_000000009_mask_23_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_23_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_23_badDirection_b, rank_000000009_mask_23_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_23_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_23_badDirection_rank rank_000000009_mask_23_badDirection_mask ⟨8, by decide⟩ =
      rank_000000009_mask_23_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_23_badDirection_seqAtRank, rank_000000009_mask_23_badDirection_bAtRank]
  norm_num [rank_000000009_mask_23_badDirection_denom, rank_000000009_mask_23_badDirection_seq, rank_000000009_mask_23_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_23_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_23_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_23_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_23_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_23_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_23_badDirection_denom]

private def rank_000000009_mask_25_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_25_badDirection_mask : SignMask := ⟨25, by decide⟩
private def rank_000000009_mask_25_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_25_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_25_badDirection_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (-100/9) }
private def rank_000000009_mask_25_badDirection_denom : Rat := (-4/9)

private theorem rank_000000009_mask_25_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_25_badDirection_word = some rank_000000009_mask_25_badDirection_rank := by
  decide

private theorem rank_000000009_mask_25_badDirection_unrank :
    unrankPairWord rank_000000009_mask_25_badDirection_rank = rank_000000009_mask_25_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_25_badDirection_word rank_000000009_mask_25_badDirection_rank).1
    rank_000000009_mask_25_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_25_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_25_badDirection_word rank_000000009_mask_25_badDirection_mask = rank_000000009_mask_25_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_25_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_25_badDirection_rank rank_000000009_mask_25_badDirection_mask = rank_000000009_mask_25_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_25_badDirection_unrank]
  exact rank_000000009_mask_25_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_25_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_25_badDirection_rank rank_000000009_mask_25_badDirection_mask = rank_000000009_mask_25_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_25_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_25_badDirection_b, rank_000000009_mask_25_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_25_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_25_badDirection_rank rank_000000009_mask_25_badDirection_mask ⟨6, by decide⟩ =
      rank_000000009_mask_25_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_25_badDirection_seqAtRank, rank_000000009_mask_25_badDirection_bAtRank]
  norm_num [rank_000000009_mask_25_badDirection_denom, rank_000000009_mask_25_badDirection_seq, rank_000000009_mask_25_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_25_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_25_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_25_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_25_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_25_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_25_badDirection_denom]

private def rank_000000009_mask_26_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_26_badDirection_mask : SignMask := ⟨26, by decide⟩
private def rank_000000009_mask_26_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_26_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_26_badDirection_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-28/9) }
private def rank_000000009_mask_26_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_26_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_26_badDirection_word = some rank_000000009_mask_26_badDirection_rank := by
  decide

private theorem rank_000000009_mask_26_badDirection_unrank :
    unrankPairWord rank_000000009_mask_26_badDirection_rank = rank_000000009_mask_26_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_26_badDirection_word rank_000000009_mask_26_badDirection_rank).1
    rank_000000009_mask_26_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_26_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_26_badDirection_word rank_000000009_mask_26_badDirection_mask = rank_000000009_mask_26_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_26_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_26_badDirection_rank rank_000000009_mask_26_badDirection_mask = rank_000000009_mask_26_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_26_badDirection_unrank]
  exact rank_000000009_mask_26_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_26_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_26_badDirection_rank rank_000000009_mask_26_badDirection_mask = rank_000000009_mask_26_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_26_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_26_badDirection_b, rank_000000009_mask_26_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_26_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_26_badDirection_rank rank_000000009_mask_26_badDirection_mask ⟨4, by decide⟩ =
      rank_000000009_mask_26_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_26_badDirection_seqAtRank, rank_000000009_mask_26_badDirection_bAtRank]
  norm_num [rank_000000009_mask_26_badDirection_denom, rank_000000009_mask_26_badDirection_seq, rank_000000009_mask_26_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_26_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_26_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_26_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_26_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_26_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_26_badDirection_denom]

private def rank_000000009_mask_27_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_27_badDirection_mask : SignMask := ⟨27, by decide⟩
private def rank_000000009_mask_27_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_27_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000009_mask_27_badDirection_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (-28/9) }
private def rank_000000009_mask_27_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_27_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_27_badDirection_word = some rank_000000009_mask_27_badDirection_rank := by
  decide

private theorem rank_000000009_mask_27_badDirection_unrank :
    unrankPairWord rank_000000009_mask_27_badDirection_rank = rank_000000009_mask_27_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_27_badDirection_word rank_000000009_mask_27_badDirection_rank).1
    rank_000000009_mask_27_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_27_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_27_badDirection_word rank_000000009_mask_27_badDirection_mask = rank_000000009_mask_27_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_27_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_27_badDirection_rank rank_000000009_mask_27_badDirection_mask = rank_000000009_mask_27_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_27_badDirection_unrank]
  exact rank_000000009_mask_27_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_27_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_27_badDirection_rank rank_000000009_mask_27_badDirection_mask = rank_000000009_mask_27_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_27_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_27_badDirection_b, rank_000000009_mask_27_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_27_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_27_badDirection_rank rank_000000009_mask_27_badDirection_mask ⟨4, by decide⟩ =
      rank_000000009_mask_27_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_27_badDirection_seqAtRank, rank_000000009_mask_27_badDirection_bAtRank]
  norm_num [rank_000000009_mask_27_badDirection_denom, rank_000000009_mask_27_badDirection_seq, rank_000000009_mask_27_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_27_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_27_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_27_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_27_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_27_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_27_badDirection_denom]

private def rank_000000009_mask_32_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_32_badDirection_mask : SignMask := ⟨32, by decide⟩
private def rank_000000009_mask_32_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_32_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_32_badDirection_b : Vec3 Rat := { x := (76/9), y := (-52/9), z := (-20/9) }
private def rank_000000009_mask_32_badDirection_denom : Rat := (-76/9)

private theorem rank_000000009_mask_32_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_32_badDirection_word = some rank_000000009_mask_32_badDirection_rank := by
  decide

private theorem rank_000000009_mask_32_badDirection_unrank :
    unrankPairWord rank_000000009_mask_32_badDirection_rank = rank_000000009_mask_32_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_32_badDirection_word rank_000000009_mask_32_badDirection_rank).1
    rank_000000009_mask_32_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_32_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_32_badDirection_word rank_000000009_mask_32_badDirection_mask = rank_000000009_mask_32_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_32_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_32_badDirection_rank rank_000000009_mask_32_badDirection_mask = rank_000000009_mask_32_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_32_badDirection_unrank]
  exact rank_000000009_mask_32_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_32_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_32_badDirection_rank rank_000000009_mask_32_badDirection_mask = rank_000000009_mask_32_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_32_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_32_badDirection_b, rank_000000009_mask_32_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_32_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_32_badDirection_rank rank_000000009_mask_32_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_32_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_32_badDirection_seqAtRank, rank_000000009_mask_32_badDirection_bAtRank]
  norm_num [rank_000000009_mask_32_badDirection_denom, rank_000000009_mask_32_badDirection_seq, rank_000000009_mask_32_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_32_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_32_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_32_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_32_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_32_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_32_badDirection_denom]

private def rank_000000009_mask_33_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_33_badDirection_mask : SignMask := ⟨33, by decide⟩
private def rank_000000009_mask_33_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_33_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_33_badDirection_b : Vec3 Rat := { x := (76/9), y := (20/9), z := (-20/9) }
private def rank_000000009_mask_33_badDirection_denom : Rat := (-76/9)

private theorem rank_000000009_mask_33_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_33_badDirection_word = some rank_000000009_mask_33_badDirection_rank := by
  decide

private theorem rank_000000009_mask_33_badDirection_unrank :
    unrankPairWord rank_000000009_mask_33_badDirection_rank = rank_000000009_mask_33_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_33_badDirection_word rank_000000009_mask_33_badDirection_rank).1
    rank_000000009_mask_33_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_33_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_33_badDirection_word rank_000000009_mask_33_badDirection_mask = rank_000000009_mask_33_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_33_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_33_badDirection_rank rank_000000009_mask_33_badDirection_mask = rank_000000009_mask_33_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_33_badDirection_unrank]
  exact rank_000000009_mask_33_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_33_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_33_badDirection_rank rank_000000009_mask_33_badDirection_mask = rank_000000009_mask_33_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_33_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_33_badDirection_b, rank_000000009_mask_33_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_33_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_33_badDirection_rank rank_000000009_mask_33_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_33_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_33_badDirection_seqAtRank, rank_000000009_mask_33_badDirection_bAtRank]
  norm_num [rank_000000009_mask_33_badDirection_denom, rank_000000009_mask_33_badDirection_seq, rank_000000009_mask_33_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_33_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_33_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_33_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_33_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_33_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_33_badDirection_denom]

private def rank_000000009_mask_34_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_34_badDirection_mask : SignMask := ⟨34, by decide⟩
private def rank_000000009_mask_34_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_34_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_34_badDirection_b : Vec3 Rat := { x := (76/9), y := (-52/9), z := (52/9) }
private def rank_000000009_mask_34_badDirection_denom : Rat := (-76/9)

private theorem rank_000000009_mask_34_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_34_badDirection_word = some rank_000000009_mask_34_badDirection_rank := by
  decide

private theorem rank_000000009_mask_34_badDirection_unrank :
    unrankPairWord rank_000000009_mask_34_badDirection_rank = rank_000000009_mask_34_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_34_badDirection_word rank_000000009_mask_34_badDirection_rank).1
    rank_000000009_mask_34_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_34_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_34_badDirection_word rank_000000009_mask_34_badDirection_mask = rank_000000009_mask_34_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_34_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_34_badDirection_rank rank_000000009_mask_34_badDirection_mask = rank_000000009_mask_34_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_34_badDirection_unrank]
  exact rank_000000009_mask_34_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_34_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_34_badDirection_rank rank_000000009_mask_34_badDirection_mask = rank_000000009_mask_34_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_34_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_34_badDirection_b, rank_000000009_mask_34_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_34_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_34_badDirection_rank rank_000000009_mask_34_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_34_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_34_badDirection_seqAtRank, rank_000000009_mask_34_badDirection_bAtRank]
  norm_num [rank_000000009_mask_34_badDirection_denom, rank_000000009_mask_34_badDirection_seq, rank_000000009_mask_34_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_34_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_34_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_34_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_34_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_34_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_34_badDirection_denom]

private def rank_000000009_mask_35_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_35_badDirection_mask : SignMask := ⟨35, by decide⟩
private def rank_000000009_mask_35_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_35_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_35_badDirection_b : Vec3 Rat := { x := (76/9), y := (20/9), z := (52/9) }
private def rank_000000009_mask_35_badDirection_denom : Rat := (-76/9)

private theorem rank_000000009_mask_35_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_35_badDirection_word = some rank_000000009_mask_35_badDirection_rank := by
  decide

private theorem rank_000000009_mask_35_badDirection_unrank :
    unrankPairWord rank_000000009_mask_35_badDirection_rank = rank_000000009_mask_35_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_35_badDirection_word rank_000000009_mask_35_badDirection_rank).1
    rank_000000009_mask_35_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_35_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_35_badDirection_word rank_000000009_mask_35_badDirection_mask = rank_000000009_mask_35_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_35_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_35_badDirection_rank rank_000000009_mask_35_badDirection_mask = rank_000000009_mask_35_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_35_badDirection_unrank]
  exact rank_000000009_mask_35_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_35_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_35_badDirection_rank rank_000000009_mask_35_badDirection_mask = rank_000000009_mask_35_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_35_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_35_badDirection_b, rank_000000009_mask_35_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_35_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_35_badDirection_rank rank_000000009_mask_35_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_35_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_35_badDirection_seqAtRank, rank_000000009_mask_35_badDirection_bAtRank]
  norm_num [rank_000000009_mask_35_badDirection_denom, rank_000000009_mask_35_badDirection_seq, rank_000000009_mask_35_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_35_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_35_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_35_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_35_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_35_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_35_badDirection_denom]

private def rank_000000009_mask_36_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_36_badDirection_mask : SignMask := ⟨36, by decide⟩
private def rank_000000009_mask_36_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_36_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_36_badDirection_b : Vec3 Rat := { x := (28/9), y := (-4/9), z := (28/9) }
private def rank_000000009_mask_36_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_36_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_36_badDirection_word = some rank_000000009_mask_36_badDirection_rank := by
  decide

private theorem rank_000000009_mask_36_badDirection_unrank :
    unrankPairWord rank_000000009_mask_36_badDirection_rank = rank_000000009_mask_36_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_36_badDirection_word rank_000000009_mask_36_badDirection_rank).1
    rank_000000009_mask_36_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_36_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_36_badDirection_word rank_000000009_mask_36_badDirection_mask = rank_000000009_mask_36_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_36_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_36_badDirection_rank rank_000000009_mask_36_badDirection_mask = rank_000000009_mask_36_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_36_badDirection_unrank]
  exact rank_000000009_mask_36_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_36_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_36_badDirection_rank rank_000000009_mask_36_badDirection_mask = rank_000000009_mask_36_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_36_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_36_badDirection_b, rank_000000009_mask_36_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_36_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_36_badDirection_rank rank_000000009_mask_36_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_36_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_36_badDirection_seqAtRank, rank_000000009_mask_36_badDirection_bAtRank]
  norm_num [rank_000000009_mask_36_badDirection_denom, rank_000000009_mask_36_badDirection_seq, rank_000000009_mask_36_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_36_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_36_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_36_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_36_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_36_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_36_badDirection_denom]

private def rank_000000009_mask_37_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_37_badDirection_mask : SignMask := ⟨37, by decide⟩
private def rank_000000009_mask_37_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_37_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_37_badDirection_b : Vec3 Rat := { x := (28/9), y := (68/9), z := (28/9) }
private def rank_000000009_mask_37_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_37_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_37_badDirection_word = some rank_000000009_mask_37_badDirection_rank := by
  decide

private theorem rank_000000009_mask_37_badDirection_unrank :
    unrankPairWord rank_000000009_mask_37_badDirection_rank = rank_000000009_mask_37_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_37_badDirection_word rank_000000009_mask_37_badDirection_rank).1
    rank_000000009_mask_37_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_37_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_37_badDirection_word rank_000000009_mask_37_badDirection_mask = rank_000000009_mask_37_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_37_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_37_badDirection_rank rank_000000009_mask_37_badDirection_mask = rank_000000009_mask_37_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_37_badDirection_unrank]
  exact rank_000000009_mask_37_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_37_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_37_badDirection_rank rank_000000009_mask_37_badDirection_mask = rank_000000009_mask_37_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_37_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_37_badDirection_b, rank_000000009_mask_37_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_37_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_37_badDirection_rank rank_000000009_mask_37_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_37_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_37_badDirection_seqAtRank, rank_000000009_mask_37_badDirection_bAtRank]
  norm_num [rank_000000009_mask_37_badDirection_denom, rank_000000009_mask_37_badDirection_seq, rank_000000009_mask_37_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_37_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_37_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_37_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_37_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_37_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_37_badDirection_denom]

private def rank_000000009_mask_38_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_38_badDirection_mask : SignMask := ⟨38, by decide⟩
private def rank_000000009_mask_38_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_38_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_38_badDirection_b : Vec3 Rat := { x := (28/9), y := (-4/9), z := (100/9) }
private def rank_000000009_mask_38_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_38_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_38_badDirection_word = some rank_000000009_mask_38_badDirection_rank := by
  decide

private theorem rank_000000009_mask_38_badDirection_unrank :
    unrankPairWord rank_000000009_mask_38_badDirection_rank = rank_000000009_mask_38_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_38_badDirection_word rank_000000009_mask_38_badDirection_rank).1
    rank_000000009_mask_38_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_38_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_38_badDirection_word rank_000000009_mask_38_badDirection_mask = rank_000000009_mask_38_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_38_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_38_badDirection_rank rank_000000009_mask_38_badDirection_mask = rank_000000009_mask_38_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_38_badDirection_unrank]
  exact rank_000000009_mask_38_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_38_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_38_badDirection_rank rank_000000009_mask_38_badDirection_mask = rank_000000009_mask_38_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_38_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_38_badDirection_b, rank_000000009_mask_38_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_38_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_38_badDirection_rank rank_000000009_mask_38_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_38_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_38_badDirection_seqAtRank, rank_000000009_mask_38_badDirection_bAtRank]
  norm_num [rank_000000009_mask_38_badDirection_denom, rank_000000009_mask_38_badDirection_seq, rank_000000009_mask_38_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_38_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_38_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_38_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_38_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_38_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_38_badDirection_denom]

private def rank_000000009_mask_39_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_39_badDirection_mask : SignMask := ⟨39, by decide⟩
private def rank_000000009_mask_39_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_39_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_39_badDirection_b : Vec3 Rat := { x := (28/9), y := (68/9), z := (100/9) }
private def rank_000000009_mask_39_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_39_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_39_badDirection_word = some rank_000000009_mask_39_badDirection_rank := by
  decide

private theorem rank_000000009_mask_39_badDirection_unrank :
    unrankPairWord rank_000000009_mask_39_badDirection_rank = rank_000000009_mask_39_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_39_badDirection_word rank_000000009_mask_39_badDirection_rank).1
    rank_000000009_mask_39_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_39_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_39_badDirection_word rank_000000009_mask_39_badDirection_mask = rank_000000009_mask_39_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_39_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_39_badDirection_rank rank_000000009_mask_39_badDirection_mask = rank_000000009_mask_39_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_39_badDirection_unrank]
  exact rank_000000009_mask_39_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_39_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_39_badDirection_rank rank_000000009_mask_39_badDirection_mask = rank_000000009_mask_39_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_39_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_39_badDirection_b, rank_000000009_mask_39_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_39_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_39_badDirection_rank rank_000000009_mask_39_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_39_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_39_badDirection_seqAtRank, rank_000000009_mask_39_badDirection_bAtRank]
  norm_num [rank_000000009_mask_39_badDirection_denom, rank_000000009_mask_39_badDirection_seq, rank_000000009_mask_39_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_39_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_39_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_39_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_39_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_39_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_39_badDirection_denom]

private def rank_000000009_mask_40_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_40_badDirection_mask : SignMask := ⟨40, by decide⟩
private def rank_000000009_mask_40_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_40_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_40_badDirection_b : Vec3 Rat := { x := (28/9), y := (-4/9), z := (-68/9) }
private def rank_000000009_mask_40_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_40_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_40_badDirection_word = some rank_000000009_mask_40_badDirection_rank := by
  decide

private theorem rank_000000009_mask_40_badDirection_unrank :
    unrankPairWord rank_000000009_mask_40_badDirection_rank = rank_000000009_mask_40_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_40_badDirection_word rank_000000009_mask_40_badDirection_rank).1
    rank_000000009_mask_40_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_40_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_40_badDirection_word rank_000000009_mask_40_badDirection_mask = rank_000000009_mask_40_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_40_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_40_badDirection_rank rank_000000009_mask_40_badDirection_mask = rank_000000009_mask_40_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_40_badDirection_unrank]
  exact rank_000000009_mask_40_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_40_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_40_badDirection_rank rank_000000009_mask_40_badDirection_mask = rank_000000009_mask_40_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_40_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_40_badDirection_b, rank_000000009_mask_40_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_40_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_40_badDirection_rank rank_000000009_mask_40_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_40_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_40_badDirection_seqAtRank, rank_000000009_mask_40_badDirection_bAtRank]
  norm_num [rank_000000009_mask_40_badDirection_denom, rank_000000009_mask_40_badDirection_seq, rank_000000009_mask_40_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_40_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_40_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_40_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_40_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_40_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_40_badDirection_denom]

private def rank_000000009_mask_41_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_41_badDirection_mask : SignMask := ⟨41, by decide⟩
private def rank_000000009_mask_41_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_41_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_41_badDirection_b : Vec3 Rat := { x := (28/9), y := (68/9), z := (-68/9) }
private def rank_000000009_mask_41_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_41_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_41_badDirection_word = some rank_000000009_mask_41_badDirection_rank := by
  decide

private theorem rank_000000009_mask_41_badDirection_unrank :
    unrankPairWord rank_000000009_mask_41_badDirection_rank = rank_000000009_mask_41_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_41_badDirection_word rank_000000009_mask_41_badDirection_rank).1
    rank_000000009_mask_41_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_41_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_41_badDirection_word rank_000000009_mask_41_badDirection_mask = rank_000000009_mask_41_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_41_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_41_badDirection_rank rank_000000009_mask_41_badDirection_mask = rank_000000009_mask_41_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_41_badDirection_unrank]
  exact rank_000000009_mask_41_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_41_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_41_badDirection_rank rank_000000009_mask_41_badDirection_mask = rank_000000009_mask_41_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_41_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_41_badDirection_b, rank_000000009_mask_41_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_41_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_41_badDirection_rank rank_000000009_mask_41_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_41_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_41_badDirection_seqAtRank, rank_000000009_mask_41_badDirection_bAtRank]
  norm_num [rank_000000009_mask_41_badDirection_denom, rank_000000009_mask_41_badDirection_seq, rank_000000009_mask_41_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_41_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_41_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_41_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_41_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_41_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_41_badDirection_denom]

private def rank_000000009_mask_42_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_42_badDirection_mask : SignMask := ⟨42, by decide⟩
private def rank_000000009_mask_42_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_42_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_42_badDirection_b : Vec3 Rat := { x := (28/9), y := (-4/9), z := (4/9) }
private def rank_000000009_mask_42_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_42_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_42_badDirection_word = some rank_000000009_mask_42_badDirection_rank := by
  decide

private theorem rank_000000009_mask_42_badDirection_unrank :
    unrankPairWord rank_000000009_mask_42_badDirection_rank = rank_000000009_mask_42_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_42_badDirection_word rank_000000009_mask_42_badDirection_rank).1
    rank_000000009_mask_42_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_42_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_42_badDirection_word rank_000000009_mask_42_badDirection_mask = rank_000000009_mask_42_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_42_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_42_badDirection_rank rank_000000009_mask_42_badDirection_mask = rank_000000009_mask_42_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_42_badDirection_unrank]
  exact rank_000000009_mask_42_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_42_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_42_badDirection_rank rank_000000009_mask_42_badDirection_mask = rank_000000009_mask_42_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_42_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_42_badDirection_b, rank_000000009_mask_42_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_42_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_42_badDirection_rank rank_000000009_mask_42_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_42_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_42_badDirection_seqAtRank, rank_000000009_mask_42_badDirection_bAtRank]
  norm_num [rank_000000009_mask_42_badDirection_denom, rank_000000009_mask_42_badDirection_seq, rank_000000009_mask_42_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_42_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_42_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_42_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_42_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_42_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_42_badDirection_denom]

private def rank_000000009_mask_43_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_43_badDirection_mask : SignMask := ⟨43, by decide⟩
private def rank_000000009_mask_43_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_43_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_43_badDirection_b : Vec3 Rat := { x := (28/9), y := (68/9), z := (4/9) }
private def rank_000000009_mask_43_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_43_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_43_badDirection_word = some rank_000000009_mask_43_badDirection_rank := by
  decide

private theorem rank_000000009_mask_43_badDirection_unrank :
    unrankPairWord rank_000000009_mask_43_badDirection_rank = rank_000000009_mask_43_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_43_badDirection_word rank_000000009_mask_43_badDirection_rank).1
    rank_000000009_mask_43_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_43_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_43_badDirection_word rank_000000009_mask_43_badDirection_mask = rank_000000009_mask_43_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_43_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_43_badDirection_rank rank_000000009_mask_43_badDirection_mask = rank_000000009_mask_43_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_43_badDirection_unrank]
  exact rank_000000009_mask_43_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_43_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_43_badDirection_rank rank_000000009_mask_43_badDirection_mask = rank_000000009_mask_43_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_43_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_43_badDirection_b, rank_000000009_mask_43_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_43_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_43_badDirection_rank rank_000000009_mask_43_badDirection_mask ⟨1, by decide⟩ =
      rank_000000009_mask_43_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_43_badDirection_seqAtRank, rank_000000009_mask_43_badDirection_bAtRank]
  norm_num [rank_000000009_mask_43_badDirection_denom, rank_000000009_mask_43_badDirection_seq, rank_000000009_mask_43_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_43_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_43_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_43_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_43_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_43_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_43_badDirection_denom]

private def rank_000000009_mask_44_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_44_badDirection_mask : SignMask := ⟨44, by decide⟩
private def rank_000000009_mask_44_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_44_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_44_badDirection_b : Vec3 Rat := { x := (-20/9), y := (44/9), z := (-20/9) }
private def rank_000000009_mask_44_badDirection_denom : Rat := (-44/9)

private theorem rank_000000009_mask_44_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_44_badDirection_word = some rank_000000009_mask_44_badDirection_rank := by
  decide

private theorem rank_000000009_mask_44_badDirection_unrank :
    unrankPairWord rank_000000009_mask_44_badDirection_rank = rank_000000009_mask_44_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_44_badDirection_word rank_000000009_mask_44_badDirection_rank).1
    rank_000000009_mask_44_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_44_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_44_badDirection_word rank_000000009_mask_44_badDirection_mask = rank_000000009_mask_44_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_44_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_44_badDirection_rank rank_000000009_mask_44_badDirection_mask = rank_000000009_mask_44_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_44_badDirection_unrank]
  exact rank_000000009_mask_44_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_44_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_44_badDirection_rank rank_000000009_mask_44_badDirection_mask = rank_000000009_mask_44_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_44_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_44_badDirection_b, rank_000000009_mask_44_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_44_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_44_badDirection_rank rank_000000009_mask_44_badDirection_mask ⟨2, by decide⟩ =
      rank_000000009_mask_44_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_44_badDirection_seqAtRank, rank_000000009_mask_44_badDirection_bAtRank]
  norm_num [rank_000000009_mask_44_badDirection_denom, rank_000000009_mask_44_badDirection_seq, rank_000000009_mask_44_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_44_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_44_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_44_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_44_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_44_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_44_badDirection_denom]

private def rank_000000009_mask_46_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_46_badDirection_mask : SignMask := ⟨46, by decide⟩
private def rank_000000009_mask_46_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_46_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_46_badDirection_b : Vec3 Rat := { x := (-20/9), y := (44/9), z := (52/9) }
private def rank_000000009_mask_46_badDirection_denom : Rat := (-44/9)

private theorem rank_000000009_mask_46_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_46_badDirection_word = some rank_000000009_mask_46_badDirection_rank := by
  decide

private theorem rank_000000009_mask_46_badDirection_unrank :
    unrankPairWord rank_000000009_mask_46_badDirection_rank = rank_000000009_mask_46_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_46_badDirection_word rank_000000009_mask_46_badDirection_rank).1
    rank_000000009_mask_46_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_46_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_46_badDirection_word rank_000000009_mask_46_badDirection_mask = rank_000000009_mask_46_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_46_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_46_badDirection_rank rank_000000009_mask_46_badDirection_mask = rank_000000009_mask_46_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_46_badDirection_unrank]
  exact rank_000000009_mask_46_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_46_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_46_badDirection_rank rank_000000009_mask_46_badDirection_mask = rank_000000009_mask_46_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_46_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_46_badDirection_b, rank_000000009_mask_46_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_46_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_46_badDirection_rank rank_000000009_mask_46_badDirection_mask ⟨2, by decide⟩ =
      rank_000000009_mask_46_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_46_badDirection_seqAtRank, rank_000000009_mask_46_badDirection_bAtRank]
  norm_num [rank_000000009_mask_46_badDirection_denom, rank_000000009_mask_46_badDirection_seq, rank_000000009_mask_46_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_46_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_46_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_46_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_46_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_46_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_46_badDirection_denom]

private def rank_000000009_mask_47_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_47_badDirection_mask : SignMask := ⟨47, by decide⟩
private def rank_000000009_mask_47_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_47_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_47_badDirection_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (52/9) }
private def rank_000000009_mask_47_badDirection_denom : Rat := (-4/3)

private theorem rank_000000009_mask_47_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_47_badDirection_word = some rank_000000009_mask_47_badDirection_rank := by
  decide

private theorem rank_000000009_mask_47_badDirection_unrank :
    unrankPairWord rank_000000009_mask_47_badDirection_rank = rank_000000009_mask_47_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_47_badDirection_word rank_000000009_mask_47_badDirection_rank).1
    rank_000000009_mask_47_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_47_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_47_badDirection_word rank_000000009_mask_47_badDirection_mask = rank_000000009_mask_47_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_47_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_47_badDirection_rank rank_000000009_mask_47_badDirection_mask = rank_000000009_mask_47_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_47_badDirection_unrank]
  exact rank_000000009_mask_47_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_47_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_47_badDirection_rank rank_000000009_mask_47_badDirection_mask = rank_000000009_mask_47_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_47_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_47_badDirection_b, rank_000000009_mask_47_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_47_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_47_badDirection_rank rank_000000009_mask_47_badDirection_mask ⟨9, by decide⟩ =
      rank_000000009_mask_47_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_47_badDirection_seqAtRank, rank_000000009_mask_47_badDirection_bAtRank]
  norm_num [rank_000000009_mask_47_badDirection_denom, rank_000000009_mask_47_badDirection_seq, rank_000000009_mask_47_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_47_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_47_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_47_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_47_badDirection_mask)
      (i := ⟨9, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_47_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_47_badDirection_denom]

private def rank_000000009_mask_48_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_48_badDirection_mask : SignMask := ⟨48, by decide⟩
private def rank_000000009_mask_48_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_48_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_48_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-68/9), z := (-4/9) }
private def rank_000000009_mask_48_badDirection_denom : Rat := (-76/9)

private theorem rank_000000009_mask_48_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_48_badDirection_word = some rank_000000009_mask_48_badDirection_rank := by
  decide

private theorem rank_000000009_mask_48_badDirection_unrank :
    unrankPairWord rank_000000009_mask_48_badDirection_rank = rank_000000009_mask_48_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_48_badDirection_word rank_000000009_mask_48_badDirection_rank).1
    rank_000000009_mask_48_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_48_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_48_badDirection_word rank_000000009_mask_48_badDirection_mask = rank_000000009_mask_48_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_48_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_48_badDirection_rank rank_000000009_mask_48_badDirection_mask = rank_000000009_mask_48_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_48_badDirection_unrank]
  exact rank_000000009_mask_48_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_48_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_48_badDirection_rank rank_000000009_mask_48_badDirection_mask = rank_000000009_mask_48_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_48_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_48_badDirection_b, rank_000000009_mask_48_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_48_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_48_badDirection_rank rank_000000009_mask_48_badDirection_mask ⟨12, by decide⟩ =
      rank_000000009_mask_48_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_48_badDirection_seqAtRank, rank_000000009_mask_48_badDirection_bAtRank]
  norm_num [rank_000000009_mask_48_badDirection_denom, rank_000000009_mask_48_badDirection_seq, rank_000000009_mask_48_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_48_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_48_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_48_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_48_badDirection_mask)
      (i := ⟨12, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_48_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_48_badDirection_denom]

private def rank_000000009_mask_49_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_49_badDirection_mask : SignMask := ⟨49, by decide⟩
private def rank_000000009_mask_49_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_49_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_49_badDirection_b : Vec3 Rat := { x := (-4/9), y := (4/9), z := (-4/9) }
private def rank_000000009_mask_49_badDirection_denom : Rat := (-4/9)

private theorem rank_000000009_mask_49_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_49_badDirection_word = some rank_000000009_mask_49_badDirection_rank := by
  decide

private theorem rank_000000009_mask_49_badDirection_unrank :
    unrankPairWord rank_000000009_mask_49_badDirection_rank = rank_000000009_mask_49_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_49_badDirection_word rank_000000009_mask_49_badDirection_rank).1
    rank_000000009_mask_49_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_49_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_49_badDirection_word rank_000000009_mask_49_badDirection_mask = rank_000000009_mask_49_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_49_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_49_badDirection_rank rank_000000009_mask_49_badDirection_mask = rank_000000009_mask_49_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_49_badDirection_unrank]
  exact rank_000000009_mask_49_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_49_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_49_badDirection_rank rank_000000009_mask_49_badDirection_mask = rank_000000009_mask_49_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_49_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_49_badDirection_b, rank_000000009_mask_49_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_49_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_49_badDirection_rank rank_000000009_mask_49_badDirection_mask ⟨6, by decide⟩ =
      rank_000000009_mask_49_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_49_badDirection_seqAtRank, rank_000000009_mask_49_badDirection_bAtRank]
  norm_num [rank_000000009_mask_49_badDirection_denom, rank_000000009_mask_49_badDirection_seq, rank_000000009_mask_49_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_49_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_49_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_49_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_49_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_49_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_49_badDirection_denom]

private def rank_000000009_mask_50_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_50_badDirection_mask : SignMask := ⟨50, by decide⟩
private def rank_000000009_mask_50_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_50_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_50_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-68/9), z := (68/9) }
private def rank_000000009_mask_50_badDirection_denom : Rat := (-4/9)

private theorem rank_000000009_mask_50_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_50_badDirection_word = some rank_000000009_mask_50_badDirection_rank := by
  decide

private theorem rank_000000009_mask_50_badDirection_unrank :
    unrankPairWord rank_000000009_mask_50_badDirection_rank = rank_000000009_mask_50_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_50_badDirection_word rank_000000009_mask_50_badDirection_rank).1
    rank_000000009_mask_50_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_50_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_50_badDirection_word rank_000000009_mask_50_badDirection_mask = rank_000000009_mask_50_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_50_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_50_badDirection_rank rank_000000009_mask_50_badDirection_mask = rank_000000009_mask_50_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_50_badDirection_unrank]
  exact rank_000000009_mask_50_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_50_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_50_badDirection_rank rank_000000009_mask_50_badDirection_mask = rank_000000009_mask_50_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_50_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_50_badDirection_b, rank_000000009_mask_50_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_50_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_50_badDirection_rank rank_000000009_mask_50_badDirection_mask ⟨6, by decide⟩ =
      rank_000000009_mask_50_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_50_badDirection_seqAtRank, rank_000000009_mask_50_badDirection_bAtRank]
  norm_num [rank_000000009_mask_50_badDirection_denom, rank_000000009_mask_50_badDirection_seq, rank_000000009_mask_50_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_50_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_50_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_50_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_50_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_50_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_50_badDirection_denom]

private def rank_000000009_mask_51_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_51_badDirection_mask : SignMask := ⟨51, by decide⟩
private def rank_000000009_mask_51_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_51_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_51_badDirection_b : Vec3 Rat := { x := (-4/9), y := (4/9), z := (68/9) }
private def rank_000000009_mask_51_badDirection_denom : Rat := (-76/9)

private theorem rank_000000009_mask_51_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_51_badDirection_word = some rank_000000009_mask_51_badDirection_rank := by
  decide

private theorem rank_000000009_mask_51_badDirection_unrank :
    unrankPairWord rank_000000009_mask_51_badDirection_rank = rank_000000009_mask_51_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_51_badDirection_word rank_000000009_mask_51_badDirection_rank).1
    rank_000000009_mask_51_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_51_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_51_badDirection_word rank_000000009_mask_51_badDirection_mask = rank_000000009_mask_51_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_51_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_51_badDirection_rank rank_000000009_mask_51_badDirection_mask = rank_000000009_mask_51_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_51_badDirection_unrank]
  exact rank_000000009_mask_51_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_51_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_51_badDirection_rank rank_000000009_mask_51_badDirection_mask = rank_000000009_mask_51_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_51_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_51_badDirection_b, rank_000000009_mask_51_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_51_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_51_badDirection_rank rank_000000009_mask_51_badDirection_mask ⟨6, by decide⟩ =
      rank_000000009_mask_51_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_51_badDirection_seqAtRank, rank_000000009_mask_51_badDirection_bAtRank]
  norm_num [rank_000000009_mask_51_badDirection_denom, rank_000000009_mask_51_badDirection_seq, rank_000000009_mask_51_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_51_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_51_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_51_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_51_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_51_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_51_badDirection_denom]

private def rank_000000009_mask_52_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_52_badDirection_mask : SignMask := ⟨52, by decide⟩
private def rank_000000009_mask_52_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_52_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_52_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (44/9) }
private def rank_000000009_mask_52_badDirection_denom : Rat := (-44/9)

private theorem rank_000000009_mask_52_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_52_badDirection_word = some rank_000000009_mask_52_badDirection_rank := by
  decide

private theorem rank_000000009_mask_52_badDirection_unrank :
    unrankPairWord rank_000000009_mask_52_badDirection_rank = rank_000000009_mask_52_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_52_badDirection_word rank_000000009_mask_52_badDirection_rank).1
    rank_000000009_mask_52_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_52_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_52_badDirection_word rank_000000009_mask_52_badDirection_mask = rank_000000009_mask_52_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_52_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_52_badDirection_rank rank_000000009_mask_52_badDirection_mask = rank_000000009_mask_52_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_52_badDirection_unrank]
  exact rank_000000009_mask_52_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_52_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_52_badDirection_rank rank_000000009_mask_52_badDirection_mask = rank_000000009_mask_52_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_52_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_52_badDirection_b, rank_000000009_mask_52_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_52_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_52_badDirection_rank rank_000000009_mask_52_badDirection_mask ⟨4, by decide⟩ =
      rank_000000009_mask_52_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_52_badDirection_seqAtRank, rank_000000009_mask_52_badDirection_bAtRank]
  norm_num [rank_000000009_mask_52_badDirection_denom, rank_000000009_mask_52_badDirection_seq, rank_000000009_mask_52_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_52_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_52_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_52_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_52_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_52_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_52_badDirection_denom]

private def rank_000000009_mask_53_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_53_badDirection_mask : SignMask := ⟨53, by decide⟩
private def rank_000000009_mask_53_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_53_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_53_badDirection_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (44/9) }
private def rank_000000009_mask_53_badDirection_denom : Rat := (-44/9)

private theorem rank_000000009_mask_53_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_53_badDirection_word = some rank_000000009_mask_53_badDirection_rank := by
  decide

private theorem rank_000000009_mask_53_badDirection_unrank :
    unrankPairWord rank_000000009_mask_53_badDirection_rank = rank_000000009_mask_53_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_53_badDirection_word rank_000000009_mask_53_badDirection_rank).1
    rank_000000009_mask_53_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_53_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_53_badDirection_word rank_000000009_mask_53_badDirection_mask = rank_000000009_mask_53_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_53_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_53_badDirection_rank rank_000000009_mask_53_badDirection_mask = rank_000000009_mask_53_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_53_badDirection_unrank]
  exact rank_000000009_mask_53_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_53_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_53_badDirection_rank rank_000000009_mask_53_badDirection_mask = rank_000000009_mask_53_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_53_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_53_badDirection_b, rank_000000009_mask_53_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_53_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_53_badDirection_rank rank_000000009_mask_53_badDirection_mask ⟨4, by decide⟩ =
      rank_000000009_mask_53_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_53_badDirection_seqAtRank, rank_000000009_mask_53_badDirection_bAtRank]
  norm_num [rank_000000009_mask_53_badDirection_denom, rank_000000009_mask_53_badDirection_seq, rank_000000009_mask_53_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_53_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_53_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_53_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_53_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_53_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_53_badDirection_denom]

private def rank_000000009_mask_56_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_56_badDirection_mask : SignMask := ⟨56, by decide⟩
private def rank_000000009_mask_56_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_56_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_56_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (-52/9) }
private def rank_000000009_mask_56_badDirection_denom : Rat := (-124/9)

private theorem rank_000000009_mask_56_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_56_badDirection_word = some rank_000000009_mask_56_badDirection_rank := by
  decide

private theorem rank_000000009_mask_56_badDirection_unrank :
    unrankPairWord rank_000000009_mask_56_badDirection_rank = rank_000000009_mask_56_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_56_badDirection_word rank_000000009_mask_56_badDirection_rank).1
    rank_000000009_mask_56_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_56_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_56_badDirection_word rank_000000009_mask_56_badDirection_mask = rank_000000009_mask_56_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_56_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_56_badDirection_rank rank_000000009_mask_56_badDirection_mask = rank_000000009_mask_56_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_56_badDirection_unrank]
  exact rank_000000009_mask_56_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_56_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_56_badDirection_rank rank_000000009_mask_56_badDirection_mask = rank_000000009_mask_56_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_56_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_56_badDirection_b, rank_000000009_mask_56_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_56_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_56_badDirection_rank rank_000000009_mask_56_badDirection_mask ⟨12, by decide⟩ =
      rank_000000009_mask_56_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_56_badDirection_seqAtRank, rank_000000009_mask_56_badDirection_bAtRank]
  norm_num [rank_000000009_mask_56_badDirection_denom, rank_000000009_mask_56_badDirection_seq, rank_000000009_mask_56_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_56_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_56_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_56_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_56_badDirection_mask)
      (i := ⟨12, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_56_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_56_badDirection_denom]

private def rank_000000009_mask_57_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_57_badDirection_mask : SignMask := ⟨57, by decide⟩
private def rank_000000009_mask_57_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_57_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_57_badDirection_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-52/9) }
private def rank_000000009_mask_57_badDirection_denom : Rat := (-52/9)

private theorem rank_000000009_mask_57_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_57_badDirection_word = some rank_000000009_mask_57_badDirection_rank := by
  decide

private theorem rank_000000009_mask_57_badDirection_unrank :
    unrankPairWord rank_000000009_mask_57_badDirection_rank = rank_000000009_mask_57_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_57_badDirection_word rank_000000009_mask_57_badDirection_rank).1
    rank_000000009_mask_57_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_57_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_57_badDirection_word rank_000000009_mask_57_badDirection_mask = rank_000000009_mask_57_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_57_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_57_badDirection_rank rank_000000009_mask_57_badDirection_mask = rank_000000009_mask_57_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_57_badDirection_unrank]
  exact rank_000000009_mask_57_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_57_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_57_badDirection_rank rank_000000009_mask_57_badDirection_mask = rank_000000009_mask_57_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_57_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_57_badDirection_b, rank_000000009_mask_57_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_57_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_57_badDirection_rank rank_000000009_mask_57_badDirection_mask ⟨6, by decide⟩ =
      rank_000000009_mask_57_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_57_badDirection_seqAtRank, rank_000000009_mask_57_badDirection_bAtRank]
  norm_num [rank_000000009_mask_57_badDirection_denom, rank_000000009_mask_57_badDirection_seq, rank_000000009_mask_57_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_57_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_57_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_57_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_57_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_57_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_57_badDirection_denom]

private def rank_000000009_mask_58_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_58_badDirection_mask : SignMask := ⟨58, by decide⟩
private def rank_000000009_mask_58_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_58_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_58_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (20/9) }
private def rank_000000009_mask_58_badDirection_denom : Rat := (-52/9)

private theorem rank_000000009_mask_58_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_58_badDirection_word = some rank_000000009_mask_58_badDirection_rank := by
  decide

private theorem rank_000000009_mask_58_badDirection_unrank :
    unrankPairWord rank_000000009_mask_58_badDirection_rank = rank_000000009_mask_58_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_58_badDirection_word rank_000000009_mask_58_badDirection_rank).1
    rank_000000009_mask_58_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_58_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_58_badDirection_word rank_000000009_mask_58_badDirection_mask = rank_000000009_mask_58_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_58_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_58_badDirection_rank rank_000000009_mask_58_badDirection_mask = rank_000000009_mask_58_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_58_badDirection_unrank]
  exact rank_000000009_mask_58_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_58_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_58_badDirection_rank rank_000000009_mask_58_badDirection_mask = rank_000000009_mask_58_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_58_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_58_badDirection_b, rank_000000009_mask_58_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_58_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_58_badDirection_rank rank_000000009_mask_58_badDirection_mask ⟨6, by decide⟩ =
      rank_000000009_mask_58_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_58_badDirection_seqAtRank, rank_000000009_mask_58_badDirection_bAtRank]
  norm_num [rank_000000009_mask_58_badDirection_denom, rank_000000009_mask_58_badDirection_seq, rank_000000009_mask_58_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_58_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_58_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_58_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_58_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_58_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_58_badDirection_denom]

private def rank_000000009_mask_59_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_59_badDirection_mask : SignMask := ⟨59, by decide⟩
private def rank_000000009_mask_59_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_59_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_59_badDirection_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (20/9) }
private def rank_000000009_mask_59_badDirection_denom : Rat := (-124/9)

private theorem rank_000000009_mask_59_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_59_badDirection_word = some rank_000000009_mask_59_badDirection_rank := by
  decide

private theorem rank_000000009_mask_59_badDirection_unrank :
    unrankPairWord rank_000000009_mask_59_badDirection_rank = rank_000000009_mask_59_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_59_badDirection_word rank_000000009_mask_59_badDirection_rank).1
    rank_000000009_mask_59_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_59_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_59_badDirection_word rank_000000009_mask_59_badDirection_mask = rank_000000009_mask_59_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_59_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_59_badDirection_rank rank_000000009_mask_59_badDirection_mask = rank_000000009_mask_59_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_59_badDirection_unrank]
  exact rank_000000009_mask_59_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_59_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_59_badDirection_rank rank_000000009_mask_59_badDirection_mask = rank_000000009_mask_59_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_59_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_59_badDirection_b, rank_000000009_mask_59_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_59_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_59_badDirection_rank rank_000000009_mask_59_badDirection_mask ⟨6, by decide⟩ =
      rank_000000009_mask_59_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_59_badDirection_seqAtRank, rank_000000009_mask_59_badDirection_bAtRank]
  norm_num [rank_000000009_mask_59_badDirection_denom, rank_000000009_mask_59_badDirection_seq, rank_000000009_mask_59_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_59_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_59_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_59_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_59_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_59_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_59_badDirection_denom]

private def rank_000000009_mask_60_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_60_badDirection_mask : SignMask := ⟨60, by decide⟩
private def rank_000000009_mask_60_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_60_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_60_badDirection_b : Vec3 Rat := { x := (-100/9), y := (28/9), z := (-4/9) }
private def rank_000000009_mask_60_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_60_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_60_badDirection_word = some rank_000000009_mask_60_badDirection_rank := by
  decide

private theorem rank_000000009_mask_60_badDirection_unrank :
    unrankPairWord rank_000000009_mask_60_badDirection_rank = rank_000000009_mask_60_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_60_badDirection_word rank_000000009_mask_60_badDirection_rank).1
    rank_000000009_mask_60_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_60_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_60_badDirection_word rank_000000009_mask_60_badDirection_mask = rank_000000009_mask_60_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_60_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_60_badDirection_rank rank_000000009_mask_60_badDirection_mask = rank_000000009_mask_60_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_60_badDirection_unrank]
  exact rank_000000009_mask_60_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_60_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_60_badDirection_rank rank_000000009_mask_60_badDirection_mask = rank_000000009_mask_60_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_60_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_60_badDirection_b, rank_000000009_mask_60_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_60_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_60_badDirection_rank rank_000000009_mask_60_badDirection_mask ⟨2, by decide⟩ =
      rank_000000009_mask_60_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_60_badDirection_seqAtRank, rank_000000009_mask_60_badDirection_bAtRank]
  norm_num [rank_000000009_mask_60_badDirection_denom, rank_000000009_mask_60_badDirection_seq, rank_000000009_mask_60_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_60_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_60_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_60_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_60_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_60_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_60_badDirection_denom]

private def rank_000000009_mask_61_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_61_badDirection_mask : SignMask := ⟨61, by decide⟩
private def rank_000000009_mask_61_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_61_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_61_badDirection_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-4/9) }
private def rank_000000009_mask_61_badDirection_denom : Rat := (-4/9)

private theorem rank_000000009_mask_61_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_61_badDirection_word = some rank_000000009_mask_61_badDirection_rank := by
  decide

private theorem rank_000000009_mask_61_badDirection_unrank :
    unrankPairWord rank_000000009_mask_61_badDirection_rank = rank_000000009_mask_61_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_61_badDirection_word rank_000000009_mask_61_badDirection_rank).1
    rank_000000009_mask_61_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_61_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_61_badDirection_word rank_000000009_mask_61_badDirection_mask = rank_000000009_mask_61_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_61_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_61_badDirection_rank rank_000000009_mask_61_badDirection_mask = rank_000000009_mask_61_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_61_badDirection_unrank]
  exact rank_000000009_mask_61_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_61_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_61_badDirection_rank rank_000000009_mask_61_badDirection_mask = rank_000000009_mask_61_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_61_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_61_badDirection_b, rank_000000009_mask_61_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_61_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_61_badDirection_rank rank_000000009_mask_61_badDirection_mask ⟨12, by decide⟩ =
      rank_000000009_mask_61_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_61_badDirection_seqAtRank, rank_000000009_mask_61_badDirection_bAtRank]
  norm_num [rank_000000009_mask_61_badDirection_denom, rank_000000009_mask_61_badDirection_seq, rank_000000009_mask_61_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_61_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_61_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_61_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_61_badDirection_mask)
      (i := ⟨12, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_61_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_61_badDirection_denom]

private def rank_000000009_mask_62_badDirection_rank : Fin numPairWords := ⟨9, by decide⟩
private def rank_000000009_mask_62_badDirection_mask : SignMask := ⟨62, by decide⟩
private def rank_000000009_mask_62_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000009_mask_62_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000009_mask_62_badDirection_b : Vec3 Rat := { x := (-100/9), y := (28/9), z := (68/9) }
private def rank_000000009_mask_62_badDirection_denom : Rat := (-28/9)

private theorem rank_000000009_mask_62_badDirection_rankWord :
    rankPairWord? rank_000000009_mask_62_badDirection_word = some rank_000000009_mask_62_badDirection_rank := by
  decide

private theorem rank_000000009_mask_62_badDirection_unrank :
    unrankPairWord rank_000000009_mask_62_badDirection_rank = rank_000000009_mask_62_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000009_mask_62_badDirection_word rank_000000009_mask_62_badDirection_rank).1
    rank_000000009_mask_62_badDirection_rankWord |>.symm

private theorem rank_000000009_mask_62_badDirection_seqChoice :
    translationChoiceSeq rank_000000009_mask_62_badDirection_word rank_000000009_mask_62_badDirection_mask = rank_000000009_mask_62_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000009_mask_62_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000009_mask_62_badDirection_rank rank_000000009_mask_62_badDirection_mask = rank_000000009_mask_62_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000009_mask_62_badDirection_unrank]
  exact rank_000000009_mask_62_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_62_badDirection_bAtRank :
    translationBAtRankMask rank_000000009_mask_62_badDirection_rank rank_000000009_mask_62_badDirection_mask = rank_000000009_mask_62_badDirection_b := by
  rw [translationBAtRankMask, rank_000000009_mask_62_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000009_mask_62_badDirection_b, rank_000000009_mask_62_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000009_mask_62_badDirection_denomAtRank :
    impactDenomAtRank rank_000000009_mask_62_badDirection_rank rank_000000009_mask_62_badDirection_mask ⟨2, by decide⟩ =
      rank_000000009_mask_62_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000009_mask_62_badDirection_seqAtRank, rank_000000009_mask_62_badDirection_bAtRank]
  norm_num [rank_000000009_mask_62_badDirection_denom, rank_000000009_mask_62_badDirection_seq, rank_000000009_mask_62_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000009_mask_62_badDirection_notGood
    (hlt : 9 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords)
      rank_000000009_mask_62_badDirection_mask := by
  have hrank :
      (⟨9, hlt⟩ : Fin numPairWords) = rank_000000009_mask_62_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨9, hlt⟩ : Fin numPairWords))
      (mask := rank_000000009_mask_62_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000009_mask_62_badDirection_denomAtRank]
  norm_num [rank_000000009_mask_62_badDirection_denom]

private def rank_000000011_mask_00_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_00_badDirection_mask : SignMask := ⟨0, by decide⟩
private def rank_000000011_mask_00_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_00_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_00_badDirection_b : Vec3 Rat := { x := (44/9), y := (-116/9), z := (-52/9) }
private def rank_000000011_mask_00_badDirection_denom : Rat := (-44/9)

private theorem rank_000000011_mask_00_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_00_badDirection_word = some rank_000000011_mask_00_badDirection_rank := by
  decide

private theorem rank_000000011_mask_00_badDirection_unrank :
    unrankPairWord rank_000000011_mask_00_badDirection_rank = rank_000000011_mask_00_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_00_badDirection_word rank_000000011_mask_00_badDirection_rank).1
    rank_000000011_mask_00_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_00_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_00_badDirection_word rank_000000011_mask_00_badDirection_mask = rank_000000011_mask_00_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_00_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_00_badDirection_rank rank_000000011_mask_00_badDirection_mask = rank_000000011_mask_00_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_00_badDirection_unrank]
  exact rank_000000011_mask_00_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_00_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_00_badDirection_rank rank_000000011_mask_00_badDirection_mask = rank_000000011_mask_00_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_00_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_00_badDirection_b, rank_000000011_mask_00_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_00_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_00_badDirection_rank rank_000000011_mask_00_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_00_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_00_badDirection_seqAtRank, rank_000000011_mask_00_badDirection_bAtRank]
  norm_num [rank_000000011_mask_00_badDirection_denom, rank_000000011_mask_00_badDirection_seq, rank_000000011_mask_00_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_00_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_00_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_00_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_00_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_00_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_00_badDirection_denom]

private def rank_000000011_mask_01_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_01_badDirection_mask : SignMask := ⟨1, by decide⟩
private def rank_000000011_mask_01_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_01_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_01_badDirection_b : Vec3 Rat := { x := (44/9), y := (-44/9), z := (-52/9) }
private def rank_000000011_mask_01_badDirection_denom : Rat := (-44/9)

private theorem rank_000000011_mask_01_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_01_badDirection_word = some rank_000000011_mask_01_badDirection_rank := by
  decide

private theorem rank_000000011_mask_01_badDirection_unrank :
    unrankPairWord rank_000000011_mask_01_badDirection_rank = rank_000000011_mask_01_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_01_badDirection_word rank_000000011_mask_01_badDirection_rank).1
    rank_000000011_mask_01_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_01_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_01_badDirection_word rank_000000011_mask_01_badDirection_mask = rank_000000011_mask_01_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_01_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_01_badDirection_rank rank_000000011_mask_01_badDirection_mask = rank_000000011_mask_01_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_01_badDirection_unrank]
  exact rank_000000011_mask_01_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_01_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_01_badDirection_rank rank_000000011_mask_01_badDirection_mask = rank_000000011_mask_01_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_01_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_01_badDirection_b, rank_000000011_mask_01_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_01_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_01_badDirection_rank rank_000000011_mask_01_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_01_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_01_badDirection_seqAtRank, rank_000000011_mask_01_badDirection_bAtRank]
  norm_num [rank_000000011_mask_01_badDirection_denom, rank_000000011_mask_01_badDirection_seq, rank_000000011_mask_01_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_01_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_01_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_01_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_01_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_01_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_01_badDirection_denom]

private def rank_000000011_mask_02_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_02_badDirection_mask : SignMask := ⟨2, by decide⟩
private def rank_000000011_mask_02_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_02_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_02_badDirection_b : Vec3 Rat := { x := (44/9), y := (-116/9), z := (20/9) }
private def rank_000000011_mask_02_badDirection_denom : Rat := (-44/9)

private theorem rank_000000011_mask_02_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_02_badDirection_word = some rank_000000011_mask_02_badDirection_rank := by
  decide

private theorem rank_000000011_mask_02_badDirection_unrank :
    unrankPairWord rank_000000011_mask_02_badDirection_rank = rank_000000011_mask_02_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_02_badDirection_word rank_000000011_mask_02_badDirection_rank).1
    rank_000000011_mask_02_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_02_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_02_badDirection_word rank_000000011_mask_02_badDirection_mask = rank_000000011_mask_02_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_02_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_02_badDirection_rank rank_000000011_mask_02_badDirection_mask = rank_000000011_mask_02_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_02_badDirection_unrank]
  exact rank_000000011_mask_02_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_02_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_02_badDirection_rank rank_000000011_mask_02_badDirection_mask = rank_000000011_mask_02_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_02_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_02_badDirection_b, rank_000000011_mask_02_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_02_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_02_badDirection_rank rank_000000011_mask_02_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_02_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_02_badDirection_seqAtRank, rank_000000011_mask_02_badDirection_bAtRank]
  norm_num [rank_000000011_mask_02_badDirection_denom, rank_000000011_mask_02_badDirection_seq, rank_000000011_mask_02_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_02_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_02_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_02_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_02_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_02_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_02_badDirection_denom]

private def rank_000000011_mask_03_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_03_badDirection_mask : SignMask := ⟨3, by decide⟩
private def rank_000000011_mask_03_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_03_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_03_badDirection_b : Vec3 Rat := { x := (44/9), y := (-44/9), z := (20/9) }
private def rank_000000011_mask_03_badDirection_denom : Rat := (-44/9)

private theorem rank_000000011_mask_03_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_03_badDirection_word = some rank_000000011_mask_03_badDirection_rank := by
  decide

private theorem rank_000000011_mask_03_badDirection_unrank :
    unrankPairWord rank_000000011_mask_03_badDirection_rank = rank_000000011_mask_03_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_03_badDirection_word rank_000000011_mask_03_badDirection_rank).1
    rank_000000011_mask_03_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_03_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_03_badDirection_word rank_000000011_mask_03_badDirection_mask = rank_000000011_mask_03_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_03_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_03_badDirection_rank rank_000000011_mask_03_badDirection_mask = rank_000000011_mask_03_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_03_badDirection_unrank]
  exact rank_000000011_mask_03_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_03_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_03_badDirection_rank rank_000000011_mask_03_badDirection_mask = rank_000000011_mask_03_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_03_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_03_badDirection_b, rank_000000011_mask_03_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_03_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_03_badDirection_rank rank_000000011_mask_03_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_03_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_03_badDirection_seqAtRank, rank_000000011_mask_03_badDirection_bAtRank]
  norm_num [rank_000000011_mask_03_badDirection_denom, rank_000000011_mask_03_badDirection_seq, rank_000000011_mask_03_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_03_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_03_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_03_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_03_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_03_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_03_badDirection_denom]

private def rank_000000011_mask_04_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_04_badDirection_mask : SignMask := ⟨4, by decide⟩
private def rank_000000011_mask_04_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_04_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_04_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-68/9), z := (-4/9) }
private def rank_000000011_mask_04_badDirection_denom : Rat := (-68/9)

private theorem rank_000000011_mask_04_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_04_badDirection_word = some rank_000000011_mask_04_badDirection_rank := by
  decide

private theorem rank_000000011_mask_04_badDirection_unrank :
    unrankPairWord rank_000000011_mask_04_badDirection_rank = rank_000000011_mask_04_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_04_badDirection_word rank_000000011_mask_04_badDirection_rank).1
    rank_000000011_mask_04_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_04_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_04_badDirection_word rank_000000011_mask_04_badDirection_mask = rank_000000011_mask_04_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_04_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_04_badDirection_rank rank_000000011_mask_04_badDirection_mask = rank_000000011_mask_04_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_04_badDirection_unrank]
  exact rank_000000011_mask_04_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_04_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_04_badDirection_rank rank_000000011_mask_04_badDirection_mask = rank_000000011_mask_04_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_04_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_04_badDirection_b, rank_000000011_mask_04_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_04_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_04_badDirection_rank rank_000000011_mask_04_badDirection_mask ⟨6, by decide⟩ =
      rank_000000011_mask_04_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_04_badDirection_seqAtRank, rank_000000011_mask_04_badDirection_bAtRank]
  norm_num [rank_000000011_mask_04_badDirection_denom, rank_000000011_mask_04_badDirection_seq, rank_000000011_mask_04_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_04_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_04_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_04_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_04_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_04_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_04_badDirection_denom]

private def rank_000000011_mask_05_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_05_badDirection_mask : SignMask := ⟨5, by decide⟩
private def rank_000000011_mask_05_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_05_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_05_badDirection_b : Vec3 Rat := { x := (-4/9), y := (4/9), z := (-4/9) }
private def rank_000000011_mask_05_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_05_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_05_badDirection_word = some rank_000000011_mask_05_badDirection_rank := by
  decide

private theorem rank_000000011_mask_05_badDirection_unrank :
    unrankPairWord rank_000000011_mask_05_badDirection_rank = rank_000000011_mask_05_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_05_badDirection_word rank_000000011_mask_05_badDirection_rank).1
    rank_000000011_mask_05_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_05_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_05_badDirection_word rank_000000011_mask_05_badDirection_mask = rank_000000011_mask_05_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_05_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_05_badDirection_rank rank_000000011_mask_05_badDirection_mask = rank_000000011_mask_05_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_05_badDirection_unrank]
  exact rank_000000011_mask_05_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_05_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_05_badDirection_rank rank_000000011_mask_05_badDirection_mask = rank_000000011_mask_05_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_05_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_05_badDirection_b, rank_000000011_mask_05_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_05_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_05_badDirection_rank rank_000000011_mask_05_badDirection_mask ⟨8, by decide⟩ =
      rank_000000011_mask_05_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_05_badDirection_seqAtRank, rank_000000011_mask_05_badDirection_bAtRank]
  norm_num [rank_000000011_mask_05_badDirection_denom, rank_000000011_mask_05_badDirection_seq, rank_000000011_mask_05_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_05_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_05_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_05_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_05_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_05_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_05_badDirection_denom]

private def rank_000000011_mask_06_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_06_badDirection_mask : SignMask := ⟨6, by decide⟩
private def rank_000000011_mask_06_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_06_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_06_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-68/9), z := (68/9) }
private def rank_000000011_mask_06_badDirection_denom : Rat := (-52/9)

private theorem rank_000000011_mask_06_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_06_badDirection_word = some rank_000000011_mask_06_badDirection_rank := by
  decide

private theorem rank_000000011_mask_06_badDirection_unrank :
    unrankPairWord rank_000000011_mask_06_badDirection_rank = rank_000000011_mask_06_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_06_badDirection_word rank_000000011_mask_06_badDirection_rank).1
    rank_000000011_mask_06_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_06_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_06_badDirection_word rank_000000011_mask_06_badDirection_mask = rank_000000011_mask_06_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_06_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_06_badDirection_rank rank_000000011_mask_06_badDirection_mask = rank_000000011_mask_06_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_06_badDirection_unrank]
  exact rank_000000011_mask_06_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_06_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_06_badDirection_rank rank_000000011_mask_06_badDirection_mask = rank_000000011_mask_06_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_06_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_06_badDirection_b, rank_000000011_mask_06_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_06_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_06_badDirection_rank rank_000000011_mask_06_badDirection_mask ⟨9, by decide⟩ =
      rank_000000011_mask_06_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_06_badDirection_seqAtRank, rank_000000011_mask_06_badDirection_bAtRank]
  norm_num [rank_000000011_mask_06_badDirection_denom, rank_000000011_mask_06_badDirection_seq, rank_000000011_mask_06_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_06_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_06_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_06_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_06_badDirection_mask)
      (i := ⟨9, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_06_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_06_badDirection_denom]

private def rank_000000011_mask_07_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_07_badDirection_mask : SignMask := ⟨7, by decide⟩
private def rank_000000011_mask_07_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_07_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_07_badDirection_b : Vec3 Rat := { x := (-4/9), y := (4/9), z := (68/9) }
private def rank_000000011_mask_07_badDirection_denom : Rat := (-28/9)

private theorem rank_000000011_mask_07_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_07_badDirection_word = some rank_000000011_mask_07_badDirection_rank := by
  decide

private theorem rank_000000011_mask_07_badDirection_unrank :
    unrankPairWord rank_000000011_mask_07_badDirection_rank = rank_000000011_mask_07_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_07_badDirection_word rank_000000011_mask_07_badDirection_rank).1
    rank_000000011_mask_07_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_07_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_07_badDirection_word rank_000000011_mask_07_badDirection_mask = rank_000000011_mask_07_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_07_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_07_badDirection_rank rank_000000011_mask_07_badDirection_mask = rank_000000011_mask_07_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_07_badDirection_unrank]
  exact rank_000000011_mask_07_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_07_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_07_badDirection_rank rank_000000011_mask_07_badDirection_mask = rank_000000011_mask_07_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_07_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_07_badDirection_b, rank_000000011_mask_07_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_07_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_07_badDirection_rank rank_000000011_mask_07_badDirection_mask ⟨9, by decide⟩ =
      rank_000000011_mask_07_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_07_badDirection_seqAtRank, rank_000000011_mask_07_badDirection_bAtRank]
  norm_num [rank_000000011_mask_07_badDirection_denom, rank_000000011_mask_07_badDirection_seq, rank_000000011_mask_07_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_07_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_07_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_07_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_07_badDirection_mask)
      (i := ⟨9, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_07_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_07_badDirection_denom]

private def rank_000000011_mask_10_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_10_badDirection_mask : SignMask := ⟨10, by decide⟩
private def rank_000000011_mask_10_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_10_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_10_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-68/9), z := (-28/9) }
private def rank_000000011_mask_10_badDirection_denom : Rat := (-28/9)

private theorem rank_000000011_mask_10_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_10_badDirection_word = some rank_000000011_mask_10_badDirection_rank := by
  decide

private theorem rank_000000011_mask_10_badDirection_unrank :
    unrankPairWord rank_000000011_mask_10_badDirection_rank = rank_000000011_mask_10_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_10_badDirection_word rank_000000011_mask_10_badDirection_rank).1
    rank_000000011_mask_10_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_10_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_10_badDirection_word rank_000000011_mask_10_badDirection_mask = rank_000000011_mask_10_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_10_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_10_badDirection_rank rank_000000011_mask_10_badDirection_mask = rank_000000011_mask_10_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_10_badDirection_unrank]
  exact rank_000000011_mask_10_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_10_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_10_badDirection_rank rank_000000011_mask_10_badDirection_mask = rank_000000011_mask_10_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_10_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_10_badDirection_b, rank_000000011_mask_10_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_10_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_10_badDirection_rank rank_000000011_mask_10_badDirection_mask ⟨4, by decide⟩ =
      rank_000000011_mask_10_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_10_badDirection_seqAtRank, rank_000000011_mask_10_badDirection_bAtRank]
  norm_num [rank_000000011_mask_10_badDirection_denom, rank_000000011_mask_10_badDirection_seq, rank_000000011_mask_10_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_10_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_10_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_10_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_10_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_10_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_10_badDirection_denom]

private def rank_000000011_mask_11_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_11_badDirection_mask : SignMask := ⟨11, by decide⟩
private def rank_000000011_mask_11_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_11_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_11_badDirection_b : Vec3 Rat := { x := (-4/9), y := (4/9), z := (-28/9) }
private def rank_000000011_mask_11_badDirection_denom : Rat := (-28/9)

private theorem rank_000000011_mask_11_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_11_badDirection_word = some rank_000000011_mask_11_badDirection_rank := by
  decide

private theorem rank_000000011_mask_11_badDirection_unrank :
    unrankPairWord rank_000000011_mask_11_badDirection_rank = rank_000000011_mask_11_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_11_badDirection_word rank_000000011_mask_11_badDirection_rank).1
    rank_000000011_mask_11_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_11_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_11_badDirection_word rank_000000011_mask_11_badDirection_mask = rank_000000011_mask_11_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_11_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_11_badDirection_rank rank_000000011_mask_11_badDirection_mask = rank_000000011_mask_11_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_11_badDirection_unrank]
  exact rank_000000011_mask_11_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_11_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_11_badDirection_rank rank_000000011_mask_11_badDirection_mask = rank_000000011_mask_11_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_11_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_11_badDirection_b, rank_000000011_mask_11_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_11_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_11_badDirection_rank rank_000000011_mask_11_badDirection_mask ⟨4, by decide⟩ =
      rank_000000011_mask_11_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_11_badDirection_seqAtRank, rank_000000011_mask_11_badDirection_bAtRank]
  norm_num [rank_000000011_mask_11_badDirection_denom, rank_000000011_mask_11_badDirection_seq, rank_000000011_mask_11_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_11_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_11_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_11_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_11_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_11_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_11_badDirection_denom]

private def rank_000000011_mask_12_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_12_badDirection_mask : SignMask := ⟨12, by decide⟩
private def rank_000000011_mask_12_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_12_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_12_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (-52/9) }
private def rank_000000011_mask_12_badDirection_denom : Rat := (-20/9)

private theorem rank_000000011_mask_12_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_12_badDirection_word = some rank_000000011_mask_12_badDirection_rank := by
  decide

private theorem rank_000000011_mask_12_badDirection_unrank :
    unrankPairWord rank_000000011_mask_12_badDirection_rank = rank_000000011_mask_12_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_12_badDirection_word rank_000000011_mask_12_badDirection_rank).1
    rank_000000011_mask_12_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_12_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_12_badDirection_word rank_000000011_mask_12_badDirection_mask = rank_000000011_mask_12_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_12_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_12_badDirection_rank rank_000000011_mask_12_badDirection_mask = rank_000000011_mask_12_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_12_badDirection_unrank]
  exact rank_000000011_mask_12_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_12_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_12_badDirection_rank rank_000000011_mask_12_badDirection_mask = rank_000000011_mask_12_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_12_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_12_badDirection_b, rank_000000011_mask_12_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_12_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_12_badDirection_rank rank_000000011_mask_12_badDirection_mask ⟨6, by decide⟩ =
      rank_000000011_mask_12_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_12_badDirection_seqAtRank, rank_000000011_mask_12_badDirection_bAtRank]
  norm_num [rank_000000011_mask_12_badDirection_denom, rank_000000011_mask_12_badDirection_seq, rank_000000011_mask_12_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_12_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_12_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_12_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_12_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_12_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_12_badDirection_denom]

private def rank_000000011_mask_13_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_13_badDirection_mask : SignMask := ⟨13, by decide⟩
private def rank_000000011_mask_13_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_13_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_13_badDirection_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-52/9) }
private def rank_000000011_mask_13_badDirection_denom : Rat := (-52/9)

private theorem rank_000000011_mask_13_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_13_badDirection_word = some rank_000000011_mask_13_badDirection_rank := by
  decide

private theorem rank_000000011_mask_13_badDirection_unrank :
    unrankPairWord rank_000000011_mask_13_badDirection_rank = rank_000000011_mask_13_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_13_badDirection_word rank_000000011_mask_13_badDirection_rank).1
    rank_000000011_mask_13_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_13_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_13_badDirection_word rank_000000011_mask_13_badDirection_mask = rank_000000011_mask_13_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_13_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_13_badDirection_rank rank_000000011_mask_13_badDirection_mask = rank_000000011_mask_13_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_13_badDirection_unrank]
  exact rank_000000011_mask_13_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_13_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_13_badDirection_rank rank_000000011_mask_13_badDirection_mask = rank_000000011_mask_13_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_13_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_13_badDirection_b, rank_000000011_mask_13_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_13_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_13_badDirection_rank rank_000000011_mask_13_badDirection_mask ⟨9, by decide⟩ =
      rank_000000011_mask_13_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_13_badDirection_seqAtRank, rank_000000011_mask_13_badDirection_bAtRank]
  norm_num [rank_000000011_mask_13_badDirection_denom, rank_000000011_mask_13_badDirection_seq, rank_000000011_mask_13_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_13_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_13_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_13_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_13_badDirection_mask)
      (i := ⟨9, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_13_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_13_badDirection_denom]

private def rank_000000011_mask_14_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_14_badDirection_mask : SignMask := ⟨14, by decide⟩
private def rank_000000011_mask_14_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_14_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_14_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (20/9) }
private def rank_000000011_mask_14_badDirection_denom : Rat := (-100/9)

private theorem rank_000000011_mask_14_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_14_badDirection_word = some rank_000000011_mask_14_badDirection_rank := by
  decide

private theorem rank_000000011_mask_14_badDirection_unrank :
    unrankPairWord rank_000000011_mask_14_badDirection_rank = rank_000000011_mask_14_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_14_badDirection_word rank_000000011_mask_14_badDirection_rank).1
    rank_000000011_mask_14_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_14_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_14_badDirection_word rank_000000011_mask_14_badDirection_mask = rank_000000011_mask_14_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_14_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_14_badDirection_rank rank_000000011_mask_14_badDirection_mask = rank_000000011_mask_14_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_14_badDirection_unrank]
  exact rank_000000011_mask_14_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_14_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_14_badDirection_rank rank_000000011_mask_14_badDirection_mask = rank_000000011_mask_14_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_14_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_14_badDirection_b, rank_000000011_mask_14_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_14_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_14_badDirection_rank rank_000000011_mask_14_badDirection_mask ⟨9, by decide⟩ =
      rank_000000011_mask_14_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_14_badDirection_seqAtRank, rank_000000011_mask_14_badDirection_bAtRank]
  norm_num [rank_000000011_mask_14_badDirection_denom, rank_000000011_mask_14_badDirection_seq, rank_000000011_mask_14_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_14_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_14_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_14_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_14_badDirection_mask)
      (i := ⟨9, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_14_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_14_badDirection_denom]

private def rank_000000011_mask_15_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_15_badDirection_mask : SignMask := ⟨15, by decide⟩
private def rank_000000011_mask_15_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_15_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_15_badDirection_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (20/9) }
private def rank_000000011_mask_15_badDirection_denom : Rat := (-76/9)

private theorem rank_000000011_mask_15_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_15_badDirection_word = some rank_000000011_mask_15_badDirection_rank := by
  decide

private theorem rank_000000011_mask_15_badDirection_unrank :
    unrankPairWord rank_000000011_mask_15_badDirection_rank = rank_000000011_mask_15_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_15_badDirection_word rank_000000011_mask_15_badDirection_rank).1
    rank_000000011_mask_15_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_15_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_15_badDirection_word rank_000000011_mask_15_badDirection_mask = rank_000000011_mask_15_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_15_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_15_badDirection_rank rank_000000011_mask_15_badDirection_mask = rank_000000011_mask_15_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_15_badDirection_unrank]
  exact rank_000000011_mask_15_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_15_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_15_badDirection_rank rank_000000011_mask_15_badDirection_mask = rank_000000011_mask_15_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_15_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_15_badDirection_b, rank_000000011_mask_15_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_15_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_15_badDirection_rank rank_000000011_mask_15_badDirection_mask ⟨9, by decide⟩ =
      rank_000000011_mask_15_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_15_badDirection_seqAtRank, rank_000000011_mask_15_badDirection_bAtRank]
  norm_num [rank_000000011_mask_15_badDirection_denom, rank_000000011_mask_15_badDirection_seq, rank_000000011_mask_15_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_15_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_15_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_15_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_15_badDirection_mask)
      (i := ⟨9, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_15_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_15_badDirection_denom]

private def rank_000000011_mask_17_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_17_badDirection_mask : SignMask := ⟨17, by decide⟩
private def rank_000000011_mask_17_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_17_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_17_badDirection_b : Vec3 Rat := { x := -4, y := (-20/3), z := -4 }
private def rank_000000011_mask_17_badDirection_denom : Rat := (-20/3)

private theorem rank_000000011_mask_17_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_17_badDirection_word = some rank_000000011_mask_17_badDirection_rank := by
  decide

private theorem rank_000000011_mask_17_badDirection_unrank :
    unrankPairWord rank_000000011_mask_17_badDirection_rank = rank_000000011_mask_17_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_17_badDirection_word rank_000000011_mask_17_badDirection_rank).1
    rank_000000011_mask_17_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_17_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_17_badDirection_word rank_000000011_mask_17_badDirection_mask = rank_000000011_mask_17_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_17_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_17_badDirection_rank rank_000000011_mask_17_badDirection_mask = rank_000000011_mask_17_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_17_badDirection_unrank]
  exact rank_000000011_mask_17_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_17_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_17_badDirection_rank rank_000000011_mask_17_badDirection_mask = rank_000000011_mask_17_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_17_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_17_badDirection_b, rank_000000011_mask_17_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_17_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_17_badDirection_rank rank_000000011_mask_17_badDirection_mask ⟨2, by decide⟩ =
      rank_000000011_mask_17_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_17_badDirection_seqAtRank, rank_000000011_mask_17_badDirection_bAtRank]
  norm_num [rank_000000011_mask_17_badDirection_denom, rank_000000011_mask_17_badDirection_seq, rank_000000011_mask_17_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_17_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_17_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_17_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_17_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_17_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_17_badDirection_denom]

private def rank_000000011_mask_19_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_19_badDirection_mask : SignMask := ⟨19, by decide⟩
private def rank_000000011_mask_19_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_19_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_19_badDirection_b : Vec3 Rat := { x := -4, y := (-20/3), z := 4 }
private def rank_000000011_mask_19_badDirection_denom : Rat := (-20/3)

private theorem rank_000000011_mask_19_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_19_badDirection_word = some rank_000000011_mask_19_badDirection_rank := by
  decide

private theorem rank_000000011_mask_19_badDirection_unrank :
    unrankPairWord rank_000000011_mask_19_badDirection_rank = rank_000000011_mask_19_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_19_badDirection_word rank_000000011_mask_19_badDirection_rank).1
    rank_000000011_mask_19_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_19_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_19_badDirection_word rank_000000011_mask_19_badDirection_mask = rank_000000011_mask_19_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_19_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_19_badDirection_rank rank_000000011_mask_19_badDirection_mask = rank_000000011_mask_19_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_19_badDirection_unrank]
  exact rank_000000011_mask_19_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_19_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_19_badDirection_rank rank_000000011_mask_19_badDirection_mask = rank_000000011_mask_19_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_19_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_19_badDirection_b, rank_000000011_mask_19_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_19_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_19_badDirection_rank rank_000000011_mask_19_badDirection_mask ⟨2, by decide⟩ =
      rank_000000011_mask_19_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_19_badDirection_seqAtRank, rank_000000011_mask_19_badDirection_bAtRank]
  norm_num [rank_000000011_mask_19_badDirection_denom, rank_000000011_mask_19_badDirection_seq, rank_000000011_mask_19_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_19_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_19_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_19_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_19_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_19_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_19_badDirection_denom]

private def rank_000000011_mask_20_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_20_badDirection_mask : SignMask := ⟨20, by decide⟩
private def rank_000000011_mask_20_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_20_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_20_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (4/3) }
private def rank_000000011_mask_20_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_20_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_20_badDirection_word = some rank_000000011_mask_20_badDirection_rank := by
  decide

private theorem rank_000000011_mask_20_badDirection_unrank :
    unrankPairWord rank_000000011_mask_20_badDirection_rank = rank_000000011_mask_20_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_20_badDirection_word rank_000000011_mask_20_badDirection_rank).1
    rank_000000011_mask_20_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_20_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_20_badDirection_word rank_000000011_mask_20_badDirection_mask = rank_000000011_mask_20_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_20_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_20_badDirection_rank rank_000000011_mask_20_badDirection_mask = rank_000000011_mask_20_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_20_badDirection_unrank]
  exact rank_000000011_mask_20_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_20_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_20_badDirection_rank rank_000000011_mask_20_badDirection_mask = rank_000000011_mask_20_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_20_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_20_badDirection_b, rank_000000011_mask_20_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_20_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_20_badDirection_rank rank_000000011_mask_20_badDirection_mask ⟨4, by decide⟩ =
      rank_000000011_mask_20_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_20_badDirection_seqAtRank, rank_000000011_mask_20_badDirection_bAtRank]
  norm_num [rank_000000011_mask_20_badDirection_denom, rank_000000011_mask_20_badDirection_seq, rank_000000011_mask_20_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_20_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_20_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_20_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_20_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_20_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_20_badDirection_denom]

private def rank_000000011_mask_21_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_21_badDirection_mask : SignMask := ⟨21, by decide⟩
private def rank_000000011_mask_21_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_21_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_21_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (4/3) }
private def rank_000000011_mask_21_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_21_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_21_badDirection_word = some rank_000000011_mask_21_badDirection_rank := by
  decide

private theorem rank_000000011_mask_21_badDirection_unrank :
    unrankPairWord rank_000000011_mask_21_badDirection_rank = rank_000000011_mask_21_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_21_badDirection_word rank_000000011_mask_21_badDirection_rank).1
    rank_000000011_mask_21_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_21_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_21_badDirection_word rank_000000011_mask_21_badDirection_mask = rank_000000011_mask_21_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_21_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_21_badDirection_rank rank_000000011_mask_21_badDirection_mask = rank_000000011_mask_21_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_21_badDirection_unrank]
  exact rank_000000011_mask_21_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_21_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_21_badDirection_rank rank_000000011_mask_21_badDirection_mask = rank_000000011_mask_21_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_21_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_21_badDirection_b, rank_000000011_mask_21_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_21_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_21_badDirection_rank rank_000000011_mask_21_badDirection_mask ⟨2, by decide⟩ =
      rank_000000011_mask_21_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_21_badDirection_seqAtRank, rank_000000011_mask_21_badDirection_bAtRank]
  norm_num [rank_000000011_mask_21_badDirection_denom, rank_000000011_mask_21_badDirection_seq, rank_000000011_mask_21_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_21_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_21_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_21_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_21_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_21_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_21_badDirection_denom]

private def rank_000000011_mask_23_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_23_badDirection_mask : SignMask := ⟨23, by decide⟩
private def rank_000000011_mask_23_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_23_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_23_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (28/3) }
private def rank_000000011_mask_23_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_23_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_23_badDirection_word = some rank_000000011_mask_23_badDirection_rank := by
  decide

private theorem rank_000000011_mask_23_badDirection_unrank :
    unrankPairWord rank_000000011_mask_23_badDirection_rank = rank_000000011_mask_23_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_23_badDirection_word rank_000000011_mask_23_badDirection_rank).1
    rank_000000011_mask_23_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_23_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_23_badDirection_word rank_000000011_mask_23_badDirection_mask = rank_000000011_mask_23_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_23_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_23_badDirection_rank rank_000000011_mask_23_badDirection_mask = rank_000000011_mask_23_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_23_badDirection_unrank]
  exact rank_000000011_mask_23_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_23_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_23_badDirection_rank rank_000000011_mask_23_badDirection_mask = rank_000000011_mask_23_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_23_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_23_badDirection_b, rank_000000011_mask_23_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_23_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_23_badDirection_rank rank_000000011_mask_23_badDirection_mask ⟨2, by decide⟩ =
      rank_000000011_mask_23_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_23_badDirection_seqAtRank, rank_000000011_mask_23_badDirection_bAtRank]
  norm_num [rank_000000011_mask_23_badDirection_denom, rank_000000011_mask_23_badDirection_seq, rank_000000011_mask_23_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_23_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_23_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_23_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_23_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_23_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_23_badDirection_denom]

private def rank_000000011_mask_25_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_25_badDirection_mask : SignMask := ⟨25, by decide⟩
private def rank_000000011_mask_25_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_25_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_25_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (-28/3) }
private def rank_000000011_mask_25_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_25_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_25_badDirection_word = some rank_000000011_mask_25_badDirection_rank := by
  decide

private theorem rank_000000011_mask_25_badDirection_unrank :
    unrankPairWord rank_000000011_mask_25_badDirection_rank = rank_000000011_mask_25_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_25_badDirection_word rank_000000011_mask_25_badDirection_rank).1
    rank_000000011_mask_25_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_25_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_25_badDirection_word rank_000000011_mask_25_badDirection_mask = rank_000000011_mask_25_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_25_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_25_badDirection_rank rank_000000011_mask_25_badDirection_mask = rank_000000011_mask_25_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_25_badDirection_unrank]
  exact rank_000000011_mask_25_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_25_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_25_badDirection_rank rank_000000011_mask_25_badDirection_mask = rank_000000011_mask_25_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_25_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_25_badDirection_b, rank_000000011_mask_25_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_25_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_25_badDirection_rank rank_000000011_mask_25_badDirection_mask ⟨2, by decide⟩ =
      rank_000000011_mask_25_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_25_badDirection_seqAtRank, rank_000000011_mask_25_badDirection_bAtRank]
  norm_num [rank_000000011_mask_25_badDirection_denom, rank_000000011_mask_25_badDirection_seq, rank_000000011_mask_25_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_25_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_25_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_25_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_25_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_25_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_25_badDirection_denom]

private def rank_000000011_mask_26_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_26_badDirection_mask : SignMask := ⟨26, by decide⟩
private def rank_000000011_mask_26_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_26_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_26_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-4/3) }
private def rank_000000011_mask_26_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_26_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_26_badDirection_word = some rank_000000011_mask_26_badDirection_rank := by
  decide

private theorem rank_000000011_mask_26_badDirection_unrank :
    unrankPairWord rank_000000011_mask_26_badDirection_rank = rank_000000011_mask_26_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_26_badDirection_word rank_000000011_mask_26_badDirection_rank).1
    rank_000000011_mask_26_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_26_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_26_badDirection_word rank_000000011_mask_26_badDirection_mask = rank_000000011_mask_26_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_26_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_26_badDirection_rank rank_000000011_mask_26_badDirection_mask = rank_000000011_mask_26_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_26_badDirection_unrank]
  exact rank_000000011_mask_26_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_26_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_26_badDirection_rank rank_000000011_mask_26_badDirection_mask = rank_000000011_mask_26_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_26_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_26_badDirection_b, rank_000000011_mask_26_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_26_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_26_badDirection_rank rank_000000011_mask_26_badDirection_mask ⟨4, by decide⟩ =
      rank_000000011_mask_26_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_26_badDirection_seqAtRank, rank_000000011_mask_26_badDirection_bAtRank]
  norm_num [rank_000000011_mask_26_badDirection_denom, rank_000000011_mask_26_badDirection_seq, rank_000000011_mask_26_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_26_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_26_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_26_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_26_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_26_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_26_badDirection_denom]

private def rank_000000011_mask_27_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_27_badDirection_mask : SignMask := ⟨27, by decide⟩
private def rank_000000011_mask_27_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_27_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_27_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (-4/3) }
private def rank_000000011_mask_27_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_27_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_27_badDirection_word = some rank_000000011_mask_27_badDirection_rank := by
  decide

private theorem rank_000000011_mask_27_badDirection_unrank :
    unrankPairWord rank_000000011_mask_27_badDirection_rank = rank_000000011_mask_27_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_27_badDirection_word rank_000000011_mask_27_badDirection_rank).1
    rank_000000011_mask_27_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_27_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_27_badDirection_word rank_000000011_mask_27_badDirection_mask = rank_000000011_mask_27_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_27_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_27_badDirection_rank rank_000000011_mask_27_badDirection_mask = rank_000000011_mask_27_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_27_badDirection_unrank]
  exact rank_000000011_mask_27_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_27_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_27_badDirection_rank rank_000000011_mask_27_badDirection_mask = rank_000000011_mask_27_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_27_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_27_badDirection_b, rank_000000011_mask_27_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_27_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_27_badDirection_rank rank_000000011_mask_27_badDirection_mask ⟨2, by decide⟩ =
      rank_000000011_mask_27_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_27_badDirection_seqAtRank, rank_000000011_mask_27_badDirection_bAtRank]
  norm_num [rank_000000011_mask_27_badDirection_denom, rank_000000011_mask_27_badDirection_seq, rank_000000011_mask_27_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_27_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_27_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_27_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_27_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_27_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_27_badDirection_denom]

private def rank_000000011_mask_29_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_29_badDirection_mask : SignMask := ⟨29, by decide⟩
private def rank_000000011_mask_29_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_29_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_29_badDirection_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def rank_000000011_mask_29_badDirection_denom : Rat := (-4/9)

private theorem rank_000000011_mask_29_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_29_badDirection_word = some rank_000000011_mask_29_badDirection_rank := by
  decide

private theorem rank_000000011_mask_29_badDirection_unrank :
    unrankPairWord rank_000000011_mask_29_badDirection_rank = rank_000000011_mask_29_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_29_badDirection_word rank_000000011_mask_29_badDirection_rank).1
    rank_000000011_mask_29_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_29_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_29_badDirection_word rank_000000011_mask_29_badDirection_mask = rank_000000011_mask_29_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_29_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_29_badDirection_rank rank_000000011_mask_29_badDirection_mask = rank_000000011_mask_29_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_29_badDirection_unrank]
  exact rank_000000011_mask_29_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_29_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_29_badDirection_rank rank_000000011_mask_29_badDirection_mask = rank_000000011_mask_29_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_29_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_29_badDirection_b, rank_000000011_mask_29_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_29_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_29_badDirection_rank rank_000000011_mask_29_badDirection_mask ⟨11, by decide⟩ =
      rank_000000011_mask_29_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_29_badDirection_seqAtRank, rank_000000011_mask_29_badDirection_bAtRank]
  norm_num [rank_000000011_mask_29_badDirection_denom, rank_000000011_mask_29_badDirection_seq, rank_000000011_mask_29_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_29_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_29_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_29_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_29_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_29_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_29_badDirection_denom]

private def rank_000000011_mask_31_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_31_badDirection_mask : SignMask := ⟨31, by decide⟩
private def rank_000000011_mask_31_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_31_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_31_badDirection_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def rank_000000011_mask_31_badDirection_denom : Rat := (-28/9)

private theorem rank_000000011_mask_31_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_31_badDirection_word = some rank_000000011_mask_31_badDirection_rank := by
  decide

private theorem rank_000000011_mask_31_badDirection_unrank :
    unrankPairWord rank_000000011_mask_31_badDirection_rank = rank_000000011_mask_31_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_31_badDirection_word rank_000000011_mask_31_badDirection_rank).1
    rank_000000011_mask_31_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_31_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_31_badDirection_word rank_000000011_mask_31_badDirection_mask = rank_000000011_mask_31_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_31_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_31_badDirection_rank rank_000000011_mask_31_badDirection_mask = rank_000000011_mask_31_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_31_badDirection_unrank]
  exact rank_000000011_mask_31_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_31_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_31_badDirection_rank rank_000000011_mask_31_badDirection_mask = rank_000000011_mask_31_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_31_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_31_badDirection_b, rank_000000011_mask_31_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_31_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_31_badDirection_rank rank_000000011_mask_31_badDirection_mask ⟨11, by decide⟩ =
      rank_000000011_mask_31_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_31_badDirection_seqAtRank, rank_000000011_mask_31_badDirection_bAtRank]
  norm_num [rank_000000011_mask_31_badDirection_denom, rank_000000011_mask_31_badDirection_seq, rank_000000011_mask_31_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_31_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_31_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_31_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_31_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_31_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_31_badDirection_denom]

private def rank_000000011_mask_32_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_32_badDirection_mask : SignMask := ⟨32, by decide⟩
private def rank_000000011_mask_32_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_32_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_32_badDirection_b : Vec3 Rat := { x := (20/3), y := -4, z := -4 }
private def rank_000000011_mask_32_badDirection_denom : Rat := (-20/3)

private theorem rank_000000011_mask_32_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_32_badDirection_word = some rank_000000011_mask_32_badDirection_rank := by
  decide

private theorem rank_000000011_mask_32_badDirection_unrank :
    unrankPairWord rank_000000011_mask_32_badDirection_rank = rank_000000011_mask_32_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_32_badDirection_word rank_000000011_mask_32_badDirection_rank).1
    rank_000000011_mask_32_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_32_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_32_badDirection_word rank_000000011_mask_32_badDirection_mask = rank_000000011_mask_32_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_32_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_32_badDirection_rank rank_000000011_mask_32_badDirection_mask = rank_000000011_mask_32_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_32_badDirection_unrank]
  exact rank_000000011_mask_32_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_32_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_32_badDirection_rank rank_000000011_mask_32_badDirection_mask = rank_000000011_mask_32_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_32_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_32_badDirection_b, rank_000000011_mask_32_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_32_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_32_badDirection_rank rank_000000011_mask_32_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_32_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_32_badDirection_seqAtRank, rank_000000011_mask_32_badDirection_bAtRank]
  norm_num [rank_000000011_mask_32_badDirection_denom, rank_000000011_mask_32_badDirection_seq, rank_000000011_mask_32_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_32_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_32_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_32_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_32_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_32_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_32_badDirection_denom]

private def rank_000000011_mask_33_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_33_badDirection_mask : SignMask := ⟨33, by decide⟩
private def rank_000000011_mask_33_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_33_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_33_badDirection_b : Vec3 Rat := { x := (20/3), y := 4, z := -4 }
private def rank_000000011_mask_33_badDirection_denom : Rat := (-20/3)

private theorem rank_000000011_mask_33_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_33_badDirection_word = some rank_000000011_mask_33_badDirection_rank := by
  decide

private theorem rank_000000011_mask_33_badDirection_unrank :
    unrankPairWord rank_000000011_mask_33_badDirection_rank = rank_000000011_mask_33_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_33_badDirection_word rank_000000011_mask_33_badDirection_rank).1
    rank_000000011_mask_33_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_33_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_33_badDirection_word rank_000000011_mask_33_badDirection_mask = rank_000000011_mask_33_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_33_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_33_badDirection_rank rank_000000011_mask_33_badDirection_mask = rank_000000011_mask_33_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_33_badDirection_unrank]
  exact rank_000000011_mask_33_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_33_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_33_badDirection_rank rank_000000011_mask_33_badDirection_mask = rank_000000011_mask_33_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_33_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_33_badDirection_b, rank_000000011_mask_33_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_33_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_33_badDirection_rank rank_000000011_mask_33_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_33_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_33_badDirection_seqAtRank, rank_000000011_mask_33_badDirection_bAtRank]
  norm_num [rank_000000011_mask_33_badDirection_denom, rank_000000011_mask_33_badDirection_seq, rank_000000011_mask_33_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_33_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_33_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_33_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_33_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_33_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_33_badDirection_denom]

private def rank_000000011_mask_34_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_34_badDirection_mask : SignMask := ⟨34, by decide⟩
private def rank_000000011_mask_34_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_34_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_34_badDirection_b : Vec3 Rat := { x := (20/3), y := -4, z := 4 }
private def rank_000000011_mask_34_badDirection_denom : Rat := (-20/3)

private theorem rank_000000011_mask_34_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_34_badDirection_word = some rank_000000011_mask_34_badDirection_rank := by
  decide

private theorem rank_000000011_mask_34_badDirection_unrank :
    unrankPairWord rank_000000011_mask_34_badDirection_rank = rank_000000011_mask_34_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_34_badDirection_word rank_000000011_mask_34_badDirection_rank).1
    rank_000000011_mask_34_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_34_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_34_badDirection_word rank_000000011_mask_34_badDirection_mask = rank_000000011_mask_34_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_34_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_34_badDirection_rank rank_000000011_mask_34_badDirection_mask = rank_000000011_mask_34_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_34_badDirection_unrank]
  exact rank_000000011_mask_34_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_34_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_34_badDirection_rank rank_000000011_mask_34_badDirection_mask = rank_000000011_mask_34_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_34_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_34_badDirection_b, rank_000000011_mask_34_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_34_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_34_badDirection_rank rank_000000011_mask_34_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_34_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_34_badDirection_seqAtRank, rank_000000011_mask_34_badDirection_bAtRank]
  norm_num [rank_000000011_mask_34_badDirection_denom, rank_000000011_mask_34_badDirection_seq, rank_000000011_mask_34_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_34_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_34_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_34_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_34_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_34_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_34_badDirection_denom]

private def rank_000000011_mask_35_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_35_badDirection_mask : SignMask := ⟨35, by decide⟩
private def rank_000000011_mask_35_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_35_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_35_badDirection_b : Vec3 Rat := { x := (20/3), y := 4, z := 4 }
private def rank_000000011_mask_35_badDirection_denom : Rat := (-20/3)

private theorem rank_000000011_mask_35_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_35_badDirection_word = some rank_000000011_mask_35_badDirection_rank := by
  decide

private theorem rank_000000011_mask_35_badDirection_unrank :
    unrankPairWord rank_000000011_mask_35_badDirection_rank = rank_000000011_mask_35_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_35_badDirection_word rank_000000011_mask_35_badDirection_rank).1
    rank_000000011_mask_35_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_35_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_35_badDirection_word rank_000000011_mask_35_badDirection_mask = rank_000000011_mask_35_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_35_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_35_badDirection_rank rank_000000011_mask_35_badDirection_mask = rank_000000011_mask_35_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_35_badDirection_unrank]
  exact rank_000000011_mask_35_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_35_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_35_badDirection_rank rank_000000011_mask_35_badDirection_mask = rank_000000011_mask_35_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_35_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_35_badDirection_b, rank_000000011_mask_35_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_35_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_35_badDirection_rank rank_000000011_mask_35_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_35_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_35_badDirection_seqAtRank, rank_000000011_mask_35_badDirection_bAtRank]
  norm_num [rank_000000011_mask_35_badDirection_denom, rank_000000011_mask_35_badDirection_seq, rank_000000011_mask_35_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_35_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_35_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_35_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_35_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_35_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_35_badDirection_denom]

private def rank_000000011_mask_36_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_36_badDirection_mask : SignMask := ⟨36, by decide⟩
private def rank_000000011_mask_36_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_36_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_36_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (4/3) }
private def rank_000000011_mask_36_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_36_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_36_badDirection_word = some rank_000000011_mask_36_badDirection_rank := by
  decide

private theorem rank_000000011_mask_36_badDirection_unrank :
    unrankPairWord rank_000000011_mask_36_badDirection_rank = rank_000000011_mask_36_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_36_badDirection_word rank_000000011_mask_36_badDirection_rank).1
    rank_000000011_mask_36_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_36_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_36_badDirection_word rank_000000011_mask_36_badDirection_mask = rank_000000011_mask_36_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_36_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_36_badDirection_rank rank_000000011_mask_36_badDirection_mask = rank_000000011_mask_36_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_36_badDirection_unrank]
  exact rank_000000011_mask_36_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_36_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_36_badDirection_rank rank_000000011_mask_36_badDirection_mask = rank_000000011_mask_36_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_36_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_36_badDirection_b, rank_000000011_mask_36_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_36_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_36_badDirection_rank rank_000000011_mask_36_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_36_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_36_badDirection_seqAtRank, rank_000000011_mask_36_badDirection_bAtRank]
  norm_num [rank_000000011_mask_36_badDirection_denom, rank_000000011_mask_36_badDirection_seq, rank_000000011_mask_36_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_36_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_36_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_36_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_36_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_36_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_36_badDirection_denom]

private def rank_000000011_mask_37_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_37_badDirection_mask : SignMask := ⟨37, by decide⟩
private def rank_000000011_mask_37_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_37_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_37_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (4/3) }
private def rank_000000011_mask_37_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_37_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_37_badDirection_word = some rank_000000011_mask_37_badDirection_rank := by
  decide

private theorem rank_000000011_mask_37_badDirection_unrank :
    unrankPairWord rank_000000011_mask_37_badDirection_rank = rank_000000011_mask_37_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_37_badDirection_word rank_000000011_mask_37_badDirection_rank).1
    rank_000000011_mask_37_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_37_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_37_badDirection_word rank_000000011_mask_37_badDirection_mask = rank_000000011_mask_37_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_37_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_37_badDirection_rank rank_000000011_mask_37_badDirection_mask = rank_000000011_mask_37_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_37_badDirection_unrank]
  exact rank_000000011_mask_37_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_37_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_37_badDirection_rank rank_000000011_mask_37_badDirection_mask = rank_000000011_mask_37_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_37_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_37_badDirection_b, rank_000000011_mask_37_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_37_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_37_badDirection_rank rank_000000011_mask_37_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_37_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_37_badDirection_seqAtRank, rank_000000011_mask_37_badDirection_bAtRank]
  norm_num [rank_000000011_mask_37_badDirection_denom, rank_000000011_mask_37_badDirection_seq, rank_000000011_mask_37_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_37_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_37_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_37_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_37_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_37_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_37_badDirection_denom]

private def rank_000000011_mask_38_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_38_badDirection_mask : SignMask := ⟨38, by decide⟩
private def rank_000000011_mask_38_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_38_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_38_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (28/3) }
private def rank_000000011_mask_38_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_38_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_38_badDirection_word = some rank_000000011_mask_38_badDirection_rank := by
  decide

private theorem rank_000000011_mask_38_badDirection_unrank :
    unrankPairWord rank_000000011_mask_38_badDirection_rank = rank_000000011_mask_38_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_38_badDirection_word rank_000000011_mask_38_badDirection_rank).1
    rank_000000011_mask_38_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_38_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_38_badDirection_word rank_000000011_mask_38_badDirection_mask = rank_000000011_mask_38_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_38_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_38_badDirection_rank rank_000000011_mask_38_badDirection_mask = rank_000000011_mask_38_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_38_badDirection_unrank]
  exact rank_000000011_mask_38_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_38_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_38_badDirection_rank rank_000000011_mask_38_badDirection_mask = rank_000000011_mask_38_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_38_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_38_badDirection_b, rank_000000011_mask_38_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_38_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_38_badDirection_rank rank_000000011_mask_38_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_38_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_38_badDirection_seqAtRank, rank_000000011_mask_38_badDirection_bAtRank]
  norm_num [rank_000000011_mask_38_badDirection_denom, rank_000000011_mask_38_badDirection_seq, rank_000000011_mask_38_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_38_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_38_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_38_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_38_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_38_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_38_badDirection_denom]

private def rank_000000011_mask_39_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_39_badDirection_mask : SignMask := ⟨39, by decide⟩
private def rank_000000011_mask_39_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_39_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_39_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (28/3) }
private def rank_000000011_mask_39_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_39_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_39_badDirection_word = some rank_000000011_mask_39_badDirection_rank := by
  decide

private theorem rank_000000011_mask_39_badDirection_unrank :
    unrankPairWord rank_000000011_mask_39_badDirection_rank = rank_000000011_mask_39_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_39_badDirection_word rank_000000011_mask_39_badDirection_rank).1
    rank_000000011_mask_39_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_39_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_39_badDirection_word rank_000000011_mask_39_badDirection_mask = rank_000000011_mask_39_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_39_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_39_badDirection_rank rank_000000011_mask_39_badDirection_mask = rank_000000011_mask_39_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_39_badDirection_unrank]
  exact rank_000000011_mask_39_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_39_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_39_badDirection_rank rank_000000011_mask_39_badDirection_mask = rank_000000011_mask_39_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_39_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_39_badDirection_b, rank_000000011_mask_39_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_39_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_39_badDirection_rank rank_000000011_mask_39_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_39_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_39_badDirection_seqAtRank, rank_000000011_mask_39_badDirection_bAtRank]
  norm_num [rank_000000011_mask_39_badDirection_denom, rank_000000011_mask_39_badDirection_seq, rank_000000011_mask_39_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_39_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_39_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_39_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_39_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_39_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_39_badDirection_denom]

private def rank_000000011_mask_40_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_40_badDirection_mask : SignMask := ⟨40, by decide⟩
private def rank_000000011_mask_40_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_40_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_40_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (-28/3) }
private def rank_000000011_mask_40_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_40_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_40_badDirection_word = some rank_000000011_mask_40_badDirection_rank := by
  decide

private theorem rank_000000011_mask_40_badDirection_unrank :
    unrankPairWord rank_000000011_mask_40_badDirection_rank = rank_000000011_mask_40_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_40_badDirection_word rank_000000011_mask_40_badDirection_rank).1
    rank_000000011_mask_40_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_40_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_40_badDirection_word rank_000000011_mask_40_badDirection_mask = rank_000000011_mask_40_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_40_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_40_badDirection_rank rank_000000011_mask_40_badDirection_mask = rank_000000011_mask_40_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_40_badDirection_unrank]
  exact rank_000000011_mask_40_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_40_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_40_badDirection_rank rank_000000011_mask_40_badDirection_mask = rank_000000011_mask_40_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_40_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_40_badDirection_b, rank_000000011_mask_40_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_40_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_40_badDirection_rank rank_000000011_mask_40_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_40_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_40_badDirection_seqAtRank, rank_000000011_mask_40_badDirection_bAtRank]
  norm_num [rank_000000011_mask_40_badDirection_denom, rank_000000011_mask_40_badDirection_seq, rank_000000011_mask_40_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_40_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_40_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_40_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_40_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_40_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_40_badDirection_denom]

private def rank_000000011_mask_41_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_41_badDirection_mask : SignMask := ⟨41, by decide⟩
private def rank_000000011_mask_41_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_41_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_41_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (-28/3) }
private def rank_000000011_mask_41_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_41_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_41_badDirection_word = some rank_000000011_mask_41_badDirection_rank := by
  decide

private theorem rank_000000011_mask_41_badDirection_unrank :
    unrankPairWord rank_000000011_mask_41_badDirection_rank = rank_000000011_mask_41_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_41_badDirection_word rank_000000011_mask_41_badDirection_rank).1
    rank_000000011_mask_41_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_41_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_41_badDirection_word rank_000000011_mask_41_badDirection_mask = rank_000000011_mask_41_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_41_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_41_badDirection_rank rank_000000011_mask_41_badDirection_mask = rank_000000011_mask_41_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_41_badDirection_unrank]
  exact rank_000000011_mask_41_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_41_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_41_badDirection_rank rank_000000011_mask_41_badDirection_mask = rank_000000011_mask_41_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_41_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_41_badDirection_b, rank_000000011_mask_41_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_41_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_41_badDirection_rank rank_000000011_mask_41_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_41_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_41_badDirection_seqAtRank, rank_000000011_mask_41_badDirection_bAtRank]
  norm_num [rank_000000011_mask_41_badDirection_denom, rank_000000011_mask_41_badDirection_seq, rank_000000011_mask_41_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_41_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_41_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_41_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_41_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_41_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_41_badDirection_denom]

private def rank_000000011_mask_42_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_42_badDirection_mask : SignMask := ⟨42, by decide⟩
private def rank_000000011_mask_42_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_42_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_42_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (-4/3) }
private def rank_000000011_mask_42_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_42_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_42_badDirection_word = some rank_000000011_mask_42_badDirection_rank := by
  decide

private theorem rank_000000011_mask_42_badDirection_unrank :
    unrankPairWord rank_000000011_mask_42_badDirection_rank = rank_000000011_mask_42_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_42_badDirection_word rank_000000011_mask_42_badDirection_rank).1
    rank_000000011_mask_42_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_42_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_42_badDirection_word rank_000000011_mask_42_badDirection_mask = rank_000000011_mask_42_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_42_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_42_badDirection_rank rank_000000011_mask_42_badDirection_mask = rank_000000011_mask_42_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_42_badDirection_unrank]
  exact rank_000000011_mask_42_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_42_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_42_badDirection_rank rank_000000011_mask_42_badDirection_mask = rank_000000011_mask_42_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_42_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_42_badDirection_b, rank_000000011_mask_42_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_42_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_42_badDirection_rank rank_000000011_mask_42_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_42_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_42_badDirection_seqAtRank, rank_000000011_mask_42_badDirection_bAtRank]
  norm_num [rank_000000011_mask_42_badDirection_denom, rank_000000011_mask_42_badDirection_seq, rank_000000011_mask_42_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_42_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_42_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_42_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_42_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_42_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_42_badDirection_denom]

private def rank_000000011_mask_43_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_43_badDirection_mask : SignMask := ⟨43, by decide⟩
private def rank_000000011_mask_43_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_43_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_43_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (-4/3) }
private def rank_000000011_mask_43_badDirection_denom : Rat := (-4/3)

private theorem rank_000000011_mask_43_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_43_badDirection_word = some rank_000000011_mask_43_badDirection_rank := by
  decide

private theorem rank_000000011_mask_43_badDirection_unrank :
    unrankPairWord rank_000000011_mask_43_badDirection_rank = rank_000000011_mask_43_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_43_badDirection_word rank_000000011_mask_43_badDirection_rank).1
    rank_000000011_mask_43_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_43_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_43_badDirection_word rank_000000011_mask_43_badDirection_mask = rank_000000011_mask_43_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_43_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_43_badDirection_rank rank_000000011_mask_43_badDirection_mask = rank_000000011_mask_43_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_43_badDirection_unrank]
  exact rank_000000011_mask_43_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_43_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_43_badDirection_rank rank_000000011_mask_43_badDirection_mask = rank_000000011_mask_43_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_43_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_43_badDirection_b, rank_000000011_mask_43_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_43_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_43_badDirection_rank rank_000000011_mask_43_badDirection_mask ⟨1, by decide⟩ =
      rank_000000011_mask_43_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_43_badDirection_seqAtRank, rank_000000011_mask_43_badDirection_bAtRank]
  norm_num [rank_000000011_mask_43_badDirection_denom, rank_000000011_mask_43_badDirection_seq, rank_000000011_mask_43_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_43_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_43_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_43_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_43_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_43_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_43_badDirection_denom]

private def rank_000000011_mask_44_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_44_badDirection_mask : SignMask := ⟨44, by decide⟩
private def rank_000000011_mask_44_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_44_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_44_badDirection_b : Vec3 Rat := { x := -4, y := (20/3), z := -4 }
private def rank_000000011_mask_44_badDirection_denom : Rat := (-20/3)

private theorem rank_000000011_mask_44_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_44_badDirection_word = some rank_000000011_mask_44_badDirection_rank := by
  decide

private theorem rank_000000011_mask_44_badDirection_unrank :
    unrankPairWord rank_000000011_mask_44_badDirection_rank = rank_000000011_mask_44_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_44_badDirection_word rank_000000011_mask_44_badDirection_rank).1
    rank_000000011_mask_44_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_44_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_44_badDirection_word rank_000000011_mask_44_badDirection_mask = rank_000000011_mask_44_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_44_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_44_badDirection_rank rank_000000011_mask_44_badDirection_mask = rank_000000011_mask_44_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_44_badDirection_unrank]
  exact rank_000000011_mask_44_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_44_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_44_badDirection_rank rank_000000011_mask_44_badDirection_mask = rank_000000011_mask_44_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_44_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_44_badDirection_b, rank_000000011_mask_44_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_44_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_44_badDirection_rank rank_000000011_mask_44_badDirection_mask ⟨2, by decide⟩ =
      rank_000000011_mask_44_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_44_badDirection_seqAtRank, rank_000000011_mask_44_badDirection_bAtRank]
  norm_num [rank_000000011_mask_44_badDirection_denom, rank_000000011_mask_44_badDirection_seq, rank_000000011_mask_44_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_44_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_44_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_44_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_44_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_44_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_44_badDirection_denom]

private def rank_000000011_mask_45_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_45_badDirection_mask : SignMask := ⟨45, by decide⟩
private def rank_000000011_mask_45_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_45_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_45_badDirection_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def rank_000000011_mask_45_badDirection_denom : Rat := (-4/9)

private theorem rank_000000011_mask_45_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_45_badDirection_word = some rank_000000011_mask_45_badDirection_rank := by
  decide

private theorem rank_000000011_mask_45_badDirection_unrank :
    unrankPairWord rank_000000011_mask_45_badDirection_rank = rank_000000011_mask_45_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_45_badDirection_word rank_000000011_mask_45_badDirection_rank).1
    rank_000000011_mask_45_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_45_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_45_badDirection_word rank_000000011_mask_45_badDirection_mask = rank_000000011_mask_45_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_45_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_45_badDirection_rank rank_000000011_mask_45_badDirection_mask = rank_000000011_mask_45_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_45_badDirection_unrank]
  exact rank_000000011_mask_45_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_45_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_45_badDirection_rank rank_000000011_mask_45_badDirection_mask = rank_000000011_mask_45_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_45_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_45_badDirection_b, rank_000000011_mask_45_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_45_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_45_badDirection_rank rank_000000011_mask_45_badDirection_mask ⟨9, by decide⟩ =
      rank_000000011_mask_45_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_45_badDirection_seqAtRank, rank_000000011_mask_45_badDirection_bAtRank]
  norm_num [rank_000000011_mask_45_badDirection_denom, rank_000000011_mask_45_badDirection_seq, rank_000000011_mask_45_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_45_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_45_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_45_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_45_badDirection_mask)
      (i := ⟨9, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_45_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_45_badDirection_denom]

private def rank_000000011_mask_46_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_46_badDirection_mask : SignMask := ⟨46, by decide⟩
private def rank_000000011_mask_46_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_46_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_46_badDirection_b : Vec3 Rat := { x := -4, y := (20/3), z := 4 }
private def rank_000000011_mask_46_badDirection_denom : Rat := (-20/3)

private theorem rank_000000011_mask_46_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_46_badDirection_word = some rank_000000011_mask_46_badDirection_rank := by
  decide

private theorem rank_000000011_mask_46_badDirection_unrank :
    unrankPairWord rank_000000011_mask_46_badDirection_rank = rank_000000011_mask_46_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_46_badDirection_word rank_000000011_mask_46_badDirection_rank).1
    rank_000000011_mask_46_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_46_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_46_badDirection_word rank_000000011_mask_46_badDirection_mask = rank_000000011_mask_46_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_46_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_46_badDirection_rank rank_000000011_mask_46_badDirection_mask = rank_000000011_mask_46_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_46_badDirection_unrank]
  exact rank_000000011_mask_46_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_46_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_46_badDirection_rank rank_000000011_mask_46_badDirection_mask = rank_000000011_mask_46_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_46_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_46_badDirection_b, rank_000000011_mask_46_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_46_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_46_badDirection_rank rank_000000011_mask_46_badDirection_mask ⟨2, by decide⟩ =
      rank_000000011_mask_46_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_46_badDirection_seqAtRank, rank_000000011_mask_46_badDirection_bAtRank]
  norm_num [rank_000000011_mask_46_badDirection_denom, rank_000000011_mask_46_badDirection_seq, rank_000000011_mask_46_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_46_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_46_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_46_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_46_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_46_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_46_badDirection_denom]

private def rank_000000011_mask_47_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_47_badDirection_mask : SignMask := ⟨47, by decide⟩
private def rank_000000011_mask_47_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_47_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_47_badDirection_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def rank_000000011_mask_47_badDirection_denom : Rat := (-28/9)

private theorem rank_000000011_mask_47_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_47_badDirection_word = some rank_000000011_mask_47_badDirection_rank := by
  decide

private theorem rank_000000011_mask_47_badDirection_unrank :
    unrankPairWord rank_000000011_mask_47_badDirection_rank = rank_000000011_mask_47_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_47_badDirection_word rank_000000011_mask_47_badDirection_rank).1
    rank_000000011_mask_47_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_47_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_47_badDirection_word rank_000000011_mask_47_badDirection_mask = rank_000000011_mask_47_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_47_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_47_badDirection_rank rank_000000011_mask_47_badDirection_mask = rank_000000011_mask_47_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_47_badDirection_unrank]
  exact rank_000000011_mask_47_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_47_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_47_badDirection_rank rank_000000011_mask_47_badDirection_mask = rank_000000011_mask_47_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_47_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_47_badDirection_b, rank_000000011_mask_47_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_47_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_47_badDirection_rank rank_000000011_mask_47_badDirection_mask ⟨9, by decide⟩ =
      rank_000000011_mask_47_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_47_badDirection_seqAtRank, rank_000000011_mask_47_badDirection_bAtRank]
  norm_num [rank_000000011_mask_47_badDirection_denom, rank_000000011_mask_47_badDirection_seq, rank_000000011_mask_47_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_47_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_47_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_47_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_47_badDirection_mask)
      (i := ⟨9, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_47_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_47_badDirection_denom]

private def rank_000000011_mask_48_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_48_badDirection_mask : SignMask := ⟨48, by decide⟩
private def rank_000000011_mask_48_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_48_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_48_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (-20/9) }
private def rank_000000011_mask_48_badDirection_denom : Rat := (-100/9)

private theorem rank_000000011_mask_48_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_48_badDirection_word = some rank_000000011_mask_48_badDirection_rank := by
  decide

private theorem rank_000000011_mask_48_badDirection_unrank :
    unrankPairWord rank_000000011_mask_48_badDirection_rank = rank_000000011_mask_48_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_48_badDirection_word rank_000000011_mask_48_badDirection_rank).1
    rank_000000011_mask_48_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_48_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_48_badDirection_word rank_000000011_mask_48_badDirection_mask = rank_000000011_mask_48_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_48_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_48_badDirection_rank rank_000000011_mask_48_badDirection_mask = rank_000000011_mask_48_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_48_badDirection_unrank]
  exact rank_000000011_mask_48_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_48_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_48_badDirection_rank rank_000000011_mask_48_badDirection_mask = rank_000000011_mask_48_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_48_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_48_badDirection_b, rank_000000011_mask_48_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_48_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_48_badDirection_rank rank_000000011_mask_48_badDirection_mask ⟨11, by decide⟩ =
      rank_000000011_mask_48_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_48_badDirection_seqAtRank, rank_000000011_mask_48_badDirection_bAtRank]
  norm_num [rank_000000011_mask_48_badDirection_denom, rank_000000011_mask_48_badDirection_seq, rank_000000011_mask_48_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_48_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_48_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_48_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_48_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_48_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_48_badDirection_denom]

private def rank_000000011_mask_49_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_49_badDirection_mask : SignMask := ⟨49, by decide⟩
private def rank_000000011_mask_49_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_49_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_49_badDirection_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-20/9) }
private def rank_000000011_mask_49_badDirection_denom : Rat := (-20/9)

private theorem rank_000000011_mask_49_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_49_badDirection_word = some rank_000000011_mask_49_badDirection_rank := by
  decide

private theorem rank_000000011_mask_49_badDirection_unrank :
    unrankPairWord rank_000000011_mask_49_badDirection_rank = rank_000000011_mask_49_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_49_badDirection_word rank_000000011_mask_49_badDirection_rank).1
    rank_000000011_mask_49_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_49_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_49_badDirection_word rank_000000011_mask_49_badDirection_mask = rank_000000011_mask_49_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_49_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_49_badDirection_rank rank_000000011_mask_49_badDirection_mask = rank_000000011_mask_49_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_49_badDirection_unrank]
  exact rank_000000011_mask_49_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_49_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_49_badDirection_rank rank_000000011_mask_49_badDirection_mask = rank_000000011_mask_49_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_49_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_49_badDirection_b, rank_000000011_mask_49_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_49_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_49_badDirection_rank rank_000000011_mask_49_badDirection_mask ⟨6, by decide⟩ =
      rank_000000011_mask_49_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_49_badDirection_seqAtRank, rank_000000011_mask_49_badDirection_bAtRank]
  norm_num [rank_000000011_mask_49_badDirection_denom, rank_000000011_mask_49_badDirection_seq, rank_000000011_mask_49_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_49_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_49_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_49_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_49_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_49_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_49_badDirection_denom]

private def rank_000000011_mask_50_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_50_badDirection_mask : SignMask := ⟨50, by decide⟩
private def rank_000000011_mask_50_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_50_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_50_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (52/9) }
private def rank_000000011_mask_50_badDirection_denom : Rat := (-20/9)

private theorem rank_000000011_mask_50_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_50_badDirection_word = some rank_000000011_mask_50_badDirection_rank := by
  decide

private theorem rank_000000011_mask_50_badDirection_unrank :
    unrankPairWord rank_000000011_mask_50_badDirection_rank = rank_000000011_mask_50_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_50_badDirection_word rank_000000011_mask_50_badDirection_rank).1
    rank_000000011_mask_50_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_50_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_50_badDirection_word rank_000000011_mask_50_badDirection_mask = rank_000000011_mask_50_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_50_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_50_badDirection_rank rank_000000011_mask_50_badDirection_mask = rank_000000011_mask_50_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_50_badDirection_unrank]
  exact rank_000000011_mask_50_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_50_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_50_badDirection_rank rank_000000011_mask_50_badDirection_mask = rank_000000011_mask_50_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_50_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_50_badDirection_b, rank_000000011_mask_50_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_50_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_50_badDirection_rank rank_000000011_mask_50_badDirection_mask ⟨6, by decide⟩ =
      rank_000000011_mask_50_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_50_badDirection_seqAtRank, rank_000000011_mask_50_badDirection_bAtRank]
  norm_num [rank_000000011_mask_50_badDirection_denom, rank_000000011_mask_50_badDirection_seq, rank_000000011_mask_50_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_50_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_50_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_50_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_50_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_50_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_50_badDirection_denom]

private def rank_000000011_mask_51_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_51_badDirection_mask : SignMask := ⟨51, by decide⟩
private def rank_000000011_mask_51_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_51_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_51_badDirection_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (52/9) }
private def rank_000000011_mask_51_badDirection_denom : Rat := (-92/9)

private theorem rank_000000011_mask_51_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_51_badDirection_word = some rank_000000011_mask_51_badDirection_rank := by
  decide

private theorem rank_000000011_mask_51_badDirection_unrank :
    unrankPairWord rank_000000011_mask_51_badDirection_rank = rank_000000011_mask_51_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_51_badDirection_word rank_000000011_mask_51_badDirection_rank).1
    rank_000000011_mask_51_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_51_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_51_badDirection_word rank_000000011_mask_51_badDirection_mask = rank_000000011_mask_51_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_51_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_51_badDirection_rank rank_000000011_mask_51_badDirection_mask = rank_000000011_mask_51_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_51_badDirection_unrank]
  exact rank_000000011_mask_51_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_51_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_51_badDirection_rank rank_000000011_mask_51_badDirection_mask = rank_000000011_mask_51_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_51_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_51_badDirection_b, rank_000000011_mask_51_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_51_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_51_badDirection_rank rank_000000011_mask_51_badDirection_mask ⟨6, by decide⟩ =
      rank_000000011_mask_51_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_51_badDirection_seqAtRank, rank_000000011_mask_51_badDirection_bAtRank]
  norm_num [rank_000000011_mask_51_badDirection_denom, rank_000000011_mask_51_badDirection_seq, rank_000000011_mask_51_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_51_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_51_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_51_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_51_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_51_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_51_badDirection_denom]

private def rank_000000011_mask_52_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_52_badDirection_mask : SignMask := ⟨52, by decide⟩
private def rank_000000011_mask_52_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_52_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_52_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-4/9), z := (28/9) }
private def rank_000000011_mask_52_badDirection_denom : Rat := (-28/9)

private theorem rank_000000011_mask_52_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_52_badDirection_word = some rank_000000011_mask_52_badDirection_rank := by
  decide

private theorem rank_000000011_mask_52_badDirection_unrank :
    unrankPairWord rank_000000011_mask_52_badDirection_rank = rank_000000011_mask_52_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_52_badDirection_word rank_000000011_mask_52_badDirection_rank).1
    rank_000000011_mask_52_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_52_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_52_badDirection_word rank_000000011_mask_52_badDirection_mask = rank_000000011_mask_52_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_52_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_52_badDirection_rank rank_000000011_mask_52_badDirection_mask = rank_000000011_mask_52_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_52_badDirection_unrank]
  exact rank_000000011_mask_52_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_52_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_52_badDirection_rank rank_000000011_mask_52_badDirection_mask = rank_000000011_mask_52_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_52_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_52_badDirection_b, rank_000000011_mask_52_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_52_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_52_badDirection_rank rank_000000011_mask_52_badDirection_mask ⟨4, by decide⟩ =
      rank_000000011_mask_52_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_52_badDirection_seqAtRank, rank_000000011_mask_52_badDirection_bAtRank]
  norm_num [rank_000000011_mask_52_badDirection_denom, rank_000000011_mask_52_badDirection_seq, rank_000000011_mask_52_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_52_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_52_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_52_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_52_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_52_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_52_badDirection_denom]

private def rank_000000011_mask_53_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_53_badDirection_mask : SignMask := ⟨53, by decide⟩
private def rank_000000011_mask_53_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_53_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_53_badDirection_b : Vec3 Rat := { x := (-68/9), y := (68/9), z := (28/9) }
private def rank_000000011_mask_53_badDirection_denom : Rat := (-28/9)

private theorem rank_000000011_mask_53_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_53_badDirection_word = some rank_000000011_mask_53_badDirection_rank := by
  decide

private theorem rank_000000011_mask_53_badDirection_unrank :
    unrankPairWord rank_000000011_mask_53_badDirection_rank = rank_000000011_mask_53_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_53_badDirection_word rank_000000011_mask_53_badDirection_rank).1
    rank_000000011_mask_53_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_53_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_53_badDirection_word rank_000000011_mask_53_badDirection_mask = rank_000000011_mask_53_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_53_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_53_badDirection_rank rank_000000011_mask_53_badDirection_mask = rank_000000011_mask_53_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_53_badDirection_unrank]
  exact rank_000000011_mask_53_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_53_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_53_badDirection_rank rank_000000011_mask_53_badDirection_mask = rank_000000011_mask_53_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_53_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_53_badDirection_b, rank_000000011_mask_53_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_53_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_53_badDirection_rank rank_000000011_mask_53_badDirection_mask ⟨4, by decide⟩ =
      rank_000000011_mask_53_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_53_badDirection_seqAtRank, rank_000000011_mask_53_badDirection_bAtRank]
  norm_num [rank_000000011_mask_53_badDirection_denom, rank_000000011_mask_53_badDirection_seq, rank_000000011_mask_53_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_53_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_53_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_53_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_53_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_53_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_53_badDirection_denom]

private def rank_000000011_mask_55_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_55_badDirection_mask : SignMask := ⟨55, by decide⟩
private def rank_000000011_mask_55_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_55_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def rank_000000011_mask_55_badDirection_b : Vec3 Rat := { x := (-68/9), y := (68/9), z := (100/9) }
private def rank_000000011_mask_55_badDirection_denom : Rat := -4

private theorem rank_000000011_mask_55_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_55_badDirection_word = some rank_000000011_mask_55_badDirection_rank := by
  decide

private theorem rank_000000011_mask_55_badDirection_unrank :
    unrankPairWord rank_000000011_mask_55_badDirection_rank = rank_000000011_mask_55_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_55_badDirection_word rank_000000011_mask_55_badDirection_rank).1
    rank_000000011_mask_55_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_55_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_55_badDirection_word rank_000000011_mask_55_badDirection_mask = rank_000000011_mask_55_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_55_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_55_badDirection_rank rank_000000011_mask_55_badDirection_mask = rank_000000011_mask_55_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_55_badDirection_unrank]
  exact rank_000000011_mask_55_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_55_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_55_badDirection_rank rank_000000011_mask_55_badDirection_mask = rank_000000011_mask_55_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_55_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_55_badDirection_b, rank_000000011_mask_55_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_55_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_55_badDirection_rank rank_000000011_mask_55_badDirection_mask ⟨8, by decide⟩ =
      rank_000000011_mask_55_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_55_badDirection_seqAtRank, rank_000000011_mask_55_badDirection_bAtRank]
  norm_num [rank_000000011_mask_55_badDirection_denom, rank_000000011_mask_55_badDirection_seq, rank_000000011_mask_55_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_55_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_55_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_55_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_55_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_55_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_55_badDirection_denom]

private def rank_000000011_mask_56_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_56_badDirection_mask : SignMask := ⟨56, by decide⟩
private def rank_000000011_mask_56_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_56_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_56_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-4/9), z := (-68/9) }
private def rank_000000011_mask_56_badDirection_denom : Rat := (-52/9)

private theorem rank_000000011_mask_56_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_56_badDirection_word = some rank_000000011_mask_56_badDirection_rank := by
  decide

private theorem rank_000000011_mask_56_badDirection_unrank :
    unrankPairWord rank_000000011_mask_56_badDirection_rank = rank_000000011_mask_56_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_56_badDirection_word rank_000000011_mask_56_badDirection_rank).1
    rank_000000011_mask_56_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_56_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_56_badDirection_word rank_000000011_mask_56_badDirection_mask = rank_000000011_mask_56_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_56_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_56_badDirection_rank rank_000000011_mask_56_badDirection_mask = rank_000000011_mask_56_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_56_badDirection_unrank]
  exact rank_000000011_mask_56_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_56_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_56_badDirection_rank rank_000000011_mask_56_badDirection_mask = rank_000000011_mask_56_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_56_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_56_badDirection_b, rank_000000011_mask_56_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_56_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_56_badDirection_rank rank_000000011_mask_56_badDirection_mask ⟨11, by decide⟩ =
      rank_000000011_mask_56_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_56_badDirection_seqAtRank, rank_000000011_mask_56_badDirection_bAtRank]
  norm_num [rank_000000011_mask_56_badDirection_denom, rank_000000011_mask_56_badDirection_seq, rank_000000011_mask_56_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_56_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_56_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_56_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_56_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_56_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_56_badDirection_denom]

private def rank_000000011_mask_57_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_57_badDirection_mask : SignMask := ⟨57, by decide⟩
private def rank_000000011_mask_57_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_57_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_57_badDirection_b : Vec3 Rat := { x := (-68/9), y := (68/9), z := (-68/9) }
private def rank_000000011_mask_57_badDirection_denom : Rat := (-68/9)

private theorem rank_000000011_mask_57_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_57_badDirection_word = some rank_000000011_mask_57_badDirection_rank := by
  decide

private theorem rank_000000011_mask_57_badDirection_unrank :
    unrankPairWord rank_000000011_mask_57_badDirection_rank = rank_000000011_mask_57_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_57_badDirection_word rank_000000011_mask_57_badDirection_rank).1
    rank_000000011_mask_57_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_57_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_57_badDirection_word rank_000000011_mask_57_badDirection_mask = rank_000000011_mask_57_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_57_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_57_badDirection_rank rank_000000011_mask_57_badDirection_mask = rank_000000011_mask_57_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_57_badDirection_unrank]
  exact rank_000000011_mask_57_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_57_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_57_badDirection_rank rank_000000011_mask_57_badDirection_mask = rank_000000011_mask_57_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_57_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_57_badDirection_b, rank_000000011_mask_57_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_57_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_57_badDirection_rank rank_000000011_mask_57_badDirection_mask ⟨6, by decide⟩ =
      rank_000000011_mask_57_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_57_badDirection_seqAtRank, rank_000000011_mask_57_badDirection_bAtRank]
  norm_num [rank_000000011_mask_57_badDirection_denom, rank_000000011_mask_57_badDirection_seq, rank_000000011_mask_57_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_57_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_57_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_57_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_57_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_57_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_57_badDirection_denom]

private def rank_000000011_mask_58_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_58_badDirection_mask : SignMask := ⟨58, by decide⟩
private def rank_000000011_mask_58_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_58_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_58_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-4/9), z := (4/9) }
private def rank_000000011_mask_58_badDirection_denom : Rat := (-68/9)

private theorem rank_000000011_mask_58_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_58_badDirection_word = some rank_000000011_mask_58_badDirection_rank := by
  decide

private theorem rank_000000011_mask_58_badDirection_unrank :
    unrankPairWord rank_000000011_mask_58_badDirection_rank = rank_000000011_mask_58_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_58_badDirection_word rank_000000011_mask_58_badDirection_rank).1
    rank_000000011_mask_58_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_58_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_58_badDirection_word rank_000000011_mask_58_badDirection_mask = rank_000000011_mask_58_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_58_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_58_badDirection_rank rank_000000011_mask_58_badDirection_mask = rank_000000011_mask_58_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_58_badDirection_unrank]
  exact rank_000000011_mask_58_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_58_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_58_badDirection_rank rank_000000011_mask_58_badDirection_mask = rank_000000011_mask_58_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_58_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_58_badDirection_b, rank_000000011_mask_58_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_58_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_58_badDirection_rank rank_000000011_mask_58_badDirection_mask ⟨6, by decide⟩ =
      rank_000000011_mask_58_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_58_badDirection_seqAtRank, rank_000000011_mask_58_badDirection_bAtRank]
  norm_num [rank_000000011_mask_58_badDirection_denom, rank_000000011_mask_58_badDirection_seq, rank_000000011_mask_58_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_58_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_58_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_58_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_58_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_58_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_58_badDirection_denom]

private def rank_000000011_mask_59_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_59_badDirection_mask : SignMask := ⟨59, by decide⟩
private def rank_000000011_mask_59_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_59_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_59_badDirection_b : Vec3 Rat := { x := (-68/9), y := (68/9), z := (4/9) }
private def rank_000000011_mask_59_badDirection_denom : Rat := (-140/9)

private theorem rank_000000011_mask_59_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_59_badDirection_word = some rank_000000011_mask_59_badDirection_rank := by
  decide

private theorem rank_000000011_mask_59_badDirection_unrank :
    unrankPairWord rank_000000011_mask_59_badDirection_rank = rank_000000011_mask_59_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_59_badDirection_word rank_000000011_mask_59_badDirection_rank).1
    rank_000000011_mask_59_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_59_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_59_badDirection_word rank_000000011_mask_59_badDirection_mask = rank_000000011_mask_59_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_59_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_59_badDirection_rank rank_000000011_mask_59_badDirection_mask = rank_000000011_mask_59_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_59_badDirection_unrank]
  exact rank_000000011_mask_59_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_59_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_59_badDirection_rank rank_000000011_mask_59_badDirection_mask = rank_000000011_mask_59_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_59_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_59_badDirection_b, rank_000000011_mask_59_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_59_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_59_badDirection_rank rank_000000011_mask_59_badDirection_mask ⟨6, by decide⟩ =
      rank_000000011_mask_59_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_59_badDirection_seqAtRank, rank_000000011_mask_59_badDirection_bAtRank]
  norm_num [rank_000000011_mask_59_badDirection_denom, rank_000000011_mask_59_badDirection_seq, rank_000000011_mask_59_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_59_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_59_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_59_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_59_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_59_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_59_badDirection_denom]

private def rank_000000011_mask_60_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_60_badDirection_mask : SignMask := ⟨60, by decide⟩
private def rank_000000011_mask_60_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_60_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_60_badDirection_b : Vec3 Rat := { x := (-116/9), y := (44/9), z := (-20/9) }
private def rank_000000011_mask_60_badDirection_denom : Rat := (-44/9)

private theorem rank_000000011_mask_60_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_60_badDirection_word = some rank_000000011_mask_60_badDirection_rank := by
  decide

private theorem rank_000000011_mask_60_badDirection_unrank :
    unrankPairWord rank_000000011_mask_60_badDirection_rank = rank_000000011_mask_60_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_60_badDirection_word rank_000000011_mask_60_badDirection_rank).1
    rank_000000011_mask_60_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_60_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_60_badDirection_word rank_000000011_mask_60_badDirection_mask = rank_000000011_mask_60_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_60_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_60_badDirection_rank rank_000000011_mask_60_badDirection_mask = rank_000000011_mask_60_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_60_badDirection_unrank]
  exact rank_000000011_mask_60_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_60_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_60_badDirection_rank rank_000000011_mask_60_badDirection_mask = rank_000000011_mask_60_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_60_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_60_badDirection_b, rank_000000011_mask_60_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_60_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_60_badDirection_rank rank_000000011_mask_60_badDirection_mask ⟨2, by decide⟩ =
      rank_000000011_mask_60_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_60_badDirection_seqAtRank, rank_000000011_mask_60_badDirection_bAtRank]
  norm_num [rank_000000011_mask_60_badDirection_denom, rank_000000011_mask_60_badDirection_seq, rank_000000011_mask_60_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_60_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_60_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_60_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_60_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_60_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_60_badDirection_denom]

private def rank_000000011_mask_62_badDirection_rank : Fin numPairWords := ⟨11, by decide⟩
private def rank_000000011_mask_62_badDirection_mask : SignMask := ⟨62, by decide⟩
private def rank_000000011_mask_62_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def rank_000000011_mask_62_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def rank_000000011_mask_62_badDirection_b : Vec3 Rat := { x := (-116/9), y := (44/9), z := (52/9) }
private def rank_000000011_mask_62_badDirection_denom : Rat := (-44/9)

private theorem rank_000000011_mask_62_badDirection_rankWord :
    rankPairWord? rank_000000011_mask_62_badDirection_word = some rank_000000011_mask_62_badDirection_rank := by
  decide

private theorem rank_000000011_mask_62_badDirection_unrank :
    unrankPairWord rank_000000011_mask_62_badDirection_rank = rank_000000011_mask_62_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000011_mask_62_badDirection_word rank_000000011_mask_62_badDirection_rank).1
    rank_000000011_mask_62_badDirection_rankWord |>.symm

private theorem rank_000000011_mask_62_badDirection_seqChoice :
    translationChoiceSeq rank_000000011_mask_62_badDirection_word rank_000000011_mask_62_badDirection_mask = rank_000000011_mask_62_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000011_mask_62_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000011_mask_62_badDirection_rank rank_000000011_mask_62_badDirection_mask = rank_000000011_mask_62_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000011_mask_62_badDirection_unrank]
  exact rank_000000011_mask_62_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_62_badDirection_bAtRank :
    translationBAtRankMask rank_000000011_mask_62_badDirection_rank rank_000000011_mask_62_badDirection_mask = rank_000000011_mask_62_badDirection_b := by
  rw [translationBAtRankMask, rank_000000011_mask_62_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000011_mask_62_badDirection_b, rank_000000011_mask_62_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000011_mask_62_badDirection_denomAtRank :
    impactDenomAtRank rank_000000011_mask_62_badDirection_rank rank_000000011_mask_62_badDirection_mask ⟨2, by decide⟩ =
      rank_000000011_mask_62_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000011_mask_62_badDirection_seqAtRank, rank_000000011_mask_62_badDirection_bAtRank]
  norm_num [rank_000000011_mask_62_badDirection_denom, rank_000000011_mask_62_badDirection_seq, rank_000000011_mask_62_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000011_mask_62_badDirection_notGood
    (hlt : 11 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords)
      rank_000000011_mask_62_badDirection_mask := by
  have hrank :
      (⟨11, hlt⟩ : Fin numPairWords) = rank_000000011_mask_62_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨11, hlt⟩ : Fin numPairWords))
      (mask := rank_000000011_mask_62_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000011_mask_62_badDirection_denomAtRank]
  norm_num [rank_000000011_mask_62_badDirection_denom]

private def case_000058_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000058_mask : SignMask := ⟨9, by decide⟩
private def case_000058_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000058_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000058_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-116/9) }
private def case_000058_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000058_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000058_rankWord :
    rankPairWord? case_000058_word = some case_000058_rank := by
  decide

private theorem case_000058_unrank :
    unrankPairWord case_000058_rank = case_000058_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000058_word case_000058_rank).1
    case_000058_rankWord |>.symm

private theorem case_000058_seqChoice :
    translationChoiceSeq case_000058_word case_000058_mask = case_000058_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000058_seqAtRank :
    translationSeqAtRankMask case_000058_rank case_000058_mask = case_000058_seq := by
  rw [translationSeqAtRankMask, case_000058_unrank]
  exact case_000058_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000058_bAtRank :
    translationBAtRankMask case_000058_rank case_000058_mask = case_000058_b := by
  rw [translationBAtRankMask, case_000058_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000058_b, case_000058_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000058_firstLine_eq :
    case_000058_support.firstLine case_000058_seq case_000058_b = case_000058_firstLine := by
  norm_num [case_000058_firstLine, case_000058_support, case_000058_seq, case_000058_b,
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
private theorem case_000058_secondLine_eq :
    case_000058_support.secondLine case_000058_seq case_000058_b = case_000058_secondLine := by
  norm_num [case_000058_secondLine, case_000058_support, case_000058_seq, case_000058_b,
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
private theorem case_000058_rows :
    EqEqPosVarFirstRows case_000058_support case_000058_rank.val case_000058_mask := by
  intro hlt
  have hrank : (⟨case_000058_rank.val, hlt⟩ : Fin numPairWords) = case_000058_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000058_rank.val, hlt⟩ case_000058_mask =
        case_000058_seq := by
    simpa [hrank] using case_000058_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000058_rank.val, hlt⟩ case_000058_mask =
        case_000058_b := by
    simpa [hrank] using case_000058_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000058_support case_000058_rank.val hlt
          case_000058_mask = case_000058_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000058_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000058_support case_000058_rank.val hlt
          case_000058_mask = case_000058_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000058_secondLine_eq]
  have case_000058_rowFirst :
      EqEqPosRow (FirstLineAt case_000058_support case_000058_rank.val hlt case_000058_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000058_firstLine, EqEqPosRow]
  have case_000058_fixedSecond :
      FixedRow (SecondLineAt case_000058_support case_000058_rank.val hlt case_000058_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000058_secondLine, FixedRow]
  exact ⟨case_000058_rowFirst, case_000058_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000058_sourceMatches :
    fam_000_desc.SourceMatches case_000058_rank.val case_000058_mask := by
  intro hlt
  have hrank :
      (⟨case_000058_rank.val, hlt⟩ : Fin numPairWords) = case_000058_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000058_rank.val, hlt⟩ case_000058_mask =
        case_000058_seq := by
    simpa [hrank] using case_000058_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000058_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000058_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000058_rank.val hlt case_000058_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000058_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000058_applies :
    fam_000_desc.Applies case_000058_rank.val case_000058_mask := by
  exact ⟨
    case_000058_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000058_support] using case_000058_rows
  ⟩

private theorem case_000058_covered :
    BoundedCovered case_000058_rank.val case_000058_mask :=
  BoundedCovered.fam000 case_000058_applies

private def case_000059_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000059_mask : SignMask := ⟨16, by decide⟩
private def case_000059_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000059_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000059_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-52/9) }
private def case_000059_firstLine : StrictLin2 := { a := -1, b := -1, c := (-71/13) }
private def case_000059_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000059_rankWord :
    rankPairWord? case_000059_word = some case_000059_rank := by
  decide

private theorem case_000059_unrank :
    unrankPairWord case_000059_rank = case_000059_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000059_word case_000059_rank).1
    case_000059_rankWord |>.symm

private theorem case_000059_seqChoice :
    translationChoiceSeq case_000059_word case_000059_mask = case_000059_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000059_seqAtRank :
    translationSeqAtRankMask case_000059_rank case_000059_mask = case_000059_seq := by
  rw [translationSeqAtRankMask, case_000059_unrank]
  exact case_000059_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000059_bAtRank :
    translationBAtRankMask case_000059_rank case_000059_mask = case_000059_b := by
  rw [translationBAtRankMask, case_000059_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000059_b, case_000059_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000059_firstLine_eq :
    case_000059_support.firstLine case_000059_seq case_000059_b = case_000059_firstLine := by
  norm_num [case_000059_firstLine, case_000059_support, case_000059_seq, case_000059_b,
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
private theorem case_000059_secondLine_eq :
    case_000059_support.secondLine case_000059_seq case_000059_b = case_000059_secondLine := by
  norm_num [case_000059_secondLine, case_000059_support, case_000059_seq, case_000059_b,
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
private theorem case_000059_rows :
    EqEqPosVarFirstRows case_000059_support case_000059_rank.val case_000059_mask := by
  intro hlt
  have hrank : (⟨case_000059_rank.val, hlt⟩ : Fin numPairWords) = case_000059_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000059_rank.val, hlt⟩ case_000059_mask =
        case_000059_seq := by
    simpa [hrank] using case_000059_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000059_rank.val, hlt⟩ case_000059_mask =
        case_000059_b := by
    simpa [hrank] using case_000059_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000059_support case_000059_rank.val hlt
          case_000059_mask = case_000059_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000059_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000059_support case_000059_rank.val hlt
          case_000059_mask = case_000059_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000059_secondLine_eq]
  have case_000059_rowFirst :
      EqEqPosRow (FirstLineAt case_000059_support case_000059_rank.val hlt case_000059_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000059_firstLine, EqEqPosRow]
  have case_000059_fixedSecond :
      FixedRow (SecondLineAt case_000059_support case_000059_rank.val hlt case_000059_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000059_secondLine, FixedRow]
  exact ⟨case_000059_rowFirst, case_000059_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000059_sourceMatches :
    fam_000_desc.SourceMatches case_000059_rank.val case_000059_mask := by
  intro hlt
  have hrank :
      (⟨case_000059_rank.val, hlt⟩ : Fin numPairWords) = case_000059_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000059_rank.val, hlt⟩ case_000059_mask =
        case_000059_seq := by
    simpa [hrank] using case_000059_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000059_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000059_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000059_rank.val hlt case_000059_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000059_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000059_applies :
    fam_000_desc.Applies case_000059_rank.val case_000059_mask := by
  exact ⟨
    case_000059_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000059_support] using case_000059_rows
  ⟩

private theorem case_000059_covered :
    BoundedCovered case_000059_rank.val case_000059_mask :=
  BoundedCovered.fam000 case_000059_applies

private def case_000060_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000060_mask : SignMask := ⟨18, by decide⟩
private def case_000060_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000060_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000060_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (20/9) }
private def case_000060_firstLine : StrictLin2 := { a := -1, b := -1, c := (-35/13) }
private def case_000060_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000060_rankWord :
    rankPairWord? case_000060_word = some case_000060_rank := by
  decide

private theorem case_000060_unrank :
    unrankPairWord case_000060_rank = case_000060_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000060_word case_000060_rank).1
    case_000060_rankWord |>.symm

private theorem case_000060_seqChoice :
    translationChoiceSeq case_000060_word case_000060_mask = case_000060_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000060_seqAtRank :
    translationSeqAtRankMask case_000060_rank case_000060_mask = case_000060_seq := by
  rw [translationSeqAtRankMask, case_000060_unrank]
  exact case_000060_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000060_bAtRank :
    translationBAtRankMask case_000060_rank case_000060_mask = case_000060_b := by
  rw [translationBAtRankMask, case_000060_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000060_b, case_000060_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000060_firstLine_eq :
    case_000060_support.firstLine case_000060_seq case_000060_b = case_000060_firstLine := by
  norm_num [case_000060_firstLine, case_000060_support, case_000060_seq, case_000060_b,
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
private theorem case_000060_secondLine_eq :
    case_000060_support.secondLine case_000060_seq case_000060_b = case_000060_secondLine := by
  norm_num [case_000060_secondLine, case_000060_support, case_000060_seq, case_000060_b,
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
private theorem case_000060_rows :
    EqEqPosVarFirstRows case_000060_support case_000060_rank.val case_000060_mask := by
  intro hlt
  have hrank : (⟨case_000060_rank.val, hlt⟩ : Fin numPairWords) = case_000060_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000060_rank.val, hlt⟩ case_000060_mask =
        case_000060_seq := by
    simpa [hrank] using case_000060_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000060_rank.val, hlt⟩ case_000060_mask =
        case_000060_b := by
    simpa [hrank] using case_000060_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000060_support case_000060_rank.val hlt
          case_000060_mask = case_000060_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000060_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000060_support case_000060_rank.val hlt
          case_000060_mask = case_000060_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000060_secondLine_eq]
  have case_000060_rowFirst :
      EqEqPosRow (FirstLineAt case_000060_support case_000060_rank.val hlt case_000060_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000060_firstLine, EqEqPosRow]
  have case_000060_fixedSecond :
      FixedRow (SecondLineAt case_000060_support case_000060_rank.val hlt case_000060_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000060_secondLine, FixedRow]
  exact ⟨case_000060_rowFirst, case_000060_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000060_sourceMatches :
    fam_000_desc.SourceMatches case_000060_rank.val case_000060_mask := by
  intro hlt
  have hrank :
      (⟨case_000060_rank.val, hlt⟩ : Fin numPairWords) = case_000060_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000060_rank.val, hlt⟩ case_000060_mask =
        case_000060_seq := by
    simpa [hrank] using case_000060_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000060_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000060_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000060_rank.val hlt case_000060_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000060_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000060_applies :
    fam_000_desc.Applies case_000060_rank.val case_000060_mask := by
  exact ⟨
    case_000060_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000060_support] using case_000060_rows
  ⟩

private theorem case_000060_covered :
    BoundedCovered case_000060_rank.val case_000060_mask :=
  BoundedCovered.fam000 case_000060_applies

private def case_000061_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000061_mask : SignMask := ⟨22, by decide⟩
private def case_000061_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000061_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000061_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (68/9) }
private def case_000061_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000061_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000061_rankWord :
    rankPairWord? case_000061_word = some case_000061_rank := by
  decide

private theorem case_000061_unrank :
    unrankPairWord case_000061_rank = case_000061_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000061_word case_000061_rank).1
    case_000061_rankWord |>.symm

private theorem case_000061_seqChoice :
    translationChoiceSeq case_000061_word case_000061_mask = case_000061_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000061_seqAtRank :
    translationSeqAtRankMask case_000061_rank case_000061_mask = case_000061_seq := by
  rw [translationSeqAtRankMask, case_000061_unrank]
  exact case_000061_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000061_bAtRank :
    translationBAtRankMask case_000061_rank case_000061_mask = case_000061_b := by
  rw [translationBAtRankMask, case_000061_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000061_b, case_000061_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000061_firstLine_eq :
    case_000061_support.firstLine case_000061_seq case_000061_b = case_000061_firstLine := by
  norm_num [case_000061_firstLine, case_000061_support, case_000061_seq, case_000061_b,
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
private theorem case_000061_secondLine_eq :
    case_000061_support.secondLine case_000061_seq case_000061_b = case_000061_secondLine := by
  norm_num [case_000061_secondLine, case_000061_support, case_000061_seq, case_000061_b,
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
private theorem case_000061_rows :
    EqEqPosVarFirstRows case_000061_support case_000061_rank.val case_000061_mask := by
  intro hlt
  have hrank : (⟨case_000061_rank.val, hlt⟩ : Fin numPairWords) = case_000061_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000061_rank.val, hlt⟩ case_000061_mask =
        case_000061_seq := by
    simpa [hrank] using case_000061_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000061_rank.val, hlt⟩ case_000061_mask =
        case_000061_b := by
    simpa [hrank] using case_000061_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000061_support case_000061_rank.val hlt
          case_000061_mask = case_000061_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000061_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000061_support case_000061_rank.val hlt
          case_000061_mask = case_000061_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000061_secondLine_eq]
  have case_000061_rowFirst :
      EqEqPosRow (FirstLineAt case_000061_support case_000061_rank.val hlt case_000061_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000061_firstLine, EqEqPosRow]
  have case_000061_fixedSecond :
      FixedRow (SecondLineAt case_000061_support case_000061_rank.val hlt case_000061_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000061_secondLine, FixedRow]
  exact ⟨case_000061_rowFirst, case_000061_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000061_sourceMatches :
    fam_001_desc.SourceMatches case_000061_rank.val case_000061_mask := by
  intro hlt
  have hrank :
      (⟨case_000061_rank.val, hlt⟩ : Fin numPairWords) = case_000061_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000061_rank.val, hlt⟩ case_000061_mask =
        case_000061_seq := by
    simpa [hrank] using case_000061_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000061_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000061_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000061_rank.val hlt case_000061_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000061_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000061_applies :
    fam_001_desc.Applies case_000061_rank.val case_000061_mask := by
  exact ⟨
    case_000061_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000061_support] using case_000061_rows
  ⟩

private theorem case_000061_covered :
    BoundedCovered case_000061_rank.val case_000061_mask :=
  BoundedCovered.fam001 case_000061_applies

private def case_000062_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000062_mask : SignMask := ⟨24, by decide⟩
private def case_000062_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000062_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000062_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (-100/9) }
private def case_000062_firstLine : StrictLin2 := { a := -1, b := -1, c := (-59/25) }
private def case_000062_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000062_rankWord :
    rankPairWord? case_000062_word = some case_000062_rank := by
  decide

private theorem case_000062_unrank :
    unrankPairWord case_000062_rank = case_000062_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000062_word case_000062_rank).1
    case_000062_rankWord |>.symm

private theorem case_000062_seqChoice :
    translationChoiceSeq case_000062_word case_000062_mask = case_000062_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000062_seqAtRank :
    translationSeqAtRankMask case_000062_rank case_000062_mask = case_000062_seq := by
  rw [translationSeqAtRankMask, case_000062_unrank]
  exact case_000062_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000062_bAtRank :
    translationBAtRankMask case_000062_rank case_000062_mask = case_000062_b := by
  rw [translationBAtRankMask, case_000062_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000062_b, case_000062_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000062_firstLine_eq :
    case_000062_support.firstLine case_000062_seq case_000062_b = case_000062_firstLine := by
  norm_num [case_000062_firstLine, case_000062_support, case_000062_seq, case_000062_b,
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
private theorem case_000062_secondLine_eq :
    case_000062_support.secondLine case_000062_seq case_000062_b = case_000062_secondLine := by
  norm_num [case_000062_secondLine, case_000062_support, case_000062_seq, case_000062_b,
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
private theorem case_000062_rows :
    EqEqPosVarFirstRows case_000062_support case_000062_rank.val case_000062_mask := by
  intro hlt
  have hrank : (⟨case_000062_rank.val, hlt⟩ : Fin numPairWords) = case_000062_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000062_rank.val, hlt⟩ case_000062_mask =
        case_000062_seq := by
    simpa [hrank] using case_000062_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000062_rank.val, hlt⟩ case_000062_mask =
        case_000062_b := by
    simpa [hrank] using case_000062_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000062_support case_000062_rank.val hlt
          case_000062_mask = case_000062_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000062_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000062_support case_000062_rank.val hlt
          case_000062_mask = case_000062_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000062_secondLine_eq]
  have case_000062_rowFirst :
      EqEqPosRow (FirstLineAt case_000062_support case_000062_rank.val hlt case_000062_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000062_firstLine, EqEqPosRow]
  have case_000062_fixedSecond :
      FixedRow (SecondLineAt case_000062_support case_000062_rank.val hlt case_000062_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000062_secondLine, FixedRow]
  exact ⟨case_000062_rowFirst, case_000062_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000062_sourceMatches :
    fam_000_desc.SourceMatches case_000062_rank.val case_000062_mask := by
  intro hlt
  have hrank :
      (⟨case_000062_rank.val, hlt⟩ : Fin numPairWords) = case_000062_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000062_rank.val, hlt⟩ case_000062_mask =
        case_000062_seq := by
    simpa [hrank] using case_000062_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000062_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000062_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000062_rank.val hlt case_000062_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000062_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000062_applies :
    fam_000_desc.Applies case_000062_rank.val case_000062_mask := by
  exact ⟨
    case_000062_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000062_support] using case_000062_rows
  ⟩

private theorem case_000062_covered :
    BoundedCovered case_000062_rank.val case_000062_mask :=
  BoundedCovered.fam000 case_000062_applies

private def case_000063_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000063_mask : SignMask := ⟨28, by decide⟩
private def case_000063_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000063_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000063_b : Vec3 Rat := { x := (-148/9), y := (-20/9), z := (-52/9) }
private def case_000063_firstLine : StrictLin2 := { a := (-74/55), b := (-74/55), c := (-344/165) }
private def case_000063_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000063_rankWord :
    rankPairWord? case_000063_word = some case_000063_rank := by
  decide

private theorem case_000063_unrank :
    unrankPairWord case_000063_rank = case_000063_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000063_word case_000063_rank).1
    case_000063_rankWord |>.symm

private theorem case_000063_seqChoice :
    translationChoiceSeq case_000063_word case_000063_mask = case_000063_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000063_seqAtRank :
    translationSeqAtRankMask case_000063_rank case_000063_mask = case_000063_seq := by
  rw [translationSeqAtRankMask, case_000063_unrank]
  exact case_000063_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000063_bAtRank :
    translationBAtRankMask case_000063_rank case_000063_mask = case_000063_b := by
  rw [translationBAtRankMask, case_000063_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000063_b, case_000063_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000063_firstLine_eq :
    case_000063_support.firstLine case_000063_seq case_000063_b = case_000063_firstLine := by
  norm_num [case_000063_firstLine, case_000063_support, case_000063_seq, case_000063_b,
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
private theorem case_000063_secondLine_eq :
    case_000063_support.secondLine case_000063_seq case_000063_b = case_000063_secondLine := by
  norm_num [case_000063_secondLine, case_000063_support, case_000063_seq, case_000063_b,
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
private theorem case_000063_rows :
    EqEqPosVarFirstRows case_000063_support case_000063_rank.val case_000063_mask := by
  intro hlt
  have hrank : (⟨case_000063_rank.val, hlt⟩ : Fin numPairWords) = case_000063_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000063_rank.val, hlt⟩ case_000063_mask =
        case_000063_seq := by
    simpa [hrank] using case_000063_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000063_rank.val, hlt⟩ case_000063_mask =
        case_000063_b := by
    simpa [hrank] using case_000063_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000063_support case_000063_rank.val hlt
          case_000063_mask = case_000063_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000063_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000063_support case_000063_rank.val hlt
          case_000063_mask = case_000063_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000063_secondLine_eq]
  have case_000063_rowFirst :
      EqEqPosRow (FirstLineAt case_000063_support case_000063_rank.val hlt case_000063_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000063_firstLine, EqEqPosRow]
  have case_000063_fixedSecond :
      FixedRow (SecondLineAt case_000063_support case_000063_rank.val hlt case_000063_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000063_secondLine, FixedRow]
  exact ⟨case_000063_rowFirst, case_000063_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000063_sourceMatches :
    fam_007_desc.SourceMatches case_000063_rank.val case_000063_mask := by
  intro hlt
  have hrank :
      (⟨case_000063_rank.val, hlt⟩ : Fin numPairWords) = case_000063_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000063_rank.val, hlt⟩ case_000063_mask =
        case_000063_seq := by
    simpa [hrank] using case_000063_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000063_seq)
          fam_007_desc.firstIndex = some fam_007_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000063_seq)
          fam_007_desc.secondIndex = some fam_007_support.second := by
    decide
  have hchecks :
      SourceChecks fam_007_support case_000063_rank.val hlt case_000063_mask := by
    simp [SourceChecks, hseq, fam_007_support,
      checkTranslationConstraintSource, case_000063_seq, impactFace]
  exact ⟨
    by simpa [fam_007_desc, hseq] using hfirstIndex,
    by simpa [fam_007_desc, hseq] using hsecondIndex,
    by simpa [fam_007_desc] using hchecks
  ⟩

private theorem case_000063_applies :
    fam_007_desc.Applies case_000063_rank.val case_000063_mask := by
  exact ⟨
    case_000063_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_007_desc, fam_007_support, case_000063_support] using case_000063_rows
  ⟩

private theorem case_000063_covered :
    BoundedCovered case_000063_rank.val case_000063_mask :=
  BoundedCovered.fam007 case_000063_applies

private def case_000064_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000064_mask : SignMask := ⟨29, by decide⟩
private def case_000064_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000064_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000064_b : Vec3 Rat := { x := (-148/9), y := (52/9), z := (-52/9) }
private def case_000064_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000064_secondLine : StrictLin2 := { a := (-9/52), b := (-9/52), c := (-9/26) }

private theorem case_000064_rankWord :
    rankPairWord? case_000064_word = some case_000064_rank := by
  decide

private theorem case_000064_unrank :
    unrankPairWord case_000064_rank = case_000064_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000064_word case_000064_rank).1
    case_000064_rankWord |>.symm

private theorem case_000064_seqChoice :
    translationChoiceSeq case_000064_word case_000064_mask = case_000064_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000064_seqAtRank :
    translationSeqAtRankMask case_000064_rank case_000064_mask = case_000064_seq := by
  rw [translationSeqAtRankMask, case_000064_unrank]
  exact case_000064_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000064_bAtRank :
    translationBAtRankMask case_000064_rank case_000064_mask = case_000064_b := by
  rw [translationBAtRankMask, case_000064_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000064_b, case_000064_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000064_firstLine_eq :
    case_000064_support.firstLine case_000064_seq case_000064_b = case_000064_firstLine := by
  norm_num [case_000064_firstLine, case_000064_support, case_000064_seq, case_000064_b,
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
private theorem case_000064_secondLine_eq :
    case_000064_support.secondLine case_000064_seq case_000064_b = case_000064_secondLine := by
  norm_num [case_000064_secondLine, case_000064_support, case_000064_seq, case_000064_b,
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
private theorem case_000064_rows :
    EqEqPosVarSecondRows case_000064_support case_000064_rank.val case_000064_mask := by
  intro hlt
  have hrank : (⟨case_000064_rank.val, hlt⟩ : Fin numPairWords) = case_000064_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000064_rank.val, hlt⟩ case_000064_mask =
        case_000064_seq := by
    simpa [hrank] using case_000064_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000064_rank.val, hlt⟩ case_000064_mask =
        case_000064_b := by
    simpa [hrank] using case_000064_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000064_support case_000064_rank.val hlt
          case_000064_mask = case_000064_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000064_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000064_support case_000064_rank.val hlt
          case_000064_mask = case_000064_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000064_secondLine_eq]
  have case_000064_fixedFirst :
      FixedRow (FirstLineAt case_000064_support case_000064_rank.val hlt case_000064_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000064_firstLine, FixedRow]
  have case_000064_rowSecond :
      EqEqPosRow (SecondLineAt case_000064_support case_000064_rank.val hlt case_000064_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000064_secondLine, EqEqPosRow]
  exact ⟨case_000064_fixedFirst, case_000064_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000064_sourceMatches :
    fam_002_desc.SourceMatches case_000064_rank.val case_000064_mask := by
  intro hlt
  have hrank :
      (⟨case_000064_rank.val, hlt⟩ : Fin numPairWords) = case_000064_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000064_rank.val, hlt⟩ case_000064_mask =
        case_000064_seq := by
    simpa [hrank] using case_000064_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000064_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000064_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000064_rank.val hlt case_000064_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000064_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000064_applies :
    fam_002_desc.Applies case_000064_rank.val case_000064_mask := by
  exact ⟨
    case_000064_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000064_support] using case_000064_rows
  ⟩

private theorem case_000064_covered :
    BoundedCovered case_000064_rank.val case_000064_mask :=
  BoundedCovered.fam002 case_000064_applies

private def case_000065_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000065_mask : SignMask := ⟨30, by decide⟩
private def case_000065_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000065_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000065_b : Vec3 Rat := { x := (-148/9), y := (-20/9), z := (20/9) }
private def case_000065_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000065_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000065_rankWord :
    rankPairWord? case_000065_word = some case_000065_rank := by
  decide

private theorem case_000065_unrank :
    unrankPairWord case_000065_rank = case_000065_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000065_word case_000065_rank).1
    case_000065_rankWord |>.symm

private theorem case_000065_seqChoice :
    translationChoiceSeq case_000065_word case_000065_mask = case_000065_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000065_seqAtRank :
    translationSeqAtRankMask case_000065_rank case_000065_mask = case_000065_seq := by
  rw [translationSeqAtRankMask, case_000065_unrank]
  exact case_000065_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000065_bAtRank :
    translationBAtRankMask case_000065_rank case_000065_mask = case_000065_b := by
  rw [translationBAtRankMask, case_000065_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000065_b, case_000065_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000065_firstLine_eq :
    case_000065_support.firstLine case_000065_seq case_000065_b = case_000065_firstLine := by
  norm_num [case_000065_firstLine, case_000065_support, case_000065_seq, case_000065_b,
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
private theorem case_000065_secondLine_eq :
    case_000065_support.secondLine case_000065_seq case_000065_b = case_000065_secondLine := by
  norm_num [case_000065_secondLine, case_000065_support, case_000065_seq, case_000065_b,
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
private theorem case_000065_rows :
    EqEqPosVarFirstRows case_000065_support case_000065_rank.val case_000065_mask := by
  intro hlt
  have hrank : (⟨case_000065_rank.val, hlt⟩ : Fin numPairWords) = case_000065_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000065_rank.val, hlt⟩ case_000065_mask =
        case_000065_seq := by
    simpa [hrank] using case_000065_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000065_rank.val, hlt⟩ case_000065_mask =
        case_000065_b := by
    simpa [hrank] using case_000065_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000065_support case_000065_rank.val hlt
          case_000065_mask = case_000065_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000065_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000065_support case_000065_rank.val hlt
          case_000065_mask = case_000065_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000065_secondLine_eq]
  have case_000065_rowFirst :
      EqEqPosRow (FirstLineAt case_000065_support case_000065_rank.val hlt case_000065_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000065_firstLine, EqEqPosRow]
  have case_000065_fixedSecond :
      FixedRow (SecondLineAt case_000065_support case_000065_rank.val hlt case_000065_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000065_secondLine, FixedRow]
  exact ⟨case_000065_rowFirst, case_000065_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000065_sourceMatches :
    fam_001_desc.SourceMatches case_000065_rank.val case_000065_mask := by
  intro hlt
  have hrank :
      (⟨case_000065_rank.val, hlt⟩ : Fin numPairWords) = case_000065_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000065_rank.val, hlt⟩ case_000065_mask =
        case_000065_seq := by
    simpa [hrank] using case_000065_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000065_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000065_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000065_rank.val hlt case_000065_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000065_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000065_applies :
    fam_001_desc.Applies case_000065_rank.val case_000065_mask := by
  exact ⟨
    case_000065_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000065_support] using case_000065_rows
  ⟩

private theorem case_000065_covered :
    BoundedCovered case_000065_rank.val case_000065_mask :=
  BoundedCovered.fam001 case_000065_applies

private def case_000066_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000066_mask : SignMask := ⟨31, by decide⟩
private def case_000066_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000066_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000066_b : Vec3 Rat := { x := (-148/9), y := (52/9), z := (20/9) }
private def case_000066_firstLine : StrictLin2 := { a := (-37/55), b := (-37/55), c := (-261/55) }
private def case_000066_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000066_rankWord :
    rankPairWord? case_000066_word = some case_000066_rank := by
  decide

private theorem case_000066_unrank :
    unrankPairWord case_000066_rank = case_000066_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000066_word case_000066_rank).1
    case_000066_rankWord |>.symm

private theorem case_000066_seqChoice :
    translationChoiceSeq case_000066_word case_000066_mask = case_000066_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000066_seqAtRank :
    translationSeqAtRankMask case_000066_rank case_000066_mask = case_000066_seq := by
  rw [translationSeqAtRankMask, case_000066_unrank]
  exact case_000066_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000066_bAtRank :
    translationBAtRankMask case_000066_rank case_000066_mask = case_000066_b := by
  rw [translationBAtRankMask, case_000066_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000066_b, case_000066_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000066_firstLine_eq :
    case_000066_support.firstLine case_000066_seq case_000066_b = case_000066_firstLine := by
  norm_num [case_000066_firstLine, case_000066_support, case_000066_seq, case_000066_b,
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
private theorem case_000066_secondLine_eq :
    case_000066_support.secondLine case_000066_seq case_000066_b = case_000066_secondLine := by
  norm_num [case_000066_secondLine, case_000066_support, case_000066_seq, case_000066_b,
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
private theorem case_000066_rows :
    EqEqPosVarFirstRows case_000066_support case_000066_rank.val case_000066_mask := by
  intro hlt
  have hrank : (⟨case_000066_rank.val, hlt⟩ : Fin numPairWords) = case_000066_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000066_rank.val, hlt⟩ case_000066_mask =
        case_000066_seq := by
    simpa [hrank] using case_000066_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000066_rank.val, hlt⟩ case_000066_mask =
        case_000066_b := by
    simpa [hrank] using case_000066_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000066_support case_000066_rank.val hlt
          case_000066_mask = case_000066_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000066_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000066_support case_000066_rank.val hlt
          case_000066_mask = case_000066_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000066_secondLine_eq]
  have case_000066_rowFirst :
      EqEqPosRow (FirstLineAt case_000066_support case_000066_rank.val hlt case_000066_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000066_firstLine, EqEqPosRow]
  have case_000066_fixedSecond :
      FixedRow (SecondLineAt case_000066_support case_000066_rank.val hlt case_000066_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000066_secondLine, FixedRow]
  exact ⟨case_000066_rowFirst, case_000066_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000066_sourceMatches :
    fam_001_desc.SourceMatches case_000066_rank.val case_000066_mask := by
  intro hlt
  have hrank :
      (⟨case_000066_rank.val, hlt⟩ : Fin numPairWords) = case_000066_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000066_rank.val, hlt⟩ case_000066_mask =
        case_000066_seq := by
    simpa [hrank] using case_000066_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000066_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000066_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000066_rank.val hlt case_000066_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000066_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000066_applies :
    fam_001_desc.Applies case_000066_rank.val case_000066_mask := by
  exact ⟨
    case_000066_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000066_support] using case_000066_rows
  ⟩

private theorem case_000066_covered :
    BoundedCovered case_000066_rank.val case_000066_mask :=
  BoundedCovered.fam001 case_000066_applies

private def case_000067_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000067_mask : SignMask := ⟨45, by decide⟩
private def case_000067_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def case_000067_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000067_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (-20/9) }
private def case_000067_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000067_secondLine : StrictLin2 := { a := (5/26), b := (-5/26), c := (-214/39) }

private theorem case_000067_rankWord :
    rankPairWord? case_000067_word = some case_000067_rank := by
  decide

private theorem case_000067_unrank :
    unrankPairWord case_000067_rank = case_000067_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000067_word case_000067_rank).1
    case_000067_rankWord |>.symm

private theorem case_000067_seqChoice :
    translationChoiceSeq case_000067_word case_000067_mask = case_000067_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000067_seqAtRank :
    translationSeqAtRankMask case_000067_rank case_000067_mask = case_000067_seq := by
  rw [translationSeqAtRankMask, case_000067_unrank]
  exact case_000067_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000067_bAtRank :
    translationBAtRankMask case_000067_rank case_000067_mask = case_000067_b := by
  rw [translationBAtRankMask, case_000067_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000067_b, case_000067_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000067_firstLine_eq :
    case_000067_support.firstLine case_000067_seq case_000067_b = case_000067_firstLine := by
  norm_num [case_000067_firstLine, case_000067_support, case_000067_seq, case_000067_b,
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
private theorem case_000067_secondLine_eq :
    case_000067_support.secondLine case_000067_seq case_000067_b = case_000067_secondLine := by
  norm_num [case_000067_secondLine, case_000067_support, case_000067_seq, case_000067_b,
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
private theorem case_000067_rows :
    OppMinusOneVarSecondRows case_000067_support case_000067_rank.val case_000067_mask := by
  intro hlt
  have hrank : (⟨case_000067_rank.val, hlt⟩ : Fin numPairWords) = case_000067_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000067_rank.val, hlt⟩ case_000067_mask =
        case_000067_seq := by
    simpa [hrank] using case_000067_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000067_rank.val, hlt⟩ case_000067_mask =
        case_000067_b := by
    simpa [hrank] using case_000067_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000067_support case_000067_rank.val hlt
          case_000067_mask = case_000067_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000067_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000067_support case_000067_rank.val hlt
          case_000067_mask = case_000067_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000067_secondLine_eq]
  have case_000067_fixedFirst :
      FixedRow (FirstLineAt case_000067_support case_000067_rank.val hlt case_000067_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000067_firstLine, FixedRow]
  have case_000067_rowSecond :
      OppNegRow (SecondLineAt case_000067_support case_000067_rank.val hlt case_000067_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000067_secondLine, OppNegRow]
  exact ⟨case_000067_fixedFirst, case_000067_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000067_sourceMatches :
    fam_015_desc.SourceMatches case_000067_rank.val case_000067_mask := by
  intro hlt
  have hrank :
      (⟨case_000067_rank.val, hlt⟩ : Fin numPairWords) = case_000067_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000067_rank.val, hlt⟩ case_000067_mask =
        case_000067_seq := by
    simpa [hrank] using case_000067_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000067_seq)
          fam_015_desc.firstIndex = some fam_015_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000067_seq)
          fam_015_desc.secondIndex = some fam_015_support.second := by
    decide
  have hchecks :
      SourceChecks fam_015_support case_000067_rank.val hlt case_000067_mask := by
    simp [SourceChecks, hseq, fam_015_support,
      checkTranslationConstraintSource, case_000067_seq, impactFace]
  exact ⟨
    by simpa [fam_015_desc, hseq] using hfirstIndex,
    by simpa [fam_015_desc, hseq] using hsecondIndex,
    by simpa [fam_015_desc] using hchecks
  ⟩

private theorem case_000067_applies :
    fam_015_desc.Applies case_000067_rank.val case_000067_mask := by
  exact ⟨
    case_000067_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_015_desc, fam_015_support, case_000067_support] using case_000067_rows
  ⟩

private theorem case_000067_covered :
    BoundedCovered case_000067_rank.val case_000067_mask :=
  BoundedCovered.fam015 case_000067_applies

private def case_000068_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000068_mask : SignMask := ⟨54, by decide⟩
private def case_000068_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000068_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000068_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (116/9) }
private def case_000068_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000068_secondLine : StrictLin2 := { a := (-13/154), b := (13/154), c := (-124/231) }

private theorem case_000068_rankWord :
    rankPairWord? case_000068_word = some case_000068_rank := by
  decide

private theorem case_000068_unrank :
    unrankPairWord case_000068_rank = case_000068_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000068_word case_000068_rank).1
    case_000068_rankWord |>.symm

private theorem case_000068_seqChoice :
    translationChoiceSeq case_000068_word case_000068_mask = case_000068_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000068_seqAtRank :
    translationSeqAtRankMask case_000068_rank case_000068_mask = case_000068_seq := by
  rw [translationSeqAtRankMask, case_000068_unrank]
  exact case_000068_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000068_bAtRank :
    translationBAtRankMask case_000068_rank case_000068_mask = case_000068_b := by
  rw [translationBAtRankMask, case_000068_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000068_b, case_000068_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000068_firstLine_eq :
    case_000068_support.firstLine case_000068_seq case_000068_b = case_000068_firstLine := by
  norm_num [case_000068_firstLine, case_000068_support, case_000068_seq, case_000068_b,
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
private theorem case_000068_secondLine_eq :
    case_000068_support.secondLine case_000068_seq case_000068_b = case_000068_secondLine := by
  norm_num [case_000068_secondLine, case_000068_support, case_000068_seq, case_000068_b,
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
private theorem case_000068_rows :
    OppOneMinusVarSecondRows case_000068_support case_000068_rank.val case_000068_mask := by
  intro hlt
  have hrank : (⟨case_000068_rank.val, hlt⟩ : Fin numPairWords) = case_000068_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000068_rank.val, hlt⟩ case_000068_mask =
        case_000068_seq := by
    simpa [hrank] using case_000068_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000068_rank.val, hlt⟩ case_000068_mask =
        case_000068_b := by
    simpa [hrank] using case_000068_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000068_support case_000068_rank.val hlt
          case_000068_mask = case_000068_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000068_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000068_support case_000068_rank.val hlt
          case_000068_mask = case_000068_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000068_secondLine_eq]
  have case_000068_fixedFirst :
      FixedRow (FirstLineAt case_000068_support case_000068_rank.val hlt case_000068_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000068_firstLine, FixedRow]
  have case_000068_rowSecond :
      OppPosRow (SecondLineAt case_000068_support case_000068_rank.val hlt case_000068_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000068_secondLine, OppPosRow]
  exact ⟨case_000068_fixedFirst, case_000068_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000068_sourceMatches :
    fam_008_desc.SourceMatches case_000068_rank.val case_000068_mask := by
  intro hlt
  have hrank :
      (⟨case_000068_rank.val, hlt⟩ : Fin numPairWords) = case_000068_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000068_rank.val, hlt⟩ case_000068_mask =
        case_000068_seq := by
    simpa [hrank] using case_000068_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000068_seq)
          fam_008_desc.firstIndex = some fam_008_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000068_seq)
          fam_008_desc.secondIndex = some fam_008_support.second := by
    decide
  have hchecks :
      SourceChecks fam_008_support case_000068_rank.val hlt case_000068_mask := by
    simp [SourceChecks, hseq, fam_008_support,
      checkTranslationConstraintSource, case_000068_seq, impactFace]
  exact ⟨
    by simpa [fam_008_desc, hseq] using hfirstIndex,
    by simpa [fam_008_desc, hseq] using hsecondIndex,
    by simpa [fam_008_desc] using hchecks
  ⟩

private theorem case_000068_applies :
    fam_008_desc.Applies case_000068_rank.val case_000068_mask := by
  exact ⟨
    case_000068_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_008_desc, fam_008_support, case_000068_support] using case_000068_rows
  ⟩

private theorem case_000068_covered :
    BoundedCovered case_000068_rank.val case_000068_mask :=
  BoundedCovered.fam008 case_000068_applies

private def case_000069_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000069_mask : SignMask := ⟨55, by decide⟩
private def case_000069_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def case_000069_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000069_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (116/9) }
private def case_000069_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000069_secondLine : StrictLin2 := { a := (-13/18), b := (13/18), c := (-79/27) }

private theorem case_000069_rankWord :
    rankPairWord? case_000069_word = some case_000069_rank := by
  decide

private theorem case_000069_unrank :
    unrankPairWord case_000069_rank = case_000069_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000069_word case_000069_rank).1
    case_000069_rankWord |>.symm

private theorem case_000069_seqChoice :
    translationChoiceSeq case_000069_word case_000069_mask = case_000069_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000069_seqAtRank :
    translationSeqAtRankMask case_000069_rank case_000069_mask = case_000069_seq := by
  rw [translationSeqAtRankMask, case_000069_unrank]
  exact case_000069_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000069_bAtRank :
    translationBAtRankMask case_000069_rank case_000069_mask = case_000069_b := by
  rw [translationBAtRankMask, case_000069_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000069_b, case_000069_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000069_firstLine_eq :
    case_000069_support.firstLine case_000069_seq case_000069_b = case_000069_firstLine := by
  norm_num [case_000069_firstLine, case_000069_support, case_000069_seq, case_000069_b,
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
private theorem case_000069_secondLine_eq :
    case_000069_support.secondLine case_000069_seq case_000069_b = case_000069_secondLine := by
  norm_num [case_000069_secondLine, case_000069_support, case_000069_seq, case_000069_b,
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
private theorem case_000069_rows :
    OppOneMinusVarSecondRows case_000069_support case_000069_rank.val case_000069_mask := by
  intro hlt
  have hrank : (⟨case_000069_rank.val, hlt⟩ : Fin numPairWords) = case_000069_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000069_rank.val, hlt⟩ case_000069_mask =
        case_000069_seq := by
    simpa [hrank] using case_000069_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000069_rank.val, hlt⟩ case_000069_mask =
        case_000069_b := by
    simpa [hrank] using case_000069_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000069_support case_000069_rank.val hlt
          case_000069_mask = case_000069_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000069_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000069_support case_000069_rank.val hlt
          case_000069_mask = case_000069_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000069_secondLine_eq]
  have case_000069_fixedFirst :
      FixedRow (FirstLineAt case_000069_support case_000069_rank.val hlt case_000069_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000069_firstLine, FixedRow]
  have case_000069_rowSecond :
      OppPosRow (SecondLineAt case_000069_support case_000069_rank.val hlt case_000069_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000069_secondLine, OppPosRow]
  exact ⟨case_000069_fixedFirst, case_000069_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000069_sourceMatches :
    fam_008_desc.SourceMatches case_000069_rank.val case_000069_mask := by
  intro hlt
  have hrank :
      (⟨case_000069_rank.val, hlt⟩ : Fin numPairWords) = case_000069_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000069_rank.val, hlt⟩ case_000069_mask =
        case_000069_seq := by
    simpa [hrank] using case_000069_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000069_seq)
          fam_008_desc.firstIndex = some fam_008_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000069_seq)
          fam_008_desc.secondIndex = some fam_008_support.second := by
    decide
  have hchecks :
      SourceChecks fam_008_support case_000069_rank.val hlt case_000069_mask := by
    simp [SourceChecks, hseq, fam_008_support,
      checkTranslationConstraintSource, case_000069_seq, impactFace]
  exact ⟨
    by simpa [fam_008_desc, hseq] using hfirstIndex,
    by simpa [fam_008_desc, hseq] using hsecondIndex,
    by simpa [fam_008_desc] using hchecks
  ⟩

private theorem case_000069_applies :
    fam_008_desc.Applies case_000069_rank.val case_000069_mask := by
  exact ⟨
    case_000069_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_008_desc, fam_008_support, case_000069_support] using case_000069_rows
  ⟩

private theorem case_000069_covered :
    BoundedCovered case_000069_rank.val case_000069_mask :=
  BoundedCovered.fam008 case_000069_applies

private def case_000070_rank : Fin numPairWords := ⟨9, by decide⟩
private def case_000070_mask : SignMask := ⟨63, by decide⟩
private def case_000070_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.dm11], by decide⟩
private def case_000070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000070_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000070_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (68/9) }
private def case_000070_firstLine : StrictLin2 := { a := (-25/67), b := (-25/67), c := (-57/67) }
private def case_000070_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000070_rankWord :
    rankPairWord? case_000070_word = some case_000070_rank := by
  decide

private theorem case_000070_unrank :
    unrankPairWord case_000070_rank = case_000070_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000070_word case_000070_rank).1
    case_000070_rankWord |>.symm

private theorem case_000070_seqChoice :
    translationChoiceSeq case_000070_word case_000070_mask = case_000070_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000070_seqAtRank :
    translationSeqAtRankMask case_000070_rank case_000070_mask = case_000070_seq := by
  rw [translationSeqAtRankMask, case_000070_unrank]
  exact case_000070_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000070_bAtRank :
    translationBAtRankMask case_000070_rank case_000070_mask = case_000070_b := by
  rw [translationBAtRankMask, case_000070_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000070_b, case_000070_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000070_firstLine_eq :
    case_000070_support.firstLine case_000070_seq case_000070_b = case_000070_firstLine := by
  norm_num [case_000070_firstLine, case_000070_support, case_000070_seq, case_000070_b,
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
private theorem case_000070_secondLine_eq :
    case_000070_support.secondLine case_000070_seq case_000070_b = case_000070_secondLine := by
  norm_num [case_000070_secondLine, case_000070_support, case_000070_seq, case_000070_b,
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
private theorem case_000070_rows :
    EqEqPosVarFirstRows case_000070_support case_000070_rank.val case_000070_mask := by
  intro hlt
  have hrank : (⟨case_000070_rank.val, hlt⟩ : Fin numPairWords) = case_000070_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000070_rank.val, hlt⟩ case_000070_mask =
        case_000070_seq := by
    simpa [hrank] using case_000070_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000070_rank.val, hlt⟩ case_000070_mask =
        case_000070_b := by
    simpa [hrank] using case_000070_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000070_support case_000070_rank.val hlt
          case_000070_mask = case_000070_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000070_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000070_support case_000070_rank.val hlt
          case_000070_mask = case_000070_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000070_secondLine_eq]
  have case_000070_rowFirst :
      EqEqPosRow (FirstLineAt case_000070_support case_000070_rank.val hlt case_000070_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000070_firstLine, EqEqPosRow]
  have case_000070_fixedSecond :
      FixedRow (SecondLineAt case_000070_support case_000070_rank.val hlt case_000070_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000070_secondLine, FixedRow]
  exact ⟨case_000070_rowFirst, case_000070_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000070_sourceMatches :
    fam_001_desc.SourceMatches case_000070_rank.val case_000070_mask := by
  intro hlt
  have hrank :
      (⟨case_000070_rank.val, hlt⟩ : Fin numPairWords) = case_000070_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000070_rank.val, hlt⟩ case_000070_mask =
        case_000070_seq := by
    simpa [hrank] using case_000070_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000070_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000070_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000070_rank.val hlt case_000070_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000070_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000070_applies :
    fam_001_desc.Applies case_000070_rank.val case_000070_mask := by
  exact ⟨
    case_000070_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000070_support] using case_000070_rows
  ⟩

private theorem case_000070_covered :
    BoundedCovered case_000070_rank.val case_000070_mask :=
  BoundedCovered.fam001 case_000070_applies

private def case_000071_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000071_mask : SignMask := ⟨8, by decide⟩
private def case_000071_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000071_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000071_b : Vec3 Rat := { x := (-4/9), y := (-68/9), z := (-100/9) }
private def case_000071_firstLine : StrictLin2 := { a := -1, b := -1, c := -83 }
private def case_000071_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000071_rankWord :
    rankPairWord? case_000071_word = some case_000071_rank := by
  decide

private theorem case_000071_unrank :
    unrankPairWord case_000071_rank = case_000071_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000071_word case_000071_rank).1
    case_000071_rankWord |>.symm

private theorem case_000071_seqChoice :
    translationChoiceSeq case_000071_word case_000071_mask = case_000071_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000071_seqAtRank :
    translationSeqAtRankMask case_000071_rank case_000071_mask = case_000071_seq := by
  rw [translationSeqAtRankMask, case_000071_unrank]
  exact case_000071_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000071_bAtRank :
    translationBAtRankMask case_000071_rank case_000071_mask = case_000071_b := by
  rw [translationBAtRankMask, case_000071_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000071_b, case_000071_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000071_firstLine_eq :
    case_000071_support.firstLine case_000071_seq case_000071_b = case_000071_firstLine := by
  norm_num [case_000071_firstLine, case_000071_support, case_000071_seq, case_000071_b,
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
private theorem case_000071_secondLine_eq :
    case_000071_support.secondLine case_000071_seq case_000071_b = case_000071_secondLine := by
  norm_num [case_000071_secondLine, case_000071_support, case_000071_seq, case_000071_b,
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
private theorem case_000071_rows :
    EqEqPosVarFirstRows case_000071_support case_000071_rank.val case_000071_mask := by
  intro hlt
  have hrank : (⟨case_000071_rank.val, hlt⟩ : Fin numPairWords) = case_000071_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000071_rank.val, hlt⟩ case_000071_mask =
        case_000071_seq := by
    simpa [hrank] using case_000071_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000071_rank.val, hlt⟩ case_000071_mask =
        case_000071_b := by
    simpa [hrank] using case_000071_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000071_support case_000071_rank.val hlt
          case_000071_mask = case_000071_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000071_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000071_support case_000071_rank.val hlt
          case_000071_mask = case_000071_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000071_secondLine_eq]
  have case_000071_rowFirst :
      EqEqPosRow (FirstLineAt case_000071_support case_000071_rank.val hlt case_000071_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000071_firstLine, EqEqPosRow]
  have case_000071_fixedSecond :
      FixedRow (SecondLineAt case_000071_support case_000071_rank.val hlt case_000071_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000071_secondLine, FixedRow]
  exact ⟨case_000071_rowFirst, case_000071_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000071_sourceMatches :
    fam_000_desc.SourceMatches case_000071_rank.val case_000071_mask := by
  intro hlt
  have hrank :
      (⟨case_000071_rank.val, hlt⟩ : Fin numPairWords) = case_000071_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000071_rank.val, hlt⟩ case_000071_mask =
        case_000071_seq := by
    simpa [hrank] using case_000071_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000071_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000071_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000071_rank.val hlt case_000071_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000071_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000071_applies :
    fam_000_desc.Applies case_000071_rank.val case_000071_mask := by
  exact ⟨
    case_000071_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000071_support] using case_000071_rows
  ⟩

private theorem case_000071_covered :
    BoundedCovered case_000071_rank.val case_000071_mask :=
  BoundedCovered.fam000 case_000071_applies

private def case_000072_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000072_mask : SignMask := ⟨9, by decide⟩
private def case_000072_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000072_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000072_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000072_b : Vec3 Rat := { x := (-4/9), y := (4/9), z := (-100/9) }
private def case_000072_firstLine : StrictLin2 := { a := -1, b := -1, c := -47 }
private def case_000072_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000072_rankWord :
    rankPairWord? case_000072_word = some case_000072_rank := by
  decide

private theorem case_000072_unrank :
    unrankPairWord case_000072_rank = case_000072_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000072_word case_000072_rank).1
    case_000072_rankWord |>.symm

private theorem case_000072_seqChoice :
    translationChoiceSeq case_000072_word case_000072_mask = case_000072_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000072_seqAtRank :
    translationSeqAtRankMask case_000072_rank case_000072_mask = case_000072_seq := by
  rw [translationSeqAtRankMask, case_000072_unrank]
  exact case_000072_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000072_bAtRank :
    translationBAtRankMask case_000072_rank case_000072_mask = case_000072_b := by
  rw [translationBAtRankMask, case_000072_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000072_b, case_000072_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000072_firstLine_eq :
    case_000072_support.firstLine case_000072_seq case_000072_b = case_000072_firstLine := by
  norm_num [case_000072_firstLine, case_000072_support, case_000072_seq, case_000072_b,
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
private theorem case_000072_secondLine_eq :
    case_000072_support.secondLine case_000072_seq case_000072_b = case_000072_secondLine := by
  norm_num [case_000072_secondLine, case_000072_support, case_000072_seq, case_000072_b,
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
private theorem case_000072_rows :
    EqEqPosVarFirstRows case_000072_support case_000072_rank.val case_000072_mask := by
  intro hlt
  have hrank : (⟨case_000072_rank.val, hlt⟩ : Fin numPairWords) = case_000072_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000072_rank.val, hlt⟩ case_000072_mask =
        case_000072_seq := by
    simpa [hrank] using case_000072_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000072_rank.val, hlt⟩ case_000072_mask =
        case_000072_b := by
    simpa [hrank] using case_000072_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000072_support case_000072_rank.val hlt
          case_000072_mask = case_000072_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000072_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000072_support case_000072_rank.val hlt
          case_000072_mask = case_000072_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000072_secondLine_eq]
  have case_000072_rowFirst :
      EqEqPosRow (FirstLineAt case_000072_support case_000072_rank.val hlt case_000072_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000072_firstLine, EqEqPosRow]
  have case_000072_fixedSecond :
      FixedRow (SecondLineAt case_000072_support case_000072_rank.val hlt case_000072_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000072_secondLine, FixedRow]
  exact ⟨case_000072_rowFirst, case_000072_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000072_sourceMatches :
    fam_000_desc.SourceMatches case_000072_rank.val case_000072_mask := by
  intro hlt
  have hrank :
      (⟨case_000072_rank.val, hlt⟩ : Fin numPairWords) = case_000072_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000072_rank.val, hlt⟩ case_000072_mask =
        case_000072_seq := by
    simpa [hrank] using case_000072_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000072_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000072_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000072_rank.val hlt case_000072_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000072_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000072_applies :
    fam_000_desc.Applies case_000072_rank.val case_000072_mask := by
  exact ⟨
    case_000072_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000072_support] using case_000072_rows
  ⟩

private theorem case_000072_covered :
    BoundedCovered case_000072_rank.val case_000072_mask :=
  BoundedCovered.fam000 case_000072_applies

private def case_000073_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000073_mask : SignMask := ⟨16, by decide⟩
private def case_000073_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000073_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000073_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000073_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000073_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000073_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000073_rankWord :
    rankPairWord? case_000073_word = some case_000073_rank := by
  decide

private theorem case_000073_unrank :
    unrankPairWord case_000073_rank = case_000073_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000073_word case_000073_rank).1
    case_000073_rankWord |>.symm

private theorem case_000073_seqChoice :
    translationChoiceSeq case_000073_word case_000073_mask = case_000073_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000073_seqAtRank :
    translationSeqAtRankMask case_000073_rank case_000073_mask = case_000073_seq := by
  rw [translationSeqAtRankMask, case_000073_unrank]
  exact case_000073_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000073_bAtRank :
    translationBAtRankMask case_000073_rank case_000073_mask = case_000073_b := by
  rw [translationBAtRankMask, case_000073_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000073_b, case_000073_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000073_firstLine_eq :
    case_000073_support.firstLine case_000073_seq case_000073_b = case_000073_firstLine := by
  norm_num [case_000073_firstLine, case_000073_support, case_000073_seq, case_000073_b,
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
private theorem case_000073_secondLine_eq :
    case_000073_support.secondLine case_000073_seq case_000073_b = case_000073_secondLine := by
  norm_num [case_000073_secondLine, case_000073_support, case_000073_seq, case_000073_b,
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
private theorem case_000073_rows :
    EqEqPosVarFirstRows case_000073_support case_000073_rank.val case_000073_mask := by
  intro hlt
  have hrank : (⟨case_000073_rank.val, hlt⟩ : Fin numPairWords) = case_000073_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000073_rank.val, hlt⟩ case_000073_mask =
        case_000073_seq := by
    simpa [hrank] using case_000073_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000073_rank.val, hlt⟩ case_000073_mask =
        case_000073_b := by
    simpa [hrank] using case_000073_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000073_support case_000073_rank.val hlt
          case_000073_mask = case_000073_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000073_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000073_support case_000073_rank.val hlt
          case_000073_mask = case_000073_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000073_secondLine_eq]
  have case_000073_rowFirst :
      EqEqPosRow (FirstLineAt case_000073_support case_000073_rank.val hlt case_000073_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000073_firstLine, EqEqPosRow]
  have case_000073_fixedSecond :
      FixedRow (SecondLineAt case_000073_support case_000073_rank.val hlt case_000073_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000073_secondLine, FixedRow]
  exact ⟨case_000073_rowFirst, case_000073_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000073_sourceMatches :
    fam_000_desc.SourceMatches case_000073_rank.val case_000073_mask := by
  intro hlt
  have hrank :
      (⟨case_000073_rank.val, hlt⟩ : Fin numPairWords) = case_000073_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000073_rank.val, hlt⟩ case_000073_mask =
        case_000073_seq := by
    simpa [hrank] using case_000073_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000073_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000073_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000073_rank.val hlt case_000073_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000073_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000073_applies :
    fam_000_desc.Applies case_000073_rank.val case_000073_mask := by
  exact ⟨
    case_000073_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000073_support] using case_000073_rows
  ⟩

private theorem case_000073_covered :
    BoundedCovered case_000073_rank.val case_000073_mask :=
  BoundedCovered.fam000 case_000073_applies

private def case_000074_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000074_mask : SignMask := ⟨18, by decide⟩
private def case_000074_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000074_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000074_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000074_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000074_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000074_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000074_rankWord :
    rankPairWord? case_000074_word = some case_000074_rank := by
  decide

private theorem case_000074_unrank :
    unrankPairWord case_000074_rank = case_000074_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000074_word case_000074_rank).1
    case_000074_rankWord |>.symm

private theorem case_000074_seqChoice :
    translationChoiceSeq case_000074_word case_000074_mask = case_000074_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000074_seqAtRank :
    translationSeqAtRankMask case_000074_rank case_000074_mask = case_000074_seq := by
  rw [translationSeqAtRankMask, case_000074_unrank]
  exact case_000074_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000074_bAtRank :
    translationBAtRankMask case_000074_rank case_000074_mask = case_000074_b := by
  rw [translationBAtRankMask, case_000074_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000074_b, case_000074_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000074_firstLine_eq :
    case_000074_support.firstLine case_000074_seq case_000074_b = case_000074_firstLine := by
  norm_num [case_000074_firstLine, case_000074_support, case_000074_seq, case_000074_b,
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
private theorem case_000074_secondLine_eq :
    case_000074_support.secondLine case_000074_seq case_000074_b = case_000074_secondLine := by
  norm_num [case_000074_secondLine, case_000074_support, case_000074_seq, case_000074_b,
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
private theorem case_000074_rows :
    EqEqPosVarFirstRows case_000074_support case_000074_rank.val case_000074_mask := by
  intro hlt
  have hrank : (⟨case_000074_rank.val, hlt⟩ : Fin numPairWords) = case_000074_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000074_rank.val, hlt⟩ case_000074_mask =
        case_000074_seq := by
    simpa [hrank] using case_000074_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000074_rank.val, hlt⟩ case_000074_mask =
        case_000074_b := by
    simpa [hrank] using case_000074_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000074_support case_000074_rank.val hlt
          case_000074_mask = case_000074_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000074_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000074_support case_000074_rank.val hlt
          case_000074_mask = case_000074_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000074_secondLine_eq]
  have case_000074_rowFirst :
      EqEqPosRow (FirstLineAt case_000074_support case_000074_rank.val hlt case_000074_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000074_firstLine, EqEqPosRow]
  have case_000074_fixedSecond :
      FixedRow (SecondLineAt case_000074_support case_000074_rank.val hlt case_000074_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000074_secondLine, FixedRow]
  exact ⟨case_000074_rowFirst, case_000074_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000074_sourceMatches :
    fam_000_desc.SourceMatches case_000074_rank.val case_000074_mask := by
  intro hlt
  have hrank :
      (⟨case_000074_rank.val, hlt⟩ : Fin numPairWords) = case_000074_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000074_rank.val, hlt⟩ case_000074_mask =
        case_000074_seq := by
    simpa [hrank] using case_000074_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000074_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000074_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000074_rank.val hlt case_000074_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000074_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000074_applies :
    fam_000_desc.Applies case_000074_rank.val case_000074_mask := by
  exact ⟨
    case_000074_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000074_support] using case_000074_rows
  ⟩

private theorem case_000074_covered :
    BoundedCovered case_000074_rank.val case_000074_mask :=
  BoundedCovered.fam000 case_000074_applies

private def case_000075_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000075_mask : SignMask := ⟨22, by decide⟩
private def case_000075_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000075_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000075_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tppm
private def case_000075_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000075_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000075_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000075_rankWord :
    rankPairWord? case_000075_word = some case_000075_rank := by
  decide

private theorem case_000075_unrank :
    unrankPairWord case_000075_rank = case_000075_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000075_word case_000075_rank).1
    case_000075_rankWord |>.symm

private theorem case_000075_seqChoice :
    translationChoiceSeq case_000075_word case_000075_mask = case_000075_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000075_seqAtRank :
    translationSeqAtRankMask case_000075_rank case_000075_mask = case_000075_seq := by
  rw [translationSeqAtRankMask, case_000075_unrank]
  exact case_000075_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000075_bAtRank :
    translationBAtRankMask case_000075_rank case_000075_mask = case_000075_b := by
  rw [translationBAtRankMask, case_000075_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000075_b, case_000075_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000075_firstLine_eq :
    case_000075_support.firstLine case_000075_seq case_000075_b = case_000075_firstLine := by
  norm_num [case_000075_firstLine, case_000075_support, case_000075_seq, case_000075_b,
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
private theorem case_000075_secondLine_eq :
    case_000075_support.secondLine case_000075_seq case_000075_b = case_000075_secondLine := by
  norm_num [case_000075_secondLine, case_000075_support, case_000075_seq, case_000075_b,
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
private theorem case_000075_rows :
    EqEqPosVarFirstRows case_000075_support case_000075_rank.val case_000075_mask := by
  intro hlt
  have hrank : (⟨case_000075_rank.val, hlt⟩ : Fin numPairWords) = case_000075_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000075_rank.val, hlt⟩ case_000075_mask =
        case_000075_seq := by
    simpa [hrank] using case_000075_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000075_rank.val, hlt⟩ case_000075_mask =
        case_000075_b := by
    simpa [hrank] using case_000075_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000075_support case_000075_rank.val hlt
          case_000075_mask = case_000075_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000075_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000075_support case_000075_rank.val hlt
          case_000075_mask = case_000075_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000075_secondLine_eq]
  have case_000075_rowFirst :
      EqEqPosRow (FirstLineAt case_000075_support case_000075_rank.val hlt case_000075_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000075_firstLine, EqEqPosRow]
  have case_000075_fixedSecond :
      FixedRow (SecondLineAt case_000075_support case_000075_rank.val hlt case_000075_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000075_secondLine, FixedRow]
  exact ⟨case_000075_rowFirst, case_000075_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000075_sourceMatches :
    fam_001_desc.SourceMatches case_000075_rank.val case_000075_mask := by
  intro hlt
  have hrank :
      (⟨case_000075_rank.val, hlt⟩ : Fin numPairWords) = case_000075_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000075_rank.val, hlt⟩ case_000075_mask =
        case_000075_seq := by
    simpa [hrank] using case_000075_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000075_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000075_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000075_rank.val hlt case_000075_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000075_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000075_applies :
    fam_001_desc.Applies case_000075_rank.val case_000075_mask := by
  exact ⟨
    case_000075_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000075_support] using case_000075_rows
  ⟩

private theorem case_000075_covered :
    BoundedCovered case_000075_rank.val case_000075_mask :=
  BoundedCovered.fam001 case_000075_applies

private def case_000076_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000076_mask : SignMask := ⟨24, by decide⟩
private def case_000076_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000076_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000076_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000076_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000076_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000076_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000076_rankWord :
    rankPairWord? case_000076_word = some case_000076_rank := by
  decide

private theorem case_000076_unrank :
    unrankPairWord case_000076_rank = case_000076_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000076_word case_000076_rank).1
    case_000076_rankWord |>.symm

private theorem case_000076_seqChoice :
    translationChoiceSeq case_000076_word case_000076_mask = case_000076_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000076_seqAtRank :
    translationSeqAtRankMask case_000076_rank case_000076_mask = case_000076_seq := by
  rw [translationSeqAtRankMask, case_000076_unrank]
  exact case_000076_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000076_bAtRank :
    translationBAtRankMask case_000076_rank case_000076_mask = case_000076_b := by
  rw [translationBAtRankMask, case_000076_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000076_b, case_000076_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000076_firstLine_eq :
    case_000076_support.firstLine case_000076_seq case_000076_b = case_000076_firstLine := by
  norm_num [case_000076_firstLine, case_000076_support, case_000076_seq, case_000076_b,
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
private theorem case_000076_secondLine_eq :
    case_000076_support.secondLine case_000076_seq case_000076_b = case_000076_secondLine := by
  norm_num [case_000076_secondLine, case_000076_support, case_000076_seq, case_000076_b,
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
private theorem case_000076_rows :
    EqEqPosVarFirstRows case_000076_support case_000076_rank.val case_000076_mask := by
  intro hlt
  have hrank : (⟨case_000076_rank.val, hlt⟩ : Fin numPairWords) = case_000076_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000076_rank.val, hlt⟩ case_000076_mask =
        case_000076_seq := by
    simpa [hrank] using case_000076_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000076_rank.val, hlt⟩ case_000076_mask =
        case_000076_b := by
    simpa [hrank] using case_000076_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000076_support case_000076_rank.val hlt
          case_000076_mask = case_000076_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000076_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000076_support case_000076_rank.val hlt
          case_000076_mask = case_000076_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000076_secondLine_eq]
  have case_000076_rowFirst :
      EqEqPosRow (FirstLineAt case_000076_support case_000076_rank.val hlt case_000076_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000076_firstLine, EqEqPosRow]
  have case_000076_fixedSecond :
      FixedRow (SecondLineAt case_000076_support case_000076_rank.val hlt case_000076_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000076_secondLine, FixedRow]
  exact ⟨case_000076_rowFirst, case_000076_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000076_sourceMatches :
    fam_000_desc.SourceMatches case_000076_rank.val case_000076_mask := by
  intro hlt
  have hrank :
      (⟨case_000076_rank.val, hlt⟩ : Fin numPairWords) = case_000076_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000076_rank.val, hlt⟩ case_000076_mask =
        case_000076_seq := by
    simpa [hrank] using case_000076_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000076_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000076_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000076_rank.val hlt case_000076_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000076_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000076_applies :
    fam_000_desc.Applies case_000076_rank.val case_000076_mask := by
  exact ⟨
    case_000076_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000076_support] using case_000076_rows
  ⟩

private theorem case_000076_covered :
    BoundedCovered case_000076_rank.val case_000076_mask :=
  BoundedCovered.fam000 case_000076_applies

private def case_000077_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000077_mask : SignMask := ⟨28, by decide⟩
private def case_000077_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000077_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000077_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000077_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000077_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000077_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000077_rankWord :
    rankPairWord? case_000077_word = some case_000077_rank := by
  decide

private theorem case_000077_unrank :
    unrankPairWord case_000077_rank = case_000077_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000077_word case_000077_rank).1
    case_000077_rankWord |>.symm

private theorem case_000077_seqChoice :
    translationChoiceSeq case_000077_word case_000077_mask = case_000077_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000077_seqAtRank :
    translationSeqAtRankMask case_000077_rank case_000077_mask = case_000077_seq := by
  rw [translationSeqAtRankMask, case_000077_unrank]
  exact case_000077_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000077_bAtRank :
    translationBAtRankMask case_000077_rank case_000077_mask = case_000077_b := by
  rw [translationBAtRankMask, case_000077_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000077_b, case_000077_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000077_firstLine_eq :
    case_000077_support.firstLine case_000077_seq case_000077_b = case_000077_firstLine := by
  norm_num [case_000077_firstLine, case_000077_support, case_000077_seq, case_000077_b,
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
private theorem case_000077_secondLine_eq :
    case_000077_support.secondLine case_000077_seq case_000077_b = case_000077_secondLine := by
  norm_num [case_000077_secondLine, case_000077_support, case_000077_seq, case_000077_b,
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
private theorem case_000077_rows :
    OppOneMinusVarFirstRows case_000077_support case_000077_rank.val case_000077_mask := by
  intro hlt
  have hrank : (⟨case_000077_rank.val, hlt⟩ : Fin numPairWords) = case_000077_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000077_rank.val, hlt⟩ case_000077_mask =
        case_000077_seq := by
    simpa [hrank] using case_000077_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000077_rank.val, hlt⟩ case_000077_mask =
        case_000077_b := by
    simpa [hrank] using case_000077_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000077_support case_000077_rank.val hlt
          case_000077_mask = case_000077_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000077_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000077_support case_000077_rank.val hlt
          case_000077_mask = case_000077_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000077_secondLine_eq]
  have case_000077_rowFirst :
      OppPosRow (FirstLineAt case_000077_support case_000077_rank.val hlt case_000077_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000077_firstLine, OppPosRow]
  have case_000077_fixedSecond :
      FixedRow (SecondLineAt case_000077_support case_000077_rank.val hlt case_000077_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000077_secondLine, FixedRow]
  exact ⟨case_000077_rowFirst, case_000077_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000077_sourceMatches :
    fam_004_desc.SourceMatches case_000077_rank.val case_000077_mask := by
  intro hlt
  have hrank :
      (⟨case_000077_rank.val, hlt⟩ : Fin numPairWords) = case_000077_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000077_rank.val, hlt⟩ case_000077_mask =
        case_000077_seq := by
    simpa [hrank] using case_000077_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000077_seq)
          fam_004_desc.firstIndex = some fam_004_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000077_seq)
          fam_004_desc.secondIndex = some fam_004_support.second := by
    decide
  have hchecks :
      SourceChecks fam_004_support case_000077_rank.val hlt case_000077_mask := by
    simp [SourceChecks, hseq, fam_004_support,
      checkTranslationConstraintSource, case_000077_seq, impactFace]
  exact ⟨
    by simpa [fam_004_desc, hseq] using hfirstIndex,
    by simpa [fam_004_desc, hseq] using hsecondIndex,
    by simpa [fam_004_desc] using hchecks
  ⟩

private theorem case_000077_applies :
    fam_004_desc.Applies case_000077_rank.val case_000077_mask := by
  exact ⟨
    case_000077_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_004_desc, fam_004_support, case_000077_support] using case_000077_rows
  ⟩

private theorem case_000077_covered :
    BoundedCovered case_000077_rank.val case_000077_mask :=
  BoundedCovered.fam004 case_000077_applies

private def case_000078_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000078_mask : SignMask := ⟨30, by decide⟩
private def case_000078_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000078_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000078_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmmp
private def case_000078_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000078_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000078_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000078_rankWord :
    rankPairWord? case_000078_word = some case_000078_rank := by
  decide

private theorem case_000078_unrank :
    unrankPairWord case_000078_rank = case_000078_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000078_word case_000078_rank).1
    case_000078_rankWord |>.symm

private theorem case_000078_seqChoice :
    translationChoiceSeq case_000078_word case_000078_mask = case_000078_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000078_seqAtRank :
    translationSeqAtRankMask case_000078_rank case_000078_mask = case_000078_seq := by
  rw [translationSeqAtRankMask, case_000078_unrank]
  exact case_000078_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000078_bAtRank :
    translationBAtRankMask case_000078_rank case_000078_mask = case_000078_b := by
  rw [translationBAtRankMask, case_000078_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000078_b, case_000078_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000078_firstLine_eq :
    case_000078_support.firstLine case_000078_seq case_000078_b = case_000078_firstLine := by
  norm_num [case_000078_firstLine, case_000078_support, case_000078_seq, case_000078_b,
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
private theorem case_000078_secondLine_eq :
    case_000078_support.secondLine case_000078_seq case_000078_b = case_000078_secondLine := by
  norm_num [case_000078_secondLine, case_000078_support, case_000078_seq, case_000078_b,
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
private theorem case_000078_rows :
    EqEqPosVarFirstRows case_000078_support case_000078_rank.val case_000078_mask := by
  intro hlt
  have hrank : (⟨case_000078_rank.val, hlt⟩ : Fin numPairWords) = case_000078_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000078_rank.val, hlt⟩ case_000078_mask =
        case_000078_seq := by
    simpa [hrank] using case_000078_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000078_rank.val, hlt⟩ case_000078_mask =
        case_000078_b := by
    simpa [hrank] using case_000078_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000078_support case_000078_rank.val hlt
          case_000078_mask = case_000078_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000078_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000078_support case_000078_rank.val hlt
          case_000078_mask = case_000078_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000078_secondLine_eq]
  have case_000078_rowFirst :
      EqEqPosRow (FirstLineAt case_000078_support case_000078_rank.val hlt case_000078_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000078_firstLine, EqEqPosRow]
  have case_000078_fixedSecond :
      FixedRow (SecondLineAt case_000078_support case_000078_rank.val hlt case_000078_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000078_secondLine, FixedRow]
  exact ⟨case_000078_rowFirst, case_000078_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000078_sourceMatches :
    fam_001_desc.SourceMatches case_000078_rank.val case_000078_mask := by
  intro hlt
  have hrank :
      (⟨case_000078_rank.val, hlt⟩ : Fin numPairWords) = case_000078_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000078_rank.val, hlt⟩ case_000078_mask =
        case_000078_seq := by
    simpa [hrank] using case_000078_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000078_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000078_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000078_rank.val hlt case_000078_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000078_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000078_applies :
    fam_001_desc.Applies case_000078_rank.val case_000078_mask := by
  exact ⟨
    case_000078_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000078_support] using case_000078_rows
  ⟩

private theorem case_000078_covered :
    BoundedCovered case_000078_rank.val case_000078_mask :=
  BoundedCovered.fam001 case_000078_applies

private def case_000079_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000079_mask : SignMask := ⟨54, by decide⟩
private def case_000079_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000079_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000079_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tppm
private def case_000079_b : Vec3 Rat := { x := (-68/9), y := (-4/9), z := (100/9) }
private def case_000079_firstLine : StrictLin2 := { a := -1, b := 1, c := (-35/17) }
private def case_000079_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000079_rankWord :
    rankPairWord? case_000079_word = some case_000079_rank := by
  decide

private theorem case_000079_unrank :
    unrankPairWord case_000079_rank = case_000079_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000079_word case_000079_rank).1
    case_000079_rankWord |>.symm

private theorem case_000079_seqChoice :
    translationChoiceSeq case_000079_word case_000079_mask = case_000079_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000079_seqAtRank :
    translationSeqAtRankMask case_000079_rank case_000079_mask = case_000079_seq := by
  rw [translationSeqAtRankMask, case_000079_unrank]
  exact case_000079_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000079_bAtRank :
    translationBAtRankMask case_000079_rank case_000079_mask = case_000079_b := by
  rw [translationBAtRankMask, case_000079_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000079_b, case_000079_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000079_firstLine_eq :
    case_000079_support.firstLine case_000079_seq case_000079_b = case_000079_firstLine := by
  norm_num [case_000079_firstLine, case_000079_support, case_000079_seq, case_000079_b,
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
private theorem case_000079_secondLine_eq :
    case_000079_support.secondLine case_000079_seq case_000079_b = case_000079_secondLine := by
  norm_num [case_000079_secondLine, case_000079_support, case_000079_seq, case_000079_b,
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
private theorem case_000079_rows :
    OppOneMinusVarFirstRows case_000079_support case_000079_rank.val case_000079_mask := by
  intro hlt
  have hrank : (⟨case_000079_rank.val, hlt⟩ : Fin numPairWords) = case_000079_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000079_rank.val, hlt⟩ case_000079_mask =
        case_000079_seq := by
    simpa [hrank] using case_000079_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000079_rank.val, hlt⟩ case_000079_mask =
        case_000079_b := by
    simpa [hrank] using case_000079_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000079_support case_000079_rank.val hlt
          case_000079_mask = case_000079_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000079_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000079_support case_000079_rank.val hlt
          case_000079_mask = case_000079_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000079_secondLine_eq]
  have case_000079_rowFirst :
      OppPosRow (FirstLineAt case_000079_support case_000079_rank.val hlt case_000079_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000079_firstLine, OppPosRow]
  have case_000079_fixedSecond :
      FixedRow (SecondLineAt case_000079_support case_000079_rank.val hlt case_000079_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000079_secondLine, FixedRow]
  exact ⟨case_000079_rowFirst, case_000079_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000079_sourceMatches :
    fam_003_desc.SourceMatches case_000079_rank.val case_000079_mask := by
  intro hlt
  have hrank :
      (⟨case_000079_rank.val, hlt⟩ : Fin numPairWords) = case_000079_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000079_rank.val, hlt⟩ case_000079_mask =
        case_000079_seq := by
    simpa [hrank] using case_000079_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000079_seq)
          fam_003_desc.firstIndex = some fam_003_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000079_seq)
          fam_003_desc.secondIndex = some fam_003_support.second := by
    decide
  have hchecks :
      SourceChecks fam_003_support case_000079_rank.val hlt case_000079_mask := by
    simp [SourceChecks, hseq, fam_003_support,
      checkTranslationConstraintSource, case_000079_seq, impactFace]
  exact ⟨
    by simpa [fam_003_desc, hseq] using hfirstIndex,
    by simpa [fam_003_desc, hseq] using hsecondIndex,
    by simpa [fam_003_desc] using hchecks
  ⟩

private theorem case_000079_applies :
    fam_003_desc.Applies case_000079_rank.val case_000079_mask := by
  exact ⟨
    case_000079_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_003_desc, fam_003_support, case_000079_support] using case_000079_rows
  ⟩

private theorem case_000079_covered :
    BoundedCovered case_000079_rank.val case_000079_mask :=
  BoundedCovered.fam003 case_000079_applies

private def case_000080_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000080_mask : SignMask := ⟨61, by decide⟩
private def case_000080_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000080_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000080_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000080_b : Vec3 Rat := { x := (-116/9), y := (116/9), z := (-20/9) }
private def case_000080_firstLine : StrictLin2 := { a := (-29/63), b := (29/63), c := (-103/189) }
private def case_000080_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000080_rankWord :
    rankPairWord? case_000080_word = some case_000080_rank := by
  decide

private theorem case_000080_unrank :
    unrankPairWord case_000080_rank = case_000080_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000080_word case_000080_rank).1
    case_000080_rankWord |>.symm

private theorem case_000080_seqChoice :
    translationChoiceSeq case_000080_word case_000080_mask = case_000080_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000080_seqAtRank :
    translationSeqAtRankMask case_000080_rank case_000080_mask = case_000080_seq := by
  rw [translationSeqAtRankMask, case_000080_unrank]
  exact case_000080_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000080_bAtRank :
    translationBAtRankMask case_000080_rank case_000080_mask = case_000080_b := by
  rw [translationBAtRankMask, case_000080_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000080_b, case_000080_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000080_firstLine_eq :
    case_000080_support.firstLine case_000080_seq case_000080_b = case_000080_firstLine := by
  norm_num [case_000080_firstLine, case_000080_support, case_000080_seq, case_000080_b,
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
private theorem case_000080_secondLine_eq :
    case_000080_support.secondLine case_000080_seq case_000080_b = case_000080_secondLine := by
  norm_num [case_000080_secondLine, case_000080_support, case_000080_seq, case_000080_b,
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
private theorem case_000080_rows :
    OppOneMinusVarFirstRows case_000080_support case_000080_rank.val case_000080_mask := by
  intro hlt
  have hrank : (⟨case_000080_rank.val, hlt⟩ : Fin numPairWords) = case_000080_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000080_rank.val, hlt⟩ case_000080_mask =
        case_000080_seq := by
    simpa [hrank] using case_000080_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000080_rank.val, hlt⟩ case_000080_mask =
        case_000080_b := by
    simpa [hrank] using case_000080_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000080_support case_000080_rank.val hlt
          case_000080_mask = case_000080_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000080_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000080_support case_000080_rank.val hlt
          case_000080_mask = case_000080_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000080_secondLine_eq]
  have case_000080_rowFirst :
      OppPosRow (FirstLineAt case_000080_support case_000080_rank.val hlt case_000080_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000080_firstLine, OppPosRow]
  have case_000080_fixedSecond :
      FixedRow (SecondLineAt case_000080_support case_000080_rank.val hlt case_000080_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000080_secondLine, FixedRow]
  exact ⟨case_000080_rowFirst, case_000080_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000080_sourceMatches :
    fam_004_desc.SourceMatches case_000080_rank.val case_000080_mask := by
  intro hlt
  have hrank :
      (⟨case_000080_rank.val, hlt⟩ : Fin numPairWords) = case_000080_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000080_rank.val, hlt⟩ case_000080_mask =
        case_000080_seq := by
    simpa [hrank] using case_000080_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000080_seq)
          fam_004_desc.firstIndex = some fam_004_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000080_seq)
          fam_004_desc.secondIndex = some fam_004_support.second := by
    decide
  have hchecks :
      SourceChecks fam_004_support case_000080_rank.val hlt case_000080_mask := by
    simp [SourceChecks, hseq, fam_004_support,
      checkTranslationConstraintSource, case_000080_seq, impactFace]
  exact ⟨
    by simpa [fam_004_desc, hseq] using hfirstIndex,
    by simpa [fam_004_desc, hseq] using hsecondIndex,
    by simpa [fam_004_desc] using hchecks
  ⟩

private theorem case_000080_applies :
    fam_004_desc.Applies case_000080_rank.val case_000080_mask := by
  exact ⟨
    case_000080_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_004_desc, fam_004_support, case_000080_support] using case_000080_rows
  ⟩

private theorem case_000080_covered :
    BoundedCovered case_000080_rank.val case_000080_mask :=
  BoundedCovered.fam004 case_000080_applies

private def case_000081_rank : Fin numPairWords := ⟨11, by decide⟩
private def case_000081_mask : SignMask := ⟨63, by decide⟩
private def case_000081_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d11m], by decide⟩
private def case_000081_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000081_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmmp
private def case_000081_b : Vec3 Rat := { x := (-116/9), y := (116/9), z := (52/9) }
private def case_000081_firstLine : StrictLin2 := { a := (-29/71), b := (-29/71), c := (-93/71) }
private def case_000081_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000081_rankWord :
    rankPairWord? case_000081_word = some case_000081_rank := by
  decide

private theorem case_000081_unrank :
    unrankPairWord case_000081_rank = case_000081_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000081_word case_000081_rank).1
    case_000081_rankWord |>.symm

private theorem case_000081_seqChoice :
    translationChoiceSeq case_000081_word case_000081_mask = case_000081_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000081_seqAtRank :
    translationSeqAtRankMask case_000081_rank case_000081_mask = case_000081_seq := by
  rw [translationSeqAtRankMask, case_000081_unrank]
  exact case_000081_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000081_bAtRank :
    translationBAtRankMask case_000081_rank case_000081_mask = case_000081_b := by
  rw [translationBAtRankMask, case_000081_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000081_b, case_000081_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000081_firstLine_eq :
    case_000081_support.firstLine case_000081_seq case_000081_b = case_000081_firstLine := by
  norm_num [case_000081_firstLine, case_000081_support, case_000081_seq, case_000081_b,
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
private theorem case_000081_secondLine_eq :
    case_000081_support.secondLine case_000081_seq case_000081_b = case_000081_secondLine := by
  norm_num [case_000081_secondLine, case_000081_support, case_000081_seq, case_000081_b,
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
private theorem case_000081_rows :
    EqEqPosVarFirstRows case_000081_support case_000081_rank.val case_000081_mask := by
  intro hlt
  have hrank : (⟨case_000081_rank.val, hlt⟩ : Fin numPairWords) = case_000081_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000081_rank.val, hlt⟩ case_000081_mask =
        case_000081_seq := by
    simpa [hrank] using case_000081_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000081_rank.val, hlt⟩ case_000081_mask =
        case_000081_b := by
    simpa [hrank] using case_000081_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000081_support case_000081_rank.val hlt
          case_000081_mask = case_000081_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000081_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000081_support case_000081_rank.val hlt
          case_000081_mask = case_000081_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000081_secondLine_eq]
  have case_000081_rowFirst :
      EqEqPosRow (FirstLineAt case_000081_support case_000081_rank.val hlt case_000081_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000081_firstLine, EqEqPosRow]
  have case_000081_fixedSecond :
      FixedRow (SecondLineAt case_000081_support case_000081_rank.val hlt case_000081_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000081_secondLine, FixedRow]
  exact ⟨case_000081_rowFirst, case_000081_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000081_sourceMatches :
    fam_001_desc.SourceMatches case_000081_rank.val case_000081_mask := by
  intro hlt
  have hrank :
      (⟨case_000081_rank.val, hlt⟩ : Fin numPairWords) = case_000081_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000081_rank.val, hlt⟩ case_000081_mask =
        case_000081_seq := by
    simpa [hrank] using case_000081_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000081_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000081_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000081_rank.val hlt case_000081_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000081_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000081_applies :
    fam_001_desc.Applies case_000081_rank.val case_000081_mask := by
  exact ⟨
    case_000081_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000081_support] using case_000081_rows
  ⟩

private theorem case_000081_covered :
    BoundedCovered case_000081_rank.val case_000081_mask :=
  BoundedCovered.fam001 case_000081_applies

private theorem rank_000000008_coverage
    (hlt : 8 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨8, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨8, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 8 mask := by
  exact False.elim ((rank_000000008_nonidentity_linear_ne_atRank hlt) hM)

private theorem rank_000000009_coverage
    (hlt : 9 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨9, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨9, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 9 mask := by
  fin_cases mask
  · exact False.elim ((rank_000000009_mask_00_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_01_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_02_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_03_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_04_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_05_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_06_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_07_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_08_badDirection_notGood hlt) hgood)
  · exact case_000058_covered
  · exact False.elim ((rank_000000009_mask_10_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_11_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_12_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_13_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_14_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_15_badDirection_notGood hlt) hgood)
  · exact case_000059_covered
  · exact False.elim ((rank_000000009_mask_17_badDirection_notGood hlt) hgood)
  · exact case_000060_covered
  · exact False.elim ((rank_000000009_mask_19_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_20_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_21_badDirection_notGood hlt) hgood)
  · exact case_000061_covered
  · exact False.elim ((rank_000000009_mask_23_badDirection_notGood hlt) hgood)
  · exact case_000062_covered
  · exact False.elim ((rank_000000009_mask_25_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_26_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_27_badDirection_notGood hlt) hgood)
  · exact case_000063_covered
  · exact case_000064_covered
  · exact case_000065_covered
  · exact case_000066_covered
  · exact False.elim ((rank_000000009_mask_32_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_33_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_34_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_35_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_36_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_37_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_38_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_39_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_40_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_41_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_42_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_43_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_44_badDirection_notGood hlt) hgood)
  · exact case_000067_covered
  · exact False.elim ((rank_000000009_mask_46_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_47_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_48_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_49_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_50_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_51_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_52_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_53_badDirection_notGood hlt) hgood)
  · exact case_000068_covered
  · exact case_000069_covered
  · exact False.elim ((rank_000000009_mask_56_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_57_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_58_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_59_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_60_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_61_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000009_mask_62_badDirection_notGood hlt) hgood)
  · exact case_000070_covered

private theorem rank_000000010_coverage
    (hlt : 10 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨10, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨10, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 10 mask := by
  exact False.elim ((rank_000000010_nonidentity_linear_ne_atRank hlt) hM)

private theorem rank_000000011_coverage
    (hlt : 11 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨11, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 11 mask := by
  fin_cases mask
  · exact False.elim ((rank_000000011_mask_00_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_01_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_02_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_03_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_04_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_05_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_06_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_07_badDirection_notGood hlt) hgood)
  · exact case_000071_covered
  · exact case_000072_covered
  · exact False.elim ((rank_000000011_mask_10_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_11_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_12_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_13_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_14_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_15_badDirection_notGood hlt) hgood)
  · exact case_000073_covered
  · exact False.elim ((rank_000000011_mask_17_badDirection_notGood hlt) hgood)
  · exact case_000074_covered
  · exact False.elim ((rank_000000011_mask_19_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_20_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_21_badDirection_notGood hlt) hgood)
  · exact case_000075_covered
  · exact False.elim ((rank_000000011_mask_23_badDirection_notGood hlt) hgood)
  · exact case_000076_covered
  · exact False.elim ((rank_000000011_mask_25_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_26_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_27_badDirection_notGood hlt) hgood)
  · exact case_000077_covered
  · exact False.elim ((rank_000000011_mask_29_badDirection_notGood hlt) hgood)
  · exact case_000078_covered
  · exact False.elim ((rank_000000011_mask_31_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_32_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_33_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_34_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_35_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_36_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_37_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_38_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_39_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_40_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_41_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_42_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_43_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_44_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_45_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_46_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_47_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_48_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_49_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_50_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_51_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_52_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_53_badDirection_notGood hlt) hgood)
  · exact case_000079_covered
  · exact False.elim ((rank_000000011_mask_55_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_56_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_57_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_58_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_59_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000011_mask_60_badDirection_notGood hlt) hgood)
  · exact case_000080_covered
  · exact False.elim ((rank_000000011_mask_62_badDirection_notGood hlt) hgood)
  · exact case_000081_covered

set_option maxHeartbeats 4000000 in
theorem shardCoverage :
    RowPropertyMembershipCoverageOnIdentityRange boundedFamily 8 12 := by
  intro r hlt mask hlo hhi hM hgood
  interval_cases r
  · exact rank_000000008_coverage hlt mask hM hgood
  · exact rank_000000009_coverage hlt mask hM hgood
  · exact rank_000000010_coverage hlt mask hM hgood
  · exact rank_000000011_coverage hlt mask hM hgood

theorem shardGoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (hlo : 8 <= r) (hhi : r < 12)
    (hM : totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) =
      (matId : Mat3 Rat)) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  boundedFamily.identityRangeKills shardCoverage r hlt mask hlo hhi hM

theorem shard_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard002
