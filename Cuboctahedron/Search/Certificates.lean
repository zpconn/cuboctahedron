import Cuboctahedron.Search.Enumeration
import Cuboctahedron.Search.TranslationCase

/-!
Translation-case certificate wrappers.
-/

namespace Cuboctahedron

def faceVectorSeq (faces : Vector Face 14) : Step14 -> Face :=
  fun i => faces.get i

@[simp] theorem faceVectorSeq_ofFn (seq : Step14 -> Face) :
    faceVectorSeq (Vector.ofFn seq) = seq := by
  funext i
  unfold faceVectorSeq
  change (Vector.ofFn seq)[i.val] = seq i
  exact Vector.getElem_ofFn i.isLt

theorem vector_ext_from_get {α : Type} {n : Nat} (a b : Vector α n)
    (h : forall i : Fin n, a.get i = b.get i) : a = b := by
  apply Vector.ext
  intro i hi
  exact h ⟨i, hi⟩

structure BadFirstHitWitness where
  step : Step14
deriving DecidableEq, Repr

structure BadHitInteriorWitness where
  impact : Impact15
  badFace : Face
deriving DecidableEq, Repr

inductive NonIdFailure
  | noFixedAxis (witness : NoFixedVectorWitness)
  | badDirectionSign (i : WordIndex)
  | badPairBalance
  | axisMissesStartInterior
  | badFirstHit (witness : BadFirstHitWitness)
  | badHitInterior (witness : BadHitInteriorWitness)
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

theorem checkForcedSeqMatchesWord_sound
    (cert : NonIdCert)
    (hcheck : checkForcedSeqMatchesWord cert = true) :
    StartsXp (faceVectorSeq cert.forcedSeq) /\
      PairWordMatchesSeq cert.word (faceVectorSeq cert.forcedSeq) := by
  classical
  simpa [checkForcedSeqMatchesWord] using hcheck

theorem nonIdCert_forcedSeq_exact_of_signed_normals
    (cert : NonIdCert) {seq : Step14 -> Face}
    (hStart : faceVectorSeq cert.forcedSeq 0 = seq 0)
    (hNormals :
      forall i : Step14, i ≠ (0 : Step14) ->
        normalQ (faceVectorSeq cert.forcedSeq i) = normalQ (seq i)) :
    faceVectorSeq cert.forcedSeq = seq :=
  seq_eq_of_start_and_signed_normals hStart hNormals

def zeroVec3Q : Vec3 Rat :=
  { x := 0, y := 0, z := 0 }

def canonicalOffsetQ : PairId -> Rat
  | PairId.x => 1
  | PairId.y => 1
  | PairId.z => 1
  | PairId.d111 => 2
  | PairId.d11m => 2
  | PairId.d1m1 => 2
  | PairId.dm11 => 2

def pairReflectionDeltaQ (p : PairId) : Vec3 Rat :=
  reflD (canonicalNormalQ p) (canonicalOffsetQ p)

def pairPrefixLinearNat (w : PairWord) : Nat -> Mat3 Rat
  | 0 => matId
  | n + 1 =>
      if h : n < 13 then
        matMul (pairPrefixLinearNat w n)
          (reflM (canonicalNormalQ (w.get ⟨n, h⟩)))
      else
        pairPrefixLinearNat w n

@[simp] theorem dropStart_one (h : (1 : Step14) ≠ (0 : Step14)) :
    dropStart (1 : Step14) h = (0 : WordIndex) := by
  change dropStart (⟨1, by decide⟩ : Step14) h =
    (⟨0, by decide⟩ : WordIndex)
  apply Fin.ext
  simp [dropStart]

@[simp] theorem dropStart_two (h : (2 : Step14) ≠ (0 : Step14)) :
    dropStart (2 : Step14) h = (1 : WordIndex) := by
  change dropStart (⟨2, by decide⟩ : Step14) h =
    (⟨1, by decide⟩ : WordIndex)
  apply Fin.ext
  simp [dropStart]

@[simp] theorem dropStart_three (h : (3 : Step14) ≠ (0 : Step14)) :
    dropStart (3 : Step14) h = (2 : WordIndex) := by
  change dropStart (⟨3, by decide⟩ : Step14) h =
    (⟨2, by decide⟩ : WordIndex)
  apply Fin.ext
  simp [dropStart]

@[simp] theorem dropStart_four (h : (4 : Step14) ≠ (0 : Step14)) :
    dropStart (4 : Step14) h = (3 : WordIndex) := by
  change dropStart (⟨4, by decide⟩ : Step14) h =
    (⟨3, by decide⟩ : WordIndex)
  apply Fin.ext
  simp [dropStart]

@[simp] theorem dropStart_five (h : (5 : Step14) ≠ (0 : Step14)) :
    dropStart (5 : Step14) h = (4 : WordIndex) := by
  change dropStart (⟨5, by decide⟩ : Step14) h =
    (⟨4, by decide⟩ : WordIndex)
  apply Fin.ext
  simp [dropStart]

@[simp] theorem dropStart_six (h : (6 : Step14) ≠ (0 : Step14)) :
    dropStart (6 : Step14) h = (5 : WordIndex) := by
  change dropStart (⟨6, by decide⟩ : Step14) h =
    (⟨5, by decide⟩ : WordIndex)
  apply Fin.ext
  simp [dropStart]

@[simp] theorem dropStart_seven (h : (7 : Step14) ≠ (0 : Step14)) :
    dropStart (7 : Step14) h = (6 : WordIndex) := by
  change dropStart (⟨7, by decide⟩ : Step14) h =
    (⟨6, by decide⟩ : WordIndex)
  apply Fin.ext
  simp [dropStart]

@[simp] theorem dropStart_eight (h : (8 : Step14) ≠ (0 : Step14)) :
    dropStart (8 : Step14) h = (7 : WordIndex) := by
  change dropStart (⟨8, by decide⟩ : Step14) h =
    (⟨7, by decide⟩ : WordIndex)
  apply Fin.ext
  simp [dropStart]

@[simp] theorem dropStart_nine (h : (9 : Step14) ≠ (0 : Step14)) :
    dropStart (9 : Step14) h = (8 : WordIndex) := by
  change dropStart (⟨9, by decide⟩ : Step14) h =
    (⟨8, by decide⟩ : WordIndex)
  apply Fin.ext
  simp [dropStart]

@[simp] theorem dropStart_ten (h : (10 : Step14) ≠ (0 : Step14)) :
    dropStart (10 : Step14) h = (9 : WordIndex) := by
  change dropStart (⟨10, by decide⟩ : Step14) h =
    (⟨9, by decide⟩ : WordIndex)
  apply Fin.ext
  simp [dropStart]

@[simp] theorem dropStart_eleven (h : (11 : Step14) ≠ (0 : Step14)) :
    dropStart (11 : Step14) h = (10 : WordIndex) := by
  change dropStart (⟨11, by decide⟩ : Step14) h =
    (⟨10, by decide⟩ : WordIndex)
  apply Fin.ext
  simp [dropStart]

@[simp] theorem dropStart_twelve (h : (12 : Step14) ≠ (0 : Step14)) :
    dropStart (12 : Step14) h = (11 : WordIndex) := by
  change dropStart (⟨12, by decide⟩ : Step14) h =
    (⟨11, by decide⟩ : WordIndex)
  apply Fin.ext
  simp [dropStart]

@[simp] theorem dropStart_thirteen (h : (13 : Step14) ≠ (0 : Step14)) :
    dropStart (13 : Step14) h = (12 : WordIndex) := by
  change dropStart (⟨13, by decide⟩ : Step14) h =
    (⟨12, by decide⟩ : WordIndex)
  apply Fin.ext
  simp [dropStart]

@[simp] theorem pairAtStartedIndex_one (w : PairWord) :
    pairAtStartedIndex w (1 : Step14) = w.get (0 : WordIndex) := by
  change pairAtStartedIndex w (⟨1, by decide⟩ : Step14) =
    w.get ⟨0, by decide⟩
  unfold pairAtStartedIndex
  rw [dif_neg (by decide)]
  congr

@[simp] theorem pairAtStartedIndex_two (w : PairWord) :
    pairAtStartedIndex w (2 : Step14) = w.get (1 : WordIndex) := by
  change pairAtStartedIndex w (⟨2, by decide⟩ : Step14) =
    w.get ⟨1, by decide⟩
  unfold pairAtStartedIndex
  rw [dif_neg (by decide)]
  congr

@[simp] theorem pairAtStartedIndex_three (w : PairWord) :
    pairAtStartedIndex w (3 : Step14) = w.get (2 : WordIndex) := by
  change pairAtStartedIndex w (⟨3, by decide⟩ : Step14) =
    w.get ⟨2, by decide⟩
  unfold pairAtStartedIndex
  rw [dif_neg (by decide)]
  congr

@[simp] theorem pairAtStartedIndex_four (w : PairWord) :
    pairAtStartedIndex w (4 : Step14) = w.get (3 : WordIndex) := by
  change pairAtStartedIndex w (⟨4, by decide⟩ : Step14) =
    w.get ⟨3, by decide⟩
  unfold pairAtStartedIndex
  rw [dif_neg (by decide)]
  congr

@[simp] theorem pairAtStartedIndex_five (w : PairWord) :
    pairAtStartedIndex w (5 : Step14) = w.get (4 : WordIndex) := by
  change pairAtStartedIndex w (⟨5, by decide⟩ : Step14) =
    w.get ⟨4, by decide⟩
  unfold pairAtStartedIndex
  rw [dif_neg (by decide)]
  congr

@[simp] theorem pairAtStartedIndex_six (w : PairWord) :
    pairAtStartedIndex w (6 : Step14) = w.get (5 : WordIndex) := by
  change pairAtStartedIndex w (⟨6, by decide⟩ : Step14) =
    w.get ⟨5, by decide⟩
  unfold pairAtStartedIndex
  rw [dif_neg (by decide)]
  congr

@[simp] theorem pairAtStartedIndex_seven (w : PairWord) :
    pairAtStartedIndex w (7 : Step14) = w.get (6 : WordIndex) := by
  change pairAtStartedIndex w (⟨7, by decide⟩ : Step14) =
    w.get ⟨6, by decide⟩
  unfold pairAtStartedIndex
  rw [dif_neg (by decide)]
  congr

@[simp] theorem pairAtStartedIndex_eight (w : PairWord) :
    pairAtStartedIndex w (8 : Step14) = w.get (7 : WordIndex) := by
  change pairAtStartedIndex w (⟨8, by decide⟩ : Step14) =
    w.get ⟨7, by decide⟩
  unfold pairAtStartedIndex
  rw [dif_neg (by decide)]
  congr

@[simp] theorem pairAtStartedIndex_nine (w : PairWord) :
    pairAtStartedIndex w (9 : Step14) = w.get (8 : WordIndex) := by
  change pairAtStartedIndex w (⟨9, by decide⟩ : Step14) =
    w.get ⟨8, by decide⟩
  unfold pairAtStartedIndex
  rw [dif_neg (by decide)]
  congr

@[simp] theorem pairAtStartedIndex_ten (w : PairWord) :
    pairAtStartedIndex w (10 : Step14) = w.get (9 : WordIndex) := by
  change pairAtStartedIndex w (⟨10, by decide⟩ : Step14) =
    w.get ⟨9, by decide⟩
  unfold pairAtStartedIndex
  rw [dif_neg (by decide)]
  congr

@[simp] theorem pairAtStartedIndex_eleven (w : PairWord) :
    pairAtStartedIndex w (11 : Step14) = w.get (10 : WordIndex) := by
  change pairAtStartedIndex w (⟨11, by decide⟩ : Step14) =
    w.get ⟨10, by decide⟩
  unfold pairAtStartedIndex
  rw [dif_neg (by decide)]
  congr

@[simp] theorem pairAtStartedIndex_twelve (w : PairWord) :
    pairAtStartedIndex w (12 : Step14) = w.get (11 : WordIndex) := by
  change pairAtStartedIndex w (⟨12, by decide⟩ : Step14) =
    w.get ⟨11, by decide⟩
  unfold pairAtStartedIndex
  rw [dif_neg (by decide)]
  congr

@[simp] theorem pairAtStartedIndex_thirteen (w : PairWord) :
    pairAtStartedIndex w (13 : Step14) = w.get (12 : WordIndex) := by
  change pairAtStartedIndex w (⟨13, by decide⟩ : Step14) =
    w.get ⟨12, by decide⟩
  unfold pairAtStartedIndex
  rw [dif_neg (by decide)]
  congr

def pairLinearSuffixNat (w : PairWord) (start : Nat) : Nat -> Mat3 Rat
  | 0 => reflM (canonicalNormalQ PairId.x)
  | fuel + 1 =>
      if h : start < 13 then
        matMul (reflM (canonicalNormalQ (w.get ⟨start, h⟩)))
          (pairLinearSuffixNat w (start + 1) fuel)
      else
        reflM (canonicalNormalQ PairId.x)

def pairLinearProductRight (w : PairWord) : Mat3 Rat :=
  pairLinearSuffixNat w 0 13

theorem totalLinearOfPairWord_eq_pairLinearProductRight
    (w : PairWord) :
    totalLinearOfPairWord w = pairLinearProductRight w := by
  unfold totalLinearOfPairWord totalLinear totalAff totalOrder
  unfold pairLinearProductRight pairLinearSuffixNat canonicalSeqOfPairWord
  simp [pairLinearSuffixNat, composeFaceList, affCompose, faceReflectionQ,
    normalQ_faceOfPairSign_true, offsetQ, affId, matMul_matId]

noncomputable def checkNonIdCommon (cert : NonIdCert) : Bool := by
  classical
  exact decide (ValidPairWord cert.word) &&
    decide (totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat)) &&
    checkKernelLineWitness (totalLinearOfPairWord cert.word) cert.axis cert.kernel &&
    checkForcedSeqMatchesWord cert &&
    checkAffineAxisSolveWitness
      (totalAff (faceVectorSeq cert.forcedSeq))
      cert.axis cert.p0 cert.lambda cert.solve

noncomputable def checkNonIdInvalidPairWordFailure (cert : NonIdCert) : Bool := by
  classical
  exact decide (totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat)) &&
    decide (¬ ValidPairWord cert.word)

noncomputable def checkNonIdNoFixedAxisFailure
    (cert : NonIdCert) (witness : NoFixedVectorWitness) : Bool := by
  classical
  exact
    if ValidPairWord cert.word then
      if totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat) then
        checkNoFixedVectorWitness (totalLinearOfPairWord cert.word) witness
      else
        false
    else
      false

def wordImpact (i : WordIndex) : Impact15 :=
  (afterStart i).castSucc

@[simp] theorem impactFace_wordImpact
    (seq : Step14 -> Face) (i : WordIndex) :
    impactFace seq (wordImpact i) = seq (afterStart i) := by
  unfold impactFace wordImpact afterStart
  have hlt : i.val + 1 < 14 := Nat.succ_lt_succ i.isLt
  simp [hlt]

def AxisDotZeroAtWord
    (w : PairWord) (axis : Vec3 Rat) (i : WordIndex) : Prop :=
  forall f : Face,
    pairOfFace f = w.get i ->
      dot (matVec (pairPrefixLinearNat w i.val) (normalQ f)) axis = 0

def finalAxisDotQ (w : PairWord) (axis : Vec3 Rat) : Rat :=
  dot (matVec (pairPrefixLinearNat w 13) (normalQ Face.xp)) axis

def AxisForcesForcedSeq
    (w : PairWord) (axis : Vec3 Rat) (forcedSeq : Step14 -> Face) : Prop :=
  StartsXp forcedSeq /\
    PairWordMatchesSeq w forcedSeq /\
      0 < finalAxisDotQ w axis /\
        forall i : WordIndex, forall f : Face,
          pairOfFace f = w.get i ->
            0 < dot (matVec (pairPrefixLinearNat w i.val) (normalQ f)) axis ->
              normalQ (forcedSeq (afterStart i)) = normalQ f

def candidateWQ (seq : Step14 -> Face) (p0 : Vec3 Rat) : Vec3 Rat :=
  vecSub (affApply (totalAff seq) p0) p0

def candidateLinePointQ (p0 w : Vec3 Rat) (t : Rat) : Vec3 Rat :=
  vecAdd p0 (scalarMul t w)

def candidateImpactDenomQ
    (seq : Step14 -> Face) (w : Vec3 Rat) (i : Impact15) : Rat :=
  dot (impactPlaneNormalQ seq i) w

def candidateImpactTimeQ
    (seq : Step14 -> Face) (p0 w : Vec3 Rat) (i : Impact15) : Rat :=
  if i = (0 : Impact15) then
    0
  else if i = lastImpact then
    1
  else
    (impactPlaneOffsetQ seq i - dot (impactPlaneNormalQ seq i) p0) /
      candidateImpactDenomQ seq w i

def CandidateOrderingFails
    (seq : Step14 -> Face) (p0 w : Vec3 Rat)
    (witness : BadFirstHitWitness) : Prop :=
  candidateImpactTimeQ seq p0 w (nextImpact witness.step) <=
    candidateImpactTimeQ seq p0 w witness.step.castSucc

def CandidateHitInteriorFails
    (seq : Step14 -> Face) (p0 w : Vec3 Rat)
    (witness : BadHitInteriorWitness) : Prop :=
  witness.badFace ≠ impactFace seq witness.impact /\
    copiedOffsetQ seq witness.impact witness.badFace <=
      dot (copiedNormalQ seq witness.impact witness.badFace)
        (candidateLinePointQ p0 w
          (candidateImpactTimeQ seq p0 w witness.impact))

noncomputable def checkAxisDotZeroAtWord
    (w : PairWord) (axis : Vec3 Rat) (i : WordIndex) : Bool := by
  classical
  exact decide (AxisDotZeroAtWord w axis i)

noncomputable def checkAxisForcesForcedSeq (cert : NonIdCert) : Bool := by
  classical
  exact decide (AxisForcesForcedSeq cert.word cert.axis
    (faceVectorSeq cert.forcedSeq))

noncomputable def checkNonIdForcedPairBalanceFailure (cert : NonIdCert) : Bool := by
  classical
  exact decide (ValidPairWord cert.word) &&
    decide (totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat)) &&
      checkKernelLineWitness (totalLinearOfPairWord cert.word)
        cert.axis cert.kernel &&
        checkAxisForcesForcedSeq cert &&
          decide (¬ IsOmniSeq (faceVectorSeq cert.forcedSeq))

noncomputable def checkNonIdPairBalanceFailure (cert : NonIdCert) : Bool :=
  checkNonIdInvalidPairWordFailure cert ||
    checkNonIdForcedPairBalanceFailure cert

noncomputable def checkNonIdBadDirectionSignFailure
    (cert : NonIdCert) (i : WordIndex) : Bool := by
  classical
  exact decide (ValidPairWord cert.word) &&
    decide (totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat)) &&
      checkKernelLineWitness (totalLinearOfPairWord cert.word)
        cert.axis cert.kernel &&
        checkAxisDotZeroAtWord cert.word cert.axis i

noncomputable def checkNonIdAxisMissesStartInteriorData (cert : NonIdCert) : Bool := by
  classical
  exact checkNonIdCommon cert &&
    checkAxisForcesForcedSeq cert &&
      decide (¬ XpStartInteriorQ cert.p0)

noncomputable def checkNonIdBadFirstHitData
    (cert : NonIdCert) (witness : BadFirstHitWitness) : Bool := by
  classical
  let seq := faceVectorSeq cert.forcedSeq
  let w := candidateWQ seq cert.p0
  exact checkNonIdCommon cert &&
    checkAxisForcesForcedSeq cert &&
      decide (CandidateOrderingFails seq cert.p0 w witness)

noncomputable def checkNonIdBadHitInteriorData
    (cert : NonIdCert) (witness : BadHitInteriorWitness) : Bool := by
  classical
  let seq := faceVectorSeq cert.forcedSeq
  let w := candidateWQ seq cert.p0
  exact checkNonIdCommon cert &&
    checkAxisForcesForcedSeq cert &&
      decide (CandidateHitInteriorFails seq cert.p0 w witness)

noncomputable def checkNonIdCert (cert : NonIdCert) : Bool :=
  match cert.failure with
  | NonIdFailure.noFixedAxis witness =>
      checkNonIdNoFixedAxisFailure cert witness
  | NonIdFailure.badPairBalance => checkNonIdPairBalanceFailure cert
  | NonIdFailure.badDirectionSign i =>
      checkNonIdBadDirectionSignFailure cert i
  | NonIdFailure.axisMissesStartInterior =>
      checkNonIdAxisMissesStartInteriorData cert
  | NonIdFailure.badFirstHit witness =>
      checkNonIdBadFirstHitData cert witness
  | NonIdFailure.badHitInterior witness =>
      checkNonIdBadHitInteriorData cert witness

noncomputable def checkNonIdCerts (certs : Array NonIdCert) : Bool :=
  certs.toList.all checkNonIdCert

theorem checkNonIdCert_badDirectionSign
    (cert : NonIdCert) (i : WordIndex)
    (hFailure : cert.failure = NonIdFailure.badDirectionSign i)
    (hValid : ValidPairWord cert.word)
    (hNonId : totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat))
    (hKernel :
      checkKernelLineWitness (totalLinearOfPairWord cert.word)
        cert.axis cert.kernel = true)
    (hAxisZero : AxisDotZeroAtWord cert.word cert.axis i) :
    checkNonIdCert cert = true := by
  rw [checkNonIdCert, hFailure]
  simp [checkNonIdBadDirectionSignFailure, hValid, hNonId, hKernel,
    checkAxisDotZeroAtWord, hAxisZero]

theorem checkNonIdCert_noFixedAxis
    (cert : NonIdCert) (witness : NoFixedVectorWitness)
    (hFailure : cert.failure = NonIdFailure.noFixedAxis witness)
    (hValid : ValidPairWord cert.word)
    (hNonId : totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat))
    (hNoFixed :
      checkNoFixedVectorWitness (totalLinearOfPairWord cert.word)
        witness = true) :
    checkNonIdCert cert = true := by
  rw [checkNonIdCert, hFailure]
  simp [checkNonIdNoFixedAxisFailure, hValid, hNonId, hNoFixed]

theorem checkNonIdCert_badPairBalance_invalid
    (cert : NonIdCert)
    (hFailure : cert.failure = NonIdFailure.badPairBalance)
    (hNonId : totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat))
    (hInvalid : ¬ ValidPairWord cert.word) :
    checkNonIdCert cert = true := by
  rw [checkNonIdCert, hFailure]
  simp [checkNonIdPairBalanceFailure, checkNonIdInvalidPairWordFailure,
    hNonId, hInvalid]

theorem checkNonIdCert_badPairBalance_forced
    (cert : NonIdCert)
    (hFailure : cert.failure = NonIdFailure.badPairBalance)
    (hValid : ValidPairWord cert.word)
    (hNonId : totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat))
    (hKernel :
      checkKernelLineWitness (totalLinearOfPairWord cert.word)
        cert.axis cert.kernel = true)
    (hForces :
      AxisForcesForcedSeq cert.word cert.axis
        (faceVectorSeq cert.forcedSeq))
    (hNotOmni : ¬ IsOmniSeq (faceVectorSeq cert.forcedSeq)) :
    checkNonIdCert cert = true := by
  rw [checkNonIdCert, hFailure]
  simp [checkNonIdPairBalanceFailure, checkNonIdInvalidPairWordFailure,
    checkNonIdForcedPairBalanceFailure, hValid, hNonId, hKernel,
    checkAxisForcesForcedSeq, hForces, hNotOmni]

theorem checkNonIdCert_axisMissesStartInterior
    (cert : NonIdCert)
    (hFailure : cert.failure = NonIdFailure.axisMissesStartInterior)
    (hCommon : checkNonIdCommon cert = true)
    (hForces :
      AxisForcesForcedSeq cert.word cert.axis
        (faceVectorSeq cert.forcedSeq))
    (hNotInterior : ¬ XpStartInteriorQ cert.p0) :
    checkNonIdCert cert = true := by
  rw [checkNonIdCert, hFailure]
  simp [checkNonIdAxisMissesStartInteriorData, hCommon,
    checkAxisForcesForcedSeq, hForces, hNotInterior]

theorem checkNonIdCert_badFirstHit
    (cert : NonIdCert) (witness : BadFirstHitWitness)
    (hFailure : cert.failure = NonIdFailure.badFirstHit witness)
    (hCommon : checkNonIdCommon cert = true)
    (hForces :
      AxisForcesForcedSeq cert.word cert.axis
        (faceVectorSeq cert.forcedSeq))
    (hOrdering :
      CandidateOrderingFails (faceVectorSeq cert.forcedSeq) cert.p0
        (candidateWQ (faceVectorSeq cert.forcedSeq) cert.p0)
        witness) :
    checkNonIdCert cert = true := by
  rw [checkNonIdCert, hFailure]
  simp [checkNonIdBadFirstHitData, hCommon, checkAxisForcesForcedSeq,
    hForces, hOrdering]

theorem checkNonIdCert_badHitInterior
    (cert : NonIdCert) (witness : BadHitInteriorWitness)
    (hFailure : cert.failure = NonIdFailure.badHitInterior witness)
    (hCommon : checkNonIdCommon cert = true)
    (hForces :
      AxisForcesForcedSeq cert.word cert.axis
        (faceVectorSeq cert.forcedSeq))
    (hInterior :
      CandidateHitInteriorFails (faceVectorSeq cert.forcedSeq) cert.p0
        (candidateWQ (faceVectorSeq cert.forcedSeq) cert.p0)
        witness) :
    checkNonIdCert cert = true := by
  rw [checkNonIdCert, hFailure]
  simp [checkNonIdBadHitInteriorData, hCommon, checkAxisForcesForcedSeq,
    hForces, hInterior]

def pairIdsInLexOrder : List PairId :=
  [PairId.x, PairId.y, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1,
    PairId.dm11]

def pairIdLexCode : PairId -> Nat
  | PairId.x => 0
  | PairId.y => 1
  | PairId.z => 2
  | PairId.d111 => 3
  | PairId.d11m => 4
  | PairId.d1m1 => 5
  | PairId.dm11 => 6

structure PairCounts where
  x : Nat
  y : Nat
  z : Nat
  d111 : Nat
  d11m : Nat
  d1m1 : Nat
  dm11 : Nat
deriving DecidableEq, Repr

def PairCounts.initial : PairCounts where
  x := 1
  y := 2
  z := 2
  d111 := 2
  d11m := 2
  d1m1 := 2
  dm11 := 2

def PairCounts.get (counts : PairCounts) : PairId -> Nat
  | PairId.x => counts.x
  | PairId.y => counts.y
  | PairId.z => counts.z
  | PairId.d111 => counts.d111
  | PairId.d11m => counts.d11m
  | PairId.d1m1 => counts.d1m1
  | PairId.dm11 => counts.dm11

def PairCounts.decrement (counts : PairCounts) : PairId -> PairCounts
  | PairId.x => { counts with x := counts.x - 1 }
  | PairId.y => { counts with y := counts.y - 1 }
  | PairId.z => { counts with z := counts.z - 1 }
  | PairId.d111 => { counts with d111 := counts.d111 - 1 }
  | PairId.d11m => { counts with d11m := counts.d11m - 1 }
  | PairId.d1m1 => { counts with d1m1 := counts.d1m1 - 1 }
  | PairId.dm11 => { counts with dm11 := counts.dm11 - 1 }

def PairCounts.total (counts : PairCounts) : Nat :=
  counts.x + counts.y + counts.z + counts.d111 + counts.d11m +
    counts.d1m1 + counts.dm11

def pairWordLexBlockCount (counts : PairCounts) : Nat :=
  Nat.factorial counts.total /
    (Nat.factorial counts.x * Nat.factorial counts.y *
      Nat.factorial counts.z * Nat.factorial counts.d111 *
        Nat.factorial counts.d11m * Nat.factorial counts.d1m1 *
          Nat.factorial counts.dm11)

def pairWordLexRankAux
    (w : PairWord) (pos : Nat) : Nat -> PairCounts -> Nat
  | 0, _ => 0
  | fuel + 1, counts =>
      if h : pos < 13 then
        let current := w.get ⟨pos, h⟩
        let smallerCount :=
          ((pairIdsInLexOrder.filter fun p =>
              decide (pairIdLexCode p < pairIdLexCode current /\
                0 < counts.get p)).map fun p =>
                pairWordLexBlockCount (counts.decrement p)).sum
        smallerCount +
          pairWordLexRankAux w (pos + 1) fuel
            (counts.decrement current)
      else
        0

def pairWordLexRank (w : PairWord) : Nat :=
  pairWordLexRankAux w 0 13 PairCounts.initial

def pairWordLexRank? (w : PairWord) : Option (Fin numPairWords) :=
  if ValidPairWord w then
    let rank := pairWordLexRank w
    if h : rank < numPairWords then
      some ⟨rank, h⟩
    else
      none
  else
    none

structure GeneratedNonIdCertChunk where
  name : String
  coveredRanks : Array Nat
  certs : Array NonIdCert
deriving DecidableEq, Repr

def checkNonIdCoveredRank (rank : Nat) (cert : NonIdCert) :
    Bool :=
  if h : rank < numPairWords then
    decide (pairWordLexRank? cert.word = some ⟨rank, h⟩)
  else
    false

noncomputable def checkNonIdCoveredRankList :
    List Nat -> List NonIdCert -> Bool
  | [], [] => true
  | rank :: ranks, cert :: certs =>
      checkNonIdCoveredRank rank cert &&
        checkNonIdCert cert &&
          checkNonIdCoveredRankList ranks certs
  | _, _ => false

noncomputable def checkGeneratedNonIdCertChunk
    (chunk : GeneratedNonIdCertChunk) : Bool :=
  checkNonIdCoveredRankList chunk.coveredRanks.toList chunk.certs.toList

def NonIdRankCertificateCovered (rank : Nat) (cert : NonIdCert) :
    Prop :=
  checkNonIdCoveredRank rank cert = true /\
    checkNonIdCert cert = true

theorem checkNonIdCoveredRank_sound
    {rank : Nat} {cert : NonIdCert}
    (hcheck : checkNonIdCoveredRank rank cert = true) :
    exists h : rank < numPairWords,
      pairWordLexRank? cert.word = some ⟨rank, h⟩ := by
  unfold checkNonIdCoveredRank at hcheck
  by_cases hrank : rank < numPairWords
  · refine ⟨hrank, ?_⟩
    simpa [hrank] using hcheck
  · simp [hrank] at hcheck

theorem checkNonIdCoveredRankList_sound
    {ranks : List Nat} {certs : List NonIdCert}
    (hcheck : checkNonIdCoveredRankList ranks certs = true) :
    List.Forall₂ NonIdRankCertificateCovered ranks certs := by
  induction ranks generalizing certs with
  | nil =>
      cases certs with
      | nil => exact List.Forall₂.nil
      | cons cert certs =>
          simp [checkNonIdCoveredRankList] at hcheck
  | cons rank ranks ih =>
      cases certs with
      | nil =>
          simp [checkNonIdCoveredRankList] at hcheck
      | cons cert certs =>
          simp [checkNonIdCoveredRankList] at hcheck
          exact List.Forall₂.cons hcheck.1 (ih hcheck.2)

theorem checkGeneratedNonIdCertChunk_sound
    {chunk : GeneratedNonIdCertChunk}
    (hcheck : checkGeneratedNonIdCertChunk chunk = true) :
    List.Forall₂ NonIdRankCertificateCovered
      chunk.coveredRanks.toList chunk.certs.toList := by
  exact checkNonIdCoveredRankList_sound hcheck

structure GeneratedChunkMeta where
  name : String
  startRank : Nat
  endRank : Nat
  expectedItems : Nat
deriving DecidableEq, Repr

def checkChunkMeta (chunkMeta : GeneratedChunkMeta) (items : Nat) : Bool :=
  decide (chunkMeta.expectedItems = items) &&
    decide (chunkMeta.endRank = chunkMeta.startRank + items)

structure NonIdentityLinearCert where
  rank : Nat
  word : PairWord
deriving DecidableEq, Repr

noncomputable def checkNonIdentityLinearCert
    (cert : NonIdentityLinearCert) : Bool := by
  classical
  exact decide (ValidPairWord cert.word) &&
    decide (totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat))

noncomputable def checkNonIdentityLinearCerts
    (certs : Array NonIdentityLinearCert) : Bool :=
  certs.toList.all checkNonIdentityLinearCert

noncomputable def checkNonIdentityChunk
    (chunkMeta : GeneratedChunkMeta)
    (certs : Array NonIdentityLinearCert) : Bool :=
  checkChunkMeta chunkMeta certs.size && checkNonIdentityLinearCerts certs

def countPairBeforeNat (w : PairWord) (p : PairId) : Nat -> Nat
  | 0 => 0
  | n + 1 =>
      countPairBeforeNat w p n +
        if h : n < 13 then
          if w.get ⟨n, h⟩ = p then 1 else 0
        else
          0

def PairOccursNat (w : PairWord) (p : PairId) (n : Nat) : Prop :=
  exists h : n < 13, w.get ⟨n, h⟩ = p

theorem pair_occurs_of_pairCount_pos
    {w : PairWord} {p : PairId}
    (hcount : 0 < pairCount p w) :
    exists i : WordIndex, w.get i = p := by
  classical
  rw [pairCount_eq_card_get] at hcount
  rcases (Fintype.card_pos_iff.mp hcount) with ⟨i⟩
  exact ⟨i.1, i.2⟩

theorem pair_occurs_of_valid
    {w : PairWord} (hvalid : ValidPairWord w) (p : PairId) :
    exists i : WordIndex, w.get i = p := by
  apply pair_occurs_of_pairCount_pos
  cases p <;> unfold ValidPairWord at hvalid <;> omega

theorem pairOccursNat_of_pair_occurs
    {w : PairWord} {p : PairId}
    (h : exists i : WordIndex, w.get i = p) :
    exists n : Nat, PairOccursNat w p n := by
  rcases h with ⟨i, hi⟩
  exact ⟨i.val, i.isLt, hi⟩

noncomputable def firstPairIndexOf
    (w : PairWord) (p : PairId)
    (h : exists i : WordIndex, w.get i = p) : WordIndex := by
  classical
  let hn := pairOccursNat_of_pair_occurs h
  exact ⟨Nat.find hn, (Nat.find_spec hn).1⟩

theorem firstPairIndexOf_get
    (w : PairWord) (p : PairId)
    (h : exists i : WordIndex, w.get i = p) :
    w.get (firstPairIndexOf w p h) = p := by
  classical
  unfold firstPairIndexOf
  exact (Nat.find_spec (pairOccursNat_of_pair_occurs h)).2

theorem firstPairIndexOf_min
    (w : PairWord) (p : PairId)
    (h : exists i : WordIndex, w.get i = p)
    {n : Nat}
    (hn : n < (firstPairIndexOf w p h).val) :
    ¬ PairOccursNat w p n := by
  classical
  unfold firstPairIndexOf at hn
  exact Nat.find_min (pairOccursNat_of_pair_occurs h) hn

theorem countPairBeforeNat_eq_zero_of_no_pair_before
    (w : PairWord) (p : PairId) :
    forall n : Nat,
      (forall m : Nat, m < n -> ¬ PairOccursNat w p m) ->
        countPairBeforeNat w p n = 0
  | 0, _ => rfl
  | n + 1, hnone => by
      have hprev :
          countPairBeforeNat w p n = 0 :=
        countPairBeforeNat_eq_zero_of_no_pair_before w p n
          (by
            intro m hm
            exact hnone m (by omega))
      have hnot : ¬ PairOccursNat w p n := hnone n (by omega)
      unfold countPairBeforeNat
      rw [hprev]
      by_cases hn : n < 13
      · have hne : w.get ⟨n, hn⟩ ≠ p := by
          intro hget
          exact hnot ⟨hn, hget⟩
        simp [hn, hne]
      · simp [hn]

theorem countPairBeforeNat_firstPairIndexOf
    (w : PairWord) (p : PairId)
    (h : exists i : WordIndex, w.get i = p) :
    countPairBeforeNat w p (firstPairIndexOf w p h).val = 0 := by
  apply countPairBeforeNat_eq_zero_of_no_pair_before
  intro n hn
  exact firstPairIndexOf_min w p h hn

theorem countPairBeforeNat_pos_of_get_lt
    (w : PairWord) (p : PairId)
    {j n : Nat}
    (hjlt : j < n)
    (hj13 : j < 13)
    (hget : w.get ⟨j, hj13⟩ = p) :
    0 < countPairBeforeNat w p n := by
  induction n with
  | zero => omega
  | succ n ih =>
      unfold countPairBeforeNat
      by_cases hlt : j < n
      · have hpos := ih hlt
        omega
      · have hjeq : j = n := by omega
        subst n
        simp [hj13, hget]

theorem firstPairIndexOf_eq_of_count_zero
    (w : PairWord) (p : PairId)
    (h : exists i : WordIndex, w.get i = p)
    (i : WordIndex)
    (hget : w.get i = p)
    (hcount : countPairBeforeNat w p i.val = 0) :
    i = firstPairIndexOf w p h := by
  apply Fin.ext
  have hnotBefore :
      ¬ i.val < (firstPairIndexOf w p h).val := by
    intro hi
    exact firstPairIndexOf_min w p h hi ⟨i.isLt, hget⟩
  have hle : (firstPairIndexOf w p h).val <= i.val := by omega
  by_cases hlt : (firstPairIndexOf w p h).val < i.val
  · have hpos :
        0 < countPairBeforeNat w p i.val :=
      countPairBeforeNat_pos_of_get_lt w p hlt
        (firstPairIndexOf w p h).isLt
        (firstPairIndexOf_get w p h)
    omega
  · omega

theorem face_eq_of_pair_sign_eq
    {f g : Face}
    (hpair : pairOfFace f = pairOfFace g)
    (hsign : positiveSignOfFace f = positiveSignOfFace g) :
    f = g := by
  cases f <;> cases g <;>
    simp [pairOfFace, positiveSignOfFace] at hpair hsign ⊢

def maskBitForPair (mask : SignMask) : PairId -> Bool
  | PairId.x => false
  | PairId.y => decide (mask.val % 2 = 1)
  | PairId.z => decide ((mask.val / 2) % 2 = 1)
  | PairId.d111 => decide ((mask.val / 4) % 2 = 1)
  | PairId.d11m => decide ((mask.val / 8) % 2 = 1)
  | PairId.d1m1 => decide ((mask.val / 16) % 2 = 1)
  | PairId.dm11 => decide ((mask.val / 32) % 2 = 1)

def boolBitNat (b : Bool) : Nat :=
  if b then 1 else 0

def signMaskOfBits
    (y z d111 d11m d1m1 dm11 : Bool) : SignMask :=
  ⟨boolBitNat y + 2 * boolBitNat z + 4 * boolBitNat d111 +
      8 * boolBitNat d11m + 16 * boolBitNat d1m1 +
        32 * boolBitNat dm11,
    by
      cases y <;> cases z <;> cases d111 <;> cases d11m <;>
        cases d1m1 <;> cases dm11 <;> norm_num [boolBitNat, numSignMasks]⟩

@[simp] theorem maskBitForPair_signMaskOfBits_y
    (y z d111 d11m d1m1 dm11 : Bool) :
    maskBitForPair (signMaskOfBits y z d111 d11m d1m1 dm11)
      PairId.y = y := by
  cases y <;> cases z <;> cases d111 <;> cases d11m <;>
    cases d1m1 <;> cases dm11 <;> decide

@[simp] theorem maskBitForPair_signMaskOfBits_z
    (y z d111 d11m d1m1 dm11 : Bool) :
    maskBitForPair (signMaskOfBits y z d111 d11m d1m1 dm11)
      PairId.z = z := by
  cases y <;> cases z <;> cases d111 <;> cases d11m <;>
    cases d1m1 <;> cases dm11 <;> decide

@[simp] theorem maskBitForPair_signMaskOfBits_d111
    (y z d111 d11m d1m1 dm11 : Bool) :
    maskBitForPair (signMaskOfBits y z d111 d11m d1m1 dm11)
      PairId.d111 = d111 := by
  cases y <;> cases z <;> cases d111 <;> cases d11m <;>
    cases d1m1 <;> cases dm11 <;> decide

@[simp] theorem maskBitForPair_signMaskOfBits_d11m
    (y z d111 d11m d1m1 dm11 : Bool) :
    maskBitForPair (signMaskOfBits y z d111 d11m d1m1 dm11)
      PairId.d11m = d11m := by
  cases y <;> cases z <;> cases d111 <;> cases d11m <;>
    cases d1m1 <;> cases dm11 <;> decide

@[simp] theorem maskBitForPair_signMaskOfBits_d1m1
    (y z d111 d11m d1m1 dm11 : Bool) :
    maskBitForPair (signMaskOfBits y z d111 d11m d1m1 dm11)
      PairId.d1m1 = d1m1 := by
  cases y <;> cases z <;> cases d111 <;> cases d11m <;>
    cases d1m1 <;> cases dm11 <;> decide

@[simp] theorem maskBitForPair_signMaskOfBits_dm11
    (y z d111 d11m d1m1 dm11 : Bool) :
    maskBitForPair (signMaskOfBits y z d111 d11m d1m1 dm11)
      PairId.dm11 = dm11 := by
  cases y <;> cases z <;> cases d111 <;> cases d11m <;>
    cases d1m1 <;> cases dm11 <;> decide

def signedPositiveAt (w : PairWord) (mask : SignMask) (i : WordIndex) :
    Bool :=
  let p := w.get i
  match p with
  | PairId.x => false
  | _ =>
      let firstSign := maskBitForPair mask p
      if countPairBeforeNat w p i.val = 0 then firstSign else !firstSign

def signedCoeffAt (w : PairWord) (mask : SignMask) (i : WordIndex) :
    Rat :=
  if signedPositiveAt w mask i then 1 else -1

def translationChoiceSeq
    (w : PairWord) (mask : SignMask) (i : Step14) : Face :=
  if h : i = 0 then
    Face.xp
  else
    let wi := dropStart i h
    faceOfPairSign (w.get wi) (signedPositiveAt w mask wi)

def translationPrefixVectorNat
    (w : PairWord) (mask : SignMask) : Nat -> Vec3 Rat
  | 0 => zeroVec3Q
  | n + 1 =>
      if h : n < 13 then
        let i : WordIndex := ⟨n, h⟩
        let prefixM := pairPrefixLinearNat w n
        let pair := w.get i
        vecAdd (translationPrefixVectorNat w mask n)
          (scalarMul (signedCoeffAt w mask i)
            (matVec prefixM (pairReflectionDeltaQ pair)))
      else
        translationPrefixVectorNat w mask n

def translationVectorOfChoice
    (w : PairWord) (mask : SignMask) : Vec3 Rat :=
  vecAdd (translationPrefixVectorNat w mask 13)
    (matVec (pairPrefixLinearNat w 13) (pairReflectionDeltaQ PairId.x))

def TranslationSeqMatches
    (w : PairWord) (mask : SignMask) (seq : Vector Face 14) : Prop :=
  forall i : Step14, faceVectorSeq seq i = translationChoiceSeq w mask i

structure SeqRealizesTranslationChoice
    (w : PairWord) (mask : SignMask) (seq : Step14 -> Face) : Prop where
  realizes : SeqRealizesPairWord w seq
  choice_matches : forall i : Step14, seq i = translationChoiceSeq w mask i

theorem SeqRealizesTranslationChoice.linear_eq
    {w : PairWord} {mask : SignMask} {seq : Step14 -> Face}
    (h : SeqRealizesTranslationChoice w mask seq) :
    totalLinear seq = totalLinearOfPairWord w :=
  h.realizes.linear_eq

theorem translationChoiceSeq_starts
    (w : PairWord) (mask : SignMask) :
    StartsXp (translationChoiceSeq w mask) := by
  simp [StartsXp, translationChoiceSeq]

theorem translationChoiceSeq_pair_matches
    (w : PairWord) (mask : SignMask) :
    PairWordMatchesSeq w (translationChoiceSeq w mask) := by
  intro i
  simp [translationChoiceSeq, afterStart_ne_zero i]

noncomputable def firstPairPositive
    (w : PairWord) (seq : Step14 -> Face)
    (hvalid : ValidPairWord w) (p : PairId) : Bool :=
  positiveSignOfFace
    (seq (afterStart
      (firstPairIndexOf w p (pair_occurs_of_valid hvalid p))))

noncomputable def translationMaskOfSeq
    (w : PairWord) (seq : Step14 -> Face)
    (hvalid : ValidPairWord w) : SignMask :=
  signMaskOfBits
    (firstPairPositive w seq hvalid PairId.y)
    (firstPairPositive w seq hvalid PairId.z)
    (firstPairPositive w seq hvalid PairId.d111)
    (firstPairPositive w seq hvalid PairId.d11m)
    (firstPairPositive w seq hvalid PairId.d1m1)
    (firstPairPositive w seq hvalid PairId.dm11)

theorem signedPositiveAt_translationMaskOfSeq
    {w : PairWord} {seq : Step14 -> Face}
    (hRealize : SeqRealizesPairWord w seq)
    (i : WordIndex) :
    signedPositiveAt w
        (translationMaskOfSeq w seq hRealize.valid) i =
      positiveSignOfFace (seq (afterStart i)) := by
  classical
  have hsignForPair :
      forall p : PairId, p ≠ PairId.x -> w.get i = p ->
        (if countPairBeforeNat w p i.val = 0 then
            firstPairPositive w seq hRealize.valid p
          else
            ! firstPairPositive w seq hRealize.valid p) =
          positiveSignOfFace (seq (afterStart i)) := by
    intro p hpne hpget
    let first := firstPairIndexOf w p
      (pair_occurs_of_valid hRealize.valid p)
    have hfirstGet : w.get first = p := by
      simpa [first] using
        firstPairIndexOf_get w p
          (pair_occurs_of_valid hRealize.valid p)
    by_cases hcount : countPairBeforeNat w p i.val = 0
    · have hiFirst : i = first :=
        firstPairIndexOf_eq_of_count_zero w p
          (pair_occurs_of_valid hRealize.valid p) i hpget hcount
      have hfirstCount :
          countPairBeforeNat w p first.val = 0 := by
        simpa [first] using
          countPairBeforeNat_firstPairIndexOf w p
            (pair_occurs_of_valid hRealize.valid p)
      simp [firstPairPositive, first, hiFirst, hfirstCount]
    · have hfirstCount :
          countPairBeforeNat w p first.val = 0 := by
        simpa [first] using
          countPairBeforeNat_firstPairIndexOf w p
            (pair_occurs_of_valid hRealize.valid p)
      have hneIndex : i ≠ first := by
        intro hi
        rw [hi, hfirstCount] at hcount
        exact hcount rfl
      have hstepNe : afterStart i ≠ afterStart first := by
        intro hstep
        apply hneIndex
        apply Fin.ext
        have hv := congrArg Fin.val hstep
        simp [afterStart] at hv
        exact hv
      have hfacesNe :
          seq (afterStart i) ≠ seq (afterStart first) := by
        intro hfaces
        exact hstepNe (hRealize.omni.1 hfaces)
      have hpairCurrent :
          pairOfFace (seq (afterStart i)) = p := by
        rw [← hRealize.pair_matches i, hpget]
      have hpairFirst :
          pairOfFace (seq (afterStart first)) = p := by
        rw [← hRealize.pair_matches first, hfirstGet]
      have hpairSame :
          pairOfFace (seq (afterStart i)) =
            pairOfFace (seq (afterStart first)) := by
        rw [hpairCurrent, hpairFirst]
      have hsignNe :
          positiveSignOfFace (seq (afterStart i)) ≠
            positiveSignOfFace (seq (afterStart first)) := by
        intro hsign
        exact hfacesNe (face_eq_of_pair_sign_eq hpairSame hsign)
      have hsignOpp :
          positiveSignOfFace (seq (afterStart i)) =
            ! positiveSignOfFace (seq (afterStart first)) := by
        cases hc : positiveSignOfFace (seq (afterStart i)) <;>
          cases hf : positiveSignOfFace (seq (afterStart first)) <;>
          simp [hc, hf] at hsignNe ⊢
      simp [hcount, firstPairPositive, first, hsignOpp]
  cases hp : w.get i with
  | x =>
      have hpair :
          pairOfFace (seq (afterStart i)) = PairId.x := by
        rw [← hRealize.pair_matches i, hp]
      have hnotXp : seq (afterStart i) ≠ Face.xp := by
        intro hface
        have hsame : seq (afterStart i) = seq (0 : Step14) := by
          rw [hface, hRealize.startsXp]
        exact afterStart_ne_zero i (hRealize.omni.1 hsame)
      cases hseq : seq (afterStart i) <;>
        simp [signedPositiveAt, hp, positiveSignOfFace, pairOfFace, hseq]
          at hpair hnotXp ⊢
  | y =>
      simpa [signedPositiveAt, hp, translationMaskOfSeq]
        using hsignForPair PairId.y (by decide) hp
  | z =>
      simpa [signedPositiveAt, hp, translationMaskOfSeq]
        using hsignForPair PairId.z (by decide) hp
  | d111 =>
      simpa [signedPositiveAt, hp, translationMaskOfSeq]
        using hsignForPair PairId.d111 (by decide) hp
  | d11m =>
      simpa [signedPositiveAt, hp, translationMaskOfSeq]
        using hsignForPair PairId.d11m (by decide) hp
  | d1m1 =>
      simpa [signedPositiveAt, hp, translationMaskOfSeq]
        using hsignForPair PairId.d1m1 (by decide) hp
  | dm11 =>
      simpa [signedPositiveAt, hp, translationMaskOfSeq]
        using hsignForPair PairId.dm11 (by decide) hp

theorem translation_mask_exists_of_omni_seq
    {w : PairWord} {seq : Step14 -> Face}
    (hRealize : SeqRealizesPairWord w seq) :
    exists mask : SignMask, SeqRealizesTranslationChoice w mask seq := by
  classical
  let mask := translationMaskOfSeq w seq hRealize.valid
  refine ⟨mask, ⟨hRealize, ?_⟩⟩
  intro i
  by_cases hi0 : i = (0 : Step14)
  · rw [hi0]
    simpa [translationChoiceSeq, StartsXp] using hRealize.startsXp
  · let wi := dropStart i hi0
    have hafter : afterStart wi = i := by
      simp [wi]
    have hsign :
        signedPositiveAt w mask wi =
          positiveSignOfFace (seq i) := by
      simpa [mask, hafter] using
        signedPositiveAt_translationMaskOfSeq hRealize wi
    have hpair :
        w.get wi = pairOfFace (seq i) := by
      simpa [hafter] using hRealize.pair_matches wi
    calc
      seq i = faceOfPairSign (pairOfFace (seq i))
          (positiveSignOfFace (seq i)) := by
            exact (faceOfPairSign_pairOfFace_positiveSignOfFace
              (seq i)).symm
      _ = translationChoiceSeq w mask i := by
            simp [translationChoiceSeq, hi0, wi, hpair, hsign]

inductive TranslationFailure
  | badTranslationVector
  | badDirectionSign (i : Impact15)
  | farkas (cert : FarkasCert)
deriving DecidableEq, Repr

structure TranslationCert where
  word : PairWord
  signMask : SignMask
  seq : Vector Face 14
  b : Vec3 Rat
  failure : TranslationFailure
deriving DecidableEq, Repr

def TranslationCert.seqFun (cert : TranslationCert) : Step14 -> Face :=
  faceVectorSeq cert.seq

noncomputable def checkTranslationCommon (cert : TranslationCert) : Bool := by
  classical
  exact decide (ValidPairWord cert.word) &&
    decide (totalLinearOfPairWord cert.word = (matId : Mat3 Rat)) &&
    decide (TranslationSeqMatches cert.word cert.signMask cert.seq) &&
    decide ((totalAff cert.seqFun).b = cert.b)

noncomputable def checkTranslationCert (cert : TranslationCert) : Bool :=
  match cert.failure with
  | TranslationFailure.badTranslationVector =>
      checkTranslationCommon cert && decide (cert.b = zeroVec3Q)
  | TranslationFailure.badDirectionSign i =>
      checkTranslationCommon cert &&
        decide (i ≠ (0 : Impact15)) &&
          decide (i ≠ lastImpact) &&
            decide (impactDenom cert.seqFun cert.b i <= 0)
  | TranslationFailure.farkas fcert =>
      checkTranslationCommon cert &&
        checkFarkas (translationConstraints cert.seqFun cert.b) fcert

noncomputable def checkTranslationCerts (certs : Array TranslationCert) : Bool :=
  certs.toList.all checkTranslationCert

structure StartedSym where
  swapYZ : Bool
  negY : Bool
  negZ : Bool
deriving DecidableEq, Repr

def startedSymIdentity : StartedSym where
  swapYZ := false
  negY := false
  negZ := false

def allStartedSyms : List StartedSym :=
  [{ swapYZ := false, negY := false, negZ := false },
   { swapYZ := false, negY := false, negZ := true },
   { swapYZ := false, negY := true, negZ := false },
   { swapYZ := false, negY := true, negZ := true },
   { swapYZ := true, negY := false, negZ := false },
   { swapYZ := true, negY := false, negZ := true },
   { swapYZ := true, negY := true, negZ := false },
   { swapYZ := true, negY := true, negZ := true }]

def allPairIds : List PairId :=
  [PairId.x, PairId.y, PairId.z, PairId.d111, PairId.d11m,
    PairId.d1m1, PairId.dm11]

def negIf (b : Bool) (q : Rat) : Rat :=
  if b then -q else q

def symVecQ (σ : StartedSym) (v : Vec3 Rat) : Vec3 Rat :=
  if σ.swapYZ then
    { x := v.x, y := negIf σ.negY v.z, z := negIf σ.negZ v.y }
  else
    { x := v.x, y := negIf σ.negY v.y, z := negIf σ.negZ v.z }

def faceOfNormalQ (n : Vec3 Rat) : Face :=
  if n = normalQ Face.xp then Face.xp
  else if n = normalQ Face.xm then Face.xm
  else if n = normalQ Face.yp then Face.yp
  else if n = normalQ Face.ym then Face.ym
  else if n = normalQ Face.zp then Face.zp
  else if n = normalQ Face.zm then Face.zm
  else if n = normalQ Face.tmmm then Face.tmmm
  else if n = normalQ Face.tmmp then Face.tmmp
  else if n = normalQ Face.tmpm then Face.tmpm
  else if n = normalQ Face.tmpp then Face.tmpp
  else if n = normalQ Face.tpmm then Face.tpmm
  else if n = normalQ Face.tpmp then Face.tpmp
  else if n = normalQ Face.tppm then Face.tppm
  else Face.tppp

def symFace (σ : StartedSym) (f : Face) : Face :=
  faceOfNormalQ (symVecQ σ (normalQ f))

def symPair (σ : StartedSym) (p : PairId) : PairId :=
  pairOfFace (symFace σ (faceOfPairSign p true))

def transformedMaskBit
    (σ : StartedSym) (mask : SignMask) (target : PairId) : Bool :=
  if symPair σ PairId.y = target then
    positiveSignOfFace
      (symFace σ (faceOfPairSign PairId.y
        (maskBitForPair mask PairId.y)))
  else if symPair σ PairId.z = target then
    positiveSignOfFace
      (symFace σ (faceOfPairSign PairId.z
        (maskBitForPair mask PairId.z)))
  else if symPair σ PairId.d111 = target then
    positiveSignOfFace
      (symFace σ (faceOfPairSign PairId.d111
        (maskBitForPair mask PairId.d111)))
  else if symPair σ PairId.d11m = target then
    positiveSignOfFace
      (symFace σ (faceOfPairSign PairId.d11m
        (maskBitForPair mask PairId.d11m)))
  else if symPair σ PairId.d1m1 = target then
    positiveSignOfFace
      (symFace σ (faceOfPairSign PairId.d1m1
        (maskBitForPair mask PairId.d1m1)))
  else if symPair σ PairId.dm11 = target then
    positiveSignOfFace
      (symFace σ (faceOfPairSign PairId.dm11
        (maskBitForPair mask PairId.dm11)))
  else
    false

def symPairWord (σ : StartedSym) (w : PairWord) : PairWord :=
  Vector.ofFn fun i : WordIndex => symPair σ (w.get i)

def symFaceVector (σ : StartedSym) (faces : Vector Face 14) : Vector Face 14 :=
  Vector.ofFn fun i : Step14 => symFace σ (faces.get i)

def symSeq (σ : StartedSym) (seq : Step14 -> Face) : Step14 -> Face :=
  fun i => symFace σ (seq i)

def firstSignForPairFromNat
    (w : PairWord) (seq : Step14 -> Face) (p : PairId) : Nat -> Nat -> Bool
  | _k, 0 => false
  | k, fuel + 1 =>
      if h : k < 13 then
        let i : WordIndex := ⟨k, h⟩
        if w.get i = p then
          positiveSignOfFace (seq (afterStart i))
        else
          firstSignForPairFromNat w seq p (k + 1) fuel
      else
        false

def firstSignForPairComputable
    (w : PairWord) (seq : Step14 -> Face) (p : PairId) : Bool :=
  firstSignForPairFromNat w seq p 0 13

def translationMaskOfSeqComputable
    (w : PairWord) (seq : Step14 -> Face) : SignMask :=
  signMaskOfBits
    (firstSignForPairComputable w seq PairId.y)
    (firstSignForPairComputable w seq PairId.z)
    (firstSignForPairComputable w seq PairId.d111)
    (firstSignForPairComputable w seq PairId.d11m)
    (firstSignForPairComputable w seq PairId.d1m1)
    (firstSignForPairComputable w seq PairId.dm11)

def symTranslationMask
    (σ : StartedSym) (_w : PairWord) (mask : SignMask) : SignMask :=
  signMaskOfBits
    (transformedMaskBit σ mask PairId.y)
    (transformedMaskBit σ mask PairId.z)
    (transformedMaskBit σ mask PairId.d111)
    (transformedMaskBit σ mask PairId.d11m)
    (transformedMaskBit σ mask PairId.d1m1)
    (transformedMaskBit σ mask PairId.dm11)

noncomputable def checkSymPairWordValid
    (σ : StartedSym) (w : PairWord) : Bool := by
  classical
  exact decide (ValidPairWord w -> ValidPairWord (symPairWord σ w))

theorem symPairWord_valid
    (σ : StartedSym) (w : PairWord)
    (hcheck : checkSymPairWordValid σ w = true)
    (hvalid : ValidPairWord w) :
    ValidPairWord (symPairWord σ w) := by
  classical
  have hdec :
      decide (ValidPairWord w -> ValidPairWord (symPairWord σ w)) = true := by
    simpa [checkSymPairWordValid] using hcheck
  have h : ValidPairWord w -> ValidPairWord (symPairWord σ w) :=
    of_decide_eq_true hdec
  exact h hvalid

theorem symFace_xp (σ : StartedSym) :
    symFace σ Face.xp = Face.xp := by
  rcases σ with ⟨swapYZ, negY, negZ⟩
  cases swapYZ <;> cases negY <;> cases negZ <;>
    simp [symFace, symVecQ, faceOfNormalQ, negIf, normalQ]

theorem symPair_x (σ : StartedSym) :
    symPair σ PairId.x = PairId.x := by
  change pairOfFace (symFace σ Face.xp) = PairId.x
  rw [symFace_xp]
  rfl

def startedSymActionKey (σ : StartedSym) : List PairId :=
  allPairIds.map (symPair σ)

def startedSymComposeKey (σ τ : StartedSym) : List PairId :=
  allPairIds.map fun p => symPair σ (symPair τ p)

def startedSymWithActionKey? (key : List PairId) : Option StartedSym :=
  allStartedSyms.find? fun σ => startedSymActionKey σ = key

def startedSymCompose? (σ τ : StartedSym) : Option StartedSym :=
  startedSymWithActionKey? (startedSymComposeKey σ τ)

def startedSymHasInverse (σ : StartedSym) : Bool :=
  allStartedSyms.any fun τ =>
    startedSymCompose? σ τ = some startedSymIdentity &&
      startedSymCompose? τ σ = some startedSymIdentity

def checkStartedSymGroup : Bool :=
  decide (allStartedSyms.length = 8) &&
    decide (allStartedSyms.Nodup) &&
      allStartedSyms.all (fun σ =>
        decide (symFace σ Face.xp = Face.xp) &&
          decide (symPair σ PairId.x = PairId.x) &&
            startedSymHasInverse σ) &&
        allStartedSyms.all (fun σ =>
          allStartedSyms.all fun τ =>
            (startedSymCompose? σ τ).isSome)

structure StartedSymGroupChecked : Prop where
  checked : checkStartedSymGroup = true

theorem checkStartedSymGroup_sound
    (hcheck : checkStartedSymGroup = true) :
    StartedSymGroupChecked where
  checked := hcheck

theorem checkStartedSymGroup_true :
    checkStartedSymGroup = true := by
  decide

theorem allStartedSyms_complete (σ : StartedSym) :
    σ ∈ allStartedSyms := by
  rcases σ with ⟨swapYZ, negY, negZ⟩
  cases swapYZ <;> cases negY <;> cases negZ <;>
    simp [allStartedSyms]

def pairIdCode : PairId -> Nat
  | PairId.x => 0
  | PairId.y => 1
  | PairId.z => 2
  | PairId.d111 => 3
  | PairId.d11m => 4
  | PairId.d1m1 => 5
  | PairId.dm11 => 6

def pairWordCodeAt (w : PairWord) (n : Nat) : Nat :=
  if h : n < 13 then pairIdCode (w.get ⟨n, h⟩) else 0

def lexNatListLe : List Nat -> List Nat -> Bool
  | [], [] => true
  | [], _ :: _ => true
  | _ :: _, [] => false
  | x :: xs, y :: ys =>
      if x < y then true else if y < x then false else lexNatListLe xs ys

def pairWordCodeList (w : PairWord) : List Nat :=
  (List.range 13).map (pairWordCodeAt w)

def pairWordLexLe (w v : PairWord) : Bool :=
  lexNatListLe (pairWordCodeList w) (pairWordCodeList v)

def minPairWordLex (w v : PairWord) : PairWord :=
  if pairWordLexLe w v then w else v

def translationChoiceLexLe
    (a b : PairWord × SignMask) : Bool :=
  if pairWordLexLe a.1 b.1 then
    if pairWordLexLe b.1 a.1 then
      decide (a.2.val <= b.2.val)
    else
      true
  else
    false

def betterPairTransform (w : PairWord)
    (best candidate : StartedSym) : StartedSym :=
  if pairWordLexLe (symPairWord candidate w) (symPairWord best w) then
    candidate
  else
    best

def canonicalPairTransform (w : PairWord) : StartedSym :=
  allStartedSyms.foldl (betterPairTransform w) startedSymIdentity

def canonicalPairWord (w : PairWord) : PairWord :=
  symPairWord (canonicalPairTransform w) w

structure CanonicalPairWordResult where
  sym : StartedSym
  word : PairWord
deriving DecidableEq, Repr

def betterPairWordResult
    (best candidate : CanonicalPairWordResult) :
    CanonicalPairWordResult :=
  if pairWordLexLe candidate.word best.word then candidate else best

def canonicalPairWordWithTransform (w : PairWord) :
    CanonicalPairWordResult :=
  let σ := canonicalPairTransform w
  { sym := σ, word := symPairWord σ w }

def betterTranslationTransform
    (w : PairWord) (mask : SignMask)
    (best candidate : StartedSym) : StartedSym :=
  let bestChoice := (symPairWord best w, symTranslationMask best w mask)
  let candidateChoice :=
    (symPairWord candidate w, symTranslationMask candidate w mask)
  if translationChoiceLexLe candidateChoice bestChoice then
    candidate
  else
    best

def canonicalTranslationTransform
    (w : PairWord) (mask : SignMask) : StartedSym :=
  allStartedSyms.foldl (betterTranslationTransform w mask) startedSymIdentity

def canonicalTranslationChoice (w : PairWord) (mask : SignMask) :
    PairWord × SignMask :=
  let σ := canonicalTranslationTransform w mask
  (symPairWord σ w, symTranslationMask σ w mask)

structure CanonicalTranslationChoiceResult where
  sym : StartedSym
  word : PairWord
  mask : SignMask
deriving DecidableEq, Repr

def translationChoiceOfResult
    (result : CanonicalTranslationChoiceResult) : PairWord × SignMask :=
  (result.word, result.mask)

def betterTranslationChoiceResult
    (best candidate : CanonicalTranslationChoiceResult) :
    CanonicalTranslationChoiceResult :=
  if translationChoiceLexLe
      (translationChoiceOfResult candidate)
      (translationChoiceOfResult best) then
    candidate
  else
    best

def canonicalTranslationChoiceWithTransform
    (w : PairWord) (mask : SignMask) :
    CanonicalTranslationChoiceResult :=
  let σ := canonicalTranslationTransform w mask
  { sym := σ, word := symPairWord σ w,
    mask := symTranslationMask σ w mask }

noncomputable def checkSymLinearIdentityPreservation
    (σ : StartedSym) (w : PairWord) : Bool := by
  classical
  exact decide
    ((totalLinearOfPairWord (symPairWord σ w) = (matId : Mat3 Rat)) ↔
      totalLinearOfPairWord w = (matId : Mat3 Rat))

theorem sym_totalLinear_identity_iff
    (σ : StartedSym) (w : PairWord)
    (hcheck : checkSymLinearIdentityPreservation σ w = true) :
    totalLinearOfPairWord (symPairWord σ w) = (matId : Mat3 Rat) ↔
      totalLinearOfPairWord w = (matId : Mat3 Rat) := by
  classical
  simpa [checkSymLinearIdentityPreservation] using hcheck

def reverseWordIndex (i : WordIndex) : WordIndex :=
  ⟨12 - i.val, by omega⟩

def reversePairWord (w : PairWord) : PairWord :=
  Vector.ofFn fun i : WordIndex => w.get (reverseWordIndex i)

def reverseStartedSeq (seq : Step14 -> Face) : Step14 -> Face :=
  fun i =>
    if h : i.val = 0 then
      Face.xp
    else
      seq ⟨14 - i.val, by omega⟩

def reverseTranslationChoice (w : PairWord) (mask : SignMask) :
    PairWord × SignMask :=
  let w' := reversePairWord w
  (w', translationMaskOfSeqComputable w'
    (reverseStartedSeq (translationChoiceSeq w mask)))

def reversalProofTransportEnabled : Bool := false

theorem reversal_grouping_only_policy :
    reversalProofTransportEnabled = false := rfl

def proofReducingCanonicalPairWord (w : PairWord) : PairWord :=
  canonicalPairWord w

def proofReducingCanonicalTranslationChoice
    (w : PairWord) (mask : SignMask) : PairWord × SignMask :=
  canonicalTranslationChoice w mask

def symNonIdFailure (σ : StartedSym) : NonIdFailure -> NonIdFailure
  | NonIdFailure.noFixedAxis witness => NonIdFailure.noFixedAxis witness
  | NonIdFailure.badDirectionSign i => NonIdFailure.badDirectionSign i
  | NonIdFailure.badPairBalance => NonIdFailure.badPairBalance
  | NonIdFailure.axisMissesStartInterior => NonIdFailure.axisMissesStartInterior
  | NonIdFailure.badFirstHit witness => NonIdFailure.badFirstHit witness
  | NonIdFailure.badHitInterior witness =>
      NonIdFailure.badHitInterior
        { impact := witness.impact, badFace := symFace σ witness.badFace }

def symTranslationFailure (_σ : StartedSym) :
    TranslationFailure -> TranslationFailure
  | TranslationFailure.badTranslationVector => TranslationFailure.badTranslationVector
  | TranslationFailure.badDirectionSign i => TranslationFailure.badDirectionSign i
  | TranslationFailure.farkas cert => TranslationFailure.farkas cert

def transportNonIdCertShape (σ : StartedSym) (cert : NonIdCert) :
    NonIdCert where
  word := symPairWord σ cert.word
  axis := symVecQ σ cert.axis
  kernel := cert.kernel
  forcedSeq := symFaceVector σ cert.forcedSeq
  p0 := symVecQ σ cert.p0
  lambda := cert.lambda
  solve := cert.solve
  failure := symNonIdFailure σ cert.failure

def transportNonIdCertWith
    (σ : StartedSym) (cert : NonIdCert)
    (kernel : KernelLineWitness) (solve : AffineAxisSolveWitness) :
    NonIdCert where
  word := symPairWord σ cert.word
  axis := symVecQ σ cert.axis
  kernel := kernel
  forcedSeq := symFaceVector σ cert.forcedSeq
  p0 := symVecQ σ cert.p0
  lambda := cert.lambda
  solve := solve
  failure := symNonIdFailure σ cert.failure

def transportTranslationCertShape (σ : StartedSym) (cert : TranslationCert) :
    TranslationCert where
  word := symPairWord σ cert.word
  signMask := symTranslationMask σ cert.word cert.signMask
  seq := symFaceVector σ cert.seq
  b := symVecQ σ cert.b
  failure := symTranslationFailure σ cert.failure

structure CanonicalNonIdTransport where
  sym : StartedSym
  canonical : NonIdCert
  raw : NonIdCert
deriving DecidableEq, Repr

structure CanonicalTranslationTransport where
  sym : StartedSym
  canonical : TranslationCert
  raw : TranslationCert
deriving DecidableEq, Repr

noncomputable def checkCanonicalNonIdTransport
    (transport : CanonicalNonIdTransport) : Bool := by
  classical
  let transported :=
    transportNonIdCertWith transport.sym transport.canonical
      transport.raw.kernel transport.raw.solve
  exact checkNonIdCert transport.canonical &&
    checkNonIdCert transported &&
      decide (transport.raw = transported)

noncomputable def checkCanonicalTranslationTransport
    (transport : CanonicalTranslationTransport) : Bool := by
  classical
  let transported :=
    transportTranslationCertShape transport.sym transport.canonical
  exact checkTranslationCert transport.canonical &&
    checkTranslationCert transported &&
      decide (transport.raw = transported)

theorem canonical_nonidentity_failure_transport
    (transport : CanonicalNonIdTransport)
    (hcheck : checkCanonicalNonIdTransport transport = true) :
    checkNonIdCert transport.raw = true := by
  unfold checkCanonicalNonIdTransport at hcheck
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hcheck
  have htransported :
      checkNonIdCert
        (transportNonIdCertWith transport.sym transport.canonical
          transport.raw.kernel transport.raw.solve) = true := by
    tauto
  have hRawEq :
      transport.raw =
        transportNonIdCertWith transport.sym transport.canonical
          transport.raw.kernel transport.raw.solve := by
    tauto
  rw [hRawEq]
  exact htransported

theorem canonical_translation_failure_transport
    (transport : CanonicalTranslationTransport)
    (hcheck : checkCanonicalTranslationTransport transport = true) :
    checkTranslationCert transport.raw = true := by
  unfold checkCanonicalTranslationTransport at hcheck
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hcheck
  have htransported :
      checkTranslationCert
        (transportTranslationCertShape transport.sym transport.canonical) =
          true := by
    tauto
  have hRawEq :
      transport.raw =
        transportTranslationCertShape transport.sym transport.canonical := by
    tauto
  rw [hRawEq]
  exact htransported

theorem checkTranslationCert_badDirectionSign
    (cert : TranslationCert) (i : Impact15)
    (hFailure : cert.failure = TranslationFailure.badDirectionSign i)
    (hValid : ValidPairWord cert.word)
    (hLinear : totalLinearOfPairWord cert.word = (matId : Mat3 Rat))
    (hMatches : TranslationSeqMatches cert.word cert.signMask cert.seq)
    (hB : (totalAff cert.seqFun).b = cert.b)
    (hi0 : i ≠ (0 : Impact15))
    (hilast : i ≠ lastImpact)
    (hDenom : impactDenom cert.seqFun cert.b i <= 0) :
    checkTranslationCert cert = true := by
  rw [checkTranslationCert, hFailure]
  simp [checkTranslationCommon, hValid, hLinear, hMatches, hB, hi0,
    hilast, hDenom]

theorem checkTranslationCert_badTranslationVector
    (cert : TranslationCert)
    (hFailure : cert.failure = TranslationFailure.badTranslationVector)
    (hValid : ValidPairWord cert.word)
    (hLinear : totalLinearOfPairWord cert.word = (matId : Mat3 Rat))
    (hMatches : TranslationSeqMatches cert.word cert.signMask cert.seq)
    (hB : (totalAff cert.seqFun).b = cert.b)
    (hZero : cert.b = zeroVec3Q) :
    checkTranslationCert cert = true := by
  rw [checkTranslationCert, hFailure]
  simp [checkTranslationCommon, hValid, hLinear, hMatches, hB, hZero]

theorem checkTranslationCert_farkas
    (cert : TranslationCert) (fcert : FarkasCert)
    (hFailure : cert.failure = TranslationFailure.farkas fcert)
    (hValid : ValidPairWord cert.word)
    (hLinear : totalLinearOfPairWord cert.word = (matId : Mat3 Rat))
    (hMatches : TranslationSeqMatches cert.word cert.signMask cert.seq)
    (hB : (totalAff cert.seqFun).b = cert.b)
    (hFarkas :
      checkFarkas (translationConstraints cert.seqFun cert.b) fcert =
        true) :
    checkTranslationCert cert = true := by
  rw [checkTranslationCert, hFailure]
  simp [checkTranslationCommon, hValid, hLinear, hMatches, hB, hFarkas]

structure GeneratedTranslationCase where
  pairRank : Nat
  signMask : Nat
deriving DecidableEq, Repr

structure GeneratedTranslationCertChunk where
  name : String
  coveredCases : Array GeneratedTranslationCase
  certs : Array TranslationCert
deriving DecidableEq, Repr

def checkTranslationCoveredCase
    (covered : GeneratedTranslationCase) (cert : TranslationCert) : Bool :=
  if hrank : covered.pairRank < numPairWords then
    if hmask : covered.signMask < numSignMasks then
      decide (pairWordLexRank? cert.word = some ⟨covered.pairRank, hrank⟩) &&
        decide (cert.signMask = ⟨covered.signMask, hmask⟩)
    else
      false
  else
    false

noncomputable def checkTranslationCoveredCaseList :
    List GeneratedTranslationCase -> List TranslationCert -> Bool
  | [], [] => true
  | covered :: coveredCases, cert :: certs =>
      checkTranslationCoveredCase covered cert &&
        checkTranslationCert cert &&
          checkTranslationCoveredCaseList coveredCases certs
  | _, _ => false

noncomputable def checkGeneratedTranslationCertChunk
    (chunk : GeneratedTranslationCertChunk) : Bool :=
  checkTranslationCoveredCaseList chunk.coveredCases.toList chunk.certs.toList

def TranslationCaseCertificateCovered
    (covered : GeneratedTranslationCase) (cert : TranslationCert) :
    Prop :=
  checkTranslationCoveredCase covered cert = true /\
    checkTranslationCert cert = true

theorem checkTranslationCoveredCase_sound
    {covered : GeneratedTranslationCase} {cert : TranslationCert}
    (hcheck : checkTranslationCoveredCase covered cert = true) :
    (exists (hrank : covered.pairRank < numPairWords)
        (hmask : covered.signMask < numSignMasks),
      pairWordLexRank? cert.word = some ⟨covered.pairRank, hrank⟩ /\
        cert.signMask = ⟨covered.signMask, hmask⟩) := by
  unfold checkTranslationCoveredCase at hcheck
  by_cases hrank : covered.pairRank < numPairWords
  · by_cases hmask : covered.signMask < numSignMasks
    · refine ⟨hrank, hmask, ?_⟩
      have hparts :
          pairWordLexRank? cert.word =
              some ⟨covered.pairRank, hrank⟩ /\
            cert.signMask = ⟨covered.signMask, hmask⟩ := by
        simpa [hrank, hmask] using hcheck
      exact hparts
    · simp [hrank, hmask] at hcheck
  · simp [hrank] at hcheck

theorem checkTranslationCoveredCaseList_sound
    {coveredCases : List GeneratedTranslationCase}
    {certs : List TranslationCert}
    (hcheck :
      checkTranslationCoveredCaseList coveredCases certs = true) :
    List.Forall₂ TranslationCaseCertificateCovered coveredCases certs := by
  induction coveredCases generalizing certs with
  | nil =>
      cases certs with
      | nil => exact List.Forall₂.nil
      | cons cert certs =>
          simp [checkTranslationCoveredCaseList] at hcheck
  | cons covered coveredCases ih =>
      cases certs with
      | nil =>
          simp [checkTranslationCoveredCaseList] at hcheck
      | cons cert certs =>
          simp [checkTranslationCoveredCaseList] at hcheck
          exact List.Forall₂.cons hcheck.1 (ih hcheck.2)

theorem checkGeneratedTranslationCertChunk_sound
    {chunk : GeneratedTranslationCertChunk}
    (hcheck : checkGeneratedTranslationCertChunk chunk = true) :
    List.Forall₂ TranslationCaseCertificateCovered
      chunk.coveredCases.toList chunk.certs.toList := by
  exact checkTranslationCoveredCaseList_sound hcheck

def proofReducingStartedTransformIds : List Nat :=
  [0, 1, 2, 3, 4, 5, 6, 7]

def startedTransformSym : Nat -> StartedSym
  | 0 => { swapYZ := false, negY := false, negZ := false }
  | 1 => { swapYZ := false, negY := false, negZ := true }
  | 2 => { swapYZ := false, negY := true, negZ := false }
  | 3 => { swapYZ := false, negY := true, negZ := true }
  | 4 => { swapYZ := true, negY := false, negZ := false }
  | 5 => { swapYZ := true, negY := false, negZ := true }
  | 6 => { swapYZ := true, negY := true, negZ := false }
  | 7 => { swapYZ := true, negY := true, negZ := true }
  | _ => startedSymIdentity

def startedTransformSym? : Nat -> Option StartedSym
  | 0 => some (startedTransformSym 0)
  | 1 => some (startedTransformSym 1)
  | 2 => some (startedTransformSym 2)
  | 3 => some (startedTransformSym 3)
  | 4 => some (startedTransformSym 4)
  | 5 => some (startedTransformSym 5)
  | 6 => some (startedTransformSym 6)
  | 7 => some (startedTransformSym 7)
  | _ => none

def startedTransformIdOfSym (σ : StartedSym) : Nat :=
  if σ = startedTransformSym 0 then 0
  else if σ = startedTransformSym 1 then 1
  else if σ = startedTransformSym 2 then 2
  else if σ = startedTransformSym 3 then 3
  else if σ = startedTransformSym 4 then 4
  else if σ = startedTransformSym 5 then 5
  else if σ = startedTransformSym 6 then 6
  else if σ = startedTransformSym 7 then 7
  else 0

def startedSymInverse (σ : StartedSym) : StartedSym :=
  if σ.swapYZ then
    { swapYZ := true, negY := σ.negZ, negZ := σ.negY }
  else
    σ

def startedTransformValid (id : Nat) : Prop :=
  id < allStartedSyms.length

theorem startedTransformSym?_idOfSym (σ : StartedSym) :
    startedTransformSym? (startedTransformIdOfSym σ) = some σ := by
  rcases σ with ⟨swapYZ, negY, negZ⟩
  cases swapYZ <;> cases negY <;> cases negZ <;>
    decide

theorem startedTransformIdOfSym_valid (σ : StartedSym) :
    startedTransformValid (startedTransformIdOfSym σ) := by
  rcases σ with ⟨swapYZ, negY, negZ⟩
  cases swapYZ <;> cases negY <;> cases negZ <;>
    simp [startedTransformValid, startedTransformIdOfSym, startedTransformSym,
      allStartedSyms]

theorem symPair_inverse (σ : StartedSym) (p : PairId) :
    symPair (startedSymInverse σ) (symPair σ p) = p := by
  rcases σ with ⟨swapYZ, negY, negZ⟩
  cases swapYZ <;> cases negY <;> cases negZ <;> cases p <;>
    decide

theorem symPairWord_inverse (σ : StartedSym) (w : PairWord) :
    symPairWord (startedSymInverse σ) (symPairWord σ w) = w := by
  apply vector_ext_from_get
  intro i
  unfold symPairWord
  have hinner :
      (Vector.ofFn
        (fun k : WordIndex => symPair σ (w.get k))).get i =
        symPair σ (w.get i) := by
    change
      (Vector.ofFn
        (fun k : WordIndex => symPair σ (w.get k)))[i.val] =
        symPair σ (w.get i)
    exact Vector.getElem_ofFn i.isLt
  have houter :
      (Vector.ofFn
        (fun j : WordIndex =>
          symPair (startedSymInverse σ)
            ((Vector.ofFn
              (fun k : WordIndex => symPair σ (w.get k))).get j))).get i =
        symPair (startedSymInverse σ)
          ((Vector.ofFn
            (fun k : WordIndex => symPair σ (w.get k))).get i) := by
    change
      (Vector.ofFn
        (fun j : WordIndex =>
          symPair (startedSymInverse σ)
            ((Vector.ofFn
              (fun k : WordIndex => symPair σ (w.get k))).get j)))[i.val] =
        symPair (startedSymInverse σ)
          ((Vector.ofFn
            (fun k : WordIndex => symPair σ (w.get k))).get i)
    exact Vector.getElem_ofFn i.isLt
  rw [houter, hinner]
  exact symPair_inverse σ (w.get i)

theorem symTranslationMask_inverse
    (σ : StartedSym) (w : PairWord) (mask : SignMask) :
    symTranslationMask (startedSymInverse σ) (symPairWord σ w)
      (symTranslationMask σ w mask) = mask := by
  rcases σ with ⟨swapYZ, negY, negZ⟩
  cases swapYZ <;> cases negY <;> cases negZ <;>
    simp [symTranslationMask, transformedMaskBit]
  all_goals
    fin_cases mask <;> decide

structure CanonicalPairCaseId where
  rank : Nat
  word : PairWord
deriving DecidableEq, Repr

structure CanonicalTranslationCaseId where
  rank : Nat
  word : PairWord
  mask : SignMask
deriving DecidableEq, Repr

structure CanonicalPairCoverage where
  rawRank : Nat
  rawWord : PairWord
  canonical : CanonicalPairCaseId
  rawToCanonicalTransformId : Nat
  rawToCanonicalTransform : StartedSym
  canonicalToRawTransformId : Nat
  canonicalToRawTransform : StartedSym
deriving DecidableEq, Repr

structure CanonicalTranslationCoverage where
  rawRank : Nat
  rawWord : PairWord
  rawMask : SignMask
  canonical : CanonicalTranslationCaseId
  rawToCanonicalTransformId : Nat
  rawToCanonicalTransform : StartedSym
  canonicalToRawTransformId : Nat
  canonicalToRawTransform : StartedSym
deriving DecidableEq, Repr

noncomputable def canonicalPairCoverage (r : Fin numPairWords) :
    CanonicalPairCoverage :=
  let rawWord := unrankPairWord r
  let result := canonicalPairWordWithTransform rawWord
  let inverse := startedSymInverse result.sym
  {
    rawRank := r.val
    rawWord := rawWord
    canonical := {
      rank := pairWordLexRank result.word
      word := result.word
    }
    rawToCanonicalTransformId := startedTransformIdOfSym result.sym
    rawToCanonicalTransform := result.sym
    canonicalToRawTransformId := startedTransformIdOfSym inverse
    canonicalToRawTransform := inverse
  }

noncomputable def canonicalTranslationCoverage
    (r : Fin numPairWords) (mask : SignMask) :
    CanonicalTranslationCoverage :=
  let rawWord := unrankPairWord r
  let result := canonicalTranslationChoiceWithTransform rawWord mask
  let inverse := startedSymInverse result.sym
  {
    rawRank := r.val
    rawWord := rawWord
    rawMask := mask
    canonical := {
      rank := pairWordLexRank result.word
      word := result.word
      mask := result.mask
    }
    rawToCanonicalTransformId := startedTransformIdOfSym result.sym
    rawToCanonicalTransform := result.sym
    canonicalToRawTransformId := startedTransformIdOfSym inverse
    canonicalToRawTransform := inverse
  }

def checkValidPairWordBool (w : PairWord) : Bool :=
  decide (pairCount PairId.x w = 1) &&
    (decide (pairCount PairId.y w = 2) &&
      (decide (pairCount PairId.z w = 2) &&
        (decide (pairCount PairId.d111 w = 2) &&
          (decide (pairCount PairId.d11m w = 2) &&
            (decide (pairCount PairId.d1m1 w = 2) &&
              decide (pairCount PairId.dm11 w = 2))))))

def checkCanonicalPairCoverage
    (coverage : CanonicalPairCoverage) : Bool :=
  let result := canonicalPairWordWithTransform coverage.rawWord
  let inverse := startedSymInverse result.sym
  decide (coverage.rawRank < numPairWords) &&
    (checkValidPairWordBool coverage.rawWord &&
      (decide (pairWordLexRank coverage.rawWord = coverage.rawRank) &&
        (decide (coverage.canonical.rank = pairWordLexRank result.word) &&
          (decide (coverage.canonical.word = result.word) &&
            (decide
                (coverage.rawToCanonicalTransformId =
                  startedTransformIdOfSym result.sym) &&
              (decide (coverage.rawToCanonicalTransform = result.sym) &&
                (decide
                    (coverage.canonicalToRawTransformId =
                      startedTransformIdOfSym inverse) &&
                  decide
                    (coverage.canonicalToRawTransform = inverse))))))))

def checkCanonicalTranslationCoverage
    (coverage : CanonicalTranslationCoverage) : Bool :=
  let result :=
    canonicalTranslationChoiceWithTransform coverage.rawWord coverage.rawMask
  let inverse := startedSymInverse result.sym
  decide (coverage.rawRank < numPairWords) &&
    (checkValidPairWordBool coverage.rawWord &&
      (decide (pairWordLexRank coverage.rawWord = coverage.rawRank) &&
        (decide (coverage.canonical.rank = pairWordLexRank result.word) &&
          (decide (coverage.canonical.word = result.word) &&
            (decide (coverage.canonical.mask = result.mask) &&
              (decide
                  (coverage.rawToCanonicalTransformId =
                    startedTransformIdOfSym result.sym) &&
                (decide (coverage.rawToCanonicalTransform = result.sym) &&
                  (decide
                      (coverage.canonicalToRawTransformId =
                        startedTransformIdOfSym inverse) &&
                    decide
                      (coverage.canonicalToRawTransform = inverse)))))))))

theorem checkCanonicalPairCoverage_sound
    {coverage : CanonicalPairCoverage}
    (hcheck : checkCanonicalPairCoverage coverage = true) :
    checkCanonicalPairCoverage coverage = true :=
  hcheck

theorem checkCanonicalTranslationCoverage_sound
    {coverage : CanonicalTranslationCoverage}
    (hcheck : checkCanonicalTranslationCoverage coverage = true) :
    checkCanonicalTranslationCoverage coverage = true :=
  hcheck

theorem canonicalPairCoverage_unique
    {r : Fin numPairWords} {a b : CanonicalPairCoverage}
    (ha : a = canonicalPairCoverage r)
    (hb : b = canonicalPairCoverage r) :
    a = b := by
  rw [ha, hb]

theorem canonicalTranslationCoverage_unique
    {r : Fin numPairWords} {mask : SignMask}
    {a b : CanonicalTranslationCoverage}
    (ha : a = canonicalTranslationCoverage r mask)
    (hb : b = canonicalTranslationCoverage r mask) :
    a = b := by
  rw [ha, hb]

structure RankInterval where
  startRank : Nat
  endRank : Nat
deriving DecidableEq, Repr

def RankInterval.ContainsPairRank
    (interval : RankInterval) (r : Fin numPairWords) : Prop :=
  interval.startRank <= r.val /\ r.val < interval.endRank

def RankInterval.ContainsCanonicalPairCoverage
    (interval : RankInterval) (coverage : CanonicalPairCoverage) :
    Prop :=
  interval.startRank <= coverage.canonical.rank /\
    coverage.canonical.rank < interval.endRank

def checkRankIntervalContainsCanonicalPairCoverage
    (interval : RankInterval) (coverage : CanonicalPairCoverage) : Bool :=
  decide (interval.startRank <= coverage.canonical.rank) &&
    decide (coverage.canonical.rank < interval.endRank)

def checkRankInterval (interval : RankInterval) : Bool :=
  decide (interval.startRank < interval.endRank) &&
    decide (interval.endRank <= numPairWords)

structure TranslationCaseBox where
  startRank : Nat
  endRank : Nat
  startMask : Nat
  endMask : Nat
deriving DecidableEq, Repr

def TranslationCaseBox.Contains
    (box : TranslationCaseBox) (r : Fin numPairWords)
    (mask : SignMask) : Prop :=
  box.startRank <= r.val /\ r.val < box.endRank /\
    box.startMask <= mask.val /\ mask.val < box.endMask

def TranslationCaseBox.ContainsCanonicalTranslationCoverage
    (box : TranslationCaseBox)
    (coverage : CanonicalTranslationCoverage) : Prop :=
  box.startRank <= coverage.canonical.rank /\
    coverage.canonical.rank < box.endRank /\
      box.startMask <= coverage.canonical.mask.val /\
        coverage.canonical.mask.val < box.endMask

def checkTranslationCaseBoxContainsCanonicalTranslationCoverage
    (box : TranslationCaseBox)
    (coverage : CanonicalTranslationCoverage) : Bool :=
  decide (box.startRank <= coverage.canonical.rank) &&
    (decide (coverage.canonical.rank < box.endRank) &&
      (decide (box.startMask <= coverage.canonical.mask.val) &&
        decide (coverage.canonical.mask.val < box.endMask)))

def checkTranslationCaseBox (box : TranslationCaseBox) : Bool :=
  decide (box.startRank < box.endRank) &&
    (decide (box.endRank <= numPairWords) &&
      (decide (box.startMask < box.endMask) &&
        decide (box.endMask <= numSignMasks)))

inductive NonIdFamilyFailure
  | noFixedAxis
  | badDirectionSign
  | badPairBalance
  | axisMissesStartInterior
  | badFirstHit
  | badHitInterior
deriving DecidableEq, Repr

def checkNonIdFamilyFailureMatches
    (family : NonIdFamilyFailure) (cert : NonIdCert) : Bool :=
  match family, cert.failure with
  | NonIdFamilyFailure.noFixedAxis, NonIdFailure.noFixedAxis _ => true
  | NonIdFamilyFailure.badDirectionSign, NonIdFailure.badDirectionSign _ => true
  | NonIdFamilyFailure.badPairBalance, NonIdFailure.badPairBalance => true
  | NonIdFamilyFailure.axisMissesStartInterior,
      NonIdFailure.axisMissesStartInterior => true
  | NonIdFamilyFailure.badFirstHit, NonIdFailure.badFirstHit _ => true
  | NonIdFamilyFailure.badHitInterior, NonIdFailure.badHitInterior _ => true
  | _, _ => false

structure NonIdFamilyCert where
  name : String
  failure : NonIdFamilyFailure
  coverages : Array CanonicalPairCoverage
  certs : Array NonIdCert
deriving DecidableEq, Repr

noncomputable def checkNonIdFamilyEntries
    (family : NonIdFamilyFailure) (expectedStart endRank : Nat) :
    List CanonicalPairCoverage -> List NonIdCert -> Bool
  | [], [] => decide (expectedStart = endRank)
  | coverage :: coverages, cert :: certs =>
      checkCanonicalPairCoverage coverage &&
        (decide (coverage.canonical.rank = expectedStart) &&
          (checkNonIdCoveredRank coverage.rawRank cert &&
            (checkNonIdCert cert &&
              (checkNonIdFamilyFailureMatches family cert &&
                checkNonIdFamilyEntries family (expectedStart + 1)
                  endRank coverages certs))))
  | _, _ => false

noncomputable def checkNonIdFamilyCert
    (interval : RankInterval) (family : NonIdFamilyCert) : Bool :=
  checkRankInterval interval &&
    checkNonIdFamilyEntries family.failure interval.startRank
      interval.endRank family.coverages.toList family.certs.toList

theorem checkNonIdFamilyEntries_sound
    {family : NonIdFamilyFailure}
    {coverages : List CanonicalPairCoverage} {certs : List NonIdCert}
    {expectedStart endRank : Nat} {coverage : CanonicalPairCoverage}
    (hcheck :
      checkNonIdFamilyEntries family expectedStart endRank coverages certs =
        true)
    (hmem : coverage ∈ coverages) :
    exists cert : NonIdCert,
      checkNonIdCoveredRank coverage.rawRank cert = true /\
        checkNonIdCert cert = true := by
  induction coverages generalizing expectedStart certs with
  | nil =>
      simp at hmem
  | cons current coverages ih =>
      cases certs with
      | nil =>
          simp [checkNonIdFamilyEntries] at hcheck
      | cons cert certs =>
          have hparts :
              checkCanonicalPairCoverage current = true /\
                current.canonical.rank = expectedStart /\
                  checkNonIdCoveredRank current.rawRank cert = true /\
                    checkNonIdCert cert = true /\
                      checkNonIdFamilyFailureMatches family cert = true /\
                        checkNonIdFamilyEntries family (expectedStart + 1)
                          endRank coverages certs = true := by
            simpa only [checkNonIdFamilyEntries, Bool.and_eq_true,
              decide_eq_true_eq] using hcheck
          simp at hmem
          rcases hmem with hEq | hmem
          · subst coverage
            exact ⟨cert, hparts.2.2.1, hparts.2.2.2.1⟩
          · exact ih hparts.2.2.2.2.2 hmem

theorem checkNonIdFamilyCert_sound
    {interval : RankInterval} {family : NonIdFamilyCert}
    (hcheck : checkNonIdFamilyCert interval family = true)
    {coverage : CanonicalPairCoverage}
    (hmem : coverage ∈ family.coverages.toList) :
    exists cert : NonIdCert,
      checkNonIdCoveredRank coverage.rawRank cert = true /\
        checkNonIdCert cert = true := by
  simp only [checkNonIdFamilyCert, Bool.and_eq_true] at hcheck
  exact checkNonIdFamilyEntries_sound hcheck.2 hmem

inductive NonIdCoverageLeaf
  | raw (coverage : CanonicalPairCoverage) (cert : NonIdCert)
  | transported
      (coverage : CanonicalPairCoverage)
      (transport : CanonicalNonIdTransport)
  | family (family : NonIdFamilyCert)
deriving DecidableEq, Repr

def NonIdCoverageLeaf.ContainsPairCoverage
    (leaf : NonIdCoverageLeaf) (coverage : CanonicalPairCoverage) :
    Prop :=
  match leaf with
  | NonIdCoverageLeaf.raw stored _ => coverage = stored
  | NonIdCoverageLeaf.transported stored _ => coverage = stored
  | NonIdCoverageLeaf.family fam => coverage ∈ fam.coverages.toList

noncomputable def checkNonIdCoverageLeafPayload
    (interval : RankInterval) : NonIdCoverageLeaf -> Bool
  | NonIdCoverageLeaf.raw coverage cert =>
      checkCanonicalPairCoverage coverage &&
        (checkRankIntervalContainsCanonicalPairCoverage interval coverage &&
          (checkNonIdCoveredRank coverage.rawRank cert &&
            checkNonIdCert cert))
  | NonIdCoverageLeaf.transported coverage transport =>
      checkCanonicalPairCoverage coverage &&
        (checkRankIntervalContainsCanonicalPairCoverage interval coverage &&
          (checkNonIdCoveredRank coverage.rawRank transport.raw &&
            checkCanonicalNonIdTransport transport))
  | NonIdCoverageLeaf.family family =>
      checkNonIdFamilyCert interval family

noncomputable def checkNonIdCoverageLeaf
    (interval : RankInterval) (leaf : NonIdCoverageLeaf) : Bool :=
  checkRankInterval interval &&
    match leaf with
    | NonIdCoverageLeaf.raw _ _ =>
        decide (interval.endRank = interval.startRank + 1) &&
          checkNonIdCoverageLeafPayload interval leaf
    | NonIdCoverageLeaf.transported _ _ =>
        decide (interval.endRank = interval.startRank + 1) &&
          checkNonIdCoverageLeafPayload interval leaf
    | NonIdCoverageLeaf.family _ =>
        checkNonIdCoverageLeafPayload interval leaf

theorem checkNonIdCoverageLeaf_sound
    {interval : RankInterval} {leaf : NonIdCoverageLeaf}
    (hcheck : checkNonIdCoverageLeaf interval leaf = true)
    {coverage : CanonicalPairCoverage}
    (hcontains : leaf.ContainsPairCoverage coverage) :
    exists cert : NonIdCert,
      checkNonIdCoveredRank coverage.rawRank cert = true /\
        checkNonIdCert cert = true := by
  cases leaf with
  | raw stored cert =>
      simp [NonIdCoverageLeaf.ContainsPairCoverage] at hcontains
      have hparts :
          checkRankInterval interval = true /\
            interval.endRank = interval.startRank + 1 /\
              checkNonIdCoverageLeafPayload interval
                (NonIdCoverageLeaf.raw stored cert) = true := by
        simpa only [checkNonIdCoverageLeaf, Bool.and_eq_true,
          decide_eq_true_eq] using hcheck
      rcases hparts with ⟨_hInterval, _hSingleton, hPayload⟩
      subst stored
      change
        (checkCanonicalPairCoverage coverage &&
          (checkRankIntervalContainsCanonicalPairCoverage interval coverage &&
            (checkNonIdCoveredRank coverage.rawRank cert &&
              checkNonIdCert cert))) = true at hPayload
      simp only [Bool.and_eq_true] at hPayload
      exact ⟨cert, hPayload.2.2.1, hPayload.2.2.2⟩
  | transported stored transport =>
      simp [NonIdCoverageLeaf.ContainsPairCoverage] at hcontains
      have hparts :
          checkRankInterval interval = true /\
            interval.endRank = interval.startRank + 1 /\
              checkNonIdCoverageLeafPayload interval
                (NonIdCoverageLeaf.transported stored transport) = true := by
        simpa only [checkNonIdCoverageLeaf, Bool.and_eq_true,
          decide_eq_true_eq] using hcheck
      rcases hparts with ⟨_hInterval, _hSingleton, hPayload⟩
      subst stored
      change
        (checkCanonicalPairCoverage coverage &&
          (checkRankIntervalContainsCanonicalPairCoverage interval coverage &&
            (checkNonIdCoveredRank coverage.rawRank transport.raw &&
              checkCanonicalNonIdTransport transport))) = true at hPayload
      simp only [Bool.and_eq_true] at hPayload
      have hCert :=
        canonical_nonidentity_failure_transport transport hPayload.2.2.2
      exact ⟨transport.raw, hPayload.2.2.1, hCert⟩
  | family family =>
      simp [NonIdCoverageLeaf.ContainsPairCoverage] at hcontains
      have hparts :
          checkRankInterval interval = true /\
            checkNonIdCoverageLeafPayload interval
              (NonIdCoverageLeaf.family family) = true := by
        simpa only [checkNonIdCoverageLeaf, Bool.and_eq_true]
          using hcheck
      exact checkNonIdFamilyCert_sound hparts.2 (by simpa using hcontains)

inductive NonIdCoverageTree
  | leaf (interval : RankInterval) (leaf : NonIdCoverageLeaf)
  | branch (interval : RankInterval) (children : List NonIdCoverageTree)
deriving Repr

def NonIdCoverageTree.interval : NonIdCoverageTree -> RankInterval
  | NonIdCoverageTree.leaf interval _ => interval
  | NonIdCoverageTree.branch interval _ => interval

def coverageTreeFuel : Nat := 64

def NonIdCoverageTree.ContainsPairCoverageFuel :
    Nat -> NonIdCoverageTree -> CanonicalPairCoverage -> Prop
  | 0, _, _ => False
  | _fuel + 1, NonIdCoverageTree.leaf interval payload, coverage =>
      interval.ContainsCanonicalPairCoverage coverage /\
        payload.ContainsPairCoverage coverage
  | fuel + 1, NonIdCoverageTree.branch interval children, coverage =>
      interval.ContainsCanonicalPairCoverage coverage /\
        exists child : NonIdCoverageTree,
          child ∈ children /\
            NonIdCoverageTree.ContainsPairCoverageFuel fuel child coverage

def NonIdCoverageTree.ContainsPairCoverage
    (tree : NonIdCoverageTree) (coverage : CanonicalPairCoverage) :
    Prop :=
  NonIdCoverageTree.ContainsPairCoverageFuel coverageTreeFuel tree coverage

def NonIdCoverageTree.ContainsPairRank
    (tree : NonIdCoverageTree) (r : Fin numPairWords) : Prop :=
  tree.ContainsPairCoverage (canonicalPairCoverage r)

def checkNonIdCoverageChildrenWith
    (checkChild : NonIdCoverageTree -> Bool)
    (expectedStart endRank : Nat) :
    List NonIdCoverageTree -> Bool
  | [] => decide (expectedStart = endRank)
  | child :: children =>
      decide (child.interval.startRank = expectedStart) &&
        (checkChild child &&
          checkNonIdCoverageChildrenWith checkChild
            child.interval.endRank endRank children)

noncomputable def checkNonIdCoverageTreeFuel :
    Nat -> NonIdCoverageTree -> Bool
  | 0, _ => false
  | _fuel + 1, NonIdCoverageTree.leaf interval leaf =>
      checkNonIdCoverageLeaf interval leaf
  | fuel + 1, NonIdCoverageTree.branch interval children =>
      checkRankInterval interval &&
        checkNonIdCoverageChildrenWith
          (checkNonIdCoverageTreeFuel fuel)
          interval.startRank interval.endRank children

noncomputable def checkNonIdCoverageTree
    (tree : NonIdCoverageTree) : Bool :=
  checkNonIdCoverageTreeFuel coverageTreeFuel tree

theorem checkNonIdCoverageChildrenWith_route
    {checkChild : NonIdCoverageTree -> Bool}
    {children : List NonIdCoverageTree}
    {expectedStart endRank : Nat}
    {r : Fin numPairWords}
    (hcheck :
      checkNonIdCoverageChildrenWith checkChild
        expectedStart endRank children = true)
    (hstart : expectedStart <= r.val)
    (hend : r.val < endRank) :
    exists child : NonIdCoverageTree,
      child ∈ children /\
        child.interval.ContainsPairRank r /\
          checkChild child = true := by
  induction children generalizing expectedStart with
  | nil =>
      simp [checkNonIdCoverageChildrenWith] at hcheck
      omega
  | cons child children ih =>
      change
        (decide (child.interval.startRank = expectedStart) &&
          (checkChild child &&
            checkNonIdCoverageChildrenWith checkChild
              child.interval.endRank endRank children)) = true at hcheck
      cases hStartEqBool :
          decide (child.interval.startRank = expectedStart)
      · simp [hStartEqBool] at hcheck
      · simp [hStartEqBool] at hcheck
        have hStartEq : child.interval.startRank = expectedStart :=
          of_decide_eq_true hStartEqBool
        cases hChildCheck : checkChild child
        · simp [hChildCheck] at hcheck
        · simp [hChildCheck] at hcheck
          have hRest :
              checkNonIdCoverageChildrenWith checkChild child.interval.endRank
                endRank children = true := hcheck
          by_cases hrChild : r.val < child.interval.endRank
          · refine ⟨child, ?_, ?_, hChildCheck⟩
            · simp
            · unfold RankInterval.ContainsPairRank
              omega
          · rcases ih hRest (by omega) with
              ⟨found, hmem, hcover, hfoundCheck⟩
            refine ⟨found, ?_, hcover, hfoundCheck⟩
            simp [hmem]

theorem checkNonIdCoverageChildrenWith_child_checked
    {checkChild : NonIdCoverageTree -> Bool}
    {children : List NonIdCoverageTree}
    {expectedStart endRank : Nat}
    (hcheck :
      checkNonIdCoverageChildrenWith checkChild
        expectedStart endRank children = true)
    {child : NonIdCoverageTree}
    (hmem : child ∈ children) :
    checkChild child = true := by
  induction children generalizing expectedStart with
  | nil =>
      simp at hmem
  | cons current children ih =>
      have hparts :
          current.interval.startRank = expectedStart /\
            checkChild current = true /\
              checkNonIdCoverageChildrenWith checkChild
                current.interval.endRank endRank children = true := by
        simpa only [checkNonIdCoverageChildrenWith, Bool.and_eq_true,
          decide_eq_true_eq] using hcheck
      simp at hmem
      rcases hmem with hEq | hmem
      · subst child
        exact hparts.2.1
      · exact ih hparts.2.2 hmem

theorem checkNonIdCoverageTreeFuel_sound
    (fuel : Nat) (tree : NonIdCoverageTree)
    (hcheck : checkNonIdCoverageTreeFuel fuel tree = true)
    {coverage : CanonicalPairCoverage}
    (hcontains :
      NonIdCoverageTree.ContainsPairCoverageFuel fuel tree coverage) :
    exists cert : NonIdCert,
      checkNonIdCoveredRank coverage.rawRank cert = true /\
        checkNonIdCert cert = true := by
  induction fuel generalizing tree with
  | zero =>
      simp [checkNonIdCoverageTreeFuel] at hcheck
  | succ fuel ih =>
      cases tree with
      | leaf interval leaf =>
          simp [NonIdCoverageTree.ContainsPairCoverageFuel] at hcontains
          exact checkNonIdCoverageLeaf_sound hcheck hcontains.2
      | branch interval children =>
          simp [NonIdCoverageTree.ContainsPairCoverageFuel] at hcontains
          simp only [checkNonIdCoverageTreeFuel, Bool.and_eq_true] at hcheck
          rcases hcheck with ⟨_hInterval, hChildren⟩
          rcases hcontains.2 with
            ⟨child, hmem, hChildContains⟩
          have hChildCheck :=
            checkNonIdCoverageChildrenWith_child_checked hChildren hmem
          exact ih child hChildCheck hChildContains

theorem checkNonIdCoverageTree_sound
    {tree : NonIdCoverageTree}
    (hcheck : checkNonIdCoverageTree tree = true)
    {coverage : CanonicalPairCoverage}
    (hcontains : tree.ContainsPairCoverage coverage) :
    exists cert : NonIdCert,
      checkNonIdCoveredRank coverage.rawRank cert = true /\
        checkNonIdCert cert = true :=
  checkNonIdCoverageTreeFuel_sound coverageTreeFuel tree hcheck hcontains

theorem checkNonIdCoverageTree_pairRank_sound
    {tree : NonIdCoverageTree}
    (hcheck : checkNonIdCoverageTree tree = true)
    {r : Fin numPairWords}
    (hcontains : tree.ContainsPairRank r) :
    exists cert : NonIdCert,
      checkNonIdCoveredRank r.val cert = true /\
        checkNonIdCert cert = true := by
  rcases checkNonIdCoverageTree_sound hcheck hcontains with
    ⟨cert, hcovered, hcert⟩
  refine ⟨cert, ?_, hcert⟩
  simpa [NonIdCoverageTree.ContainsPairRank, canonicalPairCoverage]
    using hcovered

structure NonIdCoverageForest where
  trees : List NonIdCoverageTree
deriving Repr

def NonIdCoverageForest.ContainsPairCoverage
    (forest : NonIdCoverageForest)
    (coverage : CanonicalPairCoverage) : Prop :=
  exists tree : NonIdCoverageTree,
    tree ∈ forest.trees /\ tree.ContainsPairCoverage coverage

def NonIdCoverageForest.ContainsPairRank
    (forest : NonIdCoverageForest) (r : Fin numPairWords) : Prop :=
  forest.ContainsPairCoverage (canonicalPairCoverage r)

noncomputable def checkNonIdCoverageForest
    (forest : NonIdCoverageForest) : Bool :=
  forest.trees.all checkNonIdCoverageTree

theorem checkNonIdCoverageForest_sound
    {forest : NonIdCoverageForest}
    (hcheck : checkNonIdCoverageForest forest = true)
    {coverage : CanonicalPairCoverage}
    (hcontains : forest.ContainsPairCoverage coverage) :
    exists cert : NonIdCert,
      checkNonIdCoveredRank coverage.rawRank cert = true /\
        checkNonIdCert cert = true := by
  rcases hcontains with ⟨tree, hmem, htreeContains⟩
  have htreeCheck : checkNonIdCoverageTree tree = true := by
    unfold checkNonIdCoverageForest at hcheck
    exact List.all_eq_true.mp hcheck tree hmem
  exact checkNonIdCoverageTree_sound htreeCheck htreeContains

theorem checkNonIdCoverageForest_pairRank_sound
    {forest : NonIdCoverageForest}
    (hcheck : checkNonIdCoverageForest forest = true)
    {r : Fin numPairWords}
    (hcontains : forest.ContainsPairRank r) :
    exists cert : NonIdCert,
      checkNonIdCoveredRank r.val cert = true /\
        checkNonIdCert cert = true := by
  rcases checkNonIdCoverageForest_sound hcheck hcontains with
    ⟨cert, hcovered, hcert⟩
  refine ⟨cert, ?_, hcert⟩
  simpa [NonIdCoverageForest.ContainsPairRank, canonicalPairCoverage]
    using hcovered

inductive TranslationCoverageLeaf
  | raw (coverage : CanonicalTranslationCoverage) (cert : TranslationCert)
  | transported
      (coverage : CanonicalTranslationCoverage)
      (transport : CanonicalTranslationTransport)
deriving DecidableEq, Repr

def TranslationCoverageLeaf.ContainsTranslationCoverage
    (leaf : TranslationCoverageLeaf)
    (coverage : CanonicalTranslationCoverage) : Prop :=
  match leaf with
  | TranslationCoverageLeaf.raw stored _ => coverage = stored
  | TranslationCoverageLeaf.transported stored _ => coverage = stored

noncomputable def checkTranslationCoverageLeafPayload
    (box : TranslationCaseBox) : TranslationCoverageLeaf -> Bool
  | TranslationCoverageLeaf.raw coverage cert =>
      checkCanonicalTranslationCoverage coverage &&
        (checkTranslationCaseBoxContainsCanonicalTranslationCoverage
          box coverage &&
          (checkTranslationCoveredCase
            { pairRank := coverage.rawRank,
              signMask := coverage.rawMask.val } cert &&
            checkTranslationCert cert))
  | TranslationCoverageLeaf.transported coverage transport =>
      checkCanonicalTranslationCoverage coverage &&
        (checkTranslationCaseBoxContainsCanonicalTranslationCoverage
          box coverage &&
          (checkTranslationCoveredCase
            { pairRank := coverage.rawRank,
              signMask := coverage.rawMask.val } transport.raw &&
            checkCanonicalTranslationTransport transport))

noncomputable def checkTranslationCoverageLeaf
    (box : TranslationCaseBox) (leaf : TranslationCoverageLeaf) : Bool :=
  checkTranslationCaseBox box &&
    (decide (box.endRank = box.startRank + 1) &&
      (decide (box.endMask = box.startMask + 1) &&
        checkTranslationCoverageLeafPayload box leaf))

theorem checkTranslationCoverageLeaf_sound
    {box : TranslationCaseBox} {leaf : TranslationCoverageLeaf}
    (hcheck : checkTranslationCoverageLeaf box leaf = true)
    {coverage : CanonicalTranslationCoverage}
    (hcontains : leaf.ContainsTranslationCoverage coverage) :
    exists cert : TranslationCert,
      checkTranslationCoveredCase
          { pairRank := coverage.rawRank,
            signMask := coverage.rawMask.val } cert = true /\
        checkTranslationCert cert = true := by
  have hparts :
      checkTranslationCaseBox box = true /\
        box.endRank = box.startRank + 1 /\
          box.endMask = box.startMask + 1 /\
            checkTranslationCoverageLeafPayload box leaf = true := by
    simpa only [checkTranslationCoverageLeaf, Bool.and_eq_true,
      decide_eq_true_eq] using hcheck
  rcases hparts with
    ⟨_hBox, hRankSingleton, hMaskSingleton, hPayload⟩
  cases leaf with
  | raw stored cert =>
      simp [TranslationCoverageLeaf.ContainsTranslationCoverage] at hcontains
      subst stored
      change
        (checkCanonicalTranslationCoverage coverage &&
          (checkTranslationCaseBoxContainsCanonicalTranslationCoverage
            box coverage &&
            (checkTranslationCoveredCase
              { pairRank := coverage.rawRank,
                signMask := coverage.rawMask.val } cert &&
              checkTranslationCert cert))) = true at hPayload
      simp only [Bool.and_eq_true] at hPayload
      exact ⟨cert, hPayload.2.2.1, hPayload.2.2.2⟩
  | transported stored transport =>
      simp [TranslationCoverageLeaf.ContainsTranslationCoverage] at hcontains
      subst stored
      change
        (checkCanonicalTranslationCoverage coverage &&
          (checkTranslationCaseBoxContainsCanonicalTranslationCoverage
            box coverage &&
            (checkTranslationCoveredCase
              { pairRank := coverage.rawRank,
                signMask := coverage.rawMask.val } transport.raw &&
              checkCanonicalTranslationTransport transport))) = true at hPayload
      simp only [Bool.and_eq_true] at hPayload
      have hCert :=
        canonical_translation_failure_transport transport hPayload.2.2.2
      exact ⟨transport.raw, hPayload.2.2.1, hCert⟩

inductive TranslationCoverageTree
  | leaf (box : TranslationCaseBox) (leaf : TranslationCoverageLeaf)
  | rankBranch (box : TranslationCaseBox)
      (children : List TranslationCoverageTree)
  | maskBranch (box : TranslationCaseBox)
      (children : List TranslationCoverageTree)
deriving Repr

def TranslationCoverageTree.box : TranslationCoverageTree ->
    TranslationCaseBox
  | TranslationCoverageTree.leaf box _ => box
  | TranslationCoverageTree.rankBranch box _ => box
  | TranslationCoverageTree.maskBranch box _ => box

def TranslationCoverageTree.ContainsTranslationCoverageFuel :
    Nat -> TranslationCoverageTree -> CanonicalTranslationCoverage -> Prop
  | 0, _, _ => False
  | _fuel + 1, TranslationCoverageTree.leaf box payload, coverage =>
      box.ContainsCanonicalTranslationCoverage coverage /\
        payload.ContainsTranslationCoverage coverage
  | fuel + 1, TranslationCoverageTree.rankBranch box children, coverage =>
      box.ContainsCanonicalTranslationCoverage coverage /\
        exists child : TranslationCoverageTree,
          child ∈ children /\
            TranslationCoverageTree.ContainsTranslationCoverageFuel fuel
              child coverage
  | fuel + 1, TranslationCoverageTree.maskBranch box children, coverage =>
      box.ContainsCanonicalTranslationCoverage coverage /\
        exists child : TranslationCoverageTree,
          child ∈ children /\
            TranslationCoverageTree.ContainsTranslationCoverageFuel fuel
              child coverage

def TranslationCoverageTree.ContainsTranslationCoverage
    (tree : TranslationCoverageTree)
    (coverage : CanonicalTranslationCoverage) : Prop :=
  TranslationCoverageTree.ContainsTranslationCoverageFuel coverageTreeFuel
    tree coverage

def TranslationCoverageTree.ContainsTranslationChoice
    (tree : TranslationCoverageTree)
    (r : Fin numPairWords) (mask : SignMask) : Prop :=
  tree.ContainsTranslationCoverage (canonicalTranslationCoverage r mask)

def checkTranslationRankChildrenWith
    (checkChild : TranslationCoverageTree -> Bool)
    (parent : TranslationCaseBox)
    (expectedStart endRank : Nat) :
    List TranslationCoverageTree -> Bool
  | [] => decide (expectedStart = endRank)
  | child :: children =>
      decide (child.box.startRank = expectedStart) &&
        (decide (child.box.startMask = parent.startMask) &&
          (decide (child.box.endMask = parent.endMask) &&
            (checkChild child &&
              checkTranslationRankChildrenWith checkChild parent
                child.box.endRank endRank children)))

def checkTranslationMaskChildrenWith
    (checkChild : TranslationCoverageTree -> Bool)
    (parent : TranslationCaseBox)
    (expectedStart endMask : Nat) :
    List TranslationCoverageTree -> Bool
  | [] => decide (expectedStart = endMask)
  | child :: children =>
      decide (child.box.startMask = expectedStart) &&
        (decide (child.box.startRank = parent.startRank) &&
          (decide (child.box.endRank = parent.endRank) &&
            (checkChild child &&
              checkTranslationMaskChildrenWith checkChild parent
                child.box.endMask endMask children)))

noncomputable def checkTranslationCoverageTreeFuel :
    Nat -> TranslationCoverageTree -> Bool
  | 0, _ => false
  | _fuel + 1, TranslationCoverageTree.leaf box leaf =>
      checkTranslationCoverageLeaf box leaf
  | fuel + 1, TranslationCoverageTree.rankBranch box children =>
      checkTranslationCaseBox box &&
        checkTranslationRankChildrenWith
          (checkTranslationCoverageTreeFuel fuel)
          box box.startRank box.endRank children
  | fuel + 1, TranslationCoverageTree.maskBranch box children =>
      checkTranslationCaseBox box &&
        checkTranslationMaskChildrenWith
          (checkTranslationCoverageTreeFuel fuel)
          box box.startMask box.endMask children

noncomputable def checkTranslationCoverageTree
    (tree : TranslationCoverageTree) : Bool :=
  checkTranslationCoverageTreeFuel coverageTreeFuel tree

theorem checkTranslationRankChildrenWith_route
    {checkChild : TranslationCoverageTree -> Bool}
    {children : List TranslationCoverageTree}
    {parent : TranslationCaseBox}
    {expectedStart endRank : Nat}
    {r : Fin numPairWords} {mask : SignMask}
    (hcheck :
      checkTranslationRankChildrenWith checkChild parent
        expectedStart endRank children = true)
    (hstart : expectedStart <= r.val)
    (hend : r.val < endRank)
    (hmaskStart : parent.startMask <= mask.val)
    (hmaskEnd : mask.val < parent.endMask) :
    exists child : TranslationCoverageTree,
      child ∈ children /\
        child.box.Contains r mask /\
          checkChild child = true := by
  induction children generalizing expectedStart with
  | nil =>
      simp [checkTranslationRankChildrenWith] at hcheck
      omega
  | cons child children ih =>
      have hparts :
          child.box.startRank = expectedStart /\
            child.box.startMask = parent.startMask /\
              child.box.endMask = parent.endMask /\
                checkChild child = true /\
                  checkTranslationRankChildrenWith checkChild parent
                    child.box.endRank endRank children = true := by
        simpa only [checkTranslationRankChildrenWith, Bool.and_eq_true,
          decide_eq_true_eq] using hcheck
      rcases hparts with
        ⟨hStartEq, hMaskStartEq, hMaskEndEq, hChildCheck, hRest⟩
      by_cases hrChild : r.val < child.box.endRank
      · refine ⟨child, ?_, ?_, hChildCheck⟩
        · simp
        · unfold TranslationCaseBox.Contains
          omega
      · rcases ih hRest (by omega) with
          ⟨found, hmem, hcover, hfoundCheck⟩
        refine ⟨found, ?_, hcover, hfoundCheck⟩
        simp [hmem]

theorem checkTranslationRankChildrenWith_child_checked
    {checkChild : TranslationCoverageTree -> Bool}
    {children : List TranslationCoverageTree}
    {parent : TranslationCaseBox}
    {expectedStart endRank : Nat}
    (hcheck :
      checkTranslationRankChildrenWith checkChild parent
        expectedStart endRank children = true)
    {child : TranslationCoverageTree}
    (hmem : child ∈ children) :
    checkChild child = true := by
  induction children generalizing expectedStart with
  | nil =>
      simp at hmem
  | cons current children ih =>
      have hparts :
          current.box.startRank = expectedStart /\
            current.box.startMask = parent.startMask /\
              current.box.endMask = parent.endMask /\
                checkChild current = true /\
                  checkTranslationRankChildrenWith checkChild parent
                    current.box.endRank endRank children = true := by
        simpa only [checkTranslationRankChildrenWith, Bool.and_eq_true,
          decide_eq_true_eq] using hcheck
      simp at hmem
      rcases hmem with hEq | hmem
      · subst child
        exact hparts.2.2.2.1
      · exact ih hparts.2.2.2.2 hmem

theorem checkTranslationMaskChildrenWith_route
    {checkChild : TranslationCoverageTree -> Bool}
    {children : List TranslationCoverageTree}
    {parent : TranslationCaseBox}
    {expectedStart endMask : Nat}
    {r : Fin numPairWords} {mask : SignMask}
    (hcheck :
      checkTranslationMaskChildrenWith checkChild parent
        expectedStart endMask children = true)
    (hmaskStart : expectedStart <= mask.val)
    (hmaskEnd : mask.val < endMask)
    (hrStart : parent.startRank <= r.val)
    (hrEnd : r.val < parent.endRank) :
    exists child : TranslationCoverageTree,
      child ∈ children /\
        child.box.Contains r mask /\
          checkChild child = true := by
  induction children generalizing expectedStart with
  | nil =>
      simp [checkTranslationMaskChildrenWith] at hcheck
      omega
  | cons child children ih =>
      have hparts :
          child.box.startMask = expectedStart /\
            child.box.startRank = parent.startRank /\
              child.box.endRank = parent.endRank /\
                checkChild child = true /\
                  checkTranslationMaskChildrenWith checkChild parent
                    child.box.endMask endMask children = true := by
        simpa only [checkTranslationMaskChildrenWith, Bool.and_eq_true,
          decide_eq_true_eq] using hcheck
      rcases hparts with
        ⟨hStartEq, hRankStartEq, hRankEndEq, hChildCheck, hRest⟩
      by_cases hmaskChild : mask.val < child.box.endMask
      · refine ⟨child, ?_, ?_, hChildCheck⟩
        · simp
        · unfold TranslationCaseBox.Contains
          omega
      · rcases ih hRest (by omega) with
          ⟨found, hmem, hcover, hfoundCheck⟩
        refine ⟨found, ?_, hcover, hfoundCheck⟩
        simp [hmem]

theorem checkTranslationMaskChildrenWith_child_checked
    {checkChild : TranslationCoverageTree -> Bool}
    {children : List TranslationCoverageTree}
    {parent : TranslationCaseBox}
    {expectedStart endMask : Nat}
    (hcheck :
      checkTranslationMaskChildrenWith checkChild parent
        expectedStart endMask children = true)
    {child : TranslationCoverageTree}
    (hmem : child ∈ children) :
    checkChild child = true := by
  induction children generalizing expectedStart with
  | nil =>
      simp at hmem
  | cons current children ih =>
      have hparts :
          current.box.startMask = expectedStart /\
            current.box.startRank = parent.startRank /\
              current.box.endRank = parent.endRank /\
                checkChild current = true /\
                  checkTranslationMaskChildrenWith checkChild parent
                    current.box.endMask endMask children = true := by
        simpa only [checkTranslationMaskChildrenWith, Bool.and_eq_true,
          decide_eq_true_eq] using hcheck
      simp at hmem
      rcases hmem with hEq | hmem
      · subst child
        exact hparts.2.2.2.1
      · exact ih hparts.2.2.2.2 hmem

theorem checkTranslationCoverageTreeFuel_sound
    (fuel : Nat) (tree : TranslationCoverageTree)
    (hcheck : checkTranslationCoverageTreeFuel fuel tree = true)
    {coverage : CanonicalTranslationCoverage}
    (hcontains :
      TranslationCoverageTree.ContainsTranslationCoverageFuel
        fuel tree coverage) :
    exists cert : TranslationCert,
      checkTranslationCoveredCase
          { pairRank := coverage.rawRank,
            signMask := coverage.rawMask.val } cert = true /\
        checkTranslationCert cert = true := by
  induction fuel generalizing tree with
  | zero =>
      simp [checkTranslationCoverageTreeFuel] at hcheck
  | succ fuel ih =>
      cases tree with
      | leaf box leaf =>
          simp [TranslationCoverageTree.ContainsTranslationCoverageFuel]
            at hcontains
          exact checkTranslationCoverageLeaf_sound hcheck hcontains.2
      | rankBranch box children =>
          simp [TranslationCoverageTree.ContainsTranslationCoverageFuel]
            at hcontains
          simp only [checkTranslationCoverageTreeFuel, Bool.and_eq_true]
            at hcheck
          rcases hcheck with ⟨_hBox, hChildren⟩
          rcases hcontains.2 with
            ⟨child, hmem, hChildContains⟩
          have hChildCheck :=
            checkTranslationRankChildrenWith_child_checked hChildren hmem
          exact ih child hChildCheck hChildContains
      | maskBranch box children =>
          simp [TranslationCoverageTree.ContainsTranslationCoverageFuel]
            at hcontains
          simp only [checkTranslationCoverageTreeFuel, Bool.and_eq_true]
            at hcheck
          rcases hcheck with ⟨_hBox, hChildren⟩
          rcases hcontains.2 with
            ⟨child, hmem, hChildContains⟩
          have hChildCheck :=
            checkTranslationMaskChildrenWith_child_checked hChildren hmem
          exact ih child hChildCheck hChildContains

theorem checkTranslationCoverageTree_sound
    {tree : TranslationCoverageTree}
    (hcheck : checkTranslationCoverageTree tree = true)
    {coverage : CanonicalTranslationCoverage}
    (hcontains : tree.ContainsTranslationCoverage coverage) :
    exists cert : TranslationCert,
      checkTranslationCoveredCase
          { pairRank := coverage.rawRank,
            signMask := coverage.rawMask.val } cert = true /\
        checkTranslationCert cert = true :=
  checkTranslationCoverageTreeFuel_sound coverageTreeFuel tree hcheck
    hcontains

theorem checkTranslationCoverageTree_choice_sound
    {tree : TranslationCoverageTree}
    (hcheck : checkTranslationCoverageTree tree = true)
    {r : Fin numPairWords} {mask : SignMask}
    (hcontains : tree.ContainsTranslationChoice r mask) :
    exists cert : TranslationCert,
      checkTranslationCoveredCase
          { pairRank := r.val, signMask := mask.val } cert = true /\
        checkTranslationCert cert = true := by
  rcases checkTranslationCoverageTree_sound hcheck hcontains with
    ⟨cert, hcovered, hcert⟩
  refine ⟨cert, ?_, hcert⟩
  simpa [TranslationCoverageTree.ContainsTranslationChoice,
    canonicalTranslationCoverage] using hcovered

theorem checkTranslationCommon_valid
    (cert : TranslationCert)
    (hcheck : checkTranslationCommon cert = true) :
    ValidPairWord cert.word := by
  simp [checkTranslationCommon] at hcheck
  exact hcheck.1.1.1

theorem checkTranslationCommon_linear
    (cert : TranslationCert)
    (hcheck : checkTranslationCommon cert = true) :
    totalLinearOfPairWord cert.word = (matId : Mat3 Rat) := by
  simp [checkTranslationCommon] at hcheck
  exact hcheck.1.1.2

theorem checkTranslationCommon_matches
    (cert : TranslationCert)
    (hcheck : checkTranslationCommon cert = true) :
    TranslationSeqMatches cert.word cert.signMask cert.seq := by
  simp [checkTranslationCommon] at hcheck
  exact hcheck.1.2

theorem checkTranslationCommon_b
    (cert : TranslationCert)
    (hcheck : checkTranslationCommon cert = true) :
    (totalAff cert.seqFun).b = cert.b := by
  simp [checkTranslationCommon] at hcheck
  exact hcheck.2

theorem seq_eq_translation_cert_seq
    {cert : TranslationCert} {seq : Step14 -> Face}
    (hRealize : SeqRealizesTranslationChoice cert.word cert.signMask seq)
    (hCommon : checkTranslationCommon cert = true) :
    seq = cert.seqFun := by
  funext i
  have hcert := checkTranslationCommon_matches cert hCommon i
  rw [hRealize.choice_matches i]
  exact hcert.symm

theorem translation_unfolded_feasible_of_cert
    {cert : TranslationCert} {seq : Step14 -> Face}
    (hRealize : SeqRealizesTranslationChoice cert.word cert.signMask seq)
    (hCommon : checkTranslationCommon cert = true)
    (hFeasible : UnfoldedFeasible seq) :
    TranslationUnfoldedFeasible seq cert.b := by
  have hseq : seq = cert.seqFun :=
    seq_eq_translation_cert_seq hRealize hCommon
  refine {
    feasible := hFeasible
    startsXp := hRealize.realizes.startsXp
    linear_id := ?_
    translation_vector := ?_
  }
  · rw [hRealize.linear_eq]
    exact checkTranslationCommon_linear cert hCommon
  · rw [hseq]
    exact checkTranslationCommon_b cert hCommon

theorem checkTranslationCert_sound
    (cert : TranslationCert)
    (hcheck : checkTranslationCert cert = true) :
    ¬ exists seq,
      SeqRealizesTranslationChoice cert.word cert.signMask seq /\
        totalLinear seq = (matId : Mat3 Rat) /\
        UnfoldedFeasible seq := by
  intro hbad
  rcases hbad with ⟨seq, hRealize, _hLinear, hFeasible⟩
  cases hfailure : cert.failure with
  | badTranslationVector =>
      simp [checkTranslationCert, hfailure] at hcheck
      have hTrans :=
        translation_unfolded_feasible_of_cert hRealize hcheck.1 hFeasible
      rcases hTrans.feasible with ⟨data⟩
      have hw : data.w = vecRatToReal cert.b :=
        translation_direction_eq_of_endpoint data hTrans.linear_id
          hTrans.translation_vector
      have hbzero : cert.b = zeroVec3Q := hcheck.2
      apply data.nonzero
      rw [hw, hbzero]
      apply Vec3.ext <;> simp [vecRatToReal, zeroVec3Q, zeroVec3R]
  | badDirectionSign i =>
      simp [checkTranslationCert, hfailure] at hcheck
      rcases hcheck with ⟨⟨⟨hCommon, hi0⟩, hilast⟩, hdenNonpos⟩
      have hseq : seq = cert.seqFun :=
        seq_eq_translation_cert_seq hRealize hCommon
      have hTrans :=
        translation_unfolded_feasible_of_cert hRealize hCommon hFeasible
      have hdenPos :=
        unfolded_feasible_translation_denominators_positive hTrans i hi0 hilast
      have hdenPosCert : 0 < impactDenom cert.seqFun cert.b i := by
        simpa [hseq] using hdenPos
      exact not_le_of_gt hdenPosCert hdenNonpos
  | farkas fcert =>
      simp [checkTranslationCert, hfailure] at hcheck
      rcases hcheck with ⟨hCommon, hFarkas⟩
      have hseq : seq = cert.seqFun :=
        seq_eq_translation_cert_seq hRealize hCommon
      have hTrans :=
        translation_unfolded_feasible_of_cert hRealize hCommon hFeasible
      have hConstraints :=
        translation_feasible_implies_constraints hTrans
      have hConstraintsCert :
          exists y z : Real,
            forall L, L ∈ translationConstraints cert.seqFun cert.b ->
              L.Holds y z := by
        simpa [hseq] using hConstraints
      exact checkFarkas_sound hFarkas hConstraintsCert

structure TranslationChoiceCert where
  rank : Nat
  word : PairWord
  signMask : SignMask
  seq : Vector Face 14
  b : Vec3 Rat
deriving DecidableEq, Repr

noncomputable def checkTranslationChoiceCert
    (cert : TranslationChoiceCert) : Bool := by
  classical
  exact decide (ValidPairWord cert.word) &&
    decide (totalLinearOfPairWord cert.word = (matId : Mat3 Rat)) &&
    decide (TranslationSeqMatches cert.word cert.signMask cert.seq) &&
    decide (cert.b = translationVectorOfChoice cert.word cert.signMask)

noncomputable def checkTranslationChoiceCerts
    (certs : Array TranslationChoiceCert) : Bool :=
  certs.toList.all checkTranslationChoiceCert

noncomputable def checkTranslationChunk
    (chunkMeta : GeneratedChunkMeta)
    (certs : Array TranslationChoiceCert) : Bool :=
  checkChunkMeta chunkMeta certs.size && checkTranslationChoiceCerts certs

noncomputable def checkGeneratedChunks
    (nonIdentityMeta : GeneratedChunkMeta)
    (nonIdentityCerts : Array NonIdentityLinearCert)
    (translationMeta : GeneratedChunkMeta)
    (translationCerts : Array TranslationChoiceCert) : Bool :=
  checkNonIdentityChunk nonIdentityMeta nonIdentityCerts &&
    checkTranslationChunk translationMeta translationCerts

noncomputable def nonIdentityLinearCertOfRank
    (r : Fin numPairWords)
    (_h : totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat)) :
    NonIdentityLinearCert where
  rank := r.val
  word := unrankPairWord r

noncomputable def translationChoiceCertOfRank
    (r : Fin numPairWords)
    (mask : SignMask)
    (_h : totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat)) :
    TranslationChoiceCert where
  rank := r.val
  word := unrankPairWord r
  signMask := mask
  seq := Vector.ofFn (translationChoiceSeq (unrankPairWord r) mask)
  b := translationVectorOfChoice (unrankPairWord r) mask

theorem check_nonIdentityLinearCertOfRank
    (r : Fin numPairWords)
    (h : totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat)) :
    checkNonIdentityLinearCert (nonIdentityLinearCertOfRank r h) = true := by
  simp [checkNonIdentityLinearCert, nonIdentityLinearCertOfRank,
    unrankPairWord_valid, h]

theorem check_translationChoiceCertOfRank
    (r : Fin numPairWords)
    (mask : SignMask)
    (h : totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat)) :
    checkTranslationChoiceCert (translationChoiceCertOfRank r mask h) = true := by
  simp [checkTranslationChoiceCert, translationChoiceCertOfRank,
    unrankPairWord_valid, h, TranslationSeqMatches]

def NonIdentityLinearCertMatchesRank
    (r : Fin numPairWords) (cert : NonIdentityLinearCert) : Prop :=
  cert.rank = r.val /\ cert.word = unrankPairWord r

def TranslationChoiceCertMatchesRank
    (r : Fin numPairWords) (mask : SignMask)
    (cert : TranslationChoiceCert) : Prop :=
  cert.rank = r.val /\
    cert.word = unrankPairWord r /\
      cert.signMask = mask

theorem nonIdentityLinearCertOfRank_matches
    (r : Fin numPairWords)
    (h : totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat)) :
    NonIdentityLinearCertMatchesRank r (nonIdentityLinearCertOfRank r h) := by
  simp [NonIdentityLinearCertMatchesRank, nonIdentityLinearCertOfRank]

theorem translationChoiceCertOfRank_matches
    (r : Fin numPairWords)
    (mask : SignMask)
    (h : totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat)) :
    TranslationChoiceCertMatchesRank r mask
      (translationChoiceCertOfRank r mask h) := by
  simp [TranslationChoiceCertMatchesRank, translationChoiceCertOfRank]

theorem checkNonIdentityLinearCert_valid
    (cert : NonIdentityLinearCert)
    (hcheck : checkNonIdentityLinearCert cert = true) :
    ValidPairWord cert.word := by
  simp [checkNonIdentityLinearCert] at hcheck
  exact hcheck.1

theorem checkNonIdentityLinearCerts_valid
    {certs : Array NonIdentityLinearCert}
    (hcheck : checkNonIdentityLinearCerts certs = true) :
    forall cert, cert ∈ certs.toList -> ValidPairWord cert.word := by
  have hindex :
      forall (i : Nat) (h : i < certs.size),
        checkNonIdentityLinearCert certs[i] = true := by
    simpa [checkNonIdentityLinearCerts, List.all_eq_true] using hcheck
  intro cert hmem
  have hArray : cert ∈ certs := by
    simpa [Array.mem_toList_iff] using hmem
  rcases (Array.mem_iff_getElem.mp hArray) with ⟨i, hi, hget⟩
  exact checkNonIdentityLinearCert_valid cert (by
    simpa [hget] using hindex i hi)

theorem checkTranslationChoiceCert_valid
    (cert : TranslationChoiceCert)
    (hcheck : checkTranslationChoiceCert cert = true) :
    ValidPairWord cert.word := by
  simp [checkTranslationChoiceCert] at hcheck
  exact hcheck.1.1.1

theorem checkTranslationChoiceCerts_valid
    {certs : Array TranslationChoiceCert}
    (hcheck : checkTranslationChoiceCerts certs = true) :
    forall cert, cert ∈ certs.toList -> ValidPairWord cert.word := by
  have hindex :
      forall (i : Nat) (h : i < certs.size),
        checkTranslationChoiceCert certs[i] = true := by
    simpa [checkTranslationChoiceCerts, List.all_eq_true] using hcheck
  intro cert hmem
  have hArray : cert ∈ certs := by
    simpa [Array.mem_toList_iff] using hmem
  rcases (Array.mem_iff_getElem.mp hArray) with ⟨i, hi, hget⟩
  exact checkTranslationChoiceCert_valid cert (by
    simpa [hget] using hindex i hi)

theorem checkNonIdentityChunk_certs
    {chunkMeta : GeneratedChunkMeta}
    {certs : Array NonIdentityLinearCert}
    (hcheck : checkNonIdentityChunk chunkMeta certs = true) :
    checkNonIdentityLinearCerts certs = true := by
  simp [checkNonIdentityChunk] at hcheck
  exact hcheck.2

theorem checkTranslationChunk_certs
    {chunkMeta : GeneratedChunkMeta}
    {certs : Array TranslationChoiceCert}
    (hcheck : checkTranslationChunk chunkMeta certs = true) :
    checkTranslationChoiceCerts certs = true := by
  simp [checkTranslationChunk] at hcheck
  exact hcheck.2

def NonIdentityCertHasRank (cert : NonIdentityLinearCert) : Prop :=
  exists r : Fin numPairWords, rankPairWord? cert.word = some r

def TranslationChoiceCertHasRank (cert : TranslationChoiceCert) : Prop :=
  (exists r : Fin numPairWords, rankPairWord? cert.word = some r) /\
    rankSignMask cert.signMask = cert.signMask

theorem NonIdentityCertHasRank.of_valid
    {cert : NonIdentityLinearCert}
    (hvalid : ValidPairWord cert.word) :
    NonIdentityCertHasRank cert :=
  rankPairWord?_some_of_valid hvalid

theorem TranslationChoiceCertHasRank.of_valid
    {cert : TranslationChoiceCert}
    (hvalid : ValidPairWord cert.word) :
    TranslationChoiceCertHasRank cert := by
  exact ⟨rankPairWord?_some_of_valid hvalid, rfl⟩

structure GeneratedCoverage
    (nonIdentityCerts : Array NonIdentityLinearCert)
    (translationCerts : Array TranslationChoiceCert) : Prop where
  nonidentity_ranked :
    forall cert, cert ∈ nonIdentityCerts.toList ->
      NonIdentityCertHasRank cert
  translation_ranked :
    forall cert, cert ∈ translationCerts.toList ->
      TranslationChoiceCertHasRank cert

structure CoverageChunk where
  startRank : Nat
  endRank : Nat
  expectedItems : Nat
deriving DecidableEq, Repr

def CoverageChunk.CoversPairRank
    (chunk : CoverageChunk) (r : Fin numPairWords) : Prop :=
  chunk.startRank <= r.val /\ r.val < chunk.endRank

structure ExhaustiveGeneratedCoverage : Prop where
  pair_rank_covered :
    forall r : Fin numPairWords,
      exists chunk : CoverageChunk, CoverageChunk.CoversPairRank chunk r
  sign_mask_covered :
    forall mask : SignMask, mask.val < numSignMasks
  nonidentity_complete :
    forall r : Fin numPairWords,
      totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat) ->
        exists cert : NonIdCert,
          cert.word = unrankPairWord r /\
            checkNonIdCert cert = true
  translation_complete :
    forall (r : Fin numPairWords) (mask : SignMask),
      totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) ->
        exists cert : TranslationCert,
          cert.word = unrankPairWord r /\
            cert.signMask = mask /\
              checkTranslationCert cert = true

theorem ExhaustiveGeneratedCoverage.nonidentity_failure_of_valid
    (coverage : ExhaustiveGeneratedCoverage)
    (w : PairWord)
    (hvalid : ValidPairWord w)
    (hM : totalLinearOfPairWord w ≠ (matId : Mat3 Rat)) :
    exists cert : NonIdCert,
      cert.word = w /\ checkNonIdCert cert = true := by
  rcases unrank_rank_pairword w hvalid with ⟨r, hr⟩
  have hM' :
      totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat) := by
    simpa [hr] using hM
  rcases coverage.nonidentity_complete r hM' with
    ⟨cert, hword, hcheck⟩
  exact ⟨cert, by simpa [hr] using hword, hcheck⟩

theorem ExhaustiveGeneratedCoverage.translation_failure_of_valid
    (coverage : ExhaustiveGeneratedCoverage)
    (w : PairWord)
    (mask : SignMask)
    (hvalid : ValidPairWord w)
    (hM : totalLinearOfPairWord w = (matId : Mat3 Rat)) :
    exists cert : TranslationCert,
      cert.word = w /\ cert.signMask = mask /\
        checkTranslationCert cert = true := by
  rcases unrank_rank_pairword w hvalid with ⟨r, hr⟩
  have hM' :
      totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) := by
    simpa [hr] using hM
  rcases coverage.translation_complete r mask hM' with
    ⟨cert, hword, hmask, hcheck⟩
  exact ⟨cert, by simpa [hr] using hword, hmask, hcheck⟩

structure CoverageManifest where
  chunks : List CoverageChunk
  signMaskCount : Nat
deriving DecidableEq, Repr

def checkCoverageChunkAt (expectedStart : Nat) (chunk : CoverageChunk) :
    Bool :=
  decide (chunk.startRank = expectedStart) &&
    decide (chunk.startRank < chunk.endRank) &&
      decide (chunk.expectedItems = chunk.endRank - chunk.startRank)

def checkedChunkEndFrom : Nat -> List CoverageChunk -> Option Nat
  | start, [] => some start
  | start, chunk :: chunks =>
      if checkCoverageChunkAt start chunk then
        checkedChunkEndFrom chunk.endRank chunks
      else
        none

def checkCoverageManifest (manifest : CoverageManifest) : Bool :=
  decide (checkedChunkEndFrom 0 manifest.chunks = some numPairWords) &&
    decide (manifest.signMaskCount = numSignMasks)

def CoverageManifest.CoversPairRank
    (manifest : CoverageManifest) (r : Fin numPairWords) : Prop :=
  exists chunk, chunk ∈ manifest.chunks /\ chunk.CoversPairRank r

def CoverageManifest.CoversSignMask
    (manifest : CoverageManifest) (mask : SignMask) : Prop :=
  mask.val < manifest.signMaskCount

theorem checkedChunkEndFrom_covers
    {chunks : List CoverageChunk} {start endRank : Nat}
    {r : Fin numPairWords}
    (hcheck : checkedChunkEndFrom start chunks = some endRank)
    (hstart : start <= r.val)
    (hend : r.val < endRank) :
    exists chunk, chunk ∈ chunks /\ chunk.CoversPairRank r := by
  induction chunks generalizing start endRank with
  | nil =>
      simp [checkedChunkEndFrom] at hcheck
      omega
  | cons chunk chunks ih =>
      unfold checkedChunkEndFrom at hcheck
      by_cases hchunk : checkCoverageChunkAt start chunk = true
      · simp [hchunk] at hcheck
        have hchunkFacts := hchunk
        simp [checkCoverageChunkAt] at hchunkFacts
        by_cases hr : r.val < chunk.endRank
        · refine ⟨chunk, ?_, ?_⟩
          · simp
          · unfold CoverageChunk.CoversPairRank
            omega
        · rcases ih hcheck (by omega) hend with ⟨covered, hmem, hcov⟩
          exact ⟨covered, by simp [hmem], hcov⟩
      · simp [hchunk] at hcheck

theorem CoverageManifest.covers_pair_rank
    (manifest : CoverageManifest)
    (hcheck : checkCoverageManifest manifest = true)
    (r : Fin numPairWords) :
    manifest.CoversPairRank r := by
  simp [checkCoverageManifest] at hcheck
  exact checkedChunkEndFrom_covers hcheck.1 (Nat.zero_le r.val) r.isLt

theorem CoverageManifest.covers_sign_mask
    (manifest : CoverageManifest)
    (hcheck : checkCoverageManifest manifest = true)
    (mask : SignMask) :
    manifest.CoversSignMask mask := by
  simp [checkCoverageManifest] at hcheck
  unfold CoverageManifest.CoversSignMask
  rw [hcheck.2]
  exact mask.isLt

theorem CoverageManifest.exhaustive_pair_rank_coverage
    (manifest : CoverageManifest)
    (hcheck : checkCoverageManifest manifest = true) :
    forall r : Fin numPairWords,
      exists chunk : CoverageChunk, CoverageChunk.CoversPairRank chunk r := by
  intro r
  rcases manifest.covers_pair_rank hcheck r with ⟨chunk, _hmem, hcov⟩
  exact ⟨chunk, hcov⟩

theorem CoverageManifest.exhaustive_sign_mask_coverage
    (manifest : CoverageManifest)
    (hcheck : checkCoverageManifest manifest = true) :
    forall mask : SignMask, mask.val < numSignMasks := by
  intro mask
  have hmask := manifest.covers_sign_mask hcheck mask
  have hcheckFacts := hcheck
  simp [checkCoverageManifest] at hcheckFacts
  simpa [CoverageManifest.CoversSignMask, hcheckFacts.2] using hmask

def expectedIdentityLinearWordCount : Nat := 2468088

def expectedTranslationChoiceCount : Nat := 157957632

def expectedCanonicalPairWordClassCount : Nat := 12162150

def expectedCanonicalTranslationChoiceClassCount : Nat := 19744704

structure CanonicalCoverageManifest where
  rankCoverage : CoverageManifest
  pairWordCount : Nat
  identityLinearWordCount : Nat
  translationChoiceCount : Nat
  canonicalPairWordClassCount : Nat
  canonicalTranslationChoiceClassCount : Nat
  maxPairWordOrbit : Nat
  maxTranslationChoiceOrbit : Nat
  proofReducingTransformIds : List Nat
  proofReducingTransformCount : Nat
  reversalProofTransportEnabled : Bool
deriving DecidableEq, Repr

def CanonicalPairCoverageSound
    (coverage : CanonicalPairCoverage) : Prop :=
  exists rawRank : Fin numPairWords,
    coverage = canonicalPairCoverage rawRank

def CanonicalTranslationCoverageSound
    (coverage : CanonicalTranslationCoverage) : Prop :=
  exists rawRank : Fin numPairWords, exists rawMask : SignMask,
    coverage = canonicalTranslationCoverage rawRank rawMask

theorem canonicalPairCoverage_sound (r : Fin numPairWords) :
    CanonicalPairCoverageSound (canonicalPairCoverage r) :=
  ⟨r, rfl⟩

theorem canonicalTranslationCoverage_sound
    (r : Fin numPairWords) (mask : SignMask) :
    CanonicalTranslationCoverageSound
      (canonicalTranslationCoverage r mask) :=
  ⟨r, mask, rfl⟩

theorem CanonicalPairCoverageSound.rawRank_lt
    {coverage : CanonicalPairCoverage}
    (h : CanonicalPairCoverageSound coverage) :
    coverage.rawRank < numPairWords := by
  rcases h with ⟨r, rfl⟩
  simp [canonicalPairCoverage]

theorem CanonicalPairCoverageSound.rawWord_eq
    {coverage : CanonicalPairCoverage}
    (h : CanonicalPairCoverageSound coverage) :
    coverage.rawWord =
      unrankPairWord ⟨coverage.rawRank, h.rawRank_lt⟩ := by
  rcases h with ⟨r, rfl⟩
  simp [canonicalPairCoverage]

theorem CanonicalPairCoverageSound.rawTransform_valid
    {coverage : CanonicalPairCoverage}
    (h : CanonicalPairCoverageSound coverage) :
    startedTransformValid coverage.rawToCanonicalTransformId := by
  rcases h with ⟨r, rfl⟩
  simp [canonicalPairCoverage, canonicalPairWordWithTransform,
    startedTransformIdOfSym_valid]

theorem CanonicalPairCoverageSound.rawTransform_id
    {coverage : CanonicalPairCoverage}
    (h : CanonicalPairCoverageSound coverage) :
    startedTransformSym? coverage.rawToCanonicalTransformId =
      some coverage.rawToCanonicalTransform := by
  rcases h with ⟨r, rfl⟩
  simp [canonicalPairCoverage, canonicalPairWordWithTransform,
    startedTransformSym?_idOfSym]

theorem CanonicalPairCoverageSound.inverseTransform_valid
    {coverage : CanonicalPairCoverage}
    (h : CanonicalPairCoverageSound coverage) :
    startedTransformValid coverage.canonicalToRawTransformId := by
  rcases h with ⟨r, rfl⟩
  simp [canonicalPairCoverage, canonicalPairWordWithTransform,
    startedTransformIdOfSym_valid]

theorem CanonicalPairCoverageSound.inverseTransform_id
    {coverage : CanonicalPairCoverage}
    (h : CanonicalPairCoverageSound coverage) :
    startedTransformSym? coverage.canonicalToRawTransformId =
      some coverage.canonicalToRawTransform := by
  rcases h with ⟨r, rfl⟩
  simp [canonicalPairCoverage, canonicalPairWordWithTransform,
    startedTransformSym?_idOfSym]

theorem CanonicalPairCoverageSound.raw_to_canonical
    {coverage : CanonicalPairCoverage}
    (h : CanonicalPairCoverageSound coverage) :
    symPairWord coverage.rawToCanonicalTransform coverage.rawWord =
      coverage.canonical.word := by
  rcases h with ⟨r, rfl⟩
  simp [canonicalPairCoverage, canonicalPairWordWithTransform]

theorem CanonicalPairCoverageSound.canonical_to_raw
    {coverage : CanonicalPairCoverage}
    (h : CanonicalPairCoverageSound coverage) :
    symPairWord coverage.canonicalToRawTransform
      coverage.canonical.word = coverage.rawWord := by
  rcases h with ⟨r, rfl⟩
  simp [canonicalPairCoverage, canonicalPairWordWithTransform,
    symPairWord_inverse]

theorem CanonicalPairCoverageSound.canonical_rule
    {coverage : CanonicalPairCoverage}
    (h : CanonicalPairCoverageSound coverage) :
    coverage.canonical.word =
      proofReducingCanonicalPairWord coverage.rawWord := by
  rcases h with ⟨r, rfl⟩
  simp [canonicalPairCoverage, canonicalPairWordWithTransform,
    proofReducingCanonicalPairWord, canonicalPairWord]

theorem CanonicalPairCoverageSound.canonical_rank
    {coverage : CanonicalPairCoverage}
    (h : CanonicalPairCoverageSound coverage) :
    coverage.canonical.rank =
      pairWordLexRank coverage.canonical.word := by
  rcases h with ⟨r, rfl⟩
  simp [canonicalPairCoverage]

theorem CanonicalTranslationCoverageSound.rawRank_lt
    {coverage : CanonicalTranslationCoverage}
    (h : CanonicalTranslationCoverageSound coverage) :
    coverage.rawRank < numPairWords := by
  rcases h with ⟨r, mask, rfl⟩
  simp [canonicalTranslationCoverage]

theorem CanonicalTranslationCoverageSound.rawWord_eq
    {coverage : CanonicalTranslationCoverage}
    (h : CanonicalTranslationCoverageSound coverage) :
    coverage.rawWord =
      unrankPairWord ⟨coverage.rawRank, h.rawRank_lt⟩ := by
  rcases h with ⟨r, mask, rfl⟩
  simp [canonicalTranslationCoverage]

theorem CanonicalTranslationCoverageSound.rawTransform_valid
    {coverage : CanonicalTranslationCoverage}
    (h : CanonicalTranslationCoverageSound coverage) :
    startedTransformValid coverage.rawToCanonicalTransformId := by
  rcases h with ⟨r, mask, rfl⟩
  simp [canonicalTranslationCoverage,
    canonicalTranslationChoiceWithTransform,
    startedTransformIdOfSym_valid]

theorem CanonicalTranslationCoverageSound.rawTransform_id
    {coverage : CanonicalTranslationCoverage}
    (h : CanonicalTranslationCoverageSound coverage) :
    startedTransformSym? coverage.rawToCanonicalTransformId =
      some coverage.rawToCanonicalTransform := by
  rcases h with ⟨r, mask, rfl⟩
  simp [canonicalTranslationCoverage,
    canonicalTranslationChoiceWithTransform,
    startedTransformSym?_idOfSym]

theorem CanonicalTranslationCoverageSound.inverseTransform_valid
    {coverage : CanonicalTranslationCoverage}
    (h : CanonicalTranslationCoverageSound coverage) :
    startedTransformValid coverage.canonicalToRawTransformId := by
  rcases h with ⟨r, mask, rfl⟩
  simp [canonicalTranslationCoverage,
    canonicalTranslationChoiceWithTransform,
    startedTransformIdOfSym_valid]

theorem CanonicalTranslationCoverageSound.inverseTransform_id
    {coverage : CanonicalTranslationCoverage}
    (h : CanonicalTranslationCoverageSound coverage) :
    startedTransformSym? coverage.canonicalToRawTransformId =
      some coverage.canonicalToRawTransform := by
  rcases h with ⟨r, mask, rfl⟩
  simp [canonicalTranslationCoverage,
    canonicalTranslationChoiceWithTransform,
    startedTransformSym?_idOfSym]

theorem CanonicalTranslationCoverageSound.raw_to_canonical_word
    {coverage : CanonicalTranslationCoverage}
    (h : CanonicalTranslationCoverageSound coverage) :
    symPairWord coverage.rawToCanonicalTransform coverage.rawWord =
      coverage.canonical.word := by
  rcases h with ⟨r, mask, rfl⟩
  simp [canonicalTranslationCoverage,
    canonicalTranslationChoiceWithTransform]

theorem CanonicalTranslationCoverageSound.raw_to_canonical_mask
    {coverage : CanonicalTranslationCoverage}
    (h : CanonicalTranslationCoverageSound coverage) :
    symTranslationMask coverage.rawToCanonicalTransform coverage.rawWord
      coverage.rawMask = coverage.canonical.mask := by
  rcases h with ⟨r, mask, rfl⟩
  simp [canonicalTranslationCoverage,
    canonicalTranslationChoiceWithTransform]

theorem CanonicalTranslationCoverageSound.canonical_to_raw_word
    {coverage : CanonicalTranslationCoverage}
    (h : CanonicalTranslationCoverageSound coverage) :
    symPairWord coverage.canonicalToRawTransform
      coverage.canonical.word = coverage.rawWord := by
  rcases h with ⟨r, mask, rfl⟩
  simp [canonicalTranslationCoverage,
    canonicalTranslationChoiceWithTransform, symPairWord_inverse]

theorem CanonicalTranslationCoverageSound.canonical_to_raw_mask
    {coverage : CanonicalTranslationCoverage}
    (h : CanonicalTranslationCoverageSound coverage) :
    symTranslationMask coverage.canonicalToRawTransform
      coverage.canonical.word coverage.canonical.mask =
        coverage.rawMask := by
  rcases h with ⟨r, mask, rfl⟩
  simp [canonicalTranslationCoverage,
    canonicalTranslationChoiceWithTransform, symTranslationMask_inverse]

theorem CanonicalTranslationCoverageSound.canonical_rule
    {coverage : CanonicalTranslationCoverage}
    (h : CanonicalTranslationCoverageSound coverage) :
    (coverage.canonical.word, coverage.canonical.mask) =
      proofReducingCanonicalTranslationChoice
        coverage.rawWord coverage.rawMask := by
  rcases h with ⟨r, mask, rfl⟩
  simp [canonicalTranslationCoverage,
    canonicalTranslationChoiceWithTransform,
    proofReducingCanonicalTranslationChoice,
    canonicalTranslationChoice]

theorem CanonicalTranslationCoverageSound.canonical_rank
    {coverage : CanonicalTranslationCoverage}
    (h : CanonicalTranslationCoverageSound coverage) :
    coverage.canonical.rank =
      pairWordLexRank coverage.canonical.word := by
  rcases h with ⟨r, mask, rfl⟩
  simp [canonicalTranslationCoverage]

structure CanonicalCoverageManifestSound
    (manifest : CanonicalCoverageManifest) : Prop where
  rankCoverageChecked :
    checkCoverageManifest manifest.rankCoverage = true
  pairWordCount_eq : manifest.pairWordCount = numPairWords
  identityLinearWordCount_eq :
    manifest.identityLinearWordCount = expectedIdentityLinearWordCount
  translationChoiceCount_eq :
    manifest.translationChoiceCount = expectedTranslationChoiceCount
  canonicalPairWordClassCount_eq :
    manifest.canonicalPairWordClassCount =
      expectedCanonicalPairWordClassCount
  canonicalTranslationChoiceClassCount_eq :
    manifest.canonicalTranslationChoiceClassCount =
      expectedCanonicalTranslationChoiceClassCount
  maxPairWordOrbit_eq : manifest.maxPairWordOrbit = 8
  maxTranslationChoiceOrbit_eq : manifest.maxTranslationChoiceOrbit = 8
  proofReducingTransformIds_eq :
    manifest.proofReducingTransformIds = proofReducingStartedTransformIds
  proofReducingTransformCount_eq :
    manifest.proofReducingTransformCount = allStartedSyms.length
  startedSymGroupChecked : checkStartedSymGroup = true
  reversalPolicy_eq :
    manifest.reversalProofTransportEnabled =
      reversalProofTransportEnabled

noncomputable def checkCanonicalCoverageManifest
    (manifest : CanonicalCoverageManifest) : Bool := by
  classical
  exact decide (CanonicalCoverageManifestSound manifest)

theorem checkCanonicalCoverageManifest_sound
    {manifest : CanonicalCoverageManifest}
    (hcheck : checkCanonicalCoverageManifest manifest = true) :
    CanonicalCoverageManifestSound manifest := by
  classical
  have hdec :
      decide (CanonicalCoverageManifestSound manifest) = true := by
    simpa [checkCanonicalCoverageManifest] using hcheck
  exact of_decide_eq_true hdec

def CanonicalCoverageManifest.CoversPairRank
    (_manifest : CanonicalCoverageManifest) (r : Fin numPairWords) : Prop :=
  exists coverage : CanonicalPairCoverage,
    coverage = canonicalPairCoverage r /\
      CanonicalPairCoverageSound coverage

def CanonicalCoverageManifest.CoversTranslationChoice
    (_manifest : CanonicalCoverageManifest)
    (r : Fin numPairWords) (mask : SignMask) : Prop :=
  exists coverage : CanonicalTranslationCoverage,
    coverage = canonicalTranslationCoverage r mask /\
      CanonicalTranslationCoverageSound coverage

theorem CanonicalCoverageManifest.covers_pair_rank
    (manifest : CanonicalCoverageManifest)
    (_hcheck : checkCanonicalCoverageManifest manifest = true)
    (r : Fin numPairWords) :
    manifest.CoversPairRank r := by
  exact ⟨canonicalPairCoverage r, rfl, canonicalPairCoverage_sound r⟩

theorem CanonicalCoverageManifest.covers_translation_choice
    (manifest : CanonicalCoverageManifest)
    (_hcheck : checkCanonicalCoverageManifest manifest = true)
    (r : Fin numPairWords) (mask : SignMask) :
    manifest.CoversTranslationChoice r mask := by
  exact ⟨canonicalTranslationCoverage r mask, rfl,
    canonicalTranslationCoverage_sound r mask⟩

theorem CanonicalCoverageManifest.covers_nonidentity_rank
    (manifest : CanonicalCoverageManifest)
    (hcheck : checkCanonicalCoverageManifest manifest = true)
    (r : Fin numPairWords)
    (_hNonIdentity :
      totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat)) :
    manifest.CoversPairRank r :=
  manifest.covers_pair_rank hcheck r

theorem CanonicalCoverageManifest.covers_identity_translation_choice
    (manifest : CanonicalCoverageManifest)
    (hcheck : checkCanonicalCoverageManifest manifest = true)
    (r : Fin numPairWords) (mask : SignMask)
    (_hIdentity :
      totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat)) :
    manifest.CoversTranslationChoice r mask :=
  manifest.covers_translation_choice hcheck r mask

theorem checkNonIdCoverageTree_manifest_pairRank_sound
    (manifest : CanonicalCoverageManifest)
    (hmanifest : checkCanonicalCoverageManifest manifest = true)
    {tree : NonIdCoverageTree}
    (hcheck : checkNonIdCoverageTree tree = true)
    {r : Fin numPairWords}
    (hcontains : tree.ContainsPairRank r) :
    exists cert : NonIdCert,
      checkNonIdCoveredRank r.val cert = true /\
        checkNonIdCert cert = true := by
  have _hcovered := manifest.covers_pair_rank hmanifest r
  exact checkNonIdCoverageTree_pairRank_sound hcheck hcontains

theorem checkTranslationCoverageTree_manifest_choice_sound
    (manifest : CanonicalCoverageManifest)
    (hmanifest : checkCanonicalCoverageManifest manifest = true)
    {tree : TranslationCoverageTree}
    (hcheck : checkTranslationCoverageTree tree = true)
    {r : Fin numPairWords} {mask : SignMask}
    (hcontains : tree.ContainsTranslationChoice r mask) :
    exists cert : TranslationCert,
      checkTranslationCoveredCase
          { pairRank := r.val, signMask := mask.val } cert = true /\
        checkTranslationCert cert = true := by
  have _hcovered := manifest.covers_translation_choice hmanifest r mask
  exact checkTranslationCoverageTree_choice_sound hcheck hcontains

theorem canonicalPairCoverage_exact_once
    {r : Fin numPairWords} {a b : CanonicalPairCoverage}
    (ha : CanonicalPairCoverageSound a)
    (hb : CanonicalPairCoverageSound b)
    (har : a.rawRank = r.val)
    (hbr : b.rawRank = r.val) :
    a = b := by
  rcases ha with ⟨ra, haeq⟩
  rcases hb with ⟨rb, hbeq⟩
  have hra : ra = r := by
    apply Fin.ext
    simpa [haeq, canonicalPairCoverage] using har
  have hrb : rb = r := by
    apply Fin.ext
    simpa [hbeq, canonicalPairCoverage] using hbr
  rw [haeq, hbeq, hra, hrb]

theorem canonicalTranslationCoverage_exact_once
    {r : Fin numPairWords} {mask : SignMask}
    {a b : CanonicalTranslationCoverage}
    (ha : CanonicalTranslationCoverageSound a)
    (hb : CanonicalTranslationCoverageSound b)
    (har : a.rawRank = r.val)
    (hbr : b.rawRank = r.val)
    (ham : a.rawMask = mask)
    (hbm : b.rawMask = mask) :
    a = b := by
  rcases ha with ⟨ra, ma, haeq⟩
  rcases hb with ⟨rb, mb, hbeq⟩
  have hra : ra = r := by
    apply Fin.ext
    simpa [haeq, canonicalTranslationCoverage] using har
  have hrb : rb = r := by
    apply Fin.ext
    simpa [hbeq, canonicalTranslationCoverage] using hbr
  have hma : ma = mask := by
    simpa [haeq, canonicalTranslationCoverage] using ham
  have hmb : mb = mask := by
    simpa [hbeq, canonicalTranslationCoverage] using hbm
  rw [haeq, hbeq, hra, hrb, hma, hmb]

theorem generatedCoverage_of_checked_chunks
    {nonIdentityMeta : GeneratedChunkMeta}
    {nonIdentityCerts : Array NonIdentityLinearCert}
    {translationMeta : GeneratedChunkMeta}
    {translationCerts : Array TranslationChoiceCert}
    (hNonIdentity :
      checkNonIdentityChunk nonIdentityMeta nonIdentityCerts = true)
    (hTranslation :
      checkTranslationChunk translationMeta translationCerts = true) :
    GeneratedCoverage nonIdentityCerts translationCerts := by
  refine ⟨?_, ?_⟩
  · have hvalid :=
      checkNonIdentityLinearCerts_valid
        (checkNonIdentityChunk_certs hNonIdentity)
    intro cert hmem
    exact NonIdentityCertHasRank.of_valid (hvalid cert hmem)
  · have hvalid :=
      checkTranslationChoiceCerts_valid
        (checkTranslationChunk_certs hTranslation)
    intro cert hmem
    exact TranslationChoiceCertHasRank.of_valid (hvalid cert hmem)

theorem pathPrefixAffNat_M_eq_pairPrefixLinearNat
    {seq : Step14 -> Face} {w : PairWord}
    (hMatch : PairWordMatchesSeq w seq) :
    forall n : Nat, n <= 13 ->
      (pathPrefixAffNat seq n).M = pairPrefixLinearNat w n := by
  intro n
  induction n with
  | zero =>
      intro _hn
      rfl
  | succ n ih =>
      intro hnSucc
      have hn13 : n < 13 := by omega
      have hsucc14 : n + 1 < 14 := by omega
      have hface :
          (faceReflectionQ (seq ⟨n + 1, hsucc14⟩)).M =
            reflM (canonicalNormalQ (w.get ⟨n, hn13⟩)) := by
        have hpair := hMatch ⟨n, hn13⟩
        have hpair' :
            pairOfFace (seq ⟨n + 1, hsucc14⟩) =
              pairOfFace (faceOfPairSign (w.get ⟨n, hn13⟩) true) := by
          simpa [afterStart] using hpair.symm
        have hlin :=
          faceReflection_linear_eq_of_pairOfFace_eq hpair'
        simpa [faceReflectionQ, normalQ_faceOfPairSign_true]
          using hlin
      simp [pathPrefixAffNat, pairPrefixLinearNat, hsucc14, hn13,
        ih (by omega), hface, affCompose]

theorem dot_preImpactNormalR_axis_eq_pairPrefix
    {seq : Step14 -> Face} {w : PairWord} {axis : Vec3 Rat}
    (hMatch : PairWordMatchesSeq w seq)
    (i : WordIndex) :
    dot (preImpactNormalR seq (wordImpact i)) (vecRatToReal axis) =
      ((dot
        (matVec (pairPrefixLinearNat w i.val)
          (normalQ (seq (afterStart i)))) axis : Rat) : Real) := by
  have hPrefix :=
    pathPrefixAffNat_M_eq_pairPrefixLinearNat (seq := seq) (w := w)
      hMatch i.val (by omega)
  unfold preImpactNormalR preImpactNormalQ preImpactCopyAff vecRatToReal
  rw [impactFace_wordImpact]
  change dot
    ((matVec (pathPrefixAffNat seq ((wordImpact i).val - 1)).M
      (normalQ (seq (afterStart i)))).map fun q => (q : Real))
    (axis.map fun q => (q : Real)) =
      ((dot
        (matVec (pairPrefixLinearNat w i.val)
          (normalQ (seq (afterStart i)))) axis : Rat) : Real)
  have hSub : (wordImpact i).val - 1 = i.val := by
    simp [wordImpact, afterStart]
  rw [hSub, hPrefix]
  simp [Vec3.map, dot]

theorem dot_preImpactNormalR_axis_eq_finalAxis
    {seq : Step14 -> Face} {w : PairWord} {axis : Vec3 Rat}
    (hStart : StartsXp seq)
    (hMatch : PairWordMatchesSeq w seq) :
    dot (preImpactNormalR seq lastImpact) (vecRatToReal axis) =
      ((finalAxisDotQ w axis : Rat) : Real) := by
  have hPrefix :=
    pathPrefixAffNat_M_eq_pairPrefixLinearNat (seq := seq) (w := w)
      hMatch 13 (by omega)
  unfold preImpactNormalR preImpactNormalQ preImpactCopyAff vecRatToReal
  change dot
    ((matVec (pathPrefixAffNat seq (lastImpact.val - 1)).M
      (normalQ (impactFace seq lastImpact))).map fun q => (q : Real))
    (axis.map fun q => (q : Real)) =
      ((finalAxisDotQ w axis : Rat) : Real)
  have hSub : lastImpact.val - 1 = 13 := by
    simp [lastImpact]
  have hFace : impactFace seq lastImpact = Face.xp := by
    simpa [impactFace, lastImpact, StartsXp] using hStart
  rw [hSub, hPrefix, hFace]
  simp [finalAxisDotQ, Vec3.map, dot]

theorem preImpactNormalQ_axis_zero_of_axisDotZeroAtWord
    {seq : Step14 -> Face} {w : PairWord} {axis : Vec3 Rat}
    (hMatch : PairWordMatchesSeq w seq)
    {i : WordIndex}
    (hzero : AxisDotZeroAtWord w axis i) :
    dot (preImpactNormalQ seq (wordImpact i)) axis = 0 := by
  have hPrefix :=
    pathPrefixAffNat_M_eq_pairPrefixLinearNat (seq := seq) (w := w)
      hMatch i.val (by omega)
  have hpair : pairOfFace (seq (afterStart i)) = w.get i := by
    exact (hMatch i).symm
  have hzeroFace := hzero (seq (afterStart i)) hpair
  unfold preImpactNormalQ preImpactCopyAff
  rw [impactFace_wordImpact]
  change dot
    (matVec (pathPrefixAffNat seq ((wordImpact i).val - 1)).M
      (normalQ (seq (afterStart i)))) axis = 0
  have hSub : (wordImpact i).val - 1 = i.val := by
    simp [wordImpact, afterStart]
  rw [hSub, hPrefix]
  exact hzeroFace

theorem dot_preImpactNormalR_axis_zero_of_axisDotZeroAtWord
    {seq : Step14 -> Face} {w : PairWord} {axis : Vec3 Rat}
    (hMatch : PairWordMatchesSeq w seq)
    {i : WordIndex}
    (hzero : AxisDotZeroAtWord w axis i) :
    dot (preImpactNormalR seq (wordImpact i)) (vecRatToReal axis) = 0 := by
  have hzeroQ :=
    preImpactNormalQ_axis_zero_of_axisDotZeroAtWord
      (seq := seq) (w := w) (axis := axis) hMatch hzero
  have hcast := congrArg (fun q : Rat => (q : Real)) hzeroQ
  simpa [preImpactNormalR, vecRatToReal, Vec3.map, dot] using hcast

theorem XpStartInteriorQ_of_real
    {p : Vec3 Rat}
    (h : InFaceInterior Face.xp (vecRatToReal p)) :
    XpStartInteriorQ p := by
  have hxR : (p.x : Real) = 1 := by
    simpa [vecRatToReal, Vec3.map, normalR, normalQ, offsetR, offsetQ, dot]
      using h.1
  have hInteriorAtOne :
      InFaceInterior Face.xp
        { x := (1 : Real), y := (p.y : Real), z := (p.z : Real) } := by
    simpa [vecRatToReal, Vec3.map, hxR] using h
  have hDiamond :=
    (xp_face_interior_iff (p.y : Real) (p.z : Real)).mp hInteriorAtOne
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · exact_mod_cast hxR
  · exact_mod_cast hDiamond.1
  · exact_mod_cast hDiamond.2.1
  · exact_mod_cast hDiamond.2.2.1
  · exact_mod_cast hDiamond.2.2.2

theorem forcedSeq_eq_of_axisForces
    {cert : NonIdCert} {seq : Step14 -> Face}
    (hRealize : SeqRealizesPairWord cert.word seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq)
    (hKernel :
      checkKernelLineWitness (totalLinearOfPairWord cert.word)
        cert.axis cert.kernel = true)
    (hForces :
      AxisForcesForcedSeq cert.word cert.axis
        (faceVectorSeq cert.forcedSeq)) :
    faceVectorSeq cert.forcedSeq = seq := by
  rcases hForces with
    ⟨hForcedStart, _hForcedMatch, hFinalPositive, hForceSigns⟩
  have hSeqLinear : totalLinear seq = totalLinearOfPairWord cert.word :=
    hRealize.linear_eq
  rcases hAxisConstraints.line_data with
    ⟨data, _hNonzero, _hStart, _hEnd, hFixed, _hForward, hForwardAll,
      _hImpact, _hPreImpact, _hOpen, _hHit⟩
  have hFixedWord :
      matVec ((totalLinearOfPairWord cert.word).map fun q => (q : Real))
          data.w = data.w := by
    rw [← hSeqLinear]
    simpa [totalLinear, affRatToReal, Aff3.map] using hFixed
  have hCross :
      cross (vecRatToReal cert.axis) data.w = zeroVec3R :=
    checkKernelLineWitness_real_axisLine hKernel hFixedWord
  have hAxisNonzero :
      vecRatToReal cert.axis ≠ zeroVec3R :=
    checkKernelLineWitness_axis_nonzero hKernel
  rcases cross_eq_zero_scalar_of_axis_ne_zero hAxisNonzero hCross with
    ⟨lambda, hParallel⟩
  have hLastNeZero : lastImpact ≠ (0 : Impact15) := by
    intro h
    have hv := congrArg Fin.val h
    simp [lastImpact] at hv
  have hLastForward := hForwardAll lastImpact hLastNeZero
  have hFinalAxisR :
      0 < ((finalAxisDotQ cert.word cert.axis : Rat) : Real) := by
    exact_mod_cast hFinalPositive
  have hLastAxis :
      dot (preImpactNormalR seq lastImpact)
          (vecRatToReal cert.axis) =
        ((finalAxisDotQ cert.word cert.axis : Rat) : Real) :=
    dot_preImpactNormalR_axis_eq_finalAxis
      (seq := seq) (w := cert.word) (axis := cert.axis)
      hRealize.startsXp hRealize.pair_matches
  have hLambdaPos : 0 < lambda := by
    have hLastDot :
        dot (preImpactNormalR seq lastImpact) data.w =
          lambda *
            dot (preImpactNormalR seq lastImpact)
              (vecRatToReal cert.axis) := by
      rw [hParallel]
      simp [scalarMul, dot]
      ring
    rw [hLastDot, hLastAxis] at hLastForward
    nlinarith
  apply seq_eq_of_start_and_signed_normals
  · rw [hForcedStart, hRealize.startsXp]
  · intro j hj
    let i : WordIndex := dropStart j hj
    have hjEq : afterStart i = j := afterStart_dropStart j hj
    have hi0 : wordImpact i ≠ (0 : Impact15) := by
      intro h
      have hv := congrArg Fin.val h
      simp [wordImpact, afterStart] at hv
    have hForward := hForwardAll (wordImpact i) hi0
    have hAxisEq :
        dot (preImpactNormalR seq (wordImpact i))
            (vecRatToReal cert.axis) =
          ((dot
            (matVec (pairPrefixLinearNat cert.word i.val)
              (normalQ (seq (afterStart i)))) cert.axis : Rat) : Real) :=
      dot_preImpactNormalR_axis_eq_pairPrefix
        (seq := seq) (w := cert.word) (axis := cert.axis)
        hRealize.pair_matches i
    have hDotW :
        dot (preImpactNormalR seq (wordImpact i)) data.w =
          lambda *
            dot (preImpactNormalR seq (wordImpact i))
              (vecRatToReal cert.axis) := by
      rw [hParallel]
      simp [scalarMul, dot]
      ring
    rw [hDotW, hAxisEq] at hForward
    have hAxisPositiveQ :
        0 <
          dot
            (matVec (pairPrefixLinearNat cert.word i.val)
              (normalQ (seq (afterStart i)))) cert.axis := by
      have hAxisPositiveR :
          0 <
            ((dot
              (matVec (pairPrefixLinearNat cert.word i.val)
                (normalQ (seq (afterStart i)))) cert.axis : Rat) : Real) := by
        nlinarith
      exact_mod_cast hAxisPositiveR
    have hPair : pairOfFace (seq (afterStart i)) = cert.word.get i :=
      (hRealize.pair_matches i).symm
    have hNormal :=
      hForceSigns i (seq (afterStart i)) hPair hAxisPositiveQ
    rw [← hjEq]
    exact hNormal

theorem nonIdCert_forces_candidate_data
    {cert : NonIdCert} {seq : Step14 -> Face}
    (hRealize : SeqRealizesPairWord cert.word seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq)
    (hKernel :
      checkKernelLineWitness (totalLinearOfPairWord cert.word)
        cert.axis cert.kernel = true)
    (hSolve :
      checkAffineAxisSolveWitness (totalAff (faceVectorSeq cert.forcedSeq))
        cert.axis cert.p0 cert.lambda cert.solve = true)
    (hForces :
      AxisForcesForcedSeq cert.word cert.axis
        (faceVectorSeq cert.forcedSeq)) :
    exists data : UnfoldedFeasibleData seq,
      faceVectorSeq cert.forcedSeq = seq /\
        data.p0 = vecRatToReal cert.p0 /\
          data.w = vecRatToReal (candidateWQ seq cert.p0) := by
  have hSeqLinear : totalLinear seq = totalLinearOfPairWord cert.word :=
    hRealize.linear_eq
  have hForcedEq : faceVectorSeq cert.forcedSeq = seq :=
    forcedSeq_eq_of_axisForces
      (cert := cert) (seq := seq) hRealize hAxisConstraints hKernel hForces
  have hKernelSeq :
      checkKernelLineWitness (totalLinear seq) cert.axis cert.kernel = true := by
    rwa [hSeqLinear]
  have hSolveSeq :
      checkAffineAxisSolveWitness (totalAff seq)
        cert.axis cert.p0 cert.lambda cert.solve = true := by
    simpa [← hForcedEq] using hSolve
  rcases
    unfolded_feasible_nonidentity_forces_start_point
      hAxisConstraints hRealize.startsXp hKernelSeq hSolveSeq with
    ⟨data, hp0⟩
  have hEnd := data.endpoint_eq
  rw [hp0] at hEnd
  have hx := congrArg Vec3.x hEnd
  have hy := congrArg Vec3.y hEnd
  have hz := congrArg Vec3.z hEnd
  have hw :
      data.w = vecRatToReal (candidateWQ seq cert.p0) := by
    apply Vec3.ext
    · simp [candidateWQ, vecRatToReal, Vec3.map, linePoint, vecAdd,
        scalarMul, vecSub, affApply, affRatToReal, Aff3.map, Mat3.map,
        matVec] at hx ⊢
      linarith
    · simp [candidateWQ, vecRatToReal, Vec3.map, linePoint, vecAdd,
        scalarMul, vecSub, affApply, affRatToReal, Aff3.map, Mat3.map,
        matVec] at hy ⊢
      linarith
    · simp [candidateWQ, vecRatToReal, Vec3.map, linePoint, vecAdd,
        scalarMul, vecSub, affApply, affRatToReal, Aff3.map, Mat3.map,
        matVec] at hz ⊢
      linarith
  exact ⟨data, hForcedEq, hp0, hw⟩

theorem candidateImpactTimeQ_eq_crossing_time
    {seq : Step14 -> Face} {p0 wq : Vec3 Rat}
    {data : UnfoldedFeasibleData seq} (i : Impact15)
    (hp0 : data.p0 = vecRatToReal p0)
    (hw : data.w = vecRatToReal wq) :
    data.crossing_times i =
      (candidateImpactTimeQ seq p0 wq i : Real) := by
  by_cases hi0 : i = (0 : Impact15)
  · subst i
    simp [candidateImpactTimeQ, data.t0]
  · by_cases hilast : i = lastImpact
    · subst i
      rw [data.t14]
      simp [candidateImpactTimeQ, lastImpact]
    · have hPlane :=
        copied_face_plane_of_unfolded_interior
          (data.pre_impact_hit_conditions i)
      have hForward := data.preImpact_forward_all i hi0
      rw [hw] at hForward
      have hDenPosR :
          0 < ((candidateImpactDenomQ seq wq i : Rat) : Real) := by
        simpa [candidateImpactDenomQ, impactPlaneNormalQ, copiedNormalQ,
          preImpactNormalR, preImpactNormalQ, vecRatToReal, Vec3.map, dot]
          using hForward
      have hPlane' :
          dot (vecRatToReal (impactPlaneNormalQ seq i))
              (linePoint (vecRatToReal p0) (vecRatToReal wq)
                (data.crossing_times i)) =
            (impactPlaneOffsetQ seq i : Real) := by
        simpa [hp0, hw] using hPlane
      have hEquation :
          data.crossing_times i *
              ((candidateImpactDenomQ seq wq i : Rat) : Real) =
            ((impactPlaneOffsetQ seq i -
                dot (impactPlaneNormalQ seq i) p0 : Rat) : Real) := by
        simp [candidateImpactDenomQ, linePoint, vecAdd, scalarMul,
          vecRatToReal, Vec3.map, dot] at hPlane' ⊢
        linarith
      simp [candidateImpactTimeQ, hi0, hilast]
      field_simp [ne_of_gt hDenPosR]
      simpa [candidateImpactDenomQ, dot] using hEquation

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
  | noFixedAxis witness =>
      unfold checkNonIdCert at hcheck
      rw [hfailure] at hcheck
      unfold checkNonIdNoFixedAxisFailure at hcheck
      by_cases hValid : ValidPairWord cert.word
      · simp [hValid] at hcheck
        by_cases hWordNonId :
            totalLinearOfPairWord cert.word ≠ (matId : Mat3 Rat)
        · simp [hWordNonId] at hcheck
          have hNoFixed :
              checkNoFixedVectorWitness
                (totalLinearOfPairWord cert.word) witness = true := hcheck
          have hSeqLinear : totalLinear seq = totalLinearOfPairWord cert.word :=
            hRealize.linear_eq
          have hSeqNonId : totalLinear seq ≠ (matId : Mat3 Rat) := by
            intro hSeqId
            apply hWordNonId
            rw [← hSeqLinear]
            exact hSeqId
          have hAxisConstraints :=
            unfolded_feasible_nonidentity_axis_constraints _hFeasible hSeqNonId
          rcases nonidentity_axis_constraints_fixed_direction hAxisConstraints with
            ⟨data, hNonzero, hFixed⟩
          have hFixedWord :
              matVec ((totalLinearOfPairWord cert.word).map fun q => (q : Real))
                  data.w = data.w := by
            rw [← hSeqLinear]
            simpa [totalLinear, affRatToReal, Aff3.map] using hFixed
          exact hNonzero
            (checkNoFixedVectorWitness_real_zero hNoFixed hFixedWord)
        · simp [hWordNonId] at hcheck
      · simp [hValid] at hcheck
  | badPairBalance =>
      simp [checkNonIdCert, hfailure, checkNonIdPairBalanceFailure,
        checkNonIdInvalidPairWordFailure,
        checkNonIdForcedPairBalanceFailure,
        checkAxisForcesForcedSeq] at hcheck
      rcases hcheck with hInvalid | hForced
      · exact hInvalid.2 hRealize.valid
      · rcases hForced with
          ⟨⟨⟨⟨_hValid, hWordNonId⟩, hKernel⟩, hForces⟩, hNotOmni⟩
        have hSeqLinear : totalLinear seq = totalLinearOfPairWord cert.word :=
          hRealize.linear_eq
        have hSeqNonId : totalLinear seq ≠ (matId : Mat3 Rat) := by
          intro hSeqId
          apply hWordNonId
          rw [← hSeqLinear]
          exact hSeqId
        have hAxisConstraints :=
          unfolded_feasible_nonidentity_axis_constraints _hFeasible hSeqNonId
        have hForcedEq : faceVectorSeq cert.forcedSeq = seq :=
          forcedSeq_eq_of_axisForces
            (cert := cert) (seq := seq) hRealize hAxisConstraints
            hKernel hForces
        exact hNotOmni (by
          rw [hForcedEq]
          exact hRealize.omni)
  | badDirectionSign i =>
      simp [checkNonIdCert, hfailure, checkNonIdBadDirectionSignFailure,
        checkAxisDotZeroAtWord] at hcheck
      rcases hcheck with ⟨⟨⟨_hValid, hWordNonId⟩, hKernel⟩, hAxisZero⟩
      have hSeqLinear : totalLinear seq = totalLinearOfPairWord cert.word :=
        hRealize.linear_eq
      have hSeqNonId : totalLinear seq ≠ (matId : Mat3 Rat) := by
        intro hSeqId
        apply hWordNonId
        rw [← hSeqLinear]
        exact hSeqId
      have hAxisConstraints :=
        unfolded_feasible_nonidentity_axis_constraints _hFeasible hSeqNonId
      have hKernelSeq :
          checkKernelLineWitness (totalLinear seq) cert.axis cert.kernel = true := by
        rwa [hSeqLinear]
      rcases hAxisConstraints.line_data with
        ⟨data, _hNonzero, _hStart, _hEnd, hFixed, _hForward, hForwardAll,
          _hImpact, _hPreImpact, _hOpen, _hHit⟩
      have hFixedWord :
          matVec ((totalLinearOfPairWord cert.word).map fun q => (q : Real))
              data.w = data.w := by
        rw [← hSeqLinear]
        simpa [totalLinear, affRatToReal, Aff3.map] using hFixed
      have hCross :
          cross (vecRatToReal cert.axis) data.w = zeroVec3R :=
        checkKernelLineWitness_real_axisLine hKernel hFixedWord
      have hAxisNonzero :
          vecRatToReal cert.axis ≠ zeroVec3R :=
        checkKernelLineWitness_axis_nonzero hKernel
      rcases cross_eq_zero_scalar_of_axis_ne_zero hAxisNonzero hCross with
        ⟨lambda, hParallel⟩
      have hi0 : wordImpact i ≠ (0 : Impact15) := by
        intro h
        have hv := congrArg Fin.val h
        simp [wordImpact, afterStart] at hv
      have hZeroAxis :
          dot (preImpactNormalR seq (wordImpact i))
            (vecRatToReal cert.axis) = 0 :=
        dot_preImpactNormalR_axis_zero_of_axisDotZeroAtWord
          (seq := seq) (w := cert.word) (axis := cert.axis)
          hRealize.pair_matches hAxisZero
      have hDotW :
          dot (preImpactNormalR seq (wordImpact i)) data.w = 0 := by
        rw [hParallel]
        calc
          dot (preImpactNormalR seq (wordImpact i))
              (scalarMul lambda (vecRatToReal cert.axis)) =
              lambda *
                dot (preImpactNormalR seq (wordImpact i))
                  (vecRatToReal cert.axis) := by
            simp [scalarMul, dot]
            ring
          _ = 0 := by
            rw [hZeroAxis]
            ring
      have hPos := hForwardAll (wordImpact i) hi0
      linarith
  | axisMissesStartInterior =>
      simp [checkNonIdCert, hfailure, checkNonIdAxisMissesStartInteriorData,
        checkAxisForcesForcedSeq] at hcheck
      rcases hcheck with ⟨⟨hCommon, hForces⟩, hNotInteriorQ⟩
      simp [checkNonIdCommon] at hCommon
      rcases hCommon with
        ⟨⟨⟨⟨_hValid, hWordNonId⟩, hKernel⟩, _hForcedMatches⟩, hSolve⟩
      have hSeqLinear : totalLinear seq = totalLinearOfPairWord cert.word :=
        hRealize.linear_eq
      have hSeqNonId : totalLinear seq ≠ (matId : Mat3 Rat) := by
        intro hSeqId
        apply hWordNonId
        rw [← hSeqLinear]
        exact hSeqId
      have hAxisConstraints :=
        unfolded_feasible_nonidentity_axis_constraints _hFeasible hSeqNonId
      have hForcedEq : faceVectorSeq cert.forcedSeq = seq :=
        forcedSeq_eq_of_axisForces
          (cert := cert) (seq := seq) hRealize hAxisConstraints
          hKernel hForces
      have hKernelSeq :
          checkKernelLineWitness (totalLinear seq) cert.axis cert.kernel = true := by
        rwa [hSeqLinear]
      have hSolveSeq :
          checkAffineAxisSolveWitness (totalAff seq)
            cert.axis cert.p0 cert.lambda cert.solve = true := by
        simpa [← hForcedEq] using hSolve
      rcases
        unfolded_feasible_nonidentity_forces_start_point
          hAxisConstraints hRealize.startsXp hKernelSeq hSolveSeq with
        ⟨data, hp0⟩
      have hp0Interior :
          InFaceInterior Face.xp (vecRatToReal cert.p0) := by
        rw [← hp0]
        rw [← hRealize.startsXp]
        exact data.start_interior
      exact hNotInteriorQ (XpStartInteriorQ_of_real hp0Interior)
  | badFirstHit witness =>
      simp [checkNonIdCert, hfailure, checkNonIdBadFirstHitData,
        checkAxisForcesForcedSeq] at hcheck
      rcases hcheck with ⟨⟨hCommon, hForces⟩, hFails⟩
      simp [checkNonIdCommon] at hCommon
      rcases hCommon with
        ⟨⟨⟨⟨_hValid, hWordNonId⟩, hKernel⟩, _hForcedMatches⟩, hSolve⟩
      have hSeqLinear : totalLinear seq = totalLinearOfPairWord cert.word :=
        hRealize.linear_eq
      have hSeqNonId : totalLinear seq ≠ (matId : Mat3 Rat) := by
        intro hSeqId
        apply hWordNonId
        rw [← hSeqLinear]
        exact hSeqId
      have hAxisConstraints :=
        unfolded_feasible_nonidentity_axis_constraints _hFeasible hSeqNonId
      rcases
        nonIdCert_forces_candidate_data
          (cert := cert) (seq := seq) hRealize hAxisConstraints
          hKernel hSolve hForces with
        ⟨data, hForcedEq, hp0, hw⟩
      have hFailsSeq :
          CandidateOrderingFails seq cert.p0
            (candidateWQ seq cert.p0) witness := by
        simpa [hForcedEq] using hFails
      have htCur :=
        candidateImpactTimeQ_eq_crossing_time
          (seq := seq) (p0 := cert.p0)
          (wq := candidateWQ seq cert.p0)
          (data := data) witness.step.castSucc hp0 hw
      have htNext :=
        candidateImpactTimeQ_eq_crossing_time
          (seq := seq) (p0 := cert.p0)
          (wq := candidateWQ seq cert.p0)
          (data := data) (nextImpact witness.step) hp0 hw
      have hIndexLt :
          (witness.step.castSucc : Impact15) < nextImpact witness.step := by
        change witness.step.val < witness.step.val + 1
        omega
      have hStrict := data.increasing hIndexLt
      rw [htCur, htNext] at hStrict
      have hFailsR :
          ((candidateImpactTimeQ seq cert.p0
              (candidateWQ seq cert.p0) (nextImpact witness.step) : Rat) :
                Real) <=
            ((candidateImpactTimeQ seq cert.p0
              (candidateWQ seq cert.p0) witness.step.castSucc : Rat) :
                Real) := by
        exact_mod_cast hFailsSeq
      linarith
  | badHitInterior witness =>
      simp [checkNonIdCert, hfailure, checkNonIdBadHitInteriorData,
        checkAxisForcesForcedSeq] at hcheck
      rcases hcheck with ⟨⟨hCommon, hForces⟩, hFails⟩
      simp [checkNonIdCommon] at hCommon
      rcases hCommon with
        ⟨⟨⟨⟨_hValid, hWordNonId⟩, hKernel⟩, _hForcedMatches⟩, hSolve⟩
      have hSeqLinear : totalLinear seq = totalLinearOfPairWord cert.word :=
        hRealize.linear_eq
      have hSeqNonId : totalLinear seq ≠ (matId : Mat3 Rat) := by
        intro hSeqId
        apply hWordNonId
        rw [← hSeqLinear]
        exact hSeqId
      have hAxisConstraints :=
        unfolded_feasible_nonidentity_axis_constraints _hFeasible hSeqNonId
      rcases
        nonIdCert_forces_candidate_data
          (cert := cert) (seq := seq) hRealize hAxisConstraints
          hKernel hSolve hForces with
        ⟨data, hForcedEq, hp0, hw⟩
      have hFailsSeq :
          CandidateHitInteriorFails seq cert.p0
            (candidateWQ seq cert.p0) witness := by
        simpa [hForcedEq] using hFails
      rcases hFailsSeq with ⟨hBadFace, hOffsetLe⟩
      have hStrict :=
        copied_strict_halfspace_of_unfolded_interior
          (data.pre_impact_hit_conditions witness.impact) hBadFace
      have hTime :=
        candidateImpactTimeQ_eq_crossing_time
          (seq := seq) (p0 := cert.p0)
          (wq := candidateWQ seq cert.p0)
          (data := data) witness.impact hp0 hw
      rw [hp0, hw, hTime] at hStrict
      have hLine :
          linePoint (vecRatToReal cert.p0)
              (vecRatToReal (candidateWQ seq cert.p0))
              ((candidateImpactTimeQ seq cert.p0
                (candidateWQ seq cert.p0) witness.impact : Rat) : Real) =
            vecRatToReal
              (candidateLinePointQ cert.p0 (candidateWQ seq cert.p0)
                (candidateImpactTimeQ seq cert.p0
                  (candidateWQ seq cert.p0) witness.impact)) := by
        apply Vec3.ext <;>
          simp [linePoint, candidateLinePointQ, vecRatToReal, Vec3.map,
            vecAdd, scalarMul]
      rw [hLine] at hStrict
      have hOffsetLeR :
          ((copiedOffsetQ seq witness.impact witness.badFace : Rat) :
              Real) <=
            dot (vecRatToReal
                (copiedNormalQ seq witness.impact witness.badFace))
              (vecRatToReal
                (candidateLinePointQ cert.p0 (candidateWQ seq cert.p0)
                  (candidateImpactTimeQ seq cert.p0
                    (candidateWQ seq cert.p0) witness.impact))) := by
        have hOffsetLeCast :
            ((copiedOffsetQ seq witness.impact witness.badFace : Rat) :
                Real) <=
              ((dot (copiedNormalQ seq witness.impact witness.badFace)
                (candidateLinePointQ cert.p0 (candidateWQ seq cert.p0)
                  (candidateImpactTimeQ seq cert.p0
                    (candidateWQ seq cert.p0) witness.impact)) : Rat) :
                  Real) := by
          exact_mod_cast hOffsetLe
        simpa [vecRatToReal, Vec3.map, dot] using hOffsetLeCast
      linarith

theorem generated_nonidentity_complete_of_coverage
    (coverage : ExhaustiveGeneratedCoverage) :
    forall seq : Step14 -> Face,
      IsOmniSeq seq ->
      StartsXp seq ->
      totalLinear seq ≠ (matId : Mat3 Rat) ->
      ¬ UnfoldedFeasible seq := by
  intro seq hOmni hStart hM hFeasible
  rcases seq_to_pairword seq hOmni hStart with ⟨w, hValid, hMatch⟩
  let hRealize : SeqRealizesPairWord w seq := {
    valid := hValid
    startsXp := hStart
    pair_matches := hMatch
    omni := hOmni
  }
  have hWordNonId :
      totalLinearOfPairWord w ≠ (matId : Mat3 Rat) := by
    intro hWordId
    apply hM
    rw [hRealize.linear_eq, hWordId]
  rcases coverage.nonidentity_failure_of_valid w hValid hWordNonId with
    ⟨cert, hCertWord, hCertCheck⟩
  have hCertRealize : SeqRealizesPairWord cert.word seq := by
    simpa [hCertWord] using hRealize
  exact (checkNonIdCert_sound cert hCertCheck)
    ⟨seq, hCertRealize, hStart, hM, hFeasible⟩

theorem generated_translation_complete_of_coverage
    (coverage : ExhaustiveGeneratedCoverage) :
    forall seq : Step14 -> Face,
      IsOmniSeq seq ->
      StartsXp seq ->
      totalLinear seq = (matId : Mat3 Rat) ->
      ¬ UnfoldedFeasible seq := by
  intro seq hOmni hStart hM hFeasible
  rcases seq_to_pairword seq hOmni hStart with ⟨w, hValid, hMatch⟩
  let hRealize : SeqRealizesPairWord w seq := {
    valid := hValid
    startsXp := hStart
    pair_matches := hMatch
    omni := hOmni
  }
  have hWordId :
      totalLinearOfPairWord w = (matId : Mat3 Rat) :=
    hRealize.linear_eq.symm.trans hM
  rcases translation_mask_exists_of_omni_seq hRealize with
    ⟨mask, hChoice⟩
  rcases coverage.translation_failure_of_valid w mask hValid hWordId with
    ⟨cert, hCertWord, hCertMask, hCertCheck⟩
  have hCertChoice :
      SeqRealizesTranslationChoice cert.word cert.signMask seq := by
    simpa [hCertWord, hCertMask] using hChoice
  exact (checkTranslationCert_sound cert hCertCheck)
    ⟨seq, hCertChoice, hM, hFeasible⟩

theorem no_unfolded_omni_starting_xp_of_coverage
    (coverage : ExhaustiveGeneratedCoverage) :
    forall seq : Step14 -> Face,
      IsOmniSeq seq ->
      StartsXp seq ->
      ¬ UnfoldedFeasible seq := by
  intro seq hOmni hStart hFeasible
  by_cases hM : totalLinear seq = (matId : Mat3 Rat)
  · exact generated_translation_complete_of_coverage coverage
      seq hOmni hStart hM hFeasible
  · exact generated_nonidentity_complete_of_coverage coverage
      seq hOmni hStart hM hFeasible

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

theorem tinyBadPairBalanceNonIdCert_check :
    checkNonIdCert tinyBadPairBalanceNonIdCert = true := by
  have hInvalid :
      checkNonIdInvalidPairWordFailure tinyBadPairBalanceNonIdCert = true := by
    simp [checkNonIdInvalidPairWordFailure, tinyBadPairBalanceNonIdCert,
      sampleNonIdentityTranslationWord_totalLinear_ne_id,
      sampleNonIdentityTranslationWord_not_valid]
  simp [checkNonIdCert, tinyBadPairBalanceNonIdCert,
    checkNonIdPairBalanceFailure]
  exact Or.inl hInvalid

example :
    ¬ exists seq,
      SeqRealizesPairWord tinyBadPairBalanceNonIdCert.word seq /\
        StartsXp seq /\
        totalLinear seq ≠ (matId : Mat3 Rat) /\
        UnfoldedFeasible seq :=
  checkNonIdCert_sound tinyBadPairBalanceNonIdCert
    tinyBadPairBalanceNonIdCert_check

example : checkFarkas tinyContradictionConstraints tinyContradictionCert = true := by
  norm_num [checkFarkas, checkFarkasTerm, checkFarkasPositive,
    tinyContradictionConstraints, tinyContradictionCert, weightedSum,
    termLinear, constraintAt, StrictLin2.add, StrictLin2.scale, StrictLin2.zero]

#check translation_feasible_implies_constraints
#check checkTranslationCert
#check checkTranslationCert_sound
#check checkNonIdCert
#check checkForcedSeqMatchesWord_sound
#check nonIdCert_forcedSeq_exact_of_signed_normals
#check checkNonIdCert_sound

end Cuboctahedron
