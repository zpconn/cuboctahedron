import Cuboctahedron.Search.TranslationCase

/-!
Translation-case certificate wrappers.
-/

namespace Cuboctahedron

abbrev SignMask := Fin 64

abbrev SeqRealizesTranslationChoice
    (w : PairWord) (_mask : SignMask) (seq : Step14 -> Face) : Prop :=
  SeqRealizesPairWord w seq

inductive TranslationFailure
  | badTranslationVector
  | badDirectionSign
  | farkas (cert : FarkasCert)
deriving DecidableEq, Repr

structure TranslationCert where
  word : PairWord
  signMask : SignMask
  b : Vec3 Rat
  failure : TranslationFailure
deriving DecidableEq, Repr

def checkTranslationCert (cert : TranslationCert) : Bool :=
  match cert.failure with
  | TranslationFailure.badTranslationVector =>
      decide (totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat))
  | TranslationFailure.badDirectionSign => false
  | TranslationFailure.farkas fcert =>
      checkFarkas
        (translationConstraints (canonicalSeqOfPairWord cert.word) cert.b)
        fcert

theorem checkTranslationCert_sound
    (cert : TranslationCert)
    (hcheck : checkTranslationCert cert = true) :
    ¬ exists seq,
      SeqRealizesTranslationChoice cert.word cert.signMask seq /\
        totalLinear seq = (matId : Mat3 Rat) /\
        UnfoldedFeasible seq := by
  intro hbad
  rcases hbad with ⟨seq, hRealize, hLinear, hFeasible⟩
  cases hfailure : cert.failure with
  | badTranslationVector =>
      simp [checkTranslationCert, hfailure] at hcheck
      have hNonIdentity :
          totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat) :=
        hcheck
      have hWordLinear :
          totalLinearOfPairWord cert.word = (matId : Mat3 Rat) := by
        rw [← totalLinear_eq_totalLinearOfPairWord hRealize.1 hRealize.2]
        exact hLinear
      exact hNonIdentity hWordLinear
  | badDirectionSign =>
      simp [checkTranslationCert, hfailure] at hcheck
  | farkas fcert =>
      simp [checkTranslationCert, hfailure] at hcheck
      have hTransFeasible :
          TranslationUnfoldedFeasible seq cert.b := {
        feasible := hFeasible
        startsXp := hRealize.1
      }
      rcases translation_feasible_implies_constraints hTransFeasible with
        ⟨y, z, hConstraints⟩
      have hNoConstraints :=
        checkFarkas_sound
          (constraints :=
            translationConstraints (canonicalSeqOfPairWord cert.word) cert.b)
          (cert := fcert) hcheck
      apply hNoConstraints
      exact ⟨y, z, by
        intro L hmem
        exact hConstraints L (by simpa [translationConstraints] using hmem)⟩

def sampleNonIdentityTranslationSeq (i : Step14) : Face :=
  if i = 0 then Face.xp else Face.yp

def sampleNonIdentityTranslationWord : PairWord :=
  pairWordOfSeq sampleNonIdentityTranslationSeq

theorem sampleNonIdentityTranslationSeq_starts :
    StartsXp sampleNonIdentityTranslationSeq := by
  simp [StartsXp, sampleNonIdentityTranslationSeq]

theorem sampleNonIdentityTranslationSeq_totalLinear_ne_id :
    totalLinear sampleNonIdentityTranslationSeq ≠ (matId : Mat3 Rat) := by
  intro h
  have hx := congrArg Mat3.m00 h
  norm_num [totalLinear, totalAff, composeFaceList, totalOrder,
    sampleNonIdentityTranslationSeq, faceReflectionQ, reflM, reflD, normalQ,
    offsetQ, matSub, scalarMat, outer, matId, dot, affCompose, matMul,
    matVec, vecAdd, affId] at hx

theorem sampleNonIdentityTranslationWord_totalLinear_ne_id :
    totalLinearOfPairWord sampleNonIdentityTranslationWord ≠ (matId : Mat3 Rat) := by
  intro hWord
  have hBridge :
      totalLinear sampleNonIdentityTranslationSeq =
        totalLinearOfPairWord sampleNonIdentityTranslationWord :=
    totalLinear_eq_totalLinearOfPairWord
      sampleNonIdentityTranslationSeq_starts
      (pairWordOfSeq_matches sampleNonIdentityTranslationSeq)
  exact sampleNonIdentityTranslationSeq_totalLinear_ne_id (by
    rw [hBridge, hWord])

def tinyBadTranslationCert : TranslationCert where
  word := sampleNonIdentityTranslationWord
  signMask := ⟨0, by decide⟩
  b := { x := 0, y := 0, z := 0 }
  failure := TranslationFailure.badTranslationVector

example : checkTranslationCert tinyBadTranslationCert = true := by
  simp [checkTranslationCert, tinyBadTranslationCert,
    sampleNonIdentityTranslationWord_totalLinear_ne_id]

example :
    ¬ exists seq,
      SeqRealizesTranslationChoice tinyBadTranslationCert.word
        tinyBadTranslationCert.signMask seq /\
        totalLinear seq = (matId : Mat3 Rat) /\
        UnfoldedFeasible seq :=
  checkTranslationCert_sound tinyBadTranslationCert (by
    simp [checkTranslationCert, tinyBadTranslationCert,
      sampleNonIdentityTranslationWord_totalLinear_ne_id])

example : checkFarkas tinyContradictionConstraints tinyContradictionCert = true := by
  norm_num [checkFarkas, checkFarkasTerm, checkFarkasPositive,
    tinyContradictionConstraints, tinyContradictionCert, weightedSum,
    termLinear, constraintAt, StrictLin2.add, StrictLin2.scale, StrictLin2.zero]

#check translation_feasible_implies_constraints
#check checkTranslationCert
#check checkTranslationCert_sound

end Cuboctahedron
