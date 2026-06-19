import Cuboctahedron.Search.CertificateFormat

/-!
Generated proof-carrying translation source-Farkas smoke certificate.

This module emits an ordinary `TranslationCert` plus small local theorem
facts that can be assembled without a whole-corpus Boolean reduction.
-/

namespace Cuboctahedron.Generated.Translation.Farkas.ProofCarryingSmoke

set_option maxHeartbeats 2400000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

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

def proofCarryingTranslationFarkas000Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tppp, Face.tppm, Face.tmmp, Face.tmpm, Face.tpmp, Face.tpmm, Face.tmpp], by decide⟩

@[simp] theorem proofCarryingTranslationFarkas000Seq_get00_num :
    proofCarryingTranslationFarkas000Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get00_mk (h : 0 < 14) :
    proofCarryingTranslationFarkas000Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get01_num :
    proofCarryingTranslationFarkas000Seq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get01_mk (h : 1 < 14) :
    proofCarryingTranslationFarkas000Seq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get02_num :
    proofCarryingTranslationFarkas000Seq.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get02_mk (h : 2 < 14) :
    proofCarryingTranslationFarkas000Seq.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get03_num :
    proofCarryingTranslationFarkas000Seq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get03_mk (h : 3 < 14) :
    proofCarryingTranslationFarkas000Seq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get04_num :
    proofCarryingTranslationFarkas000Seq.get (4 : Step14) = Face.zm := by
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get04_mk (h : 4 < 14) :
    proofCarryingTranslationFarkas000Seq.get ⟨4, h⟩ = Face.zm := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get05_num :
    proofCarryingTranslationFarkas000Seq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get05_mk (h : 5 < 14) :
    proofCarryingTranslationFarkas000Seq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get06_num :
    proofCarryingTranslationFarkas000Seq.get (6 : Step14) = Face.tmmm := by
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get06_mk (h : 6 < 14) :
    proofCarryingTranslationFarkas000Seq.get ⟨6, h⟩ = Face.tmmm := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get07_num :
    proofCarryingTranslationFarkas000Seq.get (7 : Step14) = Face.tppp := by
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get07_mk (h : 7 < 14) :
    proofCarryingTranslationFarkas000Seq.get ⟨7, h⟩ = Face.tppp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get08_num :
    proofCarryingTranslationFarkas000Seq.get (8 : Step14) = Face.tppm := by
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get08_mk (h : 8 < 14) :
    proofCarryingTranslationFarkas000Seq.get ⟨8, h⟩ = Face.tppm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get09_num :
    proofCarryingTranslationFarkas000Seq.get (9 : Step14) = Face.tmmp := by
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get09_mk (h : 9 < 14) :
    proofCarryingTranslationFarkas000Seq.get ⟨9, h⟩ = Face.tmmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get10_num :
    proofCarryingTranslationFarkas000Seq.get (10 : Step14) = Face.tmpm := by
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get10_mk (h : 10 < 14) :
    proofCarryingTranslationFarkas000Seq.get ⟨10, h⟩ = Face.tmpm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get11_num :
    proofCarryingTranslationFarkas000Seq.get (11 : Step14) = Face.tpmp := by
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get11_mk (h : 11 < 14) :
    proofCarryingTranslationFarkas000Seq.get ⟨11, h⟩ = Face.tpmp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get12_num :
    proofCarryingTranslationFarkas000Seq.get (12 : Step14) = Face.tpmm := by
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get12_mk (h : 12 < 14) :
    proofCarryingTranslationFarkas000Seq.get ⟨12, h⟩ = Face.tpmm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get13_num :
    proofCarryingTranslationFarkas000Seq.get (13 : Step14) = Face.tmpp := by
  decide

@[simp] theorem proofCarryingTranslationFarkas000Seq_get13_mk (h : 13 < 14) :
    proofCarryingTranslationFarkas000Seq.get ⟨13, h⟩ = Face.tmpp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def proofCarryingTranslationFarkas000 : TranslationCert where
  word := wordRank000000000
  signMask := ⟨8, by decide⟩
  seq := proofCarryingTranslationFarkas000Seq
  b := { x := -4, y := -4, z := (-44/3) }
  failure := TranslationFailure.sourceFarkas { terms := [{ source := TranslationConstraintSource.xpStart ⟨0, by decide⟩, multiplier := 1 }, { source := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm, multiplier := 1 }] }

theorem proofCarryingTranslationFarkas000_check : checkTranslationCert proofCarryingTranslationFarkas000 = true := by
  apply checkTranslationCert_sourceFarkas proofCarryingTranslationFarkas000 { terms := [{ source := TranslationConstraintSource.xpStart ⟨0, by decide⟩, multiplier := 1 }, { source := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm, multiplier := 1 }] }
  · rfl
  · unfold proofCarryingTranslationFarkas000 wordRank000000000 ValidPairWord pairCount
    decide
  · rw [totalLinearOfPairWord_eq_pairLinearProductRight]
    simp [proofCarryingTranslationFarkas000, pairLinearProductRight, pairLinearSuffixNat, reflM,
      canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
    norm_num
  · intro i
    fin_cases i <;> simp [proofCarryingTranslationFarkas000, translationChoiceSeq, signedPositiveAt,
      maskBitForPair, countPairBeforeNat, faceVectorSeq, faceOfPairSign]
  · apply Vec3.ext <;> norm_num [
      proofCarryingTranslationFarkas000, TranslationCert.seqFun, faceVectorSeq, totalAff,
      totalOrder, composeFaceList, affCompose, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul]
  · simp [
      proofCarryingTranslationFarkas000, TranslationCert.seqFun, faceVectorSeq, checkSourceFarkas,
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

theorem proofCarryingTranslationFarkas000_coveredCase :
    checkTranslationCoveredCase
      { pairRank := 0, signMask := 8 }
      proofCarryingTranslationFarkas000 = true := by
  decide

theorem proofCarryingTranslationFarkas000_word_eq :
    proofCarryingTranslationFarkas000.word =
      unrankPairWord (⟨0, by decide⟩ : Fin numPairWords) := by
  exact (checkTranslationCoveredCase_word_mask
    (r := (⟨0, by decide⟩ : Fin numPairWords))
    (mask := (⟨8, by decide⟩ : SignMask))
    (cert := proofCarryingTranslationFarkas000)
    proofCarryingTranslationFarkas000_coveredCase).1

theorem proofCarryingTranslationFarkas000_mask_eq :
    proofCarryingTranslationFarkas000.signMask = (⟨8, by decide⟩ : SignMask) := by
  exact (checkTranslationCoveredCase_word_mask
    (r := (⟨0, by decide⟩ : Fin numPairWords))
    (mask := (⟨8, by decide⟩ : SignMask))
    (cert := proofCarryingTranslationFarkas000)
    proofCarryingTranslationFarkas000_coveredCase).2

def proofCarryingTranslationFarkas000Evidence : Cuboctahedron.CheckedTranslationCase where
  rank := ⟨0, by decide⟩
  mask := ⟨8, by decide⟩
  cert := proofCarryingTranslationFarkas000
  word_eq := proofCarryingTranslationFarkas000_word_eq
  mask_eq := proofCarryingTranslationFarkas000_mask_eq
  check := proofCarryingTranslationFarkas000_check

theorem proofCarryingTranslationFarkas000_exists :
    exists ordinary : TranslationCert,
      ordinary.word =
          unrankPairWord (⟨0, by decide⟩ : Fin numPairWords) /\
        ordinary.signMask = (⟨8, by decide⟩ : SignMask) /\
          checkTranslationCert ordinary = true := by
  exact Cuboctahedron.CheckedTranslationCase.exists_cert proofCarryingTranslationFarkas000Evidence

theorem proofCarryingTranslationFarkas000_no_feasible :
    ¬ exists seq,
      SeqRealizesTranslationChoice (unrankPairWord (⟨0, by decide⟩ : Fin numPairWords))
          (⟨8, by decide⟩ : SignMask) seq /\
        totalLinear seq = (matId : Mat3 Rat) /\
          UnfoldedFeasible seq := by
  exact Cuboctahedron.CheckedTranslationCase.no_feasible proofCarryingTranslationFarkas000Evidence

end Cuboctahedron.Generated.Translation.Farkas.ProofCarryingSmoke
