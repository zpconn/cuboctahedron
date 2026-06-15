import Cuboctahedron.Geometry.BilliardOrbit

/-!
Forward unfolded-feasibility witnesses for billiard orbits.

The copied-face predicate records that the sampled line point is the image of a
physical face-interior impact under the exact unfolded prefix affine map.
-/

namespace Cuboctahedron

def linePoint (p0 w : Vec3 Real) (t : Real) : Vec3 Real :=
  vecAdd p0 (scalarMul t w)

def cumulativeTime (o : BilliardOrbit14) (i : Impact15) : Real :=
  (Finset.range i.val).sum fun n =>
    if h : n < 14 then o.time ⟨n, h⟩ else 0

def totalTravelTime (o : BilliardOrbit14) : Real :=
  cumulativeTime o lastImpact

noncomputable def normalizedCrossingTime (o : BilliardOrbit14) (i : Impact15) :
    Real :=
  cumulativeTime o i / totalTravelTime o

theorem totalTravelTime_pos (o : BilliardOrbit14) :
    0 < totalTravelTime o := by
  unfold totalTravelTime cumulativeTime
  change 0 < (Finset.range 14).sum (fun n =>
    if h : n < 14 then o.time ⟨n, h⟩ else 0)
  apply Finset.sum_pos
  · intro n hn
    have hnlt : n < 14 := by simpa using hn
    simp [hnlt, o.time_pos ⟨n, hnlt⟩]
  · exact ⟨0, by simp⟩

theorem normalizedCrossingTime_zero (o : BilliardOrbit14) :
    normalizedCrossingTime o 0 = 0 := by
  simp [normalizedCrossingTime, cumulativeTime]

theorem normalizedCrossingTime_last (o : BilliardOrbit14) :
    normalizedCrossingTime o lastImpact = 1 := by
  have hpos := totalTravelTime_pos o
  change totalTravelTime o / totalTravelTime o = 1
  exact div_self hpos.ne'

theorem cumulativeTime_strictMono (o : BilliardOrbit14) :
    StrictMono (cumulativeTime o) := by
  intro a b hab
  unfold cumulativeTime
  let term : Nat -> Real := fun n =>
    if h : n < 14 then o.time ⟨n, h⟩ else 0
  change (Finset.range a.val).sum term < (Finset.range b.val).sum term
  apply Finset.sum_lt_sum_of_subset
  · intro n hn
    exact Finset.mem_range.mpr (lt_trans (Finset.mem_range.mp hn) hab)
  · exact Finset.mem_range.mpr hab
  · simp
  · have ha14 : a.val < 14 := by
      have habVal : a.val < b.val := hab
      have hb15 : b.val < 15 := b.isLt
      omega
    simpa [term, ha14] using o.time_pos ⟨a.val, ha14⟩
  · intro n _hn _hnot
    by_cases hn14 : n < 14
    · exact le_of_lt (by simpa [term, hn14] using o.time_pos ⟨n, hn14⟩)
    · simp [hn14]

theorem normalizedCrossingTime_strictMono (o : BilliardOrbit14) :
    StrictMono (normalizedCrossingTime o) := by
  intro a b hab
  exact div_lt_div_of_pos_right (cumulativeTime_strictMono o hab)
    (totalTravelTime_pos o)

def unfoldedImpact (seq : Step14 -> Face) (i : Step14) (p : Vec3 Real) :
    Vec3 Real :=
  affApply (affRatToReal (pathPrefixAff seq i)) p

def impactFace (seq : Step14 -> Face) (i : Impact15) : Face :=
  if h : i.val < 14 then seq ⟨i.val, h⟩ else seq 0

def finalPathAff (seq : Step14 -> Face) : Aff3 Rat :=
  affCompose (pathPrefixAffNat seq 13) (faceReflectionQ (seq 0))

def impactCopyAff (seq : Step14 -> Face) (i : Impact15) : Aff3 Rat :=
  if h : i.val < 14 then pathPrefixAff seq ⟨i.val, h⟩ else finalPathAff seq

def unfoldedImpactAt (seq : Step14 -> Face) (i : Impact15) (p : Vec3 Real) :
    Vec3 Real :=
  affApply (affRatToReal (impactCopyAff seq i)) p

def vecRatToReal (v : Vec3 Rat) : Vec3 Real :=
  v.map fun q => (q : Real)

def preImpactCopyAff (seq : Step14 -> Face) (i : Impact15) : Aff3 Rat :=
  pathPrefixAffNat seq (i.val - 1)

def preImpactUnfoldedAt (seq : Step14 -> Face) (i : Impact15)
    (p : Vec3 Real) : Vec3 Real :=
  affApply (affRatToReal (preImpactCopyAff seq i)) p

def preImpactNormalQ (seq : Step14 -> Face) (i : Impact15) : Vec3 Rat :=
  matVec (preImpactCopyAff seq i).M (normalQ (impactFace seq i))

def preImpactNormalR (seq : Step14 -> Face) (i : Impact15) : Vec3 Real :=
  vecRatToReal (preImpactNormalQ seq i)

def transitionEndImpact (i : Step14) : Impact15 :=
  ⟨i.val + 1, by omega⟩

def segmentTime (a b s : Real) : Real :=
  a + s * (b - a)

def PreImpactForward
    (seq : Step14 -> Face) (w : Vec3 Real) : Prop :=
  forall i : Impact15,
    i ≠ (0 : Impact15) -> i ≠ lastImpact ->
      0 < dot (preImpactNormalR seq i) w

def PreImpactForwardAll
    (seq : Step14 -> Face) (w : Vec3 Real) : Prop :=
  forall i : Impact15,
    i ≠ (0 : Impact15) ->
      0 < dot (preImpactNormalR seq i) w

def PreservesDot (M : Mat3 Real) : Prop :=
  forall u v : Vec3 Real, dot (matVec M u) (matVec M v) = dot u v

theorem matId_preservesDot : PreservesDot (matId : Mat3 Real) := by
  intro u v
  simp [matId_matVec]

theorem matMul_preservesDot {A B : Mat3 Real}
    (hA : PreservesDot A) (hB : PreservesDot B) :
    PreservesDot (matMul A B) := by
  intro u v
  rw [matVec_matMul, matVec_matMul, hA, hB]

theorem faceReflection_preservesDot (f : Face) :
    PreservesDot (affRatToReal (faceReflectionQ f)).M := by
  cases f <;>
    intro u v <;>
    simp [affRatToReal, faceReflectionQ, reflM, reflD,
      Aff3.map, Mat3.map, Vec3.map, matSub, scalarMat, outer, matId,
      matVec, dot, normalQ, offsetQ] <;>
    ring_nf

theorem pathPrefixAffNat_preservesDot
    (seq : Step14 -> Face) :
    forall n : Nat, PreservesDot (affRatToReal (pathPrefixAffNat seq n)).M := by
  intro n
  induction n with
  | zero =>
      intro u v
      simp [pathPrefixAffNat, affRatToReal, affId, Aff3.map, Mat3.map,
        Vec3.map, matVec, matId, dot]
  | succ n ih =>
      unfold pathPrefixAffNat
      by_cases hn : n + 1 < 14
      · simp [hn, affRatToReal_compose]
        exact matMul_preservesDot ih (faceReflection_preservesDot (seq ⟨n + 1, hn⟩))
      · simp [hn, ih]

theorem finalPathAff_preservesDot
    (seq : Step14 -> Face) :
    PreservesDot (affRatToReal (finalPathAff seq)).M := by
  unfold finalPathAff
  rw [affRatToReal_compose]
  exact matMul_preservesDot (pathPrefixAffNat_preservesDot seq 13)
    (faceReflection_preservesDot (seq 0))

theorem impactCopyAff_preservesDot
    (seq : Step14 -> Face) (i : Impact15) :
    PreservesDot (affRatToReal (impactCopyAff seq i)).M := by
  unfold impactCopyAff pathPrefixAff
  by_cases hi : i.val < 14
  · simp [hi, pathPrefixAffNat_preservesDot]
  · simp [hi, finalPathAff_preservesDot]

theorem preImpactCopyAff_preservesDot
    (seq : Step14 -> Face) (i : Impact15) :
    PreservesDot (affRatToReal (preImpactCopyAff seq i)).M := by
  unfold preImpactCopyAff
  exact pathPrefixAffNat_preservesDot seq (i.val - 1)

def InUnfoldedImpactFaceInterior (seq : Step14 -> Face) (i : Impact15)
    (x : Vec3 Real) : Prop :=
  exists p : Vec3 Real,
    InFaceInterior (impactFace seq i) p /\ unfoldedImpactAt seq i p = x

def InPreUnfoldedImpactFaceInterior (seq : Step14 -> Face) (i : Impact15)
    (x : Vec3 Real) : Prop :=
  exists p : Vec3 Real,
    InFaceInterior (impactFace seq i) p /\ preImpactUnfoldedAt seq i p = x

def InPreUnfoldedPolyhedronInterior (seq : Step14 -> Face) (i : Impact15)
    (x : Vec3 Real) : Prop :=
  exists p : Vec3 Real,
    InPolyhedronInterior p /\ preImpactUnfoldedAt seq i p = x

def PreImpactOpenSegmentInterior
    (seq : Step14 -> Face)
    (p0 w : Vec3 Real)
    (crossing_times : Impact15 -> Real) : Prop :=
  forall i : Step14, forall s : Real,
    0 < s -> s < 1 ->
      InPreUnfoldedPolyhedronInterior seq (transitionEndImpact i)
        (linePoint p0 w
          (segmentTime (crossing_times i.castSucc)
            (crossing_times (transitionEndImpact i)) s))

def InUnfoldedFaceInterior (seq : Step14 -> Face) (i : Step14)
    (x : Vec3 Real) : Prop :=
  InUnfoldedImpactFaceInterior seq i.castSucc x

theorem InUnfoldedFaceInterior_iff
    (seq : Step14 -> Face) (i : Step14) (x : Vec3 Real) :
    InUnfoldedFaceInterior seq i x <->
      exists p : Vec3 Real,
        InFaceInterior (seq i) p /\ unfoldedImpact seq i p = x := by
  unfold InUnfoldedFaceInterior InUnfoldedImpactFaceInterior impactFace
    unfoldedImpactAt unfoldedImpact impactCopyAff
  simp

theorem preImpact_eq_impact_on_face
    {seq : Step14 -> Face} {i : Impact15} {p : Vec3 Real}
    (h : InFaceInterior (impactFace seq i) p) :
    preImpactUnfoldedAt seq i p = unfoldedImpactAt seq i p := by
  fin_cases i <;>
    simp [preImpactUnfoldedAt, unfoldedImpactAt, preImpactCopyAff,
      impactCopyAff, impactFace, pathPrefixAff, pathPrefixAffNat,
      finalPathAff, affRatToReal_compose, affCompose_apply] at h ⊢
  · rw [faceReflectionQ_real_fix_of_inFaceInterior
      (f := seq (1 : Step14)) (p := p) (by simpa using h)]
  · rw [faceReflectionQ_real_fix_of_inFaceInterior
      (f := seq (2 : Step14)) (p := p) (by simpa using h)]
  · rw [faceReflectionQ_real_fix_of_inFaceInterior
      (f := seq (3 : Step14)) (p := p) (by simpa using h)]
  · rw [faceReflectionQ_real_fix_of_inFaceInterior
      (f := seq (4 : Step14)) (p := p) (by simpa using h)]
  · rw [faceReflectionQ_real_fix_of_inFaceInterior
      (f := seq (5 : Step14)) (p := p) (by simpa using h)]
  · rw [faceReflectionQ_real_fix_of_inFaceInterior
      (f := seq (6 : Step14)) (p := p) (by simpa using h)]
  · rw [faceReflectionQ_real_fix_of_inFaceInterior
      (f := seq (7 : Step14)) (p := p) (by simpa using h)]
  · rw [faceReflectionQ_real_fix_of_inFaceInterior
      (f := seq (8 : Step14)) (p := p) (by simpa using h)]
  · rw [faceReflectionQ_real_fix_of_inFaceInterior
      (f := seq (9 : Step14)) (p := p) (by simpa using h)]
  · rw [faceReflectionQ_real_fix_of_inFaceInterior
      (f := seq (10 : Step14)) (p := p) (by simpa using h)]
  · rw [faceReflectionQ_real_fix_of_inFaceInterior
      (f := seq (11 : Step14)) (p := p) (by simpa using h)]
  · rw [faceReflectionQ_real_fix_of_inFaceInterior
      (f := seq (12 : Step14)) (p := p) (by simpa using h)]
  · rw [faceReflectionQ_real_fix_of_inFaceInterior
      (f := seq (13 : Step14)) (p := p) (by simpa using h)]
  · rw [faceReflectionQ_real_fix_of_inFaceInterior
      (f := seq 0) (p := p) (by simpa using h)]

theorem pre_unfolded_impact_of_unfolded
    {seq : Step14 -> Face} {i : Impact15} {x : Vec3 Real}
    (h : InUnfoldedImpactFaceInterior seq i x) :
    InPreUnfoldedImpactFaceInterior seq i x := by
  rcases h with ⟨p, hp, hx⟩
  exact ⟨p, hp, (preImpact_eq_impact_on_face hp).trans hx⟩

theorem stepSucc_mk_of_succ_lt {n : Nat} (hn : n < 14)
    (hsucc : n + 1 < 14) :
    stepSucc (⟨n, hn⟩ : Step14) = ⟨n + 1, hsucc⟩ := by
  ext
  simp [stepSucc, Fin.val_add, Nat.mod_eq_of_lt hsucc]

theorem pathPrefix_unfolded_velocity
    (o : BilliardOrbit14) :
    forall n : Nat, forall hn : n < 14,
      matVec (affRatToReal (pathPrefixAffNat o.face n)).M
        (o.v ⟨n, Nat.lt_trans hn (by decide)⟩) = o.v 0 := by
  intro n
  induction n with
  | zero =>
      intro hn
      apply Vec3.ext <;>
        simp [pathPrefixAffNat, affRatToReal, affId, matVec, matId]
  | succ n ih =>
      intro hsucc
      have hn : n < 14 := by omega
      have hstep :
          stepSucc (⟨n, hn⟩ : Step14) = ⟨n + 1, hsucc⟩ :=
        stepSucc_mk_of_succ_lt hn hsucc
      have hv := o.reflection_law (⟨n, hn⟩ : Step14)
      have hv' :
          o.v ⟨n + 1, Nat.lt_trans hsucc (by decide)⟩ =
            reflectVec
              (o.v ⟨n, Nat.lt_trans hn (by decide)⟩)
              (normalR (o.face ⟨n + 1, hsucc⟩)) := by
        simpa [hstep] using hv
      rw [show pathPrefixAffNat o.face (n + 1) =
          affCompose (pathPrefixAffNat o.face n)
            (faceReflectionQ (o.face ⟨n + 1, hsucc⟩)) by
        simp [pathPrefixAffNat, hsucc]]
      rw [affRatToReal_compose]
      simp only [affCompose]
      rw [matVec_matMul]
      rw [faceReflectionQ_real_linear_eq_reflectVec]
      rw [hv']
      rw [reflectVec_face_involutive]
      exact ih hn

theorem pathPrefix_unfolded_position
    (o : BilliardOrbit14) :
    forall n : Nat, forall hn : n < 14,
      unfoldedImpact o.face ⟨n, hn⟩
          (o.p ⟨n, Nat.lt_trans hn (by decide)⟩) =
        linePoint (o.p 0) (o.v 0)
          (cumulativeTime o ⟨n, Nat.lt_trans hn (by decide)⟩) := by
  intro n
  induction n with
  | zero =>
      intro hn
      simp [unfoldedImpact, pathPrefixAff, pathPrefixAffNat,
        affRatToReal_affId, affId_apply, linePoint, cumulativeTime, vecAdd,
        scalarMul]
  | succ n ih =>
      intro hsucc
      have hn : n < 14 := by omega
      have hstep :
          stepSucc (⟨n, hn⟩ : Step14) = ⟨n + 1, hsucc⟩ :=
        stepSucc_mk_of_succ_lt hn hsucc
      have hp := o.next_point (⟨n, hn⟩ : Step14)
      have hp' :
          o.p ⟨n + 1, Nat.lt_trans hsucc (by decide)⟩ =
            vecAdd
              (o.p ⟨n, Nat.lt_trans hn (by decide)⟩)
              (scalarMul (o.time ⟨n, hn⟩)
                (o.v ⟨n, Nat.lt_trans hn (by decide)⟩)) := by
        simpa [hstep] using hp
      unfold unfoldedImpact pathPrefixAff
      rw [show pathPrefixAffNat o.face (n + 1) =
          affCompose (pathPrefixAffNat o.face n)
            (faceReflectionQ (o.face ⟨n + 1, hsucc⟩)) by
        simp [pathPrefixAffNat, hsucc]]
      rw [affRatToReal_compose, affCompose_apply]
      have hfix :
          affApply (affRatToReal (faceReflectionQ (o.face ⟨n + 1, hsucc⟩)))
              (o.p ⟨n + 1, Nat.lt_trans hsucc (by decide)⟩) =
            o.p ⟨n + 1, Nat.lt_trans hsucc (by decide)⟩ := by
        simpa using faceReflectionQ_real_fix_of_inFaceInterior
          (o.impact_interior ⟨n + 1, hsucc⟩)
      rw [hfix]
      rw [hp', affApply_line_real]
      rw [pathPrefix_unfolded_velocity o n hn]
      change
        vecAdd
            (unfoldedImpact o.face ⟨n, hn⟩
              (o.p ⟨n, Nat.lt_trans hn (by decide)⟩))
            (scalarMul (o.time ⟨n, hn⟩) (o.v 0)) =
          linePoint (o.p 0) (o.v 0)
            (cumulativeTime o ⟨n + 1, Nat.lt_trans hsucc (by decide)⟩)
      rw [ih hn]
      apply Vec3.ext <;>
        simp [linePoint, vecAdd, scalarMul, cumulativeTime,
          Finset.sum_range_succ, hn] <;>
        ring

theorem linePoint_normalizedCrossingTime
    (o : BilliardOrbit14) (i : Impact15) :
    linePoint (o.p 0) (scalarMul (totalTravelTime o) (o.v 0))
        (normalizedCrossingTime o i) =
      linePoint (o.p 0) (o.v 0) (cumulativeTime o i) := by
  have hpos := totalTravelTime_pos o
  apply Vec3.ext <;>
    simp [linePoint, vecAdd, scalarMul, normalizedCrossingTime] <;>
    field_simp [hpos.ne']

theorem cumulativeTime_transitionEnd
    (o : BilliardOrbit14) (i : Step14) :
    cumulativeTime o (transitionEndImpact i) =
      cumulativeTime o i.castSucc + o.time i := by
  unfold cumulativeTime transitionEndImpact
  change (Finset.range (i.val + 1)).sum
      (fun n => if h : n < 14 then o.time ⟨n, h⟩ else 0) =
    (Finset.range i.val).sum
      (fun n => if h : n < 14 then o.time ⟨n, h⟩ else 0) +
      o.time i
  rw [Finset.sum_range_succ]
  simp [i.isLt]

theorem preImpactCopyAff_transitionEnd
    (seq : Step14 -> Face) (i : Step14) :
    preImpactCopyAff seq (transitionEndImpact i) =
      pathPrefixAffNat seq i.val := by
  simp [preImpactCopyAff, transitionEndImpact]

theorem billiard_preImpact_open_segment_interior
    (o : BilliardOrbit14) :
    PreImpactOpenSegmentInterior o.face (o.p 0)
      (scalarMul (totalTravelTime o) (o.v 0))
      (normalizedCrossingTime o) := by
  intro i s hs0 hs1
  let q : Vec3 Real :=
    pointOnSegment (o.p i.castSucc) (o.p (stepSucc i).castSucc) s
  refine ⟨q, (o.segment_valid i).2 s hs0 hs1, ?_⟩
  have hq :
      q =
        vecAdd (o.p i.castSucc)
          (scalarMul (s * o.time i) (o.v i.castSucc)) := by
    dsimp [q]
    rw [o.next_point i]
    apply Vec3.ext <;>
      simp [pointOnSegment, vecSub, vecAdd, scalarMul] <;>
      ring
  have hpos := pathPrefix_unfolded_position o i.val i.isLt
  have hvel := pathPrefix_unfolded_velocity o i.val i.isLt
  have hiCast :
      (⟨i.val, Nat.lt_trans i.isLt (by decide)⟩ : Impact15) =
        i.castSucc := by
    ext
    rfl
  have hpos' :
      unfoldedImpact o.face i (o.p i.castSucc) =
        linePoint (o.p 0) (o.v 0) (cumulativeTime o i.castSucc) := by
    simpa [hiCast] using hpos
  have hvel' :
      matVec (affRatToReal (pathPrefixAffNat o.face i.val)).M
          (o.v i.castSucc) = o.v 0 := by
    simpa [hiCast] using hvel
  have hcum := cumulativeTime_transitionEnd o i
  have hT := totalTravelTime_pos o
  unfold preImpactUnfoldedAt
  rw [preImpactCopyAff_transitionEnd, hq, affApply_line_real]
  change
    vecAdd
        (unfoldedImpact o.face i (o.p i.castSucc))
        (scalarMul (s * o.time i)
          (matVec (affRatToReal (pathPrefixAffNat o.face i.val)).M
            (o.v i.castSucc))) =
      linePoint (o.p 0) (scalarMul (totalTravelTime o) (o.v 0))
        (segmentTime (normalizedCrossingTime o i.castSucc)
          (normalizedCrossingTime o (transitionEndImpact i)) s)
  rw [hpos', hvel']
  apply Vec3.ext <;>
    simp [linePoint, segmentTime, normalizedCrossingTime, vecAdd, scalarMul,
      hcum] <;>
    field_simp [hT.ne'] <;>
    ring

theorem billiard_unfolded_hit
    (o : BilliardOrbit14) (i : Step14) :
    unfoldedImpact o.face i (o.p i.castSucc) =
      linePoint (o.p 0) (scalarMul (totalTravelTime o) (o.v 0))
        (normalizedCrossingTime o i.castSucc) := by
  have hpos := pathPrefix_unfolded_position o i.val i.isLt
  exact hpos.trans (linePoint_normalizedCrossingTime o i.castSucc).symm

theorem stepSucc_thirteen :
    stepSucc (⟨13, by decide⟩ : Step14) = 0 := by
  ext
  decide

theorem finalPath_unfolded_velocity
    (o : BilliardOrbit14) :
    matVec (affRatToReal (finalPathAff o.face)).M (o.v 0) = o.v 0 := by
  have hv := o.reflection_law (⟨13, by decide⟩ : Step14)
  rw [stepSucc_thirteen] at hv
  have hv0 :
      o.v 0 =
        reflectVec (o.v ⟨13, by decide⟩) (normalR (o.face 0)) := by
    simpa using hv
  unfold finalPathAff
  rw [affRatToReal_compose]
  simp only [affCompose]
  rw [matVec_matMul]
  rw [faceReflectionQ_real_linear_eq_reflectVec]
  have hback :
      reflectVec (o.v 0) (normalR (o.face 0)) =
        o.v ⟨13, by decide⟩ := by
    rw [hv0, reflectVec_face_involutive]
  rw [hback]
  exact pathPrefix_unfolded_velocity o 13 (by decide)

theorem totalAff_unfolded_velocity
    (o : BilliardOrbit14) :
    matVec (affRatToReal (totalAff o.face)).M (o.v 0) = o.v 0 := by
  rw [totalAff_eq_finalPath]
  exact finalPath_unfolded_velocity o

theorem finalPath_unfolded_position
    (o : BilliardOrbit14) :
    unfoldedImpactAt o.face lastImpact (o.p lastImpact) =
      linePoint (o.p 0) (o.v 0) (cumulativeTime o lastImpact) := by
  have hp13 := o.next_point (⟨13, by decide⟩ : Step14)
  rw [stepSucc_thirteen] at hp13
  have hp0 :
      o.p 0 =
        vecAdd (o.p ⟨13, by decide⟩)
          (scalarMul (o.time ⟨13, by decide⟩)
            (o.v ⟨13, by decide⟩)) := by
    simpa using hp13
  have hfix :
      affApply (affRatToReal (faceReflectionQ (o.face 0))) (o.p 0) =
        o.p 0 := by
    simpa using faceReflectionQ_real_fix_of_inFaceInterior
      (o.impact_interior (0 : Step14))
  unfold unfoldedImpactAt impactCopyAff finalPathAff
  simp only [lastImpact, Fin.val_mk, Nat.reduceLT, dite_false]
  change
    affApply (affRatToReal
        (affCompose (pathPrefixAffNat o.face 13) (faceReflectionQ (o.face 0))))
      (o.p lastImpact) =
        linePoint (o.p 0) (o.v 0) (cumulativeTime o lastImpact)
  rw [o.p_periodic, affRatToReal_compose, affCompose_apply, hfix]
  nth_rewrite 1 [hp0]
  rw [affApply_line_real]
  rw [pathPrefix_unfolded_velocity o 13 (by decide)]
  have h13 :=
    pathPrefix_unfolded_position o 13 (by decide)
  change
    vecAdd
        (unfoldedImpact o.face ⟨13, by decide⟩
          (o.p ⟨13, by decide⟩))
        (scalarMul (o.time ⟨13, by decide⟩) (o.v 0)) =
      linePoint (o.p 0) (o.v 0) (cumulativeTime o lastImpact)
  rw [h13]
  apply Vec3.ext <;>
    simp [linePoint, vecAdd, scalarMul, cumulativeTime, lastImpact,
      Finset.sum_range_succ] <;>
    ring

theorem billiard_unfolded_impact_hit
    (o : BilliardOrbit14) (i : Impact15) :
    InUnfoldedImpactFaceInterior o.face i
      (linePoint (o.p 0) (scalarMul (totalTravelTime o) (o.v 0))
        (normalizedCrossingTime o i)) := by
  by_cases hi : i.val < 14
  · let j : Step14 := ⟨i.val, hi⟩
    have hij : j.castSucc = i := by
      ext
      rfl
    rw [← hij]
    exact ⟨o.p j.castSucc, by
      simpa [impactFace] using o.impact_interior j, by
      simpa [unfoldedImpactAt, impactCopyAff, unfoldedImpact]
        using billiard_unfolded_hit o j⟩
  · have hiLast : i = lastImpact := by
      apply Fin.ext
      change i.val = 14
      have hle : i.val <= 14 := Nat.le_of_lt_succ i.isLt
      have hge : 14 <= i.val := Nat.le_of_not_gt hi
      omega
    subst i
    refine ⟨o.p lastImpact, ?_, ?_⟩
    · have h0 := o.impact_interior (0 : Step14)
      rw [o.p_periodic]
      simpa [impactFace, lastImpact] using h0
    · exact (finalPath_unfolded_position o).trans
        (linePoint_normalizedCrossingTime o lastImpact).symm

theorem billiard_endpoint_eq
    (o : BilliardOrbit14) :
    linePoint (o.p 0) (scalarMul (totalTravelTime o) (o.v 0)) 1 =
      affApply (affRatToReal (totalAff o.face)) (o.p 0) := by
  have hfinal := finalPath_unfolded_position o
  rw [o.p_periodic] at hfinal
  rw [totalAff_eq_finalPath]
  unfold unfoldedImpactAt impactCopyAff finalPathAff at hfinal
  simp [lastImpact] at hfinal
  calc
    linePoint (o.p 0) (scalarMul (totalTravelTime o) (o.v 0)) 1 =
        linePoint (o.p 0) (o.v 0) (totalTravelTime o) := by
      apply Vec3.ext <;>
        simp [linePoint, vecAdd, scalarMul]
    _ = affApply
        (affRatToReal
          (affCompose (pathPrefixAffNat o.face 13) (faceReflectionQ (o.face 0))))
        (o.p 0) := hfinal.symm

theorem billiard_direction_fixed
    (o : BilliardOrbit14) :
    matVec (affRatToReal (totalAff o.face)).M
        (scalarMul (totalTravelTime o) (o.v 0)) =
      scalarMul (totalTravelTime o) (o.v 0) := by
  rw [matVec_scalarMul, totalAff_unfolded_velocity]

theorem billiard_incoming_normal_velocity_pos
    (o : BilliardOrbit14) {n : Nat}
    (hnpos : 0 < n) (hn14 : n < 14) :
    0 <
      dot (normalR (o.face ⟨n, hn14⟩))
        (o.v (⟨n - 1, by omega⟩ : Step14).castSucc) := by
  let prev : Step14 := ⟨n - 1, by omega⟩
  let cur : Step14 := ⟨n, hn14⟩
  have hstep : stepSucc prev = cur := by
    ext
    simp [prev, cur, stepSucc, Fin.val_add]
    omega
  have hpnext := o.next_point prev
  have hpnext' :
      o.p cur.castSucc =
        vecAdd (o.p prev.castSucc)
          (scalarMul (o.time prev) (o.v prev.castSucc)) := by
    simpa [hstep] using hpnext
  have hOn := (o.impact_interior cur).1
  have hInteriorRaw :=
    (o.segment_valid prev).2 (1 / 2) (by norm_num) (by norm_num)
      (o.face cur)
  have hInterior :
      dot (normalR (o.face cur))
          (pointOnSegment (o.p prev.castSucc) (o.p cur.castSucc) (1 / 2)) <
        offsetR (o.face cur) := by
    simpa [hstep] using hInteriorRaw
  have hmid :
      pointOnSegment (o.p prev.castSucc) (o.p cur.castSucc) (1 / 2) =
        vecAdd (o.p prev.castSucc)
          (scalarMul ((1 / 2) * o.time prev) (o.v prev.castSucc)) := by
    rw [hpnext']
    apply Vec3.ext <;>
      simp [pointOnSegment, vecSub, vecAdd, scalarMul] <;>
      ring
  have hOn' :
      dot (normalR (o.face cur))
          (vecAdd (o.p prev.castSucc)
            (scalarMul (o.time prev) (o.v prev.castSucc))) =
        offsetR (o.face cur) := by
    rw [← hpnext']
    exact hOn
  have hInterior' :
      dot (normalR (o.face cur))
          (vecAdd (o.p prev.castSucc)
            (scalarMul ((1 / 2) * o.time prev) (o.v prev.castSucc))) <
        offsetR (o.face cur) := by
    rw [← hmid]
    exact hInterior
  have htime := o.time_pos prev
  simp [dot, vecAdd, scalarMul] at hOn' hInterior' ⊢
  ring_nf at hOn' hInterior' ⊢
  set A : Real :=
    (normalR (o.face cur)).x * (o.p prev.castSucc).x +
      (normalR (o.face cur)).y * (o.p prev.castSucc).y +
      (normalR (o.face cur)).z * (o.p prev.castSucc).z
  set D : Real :=
    (normalR (o.face cur)).x * (o.v prev.castSucc).x +
      (normalR (o.face cur)).y * (o.v prev.castSucc).y +
      (normalR (o.face cur)).z * (o.v prev.castSucc).z
  have hOnD : A + o.time prev * D = offsetR (o.face cur) := by
    dsimp [A, D]
    nlinarith
  have hInteriorD : A + (1 / 2) * o.time prev * D < offsetR (o.face cur) := by
    dsimp [A, D]
    nlinarith
  have hD : 0 < D := by
    nlinarith
  simpa [D, dot, cur, prev] using hD

theorem billiard_preImpact_forward
    (o : BilliardOrbit14) :
    PreImpactForward o.face
      (scalarMul (totalTravelTime o) (o.v 0)) := by
  intro i hi0 hilast
  have hnpos : 0 < i.val := by
    by_contra h
    apply hi0
    apply Fin.ext
    omega
  have hn14 : i.val < 14 := by
    have hle : i.val <= 14 := Nat.le_of_lt_succ i.isLt
    have hne : i.val ≠ 14 := by
      intro hv
      apply hilast
      apply Fin.ext
      simpa [lastImpact] using hv
    omega
  let prev : Step14 := ⟨i.val - 1, by omega⟩
  let cur : Step14 := ⟨i.val, hn14⟩
  have hvel :=
    pathPrefix_unfolded_velocity o (i.val - 1) (by omega)
  have hpres := preImpactCopyAff_preservesDot o.face i
    (normalR (o.face cur)) (o.v prev.castSucc)
  have hcast :
      matVec (affRatToReal (preImpactCopyAff o.face i)).M
          (normalR (o.face cur)) =
        preImpactNormalR o.face i := by
    apply Vec3.ext <;>
      simp [preImpactNormalR, preImpactNormalQ, vecRatToReal, normalR,
        preImpactCopyAff, cur, impactFace, hn14, affRatToReal, Aff3.map,
        Mat3.map, Vec3.map, matVec]
  have hcopy : preImpactCopyAff o.face i = pathPrefixAffNat o.face (i.val - 1) := rfl
  have hvel' :
      matVec (affRatToReal (preImpactCopyAff o.face i)).M
          (o.v prev.castSucc) = o.v 0 := by
    simpa [preImpactCopyAff, prev] using hvel
  rw [hcast, hvel'] at hpres
  have hincoming :=
    billiard_incoming_normal_velocity_pos o hnpos hn14
  have hT := totalTravelTime_pos o
  have hscale :
      dot (preImpactNormalR o.face i)
          (scalarMul (totalTravelTime o) (o.v 0)) =
        totalTravelTime o * dot (preImpactNormalR o.face i) (o.v 0) := by
    simp [scalarMul, dot]
    ring
  rw [hscale, hpres]
  exact mul_pos hT (by simpa [cur, prev] using hincoming)

theorem billiard_final_incoming_normal_velocity_pos
    (o : BilliardOrbit14) :
    0 <
      dot (normalR (o.face 0))
        (o.v (⟨13, by decide⟩ : Step14).castSucc) := by
  let prev : Step14 := ⟨13, by decide⟩
  have hstep : stepSucc prev = 0 := by
    simpa [prev] using stepSucc_thirteen
  have hpnext := o.next_point prev
  have hpnext' :
      o.p (0 : Impact15) =
        vecAdd (o.p prev.castSucc)
          (scalarMul (o.time prev) (o.v prev.castSucc)) := by
    simpa [hstep] using hpnext
  have hOn := (o.impact_interior (0 : Step14)).1
  have hInteriorRaw :=
    (o.segment_valid prev).2 (1 / 2) (by norm_num) (by norm_num)
      (o.face 0)
  have hInterior :
      dot (normalR (o.face 0))
          (pointOnSegment (o.p prev.castSucc) (o.p (0 : Impact15)) (1 / 2)) <
        offsetR (o.face 0) := by
    simpa [hstep] using hInteriorRaw
  have hmid :
      pointOnSegment (o.p prev.castSucc) (o.p (0 : Impact15)) (1 / 2) =
        vecAdd (o.p prev.castSucc)
          (scalarMul ((1 / 2) * o.time prev) (o.v prev.castSucc)) := by
    rw [hpnext']
    apply Vec3.ext <;>
      simp [pointOnSegment, vecSub, vecAdd, scalarMul] <;>
      ring
  have hOn' :
      dot (normalR (o.face 0))
          (vecAdd (o.p prev.castSucc)
            (scalarMul (o.time prev) (o.v prev.castSucc))) =
        offsetR (o.face 0) := by
    rw [← hpnext']
    exact hOn
  have hInterior' :
      dot (normalR (o.face 0))
          (vecAdd (o.p prev.castSucc)
            (scalarMul ((1 / 2) * o.time prev) (o.v prev.castSucc))) <
        offsetR (o.face 0) := by
    rw [← hmid]
    exact hInterior
  have htime := o.time_pos prev
  simp [dot, vecAdd, scalarMul] at hOn' hInterior' ⊢
  ring_nf at hOn' hInterior' ⊢
  set A : Real :=
    (normalR (o.face 0)).x * (o.p prev.castSucc).x +
      (normalR (o.face 0)).y * (o.p prev.castSucc).y +
      (normalR (o.face 0)).z * (o.p prev.castSucc).z
  set D : Real :=
    (normalR (o.face 0)).x * (o.v prev.castSucc).x +
      (normalR (o.face 0)).y * (o.v prev.castSucc).y +
      (normalR (o.face 0)).z * (o.v prev.castSucc).z
  have hOnD : A + o.time prev * D = offsetR (o.face 0) := by
    dsimp [A, D]
    nlinarith
  have hInteriorD : A + (1 / 2) * o.time prev * D < offsetR (o.face 0) := by
    dsimp [A, D]
    nlinarith
  have hD : 0 < D := by
    nlinarith
  simpa [D, dot, prev] using hD

theorem billiard_preImpact_forward_all
    (o : BilliardOrbit14) :
    PreImpactForwardAll o.face
      (scalarMul (totalTravelTime o) (o.v 0)) := by
  intro i hi0
  by_cases hilast : i = lastImpact
  · subst i
    have hpres := preImpactCopyAff_preservesDot o.face lastImpact
      (normalR (o.face 0)) (o.v (⟨13, by decide⟩ : Step14).castSucc)
    have hcast :
        matVec (affRatToReal (preImpactCopyAff o.face lastImpact)).M
            (normalR (o.face 0)) =
          preImpactNormalR o.face lastImpact := by
      apply Vec3.ext <;>
        simp [preImpactNormalR, preImpactNormalQ, vecRatToReal, normalR,
          preImpactCopyAff, impactFace, lastImpact, affRatToReal, Aff3.map,
          Mat3.map, Vec3.map, matVec]
    have hvel' :
        matVec (affRatToReal (preImpactCopyAff o.face lastImpact)).M
            (o.v (⟨13, by decide⟩ : Step14).castSucc) = o.v 0 := by
      simpa [preImpactCopyAff, lastImpact] using
        pathPrefix_unfolded_velocity o 13 (by decide)
    rw [hcast, hvel'] at hpres
    have hT := totalTravelTime_pos o
    have hscale :
        dot (preImpactNormalR o.face lastImpact)
            (scalarMul (totalTravelTime o) (o.v 0)) =
          totalTravelTime o * dot (preImpactNormalR o.face lastImpact) (o.v 0) := by
      simp [scalarMul, dot]
      ring
    rw [hscale, hpres]
    exact mul_pos hT (billiard_final_incoming_normal_velocity_pos o)
  · exact billiard_preImpact_forward o i hi0 hilast

structure UnfoldedFeasibleData (seq : Step14 -> Face) where
  p0 : Vec3 Real
  w : Vec3 Real
  nonzero : w = zeroVec3R -> False
  start_interior : InFaceInterior (seq 0) p0
  crossing_times : Impact15 -> Real
  t0 : crossing_times 0 = 0
  t14 : crossing_times lastImpact = 1
  increasing : StrictMono crossing_times
  hit_conditions :
    forall i : Step14,
      InUnfoldedFaceInterior seq i
        (linePoint p0 w (crossing_times i.castSucc))
  impact_hit_conditions :
    forall i : Impact15,
      InUnfoldedImpactFaceInterior seq i (linePoint p0 w (crossing_times i))
  pre_impact_hit_conditions :
    forall i : Impact15,
      InPreUnfoldedImpactFaceInterior seq i (linePoint p0 w (crossing_times i))
  endpoint_eq :
    linePoint p0 w 1 = affApply (affRatToReal (totalAff seq)) p0
  direction_fixed :
    matVec (affRatToReal (totalAff seq)).M w = w
  preImpact_forward :
    PreImpactForward seq w
  preImpact_forward_all :
    PreImpactForwardAll seq w
  open_segment_interior :
    PreImpactOpenSegmentInterior seq p0 w crossing_times

def UnfoldedFeasible (seq : Step14 -> Face) : Prop :=
  Nonempty (UnfoldedFeasibleData seq)

theorem billiard_implies_unfolded
    (o : BilliardOrbit14)
    (hOmni : TouchesEachFaceExactlyOnce o)
    (hStart : o.face 0 = Face.xp) :
    UnfoldedFeasible o.face := by
  let _ := hOmni
  refine ⟨{
    p0 := o.p 0
    w := scalarMul (totalTravelTime o) (o.v 0)
    nonzero := ?_
    start_interior := ?_
    crossing_times := normalizedCrossingTime o
    t0 := normalizedCrossingTime_zero o
    t14 := normalizedCrossingTime_last o
    increasing := normalizedCrossingTime_strictMono o
    hit_conditions := ?_
    impact_hit_conditions := billiard_unfolded_impact_hit o
    pre_impact_hit_conditions := fun i =>
      pre_unfolded_impact_of_unfolded (billiard_unfolded_impact_hit o i)
    endpoint_eq := billiard_endpoint_eq o
    direction_fixed := billiard_direction_fixed o
    preImpact_forward := billiard_preImpact_forward o
    preImpact_forward_all := billiard_preImpact_forward_all o
    open_segment_interior := billiard_preImpact_open_segment_interior o
  }⟩
  · intro hw
    have hT : totalTravelTime o ≠ 0 := (totalTravelTime_pos o).ne'
    apply o.velocity_nonzero (0 : Step14)
    apply Vec3.ext
    · have hx := congrArg Vec3.x hw
      simp [zeroVec3R, scalarMul] at hx
      exact hx.resolve_left hT
    · have hy := congrArg Vec3.y hw
      simp [zeroVec3R, scalarMul] at hy
      exact hy.resolve_left hT
    · have hz := congrArg Vec3.z hw
      simp [zeroVec3R, scalarMul] at hz
      exact hz.resolve_left hT
  · have h := o.impact_interior (0 : Step14)
    simpa [hStart] using h
  · intro i
    rw [InUnfoldedFaceInterior_iff]
    exact ⟨o.p i.castSucc, o.impact_interior i, billiard_unfolded_hit o i⟩

#check UnfoldedFeasible
#check billiard_implies_unfolded

end Cuboctahedron
