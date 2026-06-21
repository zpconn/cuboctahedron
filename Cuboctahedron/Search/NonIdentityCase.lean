import Cuboctahedron.Geometry.UnfoldingFeasible
import Cuboctahedron.Search.Itineraries

/-!
Pair-word linear products and the non-identity side of the finite case split.
-/

namespace Cuboctahedron

def pairAtStartedIndex (w : PairWord) (i : Step14) : PairId :=
  if h : i = 0 then PairId.x else w.get (dropStart i h)

def canonicalSeqOfPairWord (w : PairWord) : Step14 -> Face :=
  fun i => faceOfPairSign (pairAtStartedIndex w i) true

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

def totalLinearOfPairWord (w : PairWord) : Mat3 Rat :=
  pairLinearProductRight w

def IsNonIdentityLinear (w : PairWord) : Prop :=
  totalLinearOfPairWord w ≠ (matId : Mat3 Rat)

structure NonIdentityAxisConstraints (seq : Step14 -> Face) : Prop where
  total_nonidentity : totalLinear seq ≠ (matId : Mat3 Rat)
  line_data :
    exists data : UnfoldedFeasibleData seq,
      data.w ≠ zeroVec3R /\
      InFaceInterior (seq 0) data.p0 /\
      linePoint data.p0 data.w 1 =
        affApply (affRatToReal (totalAff seq)) data.p0 /\
      matVec (affRatToReal (totalAff seq)).M data.w = data.w /\
      PreImpactForward seq data.w /\
      PreImpactForwardAll seq data.w /\
      (forall i : Impact15,
        InUnfoldedImpactFaceInterior seq i
          (linePoint data.p0 data.w (data.crossing_times i))) /\
      (forall i : Impact15,
        InPreUnfoldedImpactFaceInterior seq i
          (linePoint data.p0 data.w (data.crossing_times i))) /\
      PreImpactOpenSegmentInterior seq data.p0 data.w data.crossing_times /\
        forall i : Step14,
          InUnfoldedFaceInterior seq i
            (linePoint data.p0 data.w
              (data.crossing_times i.castSucc))

theorem unfolded_feasible_nonidentity_axis_constraints
    {seq : Step14 -> Face}
    (hFeasible : UnfoldedFeasible seq)
    (hNonIdentity : totalLinear seq ≠ (matId : Mat3 Rat)) :
    NonIdentityAxisConstraints seq := by
  rcases hFeasible with ⟨data⟩
  exact {
    total_nonidentity := hNonIdentity
    line_data := ⟨data, data.nonzero, data.start_interior, data.endpoint_eq,
      data.direction_fixed, data.preImpact_forward, data.preImpact_forward_all,
      data.impact_hit_conditions, data.pre_impact_hit_conditions,
      data.open_segment_interior, data.hit_conditions⟩
  }

theorem nonidentity_axis_constraints_fixed_direction
    {seq : Step14 -> Face}
    (h : NonIdentityAxisConstraints seq) :
    exists data : UnfoldedFeasibleData seq,
      data.w ≠ zeroVec3R /\
      matVec (affRatToReal (totalAff seq)).M data.w = data.w := by
  rcases h.line_data with
    ⟨data, hNonzero, _hStart, _hEndpoint, hFixed, _hForward,
      _hForwardAll, _hImpact, _hPreImpact, _hOpen, _hHit⟩
  exact ⟨data, hNonzero, hFixed⟩

theorem nonidentity_axis_constraints_preImpact_forward
    {seq : Step14 -> Face}
    (h : NonIdentityAxisConstraints seq) :
    exists data : UnfoldedFeasibleData seq,
      PreImpactForward seq data.w /\
      forall i : Impact15,
        InPreUnfoldedImpactFaceInterior seq i
          (linePoint data.p0 data.w (data.crossing_times i)) := by
  rcases h.line_data with
    ⟨data, _hNonzero, _hStart, _hEndpoint, _hFixed, hForward,
      _hForwardAll, _hImpact, hPreImpact, _hOpen, _hHit⟩
  exact ⟨data, hForward, hPreImpact⟩

theorem nonidentity_axis_constraints_preImpact_forward_all
    {seq : Step14 -> Face}
    (h : NonIdentityAxisConstraints seq) :
    exists data : UnfoldedFeasibleData seq,
      PreImpactForwardAll seq data.w /\
      forall i : Impact15,
        InPreUnfoldedImpactFaceInterior seq i
          (linePoint data.p0 data.w (data.crossing_times i)) := by
  rcases h.line_data with
    ⟨data, _hNonzero, _hStart, _hEndpoint, _hFixed, _hForward,
      hForwardAll, _hImpact, hPreImpact, _hOpen, _hHit⟩
  exact ⟨data, hForwardAll, hPreImpact⟩

theorem nonidentity_axis_constraints_start_interior
    {seq : Step14 -> Face}
    (h : NonIdentityAxisConstraints seq) :
    exists data : UnfoldedFeasibleData seq,
      InFaceInterior (seq 0) data.p0 := by
  rcases h.line_data with
    ⟨data, _hNonzero, hStart, _hEndpoint, _hFixed, _hForward,
      _hForwardAll, _hImpact, _hPreImpact, _hOpen, _hHit⟩
  exact ⟨data, hStart⟩

@[simp] theorem pairAtStartedIndex_zero (w : PairWord) :
    pairAtStartedIndex w 0 = PairId.x := by
  simp [pairAtStartedIndex]

@[simp] theorem pairAtStartedIndex_afterStart (w : PairWord) (i : WordIndex) :
    pairAtStartedIndex w (afterStart i) = w.get i := by
  unfold pairAtStartedIndex
  simp only [dif_neg (afterStart_ne_zero i)]
  congr

@[simp] theorem canonicalSeqOfPairWord_zero (w : PairWord) :
    canonicalSeqOfPairWord w 0 = Face.xp := by
  simp [canonicalSeqOfPairWord, pairAtStartedIndex, faceOfPairSign]

@[simp] theorem pairOfFace_canonicalSeqOfPairWord (w : PairWord) (i : Step14) :
    pairOfFace (canonicalSeqOfPairWord w i) = pairAtStartedIndex w i := by
  simp [canonicalSeqOfPairWord]

theorem faceReflection_linear_eq_of_pairOfFace_eq {f g : Face}
    (h : pairOfFace f = pairOfFace g) :
    (faceReflectionQ f).M = (faceReflectionQ g).M := by
  cases f <;> cases g <;> simp [pairOfFace] at h ⊢ <;>
    apply Mat3.ext <;>
    simp [faceReflectionQ, reflM, normalQ, offsetQ, matSub, scalarMat, outer,
      matId, dot]

theorem pairOfFace_eq_canonical_of_matches
    (seq : Step14 -> Face) (w : PairWord)
    (hStart : StartsXp seq)
    (hMatch : PairWordMatchesSeq w seq) :
    forall i : Step14,
      pairOfFace (seq i) = pairOfFace (canonicalSeqOfPairWord w i) := by
  intro i
  by_cases hi : i = 0
  · subst i
    rw [hStart]
    rfl
  · have hm := hMatch (dropStart i hi)
    rw [afterStart_dropStart i hi] at hm
    simpa [canonicalSeqOfPairWord, pairAtStartedIndex, hi] using hm.symm

theorem composeFaceList_linear_eq_of_pairwise_pair
    (seq canon : Step14 -> Face)
    (is : List Step14)
    (h : forall i : Step14, pairOfFace (seq i) = pairOfFace (canon i)) :
    (composeFaceList seq is).M = (composeFaceList canon is).M := by
  induction is with
  | nil => rfl
  | cons i is ih =>
      simp [composeFaceList, affCompose]
      rw [faceReflection_linear_eq_of_pairOfFace_eq (h i), ih]

theorem totalLinear_canonicalSeqOfPairWord_eq_pairLinearProductRight
    (w : PairWord) :
    totalLinear (canonicalSeqOfPairWord w) = pairLinearProductRight w := by
  unfold totalLinear totalAff totalOrder
  unfold pairLinearProductRight pairLinearSuffixNat canonicalSeqOfPairWord
  simp [pairLinearSuffixNat, composeFaceList, affCompose, faceReflectionQ,
    normalQ_faceOfPairSign_true, offsetQ, affId, matMul_matId,
    pairAtStartedIndex, dropStart]

theorem totalLinear_eq_totalLinearOfPairWord
    {seq : Step14 -> Face} {w : PairWord}
    (hStart : StartsXp seq)
    (hMatch : PairWordMatchesSeq w seq) :
    totalLinear seq = totalLinearOfPairWord w := by
  unfold totalLinearOfPairWord
  calc
    totalLinear seq = totalLinear (canonicalSeqOfPairWord w) := by
      unfold totalLinear totalAff
      exact composeFaceList_linear_eq_of_pairwise_pair
        seq (canonicalSeqOfPairWord w) totalOrder
        (pairOfFace_eq_canonical_of_matches seq w hStart hMatch)
    _ = pairLinearProductRight w :=
      totalLinear_canonicalSeqOfPairWord_eq_pairLinearProductRight w

theorem seq_to_pairword_with_linear
    (seq : Step14 -> Face)
    (hOmni : IsOmniSeq seq)
    (hStart : StartsXp seq) :
    exists w : PairWord,
      ValidPairWord w /\ PairWordMatchesSeq w seq /\
        totalLinear seq = totalLinearOfPairWord w := by
  rcases seq_to_pairword seq hOmni hStart with ⟨w, hValid, hMatch⟩
  exact ⟨w, hValid, hMatch, totalLinear_eq_totalLinearOfPairWord hStart hMatch⟩

def vec3NonzeroQ (v : Vec3 Rat) : Prop :=
  v.x ≠ 0 \/ v.y ≠ 0 \/ v.z ≠ 0

def checkVec3NonzeroQ (v : Vec3 Rat) : Bool :=
  decide (v.x ≠ (0 : Rat)) ||
    decide (v.y ≠ (0 : Rat)) ||
    decide (v.z ≠ (0 : Rat))

def fixedPart (M : Mat3 Rat) : Mat3 Rat :=
  matSub M (matId : Mat3 Rat)

def crossLeftMatrix (axis : Vec3 Rat) : Mat3 Rat where
  m00 := 0
  m01 := -axis.z
  m02 := axis.y
  m10 := axis.z
  m11 := 0
  m12 := -axis.x
  m20 := -axis.y
  m21 := axis.x
  m22 := 0

theorem matVec_crossLeftMatrix (axis v : Vec3 Rat) :
    matVec (crossLeftMatrix axis) v = cross axis v := by
  apply Vec3.ext <;> simp [crossLeftMatrix, matVec, cross] <;> ring

structure KernelLineWitness where
  crossFactor : Mat3 Rat
deriving DecidableEq, Repr

def checkKernelLineWitness
    (M : Mat3 Rat) (axis : Vec3 Rat) (witness : KernelLineWitness) : Bool :=
  checkVec3NonzeroQ axis &&
    decide (matVec M axis = axis) &&
    decide (matMul witness.crossFactor (fixedPart M) = crossLeftMatrix axis)

theorem checkVec3NonzeroQ_sound {v : Vec3 Rat}
    (h : checkVec3NonzeroQ v = true) :
    vec3NonzeroQ v := by
  unfold checkVec3NonzeroQ at h
  unfold vec3NonzeroQ
  simp only [Bool.or_eq_true, decide_eq_true_eq] at h
  simpa [or_assoc] using h

theorem vecRatToReal_ne_zero_of_nonzeroQ {v : Vec3 Rat}
    (h : vec3NonzeroQ v) :
    vecRatToReal v ≠ zeroVec3R := by
  intro hz
  rcases h with hx | hy | hzq
  · apply hx
    have hzx := congrArg Vec3.x hz
    simpa [vecRatToReal, zeroVec3R] using hzx
  · apply hy
    have hzy := congrArg Vec3.y hz
    simpa [vecRatToReal, zeroVec3R] using hzy
  · apply hzq
    have hzz := congrArg Vec3.z hz
    simpa [vecRatToReal, zeroVec3R] using hzz

theorem matVec_ratToReal3 (M : Mat3 Rat) (v : Vec3 Rat) :
    matVec (M.map fun q => (q : Real)) (vecRatToReal v) =
      vecRatToReal (matVec M v) := by
  apply Vec3.ext <;> simp [matVec, vecRatToReal, Mat3.map, Vec3.map]

theorem matMul_ratToReal3 (A B : Mat3 Rat) :
    (matMul A B).map (fun q => (q : Real)) =
      matMul (A.map fun q => (q : Real)) (B.map fun q => (q : Real)) := by
  apply Mat3.ext <;> simp [Mat3.map, matMul]

theorem fixedPart_real_zero_of_fixed
    (M : Mat3 Rat) {w : Vec3 Real}
    (hfix : matVec (M.map fun q => (q : Real)) w = w) :
    matVec ((fixedPart M).map fun q => (q : Real)) w = zeroVec3R := by
  apply Vec3.ext
  · have hx := congrArg Vec3.x hfix
    simp [fixedPart, matSub, matId, matVec, Mat3.map, zeroVec3R] at hx ⊢
    linarith
  · have hy := congrArg Vec3.y hfix
    simp [fixedPart, matSub, matId, matVec, Mat3.map, zeroVec3R] at hy ⊢
    linarith
  · have hz := congrArg Vec3.z hfix
    simp [fixedPart, matSub, matId, matVec, Mat3.map, zeroVec3R] at hz ⊢
    linarith

theorem matVec_zeroVec3R (M : Mat3 Real) :
    matVec M zeroVec3R = zeroVec3R := by
  apply Vec3.ext <;> simp [matVec, zeroVec3R]

structure NoFixedVectorWitness where
  leftInverse : Mat3 Rat
deriving DecidableEq, Repr

def checkNoFixedVectorWitness
    (M : Mat3 Rat) (witness : NoFixedVectorWitness) : Bool :=
  decide (matMul witness.leftInverse (fixedPart M) = (matId : Mat3 Rat))

theorem checkNoFixedVectorWitness_real_zero
    {M : Mat3 Rat} {witness : NoFixedVectorWitness}
    (hcheck : checkNoFixedVectorWitness M witness = true)
    {w : Vec3 Real}
    (hfix : matVec (M.map fun q => (q : Real)) w = w) :
    w = zeroVec3R := by
  have hleft :
      matMul witness.leftInverse (fixedPart M) = (matId : Mat3 Rat) := by
    simpa [checkNoFixedVectorWitness] using hcheck
  have hleftR :
      matMul (witness.leftInverse.map fun q => (q : Real))
          ((fixedPart M).map fun q => (q : Real)) =
        (matId : Mat3 Real) := by
    rw [← matMul_ratToReal3, hleft]
    apply Mat3.ext <;> simp [Mat3.map, matId]
  have hz := fixedPart_real_zero_of_fixed M hfix
  have hzero :
      matVec
          (matMul (witness.leftInverse.map fun q => (q : Real))
            ((fixedPart M).map fun q => (q : Real))) w =
        zeroVec3R := by
    rw [matVec_matMul, hz, matVec_zeroVec3R]
  rw [hleftR] at hzero
  simpa [matId_matVec] using hzero

theorem matVec_crossLeftMatrix_real (axis : Vec3 Rat) (v : Vec3 Real) :
    matVec ((crossLeftMatrix axis).map fun q => (q : Real)) v =
      cross (vecRatToReal axis) v := by
  apply Vec3.ext <;>
    simp [crossLeftMatrix, matVec, cross, vecRatToReal, Mat3.map, Vec3.map] <;>
    ring

theorem checkKernelLineWitness_axis_nonzero
    {M : Mat3 Rat} {axis : Vec3 Rat} {witness : KernelLineWitness}
    (hcheck : checkKernelLineWitness M axis witness = true) :
    vecRatToReal axis ≠ zeroVec3R := by
  have hNonzero : checkVec3NonzeroQ axis = true := by
    simp [checkKernelLineWitness] at hcheck
    exact hcheck.1.1
  exact vecRatToReal_ne_zero_of_nonzeroQ (checkVec3NonzeroQ_sound hNonzero)

theorem checkKernelLineWitness_axis_fixed
    {M : Mat3 Rat} {axis : Vec3 Rat} {witness : KernelLineWitness}
    (hcheck : checkKernelLineWitness M axis witness = true) :
    matVec (M.map fun q => (q : Real)) (vecRatToReal axis) =
      vecRatToReal axis := by
  have hAxis : matVec M axis = axis := by
    simp [checkKernelLineWitness] at hcheck
    exact hcheck.1.2
  rw [matVec_ratToReal3, hAxis]

theorem checkKernelLineWitness_real_axisLine
    {M : Mat3 Rat} {axis : Vec3 Rat} {witness : KernelLineWitness}
    (hcheck : checkKernelLineWitness M axis witness = true)
    {w : Vec3 Real}
    (hfix : matVec (M.map fun q => (q : Real)) w = w) :
    cross (vecRatToReal axis) w = zeroVec3R := by
  have hFactor : matMul witness.crossFactor (fixedPart M) = crossLeftMatrix axis := by
    simp [checkKernelLineWitness] at hcheck
    exact hcheck.2
  have hFactorR :
      matMul (witness.crossFactor.map fun q => (q : Real))
          ((fixedPart M).map fun q => (q : Real)) =
        (crossLeftMatrix axis).map fun q => (q : Real) := by
    rw [← matMul_ratToReal3, hFactor]
  have hz := fixedPart_real_zero_of_fixed M hfix
  have hzero :
      matVec
          (matMul (witness.crossFactor.map fun q => (q : Real))
            ((fixedPart M).map fun q => (q : Real))) w =
        zeroVec3R := by
    rw [matVec_matMul, hz, matVec_zeroVec3R]
  rw [hFactorR] at hzero
  simpa [matVec_crossLeftMatrix_real] using hzero

theorem cross_eq_zero_scalar_of_axis_ne_zero
    {axis w : Vec3 Real}
    (haxis : axis ≠ zeroVec3R)
    (hcross : cross axis w = zeroVec3R) :
    exists lambda : Real, w = scalarMul lambda axis := by
  have hxCross := congrArg Vec3.x hcross
  have hyCross := congrArg Vec3.y hcross
  have hzCross := congrArg Vec3.z hcross
  simp [cross, zeroVec3R] at hxCross hyCross hzCross
  by_cases hx : axis.x = 0
  · by_cases hy : axis.y = 0
    · have hz : axis.z ≠ 0 := by
        intro hzz
        apply haxis
        apply Vec3.ext <;> simp [zeroVec3R, hx, hy, hzz]
      refine ⟨w.z / axis.z, ?_⟩
      apply Vec3.ext
      · have hmul : axis.z * w.x = 0 := by
          simpa [hx] using hyCross
        have hwx : w.x = 0 := (mul_eq_zero.mp hmul).resolve_left hz
        simp [scalarMul, hx, hwx]
      · have hmul : axis.z * w.y = 0 := by
          have hneg : -(axis.z * w.y) = 0 := by
            simpa [hy] using hxCross
          nlinarith
        have hwy : w.y = 0 := (mul_eq_zero.mp hmul).resolve_left hz
        simp [scalarMul, hy, hwy]
      · simp [scalarMul]
        field_simp [hz]
    · refine ⟨w.y / axis.y, ?_⟩
      apply Vec3.ext
      · have hmul : axis.y * w.x = 0 := by
          have hneg : -(axis.y * w.x) = 0 := by
            simpa [hx] using hzCross
          nlinarith
        have hwx : w.x = 0 := (mul_eq_zero.mp hmul).resolve_left hy
        simp [scalarMul, hx, hwx]
      · simp [scalarMul]
        field_simp [hy]
      · simp [scalarMul]
        field_simp [hy]
        nlinarith [hxCross]
  · refine ⟨w.x / axis.x, ?_⟩
    apply Vec3.ext
    · simp [scalarMul]
      field_simp [hx]
    · simp [scalarMul]
      field_simp [hx]
      nlinarith
    · simp [scalarMul]
      field_simp [hx]
      nlinarith

theorem unfolded_feasible_nonidentity_forces_axis
    {seq : Step14 -> Face} {axis : Vec3 Rat} {kernel : KernelLineWitness}
    (h : NonIdentityAxisConstraints seq)
    (hKernel :
      checkKernelLineWitness (totalLinear seq) axis kernel = true) :
    exists data : UnfoldedFeasibleData seq,
      data.w ≠ zeroVec3R /\
      cross (vecRatToReal axis) data.w = zeroVec3R /\
      exists lambda : Real, data.w = scalarMul lambda (vecRatToReal axis) := by
  rcases h.line_data with
    ⟨data, hNonzero, _hStart, _hEndpoint, hFixed, _hForward,
      _hForwardAll, _hImpact, _hPreImpact, _hOpen, _hHit⟩
  have hFixed' :
      matVec ((totalLinear seq).map fun q => (q : Real)) data.w = data.w := by
    simpa [totalLinear, affRatToReal, Aff3.map] using hFixed
  have hCross :=
    checkKernelLineWitness_real_axisLine hKernel hFixed'
  have hAxisNonzero := checkKernelLineWitness_axis_nonzero hKernel
  exact ⟨data, hNonzero, hCross,
    cross_eq_zero_scalar_of_axis_ne_zero hAxisNonzero hCross⟩

theorem unfolded_feasible_nonidentity_forces_face_signs
    {seq : Step14 -> Face}
    (h : NonIdentityAxisConstraints seq) :
    exists data : UnfoldedFeasibleData seq,
      forall i : Impact15,
        i ≠ (0 : Impact15) ->
          0 < dot (preImpactNormalR seq i) data.w := by
  rcases h.line_data with
    ⟨data, _hNonzero, _hStart, _hEndpoint, _hFixed, _hForward,
      hForwardAll, _hImpact, _hPreImpact, _hOpen, _hHit⟩
  exact ⟨data, hForwardAll⟩

theorem face_eq_of_normalQ_eq {f g : Face}
    (h : normalQ f = normalQ g) :
    f = g := by
  cases f <;> cases g <;> simp [normalQ] at h ⊢ <;> norm_num at h

theorem seq_eq_of_start_and_signed_normals
    {seq forcedSeq : Step14 -> Face}
    (hStart : forcedSeq 0 = seq 0)
    (hNormals :
      forall i : Step14, i ≠ (0 : Step14) ->
        normalQ (forcedSeq i) = normalQ (seq i)) :
    forcedSeq = seq := by
  funext i
  by_cases hi : i = 0
  · subst i
    exact hStart
  · exact face_eq_of_normalQ_eq (hNormals i hi)

def ForcedSignedFaceSequence
    (seq forcedSeq : Step14 -> Face)
    (data : UnfoldedFeasibleData seq) : Prop :=
  forcedSeq = seq /\
    forall i : Impact15,
      i ≠ (0 : Impact15) ->
        0 < dot (preImpactNormalR seq i) data.w

theorem unfolded_feasible_nonidentity_forces_exact_sequence
    {seq forcedSeq : Step14 -> Face}
    (h : NonIdentityAxisConstraints seq)
    (hStart : forcedSeq 0 = seq 0)
    (hNormals :
      forall i : Step14, i ≠ (0 : Step14) ->
        normalQ (forcedSeq i) = normalQ (seq i)) :
    exists data : UnfoldedFeasibleData seq,
      ForcedSignedFaceSequence seq forcedSeq data := by
  rcases h.line_data with
    ⟨data, _hNonzero, _hStart, _hEndpoint, _hFixed, _hForward,
      hForwardAll, _hImpact, _hPreImpact, _hOpen, _hHit⟩
  exact ⟨data,
    seq_eq_of_start_and_signed_normals hStart hNormals,
    hForwardAll⟩

theorem unfolded_feasible_nonidentity_first_hit_data
    {seq : Step14 -> Face}
    (h : NonIdentityAxisConstraints seq) :
    exists data : UnfoldedFeasibleData seq,
      (forall i : Impact15,
        InPreUnfoldedImpactFaceInterior seq i
          (linePoint data.p0 data.w (data.crossing_times i))) /\
      PreImpactOpenSegmentInterior seq data.p0 data.w data.crossing_times /\
      (forall i : Step14,
        InUnfoldedFaceInterior seq i
          (linePoint data.p0 data.w
            (data.crossing_times i.castSucc))) := by
  rcases h.line_data with
    ⟨data, _hNonzero, _hStart, _hEndpoint, _hFixed, _hForward,
      _hForwardAll, _hImpact, hPreImpact, hOpen, hHit⟩
  exact ⟨data, hPreImpact, hOpen, hHit⟩

structure ExactFirstHitSignData
    (seq : Step14 -> Face) (data : UnfoldedFeasibleData seq) : Prop where
  forward_signs :
    forall i : Impact15,
      i ≠ (0 : Impact15) ->
        0 < dot (preImpactNormalR seq i) data.w
  impact_hits :
    forall i : Impact15,
      InPreUnfoldedImpactFaceInterior seq i
        (linePoint data.p0 data.w (data.crossing_times i))
  open_segments :
    PreImpactOpenSegmentInterior seq data.p0 data.w data.crossing_times
  intended_hits :
    forall i : Step14,
      InUnfoldedFaceInterior seq i
        (linePoint data.p0 data.w
          (data.crossing_times i.castSucc))

theorem unfolded_feasible_nonidentity_exact_first_hit_sign_data
    {seq : Step14 -> Face}
    (h : NonIdentityAxisConstraints seq) :
    exists data : UnfoldedFeasibleData seq,
      ExactFirstHitSignData seq data := by
  rcases h.line_data with
    ⟨data, _hNonzero, _hStart, _hEndpoint, _hFixed, _hForward,
      hForwardAll, _hImpact, hPreImpact, hOpen, hHit⟩
  exact ⟨data, {
    forward_signs := hForwardAll
    impact_hits := hPreImpact
    open_segments := hOpen
    intended_hits := hHit
  }⟩

structure Vec4 where
  x0 : Rat
  x1 : Rat
  x2 : Rat
  x3 : Rat
deriving DecidableEq, Repr, Inhabited

namespace Vec4

theorem ext {a b : Vec4}
    (h0 : a.x0 = b.x0) (h1 : a.x1 = b.x1)
    (h2 : a.x2 = b.x2) (h3 : a.x3 = b.x3) : a = b := by
  cases a
  cases b
  simp_all

end Vec4

structure Mat4 where
  m00 : Rat
  m01 : Rat
  m02 : Rat
  m03 : Rat
  m10 : Rat
  m11 : Rat
  m12 : Rat
  m13 : Rat
  m20 : Rat
  m21 : Rat
  m22 : Rat
  m23 : Rat
  m30 : Rat
  m31 : Rat
  m32 : Rat
  m33 : Rat
deriving DecidableEq, Repr, Inhabited

namespace Mat4

theorem ext {A B : Mat4}
    (h00 : A.m00 = B.m00) (h01 : A.m01 = B.m01)
    (h02 : A.m02 = B.m02) (h03 : A.m03 = B.m03)
    (h10 : A.m10 = B.m10) (h11 : A.m11 = B.m11)
    (h12 : A.m12 = B.m12) (h13 : A.m13 = B.m13)
    (h20 : A.m20 = B.m20) (h21 : A.m21 = B.m21)
    (h22 : A.m22 = B.m22) (h23 : A.m23 = B.m23)
    (h30 : A.m30 = B.m30) (h31 : A.m31 = B.m31)
    (h32 : A.m32 = B.m32) (h33 : A.m33 = B.m33) : A = B := by
  cases A
  cases B
  simp_all

end Mat4

def mat4Id : Mat4 where
  m00 := 1; m01 := 0; m02 := 0; m03 := 0
  m10 := 0; m11 := 1; m12 := 0; m13 := 0
  m20 := 0; m21 := 0; m22 := 1; m23 := 0
  m30 := 0; m31 := 0; m32 := 0; m33 := 1

def mat4Vec (A : Mat4) (v : Vec4) : Vec4 where
  x0 := A.m00 * v.x0 + A.m01 * v.x1 + A.m02 * v.x2 + A.m03 * v.x3
  x1 := A.m10 * v.x0 + A.m11 * v.x1 + A.m12 * v.x2 + A.m13 * v.x3
  x2 := A.m20 * v.x0 + A.m21 * v.x1 + A.m22 * v.x2 + A.m23 * v.x3
  x3 := A.m30 * v.x0 + A.m31 * v.x1 + A.m32 * v.x2 + A.m33 * v.x3

def mat4Mul (A B : Mat4) : Mat4 where
  m00 := A.m00 * B.m00 + A.m01 * B.m10 + A.m02 * B.m20 + A.m03 * B.m30
  m01 := A.m00 * B.m01 + A.m01 * B.m11 + A.m02 * B.m21 + A.m03 * B.m31
  m02 := A.m00 * B.m02 + A.m01 * B.m12 + A.m02 * B.m22 + A.m03 * B.m32
  m03 := A.m00 * B.m03 + A.m01 * B.m13 + A.m02 * B.m23 + A.m03 * B.m33
  m10 := A.m10 * B.m00 + A.m11 * B.m10 + A.m12 * B.m20 + A.m13 * B.m30
  m11 := A.m10 * B.m01 + A.m11 * B.m11 + A.m12 * B.m21 + A.m13 * B.m31
  m12 := A.m10 * B.m02 + A.m11 * B.m12 + A.m12 * B.m22 + A.m13 * B.m32
  m13 := A.m10 * B.m03 + A.m11 * B.m13 + A.m12 * B.m23 + A.m13 * B.m33
  m20 := A.m20 * B.m00 + A.m21 * B.m10 + A.m22 * B.m20 + A.m23 * B.m30
  m21 := A.m20 * B.m01 + A.m21 * B.m11 + A.m22 * B.m21 + A.m23 * B.m31
  m22 := A.m20 * B.m02 + A.m21 * B.m12 + A.m22 * B.m22 + A.m23 * B.m32
  m23 := A.m20 * B.m03 + A.m21 * B.m13 + A.m22 * B.m23 + A.m23 * B.m33
  m30 := A.m30 * B.m00 + A.m31 * B.m10 + A.m32 * B.m20 + A.m33 * B.m30
  m31 := A.m30 * B.m01 + A.m31 * B.m11 + A.m32 * B.m21 + A.m33 * B.m31
  m32 := A.m30 * B.m02 + A.m31 * B.m12 + A.m32 * B.m22 + A.m33 * B.m32
  m33 := A.m30 * B.m03 + A.m31 * B.m13 + A.m32 * B.m23 + A.m33 * B.m33

def axisSolveMatrix (A : Aff3 Rat) (axis : Vec3 Rat) : Mat4 where
  m00 := A.M.m00 - 1
  m01 := A.M.m01
  m02 := A.M.m02
  m03 := -axis.x
  m10 := A.M.m10
  m11 := A.M.m11 - 1
  m12 := A.M.m12
  m13 := -axis.y
  m20 := A.M.m20
  m21 := A.M.m21
  m22 := A.M.m22 - 1
  m23 := -axis.z
  m30 := 1
  m31 := 0
  m32 := 0
  m33 := 0

def axisSolveRhs (A : Aff3 Rat) : Vec4 where
  x0 := -A.b.x
  x1 := -A.b.y
  x2 := -A.b.z
  x3 := 1

def axisSolveVector (p0 : Vec3 Rat) (lambda : Rat) : Vec4 where
  x0 := p0.x
  x1 := p0.y
  x2 := p0.z
  x3 := lambda

structure AffineAxisSolveWitness where
  leftInverse : Mat4
deriving DecidableEq, Repr

def checkAffineAxisSolveWitness
    (A : Aff3 Rat) (axis p0 : Vec3 Rat) (lambda : Rat)
    (witness : AffineAxisSolveWitness) : Bool :=
  decide (mat4Mul witness.leftInverse (axisSolveMatrix A axis) = mat4Id) &&
    decide (mat4Vec (axisSolveMatrix A axis) (axisSolveVector p0 lambda) =
      axisSolveRhs A)

structure Vec4R where
  x0 : Real
  x1 : Real
  x2 : Real
  x3 : Real
deriving Inhabited

namespace Vec4R

theorem ext {a b : Vec4R}
    (h0 : a.x0 = b.x0) (h1 : a.x1 = b.x1)
    (h2 : a.x2 = b.x2) (h3 : a.x3 = b.x3) : a = b := by
  cases a
  cases b
  simp_all

end Vec4R

structure Mat4R where
  m00 : Real
  m01 : Real
  m02 : Real
  m03 : Real
  m10 : Real
  m11 : Real
  m12 : Real
  m13 : Real
  m20 : Real
  m21 : Real
  m22 : Real
  m23 : Real
  m30 : Real
  m31 : Real
  m32 : Real
  m33 : Real
deriving Inhabited

namespace Mat4R

theorem ext {A B : Mat4R}
    (h00 : A.m00 = B.m00) (h01 : A.m01 = B.m01)
    (h02 : A.m02 = B.m02) (h03 : A.m03 = B.m03)
    (h10 : A.m10 = B.m10) (h11 : A.m11 = B.m11)
    (h12 : A.m12 = B.m12) (h13 : A.m13 = B.m13)
    (h20 : A.m20 = B.m20) (h21 : A.m21 = B.m21)
    (h22 : A.m22 = B.m22) (h23 : A.m23 = B.m23)
    (h30 : A.m30 = B.m30) (h31 : A.m31 = B.m31)
    (h32 : A.m32 = B.m32) (h33 : A.m33 = B.m33) : A = B := by
  cases A
  cases B
  simp_all

end Mat4R

def vec4RatToReal (v : Vec4) : Vec4R where
  x0 := v.x0
  x1 := v.x1
  x2 := v.x2
  x3 := v.x3

def mat4RatToReal (A : Mat4) : Mat4R where
  m00 := A.m00; m01 := A.m01; m02 := A.m02; m03 := A.m03
  m10 := A.m10; m11 := A.m11; m12 := A.m12; m13 := A.m13
  m20 := A.m20; m21 := A.m21; m22 := A.m22; m23 := A.m23
  m30 := A.m30; m31 := A.m31; m32 := A.m32; m33 := A.m33

def mat4IdR : Mat4R where
  m00 := 1; m01 := 0; m02 := 0; m03 := 0
  m10 := 0; m11 := 1; m12 := 0; m13 := 0
  m20 := 0; m21 := 0; m22 := 1; m23 := 0
  m30 := 0; m31 := 0; m32 := 0; m33 := 1

def mat4VecR (A : Mat4R) (v : Vec4R) : Vec4R where
  x0 := A.m00 * v.x0 + A.m01 * v.x1 + A.m02 * v.x2 + A.m03 * v.x3
  x1 := A.m10 * v.x0 + A.m11 * v.x1 + A.m12 * v.x2 + A.m13 * v.x3
  x2 := A.m20 * v.x0 + A.m21 * v.x1 + A.m22 * v.x2 + A.m23 * v.x3
  x3 := A.m30 * v.x0 + A.m31 * v.x1 + A.m32 * v.x2 + A.m33 * v.x3

def mat4MulR (A B : Mat4R) : Mat4R where
  m00 := A.m00 * B.m00 + A.m01 * B.m10 + A.m02 * B.m20 + A.m03 * B.m30
  m01 := A.m00 * B.m01 + A.m01 * B.m11 + A.m02 * B.m21 + A.m03 * B.m31
  m02 := A.m00 * B.m02 + A.m01 * B.m12 + A.m02 * B.m22 + A.m03 * B.m32
  m03 := A.m00 * B.m03 + A.m01 * B.m13 + A.m02 * B.m23 + A.m03 * B.m33
  m10 := A.m10 * B.m00 + A.m11 * B.m10 + A.m12 * B.m20 + A.m13 * B.m30
  m11 := A.m10 * B.m01 + A.m11 * B.m11 + A.m12 * B.m21 + A.m13 * B.m31
  m12 := A.m10 * B.m02 + A.m11 * B.m12 + A.m12 * B.m22 + A.m13 * B.m32
  m13 := A.m10 * B.m03 + A.m11 * B.m13 + A.m12 * B.m23 + A.m13 * B.m33
  m20 := A.m20 * B.m00 + A.m21 * B.m10 + A.m22 * B.m20 + A.m23 * B.m30
  m21 := A.m20 * B.m01 + A.m21 * B.m11 + A.m22 * B.m21 + A.m23 * B.m31
  m22 := A.m20 * B.m02 + A.m21 * B.m12 + A.m22 * B.m22 + A.m23 * B.m32
  m23 := A.m20 * B.m03 + A.m21 * B.m13 + A.m22 * B.m23 + A.m23 * B.m33
  m30 := A.m30 * B.m00 + A.m31 * B.m10 + A.m32 * B.m20 + A.m33 * B.m30
  m31 := A.m30 * B.m01 + A.m31 * B.m11 + A.m32 * B.m21 + A.m33 * B.m31
  m32 := A.m30 * B.m02 + A.m31 * B.m12 + A.m32 * B.m22 + A.m33 * B.m32
  m33 := A.m30 * B.m03 + A.m31 * B.m13 + A.m32 * B.m23 + A.m33 * B.m33

theorem mat4IdR_vec (v : Vec4R) :
    mat4VecR mat4IdR v = v := by
  apply Vec4R.ext <;> simp [mat4VecR, mat4IdR]

theorem mat4VecR_mul (A B : Mat4R) (v : Vec4R) :
    mat4VecR (mat4MulR A B) v = mat4VecR A (mat4VecR B v) := by
  apply Vec4R.ext <;> simp [mat4VecR, mat4MulR] <;> ring

theorem mat4Mul_ratToReal (A B : Mat4) :
    mat4RatToReal (mat4Mul A B) =
      mat4MulR (mat4RatToReal A) (mat4RatToReal B) := by
  apply Mat4R.ext <;> simp [mat4RatToReal, mat4Mul, mat4MulR]

theorem mat4Vec_ratToReal (A : Mat4) (v : Vec4) :
    mat4VecR (mat4RatToReal A) (vec4RatToReal v) =
      vec4RatToReal (mat4Vec A v) := by
  apply Vec4R.ext <;> simp [mat4VecR, mat4RatToReal, vec4RatToReal, mat4Vec]

theorem mat4Id_ratToReal :
    mat4RatToReal mat4Id = mat4IdR := by
  apply Mat4R.ext <;> simp [mat4RatToReal, mat4Id, mat4IdR]

def axisSolveVectorR (p0 : Vec3 Real) (lambda : Real) : Vec4R where
  x0 := p0.x
  x1 := p0.y
  x2 := p0.z
  x3 := lambda

theorem checkAffineAxisSolveWitness_real_unique
    {A : Aff3 Rat} {axis p0 : Vec3 Rat} {lambda : Rat}
    {witness : AffineAxisSolveWitness}
    (hcheck : checkAffineAxisSolveWitness A axis p0 lambda witness = true)
    {y : Vec4R}
    (hy :
      mat4VecR (mat4RatToReal (axisSolveMatrix A axis)) y =
        vec4RatToReal (axisSolveRhs A)) :
    y = vec4RatToReal (axisSolveVector p0 lambda) := by
  have hleft :
      mat4Mul witness.leftInverse (axisSolveMatrix A axis) = mat4Id := by
    simp [checkAffineAxisSolveWitness] at hcheck
    exact hcheck.1
  have hsol :
      mat4Vec (axisSolveMatrix A axis) (axisSolveVector p0 lambda) =
        axisSolveRhs A := by
    simp [checkAffineAxisSolveWitness] at hcheck
    exact hcheck.2
  have hleftR :
      mat4MulR (mat4RatToReal witness.leftInverse)
          (mat4RatToReal (axisSolveMatrix A axis)) =
        mat4IdR := by
    rw [← mat4Mul_ratToReal, hleft, mat4Id_ratToReal]
  have hsolR :
      mat4VecR (mat4RatToReal (axisSolveMatrix A axis))
          (vec4RatToReal (axisSolveVector p0 lambda)) =
        vec4RatToReal (axisSolveRhs A) := by
    rw [mat4Vec_ratToReal, hsol]
  calc
    y = mat4VecR mat4IdR y := (mat4IdR_vec y).symm
    _ = mat4VecR
          (mat4MulR (mat4RatToReal witness.leftInverse)
            (mat4RatToReal (axisSolveMatrix A axis))) y := by rw [hleftR]
    _ = mat4VecR (mat4RatToReal witness.leftInverse)
          (mat4VecR (mat4RatToReal (axisSolveMatrix A axis)) y) := by
            rw [mat4VecR_mul]
    _ = mat4VecR (mat4RatToReal witness.leftInverse)
          (vec4RatToReal (axisSolveRhs A)) := by rw [hy]
    _ = mat4VecR (mat4RatToReal witness.leftInverse)
          (mat4VecR (mat4RatToReal (axisSolveMatrix A axis))
            (vec4RatToReal (axisSolveVector p0 lambda))) := by rw [hsolR]
    _ = mat4VecR
          (mat4MulR (mat4RatToReal witness.leftInverse)
            (mat4RatToReal (axisSolveMatrix A axis)))
          (vec4RatToReal (axisSolveVector p0 lambda)) := by
            rw [mat4VecR_mul]
    _ = mat4VecR mat4IdR (vec4RatToReal (axisSolveVector p0 lambda)) := by
            rw [hleftR]
    _ = vec4RatToReal (axisSolveVector p0 lambda) := mat4IdR_vec _

theorem checkAffineAxisSolveWitness_real_start_eq
    {A : Aff3 Rat} {axis certP : Vec3 Rat} {certLambda : Rat}
    {witness : AffineAxisSolveWitness}
    (hcheck : checkAffineAxisSolveWitness A axis certP certLambda witness = true)
    {p : Vec3 Real} {lambda : Real}
    (hsol :
      mat4VecR (mat4RatToReal (axisSolveMatrix A axis))
        (axisSolveVectorR p lambda) =
        vec4RatToReal (axisSolveRhs A)) :
    p = vecRatToReal certP := by
  have huniq :=
    checkAffineAxisSolveWitness_real_unique
      (A := A) (axis := axis) (p0 := certP) (lambda := certLambda)
      (witness := witness) hcheck hsol
  apply Vec3.ext
  · exact congrArg Vec4R.x0 huniq
  · exact congrArg Vec4R.x1 huniq
  · exact congrArg Vec4R.x2 huniq

theorem endpoint_axis_solve_equation
    {seq : Step14 -> Face} {axis : Vec3 Rat}
    {data : UnfoldedFeasibleData seq} {lambda : Real}
    (hStart : StartsXp seq)
    (hParallel : data.w = scalarMul lambda (vecRatToReal axis)) :
    mat4VecR (mat4RatToReal (axisSolveMatrix (totalAff seq) axis))
        (axisSolveVectorR data.p0 lambda) =
      vec4RatToReal (axisSolveRhs (totalAff seq)) := by
  have hStartInterior : InFaceInterior Face.xp data.p0 := by
    rw [← hStart]
    exact data.start_interior
  have hp0x : data.p0.x = 1 := by
    simpa [normalR, normalQ, offsetR, offsetQ, dot] using hStartInterior.1
  have hx := congrArg Vec3.x data.endpoint_eq
  have hy := congrArg Vec3.y data.endpoint_eq
  have hz := congrArg Vec3.z data.endpoint_eq
  rw [hParallel] at hx hy hz
  apply Vec4R.ext
  · simp [axisSolveMatrix, axisSolveVectorR, axisSolveRhs, mat4VecR,
      mat4RatToReal, vec4RatToReal, linePoint, affApply, affRatToReal,
      Aff3.map, Mat3.map, Vec3.map, matVec, vecAdd, scalarMul,
      vecRatToReal] at hx ⊢
    ring_nf at hx ⊢
    linarith
  · simp [axisSolveMatrix, axisSolveVectorR, axisSolveRhs, mat4VecR,
      mat4RatToReal, vec4RatToReal, linePoint, affApply, affRatToReal,
      Aff3.map, Mat3.map, Vec3.map, matVec, vecAdd, scalarMul,
      vecRatToReal] at hy ⊢
    ring_nf at hy ⊢
    linarith
  · simp [axisSolveMatrix, axisSolveVectorR, axisSolveRhs, mat4VecR,
      mat4RatToReal, vec4RatToReal, linePoint, affApply, affRatToReal,
      Aff3.map, Mat3.map, Vec3.map, matVec, vecAdd, scalarMul,
      vecRatToReal] at hz ⊢
    ring_nf at hz ⊢
    linarith
  · simp [axisSolveMatrix, axisSolveVectorR, axisSolveRhs, mat4VecR,
      mat4RatToReal, vec4RatToReal, hp0x]

theorem unfolded_feasible_nonidentity_forces_start_point
    {seq : Step14 -> Face} {axis certP : Vec3 Rat}
    {kernel : KernelLineWitness} {certLambda : Rat}
    {solve : AffineAxisSolveWitness}
    (h : NonIdentityAxisConstraints seq)
    (hStart : StartsXp seq)
    (hKernel :
      checkKernelLineWitness (totalLinear seq) axis kernel = true)
    (hSolve :
      checkAffineAxisSolveWitness (totalAff seq) axis certP certLambda solve = true) :
    exists data : UnfoldedFeasibleData seq,
      data.p0 = vecRatToReal certP := by
  rcases h.line_data with
    ⟨data, _hNonzero, _hStartInterior, _hEndpoint, hFixed, _hForward,
      _hForwardAll, _hImpact, _hPreImpact, _hOpen, _hHit⟩
  have hFixed' :
      matVec ((totalLinear seq).map fun q => (q : Real)) data.w = data.w := by
    simpa [totalLinear, affRatToReal, Aff3.map] using hFixed
  have hCross :=
    checkKernelLineWitness_real_axisLine hKernel hFixed'
  have hAxisNonzero := checkKernelLineWitness_axis_nonzero hKernel
  rcases cross_eq_zero_scalar_of_axis_ne_zero hAxisNonzero hCross with
    ⟨lambda, hParallel⟩
  have hsolveR :=
    endpoint_axis_solve_equation (seq := seq) (axis := axis)
      (data := data) (lambda := lambda) hStart hParallel
  exact ⟨data,
    checkAffineAxisSolveWitness_real_start_eq
      (A := totalAff seq) (axis := axis) (certP := certP)
      (certLambda := certLambda) (witness := solve)
      hSolve hsolveR⟩

example :
    totalLinear sampleStartedSeq =
      totalLinearOfPairWord (pairWordOfSeq sampleStartedSeq) := by
  exact totalLinear_eq_totalLinearOfPairWord rfl
    (pairWordOfSeq_matches sampleStartedSeq)

#check totalLinearOfPairWord
#check totalLinear_eq_totalLinearOfPairWord
#check checkKernelLineWitness_real_axisLine
#check checkAffineAxisSolveWitness_real_unique
#check unfolded_feasible_nonidentity_forces_axis
#check unfolded_feasible_nonidentity_forces_start_point
#check unfolded_feasible_nonidentity_forces_face_signs
#check unfolded_feasible_nonidentity_forces_exact_sequence
#check unfolded_feasible_nonidentity_first_hit_data
#check unfolded_feasible_nonidentity_exact_first_hit_sign_data
#check unfolded_feasible_nonidentity_axis_constraints

end Cuboctahedron
