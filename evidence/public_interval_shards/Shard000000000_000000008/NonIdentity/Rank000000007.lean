import Cuboctahedron.Generated.PublicEvidence.All

/-!
Generated non-identity public interval shard leaf.

This file is intentionally checked by path and is not imported by
the default Lake package build.
-/

namespace Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000007

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unusedSimpArgs false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def nonIdentityClassifier :
    Cuboctahedron.Generated.Coverage.NonIdComputableClassifier where
  badDirectionFamilies := []
  badPairBalanceFamilies := []

def nonIdentityClassifierTranslation :
    Cuboctahedron.Generated.Coverage.TranslationComputableClassifier where
  badDirectionFamilies := []
  badVectorFamilies := []

def wordRank000000007 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d1m1, PairId.d11m, PairId.dm11, PairId.d1m1, PairId.dm11], by decide⟩

@[simp] theorem wordRank000000007_get00_num :
    wordRank000000007.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000007_get00_mk (h : 0 < 13) :
    wordRank000000007.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000007_get01_num :
    wordRank000000007.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000007_get01_mk (h : 1 < 13) :
    wordRank000000007.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000007_get02_num :
    wordRank000000007.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000007_get02_mk (h : 2 < 13) :
    wordRank000000007.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000007_get03_num :
    wordRank000000007.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000007_get03_mk (h : 3 < 13) :
    wordRank000000007.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000007_get04_num :
    wordRank000000007.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000007_get04_mk (h : 4 < 13) :
    wordRank000000007.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000007_get05_num :
    wordRank000000007.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000007_get05_mk (h : 5 < 13) :
    wordRank000000007.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000007_get06_num :
    wordRank000000007.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000007_get06_mk (h : 6 < 13) :
    wordRank000000007.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000007_get07_num :
    wordRank000000007.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000007_get07_mk (h : 7 < 13) :
    wordRank000000007.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000007_get08_num :
    wordRank000000007.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000007_get08_mk (h : 8 < 13) :
    wordRank000000007.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000007_get09_num :
    wordRank000000007.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000007_get09_mk (h : 9 < 13) :
    wordRank000000007.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000007_get10_num :
    wordRank000000007.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000007_get10_mk (h : 10 < 13) :
    wordRank000000007.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000007_get11_num :
    wordRank000000007.get (11 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000007_get11_mk (h : 11 < 13) :
    wordRank000000007.get ⟨11, h⟩ = PairId.d1m1 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000007_get12_num :
    wordRank000000007.get (12 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000007_get12_mk (h : 12 < 13) :
    wordRank000000007.get ⟨12, h⟩ = PairId.dm11 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def intervalShardNonId000000007Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xp, Face.yp, Face.yp, Face.zp, Face.zp, Face.tppp, Face.tppp, Face.tppm, Face.tpmp, Face.tppm, Face.tmpp, Face.tpmp, Face.tmpp], by decide⟩

@[simp] theorem intervalShardNonId000000007Seq_get00_num :
    intervalShardNonId000000007Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem intervalShardNonId000000007Seq_get00_mk (h : 0 < 14) :
    intervalShardNonId000000007Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem intervalShardNonId000000007Seq_get01_num :
    intervalShardNonId000000007Seq.get (1 : Step14) = Face.xp := by
  decide

@[simp] theorem intervalShardNonId000000007Seq_get01_mk (h : 1 < 14) :
    intervalShardNonId000000007Seq.get ⟨1, h⟩ = Face.xp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem intervalShardNonId000000007Seq_get02_num :
    intervalShardNonId000000007Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem intervalShardNonId000000007Seq_get02_mk (h : 2 < 14) :
    intervalShardNonId000000007Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem intervalShardNonId000000007Seq_get03_num :
    intervalShardNonId000000007Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem intervalShardNonId000000007Seq_get03_mk (h : 3 < 14) :
    intervalShardNonId000000007Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem intervalShardNonId000000007Seq_get04_num :
    intervalShardNonId000000007Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem intervalShardNonId000000007Seq_get04_mk (h : 4 < 14) :
    intervalShardNonId000000007Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem intervalShardNonId000000007Seq_get05_num :
    intervalShardNonId000000007Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem intervalShardNonId000000007Seq_get05_mk (h : 5 < 14) :
    intervalShardNonId000000007Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem intervalShardNonId000000007Seq_get06_num :
    intervalShardNonId000000007Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem intervalShardNonId000000007Seq_get06_mk (h : 6 < 14) :
    intervalShardNonId000000007Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem intervalShardNonId000000007Seq_get07_num :
    intervalShardNonId000000007Seq.get (7 : Step14) = Face.tppp := by
  decide

@[simp] theorem intervalShardNonId000000007Seq_get07_mk (h : 7 < 14) :
    intervalShardNonId000000007Seq.get ⟨7, h⟩ = Face.tppp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem intervalShardNonId000000007Seq_get08_num :
    intervalShardNonId000000007Seq.get (8 : Step14) = Face.tppm := by
  decide

@[simp] theorem intervalShardNonId000000007Seq_get08_mk (h : 8 < 14) :
    intervalShardNonId000000007Seq.get ⟨8, h⟩ = Face.tppm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem intervalShardNonId000000007Seq_get09_num :
    intervalShardNonId000000007Seq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem intervalShardNonId000000007Seq_get09_mk (h : 9 < 14) :
    intervalShardNonId000000007Seq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem intervalShardNonId000000007Seq_get10_num :
    intervalShardNonId000000007Seq.get (10 : Step14) = Face.tppm := by
  decide

@[simp] theorem intervalShardNonId000000007Seq_get10_mk (h : 10 < 14) :
    intervalShardNonId000000007Seq.get ⟨10, h⟩ = Face.tppm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem intervalShardNonId000000007Seq_get11_num :
    intervalShardNonId000000007Seq.get (11 : Step14) = Face.tmpp := by
  decide

@[simp] theorem intervalShardNonId000000007Seq_get11_mk (h : 11 < 14) :
    intervalShardNonId000000007Seq.get ⟨11, h⟩ = Face.tmpp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem intervalShardNonId000000007Seq_get12_num :
    intervalShardNonId000000007Seq.get (12 : Step14) = Face.tpmp := by
  decide

@[simp] theorem intervalShardNonId000000007Seq_get12_mk (h : 12 < 14) :
    intervalShardNonId000000007Seq.get ⟨12, h⟩ = Face.tpmp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem intervalShardNonId000000007Seq_get13_num :
    intervalShardNonId000000007Seq.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem intervalShardNonId000000007Seq_get13_mk (h : 13 < 14) :
    intervalShardNonId000000007Seq.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def intervalShardNonId000000007 : NonIdCert where
  word := wordRank000000007
  axis := { x := -1, y := 6, z := 1 }
  kernel := { crossFactor := { m00 := (-35/8), m01 := (37/2), m02 := 0, m10 := -1, m11 := (13/8), m12 := 0, m20 := (13/8), m21 := (35/4), m22 := 0 } }
  forcedSeq := intervalShardNonId000000007Seq
  p0 := { x := 0, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := { m00 := 1, m01 := 0, m02 := 0, m03 := 0, m10 := 0, m11 := 1, m12 := 0, m13 := 0, m20 := 0, m21 := 0, m22 := 1, m23 := 0, m30 := 0, m31 := 0, m32 := 0, m33 := 1 } }
  failure := NonIdFailure.badDirectionSign ⟨8, by decide⟩

theorem intervalShardNonId000000007_validPairWord :
    ValidPairWord wordRank000000007 := by
  unfold wordRank000000007 ValidPairWord pairCount
  decide

theorem intervalShardNonId000000007_totalLinear :
    totalLinearOfPairWord wordRank000000007 = { m00 := (-455/729), m01 := (-104/729), m02 := (-560/729), m10 := (-280/729), m11 := (665/729), m12 := (104/729), m20 := (496/729), m21 := (280/729), m22 := (-455/729) } := by
  rw [totalLinearOfPairWord_eq_pairLinearProductRight]
  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,
    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
  norm_num

theorem intervalShardNonId000000007_nonIdentity :
    totalLinearOfPairWord wordRank000000007 ≠ (matId : Mat3 Rat) := by
  rw [intervalShardNonId000000007_totalLinear]
  intro h
  have hfield := congrArg Mat3.m00 h
  norm_num [matId] at hfield

theorem intervalShardNonId000000007_kernelCheck :
    checkKernelLineWitness
      (totalLinearOfPairWord wordRank000000007)
      { x := -1, y := 6, z := 1 }
      { crossFactor := { m00 := (-35/8), m01 := (37/2), m02 := 0, m10 := -1, m11 := (13/8), m12 := 0, m20 := (13/8), m21 := (35/4), m22 := 0 } } = true := by
  rw [intervalShardNonId000000007_totalLinear]
  norm_num [checkKernelLineWitness, checkVec3NonzeroQ, fixedPart,
    crossLeftMatrix, matSub, matId, matMul, matVec]

theorem intervalShardNonId000000007_check :
    checkNonIdCert intervalShardNonId000000007 = true := by
  apply checkNonIdCert_badDirectionSign intervalShardNonId000000007 ⟨8, by decide⟩
  · rfl
  · simpa [intervalShardNonId000000007] using intervalShardNonId000000007_validPairWord
  · simpa [intervalShardNonId000000007] using intervalShardNonId000000007_nonIdentity
  · simpa [intervalShardNonId000000007] using intervalShardNonId000000007_kernelCheck
  · intro f hf
    cases f <;> simp [intervalShardNonId000000007, pairOfFace, pairPrefixLinearNat,
      canonicalNormalQ, normalQ, matId, matMul, reflM, dot, matSub,
      scalarMat, outer, matVec] at hf ⊢ <;> norm_num at hf ⊢

theorem rank_certified :
    Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
      nonIdentityClassifier 7 := by
  intro hlt _hclass _hM
  have hrank : (⟨7, hlt⟩ : Fin numPairWords) =
      (⟨7, by decide⟩ : Fin numPairWords) := by
    ext
    rfl
  exact ⟨intervalShardNonId000000007, by rw [hrank]; decide, intervalShardNonId000000007_check⟩

theorem interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 7 8 :=
  Cuboctahedron.Generated.Coverage.CoversInterval.single rank_certified

theorem nonidentity_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) 7 8 :=
  interval

theorem translation_rank_certified :
    Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
      nonIdentityClassifierTranslation 7 := by
  intro hlt _mask _hclass hM
  have hrank : (⟨7, hlt⟩ : Fin numPairWords) =
      (⟨7, by decide⟩ : Fin numPairWords) := by
    ext
    rfl
  have hword : wordRank000000007 = unrankPairWord ⟨7, hlt⟩ := by
    rw [hrank]
    decide
  exact False.elim (intervalShardNonId000000007_nonIdentity (by simpa [← hword] using hM))

theorem translation_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        nonIdentityClassifierTranslation) 7 8 :=
  Cuboctahedron.Generated.Coverage.CoversInterval.single
    translation_rank_certified

end Cuboctahedron.Generated.PublicEvidence.IntervalShard.Shard000000000_000000008.NonIdentity.Rank000000007
