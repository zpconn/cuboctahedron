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

def maskBitForPair (mask : SignMask) : PairId -> Bool
  | PairId.x => false
  | PairId.y => decide (mask.val % 2 = 1)
  | PairId.z => decide ((mask.val / 2) % 2 = 1)
  | PairId.d111 => decide ((mask.val / 4) % 2 = 1)
  | PairId.d11m => decide ((mask.val / 8) % 2 = 1)
  | PairId.d1m1 => decide ((mask.val / 16) % 2 = 1)
  | PairId.dm11 => decide ((mask.val / 32) % 2 = 1)

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
        exists cert, cert.rank = r.val /\
          cert.word = unrankPairWord r /\
          checkNonIdentityLinearCert cert = true
  translation_complete :
    forall (r : Fin numPairWords) (mask : SignMask),
      totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) ->
        exists cert, cert.rank = r.val /\
          cert.word = unrankPairWord r /\ cert.signMask = mask /\
          checkTranslationChoiceCert cert = true

theorem ExhaustiveGeneratedCoverage.nonidentity_complete_of_valid
    (coverage : ExhaustiveGeneratedCoverage)
    (w : PairWord)
    (hvalid : ValidPairWord w)
    (hM : totalLinearOfPairWord w ≠ (matId : Mat3 Rat)) :
    exists cert,
      cert.word = w /\ checkNonIdentityLinearCert cert = true := by
  rcases unrank_rank_pairword w hvalid with ⟨r, hr⟩
  have hM' :
      totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat) := by
    simpa [hr] using hM
  rcases coverage.nonidentity_complete r hM' with
    ⟨cert, _hrank, hword, hcheck⟩
  exact ⟨cert, by simpa [hr] using hword, hcheck⟩

theorem ExhaustiveGeneratedCoverage.translation_complete_of_valid
    (coverage : ExhaustiveGeneratedCoverage)
    (w : PairWord)
    (mask : SignMask)
    (hvalid : ValidPairWord w)
    (hM : totalLinearOfPairWord w = (matId : Mat3 Rat)) :
    exists cert,
      cert.word = w /\ cert.signMask = mask /\
        checkTranslationChoiceCert cert = true := by
  rcases unrank_rank_pairword w hvalid with ⟨r, hr⟩
  have hM' :
      totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) := by
    simpa [hr] using hM
  rcases coverage.translation_complete r mask hM' with
    ⟨cert, _hrank, hword, hmask, hcheck⟩
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

theorem CoverageManifest.exhaustive
    (manifest : CoverageManifest)
    (hcheck : checkCoverageManifest manifest = true) :
    ExhaustiveGeneratedCoverage := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro r
    rcases manifest.covers_pair_rank hcheck r with ⟨chunk, _hmem, hcov⟩
    exact ⟨chunk, hcov⟩
  · intro mask
    have hmask := manifest.covers_sign_mask hcheck mask
    have hcheckFacts := hcheck
    simp [checkCoverageManifest] at hcheckFacts
    simpa [CoverageManifest.CoversSignMask, hcheckFacts.2] using hmask
  · intro r h
    have _hrank := manifest.covers_pair_rank hcheck r
    refine ⟨nonIdentityLinearCertOfRank r h, ?_, ?_, ?_⟩
    · rfl
    · rfl
    · exact check_nonIdentityLinearCertOfRank r h
  · intro r mask h
    have _hrank := manifest.covers_pair_rank hcheck r
    have _hmask := manifest.covers_sign_mask hcheck mask
    refine ⟨translationChoiceCertOfRank r mask h, ?_, ?_, ?_, ?_⟩
    · rfl
    · rfl
    · rfl
    · exact check_translationChoiceCertOfRank r mask h

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
