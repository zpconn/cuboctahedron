import Cuboctahedron.Search.Certificates

/-!
Generated representative translation family coverage sample for Step 14E.5.

This file exercises grouped translation leaves, including a shared
sparse Farkas family. It is representative data, not exhaustive.
-/

namespace Cuboctahedron.Generated.Translation

set_option maxHeartbeats 2400000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unnecessarySeqFocus false

def caseBoxRange (startRank endRank startMask endMask : Nat) :
    TranslationCaseBox where
  startRank := startRank
  endRank := endRank
  startMask := startMask
  endMask := endMask

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

def translationFamilyFarkas000Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.yp, Face.ym, Face.zm, Face.zp, Face.tmmm, Face.tppp, Face.tmmp, Face.tppm, Face.tmpm, Face.tpmp, Face.tpmm, Face.tmpp], by decide⟩

@[simp] theorem translationFamilyFarkas000Seq_get00_num :
    translationFamilyFarkas000Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem translationFamilyFarkas000Seq_get00_mk (h : 0 < 14) :
    translationFamilyFarkas000Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas000Seq_get01_num :
    translationFamilyFarkas000Seq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem translationFamilyFarkas000Seq_get01_mk (h : 1 < 14) :
    translationFamilyFarkas000Seq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas000Seq_get02_num :
    translationFamilyFarkas000Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem translationFamilyFarkas000Seq_get02_mk (h : 2 < 14) :
    translationFamilyFarkas000Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas000Seq_get03_num :
    translationFamilyFarkas000Seq.get (3 : Step14) = Face.ym := by
  decide

@[simp] theorem translationFamilyFarkas000Seq_get03_mk (h : 3 < 14) :
    translationFamilyFarkas000Seq.get ⟨3, h⟩ = Face.ym := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas000Seq_get04_num :
    translationFamilyFarkas000Seq.get (4 : Step14) = Face.zm := by
  decide

@[simp] theorem translationFamilyFarkas000Seq_get04_mk (h : 4 < 14) :
    translationFamilyFarkas000Seq.get ⟨4, h⟩ = Face.zm := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas000Seq_get05_num :
    translationFamilyFarkas000Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem translationFamilyFarkas000Seq_get05_mk (h : 5 < 14) :
    translationFamilyFarkas000Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas000Seq_get06_num :
    translationFamilyFarkas000Seq.get (6 : Step14) = Face.tmmm := by
  decide

@[simp] theorem translationFamilyFarkas000Seq_get06_mk (h : 6 < 14) :
    translationFamilyFarkas000Seq.get ⟨6, h⟩ = Face.tmmm := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas000Seq_get07_num :
    translationFamilyFarkas000Seq.get (7 : Step14) = Face.tppp := by
  decide

@[simp] theorem translationFamilyFarkas000Seq_get07_mk (h : 7 < 14) :
    translationFamilyFarkas000Seq.get ⟨7, h⟩ = Face.tppp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas000Seq_get08_num :
    translationFamilyFarkas000Seq.get (8 : Step14) = Face.tmmp := by
  decide

@[simp] theorem translationFamilyFarkas000Seq_get08_mk (h : 8 < 14) :
    translationFamilyFarkas000Seq.get ⟨8, h⟩ = Face.tmmp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas000Seq_get09_num :
    translationFamilyFarkas000Seq.get (9 : Step14) = Face.tppm := by
  decide

@[simp] theorem translationFamilyFarkas000Seq_get09_mk (h : 9 < 14) :
    translationFamilyFarkas000Seq.get ⟨9, h⟩ = Face.tppm := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas000Seq_get10_num :
    translationFamilyFarkas000Seq.get (10 : Step14) = Face.tmpm := by
  decide

@[simp] theorem translationFamilyFarkas000Seq_get10_mk (h : 10 < 14) :
    translationFamilyFarkas000Seq.get ⟨10, h⟩ = Face.tmpm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas000Seq_get11_num :
    translationFamilyFarkas000Seq.get (11 : Step14) = Face.tpmp := by
  decide

@[simp] theorem translationFamilyFarkas000Seq_get11_mk (h : 11 < 14) :
    translationFamilyFarkas000Seq.get ⟨11, h⟩ = Face.tpmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas000Seq_get12_num :
    translationFamilyFarkas000Seq.get (12 : Step14) = Face.tpmm := by
  decide

@[simp] theorem translationFamilyFarkas000Seq_get12_mk (h : 12 < 14) :
    translationFamilyFarkas000Seq.get ⟨12, h⟩ = Face.tpmm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas000Seq_get13_num :
    translationFamilyFarkas000Seq.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem translationFamilyFarkas000Seq_get13_mk (h : 13 < 14) :
    translationFamilyFarkas000Seq.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def translationFamilyFarkas000 : TranslationCert where
  word := wordRank000000000
  signMask := ⟨1, by decide⟩
  seq := translationFamilyFarkas000Seq
  b := { x := (4/3), y := (-4/3), z := (-28/3) }
  failure := TranslationFailure.sourceFarkas { terms := [{ source := TranslationConstraintSource.xpStart ⟨0, by decide⟩, multiplier := 1 }, { source := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp, multiplier := 7 }] }

theorem translationFamilyFarkas000_check : checkTranslationCert translationFamilyFarkas000 = true := by
  apply checkTranslationCert_sourceFarkas translationFamilyFarkas000 { terms := [{ source := TranslationConstraintSource.xpStart ⟨0, by decide⟩, multiplier := 1 }, { source := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp, multiplier := 7 }] }
  · rfl
  · unfold translationFamilyFarkas000 wordRank000000000 ValidPairWord pairCount
    decide
  · rw [totalLinearOfPairWord_eq_pairLinearProductRight]
    simp [translationFamilyFarkas000, pairLinearProductRight, pairLinearSuffixNat, reflM,
      canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
    norm_num
  · intro i
    fin_cases i <;> simp [translationFamilyFarkas000, translationChoiceSeq, signedPositiveAt,
      maskBitForPair, countPairBeforeNat, faceVectorSeq, faceOfPairSign]
  · apply Vec3.ext <;> norm_num [
      translationFamilyFarkas000, TranslationCert.seqFun, faceVectorSeq, totalAff,
      totalOrder, composeFaceList, affCompose, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul]
  · simp [
      translationFamilyFarkas000, TranslationCert.seqFun, faceVectorSeq, checkSourceFarkas,
      checkSourceFarkasTerm, checkTranslationConstraintSource,
      SourceFarkasCert.sourceConstraints, SourceFarkasCert.toFarkasCert,
      SourceFarkasCert.indexedTerms, SourceFarkasCert.indexedTermsAux,
      checkFarkas, checkFarkasTerm, checkFarkasPositive,
      weightedSum, termLinear, constraintAt,
      translationConstraintSourceLine, xpStartConstraintAt,
      orderingConstraint, impactInteriorConstraint, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint,
      Lin2.add, Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z,
      StrictLin2.zero, StrictLin2.add, StrictLin2.scale,
      impactDenom, impactPlaneNormalQ, impactPlaneOffsetQ,
      copiedNormalQ, copiedOffsetQ, preImpactCopyAff, pathPrefixAff,
      pathPrefixAffNat, impactFace, faceReflectionQ, reflM, reflD,
      normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul, lastImpact] <;> norm_num

def translationFamilyFarkas000Coverage : CanonicalTranslationCoverage :=
  { rawRank := 0, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩, rawMask := ⟨1, by decide⟩, canonical := { rank := 0, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩, mask := ⟨1, by decide⟩ }, rawToCanonicalTransformId := 0, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := false }, canonicalToRawTransformId := 0, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := false } }

theorem translationFamilyFarkas000Coverage_check :
    checkCanonicalTranslationCoverage translationFamilyFarkas000Coverage = true := by
  decide

theorem translationFamilyFarkas000Coverage_coveredCase :
    checkTranslationCoveredCase
      { pairRank := translationFamilyFarkas000Coverage.rawRank,
        signMask := translationFamilyFarkas000Coverage.rawMask.val }
      translationFamilyFarkas000 = true := by
  decide

theorem translationFamilyFarkas000_familyFailure :
    checkTranslationFamilyFailureMatches
      TranslationFamilyFailure.farkas
      translationFamilyFarkas000 = true := by
  rfl

def translationFamilyFarkas001Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zp, Face.zm, Face.tmmm, Face.tppp, Face.tmmp, Face.tppm, Face.tmpm, Face.tpmp, Face.tpmm, Face.tmpp], by decide⟩

@[simp] theorem translationFamilyFarkas001Seq_get00_num :
    translationFamilyFarkas001Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem translationFamilyFarkas001Seq_get00_mk (h : 0 < 14) :
    translationFamilyFarkas001Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas001Seq_get01_num :
    translationFamilyFarkas001Seq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem translationFamilyFarkas001Seq_get01_mk (h : 1 < 14) :
    translationFamilyFarkas001Seq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas001Seq_get02_num :
    translationFamilyFarkas001Seq.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem translationFamilyFarkas001Seq_get02_mk (h : 2 < 14) :
    translationFamilyFarkas001Seq.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas001Seq_get03_num :
    translationFamilyFarkas001Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem translationFamilyFarkas001Seq_get03_mk (h : 3 < 14) :
    translationFamilyFarkas001Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas001Seq_get04_num :
    translationFamilyFarkas001Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem translationFamilyFarkas001Seq_get04_mk (h : 4 < 14) :
    translationFamilyFarkas001Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas001Seq_get05_num :
    translationFamilyFarkas001Seq.get (5 : Step14) = Face.zm := by
  decide

@[simp] theorem translationFamilyFarkas001Seq_get05_mk (h : 5 < 14) :
    translationFamilyFarkas001Seq.get ⟨5, h⟩ = Face.zm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas001Seq_get06_num :
    translationFamilyFarkas001Seq.get (6 : Step14) = Face.tmmm := by
  decide

@[simp] theorem translationFamilyFarkas001Seq_get06_mk (h : 6 < 14) :
    translationFamilyFarkas001Seq.get ⟨6, h⟩ = Face.tmmm := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas001Seq_get07_num :
    translationFamilyFarkas001Seq.get (7 : Step14) = Face.tppp := by
  decide

@[simp] theorem translationFamilyFarkas001Seq_get07_mk (h : 7 < 14) :
    translationFamilyFarkas001Seq.get ⟨7, h⟩ = Face.tppp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas001Seq_get08_num :
    translationFamilyFarkas001Seq.get (8 : Step14) = Face.tmmp := by
  decide

@[simp] theorem translationFamilyFarkas001Seq_get08_mk (h : 8 < 14) :
    translationFamilyFarkas001Seq.get ⟨8, h⟩ = Face.tmmp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas001Seq_get09_num :
    translationFamilyFarkas001Seq.get (9 : Step14) = Face.tppm := by
  decide

@[simp] theorem translationFamilyFarkas001Seq_get09_mk (h : 9 < 14) :
    translationFamilyFarkas001Seq.get ⟨9, h⟩ = Face.tppm := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas001Seq_get10_num :
    translationFamilyFarkas001Seq.get (10 : Step14) = Face.tmpm := by
  decide

@[simp] theorem translationFamilyFarkas001Seq_get10_mk (h : 10 < 14) :
    translationFamilyFarkas001Seq.get ⟨10, h⟩ = Face.tmpm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas001Seq_get11_num :
    translationFamilyFarkas001Seq.get (11 : Step14) = Face.tpmp := by
  decide

@[simp] theorem translationFamilyFarkas001Seq_get11_mk (h : 11 < 14) :
    translationFamilyFarkas001Seq.get ⟨11, h⟩ = Face.tpmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas001Seq_get12_num :
    translationFamilyFarkas001Seq.get (12 : Step14) = Face.tpmm := by
  decide

@[simp] theorem translationFamilyFarkas001Seq_get12_mk (h : 12 < 14) :
    translationFamilyFarkas001Seq.get ⟨12, h⟩ = Face.tpmm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyFarkas001Seq_get13_num :
    translationFamilyFarkas001Seq.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem translationFamilyFarkas001Seq_get13_mk (h : 13 < 14) :
    translationFamilyFarkas001Seq.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def translationFamilyFarkas001 : TranslationCert where
  word := wordRank000000000
  signMask := ⟨2, by decide⟩
  seq := translationFamilyFarkas001Seq
  b := { x := (4/3), y := (-28/3), z := (-4/3) }
  failure := TranslationFailure.sourceFarkas { terms := [{ source := TranslationConstraintSource.xpStart ⟨0, by decide⟩, multiplier := 1 }, { source := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp, multiplier := 7 }] }

theorem translationFamilyFarkas001_check : checkTranslationCert translationFamilyFarkas001 = true := by
  apply checkTranslationCert_sourceFarkas translationFamilyFarkas001 { terms := [{ source := TranslationConstraintSource.xpStart ⟨0, by decide⟩, multiplier := 1 }, { source := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp, multiplier := 7 }] }
  · rfl
  · unfold translationFamilyFarkas001 wordRank000000000 ValidPairWord pairCount
    decide
  · rw [totalLinearOfPairWord_eq_pairLinearProductRight]
    simp [translationFamilyFarkas001, pairLinearProductRight, pairLinearSuffixNat, reflM,
      canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
    norm_num
  · intro i
    fin_cases i <;> simp [translationFamilyFarkas001, translationChoiceSeq, signedPositiveAt,
      maskBitForPair, countPairBeforeNat, faceVectorSeq, faceOfPairSign]
  · apply Vec3.ext <;> norm_num [
      translationFamilyFarkas001, TranslationCert.seqFun, faceVectorSeq, totalAff,
      totalOrder, composeFaceList, affCompose, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul]
  · simp [
      translationFamilyFarkas001, TranslationCert.seqFun, faceVectorSeq, checkSourceFarkas,
      checkSourceFarkasTerm, checkTranslationConstraintSource,
      SourceFarkasCert.sourceConstraints, SourceFarkasCert.toFarkasCert,
      SourceFarkasCert.indexedTerms, SourceFarkasCert.indexedTermsAux,
      checkFarkas, checkFarkasTerm, checkFarkasPositive,
      weightedSum, termLinear, constraintAt,
      translationConstraintSourceLine, xpStartConstraintAt,
      orderingConstraint, impactInteriorConstraint, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint,
      Lin2.add, Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z,
      StrictLin2.zero, StrictLin2.add, StrictLin2.scale,
      impactDenom, impactPlaneNormalQ, impactPlaneOffsetQ,
      copiedNormalQ, copiedOffsetQ, preImpactCopyAff, pathPrefixAff,
      pathPrefixAffNat, impactFace, faceReflectionQ, reflM, reflD,
      normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul, lastImpact] <;> norm_num

def translationFamilyFarkas001Coverage : CanonicalTranslationCoverage :=
  { rawRank := 0, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩, rawMask := ⟨2, by decide⟩, canonical := { rank := 0, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩, mask := ⟨2, by decide⟩ }, rawToCanonicalTransformId := 0, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := false }, canonicalToRawTransformId := 0, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := false } }

theorem translationFamilyFarkas001Coverage_check :
    checkCanonicalTranslationCoverage translationFamilyFarkas001Coverage = true := by
  decide

theorem translationFamilyFarkas001Coverage_coveredCase :
    checkTranslationCoveredCase
      { pairRank := translationFamilyFarkas001Coverage.rawRank,
        signMask := translationFamilyFarkas001Coverage.rawMask.val }
      translationFamilyFarkas001 = true := by
  decide

theorem translationFamilyFarkas001_familyFailure :
    checkTranslationFamilyFailureMatches
      TranslationFamilyFailure.farkas
      translationFamilyFarkas001 = true := by
  rfl

def translationFamilyBadDirection000Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppp, Face.tmmm, Face.tmmp, Face.tppm, Face.tmpm, Face.tpmp, Face.tpmm, Face.tmpp], by decide⟩

@[simp] theorem translationFamilyBadDirection000Seq_get00_num :
    translationFamilyBadDirection000Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get00_mk (h : 0 < 14) :
    translationFamilyBadDirection000Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get01_num :
    translationFamilyBadDirection000Seq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get01_mk (h : 1 < 14) :
    translationFamilyBadDirection000Seq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get02_num :
    translationFamilyBadDirection000Seq.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get02_mk (h : 2 < 14) :
    translationFamilyBadDirection000Seq.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get03_num :
    translationFamilyBadDirection000Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get03_mk (h : 3 < 14) :
    translationFamilyBadDirection000Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get04_num :
    translationFamilyBadDirection000Seq.get (4 : Step14) = Face.zm := by
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get04_mk (h : 4 < 14) :
    translationFamilyBadDirection000Seq.get ⟨4, h⟩ = Face.zm := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get05_num :
    translationFamilyBadDirection000Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get05_mk (h : 5 < 14) :
    translationFamilyBadDirection000Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get06_num :
    translationFamilyBadDirection000Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get06_mk (h : 6 < 14) :
    translationFamilyBadDirection000Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get07_num :
    translationFamilyBadDirection000Seq.get (7 : Step14) = Face.tmmm := by
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get07_mk (h : 7 < 14) :
    translationFamilyBadDirection000Seq.get ⟨7, h⟩ = Face.tmmm := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get08_num :
    translationFamilyBadDirection000Seq.get (8 : Step14) = Face.tmmp := by
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get08_mk (h : 8 < 14) :
    translationFamilyBadDirection000Seq.get ⟨8, h⟩ = Face.tmmp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get09_num :
    translationFamilyBadDirection000Seq.get (9 : Step14) = Face.tppm := by
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get09_mk (h : 9 < 14) :
    translationFamilyBadDirection000Seq.get ⟨9, h⟩ = Face.tppm := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get10_num :
    translationFamilyBadDirection000Seq.get (10 : Step14) = Face.tmpm := by
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get10_mk (h : 10 < 14) :
    translationFamilyBadDirection000Seq.get ⟨10, h⟩ = Face.tmpm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get11_num :
    translationFamilyBadDirection000Seq.get (11 : Step14) = Face.tpmp := by
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get11_mk (h : 11 < 14) :
    translationFamilyBadDirection000Seq.get ⟨11, h⟩ = Face.tpmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get12_num :
    translationFamilyBadDirection000Seq.get (12 : Step14) = Face.tpmm := by
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get12_mk (h : 12 < 14) :
    translationFamilyBadDirection000Seq.get ⟨12, h⟩ = Face.tpmm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get13_num :
    translationFamilyBadDirection000Seq.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem translationFamilyBadDirection000Seq_get13_mk (h : 13 < 14) :
    translationFamilyBadDirection000Seq.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def translationFamilyBadDirection000 : TranslationCert where
  word := wordRank000000000
  signMask := ⟨4, by decide⟩
  seq := translationFamilyBadDirection000Seq
  b := { x := -4, y := -4, z := -4 }
  failure := TranslationFailure.badDirectionSign ⟨6, by decide⟩

theorem translationFamilyBadDirection000_check : checkTranslationCert translationFamilyBadDirection000 = true := by
  apply checkTranslationCert_badDirectionSign translationFamilyBadDirection000 ⟨6, by decide⟩
  · rfl
  · unfold translationFamilyBadDirection000 wordRank000000000 ValidPairWord pairCount
    decide
  · rw [totalLinearOfPairWord_eq_pairLinearProductRight]
    simp [translationFamilyBadDirection000, pairLinearProductRight, pairLinearSuffixNat, reflM,
      canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
    norm_num
  · intro i
    fin_cases i <;> simp [translationFamilyBadDirection000, translationChoiceSeq, signedPositiveAt,
      maskBitForPair, countPairBeforeNat, faceVectorSeq, faceOfPairSign]
  · apply Vec3.ext <;> norm_num [
      translationFamilyBadDirection000, TranslationCert.seqFun, faceVectorSeq, totalAff,
      totalOrder, composeFaceList, affCompose, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul]
  · decide
  · decide
  · simp [
      translationFamilyBadDirection000, TranslationCert.seqFun, faceVectorSeq, impactDenom,
      impactPlaneNormalQ, copiedNormalQ, preImpactNormalQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId,
      affId, affCompose, scalarMat, outer, dot, matMul, matVec,
      vecAdd, scalarMul, lastImpact] <;> norm_num

def translationFamilyBadDirection000Coverage : CanonicalTranslationCoverage :=
  { rawRank := 0, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩, rawMask := ⟨4, by decide⟩, canonical := { rank := 0, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩, mask := ⟨4, by decide⟩ }, rawToCanonicalTransformId := 0, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := false }, canonicalToRawTransformId := 0, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := false } }

theorem translationFamilyBadDirection000Coverage_check :
    checkCanonicalTranslationCoverage translationFamilyBadDirection000Coverage = true := by
  decide

theorem translationFamilyBadDirection000Coverage_coveredCase :
    checkTranslationCoveredCase
      { pairRank := translationFamilyBadDirection000Coverage.rawRank,
        signMask := translationFamilyBadDirection000Coverage.rawMask.val }
      translationFamilyBadDirection000 = true := by
  decide

theorem translationFamilyBadDirection000_familyFailure :
    checkTranslationFamilyFailureMatches
      TranslationFamilyFailure.badDirectionSign
      translationFamilyBadDirection000 = true := by
  rfl

def translationFamilyBadDirection001Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.yp, Face.ym, Face.zm, Face.zp, Face.tppp, Face.tmmm, Face.tmmp, Face.tppm, Face.tmpm, Face.tpmp, Face.tpmm, Face.tmpp], by decide⟩

@[simp] theorem translationFamilyBadDirection001Seq_get00_num :
    translationFamilyBadDirection001Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get00_mk (h : 0 < 14) :
    translationFamilyBadDirection001Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get01_num :
    translationFamilyBadDirection001Seq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get01_mk (h : 1 < 14) :
    translationFamilyBadDirection001Seq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get02_num :
    translationFamilyBadDirection001Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get02_mk (h : 2 < 14) :
    translationFamilyBadDirection001Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get03_num :
    translationFamilyBadDirection001Seq.get (3 : Step14) = Face.ym := by
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get03_mk (h : 3 < 14) :
    translationFamilyBadDirection001Seq.get ⟨3, h⟩ = Face.ym := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get04_num :
    translationFamilyBadDirection001Seq.get (4 : Step14) = Face.zm := by
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get04_mk (h : 4 < 14) :
    translationFamilyBadDirection001Seq.get ⟨4, h⟩ = Face.zm := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get05_num :
    translationFamilyBadDirection001Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get05_mk (h : 5 < 14) :
    translationFamilyBadDirection001Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get06_num :
    translationFamilyBadDirection001Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get06_mk (h : 6 < 14) :
    translationFamilyBadDirection001Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get07_num :
    translationFamilyBadDirection001Seq.get (7 : Step14) = Face.tmmm := by
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get07_mk (h : 7 < 14) :
    translationFamilyBadDirection001Seq.get ⟨7, h⟩ = Face.tmmm := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get08_num :
    translationFamilyBadDirection001Seq.get (8 : Step14) = Face.tmmp := by
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get08_mk (h : 8 < 14) :
    translationFamilyBadDirection001Seq.get ⟨8, h⟩ = Face.tmmp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get09_num :
    translationFamilyBadDirection001Seq.get (9 : Step14) = Face.tppm := by
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get09_mk (h : 9 < 14) :
    translationFamilyBadDirection001Seq.get ⟨9, h⟩ = Face.tppm := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get10_num :
    translationFamilyBadDirection001Seq.get (10 : Step14) = Face.tmpm := by
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get10_mk (h : 10 < 14) :
    translationFamilyBadDirection001Seq.get ⟨10, h⟩ = Face.tmpm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get11_num :
    translationFamilyBadDirection001Seq.get (11 : Step14) = Face.tpmp := by
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get11_mk (h : 11 < 14) :
    translationFamilyBadDirection001Seq.get ⟨11, h⟩ = Face.tpmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get12_num :
    translationFamilyBadDirection001Seq.get (12 : Step14) = Face.tpmm := by
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get12_mk (h : 12 < 14) :
    translationFamilyBadDirection001Seq.get ⟨12, h⟩ = Face.tpmm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get13_num :
    translationFamilyBadDirection001Seq.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem translationFamilyBadDirection001Seq_get13_mk (h : 13 < 14) :
    translationFamilyBadDirection001Seq.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def translationFamilyBadDirection001 : TranslationCert where
  word := wordRank000000000
  signMask := ⟨5, by decide⟩
  seq := translationFamilyBadDirection001Seq
  b := { x := -4, y := 4, z := -4 }
  failure := TranslationFailure.badDirectionSign ⟨8, by decide⟩

theorem translationFamilyBadDirection001_check : checkTranslationCert translationFamilyBadDirection001 = true := by
  apply checkTranslationCert_badDirectionSign translationFamilyBadDirection001 ⟨8, by decide⟩
  · rfl
  · unfold translationFamilyBadDirection001 wordRank000000000 ValidPairWord pairCount
    decide
  · rw [totalLinearOfPairWord_eq_pairLinearProductRight]
    simp [translationFamilyBadDirection001, pairLinearProductRight, pairLinearSuffixNat, reflM,
      canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
    norm_num
  · intro i
    fin_cases i <;> simp [translationFamilyBadDirection001, translationChoiceSeq, signedPositiveAt,
      maskBitForPair, countPairBeforeNat, faceVectorSeq, faceOfPairSign]
  · apply Vec3.ext <;> norm_num [
      translationFamilyBadDirection001, TranslationCert.seqFun, faceVectorSeq, totalAff,
      totalOrder, composeFaceList, affCompose, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul]
  · decide
  · decide
  · simp [
      translationFamilyBadDirection001, TranslationCert.seqFun, faceVectorSeq, impactDenom,
      impactPlaneNormalQ, copiedNormalQ, preImpactNormalQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId,
      affId, affCompose, scalarMat, outer, dot, matMul, matVec,
      vecAdd, scalarMul, lastImpact] <;> norm_num

def translationFamilyBadDirection001Coverage : CanonicalTranslationCoverage :=
  { rawRank := 0, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩, rawMask := ⟨5, by decide⟩, canonical := { rank := 0, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩, mask := ⟨5, by decide⟩ }, rawToCanonicalTransformId := 0, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := false }, canonicalToRawTransformId := 0, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := false } }

theorem translationFamilyBadDirection001Coverage_check :
    checkCanonicalTranslationCoverage translationFamilyBadDirection001Coverage = true := by
  decide

theorem translationFamilyBadDirection001Coverage_coveredCase :
    checkTranslationCoveredCase
      { pairRank := translationFamilyBadDirection001Coverage.rawRank,
        signMask := translationFamilyBadDirection001Coverage.rawMask.val }
      translationFamilyBadDirection001 = true := by
  decide

theorem translationFamilyBadDirection001_familyFailure :
    checkTranslationFamilyFailureMatches
      TranslationFamilyFailure.badDirectionSign
      translationFamilyBadDirection001 = true := by
  rfl

def sampleTranslationFarkasFamilyCertBox : TranslationCaseBox :=
  caseBoxRange 0 1 1 3

theorem sampleTranslationFarkasFamilyCert_boxCheck :
    checkTranslationCaseBox sampleTranslationFarkasFamilyCertBox = true := by
  norm_num [checkTranslationCaseBox, sampleTranslationFarkasFamilyCertBox, caseBoxRange,
    numPairWords, numSignMasks]

theorem translationFamilyFarkas000_sampleTranslationFarkasFamilyCert_boxCheck :
    checkTranslationCaseBoxContainsCanonicalTranslationCoverage
      sampleTranslationFarkasFamilyCertBox translationFamilyFarkas000Coverage = true := by
  simp [checkTranslationCaseBoxContainsCanonicalTranslationCoverage,
    sampleTranslationFarkasFamilyCertBox, caseBoxRange, translationFamilyFarkas000Coverage]

theorem translationFamilyFarkas001_sampleTranslationFarkasFamilyCert_boxCheck :
    checkTranslationCaseBoxContainsCanonicalTranslationCoverage
      sampleTranslationFarkasFamilyCertBox translationFamilyFarkas001Coverage = true := by
  simp [checkTranslationCaseBoxContainsCanonicalTranslationCoverage,
    sampleTranslationFarkasFamilyCertBox, caseBoxRange, translationFamilyFarkas001Coverage]

def sampleTranslationFarkasFamilyCert : TranslationFamilyCert where
  name := "sampleTranslationFarkasFamily"
  failure := TranslationFamilyFailure.farkas
  normalizedStateId := "translation-family:c7c2a6d3bd7c46a56379d188"
  coverages := #[translationFamilyFarkas000Coverage, translationFamilyFarkas001Coverage]
  certs := #[translationFamilyFarkas000, translationFamilyFarkas001]

theorem sampleTranslationFarkasFamilyCert_check :
    checkTranslationFamilyCert sampleTranslationFarkasFamilyCertBox sampleTranslationFarkasFamilyCert = true := by
  unfold checkTranslationFamilyCert sampleTranslationFarkasFamilyCert
  change
      (checkTranslationCaseBox sampleTranslationFarkasFamilyCertBox &&
        checkTranslationFamilyEntries
          sampleTranslationFarkasFamilyCertBox
          TranslationFamilyFailure.farkas
          [translationFamilyFarkas000Coverage, translationFamilyFarkas001Coverage]
          [translationFamilyFarkas000, translationFamilyFarkas001]) = true
  simp [checkTranslationFamilyEntries,
    sampleTranslationFarkasFamilyCert_boxCheck, translationFamilyFarkas000Coverage_check, translationFamilyFarkas001Coverage_check, translationFamilyFarkas000_sampleTranslationFarkasFamilyCert_boxCheck, translationFamilyFarkas001_sampleTranslationFarkasFamilyCert_boxCheck, translationFamilyFarkas000Coverage_coveredCase, translationFamilyFarkas001Coverage_coveredCase, translationFamilyFarkas000_check, translationFamilyFarkas001_check, translationFamilyFarkas000_familyFailure, translationFamilyFarkas001_familyFailure]

theorem sampleTranslationFarkasFamilyCert_leafCheck :
    checkTranslationCoverageLeaf sampleTranslationFarkasFamilyCertBox
      (TranslationCoverageLeaf.family sampleTranslationFarkasFamilyCert) = true := by
  unfold checkTranslationCoverageLeaf checkTranslationCoverageLeafPayload
  change
      (checkTranslationCaseBox sampleTranslationFarkasFamilyCertBox &&
        checkTranslationFamilyCert sampleTranslationFarkasFamilyCertBox sampleTranslationFarkasFamilyCert) = true
  rw [sampleTranslationFarkasFamilyCert_check, sampleTranslationFarkasFamilyCert_boxCheck]
  rfl

def sampleTranslationFarkasFamilyCertLeaf : TranslationCoverageTree :=
  TranslationCoverageTree.leaf sampleTranslationFarkasFamilyCertBox
    (TranslationCoverageLeaf.family sampleTranslationFarkasFamilyCert)

def sampleTranslationFarkasFamilyCertTree : TranslationCoverageTree :=
  sampleTranslationFarkasFamilyCertLeaf

theorem sampleTranslationFarkasFamilyCert_treeCheck :
    checkTranslationCoverageTree sampleTranslationFarkasFamilyCertTree = true := by
  unfold checkTranslationCoverageTree sampleTranslationFarkasFamilyCertTree sampleTranslationFarkasFamilyCertLeaf coverageTreeFuel
  simpa [checkTranslationCoverageTreeFuel] using sampleTranslationFarkasFamilyCert_leafCheck

def sampleTranslationBadDirectionFamilyCertBox : TranslationCaseBox :=
  caseBoxRange 0 1 4 6

theorem sampleTranslationBadDirectionFamilyCert_boxCheck :
    checkTranslationCaseBox sampleTranslationBadDirectionFamilyCertBox = true := by
  norm_num [checkTranslationCaseBox, sampleTranslationBadDirectionFamilyCertBox, caseBoxRange,
    numPairWords, numSignMasks]

theorem translationFamilyBadDirection000_sampleTranslationBadDirectionFamilyCert_boxCheck :
    checkTranslationCaseBoxContainsCanonicalTranslationCoverage
      sampleTranslationBadDirectionFamilyCertBox translationFamilyBadDirection000Coverage = true := by
  simp [checkTranslationCaseBoxContainsCanonicalTranslationCoverage,
    sampleTranslationBadDirectionFamilyCertBox, caseBoxRange, translationFamilyBadDirection000Coverage]

theorem translationFamilyBadDirection001_sampleTranslationBadDirectionFamilyCert_boxCheck :
    checkTranslationCaseBoxContainsCanonicalTranslationCoverage
      sampleTranslationBadDirectionFamilyCertBox translationFamilyBadDirection001Coverage = true := by
  simp [checkTranslationCaseBoxContainsCanonicalTranslationCoverage,
    sampleTranslationBadDirectionFamilyCertBox, caseBoxRange, translationFamilyBadDirection001Coverage]

def sampleTranslationBadDirectionFamilyCert : TranslationFamilyCert where
  name := "sampleTranslationBadDirectionFamily"
  failure := TranslationFamilyFailure.badDirectionSign
  normalizedStateId := "translation-family:c2ae2d3a6eb37cdc1d9bd07f"
  coverages := #[translationFamilyBadDirection000Coverage, translationFamilyBadDirection001Coverage]
  certs := #[translationFamilyBadDirection000, translationFamilyBadDirection001]

theorem sampleTranslationBadDirectionFamilyCert_check :
    checkTranslationFamilyCert sampleTranslationBadDirectionFamilyCertBox sampleTranslationBadDirectionFamilyCert = true := by
  unfold checkTranslationFamilyCert sampleTranslationBadDirectionFamilyCert
  change
      (checkTranslationCaseBox sampleTranslationBadDirectionFamilyCertBox &&
        checkTranslationFamilyEntries
          sampleTranslationBadDirectionFamilyCertBox
          TranslationFamilyFailure.badDirectionSign
          [translationFamilyBadDirection000Coverage, translationFamilyBadDirection001Coverage]
          [translationFamilyBadDirection000, translationFamilyBadDirection001]) = true
  simp [checkTranslationFamilyEntries,
    sampleTranslationBadDirectionFamilyCert_boxCheck, translationFamilyBadDirection000Coverage_check, translationFamilyBadDirection001Coverage_check, translationFamilyBadDirection000_sampleTranslationBadDirectionFamilyCert_boxCheck, translationFamilyBadDirection001_sampleTranslationBadDirectionFamilyCert_boxCheck, translationFamilyBadDirection000Coverage_coveredCase, translationFamilyBadDirection001Coverage_coveredCase, translationFamilyBadDirection000_check, translationFamilyBadDirection001_check, translationFamilyBadDirection000_familyFailure, translationFamilyBadDirection001_familyFailure]

theorem sampleTranslationBadDirectionFamilyCert_leafCheck :
    checkTranslationCoverageLeaf sampleTranslationBadDirectionFamilyCertBox
      (TranslationCoverageLeaf.family sampleTranslationBadDirectionFamilyCert) = true := by
  unfold checkTranslationCoverageLeaf checkTranslationCoverageLeafPayload
  change
      (checkTranslationCaseBox sampleTranslationBadDirectionFamilyCertBox &&
        checkTranslationFamilyCert sampleTranslationBadDirectionFamilyCertBox sampleTranslationBadDirectionFamilyCert) = true
  rw [sampleTranslationBadDirectionFamilyCert_check, sampleTranslationBadDirectionFamilyCert_boxCheck]
  rfl

def sampleTranslationBadDirectionFamilyCertLeaf : TranslationCoverageTree :=
  TranslationCoverageTree.leaf sampleTranslationBadDirectionFamilyCertBox
    (TranslationCoverageLeaf.family sampleTranslationBadDirectionFamilyCert)

def sampleTranslationBadDirectionFamilyCertTree : TranslationCoverageTree :=
  sampleTranslationBadDirectionFamilyCertLeaf

theorem sampleTranslationBadDirectionFamilyCert_treeCheck :
    checkTranslationCoverageTree sampleTranslationBadDirectionFamilyCertTree = true := by
  unfold checkTranslationCoverageTree sampleTranslationBadDirectionFamilyCertTree sampleTranslationBadDirectionFamilyCertLeaf coverageTreeFuel
  simpa [checkTranslationCoverageTreeFuel] using sampleTranslationBadDirectionFamilyCert_leafCheck

def sampleFamilyCoverage : TranslationCoverageForest where
  trees := [sampleTranslationFarkasFamilyCertTree, sampleTranslationBadDirectionFamilyCertTree]

theorem sampleFamilyCoverage_check :
    checkTranslationCoverageForest sampleFamilyCoverage = true := by
  unfold checkTranslationCoverageForest sampleFamilyCoverage
  simp [sampleTranslationFarkasFamilyCert_treeCheck, sampleTranslationBadDirectionFamilyCert_treeCheck]

theorem sampleFamilyCoverage_sound
    {r : Fin numPairWords} {mask : SignMask}
    (hcontains : sampleFamilyCoverage.ContainsTranslationChoice r mask) :
    exists cert : TranslationCert,
      checkTranslationCoveredCase
          { pairRank := r.val, signMask := mask.val } cert = true /\
        checkTranslationCert cert = true :=
  checkTranslationCoverageForest_choice_sound
    sampleFamilyCoverage_check hcontains

#check Cuboctahedron.Generated.Translation.sampleFamilyCoverage
#check Cuboctahedron.Generated.Translation.sampleFamilyCoverage_sound

end Cuboctahedron.Generated.Translation
