import Cuboctahedron.Generated.Translation.FamilySample

/-!
Generated representative parametric translation family sample for Step 14E.7B0.

This module exercises parametric translation families for bad direction signs,
zero translation vectors, and shared Farkas/source-Farkas infeasibility.
It is representative, not exhaustive.
-/

namespace Cuboctahedron.Generated.Translation

set_option maxHeartbeats 2400000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unnecessarySeqFocus false

def wordRank012510049 : PairWord :=
  ⟨#[PairId.y, PairId.d111, PairId.x, PairId.z, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.z, PairId.dm11, PairId.y, PairId.d11m, PairId.dm11, PairId.d11m], by decide⟩

@[simp] theorem wordRank012510049_get00_num :
    wordRank012510049.get (0 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank012510049_get00_mk (h : 0 < 13) :
    wordRank012510049.get ⟨0, h⟩ = PairId.y := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank012510049_get01_num :
    wordRank012510049.get (1 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank012510049_get01_mk (h : 1 < 13) :
    wordRank012510049.get ⟨1, h⟩ = PairId.d111 := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank012510049_get02_num :
    wordRank012510049.get (2 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank012510049_get02_mk (h : 2 < 13) :
    wordRank012510049.get ⟨2, h⟩ = PairId.x := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank012510049_get03_num :
    wordRank012510049.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank012510049_get03_mk (h : 3 < 13) :
    wordRank012510049.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank012510049_get04_num :
    wordRank012510049.get (4 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank012510049_get04_mk (h : 4 < 13) :
    wordRank012510049.get ⟨4, h⟩ = PairId.d111 := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank012510049_get05_num :
    wordRank012510049.get (5 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank012510049_get05_mk (h : 5 < 13) :
    wordRank012510049.get ⟨5, h⟩ = PairId.d1m1 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank012510049_get06_num :
    wordRank012510049.get (6 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank012510049_get06_mk (h : 6 < 13) :
    wordRank012510049.get ⟨6, h⟩ = PairId.d1m1 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank012510049_get07_num :
    wordRank012510049.get (7 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank012510049_get07_mk (h : 7 < 13) :
    wordRank012510049.get ⟨7, h⟩ = PairId.z := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank012510049_get08_num :
    wordRank012510049.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank012510049_get08_mk (h : 8 < 13) :
    wordRank012510049.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank012510049_get09_num :
    wordRank012510049.get (9 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank012510049_get09_mk (h : 9 < 13) :
    wordRank012510049.get ⟨9, h⟩ = PairId.y := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank012510049_get10_num :
    wordRank012510049.get (10 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank012510049_get10_mk (h : 10 < 13) :
    wordRank012510049.get ⟨10, h⟩ = PairId.d11m := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank012510049_get11_num :
    wordRank012510049.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank012510049_get11_mk (h : 11 < 13) :
    wordRank012510049.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank012510049_get12_num :
    wordRank012510049.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank012510049_get12_mk (h : 12 < 13) :
    wordRank012510049.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def translationParametricBadVector000Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.yp, Face.tppp, Face.xm, Face.zm, Face.tmmm, Face.tmpm, Face.tpmp, Face.zp, Face.tmpp, Face.ym, Face.tmmp, Face.tpmm, Face.tppm], by decide⟩

@[simp] theorem translationParametricBadVector000Seq_get00_num :
    translationParametricBadVector000Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem translationParametricBadVector000Seq_get00_mk (h : 0 < 14) :
    translationParametricBadVector000Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationParametricBadVector000Seq_get01_num :
    translationParametricBadVector000Seq.get (1 : Step14) = Face.yp := by
  decide

@[simp] theorem translationParametricBadVector000Seq_get01_mk (h : 1 < 14) :
    translationParametricBadVector000Seq.get ⟨1, h⟩ = Face.yp := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationParametricBadVector000Seq_get02_num :
    translationParametricBadVector000Seq.get (2 : Step14) = Face.tppp := by
  decide

@[simp] theorem translationParametricBadVector000Seq_get02_mk (h : 2 < 14) :
    translationParametricBadVector000Seq.get ⟨2, h⟩ = Face.tppp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationParametricBadVector000Seq_get03_num :
    translationParametricBadVector000Seq.get (3 : Step14) = Face.xm := by
  decide

@[simp] theorem translationParametricBadVector000Seq_get03_mk (h : 3 < 14) :
    translationParametricBadVector000Seq.get ⟨3, h⟩ = Face.xm := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationParametricBadVector000Seq_get04_num :
    translationParametricBadVector000Seq.get (4 : Step14) = Face.zm := by
  decide

@[simp] theorem translationParametricBadVector000Seq_get04_mk (h : 4 < 14) :
    translationParametricBadVector000Seq.get ⟨4, h⟩ = Face.zm := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationParametricBadVector000Seq_get05_num :
    translationParametricBadVector000Seq.get (5 : Step14) = Face.tmmm := by
  decide

@[simp] theorem translationParametricBadVector000Seq_get05_mk (h : 5 < 14) :
    translationParametricBadVector000Seq.get ⟨5, h⟩ = Face.tmmm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationParametricBadVector000Seq_get06_num :
    translationParametricBadVector000Seq.get (6 : Step14) = Face.tmpm := by
  decide

@[simp] theorem translationParametricBadVector000Seq_get06_mk (h : 6 < 14) :
    translationParametricBadVector000Seq.get ⟨6, h⟩ = Face.tmpm := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationParametricBadVector000Seq_get07_num :
    translationParametricBadVector000Seq.get (7 : Step14) = Face.tpmp := by
  decide

@[simp] theorem translationParametricBadVector000Seq_get07_mk (h : 7 < 14) :
    translationParametricBadVector000Seq.get ⟨7, h⟩ = Face.tpmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationParametricBadVector000Seq_get08_num :
    translationParametricBadVector000Seq.get (8 : Step14) = Face.zp := by
  decide

@[simp] theorem translationParametricBadVector000Seq_get08_mk (h : 8 < 14) :
    translationParametricBadVector000Seq.get ⟨8, h⟩ = Face.zp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationParametricBadVector000Seq_get09_num :
    translationParametricBadVector000Seq.get (9 : Step14) = Face.tmpp := by
  decide

@[simp] theorem translationParametricBadVector000Seq_get09_mk (h : 9 < 14) :
    translationParametricBadVector000Seq.get ⟨9, h⟩ = Face.tmpp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationParametricBadVector000Seq_get10_num :
    translationParametricBadVector000Seq.get (10 : Step14) = Face.ym := by
  decide

@[simp] theorem translationParametricBadVector000Seq_get10_mk (h : 10 < 14) :
    translationParametricBadVector000Seq.get ⟨10, h⟩ = Face.ym := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationParametricBadVector000Seq_get11_num :
    translationParametricBadVector000Seq.get (11 : Step14) = Face.tmmp := by
  decide

@[simp] theorem translationParametricBadVector000Seq_get11_mk (h : 11 < 14) :
    translationParametricBadVector000Seq.get ⟨11, h⟩ = Face.tmmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationParametricBadVector000Seq_get12_num :
    translationParametricBadVector000Seq.get (12 : Step14) = Face.tpmm := by
  decide

@[simp] theorem translationParametricBadVector000Seq_get12_mk (h : 12 < 14) :
    translationParametricBadVector000Seq.get ⟨12, h⟩ = Face.tpmm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem translationParametricBadVector000Seq_get13_num :
    translationParametricBadVector000Seq.get (13 : Step14) = Face.tppm := by
  decide

@[simp] theorem translationParametricBadVector000Seq_get13_mk (h : 13 < 14) :
    translationParametricBadVector000Seq.get ⟨13, h⟩ = Face.tppm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def translationParametricBadVector000 : TranslationCert where
  word := wordRank012510049
  signMask := ⟨37, by decide⟩
  seq := translationParametricBadVector000Seq
  b := { x := 0, y := 0, z := 0 }
  failure := TranslationFailure.badTranslationVector

theorem translationParametricBadVector000_check : checkTranslationCert translationParametricBadVector000 = true := by
  apply checkTranslationCert_badTranslationVector translationParametricBadVector000
  · rfl
  · unfold translationParametricBadVector000 wordRank012510049 ValidPairWord pairCount
    decide
  · rw [totalLinearOfPairWord_eq_pairLinearProductRight]
    simp [translationParametricBadVector000, pairLinearProductRight, pairLinearSuffixNat, reflM,
      canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
    norm_num
  · intro i
    fin_cases i <;> simp [translationParametricBadVector000, translationChoiceSeq, signedPositiveAt,
      maskBitForPair, countPairBeforeNat, faceVectorSeq, faceOfPairSign]
  · apply Vec3.ext <;> norm_num [
      translationParametricBadVector000, TranslationCert.seqFun, faceVectorSeq, totalAff,
      totalOrder, composeFaceList, affCompose, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul]
  · decide

theorem translationParametricBadVector000_coveredCase :
    checkTranslationCoveredCase
      { pairRank := 12510049, signMask := 37 }
      translationParametricBadVector000 = true := by
  decide

theorem translationParametricBadVector000_parametricFailure :
    checkTranslationParametricFailureMatches
      TranslationFamilyFailure.badTranslationVector
      translationParametricBadVector000 = true := by
  rfl

theorem translationFamilyFarkas000_parametricCoveredCase :
    checkTranslationCoveredCase { pairRank := 0, signMask := 1 }
      translationFamilyFarkas000 = true := by
  decide

theorem translationFamilyFarkas001_parametricCoveredCase :
    checkTranslationCoveredCase { pairRank := 0, signMask := 2 }
      translationFamilyFarkas001 = true := by
  decide

theorem translationFamilyBadDirection000_parametricCoveredCase :
    checkTranslationCoveredCase { pairRank := 0, signMask := 4 }
      translationFamilyBadDirection000 = true := by
  decide

theorem translationFamilyBadDirection001_parametricCoveredCase :
    checkTranslationCoveredCase { pairRank := 0, signMask := 5 }
      translationFamilyBadDirection001 = true := by
  decide

def sampleFarkasParametricBox : TranslationCaseBox where
  startRank := 0
  endRank := 1
  startMask := 1
  endMask := 3

def sampleFarkasParametricCertForCase : Nat -> Nat -> TranslationCert
  | 0, 1 => translationFamilyFarkas000
  | 0, 2 => translationFamilyFarkas001
  | _, _ => translationFamilyFarkas000

def sampleFarkasParametricFamily : TranslationParametricFamily where
  name := "sampleFarkasParametricFamily"
  failure := TranslationFamilyFailure.farkas
  box := sampleFarkasParametricBox
  certForCase := sampleFarkasParametricCertForCase
  certForCase_sound := by
    intro r mask hcontains
    rcases r with ⟨rank, hrank⟩
    rcases mask with ⟨maskVal, hmaskLt⟩
    simp [TranslationCaseBox.Contains, sampleFarkasParametricBox] at hcontains
    have hRank : rank = 0 := by omega
    have hMask : maskVal = 1 ∨ maskVal = 2 := by omega
    subst rank
    rcases hMask with rfl | rfl
    · simpa [sampleFarkasParametricCertForCase,
        checkTranslationParametricFailureMatches] using
        And.intro translationFamilyFarkas000_parametricCoveredCase
          (And.intro translationFamilyFarkas000_check
            translationFamilyFarkas000_familyFailure)
    · simpa [sampleFarkasParametricCertForCase,
        checkTranslationParametricFailureMatches] using
        And.intro translationFamilyFarkas001_parametricCoveredCase
          (And.intro translationFamilyFarkas001_check
            translationFamilyFarkas001_familyFailure)

theorem sampleFarkasParametricFamily_check :
    checkTranslationParametricFamily sampleFarkasParametricFamily = true := by
  norm_num [checkTranslationParametricFamily, sampleFarkasParametricFamily,
    sampleFarkasParametricBox, checkTranslationCaseBox,
    numPairWords, numSignMasks]

def sampleBadDirectionParametricBox : TranslationCaseBox where
  startRank := 0
  endRank := 1
  startMask := 4
  endMask := 6

def sampleBadDirectionParametricCertForCase : Nat -> Nat -> TranslationCert
  | 0, 4 => translationFamilyBadDirection000
  | 0, 5 => translationFamilyBadDirection001
  | _, _ => translationFamilyBadDirection000

def sampleBadDirectionParametricFamily : TranslationParametricFamily where
  name := "sampleBadDirectionParametricFamily"
  failure := TranslationFamilyFailure.badDirectionSign
  box := sampleBadDirectionParametricBox
  certForCase := sampleBadDirectionParametricCertForCase
  certForCase_sound := by
    intro r mask hcontains
    rcases r with ⟨rank, hrank⟩
    rcases mask with ⟨maskVal, hmaskLt⟩
    simp [TranslationCaseBox.Contains, sampleBadDirectionParametricBox] at hcontains
    have hRank : rank = 0 := by omega
    have hMask : maskVal = 4 ∨ maskVal = 5 := by omega
    subst rank
    rcases hMask with rfl | rfl
    · simpa [sampleBadDirectionParametricCertForCase,
        checkTranslationParametricFailureMatches] using
        And.intro translationFamilyBadDirection000_parametricCoveredCase
          (And.intro translationFamilyBadDirection000_check
            translationFamilyBadDirection000_familyFailure)
    · simpa [sampleBadDirectionParametricCertForCase,
        checkTranslationParametricFailureMatches] using
        And.intro translationFamilyBadDirection001_parametricCoveredCase
          (And.intro translationFamilyBadDirection001_check
            translationFamilyBadDirection001_familyFailure)

theorem sampleBadDirectionParametricFamily_check :
    checkTranslationParametricFamily sampleBadDirectionParametricFamily = true := by
  norm_num [checkTranslationParametricFamily, sampleBadDirectionParametricFamily,
    sampleBadDirectionParametricBox, checkTranslationCaseBox,
    numPairWords, numSignMasks]

def sampleBadVectorParametricBox : TranslationCaseBox where
  startRank := 12510049
  endRank := 12510050
  startMask := 37
  endMask := 38

def sampleBadVectorParametricCertForCase : Nat -> Nat -> TranslationCert
  | 12510049, 37 => translationParametricBadVector000
  | _, _ => translationParametricBadVector000

def sampleBadVectorParametricFamily : TranslationParametricFamily where
  name := "sampleBadVectorParametricFamily"
  failure := TranslationFamilyFailure.badTranslationVector
  box := sampleBadVectorParametricBox
  certForCase := sampleBadVectorParametricCertForCase
  certForCase_sound := by
    intro r mask hcontains
    rcases r with ⟨rank, hrank⟩
    rcases mask with ⟨maskVal, hmaskLt⟩
    simp [TranslationCaseBox.Contains, sampleBadVectorParametricBox] at hcontains
    have hRank : rank = 12510049 := by omega
    have hMask : maskVal = 37 := by omega
    subst rank
    subst maskVal
    simpa [sampleBadVectorParametricCertForCase,
      checkTranslationParametricFailureMatches] using
      And.intro translationParametricBadVector000_coveredCase
        (And.intro translationParametricBadVector000_check
          translationParametricBadVector000_parametricFailure)

theorem sampleBadVectorParametricFamily_check :
    checkTranslationParametricFamily sampleBadVectorParametricFamily = true := by
  norm_num [checkTranslationParametricFamily, sampleBadVectorParametricFamily,
    sampleBadVectorParametricBox, checkTranslationCaseBox,
    numPairWords, numSignMasks]

def sampleParametricCoverage : TranslationParametricCoverage where
  families :=
    [sampleFarkasParametricFamily,
      sampleBadDirectionParametricFamily,
      sampleBadVectorParametricFamily]

theorem sampleParametricCoverage_check :
    checkTranslationParametricCoverage sampleParametricCoverage = true := by
  unfold checkTranslationParametricCoverage sampleParametricCoverage
  simp [sampleFarkasParametricFamily_check,
    sampleBadDirectionParametricFamily_check,
    sampleBadVectorParametricFamily_check]

theorem sampleParametricCoverage_sound
    {r : Fin numPairWords} {mask : SignMask}
    (hcontains : sampleParametricCoverage.ContainsTranslationChoice r mask) :
    exists cert : TranslationCert,
      checkTranslationCoveredCase
          { pairRank := r.val, signMask := mask.val } cert = true /\
        checkTranslationCert cert = true :=
  checkTranslationParametricCoverage_choice_sound
    sampleParametricCoverage_check hcontains

noncomputable def checkParametricSamples : Bool :=
  checkTranslationParametricCoverage sampleParametricCoverage

theorem checkParametricSamples_true :
    checkParametricSamples = true := by
  unfold checkParametricSamples
  exact sampleParametricCoverage_check

#check checkTranslationParametricFamily
#check checkTranslationParametricFamily_sound
#check exhaustiveTranslationBadDirectionFamily_sound
#check exhaustiveTranslationBadVectorFamily_sound
#check Cuboctahedron.Generated.Translation.sampleParametricCoverage_sound

end Cuboctahedron.Generated.Translation
