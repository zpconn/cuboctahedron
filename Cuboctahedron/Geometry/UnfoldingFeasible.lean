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

def InUnfoldedImpactFaceInterior (seq : Step14 -> Face) (i : Impact15)
    (x : Vec3 Real) : Prop :=
  exists p : Vec3 Real,
    InFaceInterior (impactFace seq i) p /\ unfoldedImpactAt seq i p = x

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
  endpoint_eq :
    linePoint p0 w 1 = affApply (affRatToReal (totalAff seq)) p0
  direction_fixed :
    matVec (affRatToReal (totalAff seq)).M w = w

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
    endpoint_eq := billiard_endpoint_eq o
    direction_fixed := billiard_direction_fixed o
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
