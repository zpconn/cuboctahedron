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
        rw [← hRealize.linear_eq]
        exact hLinear
      exact hNonIdentity hWordLinear
  | badDirectionSign =>
      simp [checkTranslationCert, hfailure] at hcheck
  | farkas fcert =>
      simp [checkTranslationCert, hfailure] at hcheck
      have hTransFeasible :
          TranslationUnfoldedFeasible seq cert.b := {
        feasible := hFeasible
        startsXp := hRealize.startsXp
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

def faceVectorSeq (faces : Vector Face 14) : Step14 -> Face :=
  fun i => faces.get i

inductive NonIdFailure
  | badDirectionSign
  | badPairBalance
  | axisMissesStartInterior
  | badFirstHit
  | badHitInterior
deriving DecidableEq, Repr

structure NonIdCert where
  word : PairWord
  axis : Vec3 Rat
  kernel : KernelLineWitness
  forcedSeq : Vector Face 14
  p0 : Vec3 Rat
  lambda : Rat
  solve : AffineAxisSolveWitness
  failure : NonIdFailure
deriving DecidableEq, Repr

def XpStartInteriorQ (p : Vec3 Rat) : Prop :=
  p.x = 1 /\
    p.y + p.z < 1 /\
    p.y - p.z < 1 /\
    -p.y + p.z < 1 /\
    -p.y - p.z < 1

noncomputable def checkXpStartInteriorQ (p : Vec3 Rat) : Bool := by
  classical
  exact decide (XpStartInteriorQ p)

noncomputable def checkForcedSeqMatchesWord (cert : NonIdCert) : Bool := by
  classical
  exact decide (StartsXp (faceVectorSeq cert.forcedSeq) /\
    PairWordMatchesSeq cert.word (faceVectorSeq cert.forcedSeq))

noncomputable def checkNonIdCommon (cert : NonIdCert) : Bool := by
  classical
  exact decide (ValidPairWord cert.word) &&
    decide (totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat)) &&
    checkKernelLineWitness (totalLinearOfPairWord cert.word) cert.axis cert.kernel &&
    checkForcedSeqMatchesWord cert &&
    checkAffineAxisSolveWitness
      (totalAff (faceVectorSeq cert.forcedSeq))
      cert.axis cert.p0 cert.lambda cert.solve

noncomputable def checkNonIdPairBalanceFailure (cert : NonIdCert) : Bool := by
  classical
  exact decide (totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat)) &&
    decide (¬ ValidPairWord cert.word)

noncomputable def checkNonIdAxisMissesStartInteriorData (cert : NonIdCert) : Bool := by
  classical
  exact checkNonIdCommon cert && decide (¬ XpStartInteriorQ cert.p0)

noncomputable def checkNonIdCert (cert : NonIdCert) : Bool :=
  match cert.failure with
  | NonIdFailure.badPairBalance => checkNonIdPairBalanceFailure cert
  | NonIdFailure.badDirectionSign => false
  | NonIdFailure.axisMissesStartInterior => false
  | NonIdFailure.badFirstHit => false
  | NonIdFailure.badHitInterior => false

theorem checkNonIdCert_sound
    (cert : NonIdCert)
    (hcheck : checkNonIdCert cert = true) :
    ¬ exists seq,
      SeqRealizesPairWord cert.word seq /\
        StartsXp seq /\
        totalLinear seq ≠ (matId : Mat3 Rat) /\
        UnfoldedFeasible seq := by
  intro hbad
  rcases hbad with ⟨seq, hRealize, _hStart, _hLinear, _hFeasible⟩
  cases hfailure : cert.failure with
  | badPairBalance =>
      simp [checkNonIdCert, hfailure, checkNonIdPairBalanceFailure] at hcheck
      exact hcheck.2 hRealize.valid
  | badDirectionSign =>
      simp [checkNonIdCert, hfailure] at hcheck
  | axisMissesStartInterior =>
      simp [checkNonIdCert, hfailure] at hcheck
  | badFirstHit =>
      simp [checkNonIdCert, hfailure] at hcheck
  | badHitInterior =>
      simp [checkNonIdCert, hfailure] at hcheck

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

theorem sampleNonIdentityTranslationWord_not_valid :
    ¬ ValidPairWord sampleNonIdentityTranslationWord := by
  unfold sampleNonIdentityTranslationWord pairWordOfSeq ValidPairWord pairCount
  decide

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

def sampleNonIdentityFaceVector : Vector Face 14 :=
  Vector.ofFn sampleNonIdentityTranslationSeq

def tinyBadPairBalanceNonIdCert : NonIdCert where
  word := sampleNonIdentityTranslationWord
  axis := { x := 1, y := 0, z := 0 }
  kernel := { crossFactor := matId }
  forcedSeq := sampleNonIdentityFaceVector
  p0 := { x := 1, y := 0, z := 0 }
  lambda := 0
  solve := { leftInverse := mat4Id }
  failure := NonIdFailure.badPairBalance

example : checkNonIdCert tinyBadPairBalanceNonIdCert = true := by
  simp [checkNonIdCert, tinyBadPairBalanceNonIdCert,
    checkNonIdPairBalanceFailure,
    sampleNonIdentityTranslationWord_totalLinear_ne_id,
    sampleNonIdentityTranslationWord_not_valid]

example :
    ¬ exists seq,
      SeqRealizesPairWord tinyBadPairBalanceNonIdCert.word seq /\
        StartsXp seq /\
        totalLinear seq ≠ (matId : Mat3 Rat) /\
        UnfoldedFeasible seq :=
  checkNonIdCert_sound tinyBadPairBalanceNonIdCert (by
    simp [checkNonIdCert, tinyBadPairBalanceNonIdCert,
      checkNonIdPairBalanceFailure,
      sampleNonIdentityTranslationWord_totalLinear_ne_id,
      sampleNonIdentityTranslationWord_not_valid])

example : checkFarkas tinyContradictionConstraints tinyContradictionCert = true := by
  norm_num [checkFarkas, checkFarkasTerm, checkFarkasPositive,
    tinyContradictionConstraints, tinyContradictionCert, weightedSum,
    termLinear, constraintAt, StrictLin2.add, StrictLin2.scale, StrictLin2.zero]

#check translation_feasible_implies_constraints
#check checkTranslationCert
#check checkTranslationCert_sound
#check checkNonIdCert
#check checkNonIdCert_sound

end Cuboctahedron
