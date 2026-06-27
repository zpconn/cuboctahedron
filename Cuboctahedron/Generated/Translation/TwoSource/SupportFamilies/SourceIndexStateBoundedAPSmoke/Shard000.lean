import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Generated bounded source-index/state coverage shard for Phase 6Z.6K.8I.

The descriptor `Applies` predicates are source-index/state predicates.
This shard is a bounded gate, not final global coverage.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard000

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

private def rank_000000001_nonidentity_rank : Fin numPairWords := ⟨1, by decide⟩
private def rank_000000001_nonidentity_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.dm11], by decide⟩

@[simp] theorem rank_000000001_nonidentity_word_get00_num :
    rank_000000001_nonidentity_word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem rank_000000001_nonidentity_word_get00_mk (h : 0 < 13) :
    rank_000000001_nonidentity_word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000001_nonidentity_word_get01_num :
    rank_000000001_nonidentity_word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000001_nonidentity_word_get01_mk (h : 1 < 13) :
    rank_000000001_nonidentity_word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000001_nonidentity_word_get02_num :
    rank_000000001_nonidentity_word.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem rank_000000001_nonidentity_word_get02_mk (h : 2 < 13) :
    rank_000000001_nonidentity_word.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000001_nonidentity_word_get03_num :
    rank_000000001_nonidentity_word.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000001_nonidentity_word_get03_mk (h : 3 < 13) :
    rank_000000001_nonidentity_word.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000001_nonidentity_word_get04_num :
    rank_000000001_nonidentity_word.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem rank_000000001_nonidentity_word_get04_mk (h : 4 < 13) :
    rank_000000001_nonidentity_word.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000001_nonidentity_word_get05_num :
    rank_000000001_nonidentity_word.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000001_nonidentity_word_get05_mk (h : 5 < 13) :
    rank_000000001_nonidentity_word.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000001_nonidentity_word_get06_num :
    rank_000000001_nonidentity_word.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem rank_000000001_nonidentity_word_get06_mk (h : 6 < 13) :
    rank_000000001_nonidentity_word.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000001_nonidentity_word_get07_num :
    rank_000000001_nonidentity_word.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000001_nonidentity_word_get07_mk (h : 7 < 13) :
    rank_000000001_nonidentity_word.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000001_nonidentity_word_get08_num :
    rank_000000001_nonidentity_word.get (8 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem rank_000000001_nonidentity_word_get08_mk (h : 8 < 13) :
    rank_000000001_nonidentity_word.get ⟨8, h⟩ = PairId.d11m := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000001_nonidentity_word_get09_num :
    rank_000000001_nonidentity_word.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000001_nonidentity_word_get09_mk (h : 9 < 13) :
    rank_000000001_nonidentity_word.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000001_nonidentity_word_get10_num :
    rank_000000001_nonidentity_word.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000001_nonidentity_word_get10_mk (h : 10 < 13) :
    rank_000000001_nonidentity_word.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000001_nonidentity_word_get11_num :
    rank_000000001_nonidentity_word.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem rank_000000001_nonidentity_word_get11_mk (h : 11 < 13) :
    rank_000000001_nonidentity_word.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem rank_000000001_nonidentity_word_get12_num :
    rank_000000001_nonidentity_word.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem rank_000000001_nonidentity_word_get12_mk (h : 12 < 13) :
    rank_000000001_nonidentity_word.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem rank_000000001_nonidentity_rankWord :
    rankPairWord? rank_000000001_nonidentity_word = some rank_000000001_nonidentity_rank := by
  decide

private theorem rank_000000001_nonidentity_unrank :
    unrankPairWord rank_000000001_nonidentity_rank = rank_000000001_nonidentity_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000001_nonidentity_word rank_000000001_nonidentity_rank).1
    rank_000000001_nonidentity_rankWord |>.symm

set_option maxHeartbeats 1200000 in
private theorem rank_000000001_nonidentity_totalLinear :
    totalLinearOfPairWord rank_000000001_nonidentity_word =
      { m00 := (49/81), m01 := (-32/81), m02 := (-56/81), m10 := (-32/81), m11 := (49/81), m12 := (-56/81), m20 := (56/81), m21 := (56/81), m22 := (17/81) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

private theorem rank_000000001_nonidentity_linear_ne :
    totalLinearOfPairWord rank_000000001_nonidentity_word ≠ (matId : Mat3 Rat) := by
  rw [rank_000000001_nonidentity_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

private theorem rank_000000001_nonidentity_linear_ne_atRank
    (hlt : 1 < numPairWords) :
    totalLinearOfPairWord
      (unrankPairWord (⟨1, hlt⟩ : Fin numPairWords)) ≠
        (matId : Mat3 Rat) := by
  have hrank :
      (⟨1, hlt⟩ : Fin numPairWords) = rank_000000001_nonidentity_rank := by
    ext
    rfl
  simpa [hrank, rank_000000001_nonidentity_unrank] using rank_000000001_nonidentity_linear_ne

private def rank_000000000_mask_00_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_00_badDirection_mask : SignMask := ⟨0, by decide⟩
private def rank_000000000_mask_00_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_00_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_00_badDirection_b : Vec3 Rat := { x := (4/3), y := (-28/3), z := (-28/3) }
private def rank_000000000_mask_00_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_00_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_00_badDirection_word = some rank_000000000_mask_00_badDirection_rank := by
  decide

private theorem rank_000000000_mask_00_badDirection_unrank :
    unrankPairWord rank_000000000_mask_00_badDirection_rank = rank_000000000_mask_00_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_00_badDirection_word rank_000000000_mask_00_badDirection_rank).1
    rank_000000000_mask_00_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_00_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_00_badDirection_word rank_000000000_mask_00_badDirection_mask = rank_000000000_mask_00_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_00_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_00_badDirection_rank rank_000000000_mask_00_badDirection_mask = rank_000000000_mask_00_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_00_badDirection_unrank]
  exact rank_000000000_mask_00_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_00_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_00_badDirection_rank rank_000000000_mask_00_badDirection_mask = rank_000000000_mask_00_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_00_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_00_badDirection_b, rank_000000000_mask_00_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_00_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_00_badDirection_rank rank_000000000_mask_00_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_00_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_00_badDirection_seqAtRank, rank_000000000_mask_00_badDirection_bAtRank]
  norm_num [rank_000000000_mask_00_badDirection_denom, rank_000000000_mask_00_badDirection_seq, rank_000000000_mask_00_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_00_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_00_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_00_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_00_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_00_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_00_badDirection_denom]

private def rank_000000000_mask_01_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_01_badDirection_mask : SignMask := ⟨1, by decide⟩
private def rank_000000000_mask_01_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_01_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_01_badDirection_b : Vec3 Rat := { x := (4/3), y := (-4/3), z := (-28/3) }
private def rank_000000000_mask_01_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_01_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_01_badDirection_word = some rank_000000000_mask_01_badDirection_rank := by
  decide

private theorem rank_000000000_mask_01_badDirection_unrank :
    unrankPairWord rank_000000000_mask_01_badDirection_rank = rank_000000000_mask_01_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_01_badDirection_word rank_000000000_mask_01_badDirection_rank).1
    rank_000000000_mask_01_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_01_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_01_badDirection_word rank_000000000_mask_01_badDirection_mask = rank_000000000_mask_01_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_01_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_01_badDirection_rank rank_000000000_mask_01_badDirection_mask = rank_000000000_mask_01_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_01_badDirection_unrank]
  exact rank_000000000_mask_01_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_01_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_01_badDirection_rank rank_000000000_mask_01_badDirection_mask = rank_000000000_mask_01_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_01_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_01_badDirection_b, rank_000000000_mask_01_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_01_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_01_badDirection_rank rank_000000000_mask_01_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_01_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_01_badDirection_seqAtRank, rank_000000000_mask_01_badDirection_bAtRank]
  norm_num [rank_000000000_mask_01_badDirection_denom, rank_000000000_mask_01_badDirection_seq, rank_000000000_mask_01_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_01_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_01_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_01_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_01_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_01_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_01_badDirection_denom]

private def rank_000000000_mask_02_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_02_badDirection_mask : SignMask := ⟨2, by decide⟩
private def rank_000000000_mask_02_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_02_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_02_badDirection_b : Vec3 Rat := { x := (4/3), y := (-28/3), z := (-4/3) }
private def rank_000000000_mask_02_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_02_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_02_badDirection_word = some rank_000000000_mask_02_badDirection_rank := by
  decide

private theorem rank_000000000_mask_02_badDirection_unrank :
    unrankPairWord rank_000000000_mask_02_badDirection_rank = rank_000000000_mask_02_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_02_badDirection_word rank_000000000_mask_02_badDirection_rank).1
    rank_000000000_mask_02_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_02_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_02_badDirection_word rank_000000000_mask_02_badDirection_mask = rank_000000000_mask_02_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_02_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_02_badDirection_rank rank_000000000_mask_02_badDirection_mask = rank_000000000_mask_02_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_02_badDirection_unrank]
  exact rank_000000000_mask_02_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_02_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_02_badDirection_rank rank_000000000_mask_02_badDirection_mask = rank_000000000_mask_02_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_02_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_02_badDirection_b, rank_000000000_mask_02_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_02_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_02_badDirection_rank rank_000000000_mask_02_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_02_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_02_badDirection_seqAtRank, rank_000000000_mask_02_badDirection_bAtRank]
  norm_num [rank_000000000_mask_02_badDirection_denom, rank_000000000_mask_02_badDirection_seq, rank_000000000_mask_02_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_02_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_02_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_02_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_02_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_02_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_02_badDirection_denom]

private def rank_000000000_mask_03_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_03_badDirection_mask : SignMask := ⟨3, by decide⟩
private def rank_000000000_mask_03_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_03_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_03_badDirection_b : Vec3 Rat := { x := (4/3), y := (-4/3), z := (-4/3) }
private def rank_000000000_mask_03_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_03_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_03_badDirection_word = some rank_000000000_mask_03_badDirection_rank := by
  decide

private theorem rank_000000000_mask_03_badDirection_unrank :
    unrankPairWord rank_000000000_mask_03_badDirection_rank = rank_000000000_mask_03_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_03_badDirection_word rank_000000000_mask_03_badDirection_rank).1
    rank_000000000_mask_03_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_03_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_03_badDirection_word rank_000000000_mask_03_badDirection_mask = rank_000000000_mask_03_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_03_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_03_badDirection_rank rank_000000000_mask_03_badDirection_mask = rank_000000000_mask_03_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_03_badDirection_unrank]
  exact rank_000000000_mask_03_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_03_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_03_badDirection_rank rank_000000000_mask_03_badDirection_mask = rank_000000000_mask_03_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_03_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_03_badDirection_b, rank_000000000_mask_03_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_03_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_03_badDirection_rank rank_000000000_mask_03_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_03_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_03_badDirection_seqAtRank, rank_000000000_mask_03_badDirection_bAtRank]
  norm_num [rank_000000000_mask_03_badDirection_denom, rank_000000000_mask_03_badDirection_seq, rank_000000000_mask_03_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_03_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_03_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_03_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_03_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_03_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_03_badDirection_denom]

private def rank_000000000_mask_04_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_04_badDirection_mask : SignMask := ⟨4, by decide⟩
private def rank_000000000_mask_04_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_04_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_04_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := -4 }
private def rank_000000000_mask_04_badDirection_denom : Rat := -4

private theorem rank_000000000_mask_04_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_04_badDirection_word = some rank_000000000_mask_04_badDirection_rank := by
  decide

private theorem rank_000000000_mask_04_badDirection_unrank :
    unrankPairWord rank_000000000_mask_04_badDirection_rank = rank_000000000_mask_04_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_04_badDirection_word rank_000000000_mask_04_badDirection_rank).1
    rank_000000000_mask_04_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_04_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_04_badDirection_word rank_000000000_mask_04_badDirection_mask = rank_000000000_mask_04_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_04_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_04_badDirection_rank rank_000000000_mask_04_badDirection_mask = rank_000000000_mask_04_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_04_badDirection_unrank]
  exact rank_000000000_mask_04_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_04_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_04_badDirection_rank rank_000000000_mask_04_badDirection_mask = rank_000000000_mask_04_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_04_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_04_badDirection_b, rank_000000000_mask_04_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_04_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_04_badDirection_rank rank_000000000_mask_04_badDirection_mask ⟨6, by decide⟩ =
      rank_000000000_mask_04_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_04_badDirection_seqAtRank, rank_000000000_mask_04_badDirection_bAtRank]
  norm_num [rank_000000000_mask_04_badDirection_denom, rank_000000000_mask_04_badDirection_seq, rank_000000000_mask_04_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_04_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_04_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_04_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_04_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_04_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_04_badDirection_denom]

private def rank_000000000_mask_05_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_05_badDirection_mask : SignMask := ⟨5, by decide⟩
private def rank_000000000_mask_05_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_05_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_05_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := -4 }
private def rank_000000000_mask_05_badDirection_denom : Rat := -12

private theorem rank_000000000_mask_05_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_05_badDirection_word = some rank_000000000_mask_05_badDirection_rank := by
  decide

private theorem rank_000000000_mask_05_badDirection_unrank :
    unrankPairWord rank_000000000_mask_05_badDirection_rank = rank_000000000_mask_05_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_05_badDirection_word rank_000000000_mask_05_badDirection_rank).1
    rank_000000000_mask_05_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_05_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_05_badDirection_word rank_000000000_mask_05_badDirection_mask = rank_000000000_mask_05_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_05_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_05_badDirection_rank rank_000000000_mask_05_badDirection_mask = rank_000000000_mask_05_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_05_badDirection_unrank]
  exact rank_000000000_mask_05_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_05_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_05_badDirection_rank rank_000000000_mask_05_badDirection_mask = rank_000000000_mask_05_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_05_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_05_badDirection_b, rank_000000000_mask_05_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_05_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_05_badDirection_rank rank_000000000_mask_05_badDirection_mask ⟨8, by decide⟩ =
      rank_000000000_mask_05_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_05_badDirection_seqAtRank, rank_000000000_mask_05_badDirection_bAtRank]
  norm_num [rank_000000000_mask_05_badDirection_denom, rank_000000000_mask_05_badDirection_seq, rank_000000000_mask_05_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_05_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_05_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_05_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_05_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_05_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_05_badDirection_denom]

private def rank_000000000_mask_06_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_06_badDirection_mask : SignMask := ⟨6, by decide⟩
private def rank_000000000_mask_06_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_06_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_06_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := 4 }
private def rank_000000000_mask_06_badDirection_denom : Rat := -12

private theorem rank_000000000_mask_06_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_06_badDirection_word = some rank_000000000_mask_06_badDirection_rank := by
  decide

private theorem rank_000000000_mask_06_badDirection_unrank :
    unrankPairWord rank_000000000_mask_06_badDirection_rank = rank_000000000_mask_06_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_06_badDirection_word rank_000000000_mask_06_badDirection_rank).1
    rank_000000000_mask_06_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_06_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_06_badDirection_word rank_000000000_mask_06_badDirection_mask = rank_000000000_mask_06_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_06_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_06_badDirection_rank rank_000000000_mask_06_badDirection_mask = rank_000000000_mask_06_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_06_badDirection_unrank]
  exact rank_000000000_mask_06_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_06_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_06_badDirection_rank rank_000000000_mask_06_badDirection_mask = rank_000000000_mask_06_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_06_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_06_badDirection_b, rank_000000000_mask_06_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_06_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_06_badDirection_rank rank_000000000_mask_06_badDirection_mask ⟨10, by decide⟩ =
      rank_000000000_mask_06_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_06_badDirection_seqAtRank, rank_000000000_mask_06_badDirection_bAtRank]
  norm_num [rank_000000000_mask_06_badDirection_denom, rank_000000000_mask_06_badDirection_seq, rank_000000000_mask_06_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_06_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_06_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_06_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_06_badDirection_mask)
      (i := ⟨10, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_06_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_06_badDirection_denom]

private def rank_000000000_mask_07_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_07_badDirection_mask : SignMask := ⟨7, by decide⟩
private def rank_000000000_mask_07_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_07_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_07_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := 4 }
private def rank_000000000_mask_07_badDirection_denom : Rat := -4

private theorem rank_000000000_mask_07_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_07_badDirection_word = some rank_000000000_mask_07_badDirection_rank := by
  decide

private theorem rank_000000000_mask_07_badDirection_unrank :
    unrankPairWord rank_000000000_mask_07_badDirection_rank = rank_000000000_mask_07_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_07_badDirection_word rank_000000000_mask_07_badDirection_rank).1
    rank_000000000_mask_07_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_07_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_07_badDirection_word rank_000000000_mask_07_badDirection_mask = rank_000000000_mask_07_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_07_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_07_badDirection_rank rank_000000000_mask_07_badDirection_mask = rank_000000000_mask_07_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_07_badDirection_unrank]
  exact rank_000000000_mask_07_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_07_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_07_badDirection_rank rank_000000000_mask_07_badDirection_mask = rank_000000000_mask_07_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_07_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_07_badDirection_b, rank_000000000_mask_07_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_07_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_07_badDirection_rank rank_000000000_mask_07_badDirection_mask ⟨8, by decide⟩ =
      rank_000000000_mask_07_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_07_badDirection_seqAtRank, rank_000000000_mask_07_badDirection_bAtRank]
  norm_num [rank_000000000_mask_07_badDirection_denom, rank_000000000_mask_07_badDirection_seq, rank_000000000_mask_07_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_07_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_07_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_07_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_07_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_07_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_07_badDirection_denom]

private def rank_000000000_mask_10_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_10_badDirection_mask : SignMask := ⟨10, by decide⟩
private def rank_000000000_mask_10_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_10_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_10_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := (-20/3) }
private def rank_000000000_mask_10_badDirection_denom : Rat := (-20/3)

private theorem rank_000000000_mask_10_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_10_badDirection_word = some rank_000000000_mask_10_badDirection_rank := by
  decide

private theorem rank_000000000_mask_10_badDirection_unrank :
    unrankPairWord rank_000000000_mask_10_badDirection_rank = rank_000000000_mask_10_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_10_badDirection_word rank_000000000_mask_10_badDirection_rank).1
    rank_000000000_mask_10_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_10_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_10_badDirection_word rank_000000000_mask_10_badDirection_mask = rank_000000000_mask_10_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_10_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_10_badDirection_rank rank_000000000_mask_10_badDirection_mask = rank_000000000_mask_10_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_10_badDirection_unrank]
  exact rank_000000000_mask_10_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_10_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_10_badDirection_rank rank_000000000_mask_10_badDirection_mask = rank_000000000_mask_10_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_10_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_10_badDirection_b, rank_000000000_mask_10_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_10_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_10_badDirection_rank rank_000000000_mask_10_badDirection_mask ⟨4, by decide⟩ =
      rank_000000000_mask_10_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_10_badDirection_seqAtRank, rank_000000000_mask_10_badDirection_bAtRank]
  norm_num [rank_000000000_mask_10_badDirection_denom, rank_000000000_mask_10_badDirection_seq, rank_000000000_mask_10_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_10_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_10_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_10_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_10_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_10_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_10_badDirection_denom]

private def rank_000000000_mask_11_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_11_badDirection_mask : SignMask := ⟨11, by decide⟩
private def rank_000000000_mask_11_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_11_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_11_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := (-20/3) }
private def rank_000000000_mask_11_badDirection_denom : Rat := (-20/3)

private theorem rank_000000000_mask_11_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_11_badDirection_word = some rank_000000000_mask_11_badDirection_rank := by
  decide

private theorem rank_000000000_mask_11_badDirection_unrank :
    unrankPairWord rank_000000000_mask_11_badDirection_rank = rank_000000000_mask_11_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_11_badDirection_word rank_000000000_mask_11_badDirection_rank).1
    rank_000000000_mask_11_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_11_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_11_badDirection_word rank_000000000_mask_11_badDirection_mask = rank_000000000_mask_11_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_11_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_11_badDirection_rank rank_000000000_mask_11_badDirection_mask = rank_000000000_mask_11_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_11_badDirection_unrank]
  exact rank_000000000_mask_11_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_11_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_11_badDirection_rank rank_000000000_mask_11_badDirection_mask = rank_000000000_mask_11_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_11_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_11_badDirection_b, rank_000000000_mask_11_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_11_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_11_badDirection_rank rank_000000000_mask_11_badDirection_mask ⟨4, by decide⟩ =
      rank_000000000_mask_11_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_11_badDirection_seqAtRank, rank_000000000_mask_11_badDirection_bAtRank]
  norm_num [rank_000000000_mask_11_badDirection_denom, rank_000000000_mask_11_badDirection_seq, rank_000000000_mask_11_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_11_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_11_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_11_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_11_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_11_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_11_badDirection_denom]

private def rank_000000000_mask_12_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_12_badDirection_mask : SignMask := ⟨12, by decide⟩
private def rank_000000000_mask_12_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_12_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_12_badDirection_b : Vec3 Rat := { x := (-28/3), y := (4/3), z := (-28/3) }
private def rank_000000000_mask_12_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_12_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_12_badDirection_word = some rank_000000000_mask_12_badDirection_rank := by
  decide

private theorem rank_000000000_mask_12_badDirection_unrank :
    unrankPairWord rank_000000000_mask_12_badDirection_rank = rank_000000000_mask_12_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_12_badDirection_word rank_000000000_mask_12_badDirection_rank).1
    rank_000000000_mask_12_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_12_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_12_badDirection_word rank_000000000_mask_12_badDirection_mask = rank_000000000_mask_12_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_12_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_12_badDirection_rank rank_000000000_mask_12_badDirection_mask = rank_000000000_mask_12_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_12_badDirection_unrank]
  exact rank_000000000_mask_12_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_12_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_12_badDirection_rank rank_000000000_mask_12_badDirection_mask = rank_000000000_mask_12_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_12_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_12_badDirection_b, rank_000000000_mask_12_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_12_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_12_badDirection_rank rank_000000000_mask_12_badDirection_mask ⟨2, by decide⟩ =
      rank_000000000_mask_12_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_12_badDirection_seqAtRank, rank_000000000_mask_12_badDirection_bAtRank]
  norm_num [rank_000000000_mask_12_badDirection_denom, rank_000000000_mask_12_badDirection_seq, rank_000000000_mask_12_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_12_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_12_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_12_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_12_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_12_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_12_badDirection_denom]

private def rank_000000000_mask_14_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_14_badDirection_mask : SignMask := ⟨14, by decide⟩
private def rank_000000000_mask_14_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_14_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_14_badDirection_b : Vec3 Rat := { x := (-28/3), y := (4/3), z := (-4/3) }
private def rank_000000000_mask_14_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_14_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_14_badDirection_word = some rank_000000000_mask_14_badDirection_rank := by
  decide

private theorem rank_000000000_mask_14_badDirection_unrank :
    unrankPairWord rank_000000000_mask_14_badDirection_rank = rank_000000000_mask_14_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_14_badDirection_word rank_000000000_mask_14_badDirection_rank).1
    rank_000000000_mask_14_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_14_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_14_badDirection_word rank_000000000_mask_14_badDirection_mask = rank_000000000_mask_14_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_14_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_14_badDirection_rank rank_000000000_mask_14_badDirection_mask = rank_000000000_mask_14_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_14_badDirection_unrank]
  exact rank_000000000_mask_14_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_14_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_14_badDirection_rank rank_000000000_mask_14_badDirection_mask = rank_000000000_mask_14_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_14_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_14_badDirection_b, rank_000000000_mask_14_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_14_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_14_badDirection_rank rank_000000000_mask_14_badDirection_mask ⟨2, by decide⟩ =
      rank_000000000_mask_14_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_14_badDirection_seqAtRank, rank_000000000_mask_14_badDirection_bAtRank]
  norm_num [rank_000000000_mask_14_badDirection_denom, rank_000000000_mask_14_badDirection_seq, rank_000000000_mask_14_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_14_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_14_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_14_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_14_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_14_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_14_badDirection_denom]

private def rank_000000000_mask_15_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_15_badDirection_mask : SignMask := ⟨15, by decide⟩
private def rank_000000000_mask_15_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_15_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_15_badDirection_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-4/3) }
private def rank_000000000_mask_15_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_15_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_15_badDirection_word = some rank_000000000_mask_15_badDirection_rank := by
  decide

private theorem rank_000000000_mask_15_badDirection_unrank :
    unrankPairWord rank_000000000_mask_15_badDirection_rank = rank_000000000_mask_15_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_15_badDirection_word rank_000000000_mask_15_badDirection_rank).1
    rank_000000000_mask_15_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_15_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_15_badDirection_word rank_000000000_mask_15_badDirection_mask = rank_000000000_mask_15_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_15_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_15_badDirection_rank rank_000000000_mask_15_badDirection_mask = rank_000000000_mask_15_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_15_badDirection_unrank]
  exact rank_000000000_mask_15_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_15_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_15_badDirection_rank rank_000000000_mask_15_badDirection_mask = rank_000000000_mask_15_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_15_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_15_badDirection_b, rank_000000000_mask_15_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_15_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_15_badDirection_rank rank_000000000_mask_15_badDirection_mask ⟨4, by decide⟩ =
      rank_000000000_mask_15_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_15_badDirection_seqAtRank, rank_000000000_mask_15_badDirection_bAtRank]
  norm_num [rank_000000000_mask_15_badDirection_denom, rank_000000000_mask_15_badDirection_seq, rank_000000000_mask_15_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_15_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_15_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_15_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_15_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_15_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_15_badDirection_denom]

private def rank_000000000_mask_17_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_17_badDirection_mask : SignMask := ⟨17, by decide⟩
private def rank_000000000_mask_17_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_17_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_17_badDirection_b : Vec3 Rat := { x := -4, y := (-20/3), z := -4 }
private def rank_000000000_mask_17_badDirection_denom : Rat := (-20/3)

private theorem rank_000000000_mask_17_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_17_badDirection_word = some rank_000000000_mask_17_badDirection_rank := by
  decide

private theorem rank_000000000_mask_17_badDirection_unrank :
    unrankPairWord rank_000000000_mask_17_badDirection_rank = rank_000000000_mask_17_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_17_badDirection_word rank_000000000_mask_17_badDirection_rank).1
    rank_000000000_mask_17_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_17_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_17_badDirection_word rank_000000000_mask_17_badDirection_mask = rank_000000000_mask_17_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_17_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_17_badDirection_rank rank_000000000_mask_17_badDirection_mask = rank_000000000_mask_17_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_17_badDirection_unrank]
  exact rank_000000000_mask_17_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_17_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_17_badDirection_rank rank_000000000_mask_17_badDirection_mask = rank_000000000_mask_17_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_17_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_17_badDirection_b, rank_000000000_mask_17_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_17_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_17_badDirection_rank rank_000000000_mask_17_badDirection_mask ⟨2, by decide⟩ =
      rank_000000000_mask_17_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_17_badDirection_seqAtRank, rank_000000000_mask_17_badDirection_bAtRank]
  norm_num [rank_000000000_mask_17_badDirection_denom, rank_000000000_mask_17_badDirection_seq, rank_000000000_mask_17_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_17_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_17_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_17_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_17_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_17_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_17_badDirection_denom]

private def rank_000000000_mask_19_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_19_badDirection_mask : SignMask := ⟨19, by decide⟩
private def rank_000000000_mask_19_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_19_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_19_badDirection_b : Vec3 Rat := { x := -4, y := (-20/3), z := 4 }
private def rank_000000000_mask_19_badDirection_denom : Rat := (-20/3)

private theorem rank_000000000_mask_19_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_19_badDirection_word = some rank_000000000_mask_19_badDirection_rank := by
  decide

private theorem rank_000000000_mask_19_badDirection_unrank :
    unrankPairWord rank_000000000_mask_19_badDirection_rank = rank_000000000_mask_19_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_19_badDirection_word rank_000000000_mask_19_badDirection_rank).1
    rank_000000000_mask_19_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_19_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_19_badDirection_word rank_000000000_mask_19_badDirection_mask = rank_000000000_mask_19_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_19_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_19_badDirection_rank rank_000000000_mask_19_badDirection_mask = rank_000000000_mask_19_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_19_badDirection_unrank]
  exact rank_000000000_mask_19_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_19_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_19_badDirection_rank rank_000000000_mask_19_badDirection_mask = rank_000000000_mask_19_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_19_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_19_badDirection_b, rank_000000000_mask_19_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_19_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_19_badDirection_rank rank_000000000_mask_19_badDirection_mask ⟨2, by decide⟩ =
      rank_000000000_mask_19_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_19_badDirection_seqAtRank, rank_000000000_mask_19_badDirection_bAtRank]
  norm_num [rank_000000000_mask_19_badDirection_denom, rank_000000000_mask_19_badDirection_seq, rank_000000000_mask_19_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_19_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_19_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_19_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_19_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_19_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_19_badDirection_denom]

private def rank_000000000_mask_20_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_20_badDirection_mask : SignMask := ⟨20, by decide⟩
private def rank_000000000_mask_20_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_20_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_20_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (4/3) }
private def rank_000000000_mask_20_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_20_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_20_badDirection_word = some rank_000000000_mask_20_badDirection_rank := by
  decide

private theorem rank_000000000_mask_20_badDirection_unrank :
    unrankPairWord rank_000000000_mask_20_badDirection_rank = rank_000000000_mask_20_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_20_badDirection_word rank_000000000_mask_20_badDirection_rank).1
    rank_000000000_mask_20_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_20_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_20_badDirection_word rank_000000000_mask_20_badDirection_mask = rank_000000000_mask_20_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_20_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_20_badDirection_rank rank_000000000_mask_20_badDirection_mask = rank_000000000_mask_20_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_20_badDirection_unrank]
  exact rank_000000000_mask_20_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_20_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_20_badDirection_rank rank_000000000_mask_20_badDirection_mask = rank_000000000_mask_20_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_20_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_20_badDirection_b, rank_000000000_mask_20_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_20_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_20_badDirection_rank rank_000000000_mask_20_badDirection_mask ⟨4, by decide⟩ =
      rank_000000000_mask_20_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_20_badDirection_seqAtRank, rank_000000000_mask_20_badDirection_bAtRank]
  norm_num [rank_000000000_mask_20_badDirection_denom, rank_000000000_mask_20_badDirection_seq, rank_000000000_mask_20_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_20_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_20_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_20_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_20_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_20_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_20_badDirection_denom]

private def rank_000000000_mask_21_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_21_badDirection_mask : SignMask := ⟨21, by decide⟩
private def rank_000000000_mask_21_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_21_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_21_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (4/3) }
private def rank_000000000_mask_21_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_21_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_21_badDirection_word = some rank_000000000_mask_21_badDirection_rank := by
  decide

private theorem rank_000000000_mask_21_badDirection_unrank :
    unrankPairWord rank_000000000_mask_21_badDirection_rank = rank_000000000_mask_21_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_21_badDirection_word rank_000000000_mask_21_badDirection_rank).1
    rank_000000000_mask_21_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_21_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_21_badDirection_word rank_000000000_mask_21_badDirection_mask = rank_000000000_mask_21_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_21_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_21_badDirection_rank rank_000000000_mask_21_badDirection_mask = rank_000000000_mask_21_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_21_badDirection_unrank]
  exact rank_000000000_mask_21_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_21_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_21_badDirection_rank rank_000000000_mask_21_badDirection_mask = rank_000000000_mask_21_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_21_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_21_badDirection_b, rank_000000000_mask_21_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_21_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_21_badDirection_rank rank_000000000_mask_21_badDirection_mask ⟨2, by decide⟩ =
      rank_000000000_mask_21_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_21_badDirection_seqAtRank, rank_000000000_mask_21_badDirection_bAtRank]
  norm_num [rank_000000000_mask_21_badDirection_denom, rank_000000000_mask_21_badDirection_seq, rank_000000000_mask_21_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_21_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_21_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_21_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_21_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_21_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_21_badDirection_denom]

private def rank_000000000_mask_23_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_23_badDirection_mask : SignMask := ⟨23, by decide⟩
private def rank_000000000_mask_23_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_23_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_23_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (28/3) }
private def rank_000000000_mask_23_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_23_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_23_badDirection_word = some rank_000000000_mask_23_badDirection_rank := by
  decide

private theorem rank_000000000_mask_23_badDirection_unrank :
    unrankPairWord rank_000000000_mask_23_badDirection_rank = rank_000000000_mask_23_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_23_badDirection_word rank_000000000_mask_23_badDirection_rank).1
    rank_000000000_mask_23_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_23_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_23_badDirection_word rank_000000000_mask_23_badDirection_mask = rank_000000000_mask_23_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_23_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_23_badDirection_rank rank_000000000_mask_23_badDirection_mask = rank_000000000_mask_23_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_23_badDirection_unrank]
  exact rank_000000000_mask_23_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_23_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_23_badDirection_rank rank_000000000_mask_23_badDirection_mask = rank_000000000_mask_23_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_23_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_23_badDirection_b, rank_000000000_mask_23_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_23_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_23_badDirection_rank rank_000000000_mask_23_badDirection_mask ⟨2, by decide⟩ =
      rank_000000000_mask_23_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_23_badDirection_seqAtRank, rank_000000000_mask_23_badDirection_bAtRank]
  norm_num [rank_000000000_mask_23_badDirection_denom, rank_000000000_mask_23_badDirection_seq, rank_000000000_mask_23_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_23_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_23_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_23_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_23_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_23_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_23_badDirection_denom]

private def rank_000000000_mask_25_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_25_badDirection_mask : SignMask := ⟨25, by decide⟩
private def rank_000000000_mask_25_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_25_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_25_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (-28/3) }
private def rank_000000000_mask_25_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_25_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_25_badDirection_word = some rank_000000000_mask_25_badDirection_rank := by
  decide

private theorem rank_000000000_mask_25_badDirection_unrank :
    unrankPairWord rank_000000000_mask_25_badDirection_rank = rank_000000000_mask_25_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_25_badDirection_word rank_000000000_mask_25_badDirection_rank).1
    rank_000000000_mask_25_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_25_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_25_badDirection_word rank_000000000_mask_25_badDirection_mask = rank_000000000_mask_25_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_25_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_25_badDirection_rank rank_000000000_mask_25_badDirection_mask = rank_000000000_mask_25_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_25_badDirection_unrank]
  exact rank_000000000_mask_25_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_25_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_25_badDirection_rank rank_000000000_mask_25_badDirection_mask = rank_000000000_mask_25_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_25_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_25_badDirection_b, rank_000000000_mask_25_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_25_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_25_badDirection_rank rank_000000000_mask_25_badDirection_mask ⟨2, by decide⟩ =
      rank_000000000_mask_25_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_25_badDirection_seqAtRank, rank_000000000_mask_25_badDirection_bAtRank]
  norm_num [rank_000000000_mask_25_badDirection_denom, rank_000000000_mask_25_badDirection_seq, rank_000000000_mask_25_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_25_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_25_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_25_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_25_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_25_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_25_badDirection_denom]

private def rank_000000000_mask_26_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_26_badDirection_mask : SignMask := ⟨26, by decide⟩
private def rank_000000000_mask_26_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_26_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_26_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-4/3) }
private def rank_000000000_mask_26_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_26_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_26_badDirection_word = some rank_000000000_mask_26_badDirection_rank := by
  decide

private theorem rank_000000000_mask_26_badDirection_unrank :
    unrankPairWord rank_000000000_mask_26_badDirection_rank = rank_000000000_mask_26_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_26_badDirection_word rank_000000000_mask_26_badDirection_rank).1
    rank_000000000_mask_26_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_26_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_26_badDirection_word rank_000000000_mask_26_badDirection_mask = rank_000000000_mask_26_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_26_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_26_badDirection_rank rank_000000000_mask_26_badDirection_mask = rank_000000000_mask_26_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_26_badDirection_unrank]
  exact rank_000000000_mask_26_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_26_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_26_badDirection_rank rank_000000000_mask_26_badDirection_mask = rank_000000000_mask_26_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_26_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_26_badDirection_b, rank_000000000_mask_26_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_26_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_26_badDirection_rank rank_000000000_mask_26_badDirection_mask ⟨4, by decide⟩ =
      rank_000000000_mask_26_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_26_badDirection_seqAtRank, rank_000000000_mask_26_badDirection_bAtRank]
  norm_num [rank_000000000_mask_26_badDirection_denom, rank_000000000_mask_26_badDirection_seq, rank_000000000_mask_26_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_26_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_26_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_26_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_26_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_26_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_26_badDirection_denom]

private def rank_000000000_mask_27_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_27_badDirection_mask : SignMask := ⟨27, by decide⟩
private def rank_000000000_mask_27_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_27_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000000_mask_27_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (-4/3) }
private def rank_000000000_mask_27_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_27_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_27_badDirection_word = some rank_000000000_mask_27_badDirection_rank := by
  decide

private theorem rank_000000000_mask_27_badDirection_unrank :
    unrankPairWord rank_000000000_mask_27_badDirection_rank = rank_000000000_mask_27_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_27_badDirection_word rank_000000000_mask_27_badDirection_rank).1
    rank_000000000_mask_27_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_27_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_27_badDirection_word rank_000000000_mask_27_badDirection_mask = rank_000000000_mask_27_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_27_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_27_badDirection_rank rank_000000000_mask_27_badDirection_mask = rank_000000000_mask_27_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_27_badDirection_unrank]
  exact rank_000000000_mask_27_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_27_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_27_badDirection_rank rank_000000000_mask_27_badDirection_mask = rank_000000000_mask_27_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_27_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_27_badDirection_b, rank_000000000_mask_27_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_27_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_27_badDirection_rank rank_000000000_mask_27_badDirection_mask ⟨2, by decide⟩ =
      rank_000000000_mask_27_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_27_badDirection_seqAtRank, rank_000000000_mask_27_badDirection_bAtRank]
  norm_num [rank_000000000_mask_27_badDirection_denom, rank_000000000_mask_27_badDirection_seq, rank_000000000_mask_27_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_27_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_27_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_27_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_27_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_27_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_27_badDirection_denom]

private def rank_000000000_mask_32_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_32_badDirection_mask : SignMask := ⟨32, by decide⟩
private def rank_000000000_mask_32_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_32_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_32_badDirection_b : Vec3 Rat := { x := (20/3), y := -4, z := -4 }
private def rank_000000000_mask_32_badDirection_denom : Rat := (-20/3)

private theorem rank_000000000_mask_32_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_32_badDirection_word = some rank_000000000_mask_32_badDirection_rank := by
  decide

private theorem rank_000000000_mask_32_badDirection_unrank :
    unrankPairWord rank_000000000_mask_32_badDirection_rank = rank_000000000_mask_32_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_32_badDirection_word rank_000000000_mask_32_badDirection_rank).1
    rank_000000000_mask_32_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_32_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_32_badDirection_word rank_000000000_mask_32_badDirection_mask = rank_000000000_mask_32_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_32_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_32_badDirection_rank rank_000000000_mask_32_badDirection_mask = rank_000000000_mask_32_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_32_badDirection_unrank]
  exact rank_000000000_mask_32_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_32_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_32_badDirection_rank rank_000000000_mask_32_badDirection_mask = rank_000000000_mask_32_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_32_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_32_badDirection_b, rank_000000000_mask_32_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_32_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_32_badDirection_rank rank_000000000_mask_32_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_32_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_32_badDirection_seqAtRank, rank_000000000_mask_32_badDirection_bAtRank]
  norm_num [rank_000000000_mask_32_badDirection_denom, rank_000000000_mask_32_badDirection_seq, rank_000000000_mask_32_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_32_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_32_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_32_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_32_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_32_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_32_badDirection_denom]

private def rank_000000000_mask_33_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_33_badDirection_mask : SignMask := ⟨33, by decide⟩
private def rank_000000000_mask_33_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_33_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_33_badDirection_b : Vec3 Rat := { x := (20/3), y := 4, z := -4 }
private def rank_000000000_mask_33_badDirection_denom : Rat := (-20/3)

private theorem rank_000000000_mask_33_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_33_badDirection_word = some rank_000000000_mask_33_badDirection_rank := by
  decide

private theorem rank_000000000_mask_33_badDirection_unrank :
    unrankPairWord rank_000000000_mask_33_badDirection_rank = rank_000000000_mask_33_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_33_badDirection_word rank_000000000_mask_33_badDirection_rank).1
    rank_000000000_mask_33_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_33_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_33_badDirection_word rank_000000000_mask_33_badDirection_mask = rank_000000000_mask_33_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_33_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_33_badDirection_rank rank_000000000_mask_33_badDirection_mask = rank_000000000_mask_33_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_33_badDirection_unrank]
  exact rank_000000000_mask_33_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_33_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_33_badDirection_rank rank_000000000_mask_33_badDirection_mask = rank_000000000_mask_33_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_33_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_33_badDirection_b, rank_000000000_mask_33_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_33_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_33_badDirection_rank rank_000000000_mask_33_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_33_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_33_badDirection_seqAtRank, rank_000000000_mask_33_badDirection_bAtRank]
  norm_num [rank_000000000_mask_33_badDirection_denom, rank_000000000_mask_33_badDirection_seq, rank_000000000_mask_33_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_33_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_33_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_33_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_33_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_33_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_33_badDirection_denom]

private def rank_000000000_mask_34_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_34_badDirection_mask : SignMask := ⟨34, by decide⟩
private def rank_000000000_mask_34_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_34_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_34_badDirection_b : Vec3 Rat := { x := (20/3), y := -4, z := 4 }
private def rank_000000000_mask_34_badDirection_denom : Rat := (-20/3)

private theorem rank_000000000_mask_34_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_34_badDirection_word = some rank_000000000_mask_34_badDirection_rank := by
  decide

private theorem rank_000000000_mask_34_badDirection_unrank :
    unrankPairWord rank_000000000_mask_34_badDirection_rank = rank_000000000_mask_34_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_34_badDirection_word rank_000000000_mask_34_badDirection_rank).1
    rank_000000000_mask_34_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_34_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_34_badDirection_word rank_000000000_mask_34_badDirection_mask = rank_000000000_mask_34_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_34_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_34_badDirection_rank rank_000000000_mask_34_badDirection_mask = rank_000000000_mask_34_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_34_badDirection_unrank]
  exact rank_000000000_mask_34_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_34_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_34_badDirection_rank rank_000000000_mask_34_badDirection_mask = rank_000000000_mask_34_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_34_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_34_badDirection_b, rank_000000000_mask_34_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_34_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_34_badDirection_rank rank_000000000_mask_34_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_34_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_34_badDirection_seqAtRank, rank_000000000_mask_34_badDirection_bAtRank]
  norm_num [rank_000000000_mask_34_badDirection_denom, rank_000000000_mask_34_badDirection_seq, rank_000000000_mask_34_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_34_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_34_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_34_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_34_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_34_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_34_badDirection_denom]

private def rank_000000000_mask_35_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_35_badDirection_mask : SignMask := ⟨35, by decide⟩
private def rank_000000000_mask_35_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_35_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_35_badDirection_b : Vec3 Rat := { x := (20/3), y := 4, z := 4 }
private def rank_000000000_mask_35_badDirection_denom : Rat := (-20/3)

private theorem rank_000000000_mask_35_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_35_badDirection_word = some rank_000000000_mask_35_badDirection_rank := by
  decide

private theorem rank_000000000_mask_35_badDirection_unrank :
    unrankPairWord rank_000000000_mask_35_badDirection_rank = rank_000000000_mask_35_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_35_badDirection_word rank_000000000_mask_35_badDirection_rank).1
    rank_000000000_mask_35_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_35_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_35_badDirection_word rank_000000000_mask_35_badDirection_mask = rank_000000000_mask_35_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_35_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_35_badDirection_rank rank_000000000_mask_35_badDirection_mask = rank_000000000_mask_35_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_35_badDirection_unrank]
  exact rank_000000000_mask_35_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_35_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_35_badDirection_rank rank_000000000_mask_35_badDirection_mask = rank_000000000_mask_35_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_35_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_35_badDirection_b, rank_000000000_mask_35_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_35_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_35_badDirection_rank rank_000000000_mask_35_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_35_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_35_badDirection_seqAtRank, rank_000000000_mask_35_badDirection_bAtRank]
  norm_num [rank_000000000_mask_35_badDirection_denom, rank_000000000_mask_35_badDirection_seq, rank_000000000_mask_35_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_35_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_35_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_35_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_35_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_35_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_35_badDirection_denom]

private def rank_000000000_mask_36_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_36_badDirection_mask : SignMask := ⟨36, by decide⟩
private def rank_000000000_mask_36_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_36_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_36_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (4/3) }
private def rank_000000000_mask_36_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_36_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_36_badDirection_word = some rank_000000000_mask_36_badDirection_rank := by
  decide

private theorem rank_000000000_mask_36_badDirection_unrank :
    unrankPairWord rank_000000000_mask_36_badDirection_rank = rank_000000000_mask_36_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_36_badDirection_word rank_000000000_mask_36_badDirection_rank).1
    rank_000000000_mask_36_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_36_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_36_badDirection_word rank_000000000_mask_36_badDirection_mask = rank_000000000_mask_36_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_36_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_36_badDirection_rank rank_000000000_mask_36_badDirection_mask = rank_000000000_mask_36_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_36_badDirection_unrank]
  exact rank_000000000_mask_36_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_36_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_36_badDirection_rank rank_000000000_mask_36_badDirection_mask = rank_000000000_mask_36_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_36_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_36_badDirection_b, rank_000000000_mask_36_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_36_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_36_badDirection_rank rank_000000000_mask_36_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_36_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_36_badDirection_seqAtRank, rank_000000000_mask_36_badDirection_bAtRank]
  norm_num [rank_000000000_mask_36_badDirection_denom, rank_000000000_mask_36_badDirection_seq, rank_000000000_mask_36_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_36_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_36_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_36_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_36_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_36_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_36_badDirection_denom]

private def rank_000000000_mask_37_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_37_badDirection_mask : SignMask := ⟨37, by decide⟩
private def rank_000000000_mask_37_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_37_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_37_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (4/3) }
private def rank_000000000_mask_37_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_37_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_37_badDirection_word = some rank_000000000_mask_37_badDirection_rank := by
  decide

private theorem rank_000000000_mask_37_badDirection_unrank :
    unrankPairWord rank_000000000_mask_37_badDirection_rank = rank_000000000_mask_37_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_37_badDirection_word rank_000000000_mask_37_badDirection_rank).1
    rank_000000000_mask_37_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_37_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_37_badDirection_word rank_000000000_mask_37_badDirection_mask = rank_000000000_mask_37_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_37_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_37_badDirection_rank rank_000000000_mask_37_badDirection_mask = rank_000000000_mask_37_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_37_badDirection_unrank]
  exact rank_000000000_mask_37_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_37_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_37_badDirection_rank rank_000000000_mask_37_badDirection_mask = rank_000000000_mask_37_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_37_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_37_badDirection_b, rank_000000000_mask_37_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_37_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_37_badDirection_rank rank_000000000_mask_37_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_37_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_37_badDirection_seqAtRank, rank_000000000_mask_37_badDirection_bAtRank]
  norm_num [rank_000000000_mask_37_badDirection_denom, rank_000000000_mask_37_badDirection_seq, rank_000000000_mask_37_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_37_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_37_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_37_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_37_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_37_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_37_badDirection_denom]

private def rank_000000000_mask_38_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_38_badDirection_mask : SignMask := ⟨38, by decide⟩
private def rank_000000000_mask_38_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_38_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_38_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (28/3) }
private def rank_000000000_mask_38_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_38_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_38_badDirection_word = some rank_000000000_mask_38_badDirection_rank := by
  decide

private theorem rank_000000000_mask_38_badDirection_unrank :
    unrankPairWord rank_000000000_mask_38_badDirection_rank = rank_000000000_mask_38_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_38_badDirection_word rank_000000000_mask_38_badDirection_rank).1
    rank_000000000_mask_38_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_38_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_38_badDirection_word rank_000000000_mask_38_badDirection_mask = rank_000000000_mask_38_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_38_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_38_badDirection_rank rank_000000000_mask_38_badDirection_mask = rank_000000000_mask_38_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_38_badDirection_unrank]
  exact rank_000000000_mask_38_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_38_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_38_badDirection_rank rank_000000000_mask_38_badDirection_mask = rank_000000000_mask_38_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_38_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_38_badDirection_b, rank_000000000_mask_38_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_38_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_38_badDirection_rank rank_000000000_mask_38_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_38_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_38_badDirection_seqAtRank, rank_000000000_mask_38_badDirection_bAtRank]
  norm_num [rank_000000000_mask_38_badDirection_denom, rank_000000000_mask_38_badDirection_seq, rank_000000000_mask_38_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_38_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_38_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_38_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_38_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_38_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_38_badDirection_denom]

private def rank_000000000_mask_39_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_39_badDirection_mask : SignMask := ⟨39, by decide⟩
private def rank_000000000_mask_39_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_39_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_39_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (28/3) }
private def rank_000000000_mask_39_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_39_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_39_badDirection_word = some rank_000000000_mask_39_badDirection_rank := by
  decide

private theorem rank_000000000_mask_39_badDirection_unrank :
    unrankPairWord rank_000000000_mask_39_badDirection_rank = rank_000000000_mask_39_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_39_badDirection_word rank_000000000_mask_39_badDirection_rank).1
    rank_000000000_mask_39_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_39_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_39_badDirection_word rank_000000000_mask_39_badDirection_mask = rank_000000000_mask_39_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_39_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_39_badDirection_rank rank_000000000_mask_39_badDirection_mask = rank_000000000_mask_39_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_39_badDirection_unrank]
  exact rank_000000000_mask_39_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_39_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_39_badDirection_rank rank_000000000_mask_39_badDirection_mask = rank_000000000_mask_39_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_39_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_39_badDirection_b, rank_000000000_mask_39_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_39_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_39_badDirection_rank rank_000000000_mask_39_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_39_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_39_badDirection_seqAtRank, rank_000000000_mask_39_badDirection_bAtRank]
  norm_num [rank_000000000_mask_39_badDirection_denom, rank_000000000_mask_39_badDirection_seq, rank_000000000_mask_39_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_39_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_39_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_39_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_39_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_39_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_39_badDirection_denom]

private def rank_000000000_mask_40_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_40_badDirection_mask : SignMask := ⟨40, by decide⟩
private def rank_000000000_mask_40_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_40_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_40_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (-28/3) }
private def rank_000000000_mask_40_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_40_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_40_badDirection_word = some rank_000000000_mask_40_badDirection_rank := by
  decide

private theorem rank_000000000_mask_40_badDirection_unrank :
    unrankPairWord rank_000000000_mask_40_badDirection_rank = rank_000000000_mask_40_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_40_badDirection_word rank_000000000_mask_40_badDirection_rank).1
    rank_000000000_mask_40_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_40_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_40_badDirection_word rank_000000000_mask_40_badDirection_mask = rank_000000000_mask_40_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_40_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_40_badDirection_rank rank_000000000_mask_40_badDirection_mask = rank_000000000_mask_40_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_40_badDirection_unrank]
  exact rank_000000000_mask_40_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_40_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_40_badDirection_rank rank_000000000_mask_40_badDirection_mask = rank_000000000_mask_40_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_40_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_40_badDirection_b, rank_000000000_mask_40_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_40_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_40_badDirection_rank rank_000000000_mask_40_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_40_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_40_badDirection_seqAtRank, rank_000000000_mask_40_badDirection_bAtRank]
  norm_num [rank_000000000_mask_40_badDirection_denom, rank_000000000_mask_40_badDirection_seq, rank_000000000_mask_40_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_40_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_40_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_40_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_40_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_40_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_40_badDirection_denom]

private def rank_000000000_mask_41_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_41_badDirection_mask : SignMask := ⟨41, by decide⟩
private def rank_000000000_mask_41_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_41_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_41_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (-28/3) }
private def rank_000000000_mask_41_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_41_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_41_badDirection_word = some rank_000000000_mask_41_badDirection_rank := by
  decide

private theorem rank_000000000_mask_41_badDirection_unrank :
    unrankPairWord rank_000000000_mask_41_badDirection_rank = rank_000000000_mask_41_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_41_badDirection_word rank_000000000_mask_41_badDirection_rank).1
    rank_000000000_mask_41_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_41_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_41_badDirection_word rank_000000000_mask_41_badDirection_mask = rank_000000000_mask_41_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_41_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_41_badDirection_rank rank_000000000_mask_41_badDirection_mask = rank_000000000_mask_41_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_41_badDirection_unrank]
  exact rank_000000000_mask_41_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_41_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_41_badDirection_rank rank_000000000_mask_41_badDirection_mask = rank_000000000_mask_41_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_41_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_41_badDirection_b, rank_000000000_mask_41_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_41_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_41_badDirection_rank rank_000000000_mask_41_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_41_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_41_badDirection_seqAtRank, rank_000000000_mask_41_badDirection_bAtRank]
  norm_num [rank_000000000_mask_41_badDirection_denom, rank_000000000_mask_41_badDirection_seq, rank_000000000_mask_41_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_41_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_41_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_41_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_41_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_41_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_41_badDirection_denom]

private def rank_000000000_mask_42_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_42_badDirection_mask : SignMask := ⟨42, by decide⟩
private def rank_000000000_mask_42_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_42_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_42_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (-4/3) }
private def rank_000000000_mask_42_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_42_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_42_badDirection_word = some rank_000000000_mask_42_badDirection_rank := by
  decide

private theorem rank_000000000_mask_42_badDirection_unrank :
    unrankPairWord rank_000000000_mask_42_badDirection_rank = rank_000000000_mask_42_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_42_badDirection_word rank_000000000_mask_42_badDirection_rank).1
    rank_000000000_mask_42_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_42_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_42_badDirection_word rank_000000000_mask_42_badDirection_mask = rank_000000000_mask_42_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_42_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_42_badDirection_rank rank_000000000_mask_42_badDirection_mask = rank_000000000_mask_42_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_42_badDirection_unrank]
  exact rank_000000000_mask_42_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_42_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_42_badDirection_rank rank_000000000_mask_42_badDirection_mask = rank_000000000_mask_42_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_42_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_42_badDirection_b, rank_000000000_mask_42_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_42_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_42_badDirection_rank rank_000000000_mask_42_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_42_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_42_badDirection_seqAtRank, rank_000000000_mask_42_badDirection_bAtRank]
  norm_num [rank_000000000_mask_42_badDirection_denom, rank_000000000_mask_42_badDirection_seq, rank_000000000_mask_42_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_42_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_42_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_42_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_42_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_42_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_42_badDirection_denom]

private def rank_000000000_mask_43_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_43_badDirection_mask : SignMask := ⟨43, by decide⟩
private def rank_000000000_mask_43_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_43_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_43_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (-4/3) }
private def rank_000000000_mask_43_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_43_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_43_badDirection_word = some rank_000000000_mask_43_badDirection_rank := by
  decide

private theorem rank_000000000_mask_43_badDirection_unrank :
    unrankPairWord rank_000000000_mask_43_badDirection_rank = rank_000000000_mask_43_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_43_badDirection_word rank_000000000_mask_43_badDirection_rank).1
    rank_000000000_mask_43_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_43_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_43_badDirection_word rank_000000000_mask_43_badDirection_mask = rank_000000000_mask_43_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_43_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_43_badDirection_rank rank_000000000_mask_43_badDirection_mask = rank_000000000_mask_43_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_43_badDirection_unrank]
  exact rank_000000000_mask_43_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_43_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_43_badDirection_rank rank_000000000_mask_43_badDirection_mask = rank_000000000_mask_43_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_43_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_43_badDirection_b, rank_000000000_mask_43_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_43_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_43_badDirection_rank rank_000000000_mask_43_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_43_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_43_badDirection_seqAtRank, rank_000000000_mask_43_badDirection_bAtRank]
  norm_num [rank_000000000_mask_43_badDirection_denom, rank_000000000_mask_43_badDirection_seq, rank_000000000_mask_43_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_43_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_43_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_43_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_43_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_43_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_43_badDirection_denom]

private def rank_000000000_mask_44_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_44_badDirection_mask : SignMask := ⟨44, by decide⟩
private def rank_000000000_mask_44_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_44_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_44_badDirection_b : Vec3 Rat := { x := -4, y := (20/3), z := -4 }
private def rank_000000000_mask_44_badDirection_denom : Rat := (-20/3)

private theorem rank_000000000_mask_44_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_44_badDirection_word = some rank_000000000_mask_44_badDirection_rank := by
  decide

private theorem rank_000000000_mask_44_badDirection_unrank :
    unrankPairWord rank_000000000_mask_44_badDirection_rank = rank_000000000_mask_44_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_44_badDirection_word rank_000000000_mask_44_badDirection_rank).1
    rank_000000000_mask_44_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_44_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_44_badDirection_word rank_000000000_mask_44_badDirection_mask = rank_000000000_mask_44_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_44_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_44_badDirection_rank rank_000000000_mask_44_badDirection_mask = rank_000000000_mask_44_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_44_badDirection_unrank]
  exact rank_000000000_mask_44_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_44_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_44_badDirection_rank rank_000000000_mask_44_badDirection_mask = rank_000000000_mask_44_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_44_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_44_badDirection_b, rank_000000000_mask_44_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_44_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_44_badDirection_rank rank_000000000_mask_44_badDirection_mask ⟨2, by decide⟩ =
      rank_000000000_mask_44_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_44_badDirection_seqAtRank, rank_000000000_mask_44_badDirection_bAtRank]
  norm_num [rank_000000000_mask_44_badDirection_denom, rank_000000000_mask_44_badDirection_seq, rank_000000000_mask_44_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_44_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_44_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_44_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_44_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_44_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_44_badDirection_denom]

private def rank_000000000_mask_46_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_46_badDirection_mask : SignMask := ⟨46, by decide⟩
private def rank_000000000_mask_46_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_46_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_46_badDirection_b : Vec3 Rat := { x := -4, y := (20/3), z := 4 }
private def rank_000000000_mask_46_badDirection_denom : Rat := (-20/3)

private theorem rank_000000000_mask_46_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_46_badDirection_word = some rank_000000000_mask_46_badDirection_rank := by
  decide

private theorem rank_000000000_mask_46_badDirection_unrank :
    unrankPairWord rank_000000000_mask_46_badDirection_rank = rank_000000000_mask_46_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_46_badDirection_word rank_000000000_mask_46_badDirection_rank).1
    rank_000000000_mask_46_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_46_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_46_badDirection_word rank_000000000_mask_46_badDirection_mask = rank_000000000_mask_46_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_46_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_46_badDirection_rank rank_000000000_mask_46_badDirection_mask = rank_000000000_mask_46_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_46_badDirection_unrank]
  exact rank_000000000_mask_46_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_46_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_46_badDirection_rank rank_000000000_mask_46_badDirection_mask = rank_000000000_mask_46_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_46_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_46_badDirection_b, rank_000000000_mask_46_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_46_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_46_badDirection_rank rank_000000000_mask_46_badDirection_mask ⟨2, by decide⟩ =
      rank_000000000_mask_46_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_46_badDirection_seqAtRank, rank_000000000_mask_46_badDirection_bAtRank]
  norm_num [rank_000000000_mask_46_badDirection_denom, rank_000000000_mask_46_badDirection_seq, rank_000000000_mask_46_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_46_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_46_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_46_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_46_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_46_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_46_badDirection_denom]

private def rank_000000000_mask_48_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_48_badDirection_mask : SignMask := ⟨48, by decide⟩
private def rank_000000000_mask_48_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_48_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_48_badDirection_b : Vec3 Rat := { x := (4/3), y := (-28/3), z := (4/3) }
private def rank_000000000_mask_48_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_48_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_48_badDirection_word = some rank_000000000_mask_48_badDirection_rank := by
  decide

private theorem rank_000000000_mask_48_badDirection_unrank :
    unrankPairWord rank_000000000_mask_48_badDirection_rank = rank_000000000_mask_48_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_48_badDirection_word rank_000000000_mask_48_badDirection_rank).1
    rank_000000000_mask_48_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_48_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_48_badDirection_word rank_000000000_mask_48_badDirection_mask = rank_000000000_mask_48_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_48_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_48_badDirection_rank rank_000000000_mask_48_badDirection_mask = rank_000000000_mask_48_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_48_badDirection_unrank]
  exact rank_000000000_mask_48_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_48_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_48_badDirection_rank rank_000000000_mask_48_badDirection_mask = rank_000000000_mask_48_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_48_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_48_badDirection_b, rank_000000000_mask_48_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_48_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_48_badDirection_rank rank_000000000_mask_48_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_48_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_48_badDirection_seqAtRank, rank_000000000_mask_48_badDirection_bAtRank]
  norm_num [rank_000000000_mask_48_badDirection_denom, rank_000000000_mask_48_badDirection_seq, rank_000000000_mask_48_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_48_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_48_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_48_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_48_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_48_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_48_badDirection_denom]

private def rank_000000000_mask_49_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_49_badDirection_mask : SignMask := ⟨49, by decide⟩
private def rank_000000000_mask_49_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_49_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_49_badDirection_b : Vec3 Rat := { x := (4/3), y := (-4/3), z := (4/3) }
private def rank_000000000_mask_49_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_49_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_49_badDirection_word = some rank_000000000_mask_49_badDirection_rank := by
  decide

private theorem rank_000000000_mask_49_badDirection_unrank :
    unrankPairWord rank_000000000_mask_49_badDirection_rank = rank_000000000_mask_49_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_49_badDirection_word rank_000000000_mask_49_badDirection_rank).1
    rank_000000000_mask_49_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_49_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_49_badDirection_word rank_000000000_mask_49_badDirection_mask = rank_000000000_mask_49_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_49_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_49_badDirection_rank rank_000000000_mask_49_badDirection_mask = rank_000000000_mask_49_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_49_badDirection_unrank]
  exact rank_000000000_mask_49_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_49_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_49_badDirection_rank rank_000000000_mask_49_badDirection_mask = rank_000000000_mask_49_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_49_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_49_badDirection_b, rank_000000000_mask_49_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_49_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_49_badDirection_rank rank_000000000_mask_49_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_49_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_49_badDirection_seqAtRank, rank_000000000_mask_49_badDirection_bAtRank]
  norm_num [rank_000000000_mask_49_badDirection_denom, rank_000000000_mask_49_badDirection_seq, rank_000000000_mask_49_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_49_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_49_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_49_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_49_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_49_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_49_badDirection_denom]

private def rank_000000000_mask_50_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_50_badDirection_mask : SignMask := ⟨50, by decide⟩
private def rank_000000000_mask_50_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_50_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_50_badDirection_b : Vec3 Rat := { x := (4/3), y := (-28/3), z := (28/3) }
private def rank_000000000_mask_50_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_50_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_50_badDirection_word = some rank_000000000_mask_50_badDirection_rank := by
  decide

private theorem rank_000000000_mask_50_badDirection_unrank :
    unrankPairWord rank_000000000_mask_50_badDirection_rank = rank_000000000_mask_50_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_50_badDirection_word rank_000000000_mask_50_badDirection_rank).1
    rank_000000000_mask_50_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_50_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_50_badDirection_word rank_000000000_mask_50_badDirection_mask = rank_000000000_mask_50_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_50_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_50_badDirection_rank rank_000000000_mask_50_badDirection_mask = rank_000000000_mask_50_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_50_badDirection_unrank]
  exact rank_000000000_mask_50_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_50_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_50_badDirection_rank rank_000000000_mask_50_badDirection_mask = rank_000000000_mask_50_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_50_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_50_badDirection_b, rank_000000000_mask_50_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_50_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_50_badDirection_rank rank_000000000_mask_50_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_50_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_50_badDirection_seqAtRank, rank_000000000_mask_50_badDirection_bAtRank]
  norm_num [rank_000000000_mask_50_badDirection_denom, rank_000000000_mask_50_badDirection_seq, rank_000000000_mask_50_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_50_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_50_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_50_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_50_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_50_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_50_badDirection_denom]

private def rank_000000000_mask_51_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_51_badDirection_mask : SignMask := ⟨51, by decide⟩
private def rank_000000000_mask_51_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_51_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_51_badDirection_b : Vec3 Rat := { x := (4/3), y := (-4/3), z := (28/3) }
private def rank_000000000_mask_51_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_51_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_51_badDirection_word = some rank_000000000_mask_51_badDirection_rank := by
  decide

private theorem rank_000000000_mask_51_badDirection_unrank :
    unrankPairWord rank_000000000_mask_51_badDirection_rank = rank_000000000_mask_51_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_51_badDirection_word rank_000000000_mask_51_badDirection_rank).1
    rank_000000000_mask_51_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_51_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_51_badDirection_word rank_000000000_mask_51_badDirection_mask = rank_000000000_mask_51_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_51_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_51_badDirection_rank rank_000000000_mask_51_badDirection_mask = rank_000000000_mask_51_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_51_badDirection_unrank]
  exact rank_000000000_mask_51_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_51_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_51_badDirection_rank rank_000000000_mask_51_badDirection_mask = rank_000000000_mask_51_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_51_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_51_badDirection_b, rank_000000000_mask_51_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_51_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_51_badDirection_rank rank_000000000_mask_51_badDirection_mask ⟨1, by decide⟩ =
      rank_000000000_mask_51_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_51_badDirection_seqAtRank, rank_000000000_mask_51_badDirection_bAtRank]
  norm_num [rank_000000000_mask_51_badDirection_denom, rank_000000000_mask_51_badDirection_seq, rank_000000000_mask_51_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_51_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_51_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_51_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_51_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_51_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_51_badDirection_denom]

private def rank_000000000_mask_52_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_52_badDirection_mask : SignMask := ⟨52, by decide⟩
private def rank_000000000_mask_52_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_52_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_52_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := (20/3) }
private def rank_000000000_mask_52_badDirection_denom : Rat := (-20/3)

private theorem rank_000000000_mask_52_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_52_badDirection_word = some rank_000000000_mask_52_badDirection_rank := by
  decide

private theorem rank_000000000_mask_52_badDirection_unrank :
    unrankPairWord rank_000000000_mask_52_badDirection_rank = rank_000000000_mask_52_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_52_badDirection_word rank_000000000_mask_52_badDirection_rank).1
    rank_000000000_mask_52_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_52_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_52_badDirection_word rank_000000000_mask_52_badDirection_mask = rank_000000000_mask_52_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_52_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_52_badDirection_rank rank_000000000_mask_52_badDirection_mask = rank_000000000_mask_52_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_52_badDirection_unrank]
  exact rank_000000000_mask_52_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_52_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_52_badDirection_rank rank_000000000_mask_52_badDirection_mask = rank_000000000_mask_52_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_52_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_52_badDirection_b, rank_000000000_mask_52_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_52_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_52_badDirection_rank rank_000000000_mask_52_badDirection_mask ⟨4, by decide⟩ =
      rank_000000000_mask_52_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_52_badDirection_seqAtRank, rank_000000000_mask_52_badDirection_bAtRank]
  norm_num [rank_000000000_mask_52_badDirection_denom, rank_000000000_mask_52_badDirection_seq, rank_000000000_mask_52_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_52_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_52_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_52_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_52_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_52_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_52_badDirection_denom]

private def rank_000000000_mask_53_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_53_badDirection_mask : SignMask := ⟨53, by decide⟩
private def rank_000000000_mask_53_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_53_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_53_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := (20/3) }
private def rank_000000000_mask_53_badDirection_denom : Rat := (-20/3)

private theorem rank_000000000_mask_53_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_53_badDirection_word = some rank_000000000_mask_53_badDirection_rank := by
  decide

private theorem rank_000000000_mask_53_badDirection_unrank :
    unrankPairWord rank_000000000_mask_53_badDirection_rank = rank_000000000_mask_53_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_53_badDirection_word rank_000000000_mask_53_badDirection_rank).1
    rank_000000000_mask_53_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_53_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_53_badDirection_word rank_000000000_mask_53_badDirection_mask = rank_000000000_mask_53_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_53_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_53_badDirection_rank rank_000000000_mask_53_badDirection_mask = rank_000000000_mask_53_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_53_badDirection_unrank]
  exact rank_000000000_mask_53_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_53_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_53_badDirection_rank rank_000000000_mask_53_badDirection_mask = rank_000000000_mask_53_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_53_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_53_badDirection_b, rank_000000000_mask_53_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_53_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_53_badDirection_rank rank_000000000_mask_53_badDirection_mask ⟨4, by decide⟩ =
      rank_000000000_mask_53_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_53_badDirection_seqAtRank, rank_000000000_mask_53_badDirection_bAtRank]
  norm_num [rank_000000000_mask_53_badDirection_denom, rank_000000000_mask_53_badDirection_seq, rank_000000000_mask_53_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_53_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_53_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_53_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_53_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_53_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_53_badDirection_denom]

private def rank_000000000_mask_56_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_56_badDirection_mask : SignMask := ⟨56, by decide⟩
private def rank_000000000_mask_56_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_56_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_56_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := -4 }
private def rank_000000000_mask_56_badDirection_denom : Rat := -12

private theorem rank_000000000_mask_56_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_56_badDirection_word = some rank_000000000_mask_56_badDirection_rank := by
  decide

private theorem rank_000000000_mask_56_badDirection_unrank :
    unrankPairWord rank_000000000_mask_56_badDirection_rank = rank_000000000_mask_56_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_56_badDirection_word rank_000000000_mask_56_badDirection_rank).1
    rank_000000000_mask_56_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_56_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_56_badDirection_word rank_000000000_mask_56_badDirection_mask = rank_000000000_mask_56_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_56_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_56_badDirection_rank rank_000000000_mask_56_badDirection_mask = rank_000000000_mask_56_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_56_badDirection_unrank]
  exact rank_000000000_mask_56_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_56_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_56_badDirection_rank rank_000000000_mask_56_badDirection_mask = rank_000000000_mask_56_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_56_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_56_badDirection_b, rank_000000000_mask_56_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_56_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_56_badDirection_rank rank_000000000_mask_56_badDirection_mask ⟨12, by decide⟩ =
      rank_000000000_mask_56_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_56_badDirection_seqAtRank, rank_000000000_mask_56_badDirection_bAtRank]
  norm_num [rank_000000000_mask_56_badDirection_denom, rank_000000000_mask_56_badDirection_seq, rank_000000000_mask_56_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_56_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_56_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_56_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_56_badDirection_mask)
      (i := ⟨12, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_56_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_56_badDirection_denom]

private def rank_000000000_mask_57_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_57_badDirection_mask : SignMask := ⟨57, by decide⟩
private def rank_000000000_mask_57_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_57_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_57_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := -4 }
private def rank_000000000_mask_57_badDirection_denom : Rat := -4

private theorem rank_000000000_mask_57_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_57_badDirection_word = some rank_000000000_mask_57_badDirection_rank := by
  decide

private theorem rank_000000000_mask_57_badDirection_unrank :
    unrankPairWord rank_000000000_mask_57_badDirection_rank = rank_000000000_mask_57_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_57_badDirection_word rank_000000000_mask_57_badDirection_rank).1
    rank_000000000_mask_57_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_57_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_57_badDirection_word rank_000000000_mask_57_badDirection_mask = rank_000000000_mask_57_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_57_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_57_badDirection_rank rank_000000000_mask_57_badDirection_mask = rank_000000000_mask_57_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_57_badDirection_unrank]
  exact rank_000000000_mask_57_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_57_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_57_badDirection_rank rank_000000000_mask_57_badDirection_mask = rank_000000000_mask_57_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_57_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_57_badDirection_b, rank_000000000_mask_57_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_57_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_57_badDirection_rank rank_000000000_mask_57_badDirection_mask ⟨6, by decide⟩ =
      rank_000000000_mask_57_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_57_badDirection_seqAtRank, rank_000000000_mask_57_badDirection_bAtRank]
  norm_num [rank_000000000_mask_57_badDirection_denom, rank_000000000_mask_57_badDirection_seq, rank_000000000_mask_57_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_57_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_57_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_57_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_57_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_57_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_57_badDirection_denom]

private def rank_000000000_mask_58_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_58_badDirection_mask : SignMask := ⟨58, by decide⟩
private def rank_000000000_mask_58_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_58_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_58_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := 4 }
private def rank_000000000_mask_58_badDirection_denom : Rat := -4

private theorem rank_000000000_mask_58_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_58_badDirection_word = some rank_000000000_mask_58_badDirection_rank := by
  decide

private theorem rank_000000000_mask_58_badDirection_unrank :
    unrankPairWord rank_000000000_mask_58_badDirection_rank = rank_000000000_mask_58_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_58_badDirection_word rank_000000000_mask_58_badDirection_rank).1
    rank_000000000_mask_58_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_58_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_58_badDirection_word rank_000000000_mask_58_badDirection_mask = rank_000000000_mask_58_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_58_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_58_badDirection_rank rank_000000000_mask_58_badDirection_mask = rank_000000000_mask_58_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_58_badDirection_unrank]
  exact rank_000000000_mask_58_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_58_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_58_badDirection_rank rank_000000000_mask_58_badDirection_mask = rank_000000000_mask_58_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_58_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_58_badDirection_b, rank_000000000_mask_58_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_58_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_58_badDirection_rank rank_000000000_mask_58_badDirection_mask ⟨6, by decide⟩ =
      rank_000000000_mask_58_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_58_badDirection_seqAtRank, rank_000000000_mask_58_badDirection_bAtRank]
  norm_num [rank_000000000_mask_58_badDirection_denom, rank_000000000_mask_58_badDirection_seq, rank_000000000_mask_58_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_58_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_58_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_58_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_58_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_58_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_58_badDirection_denom]

private def rank_000000000_mask_59_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_59_badDirection_mask : SignMask := ⟨59, by decide⟩
private def rank_000000000_mask_59_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_59_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_59_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := 4 }
private def rank_000000000_mask_59_badDirection_denom : Rat := -12

private theorem rank_000000000_mask_59_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_59_badDirection_word = some rank_000000000_mask_59_badDirection_rank := by
  decide

private theorem rank_000000000_mask_59_badDirection_unrank :
    unrankPairWord rank_000000000_mask_59_badDirection_rank = rank_000000000_mask_59_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_59_badDirection_word rank_000000000_mask_59_badDirection_rank).1
    rank_000000000_mask_59_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_59_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_59_badDirection_word rank_000000000_mask_59_badDirection_mask = rank_000000000_mask_59_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_59_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_59_badDirection_rank rank_000000000_mask_59_badDirection_mask = rank_000000000_mask_59_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_59_badDirection_unrank]
  exact rank_000000000_mask_59_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_59_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_59_badDirection_rank rank_000000000_mask_59_badDirection_mask = rank_000000000_mask_59_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_59_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_59_badDirection_b, rank_000000000_mask_59_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_59_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_59_badDirection_rank rank_000000000_mask_59_badDirection_mask ⟨6, by decide⟩ =
      rank_000000000_mask_59_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_59_badDirection_seqAtRank, rank_000000000_mask_59_badDirection_bAtRank]
  norm_num [rank_000000000_mask_59_badDirection_denom, rank_000000000_mask_59_badDirection_seq, rank_000000000_mask_59_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_59_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_59_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_59_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_59_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_59_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_59_badDirection_denom]

private def rank_000000000_mask_60_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_60_badDirection_mask : SignMask := ⟨60, by decide⟩
private def rank_000000000_mask_60_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_60_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_60_badDirection_b : Vec3 Rat := { x := (-28/3), y := (4/3), z := (4/3) }
private def rank_000000000_mask_60_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_60_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_60_badDirection_word = some rank_000000000_mask_60_badDirection_rank := by
  decide

private theorem rank_000000000_mask_60_badDirection_unrank :
    unrankPairWord rank_000000000_mask_60_badDirection_rank = rank_000000000_mask_60_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_60_badDirection_word rank_000000000_mask_60_badDirection_rank).1
    rank_000000000_mask_60_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_60_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_60_badDirection_word rank_000000000_mask_60_badDirection_mask = rank_000000000_mask_60_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_60_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_60_badDirection_rank rank_000000000_mask_60_badDirection_mask = rank_000000000_mask_60_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_60_badDirection_unrank]
  exact rank_000000000_mask_60_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_60_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_60_badDirection_rank rank_000000000_mask_60_badDirection_mask = rank_000000000_mask_60_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_60_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_60_badDirection_b, rank_000000000_mask_60_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_60_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_60_badDirection_rank rank_000000000_mask_60_badDirection_mask ⟨2, by decide⟩ =
      rank_000000000_mask_60_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_60_badDirection_seqAtRank, rank_000000000_mask_60_badDirection_bAtRank]
  norm_num [rank_000000000_mask_60_badDirection_denom, rank_000000000_mask_60_badDirection_seq, rank_000000000_mask_60_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_60_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_60_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_60_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_60_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_60_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_60_badDirection_denom]

private def rank_000000000_mask_61_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_61_badDirection_mask : SignMask := ⟨61, by decide⟩
private def rank_000000000_mask_61_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_61_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_61_badDirection_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (4/3) }
private def rank_000000000_mask_61_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_61_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_61_badDirection_word = some rank_000000000_mask_61_badDirection_rank := by
  decide

private theorem rank_000000000_mask_61_badDirection_unrank :
    unrankPairWord rank_000000000_mask_61_badDirection_rank = rank_000000000_mask_61_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_61_badDirection_word rank_000000000_mask_61_badDirection_rank).1
    rank_000000000_mask_61_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_61_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_61_badDirection_word rank_000000000_mask_61_badDirection_mask = rank_000000000_mask_61_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_61_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_61_badDirection_rank rank_000000000_mask_61_badDirection_mask = rank_000000000_mask_61_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_61_badDirection_unrank]
  exact rank_000000000_mask_61_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_61_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_61_badDirection_rank rank_000000000_mask_61_badDirection_mask = rank_000000000_mask_61_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_61_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_61_badDirection_b, rank_000000000_mask_61_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_61_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_61_badDirection_rank rank_000000000_mask_61_badDirection_mask ⟨4, by decide⟩ =
      rank_000000000_mask_61_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_61_badDirection_seqAtRank, rank_000000000_mask_61_badDirection_bAtRank]
  norm_num [rank_000000000_mask_61_badDirection_denom, rank_000000000_mask_61_badDirection_seq, rank_000000000_mask_61_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_61_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_61_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_61_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_61_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_61_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_61_badDirection_denom]

private def rank_000000000_mask_62_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def rank_000000000_mask_62_badDirection_mask : SignMask := ⟨62, by decide⟩
private def rank_000000000_mask_62_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def rank_000000000_mask_62_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000000_mask_62_badDirection_b : Vec3 Rat := { x := (-28/3), y := (4/3), z := (28/3) }
private def rank_000000000_mask_62_badDirection_denom : Rat := (-4/3)

private theorem rank_000000000_mask_62_badDirection_rankWord :
    rankPairWord? rank_000000000_mask_62_badDirection_word = some rank_000000000_mask_62_badDirection_rank := by
  decide

private theorem rank_000000000_mask_62_badDirection_unrank :
    unrankPairWord rank_000000000_mask_62_badDirection_rank = rank_000000000_mask_62_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000000_mask_62_badDirection_word rank_000000000_mask_62_badDirection_rank).1
    rank_000000000_mask_62_badDirection_rankWord |>.symm

private theorem rank_000000000_mask_62_badDirection_seqChoice :
    translationChoiceSeq rank_000000000_mask_62_badDirection_word rank_000000000_mask_62_badDirection_mask = rank_000000000_mask_62_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000000_mask_62_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000000_mask_62_badDirection_rank rank_000000000_mask_62_badDirection_mask = rank_000000000_mask_62_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000000_mask_62_badDirection_unrank]
  exact rank_000000000_mask_62_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_62_badDirection_bAtRank :
    translationBAtRankMask rank_000000000_mask_62_badDirection_rank rank_000000000_mask_62_badDirection_mask = rank_000000000_mask_62_badDirection_b := by
  rw [translationBAtRankMask, rank_000000000_mask_62_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000000_mask_62_badDirection_b, rank_000000000_mask_62_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000000_mask_62_badDirection_denomAtRank :
    impactDenomAtRank rank_000000000_mask_62_badDirection_rank rank_000000000_mask_62_badDirection_mask ⟨2, by decide⟩ =
      rank_000000000_mask_62_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000000_mask_62_badDirection_seqAtRank, rank_000000000_mask_62_badDirection_bAtRank]
  norm_num [rank_000000000_mask_62_badDirection_denom, rank_000000000_mask_62_badDirection_seq, rank_000000000_mask_62_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000000_mask_62_badDirection_notGood
    (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords)
      rank_000000000_mask_62_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = rank_000000000_mask_62_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := rank_000000000_mask_62_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000000_mask_62_badDirection_denomAtRank]
  norm_num [rank_000000000_mask_62_badDirection_denom]

private def rank_000000002_mask_00_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_00_badDirection_mask : SignMask := ⟨0, by decide⟩
private def rank_000000002_mask_00_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_00_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_00_badDirection_b : Vec3 Rat := { x := (28/9), y := (-68/9), z := (-100/9) }
private def rank_000000002_mask_00_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_00_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_00_badDirection_word = some rank_000000002_mask_00_badDirection_rank := by
  decide

private theorem rank_000000002_mask_00_badDirection_unrank :
    unrankPairWord rank_000000002_mask_00_badDirection_rank = rank_000000002_mask_00_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_00_badDirection_word rank_000000002_mask_00_badDirection_rank).1
    rank_000000002_mask_00_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_00_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_00_badDirection_word rank_000000002_mask_00_badDirection_mask = rank_000000002_mask_00_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_00_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_00_badDirection_rank rank_000000002_mask_00_badDirection_mask = rank_000000002_mask_00_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_00_badDirection_unrank]
  exact rank_000000002_mask_00_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_00_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_00_badDirection_rank rank_000000002_mask_00_badDirection_mask = rank_000000002_mask_00_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_00_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_00_badDirection_b, rank_000000002_mask_00_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_00_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_00_badDirection_rank rank_000000002_mask_00_badDirection_mask ⟨1, by decide⟩ =
      rank_000000002_mask_00_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_00_badDirection_seqAtRank, rank_000000002_mask_00_badDirection_bAtRank]
  norm_num [rank_000000002_mask_00_badDirection_denom, rank_000000002_mask_00_badDirection_seq, rank_000000002_mask_00_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_00_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_00_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_00_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_00_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_00_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_00_badDirection_denom]

private def rank_000000002_mask_01_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_01_badDirection_mask : SignMask := ⟨1, by decide⟩
private def rank_000000002_mask_01_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_01_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_01_badDirection_b : Vec3 Rat := { x := (28/9), y := (4/9), z := (-100/9) }
private def rank_000000002_mask_01_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_01_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_01_badDirection_word = some rank_000000002_mask_01_badDirection_rank := by
  decide

private theorem rank_000000002_mask_01_badDirection_unrank :
    unrankPairWord rank_000000002_mask_01_badDirection_rank = rank_000000002_mask_01_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_01_badDirection_word rank_000000002_mask_01_badDirection_rank).1
    rank_000000002_mask_01_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_01_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_01_badDirection_word rank_000000002_mask_01_badDirection_mask = rank_000000002_mask_01_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_01_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_01_badDirection_rank rank_000000002_mask_01_badDirection_mask = rank_000000002_mask_01_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_01_badDirection_unrank]
  exact rank_000000002_mask_01_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_01_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_01_badDirection_rank rank_000000002_mask_01_badDirection_mask = rank_000000002_mask_01_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_01_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_01_badDirection_b, rank_000000002_mask_01_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_01_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_01_badDirection_rank rank_000000002_mask_01_badDirection_mask ⟨1, by decide⟩ =
      rank_000000002_mask_01_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_01_badDirection_seqAtRank, rank_000000002_mask_01_badDirection_bAtRank]
  norm_num [rank_000000002_mask_01_badDirection_denom, rank_000000002_mask_01_badDirection_seq, rank_000000002_mask_01_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_01_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_01_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_01_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_01_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_01_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_01_badDirection_denom]

private def rank_000000002_mask_02_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_02_badDirection_mask : SignMask := ⟨2, by decide⟩
private def rank_000000002_mask_02_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_02_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_02_badDirection_b : Vec3 Rat := { x := (28/9), y := (-68/9), z := (-28/9) }
private def rank_000000002_mask_02_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_02_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_02_badDirection_word = some rank_000000002_mask_02_badDirection_rank := by
  decide

private theorem rank_000000002_mask_02_badDirection_unrank :
    unrankPairWord rank_000000002_mask_02_badDirection_rank = rank_000000002_mask_02_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_02_badDirection_word rank_000000002_mask_02_badDirection_rank).1
    rank_000000002_mask_02_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_02_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_02_badDirection_word rank_000000002_mask_02_badDirection_mask = rank_000000002_mask_02_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_02_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_02_badDirection_rank rank_000000002_mask_02_badDirection_mask = rank_000000002_mask_02_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_02_badDirection_unrank]
  exact rank_000000002_mask_02_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_02_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_02_badDirection_rank rank_000000002_mask_02_badDirection_mask = rank_000000002_mask_02_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_02_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_02_badDirection_b, rank_000000002_mask_02_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_02_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_02_badDirection_rank rank_000000002_mask_02_badDirection_mask ⟨1, by decide⟩ =
      rank_000000002_mask_02_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_02_badDirection_seqAtRank, rank_000000002_mask_02_badDirection_bAtRank]
  norm_num [rank_000000002_mask_02_badDirection_denom, rank_000000002_mask_02_badDirection_seq, rank_000000002_mask_02_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_02_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_02_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_02_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_02_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_02_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_02_badDirection_denom]

private def rank_000000002_mask_03_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_03_badDirection_mask : SignMask := ⟨3, by decide⟩
private def rank_000000002_mask_03_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_03_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_03_badDirection_b : Vec3 Rat := { x := (28/9), y := (4/9), z := (-28/9) }
private def rank_000000002_mask_03_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_03_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_03_badDirection_word = some rank_000000002_mask_03_badDirection_rank := by
  decide

private theorem rank_000000002_mask_03_badDirection_unrank :
    unrankPairWord rank_000000002_mask_03_badDirection_rank = rank_000000002_mask_03_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_03_badDirection_word rank_000000002_mask_03_badDirection_rank).1
    rank_000000002_mask_03_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_03_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_03_badDirection_word rank_000000002_mask_03_badDirection_mask = rank_000000002_mask_03_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_03_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_03_badDirection_rank rank_000000002_mask_03_badDirection_mask = rank_000000002_mask_03_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_03_badDirection_unrank]
  exact rank_000000002_mask_03_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_03_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_03_badDirection_rank rank_000000002_mask_03_badDirection_mask = rank_000000002_mask_03_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_03_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_03_badDirection_b, rank_000000002_mask_03_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_03_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_03_badDirection_rank rank_000000002_mask_03_badDirection_mask ⟨1, by decide⟩ =
      rank_000000002_mask_03_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_03_badDirection_seqAtRank, rank_000000002_mask_03_badDirection_bAtRank]
  norm_num [rank_000000002_mask_03_badDirection_denom, rank_000000002_mask_03_badDirection_seq, rank_000000002_mask_03_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_03_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_03_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_03_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_03_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_03_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_03_badDirection_denom]

private def rank_000000002_mask_04_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_04_badDirection_mask : SignMask := ⟨4, by decide⟩
private def rank_000000002_mask_04_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_04_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_04_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (-52/9) }
private def rank_000000002_mask_04_badDirection_denom : Rat := (-52/9)

private theorem rank_000000002_mask_04_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_04_badDirection_word = some rank_000000002_mask_04_badDirection_rank := by
  decide

private theorem rank_000000002_mask_04_badDirection_unrank :
    unrankPairWord rank_000000002_mask_04_badDirection_rank = rank_000000002_mask_04_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_04_badDirection_word rank_000000002_mask_04_badDirection_rank).1
    rank_000000002_mask_04_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_04_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_04_badDirection_word rank_000000002_mask_04_badDirection_mask = rank_000000002_mask_04_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_04_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_04_badDirection_rank rank_000000002_mask_04_badDirection_mask = rank_000000002_mask_04_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_04_badDirection_unrank]
  exact rank_000000002_mask_04_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_04_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_04_badDirection_rank rank_000000002_mask_04_badDirection_mask = rank_000000002_mask_04_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_04_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_04_badDirection_b, rank_000000002_mask_04_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_04_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_04_badDirection_rank rank_000000002_mask_04_badDirection_mask ⟨6, by decide⟩ =
      rank_000000002_mask_04_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_04_badDirection_seqAtRank, rank_000000002_mask_04_badDirection_bAtRank]
  norm_num [rank_000000002_mask_04_badDirection_denom, rank_000000002_mask_04_badDirection_seq, rank_000000002_mask_04_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_04_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_04_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_04_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_04_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_04_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_04_badDirection_denom]

private def rank_000000002_mask_05_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_05_badDirection_mask : SignMask := ⟨5, by decide⟩
private def rank_000000002_mask_05_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_05_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_05_badDirection_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (-52/9) }
private def rank_000000002_mask_05_badDirection_denom : Rat := (-124/9)

private theorem rank_000000002_mask_05_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_05_badDirection_word = some rank_000000002_mask_05_badDirection_rank := by
  decide

private theorem rank_000000002_mask_05_badDirection_unrank :
    unrankPairWord rank_000000002_mask_05_badDirection_rank = rank_000000002_mask_05_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_05_badDirection_word rank_000000002_mask_05_badDirection_rank).1
    rank_000000002_mask_05_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_05_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_05_badDirection_word rank_000000002_mask_05_badDirection_mask = rank_000000002_mask_05_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_05_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_05_badDirection_rank rank_000000002_mask_05_badDirection_mask = rank_000000002_mask_05_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_05_badDirection_unrank]
  exact rank_000000002_mask_05_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_05_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_05_badDirection_rank rank_000000002_mask_05_badDirection_mask = rank_000000002_mask_05_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_05_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_05_badDirection_b, rank_000000002_mask_05_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_05_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_05_badDirection_rank rank_000000002_mask_05_badDirection_mask ⟨8, by decide⟩ =
      rank_000000002_mask_05_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_05_badDirection_seqAtRank, rank_000000002_mask_05_badDirection_bAtRank]
  norm_num [rank_000000002_mask_05_badDirection_denom, rank_000000002_mask_05_badDirection_seq, rank_000000002_mask_05_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_05_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_05_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_05_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_05_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_05_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_05_badDirection_denom]

private def rank_000000002_mask_06_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_06_badDirection_mask : SignMask := ⟨6, by decide⟩
private def rank_000000002_mask_06_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_06_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_06_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (20/9) }
private def rank_000000002_mask_06_badDirection_denom : Rat := (-20/3)

private theorem rank_000000002_mask_06_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_06_badDirection_word = some rank_000000002_mask_06_badDirection_rank := by
  decide

private theorem rank_000000002_mask_06_badDirection_unrank :
    unrankPairWord rank_000000002_mask_06_badDirection_rank = rank_000000002_mask_06_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_06_badDirection_word rank_000000002_mask_06_badDirection_rank).1
    rank_000000002_mask_06_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_06_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_06_badDirection_word rank_000000002_mask_06_badDirection_mask = rank_000000002_mask_06_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_06_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_06_badDirection_rank rank_000000002_mask_06_badDirection_mask = rank_000000002_mask_06_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_06_badDirection_unrank]
  exact rank_000000002_mask_06_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_06_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_06_badDirection_rank rank_000000002_mask_06_badDirection_mask = rank_000000002_mask_06_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_06_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_06_badDirection_b, rank_000000002_mask_06_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_06_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_06_badDirection_rank rank_000000002_mask_06_badDirection_mask ⟨10, by decide⟩ =
      rank_000000002_mask_06_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_06_badDirection_seqAtRank, rank_000000002_mask_06_badDirection_bAtRank]
  norm_num [rank_000000002_mask_06_badDirection_denom, rank_000000002_mask_06_badDirection_seq, rank_000000002_mask_06_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_06_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_06_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_06_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_06_badDirection_mask)
      (i := ⟨10, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_06_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_06_badDirection_denom]

private def rank_000000002_mask_07_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_07_badDirection_mask : SignMask := ⟨7, by decide⟩
private def rank_000000002_mask_07_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_07_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_07_badDirection_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (20/9) }
private def rank_000000002_mask_07_badDirection_denom : Rat := (-52/9)

private theorem rank_000000002_mask_07_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_07_badDirection_word = some rank_000000002_mask_07_badDirection_rank := by
  decide

private theorem rank_000000002_mask_07_badDirection_unrank :
    unrankPairWord rank_000000002_mask_07_badDirection_rank = rank_000000002_mask_07_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_07_badDirection_word rank_000000002_mask_07_badDirection_rank).1
    rank_000000002_mask_07_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_07_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_07_badDirection_word rank_000000002_mask_07_badDirection_mask = rank_000000002_mask_07_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_07_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_07_badDirection_rank rank_000000002_mask_07_badDirection_mask = rank_000000002_mask_07_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_07_badDirection_unrank]
  exact rank_000000002_mask_07_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_07_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_07_badDirection_rank rank_000000002_mask_07_badDirection_mask = rank_000000002_mask_07_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_07_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_07_badDirection_b, rank_000000002_mask_07_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_07_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_07_badDirection_rank rank_000000002_mask_07_badDirection_mask ⟨8, by decide⟩ =
      rank_000000002_mask_07_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_07_badDirection_seqAtRank, rank_000000002_mask_07_badDirection_bAtRank]
  norm_num [rank_000000002_mask_07_badDirection_denom, rank_000000002_mask_07_badDirection_seq, rank_000000002_mask_07_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_07_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_07_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_07_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_07_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_07_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_07_badDirection_denom]

private def rank_000000002_mask_10_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_10_badDirection_mask : SignMask := ⟨10, by decide⟩
private def rank_000000002_mask_10_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_10_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_10_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (-76/9) }
private def rank_000000002_mask_10_badDirection_denom : Rat := (-76/9)

private theorem rank_000000002_mask_10_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_10_badDirection_word = some rank_000000002_mask_10_badDirection_rank := by
  decide

private theorem rank_000000002_mask_10_badDirection_unrank :
    unrankPairWord rank_000000002_mask_10_badDirection_rank = rank_000000002_mask_10_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_10_badDirection_word rank_000000002_mask_10_badDirection_rank).1
    rank_000000002_mask_10_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_10_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_10_badDirection_word rank_000000002_mask_10_badDirection_mask = rank_000000002_mask_10_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_10_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_10_badDirection_rank rank_000000002_mask_10_badDirection_mask = rank_000000002_mask_10_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_10_badDirection_unrank]
  exact rank_000000002_mask_10_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_10_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_10_badDirection_rank rank_000000002_mask_10_badDirection_mask = rank_000000002_mask_10_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_10_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_10_badDirection_b, rank_000000002_mask_10_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_10_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_10_badDirection_rank rank_000000002_mask_10_badDirection_mask ⟨4, by decide⟩ =
      rank_000000002_mask_10_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_10_badDirection_seqAtRank, rank_000000002_mask_10_badDirection_bAtRank]
  norm_num [rank_000000002_mask_10_badDirection_denom, rank_000000002_mask_10_badDirection_seq, rank_000000002_mask_10_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_10_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_10_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_10_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_10_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_10_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_10_badDirection_denom]

private def rank_000000002_mask_11_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_11_badDirection_mask : SignMask := ⟨11, by decide⟩
private def rank_000000002_mask_11_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_11_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_11_badDirection_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (-76/9) }
private def rank_000000002_mask_11_badDirection_denom : Rat := (-76/9)

private theorem rank_000000002_mask_11_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_11_badDirection_word = some rank_000000002_mask_11_badDirection_rank := by
  decide

private theorem rank_000000002_mask_11_badDirection_unrank :
    unrankPairWord rank_000000002_mask_11_badDirection_rank = rank_000000002_mask_11_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_11_badDirection_word rank_000000002_mask_11_badDirection_rank).1
    rank_000000002_mask_11_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_11_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_11_badDirection_word rank_000000002_mask_11_badDirection_mask = rank_000000002_mask_11_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_11_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_11_badDirection_rank rank_000000002_mask_11_badDirection_mask = rank_000000002_mask_11_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_11_badDirection_unrank]
  exact rank_000000002_mask_11_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_11_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_11_badDirection_rank rank_000000002_mask_11_badDirection_mask = rank_000000002_mask_11_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_11_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_11_badDirection_b, rank_000000002_mask_11_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_11_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_11_badDirection_rank rank_000000002_mask_11_badDirection_mask ⟨4, by decide⟩ =
      rank_000000002_mask_11_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_11_badDirection_seqAtRank, rank_000000002_mask_11_badDirection_bAtRank]
  norm_num [rank_000000002_mask_11_badDirection_denom, rank_000000002_mask_11_badDirection_seq, rank_000000002_mask_11_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_11_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_11_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_11_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_11_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_11_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_11_badDirection_denom]

private def rank_000000002_mask_12_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_12_badDirection_mask : SignMask := ⟨12, by decide⟩
private def rank_000000002_mask_12_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_12_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_12_badDirection_b : Vec3 Rat := { x := (-68/9), y := (28/9), z := (-100/9) }
private def rank_000000002_mask_12_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_12_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_12_badDirection_word = some rank_000000002_mask_12_badDirection_rank := by
  decide

private theorem rank_000000002_mask_12_badDirection_unrank :
    unrankPairWord rank_000000002_mask_12_badDirection_rank = rank_000000002_mask_12_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_12_badDirection_word rank_000000002_mask_12_badDirection_rank).1
    rank_000000002_mask_12_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_12_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_12_badDirection_word rank_000000002_mask_12_badDirection_mask = rank_000000002_mask_12_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_12_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_12_badDirection_rank rank_000000002_mask_12_badDirection_mask = rank_000000002_mask_12_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_12_badDirection_unrank]
  exact rank_000000002_mask_12_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_12_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_12_badDirection_rank rank_000000002_mask_12_badDirection_mask = rank_000000002_mask_12_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_12_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_12_badDirection_b, rank_000000002_mask_12_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_12_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_12_badDirection_rank rank_000000002_mask_12_badDirection_mask ⟨2, by decide⟩ =
      rank_000000002_mask_12_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_12_badDirection_seqAtRank, rank_000000002_mask_12_badDirection_bAtRank]
  norm_num [rank_000000002_mask_12_badDirection_denom, rank_000000002_mask_12_badDirection_seq, rank_000000002_mask_12_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_12_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_12_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_12_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_12_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_12_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_12_badDirection_denom]

private def rank_000000002_mask_14_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_14_badDirection_mask : SignMask := ⟨14, by decide⟩
private def rank_000000002_mask_14_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_14_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_14_badDirection_b : Vec3 Rat := { x := (-68/9), y := (28/9), z := (-28/9) }
private def rank_000000002_mask_14_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_14_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_14_badDirection_word = some rank_000000002_mask_14_badDirection_rank := by
  decide

private theorem rank_000000002_mask_14_badDirection_unrank :
    unrankPairWord rank_000000002_mask_14_badDirection_rank = rank_000000002_mask_14_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_14_badDirection_word rank_000000002_mask_14_badDirection_rank).1
    rank_000000002_mask_14_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_14_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_14_badDirection_word rank_000000002_mask_14_badDirection_mask = rank_000000002_mask_14_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_14_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_14_badDirection_rank rank_000000002_mask_14_badDirection_mask = rank_000000002_mask_14_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_14_badDirection_unrank]
  exact rank_000000002_mask_14_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_14_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_14_badDirection_rank rank_000000002_mask_14_badDirection_mask = rank_000000002_mask_14_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_14_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_14_badDirection_b, rank_000000002_mask_14_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_14_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_14_badDirection_rank rank_000000002_mask_14_badDirection_mask ⟨2, by decide⟩ =
      rank_000000002_mask_14_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_14_badDirection_seqAtRank, rank_000000002_mask_14_badDirection_bAtRank]
  norm_num [rank_000000002_mask_14_badDirection_denom, rank_000000002_mask_14_badDirection_seq, rank_000000002_mask_14_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_14_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_14_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_14_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_14_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_14_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_14_badDirection_denom]

private def rank_000000002_mask_15_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_15_badDirection_mask : SignMask := ⟨15, by decide⟩
private def rank_000000002_mask_15_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_15_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_15_badDirection_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (-28/9) }
private def rank_000000002_mask_15_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_15_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_15_badDirection_word = some rank_000000002_mask_15_badDirection_rank := by
  decide

private theorem rank_000000002_mask_15_badDirection_unrank :
    unrankPairWord rank_000000002_mask_15_badDirection_rank = rank_000000002_mask_15_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_15_badDirection_word rank_000000002_mask_15_badDirection_rank).1
    rank_000000002_mask_15_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_15_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_15_badDirection_word rank_000000002_mask_15_badDirection_mask = rank_000000002_mask_15_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_15_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_15_badDirection_rank rank_000000002_mask_15_badDirection_mask = rank_000000002_mask_15_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_15_badDirection_unrank]
  exact rank_000000002_mask_15_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_15_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_15_badDirection_rank rank_000000002_mask_15_badDirection_mask = rank_000000002_mask_15_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_15_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_15_badDirection_b, rank_000000002_mask_15_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_15_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_15_badDirection_rank rank_000000002_mask_15_badDirection_mask ⟨4, by decide⟩ =
      rank_000000002_mask_15_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_15_badDirection_seqAtRank, rank_000000002_mask_15_badDirection_bAtRank]
  norm_num [rank_000000002_mask_15_badDirection_denom, rank_000000002_mask_15_badDirection_seq, rank_000000002_mask_15_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_15_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_15_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_15_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_15_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_15_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_15_badDirection_denom]

private def rank_000000002_mask_17_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_17_badDirection_mask : SignMask := ⟨17, by decide⟩
private def rank_000000002_mask_17_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_17_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_17_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-44/9), z := (-52/9) }
private def rank_000000002_mask_17_badDirection_denom : Rat := (-44/9)

private theorem rank_000000002_mask_17_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_17_badDirection_word = some rank_000000002_mask_17_badDirection_rank := by
  decide

private theorem rank_000000002_mask_17_badDirection_unrank :
    unrankPairWord rank_000000002_mask_17_badDirection_rank = rank_000000002_mask_17_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_17_badDirection_word rank_000000002_mask_17_badDirection_rank).1
    rank_000000002_mask_17_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_17_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_17_badDirection_word rank_000000002_mask_17_badDirection_mask = rank_000000002_mask_17_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_17_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_17_badDirection_rank rank_000000002_mask_17_badDirection_mask = rank_000000002_mask_17_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_17_badDirection_unrank]
  exact rank_000000002_mask_17_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_17_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_17_badDirection_rank rank_000000002_mask_17_badDirection_mask = rank_000000002_mask_17_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_17_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_17_badDirection_b, rank_000000002_mask_17_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_17_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_17_badDirection_rank rank_000000002_mask_17_badDirection_mask ⟨2, by decide⟩ =
      rank_000000002_mask_17_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_17_badDirection_seqAtRank, rank_000000002_mask_17_badDirection_bAtRank]
  norm_num [rank_000000002_mask_17_badDirection_denom, rank_000000002_mask_17_badDirection_seq, rank_000000002_mask_17_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_17_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_17_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_17_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_17_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_17_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_17_badDirection_denom]

private def rank_000000002_mask_19_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_19_badDirection_mask : SignMask := ⟨19, by decide⟩
private def rank_000000002_mask_19_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_19_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_19_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-44/9), z := (20/9) }
private def rank_000000002_mask_19_badDirection_denom : Rat := (-44/9)

private theorem rank_000000002_mask_19_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_19_badDirection_word = some rank_000000002_mask_19_badDirection_rank := by
  decide

private theorem rank_000000002_mask_19_badDirection_unrank :
    unrankPairWord rank_000000002_mask_19_badDirection_rank = rank_000000002_mask_19_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_19_badDirection_word rank_000000002_mask_19_badDirection_rank).1
    rank_000000002_mask_19_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_19_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_19_badDirection_word rank_000000002_mask_19_badDirection_mask = rank_000000002_mask_19_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_19_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_19_badDirection_rank rank_000000002_mask_19_badDirection_mask = rank_000000002_mask_19_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_19_badDirection_unrank]
  exact rank_000000002_mask_19_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_19_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_19_badDirection_rank rank_000000002_mask_19_badDirection_mask = rank_000000002_mask_19_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_19_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_19_badDirection_b, rank_000000002_mask_19_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_19_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_19_badDirection_rank rank_000000002_mask_19_badDirection_mask ⟨2, by decide⟩ =
      rank_000000002_mask_19_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_19_badDirection_seqAtRank, rank_000000002_mask_19_badDirection_bAtRank]
  norm_num [rank_000000002_mask_19_badDirection_denom, rank_000000002_mask_19_badDirection_seq, rank_000000002_mask_19_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_19_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_19_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_19_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_19_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_19_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_19_badDirection_denom]

private def rank_000000002_mask_20_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_20_badDirection_mask : SignMask := ⟨20, by decide⟩
private def rank_000000002_mask_20_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_20_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_20_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (-4/9) }
private def rank_000000002_mask_20_badDirection_denom : Rat := (-4/9)

private theorem rank_000000002_mask_20_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_20_badDirection_word = some rank_000000002_mask_20_badDirection_rank := by
  decide

private theorem rank_000000002_mask_20_badDirection_unrank :
    unrankPairWord rank_000000002_mask_20_badDirection_rank = rank_000000002_mask_20_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_20_badDirection_word rank_000000002_mask_20_badDirection_rank).1
    rank_000000002_mask_20_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_20_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_20_badDirection_word rank_000000002_mask_20_badDirection_mask = rank_000000002_mask_20_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_20_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_20_badDirection_rank rank_000000002_mask_20_badDirection_mask = rank_000000002_mask_20_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_20_badDirection_unrank]
  exact rank_000000002_mask_20_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_20_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_20_badDirection_rank rank_000000002_mask_20_badDirection_mask = rank_000000002_mask_20_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_20_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_20_badDirection_b, rank_000000002_mask_20_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_20_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_20_badDirection_rank rank_000000002_mask_20_badDirection_mask ⟨6, by decide⟩ =
      rank_000000002_mask_20_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_20_badDirection_seqAtRank, rank_000000002_mask_20_badDirection_bAtRank]
  norm_num [rank_000000002_mask_20_badDirection_denom, rank_000000002_mask_20_badDirection_seq, rank_000000002_mask_20_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_20_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_20_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_20_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_20_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_20_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_20_badDirection_denom]

private def rank_000000002_mask_21_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_21_badDirection_mask : SignMask := ⟨21, by decide⟩
private def rank_000000002_mask_21_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_21_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_21_badDirection_b : Vec3 Rat := { x := (-68/9), y := (4/9), z := (-4/9) }
private def rank_000000002_mask_21_badDirection_denom : Rat := (-76/9)

private theorem rank_000000002_mask_21_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_21_badDirection_word = some rank_000000002_mask_21_badDirection_rank := by
  decide

private theorem rank_000000002_mask_21_badDirection_unrank :
    unrankPairWord rank_000000002_mask_21_badDirection_rank = rank_000000002_mask_21_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_21_badDirection_word rank_000000002_mask_21_badDirection_rank).1
    rank_000000002_mask_21_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_21_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_21_badDirection_word rank_000000002_mask_21_badDirection_mask = rank_000000002_mask_21_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_21_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_21_badDirection_rank rank_000000002_mask_21_badDirection_mask = rank_000000002_mask_21_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_21_badDirection_unrank]
  exact rank_000000002_mask_21_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_21_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_21_badDirection_rank rank_000000002_mask_21_badDirection_mask = rank_000000002_mask_21_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_21_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_21_badDirection_b, rank_000000002_mask_21_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_21_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_21_badDirection_rank rank_000000002_mask_21_badDirection_mask ⟨8, by decide⟩ =
      rank_000000002_mask_21_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_21_badDirection_seqAtRank, rank_000000002_mask_21_badDirection_bAtRank]
  norm_num [rank_000000002_mask_21_badDirection_denom, rank_000000002_mask_21_badDirection_seq, rank_000000002_mask_21_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_21_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_21_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_21_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_21_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_21_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_21_badDirection_denom]

private def rank_000000002_mask_22_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_22_badDirection_mask : SignMask := ⟨22, by decide⟩
private def rank_000000002_mask_22_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_22_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_22_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (68/9) }
private def rank_000000002_mask_22_badDirection_denom : Rat := (-68/9)

private theorem rank_000000002_mask_22_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_22_badDirection_word = some rank_000000002_mask_22_badDirection_rank := by
  decide

private theorem rank_000000002_mask_22_badDirection_unrank :
    unrankPairWord rank_000000002_mask_22_badDirection_rank = rank_000000002_mask_22_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_22_badDirection_word rank_000000002_mask_22_badDirection_rank).1
    rank_000000002_mask_22_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_22_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_22_badDirection_word rank_000000002_mask_22_badDirection_mask = rank_000000002_mask_22_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_22_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_22_badDirection_rank rank_000000002_mask_22_badDirection_mask = rank_000000002_mask_22_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_22_badDirection_unrank]
  exact rank_000000002_mask_22_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_22_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_22_badDirection_rank rank_000000002_mask_22_badDirection_mask = rank_000000002_mask_22_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_22_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_22_badDirection_b, rank_000000002_mask_22_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_22_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_22_badDirection_rank rank_000000002_mask_22_badDirection_mask ⟨11, by decide⟩ =
      rank_000000002_mask_22_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_22_badDirection_seqAtRank, rank_000000002_mask_22_badDirection_bAtRank]
  norm_num [rank_000000002_mask_22_badDirection_denom, rank_000000002_mask_22_badDirection_seq, rank_000000002_mask_22_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_22_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_22_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_22_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_22_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_22_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_22_badDirection_denom]

private def rank_000000002_mask_23_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_23_badDirection_mask : SignMask := ⟨23, by decide⟩
private def rank_000000002_mask_23_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_23_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_23_badDirection_b : Vec3 Rat := { x := (-68/9), y := (4/9), z := (68/9) }
private def rank_000000002_mask_23_badDirection_denom : Rat := (-4/9)

private theorem rank_000000002_mask_23_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_23_badDirection_word = some rank_000000002_mask_23_badDirection_rank := by
  decide

private theorem rank_000000002_mask_23_badDirection_unrank :
    unrankPairWord rank_000000002_mask_23_badDirection_rank = rank_000000002_mask_23_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_23_badDirection_word rank_000000002_mask_23_badDirection_rank).1
    rank_000000002_mask_23_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_23_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_23_badDirection_word rank_000000002_mask_23_badDirection_mask = rank_000000002_mask_23_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_23_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_23_badDirection_rank rank_000000002_mask_23_badDirection_mask = rank_000000002_mask_23_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_23_badDirection_unrank]
  exact rank_000000002_mask_23_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_23_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_23_badDirection_rank rank_000000002_mask_23_badDirection_mask = rank_000000002_mask_23_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_23_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_23_badDirection_b, rank_000000002_mask_23_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_23_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_23_badDirection_rank rank_000000002_mask_23_badDirection_mask ⟨8, by decide⟩ =
      rank_000000002_mask_23_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_23_badDirection_seqAtRank, rank_000000002_mask_23_badDirection_bAtRank]
  norm_num [rank_000000002_mask_23_badDirection_denom, rank_000000002_mask_23_badDirection_seq, rank_000000002_mask_23_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_23_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_23_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_23_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_23_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_23_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_23_badDirection_denom]

private def rank_000000002_mask_25_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_25_badDirection_mask : SignMask := ⟨25, by decide⟩
private def rank_000000002_mask_25_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_25_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_25_badDirection_b : Vec3 Rat := { x := (-68/9), y := (4/9), z := (-100/9) }
private def rank_000000002_mask_25_badDirection_denom : Rat := -4

private theorem rank_000000002_mask_25_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_25_badDirection_word = some rank_000000002_mask_25_badDirection_rank := by
  decide

private theorem rank_000000002_mask_25_badDirection_unrank :
    unrankPairWord rank_000000002_mask_25_badDirection_rank = rank_000000002_mask_25_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_25_badDirection_word rank_000000002_mask_25_badDirection_rank).1
    rank_000000002_mask_25_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_25_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_25_badDirection_word rank_000000002_mask_25_badDirection_mask = rank_000000002_mask_25_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_25_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_25_badDirection_rank rank_000000002_mask_25_badDirection_mask = rank_000000002_mask_25_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_25_badDirection_unrank]
  exact rank_000000002_mask_25_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_25_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_25_badDirection_rank rank_000000002_mask_25_badDirection_mask = rank_000000002_mask_25_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_25_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_25_badDirection_b, rank_000000002_mask_25_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_25_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_25_badDirection_rank rank_000000002_mask_25_badDirection_mask ⟨10, by decide⟩ =
      rank_000000002_mask_25_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_25_badDirection_seqAtRank, rank_000000002_mask_25_badDirection_bAtRank]
  norm_num [rank_000000002_mask_25_badDirection_denom, rank_000000002_mask_25_badDirection_seq, rank_000000002_mask_25_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_25_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_25_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_25_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_25_badDirection_mask)
      (i := ⟨10, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_25_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_25_badDirection_denom]

private def rank_000000002_mask_26_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_26_badDirection_mask : SignMask := ⟨26, by decide⟩
private def rank_000000002_mask_26_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_26_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_26_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (-28/9) }
private def rank_000000002_mask_26_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_26_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_26_badDirection_word = some rank_000000002_mask_26_badDirection_rank := by
  decide

private theorem rank_000000002_mask_26_badDirection_unrank :
    unrankPairWord rank_000000002_mask_26_badDirection_rank = rank_000000002_mask_26_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_26_badDirection_word rank_000000002_mask_26_badDirection_rank).1
    rank_000000002_mask_26_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_26_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_26_badDirection_word rank_000000002_mask_26_badDirection_mask = rank_000000002_mask_26_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_26_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_26_badDirection_rank rank_000000002_mask_26_badDirection_mask = rank_000000002_mask_26_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_26_badDirection_unrank]
  exact rank_000000002_mask_26_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_26_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_26_badDirection_rank rank_000000002_mask_26_badDirection_mask = rank_000000002_mask_26_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_26_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_26_badDirection_b, rank_000000002_mask_26_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_26_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_26_badDirection_rank rank_000000002_mask_26_badDirection_mask ⟨4, by decide⟩ =
      rank_000000002_mask_26_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_26_badDirection_seqAtRank, rank_000000002_mask_26_badDirection_bAtRank]
  norm_num [rank_000000002_mask_26_badDirection_denom, rank_000000002_mask_26_badDirection_seq, rank_000000002_mask_26_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_26_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_26_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_26_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_26_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_26_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_26_badDirection_denom]

private def rank_000000002_mask_27_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_27_badDirection_mask : SignMask := ⟨27, by decide⟩
private def rank_000000002_mask_27_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_27_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_27_badDirection_b : Vec3 Rat := { x := (-68/9), y := (4/9), z := (-28/9) }
private def rank_000000002_mask_27_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_27_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_27_badDirection_word = some rank_000000002_mask_27_badDirection_rank := by
  decide

private theorem rank_000000002_mask_27_badDirection_unrank :
    unrankPairWord rank_000000002_mask_27_badDirection_rank = rank_000000002_mask_27_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_27_badDirection_word rank_000000002_mask_27_badDirection_rank).1
    rank_000000002_mask_27_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_27_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_27_badDirection_word rank_000000002_mask_27_badDirection_mask = rank_000000002_mask_27_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_27_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_27_badDirection_rank rank_000000002_mask_27_badDirection_mask = rank_000000002_mask_27_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_27_badDirection_unrank]
  exact rank_000000002_mask_27_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_27_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_27_badDirection_rank rank_000000002_mask_27_badDirection_mask = rank_000000002_mask_27_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_27_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_27_badDirection_b, rank_000000002_mask_27_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_27_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_27_badDirection_rank rank_000000002_mask_27_badDirection_mask ⟨4, by decide⟩ =
      rank_000000002_mask_27_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_27_badDirection_seqAtRank, rank_000000002_mask_27_badDirection_bAtRank]
  norm_num [rank_000000002_mask_27_badDirection_denom, rank_000000002_mask_27_badDirection_seq, rank_000000002_mask_27_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_27_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_27_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_27_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_27_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_27_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_27_badDirection_denom]

private def rank_000000002_mask_31_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_31_badDirection_mask : SignMask := ⟨31, by decide⟩
private def rank_000000002_mask_31_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_31_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_31_badDirection_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (20/9) }
private def rank_000000002_mask_31_badDirection_denom : Rat := (-4/3)

private theorem rank_000000002_mask_31_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_31_badDirection_word = some rank_000000002_mask_31_badDirection_rank := by
  decide

private theorem rank_000000002_mask_31_badDirection_unrank :
    unrankPairWord rank_000000002_mask_31_badDirection_rank = rank_000000002_mask_31_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_31_badDirection_word rank_000000002_mask_31_badDirection_rank).1
    rank_000000002_mask_31_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_31_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_31_badDirection_word rank_000000002_mask_31_badDirection_mask = rank_000000002_mask_31_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_31_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_31_badDirection_rank rank_000000002_mask_31_badDirection_mask = rank_000000002_mask_31_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_31_badDirection_unrank]
  exact rank_000000002_mask_31_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_31_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_31_badDirection_rank rank_000000002_mask_31_badDirection_mask = rank_000000002_mask_31_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_31_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_31_badDirection_b, rank_000000002_mask_31_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_31_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_31_badDirection_rank rank_000000002_mask_31_badDirection_mask ⟨11, by decide⟩ =
      rank_000000002_mask_31_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_31_badDirection_seqAtRank, rank_000000002_mask_31_badDirection_bAtRank]
  norm_num [rank_000000002_mask_31_badDirection_denom, rank_000000002_mask_31_badDirection_seq, rank_000000002_mask_31_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_31_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_31_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_31_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_31_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_31_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_31_badDirection_denom]

private def rank_000000002_mask_32_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_32_badDirection_mask : SignMask := ⟨32, by decide⟩
private def rank_000000002_mask_32_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_32_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_32_badDirection_b : Vec3 Rat := { x := (44/9), y := (-52/9), z := (-20/9) }
private def rank_000000002_mask_32_badDirection_denom : Rat := (-44/9)

private theorem rank_000000002_mask_32_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_32_badDirection_word = some rank_000000002_mask_32_badDirection_rank := by
  decide

private theorem rank_000000002_mask_32_badDirection_unrank :
    unrankPairWord rank_000000002_mask_32_badDirection_rank = rank_000000002_mask_32_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_32_badDirection_word rank_000000002_mask_32_badDirection_rank).1
    rank_000000002_mask_32_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_32_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_32_badDirection_word rank_000000002_mask_32_badDirection_mask = rank_000000002_mask_32_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_32_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_32_badDirection_rank rank_000000002_mask_32_badDirection_mask = rank_000000002_mask_32_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_32_badDirection_unrank]
  exact rank_000000002_mask_32_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_32_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_32_badDirection_rank rank_000000002_mask_32_badDirection_mask = rank_000000002_mask_32_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_32_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_32_badDirection_b, rank_000000002_mask_32_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_32_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_32_badDirection_rank rank_000000002_mask_32_badDirection_mask ⟨1, by decide⟩ =
      rank_000000002_mask_32_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_32_badDirection_seqAtRank, rank_000000002_mask_32_badDirection_bAtRank]
  norm_num [rank_000000002_mask_32_badDirection_denom, rank_000000002_mask_32_badDirection_seq, rank_000000002_mask_32_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_32_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_32_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_32_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_32_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_32_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_32_badDirection_denom]

private def rank_000000002_mask_33_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_33_badDirection_mask : SignMask := ⟨33, by decide⟩
private def rank_000000002_mask_33_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_33_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_33_badDirection_b : Vec3 Rat := { x := (44/9), y := (20/9), z := (-20/9) }
private def rank_000000002_mask_33_badDirection_denom : Rat := (-44/9)

private theorem rank_000000002_mask_33_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_33_badDirection_word = some rank_000000002_mask_33_badDirection_rank := by
  decide

private theorem rank_000000002_mask_33_badDirection_unrank :
    unrankPairWord rank_000000002_mask_33_badDirection_rank = rank_000000002_mask_33_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_33_badDirection_word rank_000000002_mask_33_badDirection_rank).1
    rank_000000002_mask_33_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_33_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_33_badDirection_word rank_000000002_mask_33_badDirection_mask = rank_000000002_mask_33_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_33_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_33_badDirection_rank rank_000000002_mask_33_badDirection_mask = rank_000000002_mask_33_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_33_badDirection_unrank]
  exact rank_000000002_mask_33_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_33_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_33_badDirection_rank rank_000000002_mask_33_badDirection_mask = rank_000000002_mask_33_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_33_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_33_badDirection_b, rank_000000002_mask_33_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_33_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_33_badDirection_rank rank_000000002_mask_33_badDirection_mask ⟨1, by decide⟩ =
      rank_000000002_mask_33_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_33_badDirection_seqAtRank, rank_000000002_mask_33_badDirection_bAtRank]
  norm_num [rank_000000002_mask_33_badDirection_denom, rank_000000002_mask_33_badDirection_seq, rank_000000002_mask_33_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_33_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_33_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_33_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_33_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_33_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_33_badDirection_denom]

private def rank_000000002_mask_34_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_34_badDirection_mask : SignMask := ⟨34, by decide⟩
private def rank_000000002_mask_34_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_34_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_34_badDirection_b : Vec3 Rat := { x := (44/9), y := (-52/9), z := (52/9) }
private def rank_000000002_mask_34_badDirection_denom : Rat := (-44/9)

private theorem rank_000000002_mask_34_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_34_badDirection_word = some rank_000000002_mask_34_badDirection_rank := by
  decide

private theorem rank_000000002_mask_34_badDirection_unrank :
    unrankPairWord rank_000000002_mask_34_badDirection_rank = rank_000000002_mask_34_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_34_badDirection_word rank_000000002_mask_34_badDirection_rank).1
    rank_000000002_mask_34_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_34_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_34_badDirection_word rank_000000002_mask_34_badDirection_mask = rank_000000002_mask_34_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_34_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_34_badDirection_rank rank_000000002_mask_34_badDirection_mask = rank_000000002_mask_34_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_34_badDirection_unrank]
  exact rank_000000002_mask_34_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_34_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_34_badDirection_rank rank_000000002_mask_34_badDirection_mask = rank_000000002_mask_34_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_34_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_34_badDirection_b, rank_000000002_mask_34_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_34_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_34_badDirection_rank rank_000000002_mask_34_badDirection_mask ⟨1, by decide⟩ =
      rank_000000002_mask_34_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_34_badDirection_seqAtRank, rank_000000002_mask_34_badDirection_bAtRank]
  norm_num [rank_000000002_mask_34_badDirection_denom, rank_000000002_mask_34_badDirection_seq, rank_000000002_mask_34_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_34_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_34_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_34_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_34_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_34_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_34_badDirection_denom]

private def rank_000000002_mask_35_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_35_badDirection_mask : SignMask := ⟨35, by decide⟩
private def rank_000000002_mask_35_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_35_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_35_badDirection_b : Vec3 Rat := { x := (44/9), y := (20/9), z := (52/9) }
private def rank_000000002_mask_35_badDirection_denom : Rat := (-44/9)

private theorem rank_000000002_mask_35_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_35_badDirection_word = some rank_000000002_mask_35_badDirection_rank := by
  decide

private theorem rank_000000002_mask_35_badDirection_unrank :
    unrankPairWord rank_000000002_mask_35_badDirection_rank = rank_000000002_mask_35_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_35_badDirection_word rank_000000002_mask_35_badDirection_rank).1
    rank_000000002_mask_35_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_35_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_35_badDirection_word rank_000000002_mask_35_badDirection_mask = rank_000000002_mask_35_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_35_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_35_badDirection_rank rank_000000002_mask_35_badDirection_mask = rank_000000002_mask_35_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_35_badDirection_unrank]
  exact rank_000000002_mask_35_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_35_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_35_badDirection_rank rank_000000002_mask_35_badDirection_mask = rank_000000002_mask_35_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_35_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_35_badDirection_b, rank_000000002_mask_35_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_35_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_35_badDirection_rank rank_000000002_mask_35_badDirection_mask ⟨1, by decide⟩ =
      rank_000000002_mask_35_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_35_badDirection_seqAtRank, rank_000000002_mask_35_badDirection_bAtRank]
  norm_num [rank_000000002_mask_35_badDirection_denom, rank_000000002_mask_35_badDirection_seq, rank_000000002_mask_35_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_35_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_35_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_35_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_35_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_35_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_35_badDirection_denom]

private def rank_000000002_mask_36_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_36_badDirection_mask : SignMask := ⟨36, by decide⟩
private def rank_000000002_mask_36_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_36_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_36_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-4/9), z := (28/9) }
private def rank_000000002_mask_36_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_36_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_36_badDirection_word = some rank_000000002_mask_36_badDirection_rank := by
  decide

private theorem rank_000000002_mask_36_badDirection_unrank :
    unrankPairWord rank_000000002_mask_36_badDirection_rank = rank_000000002_mask_36_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_36_badDirection_word rank_000000002_mask_36_badDirection_rank).1
    rank_000000002_mask_36_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_36_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_36_badDirection_word rank_000000002_mask_36_badDirection_mask = rank_000000002_mask_36_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_36_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_36_badDirection_rank rank_000000002_mask_36_badDirection_mask = rank_000000002_mask_36_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_36_badDirection_unrank]
  exact rank_000000002_mask_36_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_36_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_36_badDirection_rank rank_000000002_mask_36_badDirection_mask = rank_000000002_mask_36_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_36_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_36_badDirection_b, rank_000000002_mask_36_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_36_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_36_badDirection_rank rank_000000002_mask_36_badDirection_mask ⟨4, by decide⟩ =
      rank_000000002_mask_36_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_36_badDirection_seqAtRank, rank_000000002_mask_36_badDirection_bAtRank]
  norm_num [rank_000000002_mask_36_badDirection_denom, rank_000000002_mask_36_badDirection_seq, rank_000000002_mask_36_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_36_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_36_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_36_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_36_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_36_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_36_badDirection_denom]

private def rank_000000002_mask_37_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_37_badDirection_mask : SignMask := ⟨37, by decide⟩
private def rank_000000002_mask_37_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_37_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_37_badDirection_b : Vec3 Rat := { x := (-4/9), y := (68/9), z := (28/9) }
private def rank_000000002_mask_37_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_37_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_37_badDirection_word = some rank_000000002_mask_37_badDirection_rank := by
  decide

private theorem rank_000000002_mask_37_badDirection_unrank :
    unrankPairWord rank_000000002_mask_37_badDirection_rank = rank_000000002_mask_37_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_37_badDirection_word rank_000000002_mask_37_badDirection_rank).1
    rank_000000002_mask_37_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_37_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_37_badDirection_word rank_000000002_mask_37_badDirection_mask = rank_000000002_mask_37_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_37_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_37_badDirection_rank rank_000000002_mask_37_badDirection_mask = rank_000000002_mask_37_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_37_badDirection_unrank]
  exact rank_000000002_mask_37_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_37_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_37_badDirection_rank rank_000000002_mask_37_badDirection_mask = rank_000000002_mask_37_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_37_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_37_badDirection_b, rank_000000002_mask_37_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_37_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_37_badDirection_rank rank_000000002_mask_37_badDirection_mask ⟨4, by decide⟩ =
      rank_000000002_mask_37_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_37_badDirection_seqAtRank, rank_000000002_mask_37_badDirection_bAtRank]
  norm_num [rank_000000002_mask_37_badDirection_denom, rank_000000002_mask_37_badDirection_seq, rank_000000002_mask_37_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_37_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_37_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_37_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_37_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_37_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_37_badDirection_denom]

private def rank_000000002_mask_38_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_38_badDirection_mask : SignMask := ⟨38, by decide⟩
private def rank_000000002_mask_38_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_38_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_38_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-4/9), z := (100/9) }
private def rank_000000002_mask_38_badDirection_denom : Rat := -12

private theorem rank_000000002_mask_38_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_38_badDirection_word = some rank_000000002_mask_38_badDirection_rank := by
  decide

private theorem rank_000000002_mask_38_badDirection_unrank :
    unrankPairWord rank_000000002_mask_38_badDirection_rank = rank_000000002_mask_38_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_38_badDirection_word rank_000000002_mask_38_badDirection_rank).1
    rank_000000002_mask_38_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_38_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_38_badDirection_word rank_000000002_mask_38_badDirection_mask = rank_000000002_mask_38_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_38_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_38_badDirection_rank rank_000000002_mask_38_badDirection_mask = rank_000000002_mask_38_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_38_badDirection_unrank]
  exact rank_000000002_mask_38_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_38_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_38_badDirection_rank rank_000000002_mask_38_badDirection_mask = rank_000000002_mask_38_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_38_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_38_badDirection_b, rank_000000002_mask_38_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_38_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_38_badDirection_rank rank_000000002_mask_38_badDirection_mask ⟨10, by decide⟩ =
      rank_000000002_mask_38_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_38_badDirection_seqAtRank, rank_000000002_mask_38_badDirection_bAtRank]
  norm_num [rank_000000002_mask_38_badDirection_denom, rank_000000002_mask_38_badDirection_seq, rank_000000002_mask_38_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_38_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_38_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_38_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_38_badDirection_mask)
      (i := ⟨10, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_38_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_38_badDirection_denom]

private def rank_000000002_mask_39_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_39_badDirection_mask : SignMask := ⟨39, by decide⟩
private def rank_000000002_mask_39_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_39_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_39_badDirection_b : Vec3 Rat := { x := (-4/9), y := (68/9), z := (100/9) }
private def rank_000000002_mask_39_badDirection_denom : Rat := -4

private theorem rank_000000002_mask_39_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_39_badDirection_word = some rank_000000002_mask_39_badDirection_rank := by
  decide

private theorem rank_000000002_mask_39_badDirection_unrank :
    unrankPairWord rank_000000002_mask_39_badDirection_rank = rank_000000002_mask_39_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_39_badDirection_word rank_000000002_mask_39_badDirection_rank).1
    rank_000000002_mask_39_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_39_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_39_badDirection_word rank_000000002_mask_39_badDirection_mask = rank_000000002_mask_39_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_39_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_39_badDirection_rank rank_000000002_mask_39_badDirection_mask = rank_000000002_mask_39_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_39_badDirection_unrank]
  exact rank_000000002_mask_39_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_39_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_39_badDirection_rank rank_000000002_mask_39_badDirection_mask = rank_000000002_mask_39_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_39_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_39_badDirection_b, rank_000000002_mask_39_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_39_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_39_badDirection_rank rank_000000002_mask_39_badDirection_mask ⟨10, by decide⟩ =
      rank_000000002_mask_39_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_39_badDirection_seqAtRank, rank_000000002_mask_39_badDirection_bAtRank]
  norm_num [rank_000000002_mask_39_badDirection_denom, rank_000000002_mask_39_badDirection_seq, rank_000000002_mask_39_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_39_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_39_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_39_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_39_badDirection_mask)
      (i := ⟨10, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_39_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_39_badDirection_denom]

private def rank_000000002_mask_40_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_40_badDirection_mask : SignMask := ⟨40, by decide⟩
private def rank_000000002_mask_40_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_40_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_40_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-4/9), z := (-68/9) }
private def rank_000000002_mask_40_badDirection_denom : Rat := (-116/9)

private theorem rank_000000002_mask_40_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_40_badDirection_word = some rank_000000002_mask_40_badDirection_rank := by
  decide

private theorem rank_000000002_mask_40_badDirection_unrank :
    unrankPairWord rank_000000002_mask_40_badDirection_rank = rank_000000002_mask_40_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_40_badDirection_word rank_000000002_mask_40_badDirection_rank).1
    rank_000000002_mask_40_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_40_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_40_badDirection_word rank_000000002_mask_40_badDirection_mask = rank_000000002_mask_40_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_40_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_40_badDirection_rank rank_000000002_mask_40_badDirection_mask = rank_000000002_mask_40_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_40_badDirection_unrank]
  exact rank_000000002_mask_40_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_40_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_40_badDirection_rank rank_000000002_mask_40_badDirection_mask = rank_000000002_mask_40_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_40_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_40_badDirection_b, rank_000000002_mask_40_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_40_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_40_badDirection_rank rank_000000002_mask_40_badDirection_mask ⟨11, by decide⟩ =
      rank_000000002_mask_40_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_40_badDirection_seqAtRank, rank_000000002_mask_40_badDirection_bAtRank]
  norm_num [rank_000000002_mask_40_badDirection_denom, rank_000000002_mask_40_badDirection_seq, rank_000000002_mask_40_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_40_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_40_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_40_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_40_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_40_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_40_badDirection_denom]

private def rank_000000002_mask_41_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_41_badDirection_mask : SignMask := ⟨41, by decide⟩
private def rank_000000002_mask_41_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_41_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_41_badDirection_b : Vec3 Rat := { x := (-4/9), y := (68/9), z := (-68/9) }
private def rank_000000002_mask_41_badDirection_denom : Rat := (-4/9)

private theorem rank_000000002_mask_41_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_41_badDirection_word = some rank_000000002_mask_41_badDirection_rank := by
  decide

private theorem rank_000000002_mask_41_badDirection_unrank :
    unrankPairWord rank_000000002_mask_41_badDirection_rank = rank_000000002_mask_41_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_41_badDirection_word rank_000000002_mask_41_badDirection_rank).1
    rank_000000002_mask_41_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_41_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_41_badDirection_word rank_000000002_mask_41_badDirection_mask = rank_000000002_mask_41_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_41_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_41_badDirection_rank rank_000000002_mask_41_badDirection_mask = rank_000000002_mask_41_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_41_badDirection_unrank]
  exact rank_000000002_mask_41_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_41_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_41_badDirection_rank rank_000000002_mask_41_badDirection_mask = rank_000000002_mask_41_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_41_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_41_badDirection_b, rank_000000002_mask_41_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_41_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_41_badDirection_rank rank_000000002_mask_41_badDirection_mask ⟨6, by decide⟩ =
      rank_000000002_mask_41_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_41_badDirection_seqAtRank, rank_000000002_mask_41_badDirection_bAtRank]
  norm_num [rank_000000002_mask_41_badDirection_denom, rank_000000002_mask_41_badDirection_seq, rank_000000002_mask_41_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_41_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_41_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_41_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_41_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_41_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_41_badDirection_denom]

private def rank_000000002_mask_42_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_42_badDirection_mask : SignMask := ⟨42, by decide⟩
private def rank_000000002_mask_42_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_42_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_42_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-4/9), z := (4/9) }
private def rank_000000002_mask_42_badDirection_denom : Rat := (-4/9)

private theorem rank_000000002_mask_42_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_42_badDirection_word = some rank_000000002_mask_42_badDirection_rank := by
  decide

private theorem rank_000000002_mask_42_badDirection_unrank :
    unrankPairWord rank_000000002_mask_42_badDirection_rank = rank_000000002_mask_42_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_42_badDirection_word rank_000000002_mask_42_badDirection_rank).1
    rank_000000002_mask_42_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_42_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_42_badDirection_word rank_000000002_mask_42_badDirection_mask = rank_000000002_mask_42_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_42_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_42_badDirection_rank rank_000000002_mask_42_badDirection_mask = rank_000000002_mask_42_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_42_badDirection_unrank]
  exact rank_000000002_mask_42_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_42_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_42_badDirection_rank rank_000000002_mask_42_badDirection_mask = rank_000000002_mask_42_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_42_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_42_badDirection_b, rank_000000002_mask_42_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_42_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_42_badDirection_rank rank_000000002_mask_42_badDirection_mask ⟨6, by decide⟩ =
      rank_000000002_mask_42_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_42_badDirection_seqAtRank, rank_000000002_mask_42_badDirection_bAtRank]
  norm_num [rank_000000002_mask_42_badDirection_denom, rank_000000002_mask_42_badDirection_seq, rank_000000002_mask_42_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_42_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_42_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_42_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_42_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_42_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_42_badDirection_denom]

private def rank_000000002_mask_43_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_43_badDirection_mask : SignMask := ⟨43, by decide⟩
private def rank_000000002_mask_43_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_43_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_43_badDirection_b : Vec3 Rat := { x := (-4/9), y := (68/9), z := (4/9) }
private def rank_000000002_mask_43_badDirection_denom : Rat := (-76/9)

private theorem rank_000000002_mask_43_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_43_badDirection_word = some rank_000000002_mask_43_badDirection_rank := by
  decide

private theorem rank_000000002_mask_43_badDirection_unrank :
    unrankPairWord rank_000000002_mask_43_badDirection_rank = rank_000000002_mask_43_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_43_badDirection_word rank_000000002_mask_43_badDirection_rank).1
    rank_000000002_mask_43_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_43_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_43_badDirection_word rank_000000002_mask_43_badDirection_mask = rank_000000002_mask_43_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_43_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_43_badDirection_rank rank_000000002_mask_43_badDirection_mask = rank_000000002_mask_43_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_43_badDirection_unrank]
  exact rank_000000002_mask_43_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_43_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_43_badDirection_rank rank_000000002_mask_43_badDirection_mask = rank_000000002_mask_43_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_43_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_43_badDirection_b, rank_000000002_mask_43_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_43_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_43_badDirection_rank rank_000000002_mask_43_badDirection_mask ⟨6, by decide⟩ =
      rank_000000002_mask_43_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_43_badDirection_seqAtRank, rank_000000002_mask_43_badDirection_bAtRank]
  norm_num [rank_000000002_mask_43_badDirection_denom, rank_000000002_mask_43_badDirection_seq, rank_000000002_mask_43_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_43_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_43_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_43_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_43_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_43_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_43_badDirection_denom]

private def rank_000000002_mask_44_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_44_badDirection_mask : SignMask := ⟨44, by decide⟩
private def rank_000000002_mask_44_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_44_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_44_badDirection_b : Vec3 Rat := { x := (-52/9), y := (44/9), z := (-20/9) }
private def rank_000000002_mask_44_badDirection_denom : Rat := (-44/9)

private theorem rank_000000002_mask_44_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_44_badDirection_word = some rank_000000002_mask_44_badDirection_rank := by
  decide

private theorem rank_000000002_mask_44_badDirection_unrank :
    unrankPairWord rank_000000002_mask_44_badDirection_rank = rank_000000002_mask_44_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_44_badDirection_word rank_000000002_mask_44_badDirection_rank).1
    rank_000000002_mask_44_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_44_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_44_badDirection_word rank_000000002_mask_44_badDirection_mask = rank_000000002_mask_44_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_44_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_44_badDirection_rank rank_000000002_mask_44_badDirection_mask = rank_000000002_mask_44_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_44_badDirection_unrank]
  exact rank_000000002_mask_44_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_44_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_44_badDirection_rank rank_000000002_mask_44_badDirection_mask = rank_000000002_mask_44_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_44_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_44_badDirection_b, rank_000000002_mask_44_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_44_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_44_badDirection_rank rank_000000002_mask_44_badDirection_mask ⟨2, by decide⟩ =
      rank_000000002_mask_44_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_44_badDirection_seqAtRank, rank_000000002_mask_44_badDirection_bAtRank]
  norm_num [rank_000000002_mask_44_badDirection_denom, rank_000000002_mask_44_badDirection_seq, rank_000000002_mask_44_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_44_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_44_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_44_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_44_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_44_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_44_badDirection_denom]

private def rank_000000002_mask_45_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_45_badDirection_mask : SignMask := ⟨45, by decide⟩
private def rank_000000002_mask_45_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_45_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_45_badDirection_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (-20/9) }
private def rank_000000002_mask_45_badDirection_denom : Rat := (-4/3)

private theorem rank_000000002_mask_45_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_45_badDirection_word = some rank_000000002_mask_45_badDirection_rank := by
  decide

private theorem rank_000000002_mask_45_badDirection_unrank :
    unrankPairWord rank_000000002_mask_45_badDirection_rank = rank_000000002_mask_45_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_45_badDirection_word rank_000000002_mask_45_badDirection_rank).1
    rank_000000002_mask_45_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_45_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_45_badDirection_word rank_000000002_mask_45_badDirection_mask = rank_000000002_mask_45_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_45_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_45_badDirection_rank rank_000000002_mask_45_badDirection_mask = rank_000000002_mask_45_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_45_badDirection_unrank]
  exact rank_000000002_mask_45_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_45_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_45_badDirection_rank rank_000000002_mask_45_badDirection_mask = rank_000000002_mask_45_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_45_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_45_badDirection_b, rank_000000002_mask_45_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_45_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_45_badDirection_rank rank_000000002_mask_45_badDirection_mask ⟨11, by decide⟩ =
      rank_000000002_mask_45_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_45_badDirection_seqAtRank, rank_000000002_mask_45_badDirection_bAtRank]
  norm_num [rank_000000002_mask_45_badDirection_denom, rank_000000002_mask_45_badDirection_seq, rank_000000002_mask_45_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_45_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_45_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_45_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_45_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_45_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_45_badDirection_denom]

private def rank_000000002_mask_46_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_46_badDirection_mask : SignMask := ⟨46, by decide⟩
private def rank_000000002_mask_46_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_46_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def rank_000000002_mask_46_badDirection_b : Vec3 Rat := { x := (-52/9), y := (44/9), z := (52/9) }
private def rank_000000002_mask_46_badDirection_denom : Rat := (-44/9)

private theorem rank_000000002_mask_46_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_46_badDirection_word = some rank_000000002_mask_46_badDirection_rank := by
  decide

private theorem rank_000000002_mask_46_badDirection_unrank :
    unrankPairWord rank_000000002_mask_46_badDirection_rank = rank_000000002_mask_46_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_46_badDirection_word rank_000000002_mask_46_badDirection_rank).1
    rank_000000002_mask_46_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_46_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_46_badDirection_word rank_000000002_mask_46_badDirection_mask = rank_000000002_mask_46_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_46_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_46_badDirection_rank rank_000000002_mask_46_badDirection_mask = rank_000000002_mask_46_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_46_badDirection_unrank]
  exact rank_000000002_mask_46_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_46_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_46_badDirection_rank rank_000000002_mask_46_badDirection_mask = rank_000000002_mask_46_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_46_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_46_badDirection_b, rank_000000002_mask_46_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_46_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_46_badDirection_rank rank_000000002_mask_46_badDirection_mask ⟨2, by decide⟩ =
      rank_000000002_mask_46_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_46_badDirection_seqAtRank, rank_000000002_mask_46_badDirection_bAtRank]
  norm_num [rank_000000002_mask_46_badDirection_denom, rank_000000002_mask_46_badDirection_seq, rank_000000002_mask_46_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_46_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_46_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_46_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_46_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_46_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_46_badDirection_denom]

private def rank_000000002_mask_48_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_48_badDirection_mask : SignMask := ⟨48, by decide⟩
private def rank_000000002_mask_48_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_48_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_48_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-100/9), z := (28/9) }
private def rank_000000002_mask_48_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_48_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_48_badDirection_word = some rank_000000002_mask_48_badDirection_rank := by
  decide

private theorem rank_000000002_mask_48_badDirection_unrank :
    unrankPairWord rank_000000002_mask_48_badDirection_rank = rank_000000002_mask_48_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_48_badDirection_word rank_000000002_mask_48_badDirection_rank).1
    rank_000000002_mask_48_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_48_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_48_badDirection_word rank_000000002_mask_48_badDirection_mask = rank_000000002_mask_48_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_48_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_48_badDirection_rank rank_000000002_mask_48_badDirection_mask = rank_000000002_mask_48_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_48_badDirection_unrank]
  exact rank_000000002_mask_48_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_48_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_48_badDirection_rank rank_000000002_mask_48_badDirection_mask = rank_000000002_mask_48_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_48_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_48_badDirection_b, rank_000000002_mask_48_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_48_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_48_badDirection_rank rank_000000002_mask_48_badDirection_mask ⟨4, by decide⟩ =
      rank_000000002_mask_48_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_48_badDirection_seqAtRank, rank_000000002_mask_48_badDirection_bAtRank]
  norm_num [rank_000000002_mask_48_badDirection_denom, rank_000000002_mask_48_badDirection_seq, rank_000000002_mask_48_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_48_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_48_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_48_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_48_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_48_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_48_badDirection_denom]

private def rank_000000002_mask_49_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_49_badDirection_mask : SignMask := ⟨49, by decide⟩
private def rank_000000002_mask_49_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_49_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_49_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-28/9), z := (28/9) }
private def rank_000000002_mask_49_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_49_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_49_badDirection_word = some rank_000000002_mask_49_badDirection_rank := by
  decide

private theorem rank_000000002_mask_49_badDirection_unrank :
    unrankPairWord rank_000000002_mask_49_badDirection_rank = rank_000000002_mask_49_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_49_badDirection_word rank_000000002_mask_49_badDirection_rank).1
    rank_000000002_mask_49_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_49_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_49_badDirection_word rank_000000002_mask_49_badDirection_mask = rank_000000002_mask_49_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_49_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_49_badDirection_rank rank_000000002_mask_49_badDirection_mask = rank_000000002_mask_49_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_49_badDirection_unrank]
  exact rank_000000002_mask_49_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_49_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_49_badDirection_rank rank_000000002_mask_49_badDirection_mask = rank_000000002_mask_49_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_49_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_49_badDirection_b, rank_000000002_mask_49_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_49_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_49_badDirection_rank rank_000000002_mask_49_badDirection_mask ⟨2, by decide⟩ =
      rank_000000002_mask_49_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_49_badDirection_seqAtRank, rank_000000002_mask_49_badDirection_bAtRank]
  norm_num [rank_000000002_mask_49_badDirection_denom, rank_000000002_mask_49_badDirection_seq, rank_000000002_mask_49_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_49_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_49_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_49_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_49_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_49_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_49_badDirection_denom]

private def rank_000000002_mask_50_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_50_badDirection_mask : SignMask := ⟨50, by decide⟩
private def rank_000000002_mask_50_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_50_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_50_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-100/9), z := (100/9) }
private def rank_000000002_mask_50_badDirection_denom : Rat := (-4/9)

private theorem rank_000000002_mask_50_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_50_badDirection_word = some rank_000000002_mask_50_badDirection_rank := by
  decide

private theorem rank_000000002_mask_50_badDirection_unrank :
    unrankPairWord rank_000000002_mask_50_badDirection_rank = rank_000000002_mask_50_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_50_badDirection_word rank_000000002_mask_50_badDirection_rank).1
    rank_000000002_mask_50_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_50_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_50_badDirection_word rank_000000002_mask_50_badDirection_mask = rank_000000002_mask_50_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_50_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_50_badDirection_rank rank_000000002_mask_50_badDirection_mask = rank_000000002_mask_50_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_50_badDirection_unrank]
  exact rank_000000002_mask_50_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_50_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_50_badDirection_rank rank_000000002_mask_50_badDirection_mask = rank_000000002_mask_50_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_50_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_50_badDirection_b, rank_000000002_mask_50_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_50_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_50_badDirection_rank rank_000000002_mask_50_badDirection_mask ⟨6, by decide⟩ =
      rank_000000002_mask_50_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_50_badDirection_seqAtRank, rank_000000002_mask_50_badDirection_bAtRank]
  norm_num [rank_000000002_mask_50_badDirection_denom, rank_000000002_mask_50_badDirection_seq, rank_000000002_mask_50_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_50_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_50_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_50_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_50_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_50_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_50_badDirection_denom]

private def rank_000000002_mask_51_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_51_badDirection_mask : SignMask := ⟨51, by decide⟩
private def rank_000000002_mask_51_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_51_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_51_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-28/9), z := (100/9) }
private def rank_000000002_mask_51_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_51_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_51_badDirection_word = some rank_000000002_mask_51_badDirection_rank := by
  decide

private theorem rank_000000002_mask_51_badDirection_unrank :
    unrankPairWord rank_000000002_mask_51_badDirection_rank = rank_000000002_mask_51_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_51_badDirection_word rank_000000002_mask_51_badDirection_rank).1
    rank_000000002_mask_51_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_51_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_51_badDirection_word rank_000000002_mask_51_badDirection_mask = rank_000000002_mask_51_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_51_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_51_badDirection_rank rank_000000002_mask_51_badDirection_mask = rank_000000002_mask_51_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_51_badDirection_unrank]
  exact rank_000000002_mask_51_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_51_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_51_badDirection_rank rank_000000002_mask_51_badDirection_mask = rank_000000002_mask_51_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_51_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_51_badDirection_b, rank_000000002_mask_51_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_51_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_51_badDirection_rank rank_000000002_mask_51_badDirection_mask ⟨2, by decide⟩ =
      rank_000000002_mask_51_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_51_badDirection_seqAtRank, rank_000000002_mask_51_badDirection_bAtRank]
  norm_num [rank_000000002_mask_51_badDirection_denom, rank_000000002_mask_51_badDirection_seq, rank_000000002_mask_51_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_51_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_51_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_51_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_51_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_51_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_51_badDirection_denom]

private def rank_000000002_mask_52_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_52_badDirection_mask : SignMask := ⟨52, by decide⟩
private def rank_000000002_mask_52_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_52_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_52_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (76/9) }
private def rank_000000002_mask_52_badDirection_denom : Rat := (-76/9)

private theorem rank_000000002_mask_52_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_52_badDirection_word = some rank_000000002_mask_52_badDirection_rank := by
  decide

private theorem rank_000000002_mask_52_badDirection_unrank :
    unrankPairWord rank_000000002_mask_52_badDirection_rank = rank_000000002_mask_52_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_52_badDirection_word rank_000000002_mask_52_badDirection_rank).1
    rank_000000002_mask_52_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_52_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_52_badDirection_word rank_000000002_mask_52_badDirection_mask = rank_000000002_mask_52_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_52_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_52_badDirection_rank rank_000000002_mask_52_badDirection_mask = rank_000000002_mask_52_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_52_badDirection_unrank]
  exact rank_000000002_mask_52_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_52_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_52_badDirection_rank rank_000000002_mask_52_badDirection_mask = rank_000000002_mask_52_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_52_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_52_badDirection_b, rank_000000002_mask_52_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_52_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_52_badDirection_rank rank_000000002_mask_52_badDirection_mask ⟨4, by decide⟩ =
      rank_000000002_mask_52_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_52_badDirection_seqAtRank, rank_000000002_mask_52_badDirection_bAtRank]
  norm_num [rank_000000002_mask_52_badDirection_denom, rank_000000002_mask_52_badDirection_seq, rank_000000002_mask_52_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_52_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_52_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_52_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_52_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_52_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_52_badDirection_denom]

private def rank_000000002_mask_53_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_53_badDirection_mask : SignMask := ⟨53, by decide⟩
private def rank_000000002_mask_53_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_53_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_53_badDirection_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (76/9) }
private def rank_000000002_mask_53_badDirection_denom : Rat := (-76/9)

private theorem rank_000000002_mask_53_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_53_badDirection_word = some rank_000000002_mask_53_badDirection_rank := by
  decide

private theorem rank_000000002_mask_53_badDirection_unrank :
    unrankPairWord rank_000000002_mask_53_badDirection_rank = rank_000000002_mask_53_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_53_badDirection_word rank_000000002_mask_53_badDirection_rank).1
    rank_000000002_mask_53_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_53_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_53_badDirection_word rank_000000002_mask_53_badDirection_mask = rank_000000002_mask_53_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_53_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_53_badDirection_rank rank_000000002_mask_53_badDirection_mask = rank_000000002_mask_53_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_53_badDirection_unrank]
  exact rank_000000002_mask_53_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_53_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_53_badDirection_rank rank_000000002_mask_53_badDirection_mask = rank_000000002_mask_53_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_53_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_53_badDirection_b, rank_000000002_mask_53_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_53_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_53_badDirection_rank rank_000000002_mask_53_badDirection_mask ⟨4, by decide⟩ =
      rank_000000002_mask_53_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_53_badDirection_seqAtRank, rank_000000002_mask_53_badDirection_bAtRank]
  norm_num [rank_000000002_mask_53_badDirection_denom, rank_000000002_mask_53_badDirection_seq, rank_000000002_mask_53_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_53_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_53_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_53_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_53_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_53_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_53_badDirection_denom]

private def rank_000000002_mask_56_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_56_badDirection_mask : SignMask := ⟨56, by decide⟩
private def rank_000000002_mask_56_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_56_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_56_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (-20/9) }
private def rank_000000002_mask_56_badDirection_denom : Rat := (-68/9)

private theorem rank_000000002_mask_56_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_56_badDirection_word = some rank_000000002_mask_56_badDirection_rank := by
  decide

private theorem rank_000000002_mask_56_badDirection_unrank :
    unrankPairWord rank_000000002_mask_56_badDirection_rank = rank_000000002_mask_56_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_56_badDirection_word rank_000000002_mask_56_badDirection_rank).1
    rank_000000002_mask_56_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_56_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_56_badDirection_word rank_000000002_mask_56_badDirection_mask = rank_000000002_mask_56_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_56_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_56_badDirection_rank rank_000000002_mask_56_badDirection_mask = rank_000000002_mask_56_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_56_badDirection_unrank]
  exact rank_000000002_mask_56_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_56_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_56_badDirection_rank rank_000000002_mask_56_badDirection_mask = rank_000000002_mask_56_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_56_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_56_badDirection_b, rank_000000002_mask_56_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_56_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_56_badDirection_rank rank_000000002_mask_56_badDirection_mask ⟨11, by decide⟩ =
      rank_000000002_mask_56_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_56_badDirection_seqAtRank, rank_000000002_mask_56_badDirection_bAtRank]
  norm_num [rank_000000002_mask_56_badDirection_denom, rank_000000002_mask_56_badDirection_seq, rank_000000002_mask_56_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_56_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_56_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_56_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_56_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_56_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_56_badDirection_denom]

private def rank_000000002_mask_57_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_57_badDirection_mask : SignMask := ⟨57, by decide⟩
private def rank_000000002_mask_57_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_57_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_57_badDirection_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (-20/9) }
private def rank_000000002_mask_57_badDirection_denom : Rat := (-52/9)

private theorem rank_000000002_mask_57_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_57_badDirection_word = some rank_000000002_mask_57_badDirection_rank := by
  decide

private theorem rank_000000002_mask_57_badDirection_unrank :
    unrankPairWord rank_000000002_mask_57_badDirection_rank = rank_000000002_mask_57_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_57_badDirection_word rank_000000002_mask_57_badDirection_rank).1
    rank_000000002_mask_57_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_57_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_57_badDirection_word rank_000000002_mask_57_badDirection_mask = rank_000000002_mask_57_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_57_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_57_badDirection_rank rank_000000002_mask_57_badDirection_mask = rank_000000002_mask_57_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_57_badDirection_unrank]
  exact rank_000000002_mask_57_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_57_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_57_badDirection_rank rank_000000002_mask_57_badDirection_mask = rank_000000002_mask_57_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_57_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_57_badDirection_b, rank_000000002_mask_57_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_57_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_57_badDirection_rank rank_000000002_mask_57_badDirection_mask ⟨6, by decide⟩ =
      rank_000000002_mask_57_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_57_badDirection_seqAtRank, rank_000000002_mask_57_badDirection_bAtRank]
  norm_num [rank_000000002_mask_57_badDirection_denom, rank_000000002_mask_57_badDirection_seq, rank_000000002_mask_57_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_57_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_57_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_57_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_57_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_57_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_57_badDirection_denom]

private def rank_000000002_mask_58_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_58_badDirection_mask : SignMask := ⟨58, by decide⟩
private def rank_000000002_mask_58_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_58_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_58_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (52/9) }
private def rank_000000002_mask_58_badDirection_denom : Rat := (-52/9)

private theorem rank_000000002_mask_58_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_58_badDirection_word = some rank_000000002_mask_58_badDirection_rank := by
  decide

private theorem rank_000000002_mask_58_badDirection_unrank :
    unrankPairWord rank_000000002_mask_58_badDirection_rank = rank_000000002_mask_58_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_58_badDirection_word rank_000000002_mask_58_badDirection_rank).1
    rank_000000002_mask_58_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_58_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_58_badDirection_word rank_000000002_mask_58_badDirection_mask = rank_000000002_mask_58_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_58_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_58_badDirection_rank rank_000000002_mask_58_badDirection_mask = rank_000000002_mask_58_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_58_badDirection_unrank]
  exact rank_000000002_mask_58_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_58_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_58_badDirection_rank rank_000000002_mask_58_badDirection_mask = rank_000000002_mask_58_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_58_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_58_badDirection_b, rank_000000002_mask_58_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_58_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_58_badDirection_rank rank_000000002_mask_58_badDirection_mask ⟨6, by decide⟩ =
      rank_000000002_mask_58_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_58_badDirection_seqAtRank, rank_000000002_mask_58_badDirection_bAtRank]
  norm_num [rank_000000002_mask_58_badDirection_denom, rank_000000002_mask_58_badDirection_seq, rank_000000002_mask_58_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_58_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_58_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_58_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_58_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_58_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_58_badDirection_denom]

private def rank_000000002_mask_59_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_59_badDirection_mask : SignMask := ⟨59, by decide⟩
private def rank_000000002_mask_59_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_59_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_59_badDirection_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (52/9) }
private def rank_000000002_mask_59_badDirection_denom : Rat := (-124/9)

private theorem rank_000000002_mask_59_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_59_badDirection_word = some rank_000000002_mask_59_badDirection_rank := by
  decide

private theorem rank_000000002_mask_59_badDirection_unrank :
    unrankPairWord rank_000000002_mask_59_badDirection_rank = rank_000000002_mask_59_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_59_badDirection_word rank_000000002_mask_59_badDirection_rank).1
    rank_000000002_mask_59_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_59_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_59_badDirection_word rank_000000002_mask_59_badDirection_mask = rank_000000002_mask_59_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_59_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_59_badDirection_rank rank_000000002_mask_59_badDirection_mask = rank_000000002_mask_59_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_59_badDirection_unrank]
  exact rank_000000002_mask_59_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_59_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_59_badDirection_rank rank_000000002_mask_59_badDirection_mask = rank_000000002_mask_59_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_59_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_59_badDirection_b, rank_000000002_mask_59_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_59_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_59_badDirection_rank rank_000000002_mask_59_badDirection_mask ⟨6, by decide⟩ =
      rank_000000002_mask_59_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_59_badDirection_seqAtRank, rank_000000002_mask_59_badDirection_bAtRank]
  norm_num [rank_000000002_mask_59_badDirection_denom, rank_000000002_mask_59_badDirection_seq, rank_000000002_mask_59_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_59_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_59_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_59_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_59_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_59_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_59_badDirection_denom]

private def rank_000000002_mask_60_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_60_badDirection_mask : SignMask := ⟨60, by decide⟩
private def rank_000000002_mask_60_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_60_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_60_badDirection_b : Vec3 Rat := { x := (-100/9), y := (-4/9), z := (28/9) }
private def rank_000000002_mask_60_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_60_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_60_badDirection_word = some rank_000000002_mask_60_badDirection_rank := by
  decide

private theorem rank_000000002_mask_60_badDirection_unrank :
    unrankPairWord rank_000000002_mask_60_badDirection_rank = rank_000000002_mask_60_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_60_badDirection_word rank_000000002_mask_60_badDirection_rank).1
    rank_000000002_mask_60_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_60_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_60_badDirection_word rank_000000002_mask_60_badDirection_mask = rank_000000002_mask_60_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_60_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_60_badDirection_rank rank_000000002_mask_60_badDirection_mask = rank_000000002_mask_60_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_60_badDirection_unrank]
  exact rank_000000002_mask_60_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_60_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_60_badDirection_rank rank_000000002_mask_60_badDirection_mask = rank_000000002_mask_60_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_60_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_60_badDirection_b, rank_000000002_mask_60_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_60_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_60_badDirection_rank rank_000000002_mask_60_badDirection_mask ⟨4, by decide⟩ =
      rank_000000002_mask_60_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_60_badDirection_seqAtRank, rank_000000002_mask_60_badDirection_bAtRank]
  norm_num [rank_000000002_mask_60_badDirection_denom, rank_000000002_mask_60_badDirection_seq, rank_000000002_mask_60_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_60_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_60_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_60_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_60_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_60_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_60_badDirection_denom]

private def rank_000000002_mask_61_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_61_badDirection_mask : SignMask := ⟨61, by decide⟩
private def rank_000000002_mask_61_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_61_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_61_badDirection_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (28/9) }
private def rank_000000002_mask_61_badDirection_denom : Rat := (-28/9)

private theorem rank_000000002_mask_61_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_61_badDirection_word = some rank_000000002_mask_61_badDirection_rank := by
  decide

private theorem rank_000000002_mask_61_badDirection_unrank :
    unrankPairWord rank_000000002_mask_61_badDirection_rank = rank_000000002_mask_61_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_61_badDirection_word rank_000000002_mask_61_badDirection_rank).1
    rank_000000002_mask_61_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_61_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_61_badDirection_word rank_000000002_mask_61_badDirection_mask = rank_000000002_mask_61_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_61_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_61_badDirection_rank rank_000000002_mask_61_badDirection_mask = rank_000000002_mask_61_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_61_badDirection_unrank]
  exact rank_000000002_mask_61_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_61_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_61_badDirection_rank rank_000000002_mask_61_badDirection_mask = rank_000000002_mask_61_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_61_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_61_badDirection_b, rank_000000002_mask_61_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_61_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_61_badDirection_rank rank_000000002_mask_61_badDirection_mask ⟨4, by decide⟩ =
      rank_000000002_mask_61_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_61_badDirection_seqAtRank, rank_000000002_mask_61_badDirection_bAtRank]
  norm_num [rank_000000002_mask_61_badDirection_denom, rank_000000002_mask_61_badDirection_seq, rank_000000002_mask_61_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_61_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_61_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_61_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_61_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_61_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_61_badDirection_denom]

private def rank_000000002_mask_62_badDirection_rank : Fin numPairWords := ⟨2, by decide⟩
private def rank_000000002_mask_62_badDirection_mask : SignMask := ⟨62, by decide⟩
private def rank_000000002_mask_62_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def rank_000000002_mask_62_badDirection_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def rank_000000002_mask_62_badDirection_b : Vec3 Rat := { x := (-100/9), y := (-4/9), z := (100/9) }
private def rank_000000002_mask_62_badDirection_denom : Rat := (-4/9)

private theorem rank_000000002_mask_62_badDirection_rankWord :
    rankPairWord? rank_000000002_mask_62_badDirection_word = some rank_000000002_mask_62_badDirection_rank := by
  decide

private theorem rank_000000002_mask_62_badDirection_unrank :
    unrankPairWord rank_000000002_mask_62_badDirection_rank = rank_000000002_mask_62_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000002_mask_62_badDirection_word rank_000000002_mask_62_badDirection_rank).1
    rank_000000002_mask_62_badDirection_rankWord |>.symm

private theorem rank_000000002_mask_62_badDirection_seqChoice :
    translationChoiceSeq rank_000000002_mask_62_badDirection_word rank_000000002_mask_62_badDirection_mask = rank_000000002_mask_62_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000002_mask_62_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000002_mask_62_badDirection_rank rank_000000002_mask_62_badDirection_mask = rank_000000002_mask_62_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000002_mask_62_badDirection_unrank]
  exact rank_000000002_mask_62_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_62_badDirection_bAtRank :
    translationBAtRankMask rank_000000002_mask_62_badDirection_rank rank_000000002_mask_62_badDirection_mask = rank_000000002_mask_62_badDirection_b := by
  rw [translationBAtRankMask, rank_000000002_mask_62_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000002_mask_62_badDirection_b, rank_000000002_mask_62_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000002_mask_62_badDirection_denomAtRank :
    impactDenomAtRank rank_000000002_mask_62_badDirection_rank rank_000000002_mask_62_badDirection_mask ⟨8, by decide⟩ =
      rank_000000002_mask_62_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000002_mask_62_badDirection_seqAtRank, rank_000000002_mask_62_badDirection_bAtRank]
  norm_num [rank_000000002_mask_62_badDirection_denom, rank_000000002_mask_62_badDirection_seq, rank_000000002_mask_62_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000002_mask_62_badDirection_notGood
    (hlt : 2 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords)
      rank_000000002_mask_62_badDirection_mask := by
  have hrank :
      (⟨2, hlt⟩ : Fin numPairWords) = rank_000000002_mask_62_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨2, hlt⟩ : Fin numPairWords))
      (mask := rank_000000002_mask_62_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000002_mask_62_badDirection_denomAtRank]
  norm_num [rank_000000002_mask_62_badDirection_denom]

private def rank_000000003_mask_00_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_00_badDirection_mask : SignMask := ⟨0, by decide⟩
private def rank_000000003_mask_00_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_00_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_00_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-100/9), z := (-100/9) }
private def rank_000000003_mask_00_badDirection_denom : Rat := (-4/9)

private theorem rank_000000003_mask_00_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_00_badDirection_word = some rank_000000003_mask_00_badDirection_rank := by
  decide

private theorem rank_000000003_mask_00_badDirection_unrank :
    unrankPairWord rank_000000003_mask_00_badDirection_rank = rank_000000003_mask_00_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_00_badDirection_word rank_000000003_mask_00_badDirection_rank).1
    rank_000000003_mask_00_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_00_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_00_badDirection_word rank_000000003_mask_00_badDirection_mask = rank_000000003_mask_00_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_00_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_00_badDirection_rank rank_000000003_mask_00_badDirection_mask = rank_000000003_mask_00_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_00_badDirection_unrank]
  exact rank_000000003_mask_00_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_00_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_00_badDirection_rank rank_000000003_mask_00_badDirection_mask = rank_000000003_mask_00_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_00_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_00_badDirection_b, rank_000000003_mask_00_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_00_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_00_badDirection_rank rank_000000003_mask_00_badDirection_mask ⟨8, by decide⟩ =
      rank_000000003_mask_00_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_00_badDirection_seqAtRank, rank_000000003_mask_00_badDirection_bAtRank]
  norm_num [rank_000000003_mask_00_badDirection_denom, rank_000000003_mask_00_badDirection_seq, rank_000000003_mask_00_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_00_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_00_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_00_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_00_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_00_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_00_badDirection_denom]

private def rank_000000003_mask_01_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_01_badDirection_mask : SignMask := ⟨1, by decide⟩
private def rank_000000003_mask_01_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_01_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_01_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-28/9), z := (-100/9) }
private def rank_000000003_mask_01_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_01_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_01_badDirection_word = some rank_000000003_mask_01_badDirection_rank := by
  decide

private theorem rank_000000003_mask_01_badDirection_unrank :
    unrankPairWord rank_000000003_mask_01_badDirection_rank = rank_000000003_mask_01_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_01_badDirection_word rank_000000003_mask_01_badDirection_rank).1
    rank_000000003_mask_01_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_01_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_01_badDirection_word rank_000000003_mask_01_badDirection_mask = rank_000000003_mask_01_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_01_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_01_badDirection_rank rank_000000003_mask_01_badDirection_mask = rank_000000003_mask_01_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_01_badDirection_unrank]
  exact rank_000000003_mask_01_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_01_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_01_badDirection_rank rank_000000003_mask_01_badDirection_mask = rank_000000003_mask_01_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_01_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_01_badDirection_b, rank_000000003_mask_01_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_01_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_01_badDirection_rank rank_000000003_mask_01_badDirection_mask ⟨2, by decide⟩ =
      rank_000000003_mask_01_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_01_badDirection_seqAtRank, rank_000000003_mask_01_badDirection_bAtRank]
  norm_num [rank_000000003_mask_01_badDirection_denom, rank_000000003_mask_01_badDirection_seq, rank_000000003_mask_01_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_01_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_01_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_01_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_01_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_01_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_01_badDirection_denom]

private def rank_000000003_mask_02_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_02_badDirection_mask : SignMask := ⟨2, by decide⟩
private def rank_000000003_mask_02_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_02_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_02_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-100/9), z := (-28/9) }
private def rank_000000003_mask_02_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_02_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_02_badDirection_word = some rank_000000003_mask_02_badDirection_rank := by
  decide

private theorem rank_000000003_mask_02_badDirection_unrank :
    unrankPairWord rank_000000003_mask_02_badDirection_rank = rank_000000003_mask_02_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_02_badDirection_word rank_000000003_mask_02_badDirection_rank).1
    rank_000000003_mask_02_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_02_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_02_badDirection_word rank_000000003_mask_02_badDirection_mask = rank_000000003_mask_02_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_02_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_02_badDirection_rank rank_000000003_mask_02_badDirection_mask = rank_000000003_mask_02_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_02_badDirection_unrank]
  exact rank_000000003_mask_02_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_02_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_02_badDirection_rank rank_000000003_mask_02_badDirection_mask = rank_000000003_mask_02_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_02_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_02_badDirection_b, rank_000000003_mask_02_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_02_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_02_badDirection_rank rank_000000003_mask_02_badDirection_mask ⟨4, by decide⟩ =
      rank_000000003_mask_02_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_02_badDirection_seqAtRank, rank_000000003_mask_02_badDirection_bAtRank]
  norm_num [rank_000000003_mask_02_badDirection_denom, rank_000000003_mask_02_badDirection_seq, rank_000000003_mask_02_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_02_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_02_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_02_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_02_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_02_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_02_badDirection_denom]

private def rank_000000003_mask_03_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_03_badDirection_mask : SignMask := ⟨3, by decide⟩
private def rank_000000003_mask_03_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_03_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_03_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-28/9), z := (-28/9) }
private def rank_000000003_mask_03_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_03_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_03_badDirection_word = some rank_000000003_mask_03_badDirection_rank := by
  decide

private theorem rank_000000003_mask_03_badDirection_unrank :
    unrankPairWord rank_000000003_mask_03_badDirection_rank = rank_000000003_mask_03_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_03_badDirection_word rank_000000003_mask_03_badDirection_rank).1
    rank_000000003_mask_03_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_03_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_03_badDirection_word rank_000000003_mask_03_badDirection_mask = rank_000000003_mask_03_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_03_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_03_badDirection_rank rank_000000003_mask_03_badDirection_mask = rank_000000003_mask_03_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_03_badDirection_unrank]
  exact rank_000000003_mask_03_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_03_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_03_badDirection_rank rank_000000003_mask_03_badDirection_mask = rank_000000003_mask_03_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_03_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_03_badDirection_b, rank_000000003_mask_03_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_03_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_03_badDirection_rank rank_000000003_mask_03_badDirection_mask ⟨2, by decide⟩ =
      rank_000000003_mask_03_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_03_badDirection_seqAtRank, rank_000000003_mask_03_badDirection_bAtRank]
  norm_num [rank_000000003_mask_03_badDirection_denom, rank_000000003_mask_03_badDirection_seq, rank_000000003_mask_03_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_03_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_03_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_03_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_03_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_03_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_03_badDirection_denom]

private def rank_000000003_mask_04_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_04_badDirection_mask : SignMask := ⟨4, by decide⟩
private def rank_000000003_mask_04_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_04_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_04_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (-52/9) }
private def rank_000000003_mask_04_badDirection_denom : Rat := (-52/9)

private theorem rank_000000003_mask_04_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_04_badDirection_word = some rank_000000003_mask_04_badDirection_rank := by
  decide

private theorem rank_000000003_mask_04_badDirection_unrank :
    unrankPairWord rank_000000003_mask_04_badDirection_rank = rank_000000003_mask_04_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_04_badDirection_word rank_000000003_mask_04_badDirection_rank).1
    rank_000000003_mask_04_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_04_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_04_badDirection_word rank_000000003_mask_04_badDirection_mask = rank_000000003_mask_04_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_04_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_04_badDirection_rank rank_000000003_mask_04_badDirection_mask = rank_000000003_mask_04_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_04_badDirection_unrank]
  exact rank_000000003_mask_04_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_04_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_04_badDirection_rank rank_000000003_mask_04_badDirection_mask = rank_000000003_mask_04_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_04_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_04_badDirection_b, rank_000000003_mask_04_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_04_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_04_badDirection_rank rank_000000003_mask_04_badDirection_mask ⟨6, by decide⟩ =
      rank_000000003_mask_04_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_04_badDirection_seqAtRank, rank_000000003_mask_04_badDirection_bAtRank]
  norm_num [rank_000000003_mask_04_badDirection_denom, rank_000000003_mask_04_badDirection_seq, rank_000000003_mask_04_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_04_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_04_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_04_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_04_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_04_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_04_badDirection_denom]

private def rank_000000003_mask_05_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_05_badDirection_mask : SignMask := ⟨5, by decide⟩
private def rank_000000003_mask_05_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_05_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_05_badDirection_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (-52/9) }
private def rank_000000003_mask_05_badDirection_denom : Rat := (-124/9)

private theorem rank_000000003_mask_05_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_05_badDirection_word = some rank_000000003_mask_05_badDirection_rank := by
  decide

private theorem rank_000000003_mask_05_badDirection_unrank :
    unrankPairWord rank_000000003_mask_05_badDirection_rank = rank_000000003_mask_05_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_05_badDirection_word rank_000000003_mask_05_badDirection_rank).1
    rank_000000003_mask_05_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_05_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_05_badDirection_word rank_000000003_mask_05_badDirection_mask = rank_000000003_mask_05_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_05_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_05_badDirection_rank rank_000000003_mask_05_badDirection_mask = rank_000000003_mask_05_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_05_badDirection_unrank]
  exact rank_000000003_mask_05_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_05_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_05_badDirection_rank rank_000000003_mask_05_badDirection_mask = rank_000000003_mask_05_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_05_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_05_badDirection_b, rank_000000003_mask_05_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_05_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_05_badDirection_rank rank_000000003_mask_05_badDirection_mask ⟨8, by decide⟩ =
      rank_000000003_mask_05_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_05_badDirection_seqAtRank, rank_000000003_mask_05_badDirection_bAtRank]
  norm_num [rank_000000003_mask_05_badDirection_denom, rank_000000003_mask_05_badDirection_seq, rank_000000003_mask_05_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_05_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_05_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_05_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_05_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_05_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_05_badDirection_denom]

private def rank_000000003_mask_06_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_06_badDirection_mask : SignMask := ⟨6, by decide⟩
private def rank_000000003_mask_06_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_06_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_06_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (20/9) }
private def rank_000000003_mask_06_badDirection_denom : Rat := (-68/9)

private theorem rank_000000003_mask_06_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_06_badDirection_word = some rank_000000003_mask_06_badDirection_rank := by
  decide

private theorem rank_000000003_mask_06_badDirection_unrank :
    unrankPairWord rank_000000003_mask_06_badDirection_rank = rank_000000003_mask_06_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_06_badDirection_word rank_000000003_mask_06_badDirection_rank).1
    rank_000000003_mask_06_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_06_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_06_badDirection_word rank_000000003_mask_06_badDirection_mask = rank_000000003_mask_06_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_06_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_06_badDirection_rank rank_000000003_mask_06_badDirection_mask = rank_000000003_mask_06_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_06_badDirection_unrank]
  exact rank_000000003_mask_06_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_06_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_06_badDirection_rank rank_000000003_mask_06_badDirection_mask = rank_000000003_mask_06_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_06_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_06_badDirection_b, rank_000000003_mask_06_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_06_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_06_badDirection_rank rank_000000003_mask_06_badDirection_mask ⟨11, by decide⟩ =
      rank_000000003_mask_06_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_06_badDirection_seqAtRank, rank_000000003_mask_06_badDirection_bAtRank]
  norm_num [rank_000000003_mask_06_badDirection_denom, rank_000000003_mask_06_badDirection_seq, rank_000000003_mask_06_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_06_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_06_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_06_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_06_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_06_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_06_badDirection_denom]

private def rank_000000003_mask_07_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_07_badDirection_mask : SignMask := ⟨7, by decide⟩
private def rank_000000003_mask_07_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_07_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_07_badDirection_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (20/9) }
private def rank_000000003_mask_07_badDirection_denom : Rat := (-52/9)

private theorem rank_000000003_mask_07_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_07_badDirection_word = some rank_000000003_mask_07_badDirection_rank := by
  decide

private theorem rank_000000003_mask_07_badDirection_unrank :
    unrankPairWord rank_000000003_mask_07_badDirection_rank = rank_000000003_mask_07_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_07_badDirection_word rank_000000003_mask_07_badDirection_rank).1
    rank_000000003_mask_07_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_07_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_07_badDirection_word rank_000000003_mask_07_badDirection_mask = rank_000000003_mask_07_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_07_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_07_badDirection_rank rank_000000003_mask_07_badDirection_mask = rank_000000003_mask_07_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_07_badDirection_unrank]
  exact rank_000000003_mask_07_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_07_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_07_badDirection_rank rank_000000003_mask_07_badDirection_mask = rank_000000003_mask_07_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_07_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_07_badDirection_b, rank_000000003_mask_07_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_07_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_07_badDirection_rank rank_000000003_mask_07_badDirection_mask ⟨8, by decide⟩ =
      rank_000000003_mask_07_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_07_badDirection_seqAtRank, rank_000000003_mask_07_badDirection_bAtRank]
  norm_num [rank_000000003_mask_07_badDirection_denom, rank_000000003_mask_07_badDirection_seq, rank_000000003_mask_07_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_07_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_07_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_07_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_07_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_07_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_07_badDirection_denom]

private def rank_000000003_mask_10_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_10_badDirection_mask : SignMask := ⟨10, by decide⟩
private def rank_000000003_mask_10_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_10_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_10_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (-76/9) }
private def rank_000000003_mask_10_badDirection_denom : Rat := (-76/9)

private theorem rank_000000003_mask_10_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_10_badDirection_word = some rank_000000003_mask_10_badDirection_rank := by
  decide

private theorem rank_000000003_mask_10_badDirection_unrank :
    unrankPairWord rank_000000003_mask_10_badDirection_rank = rank_000000003_mask_10_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_10_badDirection_word rank_000000003_mask_10_badDirection_rank).1
    rank_000000003_mask_10_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_10_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_10_badDirection_word rank_000000003_mask_10_badDirection_mask = rank_000000003_mask_10_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_10_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_10_badDirection_rank rank_000000003_mask_10_badDirection_mask = rank_000000003_mask_10_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_10_badDirection_unrank]
  exact rank_000000003_mask_10_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_10_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_10_badDirection_rank rank_000000003_mask_10_badDirection_mask = rank_000000003_mask_10_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_10_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_10_badDirection_b, rank_000000003_mask_10_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_10_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_10_badDirection_rank rank_000000003_mask_10_badDirection_mask ⟨4, by decide⟩ =
      rank_000000003_mask_10_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_10_badDirection_seqAtRank, rank_000000003_mask_10_badDirection_bAtRank]
  norm_num [rank_000000003_mask_10_badDirection_denom, rank_000000003_mask_10_badDirection_seq, rank_000000003_mask_10_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_10_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_10_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_10_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_10_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_10_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_10_badDirection_denom]

private def rank_000000003_mask_11_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_11_badDirection_mask : SignMask := ⟨11, by decide⟩
private def rank_000000003_mask_11_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_11_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_11_badDirection_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (-76/9) }
private def rank_000000003_mask_11_badDirection_denom : Rat := (-76/9)

private theorem rank_000000003_mask_11_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_11_badDirection_word = some rank_000000003_mask_11_badDirection_rank := by
  decide

private theorem rank_000000003_mask_11_badDirection_unrank :
    unrankPairWord rank_000000003_mask_11_badDirection_rank = rank_000000003_mask_11_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_11_badDirection_word rank_000000003_mask_11_badDirection_rank).1
    rank_000000003_mask_11_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_11_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_11_badDirection_word rank_000000003_mask_11_badDirection_mask = rank_000000003_mask_11_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_11_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_11_badDirection_rank rank_000000003_mask_11_badDirection_mask = rank_000000003_mask_11_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_11_badDirection_unrank]
  exact rank_000000003_mask_11_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_11_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_11_badDirection_rank rank_000000003_mask_11_badDirection_mask = rank_000000003_mask_11_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_11_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_11_badDirection_b, rank_000000003_mask_11_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_11_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_11_badDirection_rank rank_000000003_mask_11_badDirection_mask ⟨4, by decide⟩ =
      rank_000000003_mask_11_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_11_badDirection_seqAtRank, rank_000000003_mask_11_badDirection_bAtRank]
  norm_num [rank_000000003_mask_11_badDirection_denom, rank_000000003_mask_11_badDirection_seq, rank_000000003_mask_11_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_11_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_11_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_11_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_11_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_11_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_11_badDirection_denom]

private def rank_000000003_mask_12_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_12_badDirection_mask : SignMask := ⟨12, by decide⟩
private def rank_000000003_mask_12_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_12_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_12_badDirection_b : Vec3 Rat := { x := (-100/9), y := (-4/9), z := (-100/9) }
private def rank_000000003_mask_12_badDirection_denom : Rat := (-4/9)

private theorem rank_000000003_mask_12_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_12_badDirection_word = some rank_000000003_mask_12_badDirection_rank := by
  decide

private theorem rank_000000003_mask_12_badDirection_unrank :
    unrankPairWord rank_000000003_mask_12_badDirection_rank = rank_000000003_mask_12_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_12_badDirection_word rank_000000003_mask_12_badDirection_rank).1
    rank_000000003_mask_12_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_12_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_12_badDirection_word rank_000000003_mask_12_badDirection_mask = rank_000000003_mask_12_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_12_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_12_badDirection_rank rank_000000003_mask_12_badDirection_mask = rank_000000003_mask_12_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_12_badDirection_unrank]
  exact rank_000000003_mask_12_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_12_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_12_badDirection_rank rank_000000003_mask_12_badDirection_mask = rank_000000003_mask_12_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_12_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_12_badDirection_b, rank_000000003_mask_12_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_12_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_12_badDirection_rank rank_000000003_mask_12_badDirection_mask ⟨6, by decide⟩ =
      rank_000000003_mask_12_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_12_badDirection_seqAtRank, rank_000000003_mask_12_badDirection_bAtRank]
  norm_num [rank_000000003_mask_12_badDirection_denom, rank_000000003_mask_12_badDirection_seq, rank_000000003_mask_12_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_12_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_12_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_12_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_12_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_12_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_12_badDirection_denom]

private def rank_000000003_mask_14_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_14_badDirection_mask : SignMask := ⟨14, by decide⟩
private def rank_000000003_mask_14_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_14_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_14_badDirection_b : Vec3 Rat := { x := (-100/9), y := (-4/9), z := (-28/9) }
private def rank_000000003_mask_14_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_14_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_14_badDirection_word = some rank_000000003_mask_14_badDirection_rank := by
  decide

private theorem rank_000000003_mask_14_badDirection_unrank :
    unrankPairWord rank_000000003_mask_14_badDirection_rank = rank_000000003_mask_14_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_14_badDirection_word rank_000000003_mask_14_badDirection_rank).1
    rank_000000003_mask_14_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_14_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_14_badDirection_word rank_000000003_mask_14_badDirection_mask = rank_000000003_mask_14_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_14_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_14_badDirection_rank rank_000000003_mask_14_badDirection_mask = rank_000000003_mask_14_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_14_badDirection_unrank]
  exact rank_000000003_mask_14_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_14_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_14_badDirection_rank rank_000000003_mask_14_badDirection_mask = rank_000000003_mask_14_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_14_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_14_badDirection_b, rank_000000003_mask_14_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_14_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_14_badDirection_rank rank_000000003_mask_14_badDirection_mask ⟨4, by decide⟩ =
      rank_000000003_mask_14_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_14_badDirection_seqAtRank, rank_000000003_mask_14_badDirection_bAtRank]
  norm_num [rank_000000003_mask_14_badDirection_denom, rank_000000003_mask_14_badDirection_seq, rank_000000003_mask_14_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_14_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_14_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_14_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_14_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_14_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_14_badDirection_denom]

private def rank_000000003_mask_15_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_15_badDirection_mask : SignMask := ⟨15, by decide⟩
private def rank_000000003_mask_15_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_15_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_15_badDirection_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (-28/9) }
private def rank_000000003_mask_15_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_15_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_15_badDirection_word = some rank_000000003_mask_15_badDirection_rank := by
  decide

private theorem rank_000000003_mask_15_badDirection_unrank :
    unrankPairWord rank_000000003_mask_15_badDirection_rank = rank_000000003_mask_15_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_15_badDirection_word rank_000000003_mask_15_badDirection_rank).1
    rank_000000003_mask_15_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_15_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_15_badDirection_word rank_000000003_mask_15_badDirection_mask = rank_000000003_mask_15_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_15_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_15_badDirection_rank rank_000000003_mask_15_badDirection_mask = rank_000000003_mask_15_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_15_badDirection_unrank]
  exact rank_000000003_mask_15_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_15_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_15_badDirection_rank rank_000000003_mask_15_badDirection_mask = rank_000000003_mask_15_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_15_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_15_badDirection_b, rank_000000003_mask_15_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_15_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_15_badDirection_rank rank_000000003_mask_15_badDirection_mask ⟨4, by decide⟩ =
      rank_000000003_mask_15_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_15_badDirection_seqAtRank, rank_000000003_mask_15_badDirection_bAtRank]
  norm_num [rank_000000003_mask_15_badDirection_denom, rank_000000003_mask_15_badDirection_seq, rank_000000003_mask_15_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_15_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_15_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_15_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_15_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_15_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_15_badDirection_denom]

private def rank_000000003_mask_17_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_17_badDirection_mask : SignMask := ⟨17, by decide⟩
private def rank_000000003_mask_17_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_17_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_17_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-44/9), z := (-20/9) }
private def rank_000000003_mask_17_badDirection_denom : Rat := (-44/9)

private theorem rank_000000003_mask_17_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_17_badDirection_word = some rank_000000003_mask_17_badDirection_rank := by
  decide

private theorem rank_000000003_mask_17_badDirection_unrank :
    unrankPairWord rank_000000003_mask_17_badDirection_rank = rank_000000003_mask_17_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_17_badDirection_word rank_000000003_mask_17_badDirection_rank).1
    rank_000000003_mask_17_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_17_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_17_badDirection_word rank_000000003_mask_17_badDirection_mask = rank_000000003_mask_17_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_17_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_17_badDirection_rank rank_000000003_mask_17_badDirection_mask = rank_000000003_mask_17_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_17_badDirection_unrank]
  exact rank_000000003_mask_17_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_17_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_17_badDirection_rank rank_000000003_mask_17_badDirection_mask = rank_000000003_mask_17_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_17_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_17_badDirection_b, rank_000000003_mask_17_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_17_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_17_badDirection_rank rank_000000003_mask_17_badDirection_mask ⟨2, by decide⟩ =
      rank_000000003_mask_17_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_17_badDirection_seqAtRank, rank_000000003_mask_17_badDirection_bAtRank]
  norm_num [rank_000000003_mask_17_badDirection_denom, rank_000000003_mask_17_badDirection_seq, rank_000000003_mask_17_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_17_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_17_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_17_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_17_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_17_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_17_badDirection_denom]

private def rank_000000003_mask_19_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_19_badDirection_mask : SignMask := ⟨19, by decide⟩
private def rank_000000003_mask_19_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_19_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_19_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-44/9), z := (52/9) }
private def rank_000000003_mask_19_badDirection_denom : Rat := (-44/9)

private theorem rank_000000003_mask_19_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_19_badDirection_word = some rank_000000003_mask_19_badDirection_rank := by
  decide

private theorem rank_000000003_mask_19_badDirection_unrank :
    unrankPairWord rank_000000003_mask_19_badDirection_rank = rank_000000003_mask_19_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_19_badDirection_word rank_000000003_mask_19_badDirection_rank).1
    rank_000000003_mask_19_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_19_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_19_badDirection_word rank_000000003_mask_19_badDirection_mask = rank_000000003_mask_19_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_19_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_19_badDirection_rank rank_000000003_mask_19_badDirection_mask = rank_000000003_mask_19_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_19_badDirection_unrank]
  exact rank_000000003_mask_19_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_19_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_19_badDirection_rank rank_000000003_mask_19_badDirection_mask = rank_000000003_mask_19_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_19_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_19_badDirection_b, rank_000000003_mask_19_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_19_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_19_badDirection_rank rank_000000003_mask_19_badDirection_mask ⟨2, by decide⟩ =
      rank_000000003_mask_19_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_19_badDirection_seqAtRank, rank_000000003_mask_19_badDirection_bAtRank]
  norm_num [rank_000000003_mask_19_badDirection_denom, rank_000000003_mask_19_badDirection_seq, rank_000000003_mask_19_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_19_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_19_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_19_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_19_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_19_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_19_badDirection_denom]

private def rank_000000003_mask_20_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_20_badDirection_mask : SignMask := ⟨20, by decide⟩
private def rank_000000003_mask_20_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_20_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_20_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (28/9) }
private def rank_000000003_mask_20_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_20_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_20_badDirection_word = some rank_000000003_mask_20_badDirection_rank := by
  decide

private theorem rank_000000003_mask_20_badDirection_unrank :
    unrankPairWord rank_000000003_mask_20_badDirection_rank = rank_000000003_mask_20_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_20_badDirection_word rank_000000003_mask_20_badDirection_rank).1
    rank_000000003_mask_20_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_20_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_20_badDirection_word rank_000000003_mask_20_badDirection_mask = rank_000000003_mask_20_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_20_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_20_badDirection_rank rank_000000003_mask_20_badDirection_mask = rank_000000003_mask_20_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_20_badDirection_unrank]
  exact rank_000000003_mask_20_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_20_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_20_badDirection_rank rank_000000003_mask_20_badDirection_mask = rank_000000003_mask_20_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_20_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_20_badDirection_b, rank_000000003_mask_20_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_20_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_20_badDirection_rank rank_000000003_mask_20_badDirection_mask ⟨4, by decide⟩ =
      rank_000000003_mask_20_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_20_badDirection_seqAtRank, rank_000000003_mask_20_badDirection_bAtRank]
  norm_num [rank_000000003_mask_20_badDirection_denom, rank_000000003_mask_20_badDirection_seq, rank_000000003_mask_20_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_20_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_20_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_20_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_20_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_20_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_20_badDirection_denom]

private def rank_000000003_mask_21_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_21_badDirection_mask : SignMask := ⟨21, by decide⟩
private def rank_000000003_mask_21_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_21_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_21_badDirection_b : Vec3 Rat := { x := (-68/9), y := (4/9), z := (28/9) }
private def rank_000000003_mask_21_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_21_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_21_badDirection_word = some rank_000000003_mask_21_badDirection_rank := by
  decide

private theorem rank_000000003_mask_21_badDirection_unrank :
    unrankPairWord rank_000000003_mask_21_badDirection_rank = rank_000000003_mask_21_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_21_badDirection_word rank_000000003_mask_21_badDirection_rank).1
    rank_000000003_mask_21_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_21_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_21_badDirection_word rank_000000003_mask_21_badDirection_mask = rank_000000003_mask_21_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_21_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_21_badDirection_rank rank_000000003_mask_21_badDirection_mask = rank_000000003_mask_21_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_21_badDirection_unrank]
  exact rank_000000003_mask_21_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_21_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_21_badDirection_rank rank_000000003_mask_21_badDirection_mask = rank_000000003_mask_21_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_21_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_21_badDirection_b, rank_000000003_mask_21_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_21_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_21_badDirection_rank rank_000000003_mask_21_badDirection_mask ⟨4, by decide⟩ =
      rank_000000003_mask_21_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_21_badDirection_seqAtRank, rank_000000003_mask_21_badDirection_bAtRank]
  norm_num [rank_000000003_mask_21_badDirection_denom, rank_000000003_mask_21_badDirection_seq, rank_000000003_mask_21_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_21_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_21_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_21_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_21_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_21_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_21_badDirection_denom]

private def rank_000000003_mask_23_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_23_badDirection_mask : SignMask := ⟨23, by decide⟩
private def rank_000000003_mask_23_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_23_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_23_badDirection_b : Vec3 Rat := { x := (-68/9), y := (4/9), z := (100/9) }
private def rank_000000003_mask_23_badDirection_denom : Rat := -4

private theorem rank_000000003_mask_23_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_23_badDirection_word = some rank_000000003_mask_23_badDirection_rank := by
  decide

private theorem rank_000000003_mask_23_badDirection_unrank :
    unrankPairWord rank_000000003_mask_23_badDirection_rank = rank_000000003_mask_23_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_23_badDirection_word rank_000000003_mask_23_badDirection_rank).1
    rank_000000003_mask_23_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_23_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_23_badDirection_word rank_000000003_mask_23_badDirection_mask = rank_000000003_mask_23_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_23_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_23_badDirection_rank rank_000000003_mask_23_badDirection_mask = rank_000000003_mask_23_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_23_badDirection_unrank]
  exact rank_000000003_mask_23_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_23_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_23_badDirection_rank rank_000000003_mask_23_badDirection_mask = rank_000000003_mask_23_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_23_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_23_badDirection_b, rank_000000003_mask_23_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_23_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_23_badDirection_rank rank_000000003_mask_23_badDirection_mask ⟨10, by decide⟩ =
      rank_000000003_mask_23_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_23_badDirection_seqAtRank, rank_000000003_mask_23_badDirection_bAtRank]
  norm_num [rank_000000003_mask_23_badDirection_denom, rank_000000003_mask_23_badDirection_seq, rank_000000003_mask_23_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_23_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_23_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_23_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_23_badDirection_mask)
      (i := ⟨10, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_23_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_23_badDirection_denom]

private def rank_000000003_mask_24_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_24_badDirection_mask : SignMask := ⟨24, by decide⟩
private def rank_000000003_mask_24_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_24_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_24_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (-68/9) }
private def rank_000000003_mask_24_badDirection_denom : Rat := (-68/9)

private theorem rank_000000003_mask_24_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_24_badDirection_word = some rank_000000003_mask_24_badDirection_rank := by
  decide

private theorem rank_000000003_mask_24_badDirection_unrank :
    unrankPairWord rank_000000003_mask_24_badDirection_rank = rank_000000003_mask_24_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_24_badDirection_word rank_000000003_mask_24_badDirection_rank).1
    rank_000000003_mask_24_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_24_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_24_badDirection_word rank_000000003_mask_24_badDirection_mask = rank_000000003_mask_24_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_24_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_24_badDirection_rank rank_000000003_mask_24_badDirection_mask = rank_000000003_mask_24_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_24_badDirection_unrank]
  exact rank_000000003_mask_24_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_24_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_24_badDirection_rank rank_000000003_mask_24_badDirection_mask = rank_000000003_mask_24_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_24_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_24_badDirection_b, rank_000000003_mask_24_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_24_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_24_badDirection_rank rank_000000003_mask_24_badDirection_mask ⟨11, by decide⟩ =
      rank_000000003_mask_24_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_24_badDirection_seqAtRank, rank_000000003_mask_24_badDirection_bAtRank]
  norm_num [rank_000000003_mask_24_badDirection_denom, rank_000000003_mask_24_badDirection_seq, rank_000000003_mask_24_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_24_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_24_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_24_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_24_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_24_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_24_badDirection_denom]

private def rank_000000003_mask_25_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_25_badDirection_mask : SignMask := ⟨25, by decide⟩
private def rank_000000003_mask_25_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_25_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_25_badDirection_b : Vec3 Rat := { x := (-68/9), y := (4/9), z := (-68/9) }
private def rank_000000003_mask_25_badDirection_denom : Rat := (-4/9)

private theorem rank_000000003_mask_25_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_25_badDirection_word = some rank_000000003_mask_25_badDirection_rank := by
  decide

private theorem rank_000000003_mask_25_badDirection_unrank :
    unrankPairWord rank_000000003_mask_25_badDirection_rank = rank_000000003_mask_25_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_25_badDirection_word rank_000000003_mask_25_badDirection_rank).1
    rank_000000003_mask_25_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_25_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_25_badDirection_word rank_000000003_mask_25_badDirection_mask = rank_000000003_mask_25_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_25_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_25_badDirection_rank rank_000000003_mask_25_badDirection_mask = rank_000000003_mask_25_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_25_badDirection_unrank]
  exact rank_000000003_mask_25_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_25_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_25_badDirection_rank rank_000000003_mask_25_badDirection_mask = rank_000000003_mask_25_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_25_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_25_badDirection_b, rank_000000003_mask_25_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_25_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_25_badDirection_rank rank_000000003_mask_25_badDirection_mask ⟨6, by decide⟩ =
      rank_000000003_mask_25_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_25_badDirection_seqAtRank, rank_000000003_mask_25_badDirection_bAtRank]
  norm_num [rank_000000003_mask_25_badDirection_denom, rank_000000003_mask_25_badDirection_seq, rank_000000003_mask_25_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_25_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_25_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_25_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_25_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_25_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_25_badDirection_denom]

private def rank_000000003_mask_26_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_26_badDirection_mask : SignMask := ⟨26, by decide⟩
private def rank_000000003_mask_26_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_26_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_26_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (4/9) }
private def rank_000000003_mask_26_badDirection_denom : Rat := (-4/9)

private theorem rank_000000003_mask_26_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_26_badDirection_word = some rank_000000003_mask_26_badDirection_rank := by
  decide

private theorem rank_000000003_mask_26_badDirection_unrank :
    unrankPairWord rank_000000003_mask_26_badDirection_rank = rank_000000003_mask_26_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_26_badDirection_word rank_000000003_mask_26_badDirection_rank).1
    rank_000000003_mask_26_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_26_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_26_badDirection_word rank_000000003_mask_26_badDirection_mask = rank_000000003_mask_26_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_26_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_26_badDirection_rank rank_000000003_mask_26_badDirection_mask = rank_000000003_mask_26_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_26_badDirection_unrank]
  exact rank_000000003_mask_26_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_26_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_26_badDirection_rank rank_000000003_mask_26_badDirection_mask = rank_000000003_mask_26_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_26_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_26_badDirection_b, rank_000000003_mask_26_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_26_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_26_badDirection_rank rank_000000003_mask_26_badDirection_mask ⟨6, by decide⟩ =
      rank_000000003_mask_26_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_26_badDirection_seqAtRank, rank_000000003_mask_26_badDirection_bAtRank]
  norm_num [rank_000000003_mask_26_badDirection_denom, rank_000000003_mask_26_badDirection_seq, rank_000000003_mask_26_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_26_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_26_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_26_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_26_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_26_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_26_badDirection_denom]

private def rank_000000003_mask_27_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_27_badDirection_mask : SignMask := ⟨27, by decide⟩
private def rank_000000003_mask_27_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_27_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_27_badDirection_b : Vec3 Rat := { x := (-68/9), y := (4/9), z := (4/9) }
private def rank_000000003_mask_27_badDirection_denom : Rat := (-76/9)

private theorem rank_000000003_mask_27_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_27_badDirection_word = some rank_000000003_mask_27_badDirection_rank := by
  decide

private theorem rank_000000003_mask_27_badDirection_unrank :
    unrankPairWord rank_000000003_mask_27_badDirection_rank = rank_000000003_mask_27_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_27_badDirection_word rank_000000003_mask_27_badDirection_rank).1
    rank_000000003_mask_27_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_27_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_27_badDirection_word rank_000000003_mask_27_badDirection_mask = rank_000000003_mask_27_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_27_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_27_badDirection_rank rank_000000003_mask_27_badDirection_mask = rank_000000003_mask_27_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_27_badDirection_unrank]
  exact rank_000000003_mask_27_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_27_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_27_badDirection_rank rank_000000003_mask_27_badDirection_mask = rank_000000003_mask_27_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_27_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_27_badDirection_b, rank_000000003_mask_27_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_27_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_27_badDirection_rank rank_000000003_mask_27_badDirection_mask ⟨6, by decide⟩ =
      rank_000000003_mask_27_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_27_badDirection_seqAtRank, rank_000000003_mask_27_badDirection_bAtRank]
  norm_num [rank_000000003_mask_27_badDirection_denom, rank_000000003_mask_27_badDirection_seq, rank_000000003_mask_27_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_27_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_27_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_27_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_27_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_27_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_27_badDirection_denom]

private def rank_000000003_mask_29_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_29_badDirection_mask : SignMask := ⟨29, by decide⟩
private def rank_000000003_mask_29_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_29_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000000003_mask_29_badDirection_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (-20/9) }
private def rank_000000003_mask_29_badDirection_denom : Rat := (-4/3)

private theorem rank_000000003_mask_29_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_29_badDirection_word = some rank_000000003_mask_29_badDirection_rank := by
  decide

private theorem rank_000000003_mask_29_badDirection_unrank :
    unrankPairWord rank_000000003_mask_29_badDirection_rank = rank_000000003_mask_29_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_29_badDirection_word rank_000000003_mask_29_badDirection_rank).1
    rank_000000003_mask_29_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_29_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_29_badDirection_word rank_000000003_mask_29_badDirection_mask = rank_000000003_mask_29_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_29_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_29_badDirection_rank rank_000000003_mask_29_badDirection_mask = rank_000000003_mask_29_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_29_badDirection_unrank]
  exact rank_000000003_mask_29_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_29_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_29_badDirection_rank rank_000000003_mask_29_badDirection_mask = rank_000000003_mask_29_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_29_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_29_badDirection_b, rank_000000003_mask_29_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_29_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_29_badDirection_rank rank_000000003_mask_29_badDirection_mask ⟨11, by decide⟩ =
      rank_000000003_mask_29_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_29_badDirection_seqAtRank, rank_000000003_mask_29_badDirection_bAtRank]
  norm_num [rank_000000003_mask_29_badDirection_denom, rank_000000003_mask_29_badDirection_seq, rank_000000003_mask_29_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_29_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_29_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_29_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_29_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_29_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_29_badDirection_denom]

private def rank_000000003_mask_32_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_32_badDirection_mask : SignMask := ⟨32, by decide⟩
private def rank_000000003_mask_32_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_32_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_32_badDirection_b : Vec3 Rat := { x := (44/9), y := (-52/9), z := (-52/9) }
private def rank_000000003_mask_32_badDirection_denom : Rat := (-44/9)

private theorem rank_000000003_mask_32_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_32_badDirection_word = some rank_000000003_mask_32_badDirection_rank := by
  decide

private theorem rank_000000003_mask_32_badDirection_unrank :
    unrankPairWord rank_000000003_mask_32_badDirection_rank = rank_000000003_mask_32_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_32_badDirection_word rank_000000003_mask_32_badDirection_rank).1
    rank_000000003_mask_32_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_32_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_32_badDirection_word rank_000000003_mask_32_badDirection_mask = rank_000000003_mask_32_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_32_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_32_badDirection_rank rank_000000003_mask_32_badDirection_mask = rank_000000003_mask_32_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_32_badDirection_unrank]
  exact rank_000000003_mask_32_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_32_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_32_badDirection_rank rank_000000003_mask_32_badDirection_mask = rank_000000003_mask_32_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_32_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_32_badDirection_b, rank_000000003_mask_32_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_32_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_32_badDirection_rank rank_000000003_mask_32_badDirection_mask ⟨1, by decide⟩ =
      rank_000000003_mask_32_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_32_badDirection_seqAtRank, rank_000000003_mask_32_badDirection_bAtRank]
  norm_num [rank_000000003_mask_32_badDirection_denom, rank_000000003_mask_32_badDirection_seq, rank_000000003_mask_32_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_32_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_32_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_32_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_32_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_32_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_32_badDirection_denom]

private def rank_000000003_mask_33_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_33_badDirection_mask : SignMask := ⟨33, by decide⟩
private def rank_000000003_mask_33_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_33_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_33_badDirection_b : Vec3 Rat := { x := (44/9), y := (20/9), z := (-52/9) }
private def rank_000000003_mask_33_badDirection_denom : Rat := (-44/9)

private theorem rank_000000003_mask_33_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_33_badDirection_word = some rank_000000003_mask_33_badDirection_rank := by
  decide

private theorem rank_000000003_mask_33_badDirection_unrank :
    unrankPairWord rank_000000003_mask_33_badDirection_rank = rank_000000003_mask_33_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_33_badDirection_word rank_000000003_mask_33_badDirection_rank).1
    rank_000000003_mask_33_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_33_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_33_badDirection_word rank_000000003_mask_33_badDirection_mask = rank_000000003_mask_33_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_33_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_33_badDirection_rank rank_000000003_mask_33_badDirection_mask = rank_000000003_mask_33_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_33_badDirection_unrank]
  exact rank_000000003_mask_33_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_33_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_33_badDirection_rank rank_000000003_mask_33_badDirection_mask = rank_000000003_mask_33_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_33_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_33_badDirection_b, rank_000000003_mask_33_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_33_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_33_badDirection_rank rank_000000003_mask_33_badDirection_mask ⟨1, by decide⟩ =
      rank_000000003_mask_33_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_33_badDirection_seqAtRank, rank_000000003_mask_33_badDirection_bAtRank]
  norm_num [rank_000000003_mask_33_badDirection_denom, rank_000000003_mask_33_badDirection_seq, rank_000000003_mask_33_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_33_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_33_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_33_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_33_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_33_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_33_badDirection_denom]

private def rank_000000003_mask_34_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_34_badDirection_mask : SignMask := ⟨34, by decide⟩
private def rank_000000003_mask_34_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_34_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_34_badDirection_b : Vec3 Rat := { x := (44/9), y := (-52/9), z := (20/9) }
private def rank_000000003_mask_34_badDirection_denom : Rat := (-44/9)

private theorem rank_000000003_mask_34_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_34_badDirection_word = some rank_000000003_mask_34_badDirection_rank := by
  decide

private theorem rank_000000003_mask_34_badDirection_unrank :
    unrankPairWord rank_000000003_mask_34_badDirection_rank = rank_000000003_mask_34_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_34_badDirection_word rank_000000003_mask_34_badDirection_rank).1
    rank_000000003_mask_34_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_34_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_34_badDirection_word rank_000000003_mask_34_badDirection_mask = rank_000000003_mask_34_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_34_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_34_badDirection_rank rank_000000003_mask_34_badDirection_mask = rank_000000003_mask_34_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_34_badDirection_unrank]
  exact rank_000000003_mask_34_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_34_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_34_badDirection_rank rank_000000003_mask_34_badDirection_mask = rank_000000003_mask_34_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_34_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_34_badDirection_b, rank_000000003_mask_34_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_34_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_34_badDirection_rank rank_000000003_mask_34_badDirection_mask ⟨1, by decide⟩ =
      rank_000000003_mask_34_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_34_badDirection_seqAtRank, rank_000000003_mask_34_badDirection_bAtRank]
  norm_num [rank_000000003_mask_34_badDirection_denom, rank_000000003_mask_34_badDirection_seq, rank_000000003_mask_34_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_34_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_34_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_34_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_34_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_34_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_34_badDirection_denom]

private def rank_000000003_mask_35_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_35_badDirection_mask : SignMask := ⟨35, by decide⟩
private def rank_000000003_mask_35_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_35_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_35_badDirection_b : Vec3 Rat := { x := (44/9), y := (20/9), z := (20/9) }
private def rank_000000003_mask_35_badDirection_denom : Rat := (-44/9)

private theorem rank_000000003_mask_35_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_35_badDirection_word = some rank_000000003_mask_35_badDirection_rank := by
  decide

private theorem rank_000000003_mask_35_badDirection_unrank :
    unrankPairWord rank_000000003_mask_35_badDirection_rank = rank_000000003_mask_35_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_35_badDirection_word rank_000000003_mask_35_badDirection_rank).1
    rank_000000003_mask_35_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_35_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_35_badDirection_word rank_000000003_mask_35_badDirection_mask = rank_000000003_mask_35_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_35_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_35_badDirection_rank rank_000000003_mask_35_badDirection_mask = rank_000000003_mask_35_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_35_badDirection_unrank]
  exact rank_000000003_mask_35_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_35_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_35_badDirection_rank rank_000000003_mask_35_badDirection_mask = rank_000000003_mask_35_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_35_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_35_badDirection_b, rank_000000003_mask_35_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_35_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_35_badDirection_rank rank_000000003_mask_35_badDirection_mask ⟨1, by decide⟩ =
      rank_000000003_mask_35_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_35_badDirection_seqAtRank, rank_000000003_mask_35_badDirection_bAtRank]
  norm_num [rank_000000003_mask_35_badDirection_denom, rank_000000003_mask_35_badDirection_seq, rank_000000003_mask_35_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_35_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_35_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_35_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_35_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_35_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_35_badDirection_denom]

private def rank_000000003_mask_36_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_36_badDirection_mask : SignMask := ⟨36, by decide⟩
private def rank_000000003_mask_36_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_36_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_36_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-4/9), z := (-4/9) }
private def rank_000000003_mask_36_badDirection_denom : Rat := (-4/9)

private theorem rank_000000003_mask_36_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_36_badDirection_word = some rank_000000003_mask_36_badDirection_rank := by
  decide

private theorem rank_000000003_mask_36_badDirection_unrank :
    unrankPairWord rank_000000003_mask_36_badDirection_rank = rank_000000003_mask_36_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_36_badDirection_word rank_000000003_mask_36_badDirection_rank).1
    rank_000000003_mask_36_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_36_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_36_badDirection_word rank_000000003_mask_36_badDirection_mask = rank_000000003_mask_36_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_36_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_36_badDirection_rank rank_000000003_mask_36_badDirection_mask = rank_000000003_mask_36_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_36_badDirection_unrank]
  exact rank_000000003_mask_36_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_36_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_36_badDirection_rank rank_000000003_mask_36_badDirection_mask = rank_000000003_mask_36_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_36_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_36_badDirection_b, rank_000000003_mask_36_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_36_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_36_badDirection_rank rank_000000003_mask_36_badDirection_mask ⟨6, by decide⟩ =
      rank_000000003_mask_36_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_36_badDirection_seqAtRank, rank_000000003_mask_36_badDirection_bAtRank]
  norm_num [rank_000000003_mask_36_badDirection_denom, rank_000000003_mask_36_badDirection_seq, rank_000000003_mask_36_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_36_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_36_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_36_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_36_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_36_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_36_badDirection_denom]

private def rank_000000003_mask_37_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_37_badDirection_mask : SignMask := ⟨37, by decide⟩
private def rank_000000003_mask_37_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_37_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_37_badDirection_b : Vec3 Rat := { x := (-4/9), y := (68/9), z := (-4/9) }
private def rank_000000003_mask_37_badDirection_denom : Rat := (-76/9)

private theorem rank_000000003_mask_37_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_37_badDirection_word = some rank_000000003_mask_37_badDirection_rank := by
  decide

private theorem rank_000000003_mask_37_badDirection_unrank :
    unrankPairWord rank_000000003_mask_37_badDirection_rank = rank_000000003_mask_37_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_37_badDirection_word rank_000000003_mask_37_badDirection_rank).1
    rank_000000003_mask_37_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_37_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_37_badDirection_word rank_000000003_mask_37_badDirection_mask = rank_000000003_mask_37_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_37_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_37_badDirection_rank rank_000000003_mask_37_badDirection_mask = rank_000000003_mask_37_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_37_badDirection_unrank]
  exact rank_000000003_mask_37_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_37_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_37_badDirection_rank rank_000000003_mask_37_badDirection_mask = rank_000000003_mask_37_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_37_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_37_badDirection_b, rank_000000003_mask_37_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_37_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_37_badDirection_rank rank_000000003_mask_37_badDirection_mask ⟨8, by decide⟩ =
      rank_000000003_mask_37_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_37_badDirection_seqAtRank, rank_000000003_mask_37_badDirection_bAtRank]
  norm_num [rank_000000003_mask_37_badDirection_denom, rank_000000003_mask_37_badDirection_seq, rank_000000003_mask_37_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_37_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_37_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_37_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_37_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_37_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_37_badDirection_denom]

private def rank_000000003_mask_38_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_38_badDirection_mask : SignMask := ⟨38, by decide⟩
private def rank_000000003_mask_38_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_38_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_38_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-4/9), z := (68/9) }
private def rank_000000003_mask_38_badDirection_denom : Rat := (-116/9)

private theorem rank_000000003_mask_38_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_38_badDirection_word = some rank_000000003_mask_38_badDirection_rank := by
  decide

private theorem rank_000000003_mask_38_badDirection_unrank :
    unrankPairWord rank_000000003_mask_38_badDirection_rank = rank_000000003_mask_38_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_38_badDirection_word rank_000000003_mask_38_badDirection_rank).1
    rank_000000003_mask_38_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_38_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_38_badDirection_word rank_000000003_mask_38_badDirection_mask = rank_000000003_mask_38_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_38_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_38_badDirection_rank rank_000000003_mask_38_badDirection_mask = rank_000000003_mask_38_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_38_badDirection_unrank]
  exact rank_000000003_mask_38_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_38_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_38_badDirection_rank rank_000000003_mask_38_badDirection_mask = rank_000000003_mask_38_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_38_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_38_badDirection_b, rank_000000003_mask_38_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_38_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_38_badDirection_rank rank_000000003_mask_38_badDirection_mask ⟨11, by decide⟩ =
      rank_000000003_mask_38_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_38_badDirection_seqAtRank, rank_000000003_mask_38_badDirection_bAtRank]
  norm_num [rank_000000003_mask_38_badDirection_denom, rank_000000003_mask_38_badDirection_seq, rank_000000003_mask_38_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_38_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_38_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_38_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_38_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_38_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_38_badDirection_denom]

private def rank_000000003_mask_39_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_39_badDirection_mask : SignMask := ⟨39, by decide⟩
private def rank_000000003_mask_39_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_39_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_39_badDirection_b : Vec3 Rat := { x := (-4/9), y := (68/9), z := (68/9) }
private def rank_000000003_mask_39_badDirection_denom : Rat := (-4/9)

private theorem rank_000000003_mask_39_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_39_badDirection_word = some rank_000000003_mask_39_badDirection_rank := by
  decide

private theorem rank_000000003_mask_39_badDirection_unrank :
    unrankPairWord rank_000000003_mask_39_badDirection_rank = rank_000000003_mask_39_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_39_badDirection_word rank_000000003_mask_39_badDirection_rank).1
    rank_000000003_mask_39_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_39_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_39_badDirection_word rank_000000003_mask_39_badDirection_mask = rank_000000003_mask_39_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_39_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_39_badDirection_rank rank_000000003_mask_39_badDirection_mask = rank_000000003_mask_39_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_39_badDirection_unrank]
  exact rank_000000003_mask_39_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_39_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_39_badDirection_rank rank_000000003_mask_39_badDirection_mask = rank_000000003_mask_39_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_39_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_39_badDirection_b, rank_000000003_mask_39_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_39_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_39_badDirection_rank rank_000000003_mask_39_badDirection_mask ⟨8, by decide⟩ =
      rank_000000003_mask_39_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_39_badDirection_seqAtRank, rank_000000003_mask_39_badDirection_bAtRank]
  norm_num [rank_000000003_mask_39_badDirection_denom, rank_000000003_mask_39_badDirection_seq, rank_000000003_mask_39_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_39_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_39_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_39_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_39_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_39_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_39_badDirection_denom]

private def rank_000000003_mask_40_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_40_badDirection_mask : SignMask := ⟨40, by decide⟩
private def rank_000000003_mask_40_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_40_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_40_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-4/9), z := (-100/9) }
private def rank_000000003_mask_40_badDirection_denom : Rat := -12

private theorem rank_000000003_mask_40_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_40_badDirection_word = some rank_000000003_mask_40_badDirection_rank := by
  decide

private theorem rank_000000003_mask_40_badDirection_unrank :
    unrankPairWord rank_000000003_mask_40_badDirection_rank = rank_000000003_mask_40_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_40_badDirection_word rank_000000003_mask_40_badDirection_rank).1
    rank_000000003_mask_40_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_40_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_40_badDirection_word rank_000000003_mask_40_badDirection_mask = rank_000000003_mask_40_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_40_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_40_badDirection_rank rank_000000003_mask_40_badDirection_mask = rank_000000003_mask_40_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_40_badDirection_unrank]
  exact rank_000000003_mask_40_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_40_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_40_badDirection_rank rank_000000003_mask_40_badDirection_mask = rank_000000003_mask_40_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_40_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_40_badDirection_b, rank_000000003_mask_40_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_40_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_40_badDirection_rank rank_000000003_mask_40_badDirection_mask ⟨10, by decide⟩ =
      rank_000000003_mask_40_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_40_badDirection_seqAtRank, rank_000000003_mask_40_badDirection_bAtRank]
  norm_num [rank_000000003_mask_40_badDirection_denom, rank_000000003_mask_40_badDirection_seq, rank_000000003_mask_40_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_40_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_40_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_40_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_40_badDirection_mask)
      (i := ⟨10, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_40_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_40_badDirection_denom]

private def rank_000000003_mask_41_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_41_badDirection_mask : SignMask := ⟨41, by decide⟩
private def rank_000000003_mask_41_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_41_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_41_badDirection_b : Vec3 Rat := { x := (-4/9), y := (68/9), z := (-100/9) }
private def rank_000000003_mask_41_badDirection_denom : Rat := -4

private theorem rank_000000003_mask_41_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_41_badDirection_word = some rank_000000003_mask_41_badDirection_rank := by
  decide

private theorem rank_000000003_mask_41_badDirection_unrank :
    unrankPairWord rank_000000003_mask_41_badDirection_rank = rank_000000003_mask_41_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_41_badDirection_word rank_000000003_mask_41_badDirection_rank).1
    rank_000000003_mask_41_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_41_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_41_badDirection_word rank_000000003_mask_41_badDirection_mask = rank_000000003_mask_41_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_41_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_41_badDirection_rank rank_000000003_mask_41_badDirection_mask = rank_000000003_mask_41_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_41_badDirection_unrank]
  exact rank_000000003_mask_41_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_41_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_41_badDirection_rank rank_000000003_mask_41_badDirection_mask = rank_000000003_mask_41_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_41_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_41_badDirection_b, rank_000000003_mask_41_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_41_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_41_badDirection_rank rank_000000003_mask_41_badDirection_mask ⟨10, by decide⟩ =
      rank_000000003_mask_41_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_41_badDirection_seqAtRank, rank_000000003_mask_41_badDirection_bAtRank]
  norm_num [rank_000000003_mask_41_badDirection_denom, rank_000000003_mask_41_badDirection_seq, rank_000000003_mask_41_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_41_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_41_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_41_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_41_badDirection_mask)
      (i := ⟨10, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_41_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_41_badDirection_denom]

private def rank_000000003_mask_42_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_42_badDirection_mask : SignMask := ⟨42, by decide⟩
private def rank_000000003_mask_42_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_42_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_42_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-4/9), z := (-28/9) }
private def rank_000000003_mask_42_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_42_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_42_badDirection_word = some rank_000000003_mask_42_badDirection_rank := by
  decide

private theorem rank_000000003_mask_42_badDirection_unrank :
    unrankPairWord rank_000000003_mask_42_badDirection_rank = rank_000000003_mask_42_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_42_badDirection_word rank_000000003_mask_42_badDirection_rank).1
    rank_000000003_mask_42_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_42_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_42_badDirection_word rank_000000003_mask_42_badDirection_mask = rank_000000003_mask_42_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_42_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_42_badDirection_rank rank_000000003_mask_42_badDirection_mask = rank_000000003_mask_42_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_42_badDirection_unrank]
  exact rank_000000003_mask_42_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_42_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_42_badDirection_rank rank_000000003_mask_42_badDirection_mask = rank_000000003_mask_42_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_42_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_42_badDirection_b, rank_000000003_mask_42_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_42_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_42_badDirection_rank rank_000000003_mask_42_badDirection_mask ⟨4, by decide⟩ =
      rank_000000003_mask_42_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_42_badDirection_seqAtRank, rank_000000003_mask_42_badDirection_bAtRank]
  norm_num [rank_000000003_mask_42_badDirection_denom, rank_000000003_mask_42_badDirection_seq, rank_000000003_mask_42_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_42_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_42_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_42_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_42_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_42_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_42_badDirection_denom]

private def rank_000000003_mask_43_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_43_badDirection_mask : SignMask := ⟨43, by decide⟩
private def rank_000000003_mask_43_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_43_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_43_badDirection_b : Vec3 Rat := { x := (-4/9), y := (68/9), z := (-28/9) }
private def rank_000000003_mask_43_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_43_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_43_badDirection_word = some rank_000000003_mask_43_badDirection_rank := by
  decide

private theorem rank_000000003_mask_43_badDirection_unrank :
    unrankPairWord rank_000000003_mask_43_badDirection_rank = rank_000000003_mask_43_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_43_badDirection_word rank_000000003_mask_43_badDirection_rank).1
    rank_000000003_mask_43_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_43_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_43_badDirection_word rank_000000003_mask_43_badDirection_mask = rank_000000003_mask_43_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_43_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_43_badDirection_rank rank_000000003_mask_43_badDirection_mask = rank_000000003_mask_43_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_43_badDirection_unrank]
  exact rank_000000003_mask_43_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_43_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_43_badDirection_rank rank_000000003_mask_43_badDirection_mask = rank_000000003_mask_43_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_43_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_43_badDirection_b, rank_000000003_mask_43_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_43_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_43_badDirection_rank rank_000000003_mask_43_badDirection_mask ⟨4, by decide⟩ =
      rank_000000003_mask_43_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_43_badDirection_seqAtRank, rank_000000003_mask_43_badDirection_bAtRank]
  norm_num [rank_000000003_mask_43_badDirection_denom, rank_000000003_mask_43_badDirection_seq, rank_000000003_mask_43_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_43_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_43_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_43_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_43_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_43_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_43_badDirection_denom]

private def rank_000000003_mask_44_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_44_badDirection_mask : SignMask := ⟨44, by decide⟩
private def rank_000000003_mask_44_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_44_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_44_badDirection_b : Vec3 Rat := { x := (-52/9), y := (44/9), z := (-52/9) }
private def rank_000000003_mask_44_badDirection_denom : Rat := (-44/9)

private theorem rank_000000003_mask_44_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_44_badDirection_word = some rank_000000003_mask_44_badDirection_rank := by
  decide

private theorem rank_000000003_mask_44_badDirection_unrank :
    unrankPairWord rank_000000003_mask_44_badDirection_rank = rank_000000003_mask_44_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_44_badDirection_word rank_000000003_mask_44_badDirection_rank).1
    rank_000000003_mask_44_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_44_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_44_badDirection_word rank_000000003_mask_44_badDirection_mask = rank_000000003_mask_44_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_44_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_44_badDirection_rank rank_000000003_mask_44_badDirection_mask = rank_000000003_mask_44_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_44_badDirection_unrank]
  exact rank_000000003_mask_44_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_44_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_44_badDirection_rank rank_000000003_mask_44_badDirection_mask = rank_000000003_mask_44_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_44_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_44_badDirection_b, rank_000000003_mask_44_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_44_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_44_badDirection_rank rank_000000003_mask_44_badDirection_mask ⟨2, by decide⟩ =
      rank_000000003_mask_44_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_44_badDirection_seqAtRank, rank_000000003_mask_44_badDirection_bAtRank]
  norm_num [rank_000000003_mask_44_badDirection_denom, rank_000000003_mask_44_badDirection_seq, rank_000000003_mask_44_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_44_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_44_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_44_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_44_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_44_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_44_badDirection_denom]

private def rank_000000003_mask_46_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_46_badDirection_mask : SignMask := ⟨46, by decide⟩
private def rank_000000003_mask_46_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_46_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_46_badDirection_b : Vec3 Rat := { x := (-52/9), y := (44/9), z := (20/9) }
private def rank_000000003_mask_46_badDirection_denom : Rat := (-44/9)

private theorem rank_000000003_mask_46_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_46_badDirection_word = some rank_000000003_mask_46_badDirection_rank := by
  decide

private theorem rank_000000003_mask_46_badDirection_unrank :
    unrankPairWord rank_000000003_mask_46_badDirection_rank = rank_000000003_mask_46_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_46_badDirection_word rank_000000003_mask_46_badDirection_rank).1
    rank_000000003_mask_46_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_46_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_46_badDirection_word rank_000000003_mask_46_badDirection_mask = rank_000000003_mask_46_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_46_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_46_badDirection_rank rank_000000003_mask_46_badDirection_mask = rank_000000003_mask_46_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_46_badDirection_unrank]
  exact rank_000000003_mask_46_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_46_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_46_badDirection_rank rank_000000003_mask_46_badDirection_mask = rank_000000003_mask_46_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_46_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_46_badDirection_b, rank_000000003_mask_46_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_46_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_46_badDirection_rank rank_000000003_mask_46_badDirection_mask ⟨2, by decide⟩ =
      rank_000000003_mask_46_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_46_badDirection_seqAtRank, rank_000000003_mask_46_badDirection_bAtRank]
  norm_num [rank_000000003_mask_46_badDirection_denom, rank_000000003_mask_46_badDirection_seq, rank_000000003_mask_46_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_46_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_46_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_46_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_46_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_46_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_46_badDirection_denom]

private def rank_000000003_mask_47_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_47_badDirection_mask : SignMask := ⟨47, by decide⟩
private def rank_000000003_mask_47_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_47_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_47_badDirection_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (20/9) }
private def rank_000000003_mask_47_badDirection_denom : Rat := (-4/3)

private theorem rank_000000003_mask_47_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_47_badDirection_word = some rank_000000003_mask_47_badDirection_rank := by
  decide

private theorem rank_000000003_mask_47_badDirection_unrank :
    unrankPairWord rank_000000003_mask_47_badDirection_rank = rank_000000003_mask_47_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_47_badDirection_word rank_000000003_mask_47_badDirection_rank).1
    rank_000000003_mask_47_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_47_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_47_badDirection_word rank_000000003_mask_47_badDirection_mask = rank_000000003_mask_47_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_47_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_47_badDirection_rank rank_000000003_mask_47_badDirection_mask = rank_000000003_mask_47_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_47_badDirection_unrank]
  exact rank_000000003_mask_47_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_47_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_47_badDirection_rank rank_000000003_mask_47_badDirection_mask = rank_000000003_mask_47_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_47_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_47_badDirection_b, rank_000000003_mask_47_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_47_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_47_badDirection_rank rank_000000003_mask_47_badDirection_mask ⟨11, by decide⟩ =
      rank_000000003_mask_47_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_47_badDirection_seqAtRank, rank_000000003_mask_47_badDirection_bAtRank]
  norm_num [rank_000000003_mask_47_badDirection_denom, rank_000000003_mask_47_badDirection_seq, rank_000000003_mask_47_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_47_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_47_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_47_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_47_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_47_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_47_badDirection_denom]

private def rank_000000003_mask_48_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_48_badDirection_mask : SignMask := ⟨48, by decide⟩
private def rank_000000003_mask_48_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_48_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_48_badDirection_b : Vec3 Rat := { x := (28/9), y := (-68/9), z := (28/9) }
private def rank_000000003_mask_48_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_48_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_48_badDirection_word = some rank_000000003_mask_48_badDirection_rank := by
  decide

private theorem rank_000000003_mask_48_badDirection_unrank :
    unrankPairWord rank_000000003_mask_48_badDirection_rank = rank_000000003_mask_48_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_48_badDirection_word rank_000000003_mask_48_badDirection_rank).1
    rank_000000003_mask_48_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_48_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_48_badDirection_word rank_000000003_mask_48_badDirection_mask = rank_000000003_mask_48_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_48_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_48_badDirection_rank rank_000000003_mask_48_badDirection_mask = rank_000000003_mask_48_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_48_badDirection_unrank]
  exact rank_000000003_mask_48_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_48_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_48_badDirection_rank rank_000000003_mask_48_badDirection_mask = rank_000000003_mask_48_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_48_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_48_badDirection_b, rank_000000003_mask_48_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_48_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_48_badDirection_rank rank_000000003_mask_48_badDirection_mask ⟨1, by decide⟩ =
      rank_000000003_mask_48_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_48_badDirection_seqAtRank, rank_000000003_mask_48_badDirection_bAtRank]
  norm_num [rank_000000003_mask_48_badDirection_denom, rank_000000003_mask_48_badDirection_seq, rank_000000003_mask_48_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_48_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_48_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_48_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_48_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_48_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_48_badDirection_denom]

private def rank_000000003_mask_49_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_49_badDirection_mask : SignMask := ⟨49, by decide⟩
private def rank_000000003_mask_49_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_49_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_49_badDirection_b : Vec3 Rat := { x := (28/9), y := (4/9), z := (28/9) }
private def rank_000000003_mask_49_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_49_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_49_badDirection_word = some rank_000000003_mask_49_badDirection_rank := by
  decide

private theorem rank_000000003_mask_49_badDirection_unrank :
    unrankPairWord rank_000000003_mask_49_badDirection_rank = rank_000000003_mask_49_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_49_badDirection_word rank_000000003_mask_49_badDirection_rank).1
    rank_000000003_mask_49_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_49_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_49_badDirection_word rank_000000003_mask_49_badDirection_mask = rank_000000003_mask_49_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_49_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_49_badDirection_rank rank_000000003_mask_49_badDirection_mask = rank_000000003_mask_49_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_49_badDirection_unrank]
  exact rank_000000003_mask_49_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_49_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_49_badDirection_rank rank_000000003_mask_49_badDirection_mask = rank_000000003_mask_49_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_49_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_49_badDirection_b, rank_000000003_mask_49_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_49_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_49_badDirection_rank rank_000000003_mask_49_badDirection_mask ⟨1, by decide⟩ =
      rank_000000003_mask_49_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_49_badDirection_seqAtRank, rank_000000003_mask_49_badDirection_bAtRank]
  norm_num [rank_000000003_mask_49_badDirection_denom, rank_000000003_mask_49_badDirection_seq, rank_000000003_mask_49_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_49_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_49_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_49_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_49_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_49_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_49_badDirection_denom]

private def rank_000000003_mask_50_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_50_badDirection_mask : SignMask := ⟨50, by decide⟩
private def rank_000000003_mask_50_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_50_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_50_badDirection_b : Vec3 Rat := { x := (28/9), y := (-68/9), z := (100/9) }
private def rank_000000003_mask_50_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_50_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_50_badDirection_word = some rank_000000003_mask_50_badDirection_rank := by
  decide

private theorem rank_000000003_mask_50_badDirection_unrank :
    unrankPairWord rank_000000003_mask_50_badDirection_rank = rank_000000003_mask_50_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_50_badDirection_word rank_000000003_mask_50_badDirection_rank).1
    rank_000000003_mask_50_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_50_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_50_badDirection_word rank_000000003_mask_50_badDirection_mask = rank_000000003_mask_50_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_50_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_50_badDirection_rank rank_000000003_mask_50_badDirection_mask = rank_000000003_mask_50_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_50_badDirection_unrank]
  exact rank_000000003_mask_50_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_50_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_50_badDirection_rank rank_000000003_mask_50_badDirection_mask = rank_000000003_mask_50_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_50_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_50_badDirection_b, rank_000000003_mask_50_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_50_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_50_badDirection_rank rank_000000003_mask_50_badDirection_mask ⟨1, by decide⟩ =
      rank_000000003_mask_50_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_50_badDirection_seqAtRank, rank_000000003_mask_50_badDirection_bAtRank]
  norm_num [rank_000000003_mask_50_badDirection_denom, rank_000000003_mask_50_badDirection_seq, rank_000000003_mask_50_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_50_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_50_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_50_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_50_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_50_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_50_badDirection_denom]

private def rank_000000003_mask_51_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_51_badDirection_mask : SignMask := ⟨51, by decide⟩
private def rank_000000003_mask_51_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_51_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_51_badDirection_b : Vec3 Rat := { x := (28/9), y := (4/9), z := (100/9) }
private def rank_000000003_mask_51_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_51_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_51_badDirection_word = some rank_000000003_mask_51_badDirection_rank := by
  decide

private theorem rank_000000003_mask_51_badDirection_unrank :
    unrankPairWord rank_000000003_mask_51_badDirection_rank = rank_000000003_mask_51_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_51_badDirection_word rank_000000003_mask_51_badDirection_rank).1
    rank_000000003_mask_51_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_51_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_51_badDirection_word rank_000000003_mask_51_badDirection_mask = rank_000000003_mask_51_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_51_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_51_badDirection_rank rank_000000003_mask_51_badDirection_mask = rank_000000003_mask_51_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_51_badDirection_unrank]
  exact rank_000000003_mask_51_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_51_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_51_badDirection_rank rank_000000003_mask_51_badDirection_mask = rank_000000003_mask_51_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_51_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_51_badDirection_b, rank_000000003_mask_51_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_51_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_51_badDirection_rank rank_000000003_mask_51_badDirection_mask ⟨1, by decide⟩ =
      rank_000000003_mask_51_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_51_badDirection_seqAtRank, rank_000000003_mask_51_badDirection_bAtRank]
  norm_num [rank_000000003_mask_51_badDirection_denom, rank_000000003_mask_51_badDirection_seq, rank_000000003_mask_51_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_51_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_51_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_51_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_51_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_51_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_51_badDirection_denom]

private def rank_000000003_mask_52_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_52_badDirection_mask : SignMask := ⟨52, by decide⟩
private def rank_000000003_mask_52_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_52_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_52_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (76/9) }
private def rank_000000003_mask_52_badDirection_denom : Rat := (-76/9)

private theorem rank_000000003_mask_52_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_52_badDirection_word = some rank_000000003_mask_52_badDirection_rank := by
  decide

private theorem rank_000000003_mask_52_badDirection_unrank :
    unrankPairWord rank_000000003_mask_52_badDirection_rank = rank_000000003_mask_52_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_52_badDirection_word rank_000000003_mask_52_badDirection_rank).1
    rank_000000003_mask_52_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_52_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_52_badDirection_word rank_000000003_mask_52_badDirection_mask = rank_000000003_mask_52_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_52_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_52_badDirection_rank rank_000000003_mask_52_badDirection_mask = rank_000000003_mask_52_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_52_badDirection_unrank]
  exact rank_000000003_mask_52_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_52_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_52_badDirection_rank rank_000000003_mask_52_badDirection_mask = rank_000000003_mask_52_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_52_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_52_badDirection_b, rank_000000003_mask_52_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_52_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_52_badDirection_rank rank_000000003_mask_52_badDirection_mask ⟨4, by decide⟩ =
      rank_000000003_mask_52_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_52_badDirection_seqAtRank, rank_000000003_mask_52_badDirection_bAtRank]
  norm_num [rank_000000003_mask_52_badDirection_denom, rank_000000003_mask_52_badDirection_seq, rank_000000003_mask_52_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_52_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_52_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_52_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_52_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_52_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_52_badDirection_denom]

private def rank_000000003_mask_53_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_53_badDirection_mask : SignMask := ⟨53, by decide⟩
private def rank_000000003_mask_53_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_53_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_53_badDirection_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (76/9) }
private def rank_000000003_mask_53_badDirection_denom : Rat := (-76/9)

private theorem rank_000000003_mask_53_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_53_badDirection_word = some rank_000000003_mask_53_badDirection_rank := by
  decide

private theorem rank_000000003_mask_53_badDirection_unrank :
    unrankPairWord rank_000000003_mask_53_badDirection_rank = rank_000000003_mask_53_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_53_badDirection_word rank_000000003_mask_53_badDirection_rank).1
    rank_000000003_mask_53_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_53_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_53_badDirection_word rank_000000003_mask_53_badDirection_mask = rank_000000003_mask_53_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_53_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_53_badDirection_rank rank_000000003_mask_53_badDirection_mask = rank_000000003_mask_53_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_53_badDirection_unrank]
  exact rank_000000003_mask_53_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_53_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_53_badDirection_rank rank_000000003_mask_53_badDirection_mask = rank_000000003_mask_53_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_53_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_53_badDirection_b, rank_000000003_mask_53_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_53_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_53_badDirection_rank rank_000000003_mask_53_badDirection_mask ⟨4, by decide⟩ =
      rank_000000003_mask_53_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_53_badDirection_seqAtRank, rank_000000003_mask_53_badDirection_bAtRank]
  norm_num [rank_000000003_mask_53_badDirection_denom, rank_000000003_mask_53_badDirection_seq, rank_000000003_mask_53_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_53_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_53_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_53_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_53_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_53_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_53_badDirection_denom]

private def rank_000000003_mask_56_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_56_badDirection_mask : SignMask := ⟨56, by decide⟩
private def rank_000000003_mask_56_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_56_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_56_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (-20/9) }
private def rank_000000003_mask_56_badDirection_denom : Rat := (-20/3)

private theorem rank_000000003_mask_56_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_56_badDirection_word = some rank_000000003_mask_56_badDirection_rank := by
  decide

private theorem rank_000000003_mask_56_badDirection_unrank :
    unrankPairWord rank_000000003_mask_56_badDirection_rank = rank_000000003_mask_56_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_56_badDirection_word rank_000000003_mask_56_badDirection_rank).1
    rank_000000003_mask_56_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_56_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_56_badDirection_word rank_000000003_mask_56_badDirection_mask = rank_000000003_mask_56_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_56_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_56_badDirection_rank rank_000000003_mask_56_badDirection_mask = rank_000000003_mask_56_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_56_badDirection_unrank]
  exact rank_000000003_mask_56_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_56_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_56_badDirection_rank rank_000000003_mask_56_badDirection_mask = rank_000000003_mask_56_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_56_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_56_badDirection_b, rank_000000003_mask_56_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_56_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_56_badDirection_rank rank_000000003_mask_56_badDirection_mask ⟨10, by decide⟩ =
      rank_000000003_mask_56_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_56_badDirection_seqAtRank, rank_000000003_mask_56_badDirection_bAtRank]
  norm_num [rank_000000003_mask_56_badDirection_denom, rank_000000003_mask_56_badDirection_seq, rank_000000003_mask_56_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_56_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_56_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_56_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_56_badDirection_mask)
      (i := ⟨10, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_56_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_56_badDirection_denom]

private def rank_000000003_mask_57_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_57_badDirection_mask : SignMask := ⟨57, by decide⟩
private def rank_000000003_mask_57_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_57_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_57_badDirection_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (-20/9) }
private def rank_000000003_mask_57_badDirection_denom : Rat := (-52/9)

private theorem rank_000000003_mask_57_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_57_badDirection_word = some rank_000000003_mask_57_badDirection_rank := by
  decide

private theorem rank_000000003_mask_57_badDirection_unrank :
    unrankPairWord rank_000000003_mask_57_badDirection_rank = rank_000000003_mask_57_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_57_badDirection_word rank_000000003_mask_57_badDirection_rank).1
    rank_000000003_mask_57_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_57_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_57_badDirection_word rank_000000003_mask_57_badDirection_mask = rank_000000003_mask_57_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_57_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_57_badDirection_rank rank_000000003_mask_57_badDirection_mask = rank_000000003_mask_57_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_57_badDirection_unrank]
  exact rank_000000003_mask_57_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_57_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_57_badDirection_rank rank_000000003_mask_57_badDirection_mask = rank_000000003_mask_57_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_57_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_57_badDirection_b, rank_000000003_mask_57_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_57_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_57_badDirection_rank rank_000000003_mask_57_badDirection_mask ⟨6, by decide⟩ =
      rank_000000003_mask_57_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_57_badDirection_seqAtRank, rank_000000003_mask_57_badDirection_bAtRank]
  norm_num [rank_000000003_mask_57_badDirection_denom, rank_000000003_mask_57_badDirection_seq, rank_000000003_mask_57_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_57_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_57_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_57_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_57_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_57_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_57_badDirection_denom]

private def rank_000000003_mask_58_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_58_badDirection_mask : SignMask := ⟨58, by decide⟩
private def rank_000000003_mask_58_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_58_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_58_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (52/9) }
private def rank_000000003_mask_58_badDirection_denom : Rat := (-52/9)

private theorem rank_000000003_mask_58_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_58_badDirection_word = some rank_000000003_mask_58_badDirection_rank := by
  decide

private theorem rank_000000003_mask_58_badDirection_unrank :
    unrankPairWord rank_000000003_mask_58_badDirection_rank = rank_000000003_mask_58_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_58_badDirection_word rank_000000003_mask_58_badDirection_rank).1
    rank_000000003_mask_58_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_58_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_58_badDirection_word rank_000000003_mask_58_badDirection_mask = rank_000000003_mask_58_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_58_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_58_badDirection_rank rank_000000003_mask_58_badDirection_mask = rank_000000003_mask_58_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_58_badDirection_unrank]
  exact rank_000000003_mask_58_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_58_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_58_badDirection_rank rank_000000003_mask_58_badDirection_mask = rank_000000003_mask_58_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_58_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_58_badDirection_b, rank_000000003_mask_58_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_58_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_58_badDirection_rank rank_000000003_mask_58_badDirection_mask ⟨6, by decide⟩ =
      rank_000000003_mask_58_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_58_badDirection_seqAtRank, rank_000000003_mask_58_badDirection_bAtRank]
  norm_num [rank_000000003_mask_58_badDirection_denom, rank_000000003_mask_58_badDirection_seq, rank_000000003_mask_58_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_58_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_58_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_58_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_58_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_58_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_58_badDirection_denom]

private def rank_000000003_mask_59_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_59_badDirection_mask : SignMask := ⟨59, by decide⟩
private def rank_000000003_mask_59_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_59_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_59_badDirection_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (52/9) }
private def rank_000000003_mask_59_badDirection_denom : Rat := (-124/9)

private theorem rank_000000003_mask_59_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_59_badDirection_word = some rank_000000003_mask_59_badDirection_rank := by
  decide

private theorem rank_000000003_mask_59_badDirection_unrank :
    unrankPairWord rank_000000003_mask_59_badDirection_rank = rank_000000003_mask_59_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_59_badDirection_word rank_000000003_mask_59_badDirection_rank).1
    rank_000000003_mask_59_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_59_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_59_badDirection_word rank_000000003_mask_59_badDirection_mask = rank_000000003_mask_59_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_59_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_59_badDirection_rank rank_000000003_mask_59_badDirection_mask = rank_000000003_mask_59_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_59_badDirection_unrank]
  exact rank_000000003_mask_59_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_59_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_59_badDirection_rank rank_000000003_mask_59_badDirection_mask = rank_000000003_mask_59_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_59_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_59_badDirection_b, rank_000000003_mask_59_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_59_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_59_badDirection_rank rank_000000003_mask_59_badDirection_mask ⟨6, by decide⟩ =
      rank_000000003_mask_59_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_59_badDirection_seqAtRank, rank_000000003_mask_59_badDirection_bAtRank]
  norm_num [rank_000000003_mask_59_badDirection_denom, rank_000000003_mask_59_badDirection_seq, rank_000000003_mask_59_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_59_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_59_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_59_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_59_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_59_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_59_badDirection_denom]

private def rank_000000003_mask_60_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_60_badDirection_mask : SignMask := ⟨60, by decide⟩
private def rank_000000003_mask_60_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_60_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_60_badDirection_b : Vec3 Rat := { x := (-68/9), y := (28/9), z := (28/9) }
private def rank_000000003_mask_60_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_60_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_60_badDirection_word = some rank_000000003_mask_60_badDirection_rank := by
  decide

private theorem rank_000000003_mask_60_badDirection_unrank :
    unrankPairWord rank_000000003_mask_60_badDirection_rank = rank_000000003_mask_60_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_60_badDirection_word rank_000000003_mask_60_badDirection_rank).1
    rank_000000003_mask_60_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_60_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_60_badDirection_word rank_000000003_mask_60_badDirection_mask = rank_000000003_mask_60_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_60_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_60_badDirection_rank rank_000000003_mask_60_badDirection_mask = rank_000000003_mask_60_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_60_badDirection_unrank]
  exact rank_000000003_mask_60_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_60_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_60_badDirection_rank rank_000000003_mask_60_badDirection_mask = rank_000000003_mask_60_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_60_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_60_badDirection_b, rank_000000003_mask_60_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_60_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_60_badDirection_rank rank_000000003_mask_60_badDirection_mask ⟨2, by decide⟩ =
      rank_000000003_mask_60_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_60_badDirection_seqAtRank, rank_000000003_mask_60_badDirection_bAtRank]
  norm_num [rank_000000003_mask_60_badDirection_denom, rank_000000003_mask_60_badDirection_seq, rank_000000003_mask_60_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_60_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_60_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_60_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_60_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_60_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_60_badDirection_denom]

private def rank_000000003_mask_61_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_61_badDirection_mask : SignMask := ⟨61, by decide⟩
private def rank_000000003_mask_61_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_61_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_61_badDirection_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (28/9) }
private def rank_000000003_mask_61_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_61_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_61_badDirection_word = some rank_000000003_mask_61_badDirection_rank := by
  decide

private theorem rank_000000003_mask_61_badDirection_unrank :
    unrankPairWord rank_000000003_mask_61_badDirection_rank = rank_000000003_mask_61_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_61_badDirection_word rank_000000003_mask_61_badDirection_rank).1
    rank_000000003_mask_61_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_61_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_61_badDirection_word rank_000000003_mask_61_badDirection_mask = rank_000000003_mask_61_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_61_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_61_badDirection_rank rank_000000003_mask_61_badDirection_mask = rank_000000003_mask_61_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_61_badDirection_unrank]
  exact rank_000000003_mask_61_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_61_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_61_badDirection_rank rank_000000003_mask_61_badDirection_mask = rank_000000003_mask_61_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_61_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_61_badDirection_b, rank_000000003_mask_61_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_61_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_61_badDirection_rank rank_000000003_mask_61_badDirection_mask ⟨4, by decide⟩ =
      rank_000000003_mask_61_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_61_badDirection_seqAtRank, rank_000000003_mask_61_badDirection_bAtRank]
  norm_num [rank_000000003_mask_61_badDirection_denom, rank_000000003_mask_61_badDirection_seq, rank_000000003_mask_61_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_61_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_61_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_61_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_61_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_61_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_61_badDirection_denom]

private def rank_000000003_mask_62_badDirection_rank : Fin numPairWords := ⟨3, by decide⟩
private def rank_000000003_mask_62_badDirection_mask : SignMask := ⟨62, by decide⟩
private def rank_000000003_mask_62_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def rank_000000003_mask_62_badDirection_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000000003_mask_62_badDirection_b : Vec3 Rat := { x := (-68/9), y := (28/9), z := (100/9) }
private def rank_000000003_mask_62_badDirection_denom : Rat := (-28/9)

private theorem rank_000000003_mask_62_badDirection_rankWord :
    rankPairWord? rank_000000003_mask_62_badDirection_word = some rank_000000003_mask_62_badDirection_rank := by
  decide

private theorem rank_000000003_mask_62_badDirection_unrank :
    unrankPairWord rank_000000003_mask_62_badDirection_rank = rank_000000003_mask_62_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000003_mask_62_badDirection_word rank_000000003_mask_62_badDirection_rank).1
    rank_000000003_mask_62_badDirection_rankWord |>.symm

private theorem rank_000000003_mask_62_badDirection_seqChoice :
    translationChoiceSeq rank_000000003_mask_62_badDirection_word rank_000000003_mask_62_badDirection_mask = rank_000000003_mask_62_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000003_mask_62_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000003_mask_62_badDirection_rank rank_000000003_mask_62_badDirection_mask = rank_000000003_mask_62_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000003_mask_62_badDirection_unrank]
  exact rank_000000003_mask_62_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_62_badDirection_bAtRank :
    translationBAtRankMask rank_000000003_mask_62_badDirection_rank rank_000000003_mask_62_badDirection_mask = rank_000000003_mask_62_badDirection_b := by
  rw [translationBAtRankMask, rank_000000003_mask_62_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000003_mask_62_badDirection_b, rank_000000003_mask_62_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000003_mask_62_badDirection_denomAtRank :
    impactDenomAtRank rank_000000003_mask_62_badDirection_rank rank_000000003_mask_62_badDirection_mask ⟨2, by decide⟩ =
      rank_000000003_mask_62_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000003_mask_62_badDirection_seqAtRank, rank_000000003_mask_62_badDirection_bAtRank]
  norm_num [rank_000000003_mask_62_badDirection_denom, rank_000000003_mask_62_badDirection_seq, rank_000000003_mask_62_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000003_mask_62_badDirection_notGood
    (hlt : 3 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords)
      rank_000000003_mask_62_badDirection_mask := by
  have hrank :
      (⟨3, hlt⟩ : Fin numPairWords) = rank_000000003_mask_62_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨3, hlt⟩ : Fin numPairWords))
      (mask := rank_000000003_mask_62_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000003_mask_62_badDirection_denomAtRank]
  norm_num [rank_000000003_mask_62_badDirection_denom]

private def case_000000_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000000_mask : SignMask := ⟨8, by decide⟩
private def case_000000_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000000_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000000_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_000000_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000000_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000000_rankWord :
    rankPairWord? case_000000_word = some case_000000_rank := by
  decide

private theorem case_000000_unrank :
    unrankPairWord case_000000_rank = case_000000_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000000_word case_000000_rank).1
    case_000000_rankWord |>.symm

private theorem case_000000_seqChoice :
    translationChoiceSeq case_000000_word case_000000_mask = case_000000_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000000_seqAtRank :
    translationSeqAtRankMask case_000000_rank case_000000_mask = case_000000_seq := by
  rw [translationSeqAtRankMask, case_000000_unrank]
  exact case_000000_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000000_bAtRank :
    translationBAtRankMask case_000000_rank case_000000_mask = case_000000_b := by
  rw [translationBAtRankMask, case_000000_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000000_b, case_000000_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000000_firstLine_eq :
    case_000000_support.firstLine case_000000_seq case_000000_b = case_000000_firstLine := by
  norm_num [case_000000_firstLine, case_000000_support, case_000000_seq, case_000000_b,
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
private theorem case_000000_secondLine_eq :
    case_000000_support.secondLine case_000000_seq case_000000_b = case_000000_secondLine := by
  norm_num [case_000000_secondLine, case_000000_support, case_000000_seq, case_000000_b,
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
private theorem case_000000_rows :
    EqEqPosVarFirstRows case_000000_support case_000000_rank.val case_000000_mask := by
  intro hlt
  have hrank : (⟨case_000000_rank.val, hlt⟩ : Fin numPairWords) = case_000000_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask =
        case_000000_seq := by
    simpa [hrank] using case_000000_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask =
        case_000000_b := by
    simpa [hrank] using case_000000_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000000_support case_000000_rank.val hlt
          case_000000_mask = case_000000_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000000_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000000_support case_000000_rank.val hlt
          case_000000_mask = case_000000_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000000_secondLine_eq]
  have case_000000_rowFirst :
      EqEqPosRow (FirstLineAt case_000000_support case_000000_rank.val hlt case_000000_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000000_firstLine, EqEqPosRow]
  have case_000000_fixedSecond :
      FixedRow (SecondLineAt case_000000_support case_000000_rank.val hlt case_000000_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000000_secondLine, FixedRow]
  exact ⟨case_000000_rowFirst, case_000000_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000000_sourceMatches :
    fam_000_desc.SourceMatches case_000000_rank.val case_000000_mask := by
  intro hlt
  have hrank :
      (⟨case_000000_rank.val, hlt⟩ : Fin numPairWords) = case_000000_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask =
        case_000000_seq := by
    simpa [hrank] using case_000000_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000000_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000000_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000000_rank.val hlt case_000000_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000000_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000000_applies :
    fam_000_desc.Applies case_000000_rank.val case_000000_mask := by
  exact ⟨
    case_000000_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000000_support] using case_000000_rows
  ⟩

private theorem case_000000_covered :
    BoundedCovered case_000000_rank.val case_000000_mask :=
  BoundedCovered.fam000 case_000000_applies

private def case_000001_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000001_mask : SignMask := ⟨9, by decide⟩
private def case_000001_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000001_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000001_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000001_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000001_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000001_rankWord :
    rankPairWord? case_000001_word = some case_000001_rank := by
  decide

private theorem case_000001_unrank :
    unrankPairWord case_000001_rank = case_000001_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000001_word case_000001_rank).1
    case_000001_rankWord |>.symm

private theorem case_000001_seqChoice :
    translationChoiceSeq case_000001_word case_000001_mask = case_000001_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000001_seqAtRank :
    translationSeqAtRankMask case_000001_rank case_000001_mask = case_000001_seq := by
  rw [translationSeqAtRankMask, case_000001_unrank]
  exact case_000001_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000001_bAtRank :
    translationBAtRankMask case_000001_rank case_000001_mask = case_000001_b := by
  rw [translationBAtRankMask, case_000001_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000001_b, case_000001_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000001_firstLine_eq :
    case_000001_support.firstLine case_000001_seq case_000001_b = case_000001_firstLine := by
  norm_num [case_000001_firstLine, case_000001_support, case_000001_seq, case_000001_b,
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
private theorem case_000001_secondLine_eq :
    case_000001_support.secondLine case_000001_seq case_000001_b = case_000001_secondLine := by
  norm_num [case_000001_secondLine, case_000001_support, case_000001_seq, case_000001_b,
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
private theorem case_000001_rows :
    EqEqPosVarFirstRows case_000001_support case_000001_rank.val case_000001_mask := by
  intro hlt
  have hrank : (⟨case_000001_rank.val, hlt⟩ : Fin numPairWords) = case_000001_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask =
        case_000001_seq := by
    simpa [hrank] using case_000001_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask =
        case_000001_b := by
    simpa [hrank] using case_000001_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000001_support case_000001_rank.val hlt
          case_000001_mask = case_000001_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000001_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000001_support case_000001_rank.val hlt
          case_000001_mask = case_000001_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000001_secondLine_eq]
  have case_000001_rowFirst :
      EqEqPosRow (FirstLineAt case_000001_support case_000001_rank.val hlt case_000001_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000001_firstLine, EqEqPosRow]
  have case_000001_fixedSecond :
      FixedRow (SecondLineAt case_000001_support case_000001_rank.val hlt case_000001_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000001_secondLine, FixedRow]
  exact ⟨case_000001_rowFirst, case_000001_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000001_sourceMatches :
    fam_000_desc.SourceMatches case_000001_rank.val case_000001_mask := by
  intro hlt
  have hrank :
      (⟨case_000001_rank.val, hlt⟩ : Fin numPairWords) = case_000001_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask =
        case_000001_seq := by
    simpa [hrank] using case_000001_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000001_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000001_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000001_rank.val hlt case_000001_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000001_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000001_applies :
    fam_000_desc.Applies case_000001_rank.val case_000001_mask := by
  exact ⟨
    case_000001_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000001_support] using case_000001_rows
  ⟩

private theorem case_000001_covered :
    BoundedCovered case_000001_rank.val case_000001_mask :=
  BoundedCovered.fam000 case_000001_applies

private def case_000002_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000002_mask : SignMask := ⟨13, by decide⟩
private def case_000002_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000002_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000002_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000002_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000002_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000002_rankWord :
    rankPairWord? case_000002_word = some case_000002_rank := by
  decide

private theorem case_000002_unrank :
    unrankPairWord case_000002_rank = case_000002_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000002_word case_000002_rank).1
    case_000002_rankWord |>.symm

private theorem case_000002_seqChoice :
    translationChoiceSeq case_000002_word case_000002_mask = case_000002_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000002_seqAtRank :
    translationSeqAtRankMask case_000002_rank case_000002_mask = case_000002_seq := by
  rw [translationSeqAtRankMask, case_000002_unrank]
  exact case_000002_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000002_bAtRank :
    translationBAtRankMask case_000002_rank case_000002_mask = case_000002_b := by
  rw [translationBAtRankMask, case_000002_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000002_b, case_000002_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000002_firstLine_eq :
    case_000002_support.firstLine case_000002_seq case_000002_b = case_000002_firstLine := by
  norm_num [case_000002_firstLine, case_000002_support, case_000002_seq, case_000002_b,
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
private theorem case_000002_secondLine_eq :
    case_000002_support.secondLine case_000002_seq case_000002_b = case_000002_secondLine := by
  norm_num [case_000002_secondLine, case_000002_support, case_000002_seq, case_000002_b,
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
private theorem case_000002_rows :
    EqEqPosVarSecondRows case_000002_support case_000002_rank.val case_000002_mask := by
  intro hlt
  have hrank : (⟨case_000002_rank.val, hlt⟩ : Fin numPairWords) = case_000002_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask =
        case_000002_seq := by
    simpa [hrank] using case_000002_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask =
        case_000002_b := by
    simpa [hrank] using case_000002_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000002_support case_000002_rank.val hlt
          case_000002_mask = case_000002_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000002_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000002_support case_000002_rank.val hlt
          case_000002_mask = case_000002_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000002_secondLine_eq]
  have case_000002_fixedFirst :
      FixedRow (FirstLineAt case_000002_support case_000002_rank.val hlt case_000002_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000002_firstLine, FixedRow]
  have case_000002_rowSecond :
      EqEqPosRow (SecondLineAt case_000002_support case_000002_rank.val hlt case_000002_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000002_secondLine, EqEqPosRow]
  exact ⟨case_000002_fixedFirst, case_000002_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000002_sourceMatches :
    fam_002_desc.SourceMatches case_000002_rank.val case_000002_mask := by
  intro hlt
  have hrank :
      (⟨case_000002_rank.val, hlt⟩ : Fin numPairWords) = case_000002_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask =
        case_000002_seq := by
    simpa [hrank] using case_000002_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000002_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000002_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000002_rank.val hlt case_000002_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000002_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000002_applies :
    fam_002_desc.Applies case_000002_rank.val case_000002_mask := by
  exact ⟨
    case_000002_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000002_support] using case_000002_rows
  ⟩

private theorem case_000002_covered :
    BoundedCovered case_000002_rank.val case_000002_mask :=
  BoundedCovered.fam002 case_000002_applies

private def case_000003_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000003_mask : SignMask := ⟨16, by decide⟩
private def case_000003_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000003_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000003_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000003_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000003_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000003_rankWord :
    rankPairWord? case_000003_word = some case_000003_rank := by
  decide

private theorem case_000003_unrank :
    unrankPairWord case_000003_rank = case_000003_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000003_word case_000003_rank).1
    case_000003_rankWord |>.symm

private theorem case_000003_seqChoice :
    translationChoiceSeq case_000003_word case_000003_mask = case_000003_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000003_seqAtRank :
    translationSeqAtRankMask case_000003_rank case_000003_mask = case_000003_seq := by
  rw [translationSeqAtRankMask, case_000003_unrank]
  exact case_000003_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000003_bAtRank :
    translationBAtRankMask case_000003_rank case_000003_mask = case_000003_b := by
  rw [translationBAtRankMask, case_000003_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000003_b, case_000003_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000003_firstLine_eq :
    case_000003_support.firstLine case_000003_seq case_000003_b = case_000003_firstLine := by
  norm_num [case_000003_firstLine, case_000003_support, case_000003_seq, case_000003_b,
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
private theorem case_000003_secondLine_eq :
    case_000003_support.secondLine case_000003_seq case_000003_b = case_000003_secondLine := by
  norm_num [case_000003_secondLine, case_000003_support, case_000003_seq, case_000003_b,
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
private theorem case_000003_rows :
    EqEqPosVarFirstRows case_000003_support case_000003_rank.val case_000003_mask := by
  intro hlt
  have hrank : (⟨case_000003_rank.val, hlt⟩ : Fin numPairWords) = case_000003_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask =
        case_000003_seq := by
    simpa [hrank] using case_000003_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask =
        case_000003_b := by
    simpa [hrank] using case_000003_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000003_support case_000003_rank.val hlt
          case_000003_mask = case_000003_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000003_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000003_support case_000003_rank.val hlt
          case_000003_mask = case_000003_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000003_secondLine_eq]
  have case_000003_rowFirst :
      EqEqPosRow (FirstLineAt case_000003_support case_000003_rank.val hlt case_000003_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000003_firstLine, EqEqPosRow]
  have case_000003_fixedSecond :
      FixedRow (SecondLineAt case_000003_support case_000003_rank.val hlt case_000003_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000003_secondLine, FixedRow]
  exact ⟨case_000003_rowFirst, case_000003_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000003_sourceMatches :
    fam_000_desc.SourceMatches case_000003_rank.val case_000003_mask := by
  intro hlt
  have hrank :
      (⟨case_000003_rank.val, hlt⟩ : Fin numPairWords) = case_000003_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask =
        case_000003_seq := by
    simpa [hrank] using case_000003_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000003_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000003_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000003_rank.val hlt case_000003_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000003_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000003_applies :
    fam_000_desc.Applies case_000003_rank.val case_000003_mask := by
  exact ⟨
    case_000003_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000003_support] using case_000003_rows
  ⟩

private theorem case_000003_covered :
    BoundedCovered case_000003_rank.val case_000003_mask :=
  BoundedCovered.fam000 case_000003_applies

private def case_000004_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000004_mask : SignMask := ⟨18, by decide⟩
private def case_000004_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000004_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000004_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000004_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000004_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000004_rankWord :
    rankPairWord? case_000004_word = some case_000004_rank := by
  decide

private theorem case_000004_unrank :
    unrankPairWord case_000004_rank = case_000004_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000004_word case_000004_rank).1
    case_000004_rankWord |>.symm

private theorem case_000004_seqChoice :
    translationChoiceSeq case_000004_word case_000004_mask = case_000004_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000004_seqAtRank :
    translationSeqAtRankMask case_000004_rank case_000004_mask = case_000004_seq := by
  rw [translationSeqAtRankMask, case_000004_unrank]
  exact case_000004_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000004_bAtRank :
    translationBAtRankMask case_000004_rank case_000004_mask = case_000004_b := by
  rw [translationBAtRankMask, case_000004_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000004_b, case_000004_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000004_firstLine_eq :
    case_000004_support.firstLine case_000004_seq case_000004_b = case_000004_firstLine := by
  norm_num [case_000004_firstLine, case_000004_support, case_000004_seq, case_000004_b,
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
private theorem case_000004_secondLine_eq :
    case_000004_support.secondLine case_000004_seq case_000004_b = case_000004_secondLine := by
  norm_num [case_000004_secondLine, case_000004_support, case_000004_seq, case_000004_b,
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
private theorem case_000004_rows :
    EqEqPosVarFirstRows case_000004_support case_000004_rank.val case_000004_mask := by
  intro hlt
  have hrank : (⟨case_000004_rank.val, hlt⟩ : Fin numPairWords) = case_000004_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask =
        case_000004_seq := by
    simpa [hrank] using case_000004_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask =
        case_000004_b := by
    simpa [hrank] using case_000004_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000004_support case_000004_rank.val hlt
          case_000004_mask = case_000004_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000004_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000004_support case_000004_rank.val hlt
          case_000004_mask = case_000004_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000004_secondLine_eq]
  have case_000004_rowFirst :
      EqEqPosRow (FirstLineAt case_000004_support case_000004_rank.val hlt case_000004_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000004_firstLine, EqEqPosRow]
  have case_000004_fixedSecond :
      FixedRow (SecondLineAt case_000004_support case_000004_rank.val hlt case_000004_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000004_secondLine, FixedRow]
  exact ⟨case_000004_rowFirst, case_000004_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000004_sourceMatches :
    fam_000_desc.SourceMatches case_000004_rank.val case_000004_mask := by
  intro hlt
  have hrank :
      (⟨case_000004_rank.val, hlt⟩ : Fin numPairWords) = case_000004_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask =
        case_000004_seq := by
    simpa [hrank] using case_000004_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000004_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000004_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000004_rank.val hlt case_000004_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000004_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000004_applies :
    fam_000_desc.Applies case_000004_rank.val case_000004_mask := by
  exact ⟨
    case_000004_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000004_support] using case_000004_rows
  ⟩

private theorem case_000004_covered :
    BoundedCovered case_000004_rank.val case_000004_mask :=
  BoundedCovered.fam000 case_000004_applies

private def case_000005_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000005_mask : SignMask := ⟨22, by decide⟩
private def case_000005_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000005_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000005_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000005_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000005_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000005_rankWord :
    rankPairWord? case_000005_word = some case_000005_rank := by
  decide

private theorem case_000005_unrank :
    unrankPairWord case_000005_rank = case_000005_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000005_word case_000005_rank).1
    case_000005_rankWord |>.symm

private theorem case_000005_seqChoice :
    translationChoiceSeq case_000005_word case_000005_mask = case_000005_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000005_seqAtRank :
    translationSeqAtRankMask case_000005_rank case_000005_mask = case_000005_seq := by
  rw [translationSeqAtRankMask, case_000005_unrank]
  exact case_000005_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000005_bAtRank :
    translationBAtRankMask case_000005_rank case_000005_mask = case_000005_b := by
  rw [translationBAtRankMask, case_000005_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000005_b, case_000005_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000005_firstLine_eq :
    case_000005_support.firstLine case_000005_seq case_000005_b = case_000005_firstLine := by
  norm_num [case_000005_firstLine, case_000005_support, case_000005_seq, case_000005_b,
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
private theorem case_000005_secondLine_eq :
    case_000005_support.secondLine case_000005_seq case_000005_b = case_000005_secondLine := by
  norm_num [case_000005_secondLine, case_000005_support, case_000005_seq, case_000005_b,
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
private theorem case_000005_rows :
    EqEqPosVarFirstRows case_000005_support case_000005_rank.val case_000005_mask := by
  intro hlt
  have hrank : (⟨case_000005_rank.val, hlt⟩ : Fin numPairWords) = case_000005_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask =
        case_000005_seq := by
    simpa [hrank] using case_000005_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask =
        case_000005_b := by
    simpa [hrank] using case_000005_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000005_support case_000005_rank.val hlt
          case_000005_mask = case_000005_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000005_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000005_support case_000005_rank.val hlt
          case_000005_mask = case_000005_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000005_secondLine_eq]
  have case_000005_rowFirst :
      EqEqPosRow (FirstLineAt case_000005_support case_000005_rank.val hlt case_000005_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000005_firstLine, EqEqPosRow]
  have case_000005_fixedSecond :
      FixedRow (SecondLineAt case_000005_support case_000005_rank.val hlt case_000005_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000005_secondLine, FixedRow]
  exact ⟨case_000005_rowFirst, case_000005_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000005_sourceMatches :
    fam_001_desc.SourceMatches case_000005_rank.val case_000005_mask := by
  intro hlt
  have hrank :
      (⟨case_000005_rank.val, hlt⟩ : Fin numPairWords) = case_000005_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask =
        case_000005_seq := by
    simpa [hrank] using case_000005_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000005_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000005_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000005_rank.val hlt case_000005_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000005_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000005_applies :
    fam_001_desc.Applies case_000005_rank.val case_000005_mask := by
  exact ⟨
    case_000005_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000005_support] using case_000005_rows
  ⟩

private theorem case_000005_covered :
    BoundedCovered case_000005_rank.val case_000005_mask :=
  BoundedCovered.fam001 case_000005_applies

private def case_000006_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000006_mask : SignMask := ⟨24, by decide⟩
private def case_000006_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000006_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000006_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000006_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000006_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000006_rankWord :
    rankPairWord? case_000006_word = some case_000006_rank := by
  decide

private theorem case_000006_unrank :
    unrankPairWord case_000006_rank = case_000006_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000006_word case_000006_rank).1
    case_000006_rankWord |>.symm

private theorem case_000006_seqChoice :
    translationChoiceSeq case_000006_word case_000006_mask = case_000006_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000006_seqAtRank :
    translationSeqAtRankMask case_000006_rank case_000006_mask = case_000006_seq := by
  rw [translationSeqAtRankMask, case_000006_unrank]
  exact case_000006_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000006_bAtRank :
    translationBAtRankMask case_000006_rank case_000006_mask = case_000006_b := by
  rw [translationBAtRankMask, case_000006_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000006_b, case_000006_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000006_firstLine_eq :
    case_000006_support.firstLine case_000006_seq case_000006_b = case_000006_firstLine := by
  norm_num [case_000006_firstLine, case_000006_support, case_000006_seq, case_000006_b,
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
private theorem case_000006_secondLine_eq :
    case_000006_support.secondLine case_000006_seq case_000006_b = case_000006_secondLine := by
  norm_num [case_000006_secondLine, case_000006_support, case_000006_seq, case_000006_b,
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
private theorem case_000006_rows :
    EqEqPosVarFirstRows case_000006_support case_000006_rank.val case_000006_mask := by
  intro hlt
  have hrank : (⟨case_000006_rank.val, hlt⟩ : Fin numPairWords) = case_000006_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask =
        case_000006_seq := by
    simpa [hrank] using case_000006_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask =
        case_000006_b := by
    simpa [hrank] using case_000006_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000006_support case_000006_rank.val hlt
          case_000006_mask = case_000006_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000006_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000006_support case_000006_rank.val hlt
          case_000006_mask = case_000006_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000006_secondLine_eq]
  have case_000006_rowFirst :
      EqEqPosRow (FirstLineAt case_000006_support case_000006_rank.val hlt case_000006_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000006_firstLine, EqEqPosRow]
  have case_000006_fixedSecond :
      FixedRow (SecondLineAt case_000006_support case_000006_rank.val hlt case_000006_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000006_secondLine, FixedRow]
  exact ⟨case_000006_rowFirst, case_000006_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000006_sourceMatches :
    fam_000_desc.SourceMatches case_000006_rank.val case_000006_mask := by
  intro hlt
  have hrank :
      (⟨case_000006_rank.val, hlt⟩ : Fin numPairWords) = case_000006_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask =
        case_000006_seq := by
    simpa [hrank] using case_000006_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000006_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000006_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000006_rank.val hlt case_000006_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000006_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000006_applies :
    fam_000_desc.Applies case_000006_rank.val case_000006_mask := by
  exact ⟨
    case_000006_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000006_support] using case_000006_rows
  ⟩

private theorem case_000006_covered :
    BoundedCovered case_000006_rank.val case_000006_mask :=
  BoundedCovered.fam000 case_000006_applies

private def case_000007_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000007_mask : SignMask := ⟨28, by decide⟩
private def case_000007_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000007_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000007_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000007_firstLine : StrictLin2 := { a := (-22/17), b := (-22/17), c := (-88/51) }
private def case_000007_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000007_rankWord :
    rankPairWord? case_000007_word = some case_000007_rank := by
  decide

private theorem case_000007_unrank :
    unrankPairWord case_000007_rank = case_000007_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000007_word case_000007_rank).1
    case_000007_rankWord |>.symm

private theorem case_000007_seqChoice :
    translationChoiceSeq case_000007_word case_000007_mask = case_000007_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000007_seqAtRank :
    translationSeqAtRankMask case_000007_rank case_000007_mask = case_000007_seq := by
  rw [translationSeqAtRankMask, case_000007_unrank]
  exact case_000007_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000007_bAtRank :
    translationBAtRankMask case_000007_rank case_000007_mask = case_000007_b := by
  rw [translationBAtRankMask, case_000007_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000007_b, case_000007_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000007_firstLine_eq :
    case_000007_support.firstLine case_000007_seq case_000007_b = case_000007_firstLine := by
  norm_num [case_000007_firstLine, case_000007_support, case_000007_seq, case_000007_b,
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
private theorem case_000007_secondLine_eq :
    case_000007_support.secondLine case_000007_seq case_000007_b = case_000007_secondLine := by
  norm_num [case_000007_secondLine, case_000007_support, case_000007_seq, case_000007_b,
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
private theorem case_000007_rows :
    EqEqPosVarFirstRows case_000007_support case_000007_rank.val case_000007_mask := by
  intro hlt
  have hrank : (⟨case_000007_rank.val, hlt⟩ : Fin numPairWords) = case_000007_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask =
        case_000007_seq := by
    simpa [hrank] using case_000007_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask =
        case_000007_b := by
    simpa [hrank] using case_000007_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000007_support case_000007_rank.val hlt
          case_000007_mask = case_000007_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000007_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000007_support case_000007_rank.val hlt
          case_000007_mask = case_000007_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000007_secondLine_eq]
  have case_000007_rowFirst :
      EqEqPosRow (FirstLineAt case_000007_support case_000007_rank.val hlt case_000007_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000007_firstLine, EqEqPosRow]
  have case_000007_fixedSecond :
      FixedRow (SecondLineAt case_000007_support case_000007_rank.val hlt case_000007_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000007_secondLine, FixedRow]
  exact ⟨case_000007_rowFirst, case_000007_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000007_sourceMatches :
    fam_007_desc.SourceMatches case_000007_rank.val case_000007_mask := by
  intro hlt
  have hrank :
      (⟨case_000007_rank.val, hlt⟩ : Fin numPairWords) = case_000007_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask =
        case_000007_seq := by
    simpa [hrank] using case_000007_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000007_seq)
          fam_007_desc.firstIndex = some fam_007_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000007_seq)
          fam_007_desc.secondIndex = some fam_007_support.second := by
    decide
  have hchecks :
      SourceChecks fam_007_support case_000007_rank.val hlt case_000007_mask := by
    simp [SourceChecks, hseq, fam_007_support,
      checkTranslationConstraintSource, case_000007_seq, impactFace]
  exact ⟨
    by simpa [fam_007_desc, hseq] using hfirstIndex,
    by simpa [fam_007_desc, hseq] using hsecondIndex,
    by simpa [fam_007_desc] using hchecks
  ⟩

private theorem case_000007_applies :
    fam_007_desc.Applies case_000007_rank.val case_000007_mask := by
  exact ⟨
    case_000007_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_007_desc, fam_007_support, case_000007_support] using case_000007_rows
  ⟩

private theorem case_000007_covered :
    BoundedCovered case_000007_rank.val case_000007_mask :=
  BoundedCovered.fam007 case_000007_applies

private def case_000008_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000008_mask : SignMask := ⟨29, by decide⟩
private def case_000008_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000008_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000008_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000008_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000008_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_000008_rankWord :
    rankPairWord? case_000008_word = some case_000008_rank := by
  decide

private theorem case_000008_unrank :
    unrankPairWord case_000008_rank = case_000008_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000008_word case_000008_rank).1
    case_000008_rankWord |>.symm

private theorem case_000008_seqChoice :
    translationChoiceSeq case_000008_word case_000008_mask = case_000008_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000008_seqAtRank :
    translationSeqAtRankMask case_000008_rank case_000008_mask = case_000008_seq := by
  rw [translationSeqAtRankMask, case_000008_unrank]
  exact case_000008_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000008_bAtRank :
    translationBAtRankMask case_000008_rank case_000008_mask = case_000008_b := by
  rw [translationBAtRankMask, case_000008_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000008_b, case_000008_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000008_firstLine_eq :
    case_000008_support.firstLine case_000008_seq case_000008_b = case_000008_firstLine := by
  norm_num [case_000008_firstLine, case_000008_support, case_000008_seq, case_000008_b,
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
private theorem case_000008_secondLine_eq :
    case_000008_support.secondLine case_000008_seq case_000008_b = case_000008_secondLine := by
  norm_num [case_000008_secondLine, case_000008_support, case_000008_seq, case_000008_b,
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
private theorem case_000008_rows :
    EqEqPosVarSecondRows case_000008_support case_000008_rank.val case_000008_mask := by
  intro hlt
  have hrank : (⟨case_000008_rank.val, hlt⟩ : Fin numPairWords) = case_000008_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask =
        case_000008_seq := by
    simpa [hrank] using case_000008_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask =
        case_000008_b := by
    simpa [hrank] using case_000008_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000008_support case_000008_rank.val hlt
          case_000008_mask = case_000008_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000008_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000008_support case_000008_rank.val hlt
          case_000008_mask = case_000008_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000008_secondLine_eq]
  have case_000008_fixedFirst :
      FixedRow (FirstLineAt case_000008_support case_000008_rank.val hlt case_000008_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000008_firstLine, FixedRow]
  have case_000008_rowSecond :
      EqEqPosRow (SecondLineAt case_000008_support case_000008_rank.val hlt case_000008_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000008_secondLine, EqEqPosRow]
  exact ⟨case_000008_fixedFirst, case_000008_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000008_sourceMatches :
    fam_002_desc.SourceMatches case_000008_rank.val case_000008_mask := by
  intro hlt
  have hrank :
      (⟨case_000008_rank.val, hlt⟩ : Fin numPairWords) = case_000008_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask =
        case_000008_seq := by
    simpa [hrank] using case_000008_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000008_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000008_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000008_rank.val hlt case_000008_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000008_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000008_applies :
    fam_002_desc.Applies case_000008_rank.val case_000008_mask := by
  exact ⟨
    case_000008_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000008_support] using case_000008_rows
  ⟩

private theorem case_000008_covered :
    BoundedCovered case_000008_rank.val case_000008_mask :=
  BoundedCovered.fam002 case_000008_applies

private def case_000009_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000009_mask : SignMask := ⟨30, by decide⟩
private def case_000009_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000009_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000009_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000009_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000009_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000009_rankWord :
    rankPairWord? case_000009_word = some case_000009_rank := by
  decide

private theorem case_000009_unrank :
    unrankPairWord case_000009_rank = case_000009_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000009_word case_000009_rank).1
    case_000009_rankWord |>.symm

private theorem case_000009_seqChoice :
    translationChoiceSeq case_000009_word case_000009_mask = case_000009_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000009_seqAtRank :
    translationSeqAtRankMask case_000009_rank case_000009_mask = case_000009_seq := by
  rw [translationSeqAtRankMask, case_000009_unrank]
  exact case_000009_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000009_bAtRank :
    translationBAtRankMask case_000009_rank case_000009_mask = case_000009_b := by
  rw [translationBAtRankMask, case_000009_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000009_b, case_000009_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000009_firstLine_eq :
    case_000009_support.firstLine case_000009_seq case_000009_b = case_000009_firstLine := by
  norm_num [case_000009_firstLine, case_000009_support, case_000009_seq, case_000009_b,
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
private theorem case_000009_secondLine_eq :
    case_000009_support.secondLine case_000009_seq case_000009_b = case_000009_secondLine := by
  norm_num [case_000009_secondLine, case_000009_support, case_000009_seq, case_000009_b,
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
private theorem case_000009_rows :
    EqEqPosVarFirstRows case_000009_support case_000009_rank.val case_000009_mask := by
  intro hlt
  have hrank : (⟨case_000009_rank.val, hlt⟩ : Fin numPairWords) = case_000009_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask =
        case_000009_seq := by
    simpa [hrank] using case_000009_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask =
        case_000009_b := by
    simpa [hrank] using case_000009_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000009_support case_000009_rank.val hlt
          case_000009_mask = case_000009_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000009_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000009_support case_000009_rank.val hlt
          case_000009_mask = case_000009_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000009_secondLine_eq]
  have case_000009_rowFirst :
      EqEqPosRow (FirstLineAt case_000009_support case_000009_rank.val hlt case_000009_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000009_firstLine, EqEqPosRow]
  have case_000009_fixedSecond :
      FixedRow (SecondLineAt case_000009_support case_000009_rank.val hlt case_000009_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000009_secondLine, FixedRow]
  exact ⟨case_000009_rowFirst, case_000009_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000009_sourceMatches :
    fam_001_desc.SourceMatches case_000009_rank.val case_000009_mask := by
  intro hlt
  have hrank :
      (⟨case_000009_rank.val, hlt⟩ : Fin numPairWords) = case_000009_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask =
        case_000009_seq := by
    simpa [hrank] using case_000009_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000009_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000009_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000009_rank.val hlt case_000009_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000009_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000009_applies :
    fam_001_desc.Applies case_000009_rank.val case_000009_mask := by
  exact ⟨
    case_000009_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000009_support] using case_000009_rows
  ⟩

private theorem case_000009_covered :
    BoundedCovered case_000009_rank.val case_000009_mask :=
  BoundedCovered.fam001 case_000009_applies

private def case_000010_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000010_mask : SignMask := ⟨31, by decide⟩
private def case_000010_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000010_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000010_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_000010_firstLine : StrictLin2 := { a := (-11/17), b := (-11/17), c := (-75/17) }
private def case_000010_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000010_rankWord :
    rankPairWord? case_000010_word = some case_000010_rank := by
  decide

private theorem case_000010_unrank :
    unrankPairWord case_000010_rank = case_000010_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000010_word case_000010_rank).1
    case_000010_rankWord |>.symm

private theorem case_000010_seqChoice :
    translationChoiceSeq case_000010_word case_000010_mask = case_000010_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000010_seqAtRank :
    translationSeqAtRankMask case_000010_rank case_000010_mask = case_000010_seq := by
  rw [translationSeqAtRankMask, case_000010_unrank]
  exact case_000010_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000010_bAtRank :
    translationBAtRankMask case_000010_rank case_000010_mask = case_000010_b := by
  rw [translationBAtRankMask, case_000010_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000010_b, case_000010_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000010_firstLine_eq :
    case_000010_support.firstLine case_000010_seq case_000010_b = case_000010_firstLine := by
  norm_num [case_000010_firstLine, case_000010_support, case_000010_seq, case_000010_b,
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
private theorem case_000010_secondLine_eq :
    case_000010_support.secondLine case_000010_seq case_000010_b = case_000010_secondLine := by
  norm_num [case_000010_secondLine, case_000010_support, case_000010_seq, case_000010_b,
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
private theorem case_000010_rows :
    EqEqPosVarFirstRows case_000010_support case_000010_rank.val case_000010_mask := by
  intro hlt
  have hrank : (⟨case_000010_rank.val, hlt⟩ : Fin numPairWords) = case_000010_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask =
        case_000010_seq := by
    simpa [hrank] using case_000010_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask =
        case_000010_b := by
    simpa [hrank] using case_000010_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000010_support case_000010_rank.val hlt
          case_000010_mask = case_000010_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000010_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000010_support case_000010_rank.val hlt
          case_000010_mask = case_000010_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000010_secondLine_eq]
  have case_000010_rowFirst :
      EqEqPosRow (FirstLineAt case_000010_support case_000010_rank.val hlt case_000010_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000010_firstLine, EqEqPosRow]
  have case_000010_fixedSecond :
      FixedRow (SecondLineAt case_000010_support case_000010_rank.val hlt case_000010_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000010_secondLine, FixedRow]
  exact ⟨case_000010_rowFirst, case_000010_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000010_sourceMatches :
    fam_001_desc.SourceMatches case_000010_rank.val case_000010_mask := by
  intro hlt
  have hrank :
      (⟨case_000010_rank.val, hlt⟩ : Fin numPairWords) = case_000010_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask =
        case_000010_seq := by
    simpa [hrank] using case_000010_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000010_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000010_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000010_rank.val hlt case_000010_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000010_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000010_applies :
    fam_001_desc.Applies case_000010_rank.val case_000010_mask := by
  exact ⟨
    case_000010_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000010_support] using case_000010_rows
  ⟩

private theorem case_000010_covered :
    BoundedCovered case_000010_rank.val case_000010_mask :=
  BoundedCovered.fam001 case_000010_applies

private def case_000011_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000011_mask : SignMask := ⟨45, by decide⟩
private def case_000011_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000011_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000011_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000011_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000011_secondLine : StrictLin2 := { a := (9/374), b := (-9/374), c := (-73/187) }

private theorem case_000011_rankWord :
    rankPairWord? case_000011_word = some case_000011_rank := by
  decide

private theorem case_000011_unrank :
    unrankPairWord case_000011_rank = case_000011_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000011_word case_000011_rank).1
    case_000011_rankWord |>.symm

private theorem case_000011_seqChoice :
    translationChoiceSeq case_000011_word case_000011_mask = case_000011_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000011_seqAtRank :
    translationSeqAtRankMask case_000011_rank case_000011_mask = case_000011_seq := by
  rw [translationSeqAtRankMask, case_000011_unrank]
  exact case_000011_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000011_bAtRank :
    translationBAtRankMask case_000011_rank case_000011_mask = case_000011_b := by
  rw [translationBAtRankMask, case_000011_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000011_b, case_000011_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000011_firstLine_eq :
    case_000011_support.firstLine case_000011_seq case_000011_b = case_000011_firstLine := by
  norm_num [case_000011_firstLine, case_000011_support, case_000011_seq, case_000011_b,
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
private theorem case_000011_secondLine_eq :
    case_000011_support.secondLine case_000011_seq case_000011_b = case_000011_secondLine := by
  norm_num [case_000011_secondLine, case_000011_support, case_000011_seq, case_000011_b,
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
private theorem case_000011_rows :
    OppMinusOneVarSecondRows case_000011_support case_000011_rank.val case_000011_mask := by
  intro hlt
  have hrank : (⟨case_000011_rank.val, hlt⟩ : Fin numPairWords) = case_000011_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask =
        case_000011_seq := by
    simpa [hrank] using case_000011_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask =
        case_000011_b := by
    simpa [hrank] using case_000011_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000011_support case_000011_rank.val hlt
          case_000011_mask = case_000011_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000011_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000011_support case_000011_rank.val hlt
          case_000011_mask = case_000011_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000011_secondLine_eq]
  have case_000011_fixedFirst :
      FixedRow (FirstLineAt case_000011_support case_000011_rank.val hlt case_000011_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000011_firstLine, FixedRow]
  have case_000011_rowSecond :
      OppNegRow (SecondLineAt case_000011_support case_000011_rank.val hlt case_000011_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000011_secondLine, OppNegRow]
  exact ⟨case_000011_fixedFirst, case_000011_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000011_sourceMatches :
    fam_006_desc.SourceMatches case_000011_rank.val case_000011_mask := by
  intro hlt
  have hrank :
      (⟨case_000011_rank.val, hlt⟩ : Fin numPairWords) = case_000011_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask =
        case_000011_seq := by
    simpa [hrank] using case_000011_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000011_seq)
          fam_006_desc.firstIndex = some fam_006_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000011_seq)
          fam_006_desc.secondIndex = some fam_006_support.second := by
    decide
  have hchecks :
      SourceChecks fam_006_support case_000011_rank.val hlt case_000011_mask := by
    simp [SourceChecks, hseq, fam_006_support,
      checkTranslationConstraintSource, case_000011_seq, impactFace]
  exact ⟨
    by simpa [fam_006_desc, hseq] using hfirstIndex,
    by simpa [fam_006_desc, hseq] using hsecondIndex,
    by simpa [fam_006_desc] using hchecks
  ⟩

private theorem case_000011_applies :
    fam_006_desc.Applies case_000011_rank.val case_000011_mask := by
  exact ⟨
    case_000011_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_006_desc, fam_006_support, case_000011_support] using case_000011_rows
  ⟩

private theorem case_000011_covered :
    BoundedCovered case_000011_rank.val case_000011_mask :=
  BoundedCovered.fam006 case_000011_applies

private def case_000012_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000012_mask : SignMask := ⟨47, by decide⟩
private def case_000012_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000012_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000012_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_000012_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000012_secondLine : StrictLin2 := { a := (9/110), b := (-9/110), c := (-52/55) }

private theorem case_000012_rankWord :
    rankPairWord? case_000012_word = some case_000012_rank := by
  decide

private theorem case_000012_unrank :
    unrankPairWord case_000012_rank = case_000012_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000012_word case_000012_rank).1
    case_000012_rankWord |>.symm

private theorem case_000012_seqChoice :
    translationChoiceSeq case_000012_word case_000012_mask = case_000012_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000012_seqAtRank :
    translationSeqAtRankMask case_000012_rank case_000012_mask = case_000012_seq := by
  rw [translationSeqAtRankMask, case_000012_unrank]
  exact case_000012_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000012_bAtRank :
    translationBAtRankMask case_000012_rank case_000012_mask = case_000012_b := by
  rw [translationBAtRankMask, case_000012_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000012_b, case_000012_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000012_firstLine_eq :
    case_000012_support.firstLine case_000012_seq case_000012_b = case_000012_firstLine := by
  norm_num [case_000012_firstLine, case_000012_support, case_000012_seq, case_000012_b,
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
private theorem case_000012_secondLine_eq :
    case_000012_support.secondLine case_000012_seq case_000012_b = case_000012_secondLine := by
  norm_num [case_000012_secondLine, case_000012_support, case_000012_seq, case_000012_b,
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
private theorem case_000012_rows :
    OppMinusOneVarSecondRows case_000012_support case_000012_rank.val case_000012_mask := by
  intro hlt
  have hrank : (⟨case_000012_rank.val, hlt⟩ : Fin numPairWords) = case_000012_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask =
        case_000012_seq := by
    simpa [hrank] using case_000012_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask =
        case_000012_b := by
    simpa [hrank] using case_000012_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000012_support case_000012_rank.val hlt
          case_000012_mask = case_000012_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000012_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000012_support case_000012_rank.val hlt
          case_000012_mask = case_000012_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000012_secondLine_eq]
  have case_000012_fixedFirst :
      FixedRow (FirstLineAt case_000012_support case_000012_rank.val hlt case_000012_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000012_firstLine, FixedRow]
  have case_000012_rowSecond :
      OppNegRow (SecondLineAt case_000012_support case_000012_rank.val hlt case_000012_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000012_secondLine, OppNegRow]
  exact ⟨case_000012_fixedFirst, case_000012_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000012_sourceMatches :
    fam_006_desc.SourceMatches case_000012_rank.val case_000012_mask := by
  intro hlt
  have hrank :
      (⟨case_000012_rank.val, hlt⟩ : Fin numPairWords) = case_000012_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask =
        case_000012_seq := by
    simpa [hrank] using case_000012_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000012_seq)
          fam_006_desc.firstIndex = some fam_006_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000012_seq)
          fam_006_desc.secondIndex = some fam_006_support.second := by
    decide
  have hchecks :
      SourceChecks fam_006_support case_000012_rank.val hlt case_000012_mask := by
    simp [SourceChecks, hseq, fam_006_support,
      checkTranslationConstraintSource, case_000012_seq, impactFace]
  exact ⟨
    by simpa [fam_006_desc, hseq] using hfirstIndex,
    by simpa [fam_006_desc, hseq] using hsecondIndex,
    by simpa [fam_006_desc] using hchecks
  ⟩

private theorem case_000012_applies :
    fam_006_desc.Applies case_000012_rank.val case_000012_mask := by
  exact ⟨
    case_000012_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_006_desc, fam_006_support, case_000012_support] using case_000012_rows
  ⟩

private theorem case_000012_covered :
    BoundedCovered case_000012_rank.val case_000012_mask :=
  BoundedCovered.fam006 case_000012_applies

private def case_000013_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000013_mask : SignMask := ⟨54, by decide⟩
private def case_000013_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000013_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000013_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000013_firstLine : StrictLin2 := { a := -1, b := 1, c := (-25/3) }
private def case_000013_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000013_rankWord :
    rankPairWord? case_000013_word = some case_000013_rank := by
  decide

private theorem case_000013_unrank :
    unrankPairWord case_000013_rank = case_000013_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000013_word case_000013_rank).1
    case_000013_rankWord |>.symm

private theorem case_000013_seqChoice :
    translationChoiceSeq case_000013_word case_000013_mask = case_000013_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000013_seqAtRank :
    translationSeqAtRankMask case_000013_rank case_000013_mask = case_000013_seq := by
  rw [translationSeqAtRankMask, case_000013_unrank]
  exact case_000013_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000013_bAtRank :
    translationBAtRankMask case_000013_rank case_000013_mask = case_000013_b := by
  rw [translationBAtRankMask, case_000013_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000013_b, case_000013_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000013_firstLine_eq :
    case_000013_support.firstLine case_000013_seq case_000013_b = case_000013_firstLine := by
  norm_num [case_000013_firstLine, case_000013_support, case_000013_seq, case_000013_b,
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
private theorem case_000013_secondLine_eq :
    case_000013_support.secondLine case_000013_seq case_000013_b = case_000013_secondLine := by
  norm_num [case_000013_secondLine, case_000013_support, case_000013_seq, case_000013_b,
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
private theorem case_000013_rows :
    OppOneMinusVarFirstRows case_000013_support case_000013_rank.val case_000013_mask := by
  intro hlt
  have hrank : (⟨case_000013_rank.val, hlt⟩ : Fin numPairWords) = case_000013_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask =
        case_000013_seq := by
    simpa [hrank] using case_000013_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask =
        case_000013_b := by
    simpa [hrank] using case_000013_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000013_support case_000013_rank.val hlt
          case_000013_mask = case_000013_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000013_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000013_support case_000013_rank.val hlt
          case_000013_mask = case_000013_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000013_secondLine_eq]
  have case_000013_rowFirst :
      OppPosRow (FirstLineAt case_000013_support case_000013_rank.val hlt case_000013_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000013_firstLine, OppPosRow]
  have case_000013_fixedSecond :
      FixedRow (SecondLineAt case_000013_support case_000013_rank.val hlt case_000013_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000013_secondLine, FixedRow]
  exact ⟨case_000013_rowFirst, case_000013_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000013_sourceMatches :
    fam_003_desc.SourceMatches case_000013_rank.val case_000013_mask := by
  intro hlt
  have hrank :
      (⟨case_000013_rank.val, hlt⟩ : Fin numPairWords) = case_000013_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask =
        case_000013_seq := by
    simpa [hrank] using case_000013_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000013_seq)
          fam_003_desc.firstIndex = some fam_003_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000013_seq)
          fam_003_desc.secondIndex = some fam_003_support.second := by
    decide
  have hchecks :
      SourceChecks fam_003_support case_000013_rank.val hlt case_000013_mask := by
    simp [SourceChecks, hseq, fam_003_support,
      checkTranslationConstraintSource, case_000013_seq, impactFace]
  exact ⟨
    by simpa [fam_003_desc, hseq] using hfirstIndex,
    by simpa [fam_003_desc, hseq] using hsecondIndex,
    by simpa [fam_003_desc] using hchecks
  ⟩

private theorem case_000013_applies :
    fam_003_desc.Applies case_000013_rank.val case_000013_mask := by
  exact ⟨
    case_000013_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_003_desc, fam_003_support, case_000013_support] using case_000013_rows
  ⟩

private theorem case_000013_covered :
    BoundedCovered case_000013_rank.val case_000013_mask :=
  BoundedCovered.fam003 case_000013_applies

private def case_000014_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000014_mask : SignMask := ⟨55, by decide⟩
private def case_000014_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000014_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000014_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_000014_firstLine : StrictLin2 := { a := -1, b := 1, c := (-13/3) }
private def case_000014_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000014_rankWord :
    rankPairWord? case_000014_word = some case_000014_rank := by
  decide

private theorem case_000014_unrank :
    unrankPairWord case_000014_rank = case_000014_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000014_word case_000014_rank).1
    case_000014_rankWord |>.symm

private theorem case_000014_seqChoice :
    translationChoiceSeq case_000014_word case_000014_mask = case_000014_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000014_seqAtRank :
    translationSeqAtRankMask case_000014_rank case_000014_mask = case_000014_seq := by
  rw [translationSeqAtRankMask, case_000014_unrank]
  exact case_000014_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000014_bAtRank :
    translationBAtRankMask case_000014_rank case_000014_mask = case_000014_b := by
  rw [translationBAtRankMask, case_000014_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000014_b, case_000014_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000014_firstLine_eq :
    case_000014_support.firstLine case_000014_seq case_000014_b = case_000014_firstLine := by
  norm_num [case_000014_firstLine, case_000014_support, case_000014_seq, case_000014_b,
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
private theorem case_000014_secondLine_eq :
    case_000014_support.secondLine case_000014_seq case_000014_b = case_000014_secondLine := by
  norm_num [case_000014_secondLine, case_000014_support, case_000014_seq, case_000014_b,
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
private theorem case_000014_rows :
    OppOneMinusVarFirstRows case_000014_support case_000014_rank.val case_000014_mask := by
  intro hlt
  have hrank : (⟨case_000014_rank.val, hlt⟩ : Fin numPairWords) = case_000014_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask =
        case_000014_seq := by
    simpa [hrank] using case_000014_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask =
        case_000014_b := by
    simpa [hrank] using case_000014_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000014_support case_000014_rank.val hlt
          case_000014_mask = case_000014_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000014_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000014_support case_000014_rank.val hlt
          case_000014_mask = case_000014_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000014_secondLine_eq]
  have case_000014_rowFirst :
      OppPosRow (FirstLineAt case_000014_support case_000014_rank.val hlt case_000014_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000014_firstLine, OppPosRow]
  have case_000014_fixedSecond :
      FixedRow (SecondLineAt case_000014_support case_000014_rank.val hlt case_000014_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000014_secondLine, FixedRow]
  exact ⟨case_000014_rowFirst, case_000014_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000014_sourceMatches :
    fam_003_desc.SourceMatches case_000014_rank.val case_000014_mask := by
  intro hlt
  have hrank :
      (⟨case_000014_rank.val, hlt⟩ : Fin numPairWords) = case_000014_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask =
        case_000014_seq := by
    simpa [hrank] using case_000014_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000014_seq)
          fam_003_desc.firstIndex = some fam_003_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000014_seq)
          fam_003_desc.secondIndex = some fam_003_support.second := by
    decide
  have hchecks :
      SourceChecks fam_003_support case_000014_rank.val hlt case_000014_mask := by
    simp [SourceChecks, hseq, fam_003_support,
      checkTranslationConstraintSource, case_000014_seq, impactFace]
  exact ⟨
    by simpa [fam_003_desc, hseq] using hfirstIndex,
    by simpa [fam_003_desc, hseq] using hsecondIndex,
    by simpa [fam_003_desc] using hchecks
  ⟩

private theorem case_000014_applies :
    fam_003_desc.Applies case_000014_rank.val case_000014_mask := by
  exact ⟨
    case_000014_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_003_desc, fam_003_support, case_000014_support] using case_000014_rows
  ⟩

private theorem case_000014_covered :
    BoundedCovered case_000014_rank.val case_000014_mask :=
  BoundedCovered.fam003 case_000014_applies

private def case_000015_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000015_mask : SignMask := ⟨63, by decide⟩
private def case_000015_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000015_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000015_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000015_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000015_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000015_rankWord :
    rankPairWord? case_000015_word = some case_000015_rank := by
  decide

private theorem case_000015_unrank :
    unrankPairWord case_000015_rank = case_000015_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000015_word case_000015_rank).1
    case_000015_rankWord |>.symm

private theorem case_000015_seqChoice :
    translationChoiceSeq case_000015_word case_000015_mask = case_000015_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000015_seqAtRank :
    translationSeqAtRankMask case_000015_rank case_000015_mask = case_000015_seq := by
  rw [translationSeqAtRankMask, case_000015_unrank]
  exact case_000015_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000015_bAtRank :
    translationBAtRankMask case_000015_rank case_000015_mask = case_000015_b := by
  rw [translationBAtRankMask, case_000015_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000015_b, case_000015_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000015_firstLine_eq :
    case_000015_support.firstLine case_000015_seq case_000015_b = case_000015_firstLine := by
  norm_num [case_000015_firstLine, case_000015_support, case_000015_seq, case_000015_b,
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
private theorem case_000015_secondLine_eq :
    case_000015_support.secondLine case_000015_seq case_000015_b = case_000015_secondLine := by
  norm_num [case_000015_secondLine, case_000015_support, case_000015_seq, case_000015_b,
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
private theorem case_000015_rows :
    EqEqPosVarFirstRows case_000015_support case_000015_rank.val case_000015_mask := by
  intro hlt
  have hrank : (⟨case_000015_rank.val, hlt⟩ : Fin numPairWords) = case_000015_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask =
        case_000015_seq := by
    simpa [hrank] using case_000015_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask =
        case_000015_b := by
    simpa [hrank] using case_000015_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000015_support case_000015_rank.val hlt
          case_000015_mask = case_000015_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000015_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000015_support case_000015_rank.val hlt
          case_000015_mask = case_000015_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000015_secondLine_eq]
  have case_000015_rowFirst :
      EqEqPosRow (FirstLineAt case_000015_support case_000015_rank.val hlt case_000015_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000015_firstLine, EqEqPosRow]
  have case_000015_fixedSecond :
      FixedRow (SecondLineAt case_000015_support case_000015_rank.val hlt case_000015_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000015_secondLine, FixedRow]
  exact ⟨case_000015_rowFirst, case_000015_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000015_sourceMatches :
    fam_001_desc.SourceMatches case_000015_rank.val case_000015_mask := by
  intro hlt
  have hrank :
      (⟨case_000015_rank.val, hlt⟩ : Fin numPairWords) = case_000015_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask =
        case_000015_seq := by
    simpa [hrank] using case_000015_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000015_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000015_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000015_rank.val hlt case_000015_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000015_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000015_applies :
    fam_001_desc.Applies case_000015_rank.val case_000015_mask := by
  exact ⟨
    case_000015_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000015_support] using case_000015_rows
  ⟩

private theorem case_000015_covered :
    BoundedCovered case_000015_rank.val case_000015_mask :=
  BoundedCovered.fam001 case_000015_applies

private def case_000016_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000016_mask : SignMask := ⟨8, by decide⟩
private def case_000016_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000016_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000016_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (-148/9) }
private def case_000016_firstLine : StrictLin2 := { a := -1, b := -1, c := (-79/5) }
private def case_000016_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000016_rankWord :
    rankPairWord? case_000016_word = some case_000016_rank := by
  decide

private theorem case_000016_unrank :
    unrankPairWord case_000016_rank = case_000016_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000016_word case_000016_rank).1
    case_000016_rankWord |>.symm

private theorem case_000016_seqChoice :
    translationChoiceSeq case_000016_word case_000016_mask = case_000016_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000016_seqAtRank :
    translationSeqAtRankMask case_000016_rank case_000016_mask = case_000016_seq := by
  rw [translationSeqAtRankMask, case_000016_unrank]
  exact case_000016_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000016_bAtRank :
    translationBAtRankMask case_000016_rank case_000016_mask = case_000016_b := by
  rw [translationBAtRankMask, case_000016_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000016_b, case_000016_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000016_firstLine_eq :
    case_000016_support.firstLine case_000016_seq case_000016_b = case_000016_firstLine := by
  norm_num [case_000016_firstLine, case_000016_support, case_000016_seq, case_000016_b,
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
private theorem case_000016_secondLine_eq :
    case_000016_support.secondLine case_000016_seq case_000016_b = case_000016_secondLine := by
  norm_num [case_000016_secondLine, case_000016_support, case_000016_seq, case_000016_b,
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
private theorem case_000016_rows :
    EqEqPosVarFirstRows case_000016_support case_000016_rank.val case_000016_mask := by
  intro hlt
  have hrank : (⟨case_000016_rank.val, hlt⟩ : Fin numPairWords) = case_000016_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask =
        case_000016_seq := by
    simpa [hrank] using case_000016_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask =
        case_000016_b := by
    simpa [hrank] using case_000016_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000016_support case_000016_rank.val hlt
          case_000016_mask = case_000016_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000016_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000016_support case_000016_rank.val hlt
          case_000016_mask = case_000016_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000016_secondLine_eq]
  have case_000016_rowFirst :
      EqEqPosRow (FirstLineAt case_000016_support case_000016_rank.val hlt case_000016_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000016_firstLine, EqEqPosRow]
  have case_000016_fixedSecond :
      FixedRow (SecondLineAt case_000016_support case_000016_rank.val hlt case_000016_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000016_secondLine, FixedRow]
  exact ⟨case_000016_rowFirst, case_000016_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000016_sourceMatches :
    fam_000_desc.SourceMatches case_000016_rank.val case_000016_mask := by
  intro hlt
  have hrank :
      (⟨case_000016_rank.val, hlt⟩ : Fin numPairWords) = case_000016_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask =
        case_000016_seq := by
    simpa [hrank] using case_000016_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000016_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000016_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000016_rank.val hlt case_000016_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000016_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000016_applies :
    fam_000_desc.Applies case_000016_rank.val case_000016_mask := by
  exact ⟨
    case_000016_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000016_support] using case_000016_rows
  ⟩

private theorem case_000016_covered :
    BoundedCovered case_000016_rank.val case_000016_mask :=
  BoundedCovered.fam000 case_000016_applies

private def case_000017_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000017_mask : SignMask := ⟨9, by decide⟩
private def case_000017_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000017_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000017_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (-148/9) }
private def case_000017_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000017_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000017_rankWord :
    rankPairWord? case_000017_word = some case_000017_rank := by
  decide

private theorem case_000017_unrank :
    unrankPairWord case_000017_rank = case_000017_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000017_word case_000017_rank).1
    case_000017_rankWord |>.symm

private theorem case_000017_seqChoice :
    translationChoiceSeq case_000017_word case_000017_mask = case_000017_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000017_seqAtRank :
    translationSeqAtRankMask case_000017_rank case_000017_mask = case_000017_seq := by
  rw [translationSeqAtRankMask, case_000017_unrank]
  exact case_000017_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000017_bAtRank :
    translationBAtRankMask case_000017_rank case_000017_mask = case_000017_b := by
  rw [translationBAtRankMask, case_000017_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000017_b, case_000017_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000017_firstLine_eq :
    case_000017_support.firstLine case_000017_seq case_000017_b = case_000017_firstLine := by
  norm_num [case_000017_firstLine, case_000017_support, case_000017_seq, case_000017_b,
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
private theorem case_000017_secondLine_eq :
    case_000017_support.secondLine case_000017_seq case_000017_b = case_000017_secondLine := by
  norm_num [case_000017_secondLine, case_000017_support, case_000017_seq, case_000017_b,
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
private theorem case_000017_rows :
    EqEqPosVarFirstRows case_000017_support case_000017_rank.val case_000017_mask := by
  intro hlt
  have hrank : (⟨case_000017_rank.val, hlt⟩ : Fin numPairWords) = case_000017_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask =
        case_000017_seq := by
    simpa [hrank] using case_000017_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask =
        case_000017_b := by
    simpa [hrank] using case_000017_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000017_support case_000017_rank.val hlt
          case_000017_mask = case_000017_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000017_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000017_support case_000017_rank.val hlt
          case_000017_mask = case_000017_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000017_secondLine_eq]
  have case_000017_rowFirst :
      EqEqPosRow (FirstLineAt case_000017_support case_000017_rank.val hlt case_000017_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000017_firstLine, EqEqPosRow]
  have case_000017_fixedSecond :
      FixedRow (SecondLineAt case_000017_support case_000017_rank.val hlt case_000017_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000017_secondLine, FixedRow]
  exact ⟨case_000017_rowFirst, case_000017_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000017_sourceMatches :
    fam_000_desc.SourceMatches case_000017_rank.val case_000017_mask := by
  intro hlt
  have hrank :
      (⟨case_000017_rank.val, hlt⟩ : Fin numPairWords) = case_000017_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask =
        case_000017_seq := by
    simpa [hrank] using case_000017_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000017_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000017_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000017_rank.val hlt case_000017_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000017_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000017_applies :
    fam_000_desc.Applies case_000017_rank.val case_000017_mask := by
  exact ⟨
    case_000017_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000017_support] using case_000017_rows
  ⟩

private theorem case_000017_covered :
    BoundedCovered case_000017_rank.val case_000017_mask :=
  BoundedCovered.fam000 case_000017_applies

private def case_000018_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000018_mask : SignMask := ⟨13, by decide⟩
private def case_000018_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000018_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmp
private def case_000018_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (-100/9) }
private def case_000018_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000018_secondLine : StrictLin2 := { a := (-9/100), b := (-9/100), c := (-9/50) }

private theorem case_000018_rankWord :
    rankPairWord? case_000018_word = some case_000018_rank := by
  decide

private theorem case_000018_unrank :
    unrankPairWord case_000018_rank = case_000018_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000018_word case_000018_rank).1
    case_000018_rankWord |>.symm

private theorem case_000018_seqChoice :
    translationChoiceSeq case_000018_word case_000018_mask = case_000018_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000018_seqAtRank :
    translationSeqAtRankMask case_000018_rank case_000018_mask = case_000018_seq := by
  rw [translationSeqAtRankMask, case_000018_unrank]
  exact case_000018_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000018_bAtRank :
    translationBAtRankMask case_000018_rank case_000018_mask = case_000018_b := by
  rw [translationBAtRankMask, case_000018_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000018_b, case_000018_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000018_firstLine_eq :
    case_000018_support.firstLine case_000018_seq case_000018_b = case_000018_firstLine := by
  norm_num [case_000018_firstLine, case_000018_support, case_000018_seq, case_000018_b,
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
private theorem case_000018_secondLine_eq :
    case_000018_support.secondLine case_000018_seq case_000018_b = case_000018_secondLine := by
  norm_num [case_000018_secondLine, case_000018_support, case_000018_seq, case_000018_b,
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
private theorem case_000018_rows :
    EqEqPosVarSecondRows case_000018_support case_000018_rank.val case_000018_mask := by
  intro hlt
  have hrank : (⟨case_000018_rank.val, hlt⟩ : Fin numPairWords) = case_000018_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask =
        case_000018_seq := by
    simpa [hrank] using case_000018_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask =
        case_000018_b := by
    simpa [hrank] using case_000018_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000018_support case_000018_rank.val hlt
          case_000018_mask = case_000018_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000018_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000018_support case_000018_rank.val hlt
          case_000018_mask = case_000018_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000018_secondLine_eq]
  have case_000018_fixedFirst :
      FixedRow (FirstLineAt case_000018_support case_000018_rank.val hlt case_000018_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000018_firstLine, FixedRow]
  have case_000018_rowSecond :
      EqEqPosRow (SecondLineAt case_000018_support case_000018_rank.val hlt case_000018_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000018_secondLine, EqEqPosRow]
  exact ⟨case_000018_fixedFirst, case_000018_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000018_sourceMatches :
    fam_002_desc.SourceMatches case_000018_rank.val case_000018_mask := by
  intro hlt
  have hrank :
      (⟨case_000018_rank.val, hlt⟩ : Fin numPairWords) = case_000018_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask =
        case_000018_seq := by
    simpa [hrank] using case_000018_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000018_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000018_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000018_rank.val hlt case_000018_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000018_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000018_applies :
    fam_002_desc.Applies case_000018_rank.val case_000018_mask := by
  exact ⟨
    case_000018_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000018_support] using case_000018_rows
  ⟩

private theorem case_000018_covered :
    BoundedCovered case_000018_rank.val case_000018_mask :=
  BoundedCovered.fam002 case_000018_applies

private def case_000019_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000019_mask : SignMask := ⟨16, by decide⟩
private def case_000019_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000019_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000019_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-52/9) }
private def case_000019_firstLine : StrictLin2 := { a := -1, b := -1, c := (-79/5) }
private def case_000019_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000019_rankWord :
    rankPairWord? case_000019_word = some case_000019_rank := by
  decide

private theorem case_000019_unrank :
    unrankPairWord case_000019_rank = case_000019_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000019_word case_000019_rank).1
    case_000019_rankWord |>.symm

private theorem case_000019_seqChoice :
    translationChoiceSeq case_000019_word case_000019_mask = case_000019_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000019_seqAtRank :
    translationSeqAtRankMask case_000019_rank case_000019_mask = case_000019_seq := by
  rw [translationSeqAtRankMask, case_000019_unrank]
  exact case_000019_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000019_bAtRank :
    translationBAtRankMask case_000019_rank case_000019_mask = case_000019_b := by
  rw [translationBAtRankMask, case_000019_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000019_b, case_000019_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000019_firstLine_eq :
    case_000019_support.firstLine case_000019_seq case_000019_b = case_000019_firstLine := by
  norm_num [case_000019_firstLine, case_000019_support, case_000019_seq, case_000019_b,
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
private theorem case_000019_secondLine_eq :
    case_000019_support.secondLine case_000019_seq case_000019_b = case_000019_secondLine := by
  norm_num [case_000019_secondLine, case_000019_support, case_000019_seq, case_000019_b,
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
private theorem case_000019_rows :
    EqEqPosVarFirstRows case_000019_support case_000019_rank.val case_000019_mask := by
  intro hlt
  have hrank : (⟨case_000019_rank.val, hlt⟩ : Fin numPairWords) = case_000019_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000019_rank.val, hlt⟩ case_000019_mask =
        case_000019_seq := by
    simpa [hrank] using case_000019_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000019_rank.val, hlt⟩ case_000019_mask =
        case_000019_b := by
    simpa [hrank] using case_000019_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000019_support case_000019_rank.val hlt
          case_000019_mask = case_000019_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000019_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000019_support case_000019_rank.val hlt
          case_000019_mask = case_000019_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000019_secondLine_eq]
  have case_000019_rowFirst :
      EqEqPosRow (FirstLineAt case_000019_support case_000019_rank.val hlt case_000019_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000019_firstLine, EqEqPosRow]
  have case_000019_fixedSecond :
      FixedRow (SecondLineAt case_000019_support case_000019_rank.val hlt case_000019_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000019_secondLine, FixedRow]
  exact ⟨case_000019_rowFirst, case_000019_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000019_sourceMatches :
    fam_000_desc.SourceMatches case_000019_rank.val case_000019_mask := by
  intro hlt
  have hrank :
      (⟨case_000019_rank.val, hlt⟩ : Fin numPairWords) = case_000019_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000019_rank.val, hlt⟩ case_000019_mask =
        case_000019_seq := by
    simpa [hrank] using case_000019_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000019_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000019_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000019_rank.val hlt case_000019_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000019_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000019_applies :
    fam_000_desc.Applies case_000019_rank.val case_000019_mask := by
  exact ⟨
    case_000019_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000019_support] using case_000019_rows
  ⟩

private theorem case_000019_covered :
    BoundedCovered case_000019_rank.val case_000019_mask :=
  BoundedCovered.fam000 case_000019_applies

private def case_000020_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000020_mask : SignMask := ⟨18, by decide⟩
private def case_000020_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000020_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000020_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (20/9) }
private def case_000020_firstLine : StrictLin2 := { a := -1, b := -1, c := (-43/5) }
private def case_000020_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000020_rankWord :
    rankPairWord? case_000020_word = some case_000020_rank := by
  decide

private theorem case_000020_unrank :
    unrankPairWord case_000020_rank = case_000020_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000020_word case_000020_rank).1
    case_000020_rankWord |>.symm

private theorem case_000020_seqChoice :
    translationChoiceSeq case_000020_word case_000020_mask = case_000020_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000020_seqAtRank :
    translationSeqAtRankMask case_000020_rank case_000020_mask = case_000020_seq := by
  rw [translationSeqAtRankMask, case_000020_unrank]
  exact case_000020_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000020_bAtRank :
    translationBAtRankMask case_000020_rank case_000020_mask = case_000020_b := by
  rw [translationBAtRankMask, case_000020_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000020_b, case_000020_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000020_firstLine_eq :
    case_000020_support.firstLine case_000020_seq case_000020_b = case_000020_firstLine := by
  norm_num [case_000020_firstLine, case_000020_support, case_000020_seq, case_000020_b,
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
private theorem case_000020_secondLine_eq :
    case_000020_support.secondLine case_000020_seq case_000020_b = case_000020_secondLine := by
  norm_num [case_000020_secondLine, case_000020_support, case_000020_seq, case_000020_b,
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
private theorem case_000020_rows :
    EqEqPosVarFirstRows case_000020_support case_000020_rank.val case_000020_mask := by
  intro hlt
  have hrank : (⟨case_000020_rank.val, hlt⟩ : Fin numPairWords) = case_000020_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000020_rank.val, hlt⟩ case_000020_mask =
        case_000020_seq := by
    simpa [hrank] using case_000020_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000020_rank.val, hlt⟩ case_000020_mask =
        case_000020_b := by
    simpa [hrank] using case_000020_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000020_support case_000020_rank.val hlt
          case_000020_mask = case_000020_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000020_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000020_support case_000020_rank.val hlt
          case_000020_mask = case_000020_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000020_secondLine_eq]
  have case_000020_rowFirst :
      EqEqPosRow (FirstLineAt case_000020_support case_000020_rank.val hlt case_000020_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000020_firstLine, EqEqPosRow]
  have case_000020_fixedSecond :
      FixedRow (SecondLineAt case_000020_support case_000020_rank.val hlt case_000020_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000020_secondLine, FixedRow]
  exact ⟨case_000020_rowFirst, case_000020_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000020_sourceMatches :
    fam_000_desc.SourceMatches case_000020_rank.val case_000020_mask := by
  intro hlt
  have hrank :
      (⟨case_000020_rank.val, hlt⟩ : Fin numPairWords) = case_000020_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000020_rank.val, hlt⟩ case_000020_mask =
        case_000020_seq := by
    simpa [hrank] using case_000020_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000020_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000020_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000020_rank.val hlt case_000020_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000020_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000020_applies :
    fam_000_desc.Applies case_000020_rank.val case_000020_mask := by
  exact ⟨
    case_000020_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000020_support] using case_000020_rows
  ⟩

private theorem case_000020_covered :
    BoundedCovered case_000020_rank.val case_000020_mask :=
  BoundedCovered.fam000 case_000020_applies

private def case_000021_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000021_mask : SignMask := ⟨24, by decide⟩
private def case_000021_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000021_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000021_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (-100/9) }
private def case_000021_firstLine : StrictLin2 := { a := -1, b := -1, c := (-67/17) }
private def case_000021_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000021_rankWord :
    rankPairWord? case_000021_word = some case_000021_rank := by
  decide

private theorem case_000021_unrank :
    unrankPairWord case_000021_rank = case_000021_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000021_word case_000021_rank).1
    case_000021_rankWord |>.symm

private theorem case_000021_seqChoice :
    translationChoiceSeq case_000021_word case_000021_mask = case_000021_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000021_seqAtRank :
    translationSeqAtRankMask case_000021_rank case_000021_mask = case_000021_seq := by
  rw [translationSeqAtRankMask, case_000021_unrank]
  exact case_000021_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000021_bAtRank :
    translationBAtRankMask case_000021_rank case_000021_mask = case_000021_b := by
  rw [translationBAtRankMask, case_000021_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000021_b, case_000021_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000021_firstLine_eq :
    case_000021_support.firstLine case_000021_seq case_000021_b = case_000021_firstLine := by
  norm_num [case_000021_firstLine, case_000021_support, case_000021_seq, case_000021_b,
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
private theorem case_000021_secondLine_eq :
    case_000021_support.secondLine case_000021_seq case_000021_b = case_000021_secondLine := by
  norm_num [case_000021_secondLine, case_000021_support, case_000021_seq, case_000021_b,
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
private theorem case_000021_rows :
    EqEqPosVarFirstRows case_000021_support case_000021_rank.val case_000021_mask := by
  intro hlt
  have hrank : (⟨case_000021_rank.val, hlt⟩ : Fin numPairWords) = case_000021_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000021_rank.val, hlt⟩ case_000021_mask =
        case_000021_seq := by
    simpa [hrank] using case_000021_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000021_rank.val, hlt⟩ case_000021_mask =
        case_000021_b := by
    simpa [hrank] using case_000021_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000021_support case_000021_rank.val hlt
          case_000021_mask = case_000021_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000021_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000021_support case_000021_rank.val hlt
          case_000021_mask = case_000021_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000021_secondLine_eq]
  have case_000021_rowFirst :
      EqEqPosRow (FirstLineAt case_000021_support case_000021_rank.val hlt case_000021_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000021_firstLine, EqEqPosRow]
  have case_000021_fixedSecond :
      FixedRow (SecondLineAt case_000021_support case_000021_rank.val hlt case_000021_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000021_secondLine, FixedRow]
  exact ⟨case_000021_rowFirst, case_000021_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000021_sourceMatches :
    fam_000_desc.SourceMatches case_000021_rank.val case_000021_mask := by
  intro hlt
  have hrank :
      (⟨case_000021_rank.val, hlt⟩ : Fin numPairWords) = case_000021_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000021_rank.val, hlt⟩ case_000021_mask =
        case_000021_seq := by
    simpa [hrank] using case_000021_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000021_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000021_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000021_rank.val hlt case_000021_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000021_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000021_applies :
    fam_000_desc.Applies case_000021_rank.val case_000021_mask := by
  exact ⟨
    case_000021_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000021_support] using case_000021_rows
  ⟩

private theorem case_000021_covered :
    BoundedCovered case_000021_rank.val case_000021_mask :=
  BoundedCovered.fam000 case_000021_applies

private def case_000022_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000022_mask : SignMask := ⟨28, by decide⟩
private def case_000022_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000022_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000022_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-52/9) }
private def case_000022_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000022_secondLine : StrictLin2 := { a := (-87/518), b := (87/518), c := (-45/259) }

private theorem case_000022_rankWord :
    rankPairWord? case_000022_word = some case_000022_rank := by
  decide

private theorem case_000022_unrank :
    unrankPairWord case_000022_rank = case_000022_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000022_word case_000022_rank).1
    case_000022_rankWord |>.symm

private theorem case_000022_seqChoice :
    translationChoiceSeq case_000022_word case_000022_mask = case_000022_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000022_seqAtRank :
    translationSeqAtRankMask case_000022_rank case_000022_mask = case_000022_seq := by
  rw [translationSeqAtRankMask, case_000022_unrank]
  exact case_000022_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000022_bAtRank :
    translationBAtRankMask case_000022_rank case_000022_mask = case_000022_b := by
  rw [translationBAtRankMask, case_000022_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000022_b, case_000022_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000022_firstLine_eq :
    case_000022_support.firstLine case_000022_seq case_000022_b = case_000022_firstLine := by
  norm_num [case_000022_firstLine, case_000022_support, case_000022_seq, case_000022_b,
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
private theorem case_000022_secondLine_eq :
    case_000022_support.secondLine case_000022_seq case_000022_b = case_000022_secondLine := by
  norm_num [case_000022_secondLine, case_000022_support, case_000022_seq, case_000022_b,
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
private theorem case_000022_rows :
    OppOneMinusVarSecondRows case_000022_support case_000022_rank.val case_000022_mask := by
  intro hlt
  have hrank : (⟨case_000022_rank.val, hlt⟩ : Fin numPairWords) = case_000022_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000022_rank.val, hlt⟩ case_000022_mask =
        case_000022_seq := by
    simpa [hrank] using case_000022_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000022_rank.val, hlt⟩ case_000022_mask =
        case_000022_b := by
    simpa [hrank] using case_000022_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000022_support case_000022_rank.val hlt
          case_000022_mask = case_000022_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000022_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000022_support case_000022_rank.val hlt
          case_000022_mask = case_000022_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000022_secondLine_eq]
  have case_000022_fixedFirst :
      FixedRow (FirstLineAt case_000022_support case_000022_rank.val hlt case_000022_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000022_firstLine, FixedRow]
  have case_000022_rowSecond :
      OppPosRow (SecondLineAt case_000022_support case_000022_rank.val hlt case_000022_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000022_secondLine, OppPosRow]
  exact ⟨case_000022_fixedFirst, case_000022_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000022_sourceMatches :
    fam_013_desc.SourceMatches case_000022_rank.val case_000022_mask := by
  intro hlt
  have hrank :
      (⟨case_000022_rank.val, hlt⟩ : Fin numPairWords) = case_000022_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000022_rank.val, hlt⟩ case_000022_mask =
        case_000022_seq := by
    simpa [hrank] using case_000022_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000022_seq)
          fam_013_desc.firstIndex = some fam_013_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000022_seq)
          fam_013_desc.secondIndex = some fam_013_support.second := by
    decide
  have hchecks :
      SourceChecks fam_013_support case_000022_rank.val hlt case_000022_mask := by
    simp [SourceChecks, hseq, fam_013_support,
      checkTranslationConstraintSource, case_000022_seq, impactFace]
  exact ⟨
    by simpa [fam_013_desc, hseq] using hfirstIndex,
    by simpa [fam_013_desc, hseq] using hsecondIndex,
    by simpa [fam_013_desc] using hchecks
  ⟩

private theorem case_000022_applies :
    fam_013_desc.Applies case_000022_rank.val case_000022_mask := by
  exact ⟨
    case_000022_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_013_desc, fam_013_support, case_000022_support] using case_000022_rows
  ⟩

private theorem case_000022_covered :
    BoundedCovered case_000022_rank.val case_000022_mask :=
  BoundedCovered.fam013 case_000022_applies

private def case_000023_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000023_mask : SignMask := ⟨29, by decide⟩
private def case_000023_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000023_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000023_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (-52/9) }
private def case_000023_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000023_secondLine : StrictLin2 := { a := (-9/52), b := (-9/52), c := (-9/26) }

private theorem case_000023_rankWord :
    rankPairWord? case_000023_word = some case_000023_rank := by
  decide

private theorem case_000023_unrank :
    unrankPairWord case_000023_rank = case_000023_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000023_word case_000023_rank).1
    case_000023_rankWord |>.symm

private theorem case_000023_seqChoice :
    translationChoiceSeq case_000023_word case_000023_mask = case_000023_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000023_seqAtRank :
    translationSeqAtRankMask case_000023_rank case_000023_mask = case_000023_seq := by
  rw [translationSeqAtRankMask, case_000023_unrank]
  exact case_000023_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000023_bAtRank :
    translationBAtRankMask case_000023_rank case_000023_mask = case_000023_b := by
  rw [translationBAtRankMask, case_000023_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000023_b, case_000023_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000023_firstLine_eq :
    case_000023_support.firstLine case_000023_seq case_000023_b = case_000023_firstLine := by
  norm_num [case_000023_firstLine, case_000023_support, case_000023_seq, case_000023_b,
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
private theorem case_000023_secondLine_eq :
    case_000023_support.secondLine case_000023_seq case_000023_b = case_000023_secondLine := by
  norm_num [case_000023_secondLine, case_000023_support, case_000023_seq, case_000023_b,
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
private theorem case_000023_rows :
    EqEqPosVarSecondRows case_000023_support case_000023_rank.val case_000023_mask := by
  intro hlt
  have hrank : (⟨case_000023_rank.val, hlt⟩ : Fin numPairWords) = case_000023_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000023_rank.val, hlt⟩ case_000023_mask =
        case_000023_seq := by
    simpa [hrank] using case_000023_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000023_rank.val, hlt⟩ case_000023_mask =
        case_000023_b := by
    simpa [hrank] using case_000023_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000023_support case_000023_rank.val hlt
          case_000023_mask = case_000023_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000023_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000023_support case_000023_rank.val hlt
          case_000023_mask = case_000023_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000023_secondLine_eq]
  have case_000023_fixedFirst :
      FixedRow (FirstLineAt case_000023_support case_000023_rank.val hlt case_000023_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000023_firstLine, FixedRow]
  have case_000023_rowSecond :
      EqEqPosRow (SecondLineAt case_000023_support case_000023_rank.val hlt case_000023_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000023_secondLine, EqEqPosRow]
  exact ⟨case_000023_fixedFirst, case_000023_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000023_sourceMatches :
    fam_002_desc.SourceMatches case_000023_rank.val case_000023_mask := by
  intro hlt
  have hrank :
      (⟨case_000023_rank.val, hlt⟩ : Fin numPairWords) = case_000023_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000023_rank.val, hlt⟩ case_000023_mask =
        case_000023_seq := by
    simpa [hrank] using case_000023_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000023_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000023_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000023_rank.val hlt case_000023_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000023_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000023_applies :
    fam_002_desc.Applies case_000023_rank.val case_000023_mask := by
  exact ⟨
    case_000023_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000023_support] using case_000023_rows
  ⟩

private theorem case_000023_covered :
    BoundedCovered case_000023_rank.val case_000023_mask :=
  BoundedCovered.fam002 case_000023_applies

private def case_000024_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000024_mask : SignMask := ⟨30, by decide⟩
private def case_000024_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000024_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tpmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tmpm
private def case_000024_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (20/9) }
private def case_000024_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000024_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000024_rankWord :
    rankPairWord? case_000024_word = some case_000024_rank := by
  decide

private theorem case_000024_unrank :
    unrankPairWord case_000024_rank = case_000024_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000024_word case_000024_rank).1
    case_000024_rankWord |>.symm

private theorem case_000024_seqChoice :
    translationChoiceSeq case_000024_word case_000024_mask = case_000024_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000024_seqAtRank :
    translationSeqAtRankMask case_000024_rank case_000024_mask = case_000024_seq := by
  rw [translationSeqAtRankMask, case_000024_unrank]
  exact case_000024_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000024_bAtRank :
    translationBAtRankMask case_000024_rank case_000024_mask = case_000024_b := by
  rw [translationBAtRankMask, case_000024_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000024_b, case_000024_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000024_firstLine_eq :
    case_000024_support.firstLine case_000024_seq case_000024_b = case_000024_firstLine := by
  norm_num [case_000024_firstLine, case_000024_support, case_000024_seq, case_000024_b,
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
private theorem case_000024_secondLine_eq :
    case_000024_support.secondLine case_000024_seq case_000024_b = case_000024_secondLine := by
  norm_num [case_000024_secondLine, case_000024_support, case_000024_seq, case_000024_b,
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
private theorem case_000024_rows :
    EqEqPosVarFirstRows case_000024_support case_000024_rank.val case_000024_mask := by
  intro hlt
  have hrank : (⟨case_000024_rank.val, hlt⟩ : Fin numPairWords) = case_000024_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000024_rank.val, hlt⟩ case_000024_mask =
        case_000024_seq := by
    simpa [hrank] using case_000024_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000024_rank.val, hlt⟩ case_000024_mask =
        case_000024_b := by
    simpa [hrank] using case_000024_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000024_support case_000024_rank.val hlt
          case_000024_mask = case_000024_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000024_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000024_support case_000024_rank.val hlt
          case_000024_mask = case_000024_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000024_secondLine_eq]
  have case_000024_rowFirst :
      EqEqPosRow (FirstLineAt case_000024_support case_000024_rank.val hlt case_000024_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000024_firstLine, EqEqPosRow]
  have case_000024_fixedSecond :
      FixedRow (SecondLineAt case_000024_support case_000024_rank.val hlt case_000024_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000024_secondLine, FixedRow]
  exact ⟨case_000024_rowFirst, case_000024_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000024_sourceMatches :
    fam_001_desc.SourceMatches case_000024_rank.val case_000024_mask := by
  intro hlt
  have hrank :
      (⟨case_000024_rank.val, hlt⟩ : Fin numPairWords) = case_000024_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000024_rank.val, hlt⟩ case_000024_mask =
        case_000024_seq := by
    simpa [hrank] using case_000024_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000024_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000024_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000024_rank.val hlt case_000024_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000024_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000024_applies :
    fam_001_desc.Applies case_000024_rank.val case_000024_mask := by
  exact ⟨
    case_000024_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000024_support] using case_000024_rows
  ⟩

private theorem case_000024_covered :
    BoundedCovered case_000024_rank.val case_000024_mask :=
  BoundedCovered.fam001 case_000024_applies

private def case_000025_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000025_mask : SignMask := ⟨47, by decide⟩
private def case_000025_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000025_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tpmp
private def case_000025_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (52/9) }
private def case_000025_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000025_secondLine : StrictLin2 := { a := (39/58), b := (-39/58), c := (-48/29) }

private theorem case_000025_rankWord :
    rankPairWord? case_000025_word = some case_000025_rank := by
  decide

private theorem case_000025_unrank :
    unrankPairWord case_000025_rank = case_000025_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000025_word case_000025_rank).1
    case_000025_rankWord |>.symm

private theorem case_000025_seqChoice :
    translationChoiceSeq case_000025_word case_000025_mask = case_000025_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000025_seqAtRank :
    translationSeqAtRankMask case_000025_rank case_000025_mask = case_000025_seq := by
  rw [translationSeqAtRankMask, case_000025_unrank]
  exact case_000025_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000025_bAtRank :
    translationBAtRankMask case_000025_rank case_000025_mask = case_000025_b := by
  rw [translationBAtRankMask, case_000025_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000025_b, case_000025_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000025_firstLine_eq :
    case_000025_support.firstLine case_000025_seq case_000025_b = case_000025_firstLine := by
  norm_num [case_000025_firstLine, case_000025_support, case_000025_seq, case_000025_b,
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
private theorem case_000025_secondLine_eq :
    case_000025_support.secondLine case_000025_seq case_000025_b = case_000025_secondLine := by
  norm_num [case_000025_secondLine, case_000025_support, case_000025_seq, case_000025_b,
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
private theorem case_000025_rows :
    OppMinusOneVarSecondRows case_000025_support case_000025_rank.val case_000025_mask := by
  intro hlt
  have hrank : (⟨case_000025_rank.val, hlt⟩ : Fin numPairWords) = case_000025_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000025_rank.val, hlt⟩ case_000025_mask =
        case_000025_seq := by
    simpa [hrank] using case_000025_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000025_rank.val, hlt⟩ case_000025_mask =
        case_000025_b := by
    simpa [hrank] using case_000025_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000025_support case_000025_rank.val hlt
          case_000025_mask = case_000025_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000025_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000025_support case_000025_rank.val hlt
          case_000025_mask = case_000025_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000025_secondLine_eq]
  have case_000025_fixedFirst :
      FixedRow (FirstLineAt case_000025_support case_000025_rank.val hlt case_000025_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000025_firstLine, FixedRow]
  have case_000025_rowSecond :
      OppNegRow (SecondLineAt case_000025_support case_000025_rank.val hlt case_000025_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000025_secondLine, OppNegRow]
  exact ⟨case_000025_fixedFirst, case_000025_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000025_sourceMatches :
    fam_006_desc.SourceMatches case_000025_rank.val case_000025_mask := by
  intro hlt
  have hrank :
      (⟨case_000025_rank.val, hlt⟩ : Fin numPairWords) = case_000025_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000025_rank.val, hlt⟩ case_000025_mask =
        case_000025_seq := by
    simpa [hrank] using case_000025_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000025_seq)
          fam_006_desc.firstIndex = some fam_006_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000025_seq)
          fam_006_desc.secondIndex = some fam_006_support.second := by
    decide
  have hchecks :
      SourceChecks fam_006_support case_000025_rank.val hlt case_000025_mask := by
    simp [SourceChecks, hseq, fam_006_support,
      checkTranslationConstraintSource, case_000025_seq, impactFace]
  exact ⟨
    by simpa [fam_006_desc, hseq] using hfirstIndex,
    by simpa [fam_006_desc, hseq] using hsecondIndex,
    by simpa [fam_006_desc] using hchecks
  ⟩

private theorem case_000025_applies :
    fam_006_desc.Applies case_000025_rank.val case_000025_mask := by
  exact ⟨
    case_000025_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_006_desc, fam_006_support, case_000025_support] using case_000025_rows
  ⟩

private theorem case_000025_covered :
    BoundedCovered case_000025_rank.val case_000025_mask :=
  BoundedCovered.fam006 case_000025_applies

private def case_000026_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000026_mask : SignMask := ⟨54, by decide⟩
private def case_000026_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000026_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000026_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (148/9) }
private def case_000026_firstLine : StrictLin2 := { a := -1, b := 1, c := (-87/13) }
private def case_000026_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000026_rankWord :
    rankPairWord? case_000026_word = some case_000026_rank := by
  decide

private theorem case_000026_unrank :
    unrankPairWord case_000026_rank = case_000026_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000026_word case_000026_rank).1
    case_000026_rankWord |>.symm

private theorem case_000026_seqChoice :
    translationChoiceSeq case_000026_word case_000026_mask = case_000026_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000026_seqAtRank :
    translationSeqAtRankMask case_000026_rank case_000026_mask = case_000026_seq := by
  rw [translationSeqAtRankMask, case_000026_unrank]
  exact case_000026_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000026_bAtRank :
    translationBAtRankMask case_000026_rank case_000026_mask = case_000026_b := by
  rw [translationBAtRankMask, case_000026_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000026_b, case_000026_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000026_firstLine_eq :
    case_000026_support.firstLine case_000026_seq case_000026_b = case_000026_firstLine := by
  norm_num [case_000026_firstLine, case_000026_support, case_000026_seq, case_000026_b,
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
private theorem case_000026_secondLine_eq :
    case_000026_support.secondLine case_000026_seq case_000026_b = case_000026_secondLine := by
  norm_num [case_000026_secondLine, case_000026_support, case_000026_seq, case_000026_b,
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
private theorem case_000026_rows :
    OppOneMinusVarFirstRows case_000026_support case_000026_rank.val case_000026_mask := by
  intro hlt
  have hrank : (⟨case_000026_rank.val, hlt⟩ : Fin numPairWords) = case_000026_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000026_rank.val, hlt⟩ case_000026_mask =
        case_000026_seq := by
    simpa [hrank] using case_000026_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000026_rank.val, hlt⟩ case_000026_mask =
        case_000026_b := by
    simpa [hrank] using case_000026_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000026_support case_000026_rank.val hlt
          case_000026_mask = case_000026_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000026_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000026_support case_000026_rank.val hlt
          case_000026_mask = case_000026_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000026_secondLine_eq]
  have case_000026_rowFirst :
      OppPosRow (FirstLineAt case_000026_support case_000026_rank.val hlt case_000026_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000026_firstLine, OppPosRow]
  have case_000026_fixedSecond :
      FixedRow (SecondLineAt case_000026_support case_000026_rank.val hlt case_000026_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000026_secondLine, FixedRow]
  exact ⟨case_000026_rowFirst, case_000026_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000026_sourceMatches :
    fam_003_desc.SourceMatches case_000026_rank.val case_000026_mask := by
  intro hlt
  have hrank :
      (⟨case_000026_rank.val, hlt⟩ : Fin numPairWords) = case_000026_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000026_rank.val, hlt⟩ case_000026_mask =
        case_000026_seq := by
    simpa [hrank] using case_000026_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000026_seq)
          fam_003_desc.firstIndex = some fam_003_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000026_seq)
          fam_003_desc.secondIndex = some fam_003_support.second := by
    decide
  have hchecks :
      SourceChecks fam_003_support case_000026_rank.val hlt case_000026_mask := by
    simp [SourceChecks, hseq, fam_003_support,
      checkTranslationConstraintSource, case_000026_seq, impactFace]
  exact ⟨
    by simpa [fam_003_desc, hseq] using hfirstIndex,
    by simpa [fam_003_desc, hseq] using hsecondIndex,
    by simpa [fam_003_desc] using hchecks
  ⟩

private theorem case_000026_applies :
    fam_003_desc.Applies case_000026_rank.val case_000026_mask := by
  exact ⟨
    case_000026_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_003_desc, fam_003_support, case_000026_support] using case_000026_rows
  ⟩

private theorem case_000026_covered :
    BoundedCovered case_000026_rank.val case_000026_mask :=
  BoundedCovered.fam003 case_000026_applies

private def case_000027_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000027_mask : SignMask := ⟨55, by decide⟩
private def case_000027_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000027_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000027_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (148/9) }
private def case_000027_firstLine : StrictLin2 := { a := -1, b := 1, c := (-51/13) }
private def case_000027_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000027_rankWord :
    rankPairWord? case_000027_word = some case_000027_rank := by
  decide

private theorem case_000027_unrank :
    unrankPairWord case_000027_rank = case_000027_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000027_word case_000027_rank).1
    case_000027_rankWord |>.symm

private theorem case_000027_seqChoice :
    translationChoiceSeq case_000027_word case_000027_mask = case_000027_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000027_seqAtRank :
    translationSeqAtRankMask case_000027_rank case_000027_mask = case_000027_seq := by
  rw [translationSeqAtRankMask, case_000027_unrank]
  exact case_000027_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000027_bAtRank :
    translationBAtRankMask case_000027_rank case_000027_mask = case_000027_b := by
  rw [translationBAtRankMask, case_000027_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000027_b, case_000027_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000027_firstLine_eq :
    case_000027_support.firstLine case_000027_seq case_000027_b = case_000027_firstLine := by
  norm_num [case_000027_firstLine, case_000027_support, case_000027_seq, case_000027_b,
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
private theorem case_000027_secondLine_eq :
    case_000027_support.secondLine case_000027_seq case_000027_b = case_000027_secondLine := by
  norm_num [case_000027_secondLine, case_000027_support, case_000027_seq, case_000027_b,
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
private theorem case_000027_rows :
    OppOneMinusVarFirstRows case_000027_support case_000027_rank.val case_000027_mask := by
  intro hlt
  have hrank : (⟨case_000027_rank.val, hlt⟩ : Fin numPairWords) = case_000027_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000027_rank.val, hlt⟩ case_000027_mask =
        case_000027_seq := by
    simpa [hrank] using case_000027_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000027_rank.val, hlt⟩ case_000027_mask =
        case_000027_b := by
    simpa [hrank] using case_000027_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000027_support case_000027_rank.val hlt
          case_000027_mask = case_000027_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000027_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000027_support case_000027_rank.val hlt
          case_000027_mask = case_000027_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000027_secondLine_eq]
  have case_000027_rowFirst :
      OppPosRow (FirstLineAt case_000027_support case_000027_rank.val hlt case_000027_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000027_firstLine, OppPosRow]
  have case_000027_fixedSecond :
      FixedRow (SecondLineAt case_000027_support case_000027_rank.val hlt case_000027_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000027_secondLine, FixedRow]
  exact ⟨case_000027_rowFirst, case_000027_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000027_sourceMatches :
    fam_003_desc.SourceMatches case_000027_rank.val case_000027_mask := by
  intro hlt
  have hrank :
      (⟨case_000027_rank.val, hlt⟩ : Fin numPairWords) = case_000027_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000027_rank.val, hlt⟩ case_000027_mask =
        case_000027_seq := by
    simpa [hrank] using case_000027_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000027_seq)
          fam_003_desc.firstIndex = some fam_003_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000027_seq)
          fam_003_desc.secondIndex = some fam_003_support.second := by
    decide
  have hchecks :
      SourceChecks fam_003_support case_000027_rank.val hlt case_000027_mask := by
    simp [SourceChecks, hseq, fam_003_support,
      checkTranslationConstraintSource, case_000027_seq, impactFace]
  exact ⟨
    by simpa [fam_003_desc, hseq] using hfirstIndex,
    by simpa [fam_003_desc, hseq] using hsecondIndex,
    by simpa [fam_003_desc] using hchecks
  ⟩

private theorem case_000027_applies :
    fam_003_desc.Applies case_000027_rank.val case_000027_mask := by
  exact ⟨
    case_000027_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_003_desc, fam_003_support, case_000027_support] using case_000027_rows
  ⟩

private theorem case_000027_covered :
    BoundedCovered case_000027_rank.val case_000027_mask :=
  BoundedCovered.fam003 case_000027_applies

private def case_000028_rank : Fin numPairWords := ⟨2, by decide⟩
private def case_000028_mask : SignMask := ⟨63, by decide⟩
private def case_000028_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d1m1], by decide⟩
private def case_000028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000028_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpm
private def case_000028_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (100/9) }
private def case_000028_firstLine : StrictLin2 := { a := (-25/67), b := (-25/67), c := (-57/67) }
private def case_000028_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000028_rankWord :
    rankPairWord? case_000028_word = some case_000028_rank := by
  decide

private theorem case_000028_unrank :
    unrankPairWord case_000028_rank = case_000028_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000028_word case_000028_rank).1
    case_000028_rankWord |>.symm

private theorem case_000028_seqChoice :
    translationChoiceSeq case_000028_word case_000028_mask = case_000028_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000028_seqAtRank :
    translationSeqAtRankMask case_000028_rank case_000028_mask = case_000028_seq := by
  rw [translationSeqAtRankMask, case_000028_unrank]
  exact case_000028_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000028_bAtRank :
    translationBAtRankMask case_000028_rank case_000028_mask = case_000028_b := by
  rw [translationBAtRankMask, case_000028_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000028_b, case_000028_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000028_firstLine_eq :
    case_000028_support.firstLine case_000028_seq case_000028_b = case_000028_firstLine := by
  norm_num [case_000028_firstLine, case_000028_support, case_000028_seq, case_000028_b,
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
private theorem case_000028_secondLine_eq :
    case_000028_support.secondLine case_000028_seq case_000028_b = case_000028_secondLine := by
  norm_num [case_000028_secondLine, case_000028_support, case_000028_seq, case_000028_b,
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
private theorem case_000028_rows :
    EqEqPosVarFirstRows case_000028_support case_000028_rank.val case_000028_mask := by
  intro hlt
  have hrank : (⟨case_000028_rank.val, hlt⟩ : Fin numPairWords) = case_000028_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000028_rank.val, hlt⟩ case_000028_mask =
        case_000028_seq := by
    simpa [hrank] using case_000028_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000028_rank.val, hlt⟩ case_000028_mask =
        case_000028_b := by
    simpa [hrank] using case_000028_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000028_support case_000028_rank.val hlt
          case_000028_mask = case_000028_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000028_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000028_support case_000028_rank.val hlt
          case_000028_mask = case_000028_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000028_secondLine_eq]
  have case_000028_rowFirst :
      EqEqPosRow (FirstLineAt case_000028_support case_000028_rank.val hlt case_000028_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000028_firstLine, EqEqPosRow]
  have case_000028_fixedSecond :
      FixedRow (SecondLineAt case_000028_support case_000028_rank.val hlt case_000028_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000028_secondLine, FixedRow]
  exact ⟨case_000028_rowFirst, case_000028_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000028_sourceMatches :
    fam_001_desc.SourceMatches case_000028_rank.val case_000028_mask := by
  intro hlt
  have hrank :
      (⟨case_000028_rank.val, hlt⟩ : Fin numPairWords) = case_000028_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000028_rank.val, hlt⟩ case_000028_mask =
        case_000028_seq := by
    simpa [hrank] using case_000028_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000028_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000028_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000028_rank.val hlt case_000028_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000028_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000028_applies :
    fam_001_desc.Applies case_000028_rank.val case_000028_mask := by
  exact ⟨
    case_000028_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000028_support] using case_000028_rows
  ⟩

private theorem case_000028_covered :
    BoundedCovered case_000028_rank.val case_000028_mask :=
  BoundedCovered.fam001 case_000028_applies

private def case_000029_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000029_mask : SignMask := ⟨8, by decide⟩
private def case_000029_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000029_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000029_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (-148/9) }
private def case_000029_firstLine : StrictLin2 := { a := -1, b := -1, c := (-87/13) }
private def case_000029_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000029_rankWord :
    rankPairWord? case_000029_word = some case_000029_rank := by
  decide

private theorem case_000029_unrank :
    unrankPairWord case_000029_rank = case_000029_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000029_word case_000029_rank).1
    case_000029_rankWord |>.symm

private theorem case_000029_seqChoice :
    translationChoiceSeq case_000029_word case_000029_mask = case_000029_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000029_seqAtRank :
    translationSeqAtRankMask case_000029_rank case_000029_mask = case_000029_seq := by
  rw [translationSeqAtRankMask, case_000029_unrank]
  exact case_000029_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000029_bAtRank :
    translationBAtRankMask case_000029_rank case_000029_mask = case_000029_b := by
  rw [translationBAtRankMask, case_000029_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000029_b, case_000029_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000029_firstLine_eq :
    case_000029_support.firstLine case_000029_seq case_000029_b = case_000029_firstLine := by
  norm_num [case_000029_firstLine, case_000029_support, case_000029_seq, case_000029_b,
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
private theorem case_000029_secondLine_eq :
    case_000029_support.secondLine case_000029_seq case_000029_b = case_000029_secondLine := by
  norm_num [case_000029_secondLine, case_000029_support, case_000029_seq, case_000029_b,
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
private theorem case_000029_rows :
    EqEqPosVarFirstRows case_000029_support case_000029_rank.val case_000029_mask := by
  intro hlt
  have hrank : (⟨case_000029_rank.val, hlt⟩ : Fin numPairWords) = case_000029_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000029_rank.val, hlt⟩ case_000029_mask =
        case_000029_seq := by
    simpa [hrank] using case_000029_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000029_rank.val, hlt⟩ case_000029_mask =
        case_000029_b := by
    simpa [hrank] using case_000029_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000029_support case_000029_rank.val hlt
          case_000029_mask = case_000029_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000029_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000029_support case_000029_rank.val hlt
          case_000029_mask = case_000029_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000029_secondLine_eq]
  have case_000029_rowFirst :
      EqEqPosRow (FirstLineAt case_000029_support case_000029_rank.val hlt case_000029_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000029_firstLine, EqEqPosRow]
  have case_000029_fixedSecond :
      FixedRow (SecondLineAt case_000029_support case_000029_rank.val hlt case_000029_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000029_secondLine, FixedRow]
  exact ⟨case_000029_rowFirst, case_000029_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000029_sourceMatches :
    fam_000_desc.SourceMatches case_000029_rank.val case_000029_mask := by
  intro hlt
  have hrank :
      (⟨case_000029_rank.val, hlt⟩ : Fin numPairWords) = case_000029_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000029_rank.val, hlt⟩ case_000029_mask =
        case_000029_seq := by
    simpa [hrank] using case_000029_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000029_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000029_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000029_rank.val hlt case_000029_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000029_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000029_applies :
    fam_000_desc.Applies case_000029_rank.val case_000029_mask := by
  exact ⟨
    case_000029_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000029_support] using case_000029_rows
  ⟩

private theorem case_000029_covered :
    BoundedCovered case_000029_rank.val case_000029_mask :=
  BoundedCovered.fam000 case_000029_applies

private def case_000030_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000030_mask : SignMask := ⟨9, by decide⟩
private def case_000030_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000030_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000030_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (-148/9) }
private def case_000030_firstLine : StrictLin2 := { a := -1, b := -1, c := (-51/13) }
private def case_000030_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000030_rankWord :
    rankPairWord? case_000030_word = some case_000030_rank := by
  decide

private theorem case_000030_unrank :
    unrankPairWord case_000030_rank = case_000030_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000030_word case_000030_rank).1
    case_000030_rankWord |>.symm

private theorem case_000030_seqChoice :
    translationChoiceSeq case_000030_word case_000030_mask = case_000030_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000030_seqAtRank :
    translationSeqAtRankMask case_000030_rank case_000030_mask = case_000030_seq := by
  rw [translationSeqAtRankMask, case_000030_unrank]
  exact case_000030_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000030_bAtRank :
    translationBAtRankMask case_000030_rank case_000030_mask = case_000030_b := by
  rw [translationBAtRankMask, case_000030_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000030_b, case_000030_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000030_firstLine_eq :
    case_000030_support.firstLine case_000030_seq case_000030_b = case_000030_firstLine := by
  norm_num [case_000030_firstLine, case_000030_support, case_000030_seq, case_000030_b,
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
private theorem case_000030_secondLine_eq :
    case_000030_support.secondLine case_000030_seq case_000030_b = case_000030_secondLine := by
  norm_num [case_000030_secondLine, case_000030_support, case_000030_seq, case_000030_b,
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
private theorem case_000030_rows :
    EqEqPosVarFirstRows case_000030_support case_000030_rank.val case_000030_mask := by
  intro hlt
  have hrank : (⟨case_000030_rank.val, hlt⟩ : Fin numPairWords) = case_000030_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000030_rank.val, hlt⟩ case_000030_mask =
        case_000030_seq := by
    simpa [hrank] using case_000030_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000030_rank.val, hlt⟩ case_000030_mask =
        case_000030_b := by
    simpa [hrank] using case_000030_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000030_support case_000030_rank.val hlt
          case_000030_mask = case_000030_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000030_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000030_support case_000030_rank.val hlt
          case_000030_mask = case_000030_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000030_secondLine_eq]
  have case_000030_rowFirst :
      EqEqPosRow (FirstLineAt case_000030_support case_000030_rank.val hlt case_000030_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000030_firstLine, EqEqPosRow]
  have case_000030_fixedSecond :
      FixedRow (SecondLineAt case_000030_support case_000030_rank.val hlt case_000030_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000030_secondLine, FixedRow]
  exact ⟨case_000030_rowFirst, case_000030_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000030_sourceMatches :
    fam_000_desc.SourceMatches case_000030_rank.val case_000030_mask := by
  intro hlt
  have hrank :
      (⟨case_000030_rank.val, hlt⟩ : Fin numPairWords) = case_000030_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000030_rank.val, hlt⟩ case_000030_mask =
        case_000030_seq := by
    simpa [hrank] using case_000030_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000030_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000030_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000030_rank.val hlt case_000030_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000030_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000030_applies :
    fam_000_desc.Applies case_000030_rank.val case_000030_mask := by
  exact ⟨
    case_000030_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000030_support] using case_000030_rows
  ⟩

private theorem case_000030_covered :
    BoundedCovered case_000030_rank.val case_000030_mask :=
  BoundedCovered.fam000 case_000030_applies

private def case_000031_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000031_mask : SignMask := ⟨13, by decide⟩
private def case_000031_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000031_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000031_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (-100/9) }
private def case_000031_firstLine : StrictLin2 := { a := (-25/17), b := (-25/17), c := (-57/17) }
private def case_000031_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000031_rankWord :
    rankPairWord? case_000031_word = some case_000031_rank := by
  decide

private theorem case_000031_unrank :
    unrankPairWord case_000031_rank = case_000031_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000031_word case_000031_rank).1
    case_000031_rankWord |>.symm

private theorem case_000031_seqChoice :
    translationChoiceSeq case_000031_word case_000031_mask = case_000031_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000031_seqAtRank :
    translationSeqAtRankMask case_000031_rank case_000031_mask = case_000031_seq := by
  rw [translationSeqAtRankMask, case_000031_unrank]
  exact case_000031_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000031_bAtRank :
    translationBAtRankMask case_000031_rank case_000031_mask = case_000031_b := by
  rw [translationBAtRankMask, case_000031_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000031_b, case_000031_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000031_firstLine_eq :
    case_000031_support.firstLine case_000031_seq case_000031_b = case_000031_firstLine := by
  norm_num [case_000031_firstLine, case_000031_support, case_000031_seq, case_000031_b,
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
private theorem case_000031_secondLine_eq :
    case_000031_support.secondLine case_000031_seq case_000031_b = case_000031_secondLine := by
  norm_num [case_000031_secondLine, case_000031_support, case_000031_seq, case_000031_b,
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
private theorem case_000031_rows :
    EqEqPosVarFirstRows case_000031_support case_000031_rank.val case_000031_mask := by
  intro hlt
  have hrank : (⟨case_000031_rank.val, hlt⟩ : Fin numPairWords) = case_000031_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000031_rank.val, hlt⟩ case_000031_mask =
        case_000031_seq := by
    simpa [hrank] using case_000031_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000031_rank.val, hlt⟩ case_000031_mask =
        case_000031_b := by
    simpa [hrank] using case_000031_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000031_support case_000031_rank.val hlt
          case_000031_mask = case_000031_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000031_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000031_support case_000031_rank.val hlt
          case_000031_mask = case_000031_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000031_secondLine_eq]
  have case_000031_rowFirst :
      EqEqPosRow (FirstLineAt case_000031_support case_000031_rank.val hlt case_000031_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000031_firstLine, EqEqPosRow]
  have case_000031_fixedSecond :
      FixedRow (SecondLineAt case_000031_support case_000031_rank.val hlt case_000031_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000031_secondLine, FixedRow]
  exact ⟨case_000031_rowFirst, case_000031_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000031_sourceMatches :
    fam_001_desc.SourceMatches case_000031_rank.val case_000031_mask := by
  intro hlt
  have hrank :
      (⟨case_000031_rank.val, hlt⟩ : Fin numPairWords) = case_000031_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000031_rank.val, hlt⟩ case_000031_mask =
        case_000031_seq := by
    simpa [hrank] using case_000031_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000031_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000031_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000031_rank.val hlt case_000031_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000031_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000031_applies :
    fam_001_desc.Applies case_000031_rank.val case_000031_mask := by
  exact ⟨
    case_000031_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000031_support] using case_000031_rows
  ⟩

private theorem case_000031_covered :
    BoundedCovered case_000031_rank.val case_000031_mask :=
  BoundedCovered.fam001 case_000031_applies

private def case_000032_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000032_mask : SignMask := ⟨16, by decide⟩
private def case_000032_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000032_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000032_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-20/9) }
private def case_000032_firstLine : StrictLin2 := { a := -1, b := -1, c := (-63/5) }
private def case_000032_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000032_rankWord :
    rankPairWord? case_000032_word = some case_000032_rank := by
  decide

private theorem case_000032_unrank :
    unrankPairWord case_000032_rank = case_000032_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000032_word case_000032_rank).1
    case_000032_rankWord |>.symm

private theorem case_000032_seqChoice :
    translationChoiceSeq case_000032_word case_000032_mask = case_000032_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000032_seqAtRank :
    translationSeqAtRankMask case_000032_rank case_000032_mask = case_000032_seq := by
  rw [translationSeqAtRankMask, case_000032_unrank]
  exact case_000032_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000032_bAtRank :
    translationBAtRankMask case_000032_rank case_000032_mask = case_000032_b := by
  rw [translationBAtRankMask, case_000032_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000032_b, case_000032_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000032_firstLine_eq :
    case_000032_support.firstLine case_000032_seq case_000032_b = case_000032_firstLine := by
  norm_num [case_000032_firstLine, case_000032_support, case_000032_seq, case_000032_b,
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
private theorem case_000032_secondLine_eq :
    case_000032_support.secondLine case_000032_seq case_000032_b = case_000032_secondLine := by
  norm_num [case_000032_secondLine, case_000032_support, case_000032_seq, case_000032_b,
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
private theorem case_000032_rows :
    EqEqPosVarFirstRows case_000032_support case_000032_rank.val case_000032_mask := by
  intro hlt
  have hrank : (⟨case_000032_rank.val, hlt⟩ : Fin numPairWords) = case_000032_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000032_rank.val, hlt⟩ case_000032_mask =
        case_000032_seq := by
    simpa [hrank] using case_000032_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000032_rank.val, hlt⟩ case_000032_mask =
        case_000032_b := by
    simpa [hrank] using case_000032_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000032_support case_000032_rank.val hlt
          case_000032_mask = case_000032_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000032_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000032_support case_000032_rank.val hlt
          case_000032_mask = case_000032_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000032_secondLine_eq]
  have case_000032_rowFirst :
      EqEqPosRow (FirstLineAt case_000032_support case_000032_rank.val hlt case_000032_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000032_firstLine, EqEqPosRow]
  have case_000032_fixedSecond :
      FixedRow (SecondLineAt case_000032_support case_000032_rank.val hlt case_000032_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000032_secondLine, FixedRow]
  exact ⟨case_000032_rowFirst, case_000032_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000032_sourceMatches :
    fam_000_desc.SourceMatches case_000032_rank.val case_000032_mask := by
  intro hlt
  have hrank :
      (⟨case_000032_rank.val, hlt⟩ : Fin numPairWords) = case_000032_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000032_rank.val, hlt⟩ case_000032_mask =
        case_000032_seq := by
    simpa [hrank] using case_000032_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000032_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000032_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000032_rank.val hlt case_000032_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000032_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000032_applies :
    fam_000_desc.Applies case_000032_rank.val case_000032_mask := by
  exact ⟨
    case_000032_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000032_support] using case_000032_rows
  ⟩

private theorem case_000032_covered :
    BoundedCovered case_000032_rank.val case_000032_mask :=
  BoundedCovered.fam000 case_000032_applies

private def case_000033_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000033_mask : SignMask := ⟨18, by decide⟩
private def case_000033_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000033_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000033_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (52/9) }
private def case_000033_firstLine : StrictLin2 := { a := -1, b := -1, c := (-27/5) }
private def case_000033_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000033_rankWord :
    rankPairWord? case_000033_word = some case_000033_rank := by
  decide

private theorem case_000033_unrank :
    unrankPairWord case_000033_rank = case_000033_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000033_word case_000033_rank).1
    case_000033_rankWord |>.symm

private theorem case_000033_seqChoice :
    translationChoiceSeq case_000033_word case_000033_mask = case_000033_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000033_seqAtRank :
    translationSeqAtRankMask case_000033_rank case_000033_mask = case_000033_seq := by
  rw [translationSeqAtRankMask, case_000033_unrank]
  exact case_000033_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000033_bAtRank :
    translationBAtRankMask case_000033_rank case_000033_mask = case_000033_b := by
  rw [translationBAtRankMask, case_000033_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000033_b, case_000033_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000033_firstLine_eq :
    case_000033_support.firstLine case_000033_seq case_000033_b = case_000033_firstLine := by
  norm_num [case_000033_firstLine, case_000033_support, case_000033_seq, case_000033_b,
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
private theorem case_000033_secondLine_eq :
    case_000033_support.secondLine case_000033_seq case_000033_b = case_000033_secondLine := by
  norm_num [case_000033_secondLine, case_000033_support, case_000033_seq, case_000033_b,
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
private theorem case_000033_rows :
    EqEqPosVarFirstRows case_000033_support case_000033_rank.val case_000033_mask := by
  intro hlt
  have hrank : (⟨case_000033_rank.val, hlt⟩ : Fin numPairWords) = case_000033_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000033_rank.val, hlt⟩ case_000033_mask =
        case_000033_seq := by
    simpa [hrank] using case_000033_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000033_rank.val, hlt⟩ case_000033_mask =
        case_000033_b := by
    simpa [hrank] using case_000033_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000033_support case_000033_rank.val hlt
          case_000033_mask = case_000033_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000033_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000033_support case_000033_rank.val hlt
          case_000033_mask = case_000033_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000033_secondLine_eq]
  have case_000033_rowFirst :
      EqEqPosRow (FirstLineAt case_000033_support case_000033_rank.val hlt case_000033_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000033_firstLine, EqEqPosRow]
  have case_000033_fixedSecond :
      FixedRow (SecondLineAt case_000033_support case_000033_rank.val hlt case_000033_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000033_secondLine, FixedRow]
  exact ⟨case_000033_rowFirst, case_000033_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000033_sourceMatches :
    fam_000_desc.SourceMatches case_000033_rank.val case_000033_mask := by
  intro hlt
  have hrank :
      (⟨case_000033_rank.val, hlt⟩ : Fin numPairWords) = case_000033_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000033_rank.val, hlt⟩ case_000033_mask =
        case_000033_seq := by
    simpa [hrank] using case_000033_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000033_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000033_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000033_rank.val hlt case_000033_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000033_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000033_applies :
    fam_000_desc.Applies case_000033_rank.val case_000033_mask := by
  exact ⟨
    case_000033_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000033_support] using case_000033_rows
  ⟩

private theorem case_000033_covered :
    BoundedCovered case_000033_rank.val case_000033_mask :=
  BoundedCovered.fam000 case_000033_applies

private def case_000034_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000034_mask : SignMask := ⟨22, by decide⟩
private def case_000034_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000034_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000034_b : Vec3 Rat := { x := (-68/9), y := (-68/9), z := (100/9) }
private def case_000034_firstLine : StrictLin2 := { a := (-17/9), b := (-17/9), c := (-71/27) }
private def case_000034_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000034_rankWord :
    rankPairWord? case_000034_word = some case_000034_rank := by
  decide

private theorem case_000034_unrank :
    unrankPairWord case_000034_rank = case_000034_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000034_word case_000034_rank).1
    case_000034_rankWord |>.symm

private theorem case_000034_seqChoice :
    translationChoiceSeq case_000034_word case_000034_mask = case_000034_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000034_seqAtRank :
    translationSeqAtRankMask case_000034_rank case_000034_mask = case_000034_seq := by
  rw [translationSeqAtRankMask, case_000034_unrank]
  exact case_000034_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000034_bAtRank :
    translationBAtRankMask case_000034_rank case_000034_mask = case_000034_b := by
  rw [translationBAtRankMask, case_000034_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000034_b, case_000034_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000034_firstLine_eq :
    case_000034_support.firstLine case_000034_seq case_000034_b = case_000034_firstLine := by
  norm_num [case_000034_firstLine, case_000034_support, case_000034_seq, case_000034_b,
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
private theorem case_000034_secondLine_eq :
    case_000034_support.secondLine case_000034_seq case_000034_b = case_000034_secondLine := by
  norm_num [case_000034_secondLine, case_000034_support, case_000034_seq, case_000034_b,
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
private theorem case_000034_rows :
    EqEqPosVarFirstRows case_000034_support case_000034_rank.val case_000034_mask := by
  intro hlt
  have hrank : (⟨case_000034_rank.val, hlt⟩ : Fin numPairWords) = case_000034_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000034_rank.val, hlt⟩ case_000034_mask =
        case_000034_seq := by
    simpa [hrank] using case_000034_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000034_rank.val, hlt⟩ case_000034_mask =
        case_000034_b := by
    simpa [hrank] using case_000034_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000034_support case_000034_rank.val hlt
          case_000034_mask = case_000034_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000034_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000034_support case_000034_rank.val hlt
          case_000034_mask = case_000034_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000034_secondLine_eq]
  have case_000034_rowFirst :
      EqEqPosRow (FirstLineAt case_000034_support case_000034_rank.val hlt case_000034_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000034_firstLine, EqEqPosRow]
  have case_000034_fixedSecond :
      FixedRow (SecondLineAt case_000034_support case_000034_rank.val hlt case_000034_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000034_secondLine, FixedRow]
  exact ⟨case_000034_rowFirst, case_000034_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000034_sourceMatches :
    fam_012_desc.SourceMatches case_000034_rank.val case_000034_mask := by
  intro hlt
  have hrank :
      (⟨case_000034_rank.val, hlt⟩ : Fin numPairWords) = case_000034_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000034_rank.val, hlt⟩ case_000034_mask =
        case_000034_seq := by
    simpa [hrank] using case_000034_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000034_seq)
          fam_012_desc.firstIndex = some fam_012_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000034_seq)
          fam_012_desc.secondIndex = some fam_012_support.second := by
    decide
  have hchecks :
      SourceChecks fam_012_support case_000034_rank.val hlt case_000034_mask := by
    simp [SourceChecks, hseq, fam_012_support,
      checkTranslationConstraintSource, case_000034_seq, impactFace]
  exact ⟨
    by simpa [fam_012_desc, hseq] using hfirstIndex,
    by simpa [fam_012_desc, hseq] using hsecondIndex,
    by simpa [fam_012_desc] using hchecks
  ⟩

private theorem case_000034_applies :
    fam_012_desc.Applies case_000034_rank.val case_000034_mask := by
  exact ⟨
    case_000034_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_012_desc, fam_012_support, case_000034_support] using case_000034_rows
  ⟩

private theorem case_000034_covered :
    BoundedCovered case_000034_rank.val case_000034_mask :=
  BoundedCovered.fam012 case_000034_applies

private def case_000035_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000035_mask : SignMask := ⟨28, by decide⟩
private def case_000035_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000035_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000035_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (-20/9) }
private def case_000035_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
private def case_000035_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000035_rankWord :
    rankPairWord? case_000035_word = some case_000035_rank := by
  decide

private theorem case_000035_unrank :
    unrankPairWord case_000035_rank = case_000035_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000035_word case_000035_rank).1
    case_000035_rankWord |>.symm

private theorem case_000035_seqChoice :
    translationChoiceSeq case_000035_word case_000035_mask = case_000035_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000035_seqAtRank :
    translationSeqAtRankMask case_000035_rank case_000035_mask = case_000035_seq := by
  rw [translationSeqAtRankMask, case_000035_unrank]
  exact case_000035_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000035_bAtRank :
    translationBAtRankMask case_000035_rank case_000035_mask = case_000035_b := by
  rw [translationBAtRankMask, case_000035_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000035_b, case_000035_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000035_firstLine_eq :
    case_000035_support.firstLine case_000035_seq case_000035_b = case_000035_firstLine := by
  norm_num [case_000035_firstLine, case_000035_support, case_000035_seq, case_000035_b,
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
private theorem case_000035_secondLine_eq :
    case_000035_support.secondLine case_000035_seq case_000035_b = case_000035_secondLine := by
  norm_num [case_000035_secondLine, case_000035_support, case_000035_seq, case_000035_b,
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
private theorem case_000035_rows :
    OppOneMinusVarFirstRows case_000035_support case_000035_rank.val case_000035_mask := by
  intro hlt
  have hrank : (⟨case_000035_rank.val, hlt⟩ : Fin numPairWords) = case_000035_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000035_rank.val, hlt⟩ case_000035_mask =
        case_000035_seq := by
    simpa [hrank] using case_000035_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000035_rank.val, hlt⟩ case_000035_mask =
        case_000035_b := by
    simpa [hrank] using case_000035_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000035_support case_000035_rank.val hlt
          case_000035_mask = case_000035_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000035_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000035_support case_000035_rank.val hlt
          case_000035_mask = case_000035_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000035_secondLine_eq]
  have case_000035_rowFirst :
      OppPosRow (FirstLineAt case_000035_support case_000035_rank.val hlt case_000035_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000035_firstLine, OppPosRow]
  have case_000035_fixedSecond :
      FixedRow (SecondLineAt case_000035_support case_000035_rank.val hlt case_000035_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000035_secondLine, FixedRow]
  exact ⟨case_000035_rowFirst, case_000035_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000035_sourceMatches :
    fam_004_desc.SourceMatches case_000035_rank.val case_000035_mask := by
  intro hlt
  have hrank :
      (⟨case_000035_rank.val, hlt⟩ : Fin numPairWords) = case_000035_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000035_rank.val, hlt⟩ case_000035_mask =
        case_000035_seq := by
    simpa [hrank] using case_000035_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000035_seq)
          fam_004_desc.firstIndex = some fam_004_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000035_seq)
          fam_004_desc.secondIndex = some fam_004_support.second := by
    decide
  have hchecks :
      SourceChecks fam_004_support case_000035_rank.val hlt case_000035_mask := by
    simp [SourceChecks, hseq, fam_004_support,
      checkTranslationConstraintSource, case_000035_seq, impactFace]
  exact ⟨
    by simpa [fam_004_desc, hseq] using hfirstIndex,
    by simpa [fam_004_desc, hseq] using hsecondIndex,
    by simpa [fam_004_desc] using hchecks
  ⟩

private theorem case_000035_applies :
    fam_004_desc.Applies case_000035_rank.val case_000035_mask := by
  exact ⟨
    case_000035_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_004_desc, fam_004_support, case_000035_support] using case_000035_rows
  ⟩

private theorem case_000035_covered :
    BoundedCovered case_000035_rank.val case_000035_mask :=
  BoundedCovered.fam004 case_000035_applies

private def case_000036_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000036_mask : SignMask := ⟨30, by decide⟩
private def case_000036_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000036_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000036_b : Vec3 Rat := { x := (-116/9), y := (-20/9), z := (52/9) }
private def case_000036_firstLine : StrictLin2 := { a := (-58/37), b := (-58/37), c := (-308/111) }
private def case_000036_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000036_rankWord :
    rankPairWord? case_000036_word = some case_000036_rank := by
  decide

private theorem case_000036_unrank :
    unrankPairWord case_000036_rank = case_000036_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000036_word case_000036_rank).1
    case_000036_rankWord |>.symm

private theorem case_000036_seqChoice :
    translationChoiceSeq case_000036_word case_000036_mask = case_000036_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000036_seqAtRank :
    translationSeqAtRankMask case_000036_rank case_000036_mask = case_000036_seq := by
  rw [translationSeqAtRankMask, case_000036_unrank]
  exact case_000036_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000036_bAtRank :
    translationBAtRankMask case_000036_rank case_000036_mask = case_000036_b := by
  rw [translationBAtRankMask, case_000036_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000036_b, case_000036_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000036_firstLine_eq :
    case_000036_support.firstLine case_000036_seq case_000036_b = case_000036_firstLine := by
  norm_num [case_000036_firstLine, case_000036_support, case_000036_seq, case_000036_b,
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
private theorem case_000036_secondLine_eq :
    case_000036_support.secondLine case_000036_seq case_000036_b = case_000036_secondLine := by
  norm_num [case_000036_secondLine, case_000036_support, case_000036_seq, case_000036_b,
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
private theorem case_000036_rows :
    EqEqPosVarFirstRows case_000036_support case_000036_rank.val case_000036_mask := by
  intro hlt
  have hrank : (⟨case_000036_rank.val, hlt⟩ : Fin numPairWords) = case_000036_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000036_rank.val, hlt⟩ case_000036_mask =
        case_000036_seq := by
    simpa [hrank] using case_000036_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000036_rank.val, hlt⟩ case_000036_mask =
        case_000036_b := by
    simpa [hrank] using case_000036_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000036_support case_000036_rank.val hlt
          case_000036_mask = case_000036_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000036_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000036_support case_000036_rank.val hlt
          case_000036_mask = case_000036_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000036_secondLine_eq]
  have case_000036_rowFirst :
      EqEqPosRow (FirstLineAt case_000036_support case_000036_rank.val hlt case_000036_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000036_firstLine, EqEqPosRow]
  have case_000036_fixedSecond :
      FixedRow (SecondLineAt case_000036_support case_000036_rank.val hlt case_000036_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000036_secondLine, FixedRow]
  exact ⟨case_000036_rowFirst, case_000036_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000036_sourceMatches :
    fam_010_desc.SourceMatches case_000036_rank.val case_000036_mask := by
  intro hlt
  have hrank :
      (⟨case_000036_rank.val, hlt⟩ : Fin numPairWords) = case_000036_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000036_rank.val, hlt⟩ case_000036_mask =
        case_000036_seq := by
    simpa [hrank] using case_000036_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000036_seq)
          fam_010_desc.firstIndex = some fam_010_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000036_seq)
          fam_010_desc.secondIndex = some fam_010_support.second := by
    decide
  have hchecks :
      SourceChecks fam_010_support case_000036_rank.val hlt case_000036_mask := by
    simp [SourceChecks, hseq, fam_010_support,
      checkTranslationConstraintSource, case_000036_seq, impactFace]
  exact ⟨
    by simpa [fam_010_desc, hseq] using hfirstIndex,
    by simpa [fam_010_desc, hseq] using hsecondIndex,
    by simpa [fam_010_desc] using hchecks
  ⟩

private theorem case_000036_applies :
    fam_010_desc.Applies case_000036_rank.val case_000036_mask := by
  exact ⟨
    case_000036_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_010_desc, fam_010_support, case_000036_support] using case_000036_rows
  ⟩

private theorem case_000036_covered :
    BoundedCovered case_000036_rank.val case_000036_mask :=
  BoundedCovered.fam010 case_000036_applies

private def case_000037_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000037_mask : SignMask := ⟨31, by decide⟩
private def case_000037_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000037_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmpp
private def case_000037_b : Vec3 Rat := { x := (-116/9), y := (52/9), z := (52/9) }
private def case_000037_firstLine : StrictLin2 := { a := (-29/55), b := (-29/55), c := (-157/55) }
private def case_000037_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000037_rankWord :
    rankPairWord? case_000037_word = some case_000037_rank := by
  decide

private theorem case_000037_unrank :
    unrankPairWord case_000037_rank = case_000037_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000037_word case_000037_rank).1
    case_000037_rankWord |>.symm

private theorem case_000037_seqChoice :
    translationChoiceSeq case_000037_word case_000037_mask = case_000037_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000037_seqAtRank :
    translationSeqAtRankMask case_000037_rank case_000037_mask = case_000037_seq := by
  rw [translationSeqAtRankMask, case_000037_unrank]
  exact case_000037_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000037_bAtRank :
    translationBAtRankMask case_000037_rank case_000037_mask = case_000037_b := by
  rw [translationBAtRankMask, case_000037_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000037_b, case_000037_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000037_firstLine_eq :
    case_000037_support.firstLine case_000037_seq case_000037_b = case_000037_firstLine := by
  norm_num [case_000037_firstLine, case_000037_support, case_000037_seq, case_000037_b,
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
private theorem case_000037_secondLine_eq :
    case_000037_support.secondLine case_000037_seq case_000037_b = case_000037_secondLine := by
  norm_num [case_000037_secondLine, case_000037_support, case_000037_seq, case_000037_b,
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
private theorem case_000037_rows :
    EqEqPosVarFirstRows case_000037_support case_000037_rank.val case_000037_mask := by
  intro hlt
  have hrank : (⟨case_000037_rank.val, hlt⟩ : Fin numPairWords) = case_000037_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000037_rank.val, hlt⟩ case_000037_mask =
        case_000037_seq := by
    simpa [hrank] using case_000037_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000037_rank.val, hlt⟩ case_000037_mask =
        case_000037_b := by
    simpa [hrank] using case_000037_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000037_support case_000037_rank.val hlt
          case_000037_mask = case_000037_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000037_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000037_support case_000037_rank.val hlt
          case_000037_mask = case_000037_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000037_secondLine_eq]
  have case_000037_rowFirst :
      EqEqPosRow (FirstLineAt case_000037_support case_000037_rank.val hlt case_000037_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000037_firstLine, EqEqPosRow]
  have case_000037_fixedSecond :
      FixedRow (SecondLineAt case_000037_support case_000037_rank.val hlt case_000037_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000037_secondLine, FixedRow]
  exact ⟨case_000037_rowFirst, case_000037_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000037_sourceMatches :
    fam_001_desc.SourceMatches case_000037_rank.val case_000037_mask := by
  intro hlt
  have hrank :
      (⟨case_000037_rank.val, hlt⟩ : Fin numPairWords) = case_000037_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000037_rank.val, hlt⟩ case_000037_mask =
        case_000037_seq := by
    simpa [hrank] using case_000037_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000037_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000037_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000037_rank.val hlt case_000037_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000037_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000037_applies :
    fam_001_desc.Applies case_000037_rank.val case_000037_mask := by
  exact ⟨
    case_000037_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000037_support] using case_000037_rows
  ⟩

private theorem case_000037_covered :
    BoundedCovered case_000037_rank.val case_000037_mask :=
  BoundedCovered.fam001 case_000037_applies

private def case_000038_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000038_mask : SignMask := ⟨45, by decide⟩
private def case_000038_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000038_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000038_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (-52/9) }
private def case_000038_firstLine : StrictLin2 := { a := 1, b := -1, c := (-71/13) }
private def case_000038_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000038_rankWord :
    rankPairWord? case_000038_word = some case_000038_rank := by
  decide

private theorem case_000038_unrank :
    unrankPairWord case_000038_rank = case_000038_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000038_word case_000038_rank).1
    case_000038_rankWord |>.symm

private theorem case_000038_seqChoice :
    translationChoiceSeq case_000038_word case_000038_mask = case_000038_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000038_seqAtRank :
    translationSeqAtRankMask case_000038_rank case_000038_mask = case_000038_seq := by
  rw [translationSeqAtRankMask, case_000038_unrank]
  exact case_000038_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000038_bAtRank :
    translationBAtRankMask case_000038_rank case_000038_mask = case_000038_b := by
  rw [translationBAtRankMask, case_000038_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000038_b, case_000038_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000038_firstLine_eq :
    case_000038_support.firstLine case_000038_seq case_000038_b = case_000038_firstLine := by
  norm_num [case_000038_firstLine, case_000038_support, case_000038_seq, case_000038_b,
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
private theorem case_000038_secondLine_eq :
    case_000038_support.secondLine case_000038_seq case_000038_b = case_000038_secondLine := by
  norm_num [case_000038_secondLine, case_000038_support, case_000038_seq, case_000038_b,
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
private theorem case_000038_rows :
    OppMinusOneVarFirstRows case_000038_support case_000038_rank.val case_000038_mask := by
  intro hlt
  have hrank : (⟨case_000038_rank.val, hlt⟩ : Fin numPairWords) = case_000038_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000038_rank.val, hlt⟩ case_000038_mask =
        case_000038_seq := by
    simpa [hrank] using case_000038_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000038_rank.val, hlt⟩ case_000038_mask =
        case_000038_b := by
    simpa [hrank] using case_000038_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000038_support case_000038_rank.val hlt
          case_000038_mask = case_000038_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000038_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000038_support case_000038_rank.val hlt
          case_000038_mask = case_000038_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000038_secondLine_eq]
  have case_000038_rowFirst :
      OppNegRow (FirstLineAt case_000038_support case_000038_rank.val hlt case_000038_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000038_firstLine, OppNegRow]
  have case_000038_fixedSecond :
      FixedRow (SecondLineAt case_000038_support case_000038_rank.val hlt case_000038_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000038_secondLine, FixedRow]
  exact ⟨case_000038_rowFirst, case_000038_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000038_sourceMatches :
    fam_005_desc.SourceMatches case_000038_rank.val case_000038_mask := by
  intro hlt
  have hrank :
      (⟨case_000038_rank.val, hlt⟩ : Fin numPairWords) = case_000038_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000038_rank.val, hlt⟩ case_000038_mask =
        case_000038_seq := by
    simpa [hrank] using case_000038_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000038_seq)
          fam_005_desc.firstIndex = some fam_005_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000038_seq)
          fam_005_desc.secondIndex = some fam_005_support.second := by
    decide
  have hchecks :
      SourceChecks fam_005_support case_000038_rank.val hlt case_000038_mask := by
    simp [SourceChecks, hseq, fam_005_support,
      checkTranslationConstraintSource, case_000038_seq, impactFace]
  exact ⟨
    by simpa [fam_005_desc, hseq] using hfirstIndex,
    by simpa [fam_005_desc, hseq] using hsecondIndex,
    by simpa [fam_005_desc] using hchecks
  ⟩

private theorem case_000038_applies :
    fam_005_desc.Applies case_000038_rank.val case_000038_mask := by
  exact ⟨
    case_000038_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_005_desc, fam_005_support, case_000038_support] using case_000038_rows
  ⟩

private theorem case_000038_covered :
    BoundedCovered case_000038_rank.val case_000038_mask :=
  BoundedCovered.fam005 case_000038_applies

private def case_000039_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000039_mask : SignMask := ⟨54, by decide⟩
private def case_000039_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000039_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000039_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (148/9) }
private def case_000039_firstLine : StrictLin2 := { a := -1, b := 1, c := (-79/5) }
private def case_000039_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000039_rankWord :
    rankPairWord? case_000039_word = some case_000039_rank := by
  decide

private theorem case_000039_unrank :
    unrankPairWord case_000039_rank = case_000039_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000039_word case_000039_rank).1
    case_000039_rankWord |>.symm

private theorem case_000039_seqChoice :
    translationChoiceSeq case_000039_word case_000039_mask = case_000039_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000039_seqAtRank :
    translationSeqAtRankMask case_000039_rank case_000039_mask = case_000039_seq := by
  rw [translationSeqAtRankMask, case_000039_unrank]
  exact case_000039_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000039_bAtRank :
    translationBAtRankMask case_000039_rank case_000039_mask = case_000039_b := by
  rw [translationBAtRankMask, case_000039_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000039_b, case_000039_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000039_firstLine_eq :
    case_000039_support.firstLine case_000039_seq case_000039_b = case_000039_firstLine := by
  norm_num [case_000039_firstLine, case_000039_support, case_000039_seq, case_000039_b,
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
private theorem case_000039_secondLine_eq :
    case_000039_support.secondLine case_000039_seq case_000039_b = case_000039_secondLine := by
  norm_num [case_000039_secondLine, case_000039_support, case_000039_seq, case_000039_b,
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
private theorem case_000039_rows :
    OppOneMinusVarFirstRows case_000039_support case_000039_rank.val case_000039_mask := by
  intro hlt
  have hrank : (⟨case_000039_rank.val, hlt⟩ : Fin numPairWords) = case_000039_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000039_rank.val, hlt⟩ case_000039_mask =
        case_000039_seq := by
    simpa [hrank] using case_000039_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000039_rank.val, hlt⟩ case_000039_mask =
        case_000039_b := by
    simpa [hrank] using case_000039_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000039_support case_000039_rank.val hlt
          case_000039_mask = case_000039_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000039_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000039_support case_000039_rank.val hlt
          case_000039_mask = case_000039_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000039_secondLine_eq]
  have case_000039_rowFirst :
      OppPosRow (FirstLineAt case_000039_support case_000039_rank.val hlt case_000039_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000039_firstLine, OppPosRow]
  have case_000039_fixedSecond :
      FixedRow (SecondLineAt case_000039_support case_000039_rank.val hlt case_000039_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000039_secondLine, FixedRow]
  exact ⟨case_000039_rowFirst, case_000039_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000039_sourceMatches :
    fam_003_desc.SourceMatches case_000039_rank.val case_000039_mask := by
  intro hlt
  have hrank :
      (⟨case_000039_rank.val, hlt⟩ : Fin numPairWords) = case_000039_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000039_rank.val, hlt⟩ case_000039_mask =
        case_000039_seq := by
    simpa [hrank] using case_000039_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000039_seq)
          fam_003_desc.firstIndex = some fam_003_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000039_seq)
          fam_003_desc.secondIndex = some fam_003_support.second := by
    decide
  have hchecks :
      SourceChecks fam_003_support case_000039_rank.val hlt case_000039_mask := by
    simp [SourceChecks, hseq, fam_003_support,
      checkTranslationConstraintSource, case_000039_seq, impactFace]
  exact ⟨
    by simpa [fam_003_desc, hseq] using hfirstIndex,
    by simpa [fam_003_desc, hseq] using hsecondIndex,
    by simpa [fam_003_desc] using hchecks
  ⟩

private theorem case_000039_applies :
    fam_003_desc.Applies case_000039_rank.val case_000039_mask := by
  exact ⟨
    case_000039_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_003_desc, fam_003_support, case_000039_support] using case_000039_rows
  ⟩

private theorem case_000039_covered :
    BoundedCovered case_000039_rank.val case_000039_mask :=
  BoundedCovered.fam003 case_000039_applies

private def case_000040_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000040_mask : SignMask := ⟨55, by decide⟩
private def case_000040_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000040_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000040_b : Vec3 Rat := { x := (-20/9), y := (52/9), z := (148/9) }
private def case_000040_firstLine : StrictLin2 := { a := -1, b := 1, c := (-43/5) }
private def case_000040_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000040_rankWord :
    rankPairWord? case_000040_word = some case_000040_rank := by
  decide

private theorem case_000040_unrank :
    unrankPairWord case_000040_rank = case_000040_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000040_word case_000040_rank).1
    case_000040_rankWord |>.symm

private theorem case_000040_seqChoice :
    translationChoiceSeq case_000040_word case_000040_mask = case_000040_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000040_seqAtRank :
    translationSeqAtRankMask case_000040_rank case_000040_mask = case_000040_seq := by
  rw [translationSeqAtRankMask, case_000040_unrank]
  exact case_000040_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000040_bAtRank :
    translationBAtRankMask case_000040_rank case_000040_mask = case_000040_b := by
  rw [translationBAtRankMask, case_000040_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000040_b, case_000040_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000040_firstLine_eq :
    case_000040_support.firstLine case_000040_seq case_000040_b = case_000040_firstLine := by
  norm_num [case_000040_firstLine, case_000040_support, case_000040_seq, case_000040_b,
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
private theorem case_000040_secondLine_eq :
    case_000040_support.secondLine case_000040_seq case_000040_b = case_000040_secondLine := by
  norm_num [case_000040_secondLine, case_000040_support, case_000040_seq, case_000040_b,
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
private theorem case_000040_rows :
    OppOneMinusVarFirstRows case_000040_support case_000040_rank.val case_000040_mask := by
  intro hlt
  have hrank : (⟨case_000040_rank.val, hlt⟩ : Fin numPairWords) = case_000040_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000040_rank.val, hlt⟩ case_000040_mask =
        case_000040_seq := by
    simpa [hrank] using case_000040_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000040_rank.val, hlt⟩ case_000040_mask =
        case_000040_b := by
    simpa [hrank] using case_000040_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000040_support case_000040_rank.val hlt
          case_000040_mask = case_000040_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000040_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000040_support case_000040_rank.val hlt
          case_000040_mask = case_000040_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000040_secondLine_eq]
  have case_000040_rowFirst :
      OppPosRow (FirstLineAt case_000040_support case_000040_rank.val hlt case_000040_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000040_firstLine, OppPosRow]
  have case_000040_fixedSecond :
      FixedRow (SecondLineAt case_000040_support case_000040_rank.val hlt case_000040_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000040_secondLine, FixedRow]
  exact ⟨case_000040_rowFirst, case_000040_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000040_sourceMatches :
    fam_003_desc.SourceMatches case_000040_rank.val case_000040_mask := by
  intro hlt
  have hrank :
      (⟨case_000040_rank.val, hlt⟩ : Fin numPairWords) = case_000040_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000040_rank.val, hlt⟩ case_000040_mask =
        case_000040_seq := by
    simpa [hrank] using case_000040_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000040_seq)
          fam_003_desc.firstIndex = some fam_003_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000040_seq)
          fam_003_desc.secondIndex = some fam_003_support.second := by
    decide
  have hchecks :
      SourceChecks fam_003_support case_000040_rank.val hlt case_000040_mask := by
    simp [SourceChecks, hseq, fam_003_support,
      checkTranslationConstraintSource, case_000040_seq, impactFace]
  exact ⟨
    by simpa [fam_003_desc, hseq] using hfirstIndex,
    by simpa [fam_003_desc, hseq] using hsecondIndex,
    by simpa [fam_003_desc] using hchecks
  ⟩

private theorem case_000040_applies :
    fam_003_desc.Applies case_000040_rank.val case_000040_mask := by
  exact ⟨
    case_000040_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_003_desc, fam_003_support, case_000040_support] using case_000040_rows
  ⟩

private theorem case_000040_covered :
    BoundedCovered case_000040_rank.val case_000040_mask :=
  BoundedCovered.fam003 case_000040_applies

private def case_000041_rank : Fin numPairWords := ⟨3, by decide⟩
private def case_000041_mask : SignMask := ⟨63, by decide⟩
private def case_000041_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.dm11], by decide⟩
private def case_000041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000041_seq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tpmm
private def case_000041_b : Vec3 Rat := { x := (-68/9), y := (100/9), z := (100/9) }
private def case_000041_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000041_secondLine : StrictLin2 := { a := (-9/100), b := (9/100), c := (-9/50) }

private theorem case_000041_rankWord :
    rankPairWord? case_000041_word = some case_000041_rank := by
  decide

private theorem case_000041_unrank :
    unrankPairWord case_000041_rank = case_000041_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000041_word case_000041_rank).1
    case_000041_rankWord |>.symm

private theorem case_000041_seqChoice :
    translationChoiceSeq case_000041_word case_000041_mask = case_000041_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000041_seqAtRank :
    translationSeqAtRankMask case_000041_rank case_000041_mask = case_000041_seq := by
  rw [translationSeqAtRankMask, case_000041_unrank]
  exact case_000041_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000041_bAtRank :
    translationBAtRankMask case_000041_rank case_000041_mask = case_000041_b := by
  rw [translationBAtRankMask, case_000041_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000041_b, case_000041_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000041_firstLine_eq :
    case_000041_support.firstLine case_000041_seq case_000041_b = case_000041_firstLine := by
  norm_num [case_000041_firstLine, case_000041_support, case_000041_seq, case_000041_b,
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
private theorem case_000041_secondLine_eq :
    case_000041_support.secondLine case_000041_seq case_000041_b = case_000041_secondLine := by
  norm_num [case_000041_secondLine, case_000041_support, case_000041_seq, case_000041_b,
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
private theorem case_000041_rows :
    OppOneMinusVarSecondRows case_000041_support case_000041_rank.val case_000041_mask := by
  intro hlt
  have hrank : (⟨case_000041_rank.val, hlt⟩ : Fin numPairWords) = case_000041_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000041_rank.val, hlt⟩ case_000041_mask =
        case_000041_seq := by
    simpa [hrank] using case_000041_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000041_rank.val, hlt⟩ case_000041_mask =
        case_000041_b := by
    simpa [hrank] using case_000041_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000041_support case_000041_rank.val hlt
          case_000041_mask = case_000041_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000041_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000041_support case_000041_rank.val hlt
          case_000041_mask = case_000041_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000041_secondLine_eq]
  have case_000041_fixedFirst :
      FixedRow (FirstLineAt case_000041_support case_000041_rank.val hlt case_000041_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000041_firstLine, FixedRow]
  have case_000041_rowSecond :
      OppPosRow (SecondLineAt case_000041_support case_000041_rank.val hlt case_000041_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000041_secondLine, OppPosRow]
  exact ⟨case_000041_fixedFirst, case_000041_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000041_sourceMatches :
    fam_014_desc.SourceMatches case_000041_rank.val case_000041_mask := by
  intro hlt
  have hrank :
      (⟨case_000041_rank.val, hlt⟩ : Fin numPairWords) = case_000041_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000041_rank.val, hlt⟩ case_000041_mask =
        case_000041_seq := by
    simpa [hrank] using case_000041_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000041_seq)
          fam_014_desc.firstIndex = some fam_014_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000041_seq)
          fam_014_desc.secondIndex = some fam_014_support.second := by
    decide
  have hchecks :
      SourceChecks fam_014_support case_000041_rank.val hlt case_000041_mask := by
    simp [SourceChecks, hseq, fam_014_support,
      checkTranslationConstraintSource, case_000041_seq, impactFace]
  exact ⟨
    by simpa [fam_014_desc, hseq] using hfirstIndex,
    by simpa [fam_014_desc, hseq] using hsecondIndex,
    by simpa [fam_014_desc] using hchecks
  ⟩

private theorem case_000041_applies :
    fam_014_desc.Applies case_000041_rank.val case_000041_mask := by
  exact ⟨
    case_000041_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_014_desc, fam_014_support, case_000041_support] using case_000041_rows
  ⟩

private theorem case_000041_covered :
    BoundedCovered case_000041_rank.val case_000041_mask :=
  BoundedCovered.fam014 case_000041_applies

private theorem rank_000000000_coverage
    (hlt : 0 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨0, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 0 mask := by
  fin_cases mask
  · exact False.elim ((rank_000000000_mask_00_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_01_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_02_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_03_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_04_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_05_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_06_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_07_badDirection_notGood hlt) hgood)
  · exact case_000000_covered
  · exact case_000001_covered
  · exact False.elim ((rank_000000000_mask_10_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_11_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_12_badDirection_notGood hlt) hgood)
  · exact case_000002_covered
  · exact False.elim ((rank_000000000_mask_14_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_15_badDirection_notGood hlt) hgood)
  · exact case_000003_covered
  · exact False.elim ((rank_000000000_mask_17_badDirection_notGood hlt) hgood)
  · exact case_000004_covered
  · exact False.elim ((rank_000000000_mask_19_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_20_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_21_badDirection_notGood hlt) hgood)
  · exact case_000005_covered
  · exact False.elim ((rank_000000000_mask_23_badDirection_notGood hlt) hgood)
  · exact case_000006_covered
  · exact False.elim ((rank_000000000_mask_25_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_26_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_27_badDirection_notGood hlt) hgood)
  · exact case_000007_covered
  · exact case_000008_covered
  · exact case_000009_covered
  · exact case_000010_covered
  · exact False.elim ((rank_000000000_mask_32_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_33_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_34_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_35_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_36_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_37_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_38_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_39_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_40_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_41_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_42_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_43_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_44_badDirection_notGood hlt) hgood)
  · exact case_000011_covered
  · exact False.elim ((rank_000000000_mask_46_badDirection_notGood hlt) hgood)
  · exact case_000012_covered
  · exact False.elim ((rank_000000000_mask_48_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_49_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_50_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_51_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_52_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_53_badDirection_notGood hlt) hgood)
  · exact case_000013_covered
  · exact case_000014_covered
  · exact False.elim ((rank_000000000_mask_56_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_57_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_58_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_59_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_60_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_61_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000000_mask_62_badDirection_notGood hlt) hgood)
  · exact case_000015_covered

private theorem rank_000000001_coverage
    (hlt : 1 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨1, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨1, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 1 mask := by
  exact False.elim ((rank_000000001_nonidentity_linear_ne_atRank hlt) hM)

private theorem rank_000000002_coverage
    (hlt : 2 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨2, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨2, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 2 mask := by
  fin_cases mask
  · exact False.elim ((rank_000000002_mask_00_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_01_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_02_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_03_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_04_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_05_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_06_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_07_badDirection_notGood hlt) hgood)
  · exact case_000016_covered
  · exact case_000017_covered
  · exact False.elim ((rank_000000002_mask_10_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_11_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_12_badDirection_notGood hlt) hgood)
  · exact case_000018_covered
  · exact False.elim ((rank_000000002_mask_14_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_15_badDirection_notGood hlt) hgood)
  · exact case_000019_covered
  · exact False.elim ((rank_000000002_mask_17_badDirection_notGood hlt) hgood)
  · exact case_000020_covered
  · exact False.elim ((rank_000000002_mask_19_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_20_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_21_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_22_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_23_badDirection_notGood hlt) hgood)
  · exact case_000021_covered
  · exact False.elim ((rank_000000002_mask_25_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_26_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_27_badDirection_notGood hlt) hgood)
  · exact case_000022_covered
  · exact case_000023_covered
  · exact case_000024_covered
  · exact False.elim ((rank_000000002_mask_31_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_32_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_33_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_34_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_35_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_36_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_37_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_38_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_39_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_40_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_41_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_42_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_43_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_44_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_45_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_46_badDirection_notGood hlt) hgood)
  · exact case_000025_covered
  · exact False.elim ((rank_000000002_mask_48_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_49_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_50_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_51_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_52_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_53_badDirection_notGood hlt) hgood)
  · exact case_000026_covered
  · exact case_000027_covered
  · exact False.elim ((rank_000000002_mask_56_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_57_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_58_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_59_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_60_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_61_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000002_mask_62_badDirection_notGood hlt) hgood)
  · exact case_000028_covered

private theorem rank_000000003_coverage
    (hlt : 3 < numPairWords) (mask : SignMask)
    (hM : totalLinearOfPairWord (unrankPairWord (⟨3, hlt⟩ : Fin numPairWords)) =
      (matId : Mat3 Rat))
    (hgood : GoodDirectionAtRank (⟨3, hlt⟩ : Fin numPairWords) mask) :
    BoundedCovered 3 mask := by
  fin_cases mask
  · exact False.elim ((rank_000000003_mask_00_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_01_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_02_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_03_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_04_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_05_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_06_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_07_badDirection_notGood hlt) hgood)
  · exact case_000029_covered
  · exact case_000030_covered
  · exact False.elim ((rank_000000003_mask_10_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_11_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_12_badDirection_notGood hlt) hgood)
  · exact case_000031_covered
  · exact False.elim ((rank_000000003_mask_14_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_15_badDirection_notGood hlt) hgood)
  · exact case_000032_covered
  · exact False.elim ((rank_000000003_mask_17_badDirection_notGood hlt) hgood)
  · exact case_000033_covered
  · exact False.elim ((rank_000000003_mask_19_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_20_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_21_badDirection_notGood hlt) hgood)
  · exact case_000034_covered
  · exact False.elim ((rank_000000003_mask_23_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_24_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_25_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_26_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_27_badDirection_notGood hlt) hgood)
  · exact case_000035_covered
  · exact False.elim ((rank_000000003_mask_29_badDirection_notGood hlt) hgood)
  · exact case_000036_covered
  · exact case_000037_covered
  · exact False.elim ((rank_000000003_mask_32_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_33_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_34_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_35_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_36_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_37_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_38_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_39_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_40_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_41_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_42_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_43_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_44_badDirection_notGood hlt) hgood)
  · exact case_000038_covered
  · exact False.elim ((rank_000000003_mask_46_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_47_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_48_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_49_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_50_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_51_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_52_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_53_badDirection_notGood hlt) hgood)
  · exact case_000039_covered
  · exact case_000040_covered
  · exact False.elim ((rank_000000003_mask_56_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_57_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_58_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_59_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_60_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_61_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000003_mask_62_badDirection_notGood hlt) hgood)
  · exact case_000041_covered

set_option maxHeartbeats 4000000 in
theorem shardCoverage :
    RowPropertyMembershipCoverageOnIdentityRange boundedFamily 0 4 := by
  intro r hlt mask hlo hhi hM hgood
  interval_cases r
  · exact rank_000000000_coverage hlt mask hM hgood
  · exact rank_000000001_coverage hlt mask hM hgood
  · exact rank_000000002_coverage hlt mask hM hgood
  · exact rank_000000003_coverage hlt mask hM hgood

theorem shardGoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (hlo : 0 <= r) (hhi : r < 4)
    (hM : totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) =
      (matId : Mat3 Rat)) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  boundedFamily.identityRangeKills shardCoverage r hlt mask hlo hhi hM

theorem shard_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.Shard000
