import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Generated bounded source-index/state coverage shard for Phase 6Z.6K.8I.

The descriptor `Applies` predicates are source-index/state predicates.
This shard is a bounded gate, not final global coverage.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard003

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

private def rank_000000012_nonidentity_rank : Fin numPairWords := ⟨12, by decide⟩
private def rank_000000012_nonidentity_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.dm11], by decide⟩

@[simp] theorem rank_000000012_nonidentity_word_get00_num :
    rank_000000012_nonidentity_word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem rank_000000012_nonidentity_word_get00_mk (h : 0 < 13) :
    rank_000000012_nonidentity_word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000012_nonidentity_word_get01_num :
    rank_000000012_nonidentity_word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000012_nonidentity_word_get01_mk (h : 1 < 13) :
    rank_000000012_nonidentity_word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000012_nonidentity_word_get02_num :
    rank_000000012_nonidentity_word.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000012_nonidentity_word_get02_mk (h : 2 < 13) :
    rank_000000012_nonidentity_word.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000012_nonidentity_word_get03_num :
    rank_000000012_nonidentity_word.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000012_nonidentity_word_get03_mk (h : 3 < 13) :
    rank_000000012_nonidentity_word.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000012_nonidentity_word_get04_num :
    rank_000000012_nonidentity_word.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000012_nonidentity_word_get04_mk (h : 4 < 13) :
    rank_000000012_nonidentity_word.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000012_nonidentity_word_get05_num :
    rank_000000012_nonidentity_word.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000012_nonidentity_word_get05_mk (h : 5 < 13) :
    rank_000000012_nonidentity_word.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000012_nonidentity_word_get06_num :
    rank_000000012_nonidentity_word.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000012_nonidentity_word_get06_mk (h : 6 < 13) :
    rank_000000012_nonidentity_word.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000012_nonidentity_word_get07_num :
    rank_000000012_nonidentity_word.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000012_nonidentity_word_get07_mk (h : 7 < 13) :
    rank_000000012_nonidentity_word.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000012_nonidentity_word_get08_num :
    rank_000000012_nonidentity_word.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000012_nonidentity_word_get08_mk (h : 8 < 13) :
    rank_000000012_nonidentity_word.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000012_nonidentity_word_get09_num :
    rank_000000012_nonidentity_word.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000012_nonidentity_word_get09_mk (h : 9 < 13) :
    rank_000000012_nonidentity_word.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000012_nonidentity_word_get10_num :
    rank_000000012_nonidentity_word.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000012_nonidentity_word_get10_mk (h : 10 < 13) :
    rank_000000012_nonidentity_word.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000012_nonidentity_word_get11_num :
    rank_000000012_nonidentity_word.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000012_nonidentity_word_get11_mk (h : 11 < 13) :
    rank_000000012_nonidentity_word.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000012_nonidentity_word_get12_num :
    rank_000000012_nonidentity_word.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000012_nonidentity_word_get12_mk (h : 12 < 13) :
    rank_000000012_nonidentity_word.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem rank_000000012_nonidentity_rankWord :
    rankPairWord? rank_000000012_nonidentity_word = some rank_000000012_nonidentity_rank := by
  decide

private theorem rank_000000012_nonidentity_unrank :
    unrankPairWord rank_000000012_nonidentity_rank = rank_000000012_nonidentity_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000012_nonidentity_word rank_000000012_nonidentity_rank).1
    rank_000000012_nonidentity_rankWord |>.symm

set_option maxHeartbeats 1200000 in
private theorem rank_000000012_nonidentity_totalLinear :
    totalLinearOfPairWord rank_000000012_nonidentity_word =
      { m00 := (-551/729), m01 := (304/729), m02 := (-368/729), m10 := (464/729), m11 := (473/729), m12 := (-304/729), m20 := (112/729), m21 := (-464/729), m22 := (-551/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

private theorem rank_000000012_nonidentity_linear_ne :
    totalLinearOfPairWord rank_000000012_nonidentity_word ≠ (matId : Mat3 Rat) := by
  rw [rank_000000012_nonidentity_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

private theorem rank_000000012_nonidentity_linear_ne_atRank
    (hlt : 12 < numPairWords) :
    totalLinearOfPairWord
      (unrankPairWord (⟨12, hlt⟩ : Fin numPairWords)) ≠
        (matId : Mat3 Rat) := by
  have hrank :
      (⟨12, hlt⟩ : Fin numPairWords) = rank_000000012_nonidentity_rank := by
    ext
    rfl
  simpa [hrank, rank_000000012_nonidentity_unrank] using rank_000000012_nonidentity_linear_ne

private def rank_000000013_nonidentity_rank : Fin numPairWords := ⟨13, by decide⟩
private def rank_000000013_nonidentity_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d11m, PairId.dm11, PairId.d1m1], by decide⟩

@[simp] theorem rank_000000013_nonidentity_word_get00_num :
    rank_000000013_nonidentity_word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem rank_000000013_nonidentity_word_get00_mk (h : 0 < 13) :
    rank_000000013_nonidentity_word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000013_nonidentity_word_get01_num :
    rank_000000013_nonidentity_word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000013_nonidentity_word_get01_mk (h : 1 < 13) :
    rank_000000013_nonidentity_word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000013_nonidentity_word_get02_num :
    rank_000000013_nonidentity_word.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000013_nonidentity_word_get02_mk (h : 2 < 13) :
    rank_000000013_nonidentity_word.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000013_nonidentity_word_get03_num :
    rank_000000013_nonidentity_word.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000013_nonidentity_word_get03_mk (h : 3 < 13) :
    rank_000000013_nonidentity_word.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000013_nonidentity_word_get04_num :
    rank_000000013_nonidentity_word.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000013_nonidentity_word_get04_mk (h : 4 < 13) :
    rank_000000013_nonidentity_word.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000013_nonidentity_word_get05_num :
    rank_000000013_nonidentity_word.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000013_nonidentity_word_get05_mk (h : 5 < 13) :
    rank_000000013_nonidentity_word.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000013_nonidentity_word_get06_num :
    rank_000000013_nonidentity_word.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000013_nonidentity_word_get06_mk (h : 6 < 13) :
    rank_000000013_nonidentity_word.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000013_nonidentity_word_get07_num :
    rank_000000013_nonidentity_word.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000013_nonidentity_word_get07_mk (h : 7 < 13) :
    rank_000000013_nonidentity_word.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000013_nonidentity_word_get08_num :
    rank_000000013_nonidentity_word.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000013_nonidentity_word_get08_mk (h : 8 < 13) :
    rank_000000013_nonidentity_word.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000013_nonidentity_word_get09_num :
    rank_000000013_nonidentity_word.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000013_nonidentity_word_get09_mk (h : 9 < 13) :
    rank_000000013_nonidentity_word.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000013_nonidentity_word_get10_num :
    rank_000000013_nonidentity_word.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000013_nonidentity_word_get10_mk (h : 10 < 13) :
    rank_000000013_nonidentity_word.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000013_nonidentity_word_get11_num :
    rank_000000013_nonidentity_word.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000013_nonidentity_word_get11_mk (h : 11 < 13) :
    rank_000000013_nonidentity_word.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000013_nonidentity_word_get12_num :
    rank_000000013_nonidentity_word.get (12 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000013_nonidentity_word_get12_mk (h : 12 < 13) :
    rank_000000013_nonidentity_word.get ⟨12, h⟩ = PairId.d1m1 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem rank_000000013_nonidentity_rankWord :
    rankPairWord? rank_000000013_nonidentity_word = some rank_000000013_nonidentity_rank := by
  decide

private theorem rank_000000013_nonidentity_unrank :
    unrankPairWord rank_000000013_nonidentity_rank = rank_000000013_nonidentity_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000013_nonidentity_word rank_000000013_nonidentity_rank).1
    rank_000000013_nonidentity_rankWord |>.symm

set_option maxHeartbeats 1200000 in
private theorem rank_000000013_nonidentity_totalLinear :
    totalLinearOfPairWord rank_000000013_nonidentity_word =
      { m00 := (-199/729), m01 := (656/729), m02 := (-248/729), m10 := (304/729), m11 := (313/729), m12 := (584/729), m20 := (632/729), m21 := (56/729), m22 := (-359/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

private theorem rank_000000013_nonidentity_linear_ne :
    totalLinearOfPairWord rank_000000013_nonidentity_word ≠ (matId : Mat3 Rat) := by
  rw [rank_000000013_nonidentity_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

private theorem rank_000000013_nonidentity_linear_ne_atRank
    (hlt : 13 < numPairWords) :
    totalLinearOfPairWord
      (unrankPairWord (⟨13, hlt⟩ : Fin numPairWords)) ≠
        (matId : Mat3 Rat) := by
  have hrank :
      (⟨13, hlt⟩ : Fin numPairWords) = rank_000000013_nonidentity_rank := by
    ext
    rfl
  simpa [hrank, rank_000000013_nonidentity_unrank] using rank_000000013_nonidentity_linear_ne

private def rank_000000014_nonidentity_rank : Fin numPairWords := ⟨14, by decide⟩
private def rank_000000014_nonidentity_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩

@[simp] theorem rank_000000014_nonidentity_word_get00_num :
    rank_000000014_nonidentity_word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem rank_000000014_nonidentity_word_get00_mk (h : 0 < 13) :
    rank_000000014_nonidentity_word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000014_nonidentity_word_get01_num :
    rank_000000014_nonidentity_word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000014_nonidentity_word_get01_mk (h : 1 < 13) :
    rank_000000014_nonidentity_word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000014_nonidentity_word_get02_num :
    rank_000000014_nonidentity_word.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000014_nonidentity_word_get02_mk (h : 2 < 13) :
    rank_000000014_nonidentity_word.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000014_nonidentity_word_get03_num :
    rank_000000014_nonidentity_word.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000014_nonidentity_word_get03_mk (h : 3 < 13) :
    rank_000000014_nonidentity_word.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000014_nonidentity_word_get04_num :
    rank_000000014_nonidentity_word.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000014_nonidentity_word_get04_mk (h : 4 < 13) :
    rank_000000014_nonidentity_word.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000014_nonidentity_word_get05_num :
    rank_000000014_nonidentity_word.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000014_nonidentity_word_get05_mk (h : 5 < 13) :
    rank_000000014_nonidentity_word.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000014_nonidentity_word_get06_num :
    rank_000000014_nonidentity_word.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000014_nonidentity_word_get06_mk (h : 6 < 13) :
    rank_000000014_nonidentity_word.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000014_nonidentity_word_get07_num :
    rank_000000014_nonidentity_word.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000014_nonidentity_word_get07_mk (h : 7 < 13) :
    rank_000000014_nonidentity_word.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000014_nonidentity_word_get08_num :
    rank_000000014_nonidentity_word.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000014_nonidentity_word_get08_mk (h : 8 < 13) :
    rank_000000014_nonidentity_word.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000014_nonidentity_word_get09_num :
    rank_000000014_nonidentity_word.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000014_nonidentity_word_get09_mk (h : 9 < 13) :
    rank_000000014_nonidentity_word.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000014_nonidentity_word_get10_num :
    rank_000000014_nonidentity_word.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000014_nonidentity_word_get10_mk (h : 10 < 13) :
    rank_000000014_nonidentity_word.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000014_nonidentity_word_get11_num :
    rank_000000014_nonidentity_word.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000014_nonidentity_word_get11_mk (h : 11 < 13) :
    rank_000000014_nonidentity_word.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000014_nonidentity_word_get12_num :
    rank_000000014_nonidentity_word.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000014_nonidentity_word_get12_mk (h : 12 < 13) :
    rank_000000014_nonidentity_word.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem rank_000000014_nonidentity_rankWord :
    rankPairWord? rank_000000014_nonidentity_word = some rank_000000014_nonidentity_rank := by
  decide

private theorem rank_000000014_nonidentity_unrank :
    unrankPairWord rank_000000014_nonidentity_rank = rank_000000014_nonidentity_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000014_nonidentity_word rank_000000014_nonidentity_rank).1
    rank_000000014_nonidentity_rankWord |>.symm

set_option maxHeartbeats 1200000 in
private theorem rank_000000014_nonidentity_totalLinear :
    totalLinearOfPairWord rank_000000014_nonidentity_word =
      { m00 := (-359/729), m01 := (-248/729), m02 := (-584/729), m10 := (632/729), m11 := (-199/729), m12 := (-304/729), m20 := (-56/729), m21 := (-656/729), m22 := (313/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

private theorem rank_000000014_nonidentity_linear_ne :
    totalLinearOfPairWord rank_000000014_nonidentity_word ≠ (matId : Mat3 Rat) := by
  rw [rank_000000014_nonidentity_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

private theorem rank_000000014_nonidentity_linear_ne_atRank
    (hlt : 14 < numPairWords) :
    totalLinearOfPairWord
      (unrankPairWord (⟨14, hlt⟩ : Fin numPairWords)) ≠
        (matId : Mat3 Rat) := by
  have hrank :
      (⟨14, hlt⟩ : Fin numPairWords) = rank_000000014_nonidentity_rank := by
    ext
    rfl
  simpa [hrank, rank_000000014_nonidentity_unrank] using rank_000000014_nonidentity_linear_ne

private def rank_000000015_nonidentity_rank : Fin numPairWords := ⟨15, by decide⟩
private def rank_000000015_nonidentity_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d11m], by decide⟩

@[simp] theorem rank_000000015_nonidentity_word_get00_num :
    rank_000000015_nonidentity_word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem rank_000000015_nonidentity_word_get00_mk (h : 0 < 13) :
    rank_000000015_nonidentity_word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000015_nonidentity_word_get01_num :
    rank_000000015_nonidentity_word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000015_nonidentity_word_get01_mk (h : 1 < 13) :
    rank_000000015_nonidentity_word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000015_nonidentity_word_get02_num :
    rank_000000015_nonidentity_word.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000015_nonidentity_word_get02_mk (h : 2 < 13) :
    rank_000000015_nonidentity_word.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000015_nonidentity_word_get03_num :
    rank_000000015_nonidentity_word.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000015_nonidentity_word_get03_mk (h : 3 < 13) :
    rank_000000015_nonidentity_word.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000015_nonidentity_word_get04_num :
    rank_000000015_nonidentity_word.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000015_nonidentity_word_get04_mk (h : 4 < 13) :
    rank_000000015_nonidentity_word.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000015_nonidentity_word_get05_num :
    rank_000000015_nonidentity_word.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000015_nonidentity_word_get05_mk (h : 5 < 13) :
    rank_000000015_nonidentity_word.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000015_nonidentity_word_get06_num :
    rank_000000015_nonidentity_word.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000015_nonidentity_word_get06_mk (h : 6 < 13) :
    rank_000000015_nonidentity_word.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000015_nonidentity_word_get07_num :
    rank_000000015_nonidentity_word.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000015_nonidentity_word_get07_mk (h : 7 < 13) :
    rank_000000015_nonidentity_word.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000015_nonidentity_word_get08_num :
    rank_000000015_nonidentity_word.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000015_nonidentity_word_get08_mk (h : 8 < 13) :
    rank_000000015_nonidentity_word.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000015_nonidentity_word_get09_num :
    rank_000000015_nonidentity_word.get (9 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000015_nonidentity_word_get09_mk (h : 9 < 13) :
    rank_000000015_nonidentity_word.get ⟨9, h⟩ = PairId.dm11 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000015_nonidentity_word_get10_num :
    rank_000000015_nonidentity_word.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000015_nonidentity_word_get10_mk (h : 10 < 13) :
    rank_000000015_nonidentity_word.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000015_nonidentity_word_get11_num :
    rank_000000015_nonidentity_word.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000015_nonidentity_word_get11_mk (h : 11 < 13) :
    rank_000000015_nonidentity_word.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000015_nonidentity_word_get12_num :
    rank_000000015_nonidentity_word.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000015_nonidentity_word_get12_mk (h : 12 < 13) :
    rank_000000015_nonidentity_word.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem rank_000000015_nonidentity_rankWord :
    rankPairWord? rank_000000015_nonidentity_word = some rank_000000015_nonidentity_rank := by
  decide

private theorem rank_000000015_nonidentity_unrank :
    unrankPairWord rank_000000015_nonidentity_rank = rank_000000015_nonidentity_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000015_nonidentity_word rank_000000015_nonidentity_rank).1
    rank_000000015_nonidentity_rankWord |>.symm

set_option maxHeartbeats 1200000 in
private theorem rank_000000015_nonidentity_totalLinear :
    totalLinearOfPairWord rank_000000015_nonidentity_word =
      { m00 := (185/729), m01 := (-704/729), m02 := (-40/729), m10 := (640/729), m11 := (185/729), m12 := (-296/729), m20 := (296/729), m21 := (40/729), m22 := (665/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

private theorem rank_000000015_nonidentity_linear_ne :
    totalLinearOfPairWord rank_000000015_nonidentity_word ≠ (matId : Mat3 Rat) := by
  rw [rank_000000015_nonidentity_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

private theorem rank_000000015_nonidentity_linear_ne_atRank
    (hlt : 15 < numPairWords) :
    totalLinearOfPairWord
      (unrankPairWord (⟨15, hlt⟩ : Fin numPairWords)) ≠
        (matId : Mat3 Rat) := by
  have hrank :
      (⟨15, hlt⟩ : Fin numPairWords) = rank_000000015_nonidentity_rank := by
    ext
    rfl
  simpa [hrank, rank_000000015_nonidentity_unrank] using rank_000000015_nonidentity_linear_ne

private theorem rank_000000012_coverage
    (hlt : 12 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨12, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨12, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 12 mask := by
  exact False.elim ((rank_000000012_nonidentity_linear_ne_atRank hlt) hM)

private theorem rank_000000013_coverage
    (hlt : 13 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨13, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨13, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 13 mask := by
  exact False.elim ((rank_000000013_nonidentity_linear_ne_atRank hlt) hM)

private theorem rank_000000014_coverage
    (hlt : 14 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨14, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨14, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 14 mask := by
  exact False.elim ((rank_000000014_nonidentity_linear_ne_atRank hlt) hM)

private theorem rank_000000015_coverage
    (hlt : 15 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨15, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨15, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 15 mask := by
  exact False.elim ((rank_000000015_nonidentity_linear_ne_atRank hlt) hM)

set_option maxHeartbeats 4000000 in
theorem shardCoverage :
    RowPropertyMembershipCoverageOnIdentityRange boundedFamily 12 16 := by
  intro r hlt mask hlo hhi hM hgood
  interval_cases r
  · exact rank_000000012_coverage hlt mask hM hgood
  · exact rank_000000013_coverage hlt mask hM hgood
  · exact rank_000000014_coverage hlt mask hM hgood
  · exact rank_000000015_coverage hlt mask hM hgood

theorem shardGoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (hlo : 12 <= r) (hhi : r < 16)
    (hM : totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) =
      (matId : Mat3 Rat)) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  boundedFamily.identityRangeKills shardCoverage r hlt mask hlo hhi hM

theorem shard_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard003
