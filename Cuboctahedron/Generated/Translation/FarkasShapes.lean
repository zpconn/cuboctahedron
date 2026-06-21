import Cuboctahedron.Generated.Coverage.Predicates
import Cuboctahedron.Search.FarkasShapeTransport

/-!
Generated mini shared translation Farkas shape library for symmetry Phase 5.

This module demonstrates the proof-carrying shared-shape backend on two
translation source-Farkas cases with the same normalized constraint shape.
The normalized shape is checked once, while each concrete case is still
checked by an ordinary `TranslationCert` proof.
-/

namespace Cuboctahedron.Generated.Translation.FarkasShapes

open Cuboctahedron.Generated.Coverage

set_option maxHeartbeats 2400000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

def wordRank000000089 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.d11m], by decide⟩

@[simp] theorem wordRank000000089_get00_num :
    wordRank000000089.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000089_get00_mk (h : 0 < 13) :
    wordRank000000089.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000089_get01_num :
    wordRank000000089.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000089_get01_mk (h : 1 < 13) :
    wordRank000000089.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000089_get02_num :
    wordRank000000089.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000089_get02_mk (h : 2 < 13) :
    wordRank000000089.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000089_get03_num :
    wordRank000000089.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000089_get03_mk (h : 3 < 13) :
    wordRank000000089.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000089_get04_num :
    wordRank000000089.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000089_get04_mk (h : 4 < 13) :
    wordRank000000089.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000089_get05_num :
    wordRank000000089.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000089_get05_mk (h : 5 < 13) :
    wordRank000000089.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000089_get06_num :
    wordRank000000089.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000089_get06_mk (h : 6 < 13) :
    wordRank000000089.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000089_get07_num :
    wordRank000000089.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000089_get07_mk (h : 7 < 13) :
    wordRank000000089.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000089_get08_num :
    wordRank000000089.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000089_get08_mk (h : 8 < 13) :
    wordRank000000089.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000089_get09_num :
    wordRank000000089.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000089_get09_mk (h : 9 < 13) :
    wordRank000000089.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000089_get10_num :
    wordRank000000089.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000089_get10_mk (h : 10 < 13) :
    wordRank000000089.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000089_get11_num :
    wordRank000000089.get (11 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000089_get11_mk (h : 11 < 13) :
    wordRank000000089.get ⟨11, h⟩ = PairId.d11m := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000089_get12_num :
    wordRank000000089.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000089_get12_mk (h : 12 < 13) :
    wordRank000000089.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def wordRank000000131 : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11, PairId.d111], by decide⟩

@[simp] theorem wordRank000000131_get00_num :
    wordRank000000131.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem wordRank000000131_get00_mk (h : 0 < 13) :
    wordRank000000131.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000131_get01_num :
    wordRank000000131.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000131_get01_mk (h : 1 < 13) :
    wordRank000000131.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000131_get02_num :
    wordRank000000131.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem wordRank000000131_get02_mk (h : 2 < 13) :
    wordRank000000131.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000131_get03_num :
    wordRank000000131.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000131_get03_mk (h : 3 < 13) :
    wordRank000000131.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000131_get04_num :
    wordRank000000131.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem wordRank000000131_get04_mk (h : 4 < 13) :
    wordRank000000131.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000131_get05_num :
    wordRank000000131.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000131_get05_mk (h : 5 < 13) :
    wordRank000000131.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000131_get06_num :
    wordRank000000131.get (6 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000131_get06_mk (h : 6 < 13) :
    wordRank000000131.get ⟨6, h⟩ = PairId.d11m := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000131_get07_num :
    wordRank000000131.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem wordRank000000131_get07_mk (h : 7 < 13) :
    wordRank000000131.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000131_get08_num :
    wordRank000000131.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000131_get08_mk (h : 8 < 13) :
    wordRank000000131.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000131_get09_num :
    wordRank000000131.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem wordRank000000131_get09_mk (h : 9 < 13) :
    wordRank000000131.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000131_get10_num :
    wordRank000000131.get (10 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000131_get10_mk (h : 10 < 13) :
    wordRank000000131.get ⟨10, h⟩ = PairId.dm11 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000131_get11_num :
    wordRank000000131.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem wordRank000000131_get11_mk (h : 11 < 13) :
    wordRank000000131.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem wordRank000000131_get12_num :
    wordRank000000131.get (12 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem wordRank000000131_get12_mk (h : 12 < 13) :
    wordRank000000131.get ⟨12, h⟩ = PairId.d111 := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

def sampleSharedFarkas08963Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tppp, Face.tmmm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tmpm, Face.tppm, Face.tmmp], by decide⟩

@[simp] theorem sampleSharedFarkas08963Seq_get00_num :
    sampleSharedFarkas08963Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get00_mk (h : 0 < 14) :
    sampleSharedFarkas08963Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get01_num :
    sampleSharedFarkas08963Seq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get01_mk (h : 1 < 14) :
    sampleSharedFarkas08963Seq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get02_num :
    sampleSharedFarkas08963Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get02_mk (h : 2 < 14) :
    sampleSharedFarkas08963Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get03_num :
    sampleSharedFarkas08963Seq.get (3 : Step14) = Face.ym := by
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get03_mk (h : 3 < 14) :
    sampleSharedFarkas08963Seq.get ⟨3, h⟩ = Face.ym := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get04_num :
    sampleSharedFarkas08963Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get04_mk (h : 4 < 14) :
    sampleSharedFarkas08963Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get05_num :
    sampleSharedFarkas08963Seq.get (5 : Step14) = Face.zm := by
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get05_mk (h : 5 < 14) :
    sampleSharedFarkas08963Seq.get ⟨5, h⟩ = Face.zm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get06_num :
    sampleSharedFarkas08963Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get06_mk (h : 6 < 14) :
    sampleSharedFarkas08963Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get07_num :
    sampleSharedFarkas08963Seq.get (7 : Step14) = Face.tmmm := by
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get07_mk (h : 7 < 14) :
    sampleSharedFarkas08963Seq.get ⟨7, h⟩ = Face.tmmm := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get08_num :
    sampleSharedFarkas08963Seq.get (8 : Step14) = Face.tmpp := by
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get08_mk (h : 8 < 14) :
    sampleSharedFarkas08963Seq.get ⟨8, h⟩ = Face.tmpp := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get09_num :
    sampleSharedFarkas08963Seq.get (9 : Step14) = Face.tpmm := by
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get09_mk (h : 9 < 14) :
    sampleSharedFarkas08963Seq.get ⟨9, h⟩ = Face.tpmm := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get10_num :
    sampleSharedFarkas08963Seq.get (10 : Step14) = Face.tpmp := by
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get10_mk (h : 10 < 14) :
    sampleSharedFarkas08963Seq.get ⟨10, h⟩ = Face.tpmp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get11_num :
    sampleSharedFarkas08963Seq.get (11 : Step14) = Face.tmpm := by
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get11_mk (h : 11 < 14) :
    sampleSharedFarkas08963Seq.get ⟨11, h⟩ = Face.tmpm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get12_num :
    sampleSharedFarkas08963Seq.get (12 : Step14) = Face.tppm := by
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get12_mk (h : 12 < 14) :
    sampleSharedFarkas08963Seq.get ⟨12, h⟩ = Face.tppm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get13_num :
    sampleSharedFarkas08963Seq.get (13 : Step14) = Face.tmmp := by
  decide

@[simp] theorem sampleSharedFarkas08963Seq_get13_mk (h : 13 < 14) :
    sampleSharedFarkas08963Seq.get ⟨13, h⟩ = Face.tmmp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def sampleSharedFarkas08963 : TranslationCert where
  word := wordRank000000089
  signMask := ⟨63, by decide⟩
  seq := sampleSharedFarkas08963Seq
  b := { x := (-28/3), y := (28/3), z := (28/3) }
  failure := TranslationFailure.sourceFarkas { terms := [{ source := TranslationConstraintSource.xpStart ⟨0, by decide⟩, multiplier := 1 }, { source := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp, multiplier := 3 }] }

theorem sampleSharedFarkas08963_check : checkTranslationCert sampleSharedFarkas08963 = true := by
  apply checkTranslationCert_sourceFarkas sampleSharedFarkas08963 { terms := [{ source := TranslationConstraintSource.xpStart ⟨0, by decide⟩, multiplier := 1 }, { source := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp, multiplier := 3 }] }
  · rfl
  · unfold sampleSharedFarkas08963 wordRank000000089 ValidPairWord pairCount
    decide
  · rw [totalLinearOfPairWord_eq_pairLinearProductRight]
    simp [sampleSharedFarkas08963, pairLinearProductRight, pairLinearSuffixNat, reflM,
      canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
    norm_num
  · intro i
    fin_cases i <;> simp [sampleSharedFarkas08963, translationChoiceSeq, signedPositiveAt,
      maskBitForPair, countPairBeforeNat, faceVectorSeq, faceOfPairSign]
  · apply Vec3.ext <;> norm_num [
      sampleSharedFarkas08963, TranslationCert.seqFun, faceVectorSeq, totalAff,
      totalOrder, composeFaceList, affCompose, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul]
  · simp [
      sampleSharedFarkas08963, TranslationCert.seqFun, faceVectorSeq, checkSourceFarkas,
      checkSourceFarkasTerm, checkTranslationConstraintSource,
      SourceFarkasCert.sourceConstraints, SourceFarkasCert.toFarkasCert,
      SourceFarkasCert.indexedTerms, SourceFarkasCert.indexedTermsAux,
      checkFarkas, checkFarkasTerm, checkFarkasPositive,
      weightedSum, termLinear, constraintAt,
      translationConstraintSourceLine, xpStartConstraintAt,
      orderingConstraint, impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint,
      Lin2.add, Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z,
      StrictLin2.zero, StrictLin2.add, StrictLin2.scale,
      impactDenom, impactPlaneNormalQ, impactPlaneOffsetQ,
      copiedNormalQ, copiedOffsetQ, preImpactCopyAff, pathPrefixAff,
      pathPrefixAffNat, impactFace, faceReflectionQ, reflM, reflD,
      normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul, lastImpact] <;> norm_num

def sampleSharedFarkas13107Seq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tppp, Face.tmmp, Face.tppm, Face.tmpm, Face.tpmp, Face.tpmm, Face.tmpp, Face.tmmm], by decide⟩

@[simp] theorem sampleSharedFarkas13107Seq_get00_num :
    sampleSharedFarkas13107Seq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get00_mk (h : 0 < 14) :
    sampleSharedFarkas13107Seq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get01_num :
    sampleSharedFarkas13107Seq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get01_mk (h : 1 < 14) :
    sampleSharedFarkas13107Seq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get02_num :
    sampleSharedFarkas13107Seq.get (2 : Step14) = Face.yp := by
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get02_mk (h : 2 < 14) :
    sampleSharedFarkas13107Seq.get ⟨2, h⟩ = Face.yp := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get03_num :
    sampleSharedFarkas13107Seq.get (3 : Step14) = Face.ym := by
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get03_mk (h : 3 < 14) :
    sampleSharedFarkas13107Seq.get ⟨3, h⟩ = Face.ym := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get04_num :
    sampleSharedFarkas13107Seq.get (4 : Step14) = Face.zp := by
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get04_mk (h : 4 < 14) :
    sampleSharedFarkas13107Seq.get ⟨4, h⟩ = Face.zp := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get05_num :
    sampleSharedFarkas13107Seq.get (5 : Step14) = Face.zm := by
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get05_mk (h : 5 < 14) :
    sampleSharedFarkas13107Seq.get ⟨5, h⟩ = Face.zm := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get06_num :
    sampleSharedFarkas13107Seq.get (6 : Step14) = Face.tppp := by
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get06_mk (h : 6 < 14) :
    sampleSharedFarkas13107Seq.get ⟨6, h⟩ = Face.tppp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get07_num :
    sampleSharedFarkas13107Seq.get (7 : Step14) = Face.tmmp := by
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get07_mk (h : 7 < 14) :
    sampleSharedFarkas13107Seq.get ⟨7, h⟩ = Face.tmmp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get08_num :
    sampleSharedFarkas13107Seq.get (8 : Step14) = Face.tppm := by
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get08_mk (h : 8 < 14) :
    sampleSharedFarkas13107Seq.get ⟨8, h⟩ = Face.tppm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get09_num :
    sampleSharedFarkas13107Seq.get (9 : Step14) = Face.tmpm := by
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get09_mk (h : 9 < 14) :
    sampleSharedFarkas13107Seq.get ⟨9, h⟩ = Face.tmpm := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get10_num :
    sampleSharedFarkas13107Seq.get (10 : Step14) = Face.tpmp := by
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get10_mk (h : 10 < 14) :
    sampleSharedFarkas13107Seq.get ⟨10, h⟩ = Face.tpmp := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get11_num :
    sampleSharedFarkas13107Seq.get (11 : Step14) = Face.tpmm := by
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get11_mk (h : 11 < 14) :
    sampleSharedFarkas13107Seq.get ⟨11, h⟩ = Face.tpmm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get12_num :
    sampleSharedFarkas13107Seq.get (12 : Step14) = Face.tmpp := by
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get12_mk (h : 12 < 14) :
    sampleSharedFarkas13107Seq.get ⟨12, h⟩ = Face.tmpp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get13_num :
    sampleSharedFarkas13107Seq.get (13 : Step14) = Face.tmmm := by
  decide

@[simp] theorem sampleSharedFarkas13107Seq_get13_mk (h : 13 < 14) :
    sampleSharedFarkas13107Seq.get ⟨13, h⟩ = Face.tmmm := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

def sampleSharedFarkas13107 : TranslationCert where
  word := wordRank000000131
  signMask := ⟨7, by decide⟩
  seq := sampleSharedFarkas13107Seq
  b := { x := (-28/3), y := (28/3), z := (28/3) }
  failure := TranslationFailure.sourceFarkas { terms := [{ source := TranslationConstraintSource.xpStart ⟨0, by decide⟩, multiplier := 1 }, { source := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp, multiplier := 3 }] }

theorem sampleSharedFarkas13107_check : checkTranslationCert sampleSharedFarkas13107 = true := by
  apply checkTranslationCert_sourceFarkas sampleSharedFarkas13107 { terms := [{ source := TranslationConstraintSource.xpStart ⟨0, by decide⟩, multiplier := 1 }, { source := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp, multiplier := 3 }] }
  · rfl
  · unfold sampleSharedFarkas13107 wordRank000000131 ValidPairWord pairCount
    decide
  · rw [totalLinearOfPairWord_eq_pairLinearProductRight]
    simp [sampleSharedFarkas13107, pairLinearProductRight, pairLinearSuffixNat, reflM,
      canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]
    norm_num
  · intro i
    fin_cases i <;> simp [sampleSharedFarkas13107, translationChoiceSeq, signedPositiveAt,
      maskBitForPair, countPairBeforeNat, faceVectorSeq, faceOfPairSign]
  · apply Vec3.ext <;> norm_num [
      sampleSharedFarkas13107, TranslationCert.seqFun, faceVectorSeq, totalAff,
      totalOrder, composeFaceList, affCompose, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul]
  · simp [
      sampleSharedFarkas13107, TranslationCert.seqFun, faceVectorSeq, checkSourceFarkas,
      checkSourceFarkasTerm, checkTranslationConstraintSource,
      SourceFarkasCert.sourceConstraints, SourceFarkasCert.toFarkasCert,
      SourceFarkasCert.indexedTerms, SourceFarkasCert.indexedTermsAux,
      checkFarkas, checkFarkasTerm, checkFarkasPositive,
      weightedSum, termLinear, constraintAt,
      translationConstraintSourceLine, xpStartConstraintAt,
      orderingConstraint, impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint,
      Lin2.add, Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z,
      StrictLin2.zero, StrictLin2.add, StrictLin2.scale,
      impactDenom, impactPlaneNormalQ, impactPlaneOffsetQ,
      copiedNormalQ, copiedOffsetQ, preImpactCopyAff, pathPrefixAff,
      pathPrefixAffNat, impactFace, faceReflectionQ, reflM, reflD,
      normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul, lastImpact] <;> norm_num

private def sampleSharedFarkasShape : NormalizedFarkasShape where
  shapeId := "phase5-shared-d3d5360dd3d34f25"
  rows := [
  { a := (-6 : Int), b := (3 : Int), c := (-10 : Int) },
  { a := (-6 : Int), b := (3 : Int), c := (-7 : Int) },
  { a := (-6 : Int), b := (3 : Int), c := (7 : Int) },
  { a := (-6 : Int), b := (3 : Int), c := (10 : Int) },
  { a := (-3 : Int), b := (-3 : Int), c := (-29 : Int) },
  { a := (-3 : Int), b := (-3 : Int), c := (-26 : Int) },
  { a := (-3 : Int), b := (0 : Int), c := (-13 : Int) },
  { a := (-3 : Int), b := (0 : Int), c := (-10 : Int) },
  { a := (-3 : Int), b := (3 : Int), c := (13 : Int) },
  { a := (-3 : Int), b := (3 : Int), c := (16 : Int) },
  { a := (-3 : Int), b := (6 : Int), c := (29 : Int) },
  { a := (-3 : Int), b := (6 : Int), c := (32 : Int) },
  { a := (-2 : Int), b := (1 : Int), c := (-2 : Int) },
  { a := (-2 : Int), b := (1 : Int), c := (0 : Int) },
  { a := (-2 : Int), b := (1 : Int), c := (1 : Int) },
  { a := (-2 : Int), b := (1 : Int), c := (2 : Int) },
  { a := (-2 : Int), b := (1 : Int), c := (3 : Int) },
  { a := (-2 : Int), b := (1 : Int), c := (4 : Int) },
  { a := (-1 : Int), b := (-1 : Int), c := (-4 : Int) },
  { a := (-1 : Int), b := (-1 : Int), c := (-3 : Int) },
  { a := (-1 : Int), b := (-1 : Int), c := (-1 : Int) },
  { a := (-1 : Int), b := (-1 : Int), c := (0 : Int) },
  { a := (-1 : Int), b := (-1 : Int), c := (1 : Int) },
  { a := (-1 : Int), b := (-1 : Int), c := (2 : Int) },
  { a := (-1 : Int), b := (-1 : Int), c := (3 : Int) },
  { a := (-1 : Int), b := (-1 : Int), c := (5 : Int) },
  { a := (-1 : Int), b := (-1 : Int), c := (7 : Int) },
  { a := (-1 : Int), b := (0 : Int), c := (-2 : Int) },
  { a := (-1 : Int), b := (0 : Int), c := (-1 : Int) },
  { a := (-1 : Int), b := (0 : Int), c := (0 : Int) },
  { a := (-1 : Int), b := (0 : Int), c := (1 : Int) },
  { a := (-1 : Int), b := (0 : Int), c := (2 : Int) },
  { a := (-1 : Int), b := (0 : Int), c := (3 : Int) },
  { a := (-1 : Int), b := (1 : Int), c := (-2 : Int) },
  { a := (-1 : Int), b := (1 : Int), c := (0 : Int) },
  { a := (-1 : Int), b := (1 : Int), c := (1 : Int) },
  { a := (-1 : Int), b := (1 : Int), c := (2 : Int) },
  { a := (-1 : Int), b := (1 : Int), c := (3 : Int) },
  { a := (-1 : Int), b := (2 : Int), c := (-4 : Int) },
  { a := (-1 : Int), b := (2 : Int), c := (-2 : Int) },
  { a := (-1 : Int), b := (2 : Int), c := (0 : Int) },
  { a := (-1 : Int), b := (2 : Int), c := (2 : Int) },
  { a := (-1 : Int), b := (2 : Int), c := (3 : Int) },
  { a := (-1 : Int), b := (2 : Int), c := (4 : Int) },
  { a := (-1 : Int), b := (2 : Int), c := (5 : Int) },
  { a := (-1 : Int), b := (2 : Int), c := (6 : Int) },
  { a := (0 : Int), b := (-3 : Int), c := (-13 : Int) },
  { a := (0 : Int), b := (-3 : Int), c := (-10 : Int) },
  { a := (0 : Int), b := (-1 : Int), c := (-2 : Int) },
  { a := (0 : Int), b := (-1 : Int), c := (-1 : Int) },
  { a := (0 : Int), b := (-1 : Int), c := (1 : Int) },
  { a := (0 : Int), b := (-1 : Int), c := (3 : Int) },
  { a := (0 : Int), b := (-1 : Int), c := (4 : Int) },
  { a := (0 : Int), b := (-1 : Int), c := (6 : Int) },
  { a := (0 : Int), b := (0 : Int), c := (1 : Int) },
  { a := (0 : Int), b := (1 : Int), c := (-2 : Int) },
  { a := (0 : Int), b := (1 : Int), c := (-1 : Int) },
  { a := (0 : Int), b := (1 : Int), c := (0 : Int) },
  { a := (0 : Int), b := (1 : Int), c := (1 : Int) },
  { a := (0 : Int), b := (1 : Int), c := (3 : Int) },
  { a := (0 : Int), b := (1 : Int), c := (4 : Int) },
  { a := (0 : Int), b := (3 : Int), c := (16 : Int) },
  { a := (0 : Int), b := (3 : Int), c := (19 : Int) },
  { a := (1 : Int), b := (-2 : Int), c := (-3 : Int) },
  { a := (1 : Int), b := (-2 : Int), c := (-2 : Int) },
  { a := (1 : Int), b := (-2 : Int), c := (0 : Int) },
  { a := (1 : Int), b := (-2 : Int), c := (1 : Int) },
  { a := (1 : Int), b := (-2 : Int), c := (2 : Int) },
  { a := (1 : Int), b := (-2 : Int), c := (3 : Int) },
  { a := (1 : Int), b := (-2 : Int), c := (4 : Int) },
  { a := (1 : Int), b := (-2 : Int), c := (6 : Int) },
  { a := (1 : Int), b := (-2 : Int), c := (8 : Int) },
  { a := (1 : Int), b := (-1 : Int), c := (-1 : Int) },
  { a := (1 : Int), b := (-1 : Int), c := (0 : Int) },
  { a := (1 : Int), b := (-1 : Int), c := (1 : Int) },
  { a := (1 : Int), b := (-1 : Int), c := (2 : Int) },
  { a := (1 : Int), b := (-1 : Int), c := (3 : Int) },
  { a := (1 : Int), b := (-1 : Int), c := (4 : Int) },
  { a := (1 : Int), b := (0 : Int), c := (-1 : Int) },
  { a := (1 : Int), b := (0 : Int), c := (1 : Int) },
  { a := (1 : Int), b := (0 : Int), c := (2 : Int) },
  { a := (1 : Int), b := (0 : Int), c := (3 : Int) },
  { a := (1 : Int), b := (0 : Int), c := (4 : Int) },
  { a := (1 : Int), b := (1 : Int), c := (-3 : Int) },
  { a := (1 : Int), b := (1 : Int), c := (-1 : Int) },
  { a := (1 : Int), b := (1 : Int), c := (1 : Int) },
  { a := (1 : Int), b := (1 : Int), c := (3 : Int) },
  { a := (1 : Int), b := (1 : Int), c := (4 : Int) },
  { a := (1 : Int), b := (1 : Int), c := (5 : Int) },
  { a := (1 : Int), b := (1 : Int), c := (6 : Int) },
  { a := (1 : Int), b := (1 : Int), c := (7 : Int) },
  { a := (2 : Int), b := (-1 : Int), c := (0 : Int) },
  { a := (2 : Int), b := (-1 : Int), c := (2 : Int) },
  { a := (2 : Int), b := (-1 : Int), c := (3 : Int) },
  { a := (2 : Int), b := (-1 : Int), c := (4 : Int) },
  { a := (2 : Int), b := (-1 : Int), c := (5 : Int) },
  { a := (2 : Int), b := (-1 : Int), c := (6 : Int) },
  { a := (3 : Int), b := (-6 : Int), c := (-26 : Int) },
  { a := (3 : Int), b := (-6 : Int), c := (-23 : Int) },
  { a := (3 : Int), b := (-3 : Int), c := (-10 : Int) },
  { a := (3 : Int), b := (-3 : Int), c := (-7 : Int) },
  { a := (3 : Int), b := (0 : Int), c := (16 : Int) },
  { a := (3 : Int), b := (0 : Int), c := (19 : Int) },
  { a := (3 : Int), b := (3 : Int), c := (32 : Int) },
  { a := (3 : Int), b := (3 : Int), c := (35 : Int) },
  { a := (6 : Int), b := (-3 : Int), c := (-4 : Int) },
  { a := (6 : Int), b := (-3 : Int), c := (-1 : Int) },
  { a := (6 : Int), b := (-3 : Int), c := (13 : Int) },
  { a := (6 : Int), b := (-3 : Int), c := (16 : Int) }
  ]
  cert := { terms := [(0, 1), (91, 3)] }

private theorem sampleSharedFarkasShape_check :
    sampleSharedFarkasShape.check = true := by
  norm_num [NormalizedFarkasShape.check, NormalizedFarkasShape.constraints,
    NormalizedFarkasRow.toStrictLin2, sampleSharedFarkasShape,
    checkFarkas, checkFarkasTerm, checkFarkasPositive, weightedSum,
    termLinear, constraintAt, StrictLin2.add, StrictLin2.scale,
    StrictLin2.zero]

private theorem sampleSharedFarkasShape_unsat :
    ¬ exists y z : Real,
      forall L, L ∈ sampleSharedFarkasShape.constraints -> L.Holds y z :=
  NormalizedFarkasShape.check_sound sampleSharedFarkasShape_check

private theorem sampleSharedFarkas08963_coveredCase :
    checkTranslationCoveredCase
      { pairRank := 89, signMask := 63 }
      sampleSharedFarkas08963 = true := by
  decide

private theorem sampleSharedFarkas08963_word_eq :
    sampleSharedFarkas08963.word =
      unrankPairWord (⟨89, by decide⟩ : Fin numPairWords) := by
  exact (checkTranslationCoveredCase_word_mask
    (r := (⟨89, by decide⟩ : Fin numPairWords))
    (mask := (⟨63, by decide⟩ : SignMask))
    (cert := sampleSharedFarkas08963)
    sampleSharedFarkas08963_coveredCase).1

private theorem sampleSharedFarkas08963_mask_eq :
    sampleSharedFarkas08963.signMask = (⟨63, by decide⟩ : SignMask) := by
  exact (checkTranslationCoveredCase_word_mask
    (r := (⟨89, by decide⟩ : Fin numPairWords))
    (mask := (⟨63, by decide⟩ : SignMask))
    (cert := sampleSharedFarkas08963)
    sampleSharedFarkas08963_coveredCase).2

private def sampleSharedFarkas08963Checked : CheckedTranslationCase where
  rank := ⟨89, by decide⟩
  mask := ⟨63, by decide⟩
  cert := sampleSharedFarkas08963
  word_eq := sampleSharedFarkas08963_word_eq
  mask_eq := sampleSharedFarkas08963_mask_eq
  check := sampleSharedFarkas08963_check

private def sampleSharedFarkas08963CheckedCase : TransCheckedFarkasCase where
  shapeId := "phase5-shared-d3d5360dd3d34f25"
  checked := sampleSharedFarkas08963Checked

private theorem sampleSharedFarkas08963CheckedCase_check :
    sampleSharedFarkas08963CheckedCase.checkWithShape sampleSharedFarkasShape = true := by
  unfold TransCheckedFarkasCase.checkWithShape sampleSharedFarkas08963CheckedCase
  rw [sampleSharedFarkasShape_check]
  decide

private theorem sampleSharedFarkas13107_coveredCase :
    checkTranslationCoveredCase
      { pairRank := 131, signMask := 7 }
      sampleSharedFarkas13107 = true := by
  decide

private theorem sampleSharedFarkas13107_word_eq :
    sampleSharedFarkas13107.word =
      unrankPairWord (⟨131, by decide⟩ : Fin numPairWords) := by
  exact (checkTranslationCoveredCase_word_mask
    (r := (⟨131, by decide⟩ : Fin numPairWords))
    (mask := (⟨7, by decide⟩ : SignMask))
    (cert := sampleSharedFarkas13107)
    sampleSharedFarkas13107_coveredCase).1

private theorem sampleSharedFarkas13107_mask_eq :
    sampleSharedFarkas13107.signMask = (⟨7, by decide⟩ : SignMask) := by
  exact (checkTranslationCoveredCase_word_mask
    (r := (⟨131, by decide⟩ : Fin numPairWords))
    (mask := (⟨7, by decide⟩ : SignMask))
    (cert := sampleSharedFarkas13107)
    sampleSharedFarkas13107_coveredCase).2

private def sampleSharedFarkas13107Checked : CheckedTranslationCase where
  rank := ⟨131, by decide⟩
  mask := ⟨7, by decide⟩
  cert := sampleSharedFarkas13107
  word_eq := sampleSharedFarkas13107_word_eq
  mask_eq := sampleSharedFarkas13107_mask_eq
  check := sampleSharedFarkas13107_check

private def sampleSharedFarkas13107CheckedCase : TransCheckedFarkasCase where
  shapeId := "phase5-shared-d3d5360dd3d34f25"
  checked := sampleSharedFarkas13107Checked

private theorem sampleSharedFarkas13107CheckedCase_check :
    sampleSharedFarkas13107CheckedCase.checkWithShape sampleSharedFarkasShape = true := by
  unfold TransCheckedFarkasCase.checkWithShape sampleSharedFarkas13107CheckedCase
  rw [sampleSharedFarkasShape_check]
  decide

private def sampleSharedFarkasFamily : TransCheckedFarkasFamily where
  name := "sampleSharedFarkasFamily"
  shape := sampleSharedFarkasShape
  cases := [sampleSharedFarkas08963CheckedCase, sampleSharedFarkas13107CheckedCase]

private theorem sampleSharedFarkasFamily_check :
    sampleSharedFarkasFamily.check = true := by
  unfold TransCheckedFarkasFamily.check sampleSharedFarkasFamily
  simp [sampleSharedFarkasShape_check,
    sampleSharedFarkas08963CheckedCase_check,
    sampleSharedFarkas13107CheckedCase_check]

private theorem sampleSharedFarkas08963Family_contains :
    sampleSharedFarkasFamily.ContainsCase
      ⟨89, by decide⟩ ⟨63, by decide⟩ := by
  refine ⟨sampleSharedFarkas08963CheckedCase, ?_, rfl, rfl⟩
  simp [sampleSharedFarkasFamily]

theorem sampleSharedFarkas08963_certified :
    TranslationCaseCertified
      ⟨89, by decide⟩ ⟨63, by decide⟩ := by
  intro _hLinear
  exact TransCheckedFarkasFamily.exists_cert
    sampleSharedFarkasFamily_check sampleSharedFarkas08963Family_contains

theorem sampleSharedFarkas08963_killed :
    TranslationCaseKilled
      ⟨89, by decide⟩ ⟨63, by decide⟩ :=
  TranslationCaseCertified.killed sampleSharedFarkas08963_certified

private theorem sampleSharedFarkas13107Family_contains :
    sampleSharedFarkasFamily.ContainsCase
      ⟨131, by decide⟩ ⟨7, by decide⟩ := by
  refine ⟨sampleSharedFarkas13107CheckedCase, ?_, rfl, rfl⟩
  simp [sampleSharedFarkasFamily]

theorem sampleSharedFarkas13107_certified :
    TranslationCaseCertified
      ⟨131, by decide⟩ ⟨7, by decide⟩ := by
  intro _hLinear
  exact TransCheckedFarkasFamily.exists_cert
    sampleSharedFarkasFamily_check sampleSharedFarkas13107Family_contains

theorem sampleSharedFarkas13107_killed :
    TranslationCaseKilled
      ⟨131, by decide⟩ ⟨7, by decide⟩ :=
  TranslationCaseCertified.killed sampleSharedFarkas13107_certified

def sampleSharedFarkasShapeReuseCount : Nat := 2

theorem sampleSharedFarkasShape_reused :
    sampleSharedFarkasShapeReuseCount = 2 := rfl

#check sampleSharedFarkas08963_certified
#check sampleSharedFarkas13107_certified
#check sampleSharedFarkasShape_reused

end Cuboctahedron.Generated.Translation.FarkasShapes
