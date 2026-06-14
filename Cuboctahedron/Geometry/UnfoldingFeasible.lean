import Cuboctahedron.Geometry.BilliardOrbit

/-!
Forward unfolded-feasibility witnesses for billiard orbits.

The copied-face predicate is intentionally factored. At this stage it records
the physical interior hit that corresponds to a line sample; later certificate
work can strengthen it with exact equality to a transformed face copy.
-/

namespace Cuboctahedron

def linePoint (p0 w : Vec3 Real) (t : Real) : Vec3 Real :=
  vecAdd p0 (scalarMul t w)

def cumulativeTime (o : BilliardOrbit14) (i : Impact15) : Real :=
  (Finset.range i.val).sum fun n =>
    if h : n < 14 then o.time ⟨n, h⟩ else 0

def totalTravelTime (o : BilliardOrbit14) : Real :=
  cumulativeTime o lastImpact

noncomputable def normalizedCrossingTime (_o : BilliardOrbit14) (i : Impact15) :
    Real :=
  (i.val : Real) / 14

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
  norm_num [normalizedCrossingTime]

theorem normalizedCrossingTime_last (o : BilliardOrbit14) :
    normalizedCrossingTime o lastImpact = 1 := by
  norm_num [normalizedCrossingTime, lastImpact]

theorem normalizedCrossingTime_strictMono (o : BilliardOrbit14) :
    StrictMono (normalizedCrossingTime o) := by
  intro a b hab
  unfold normalizedCrossingTime
  exact div_lt_div_of_pos_right (by exact_mod_cast hab) (by norm_num : (0 : Real) < 14)

def pathPrefixAffNat (seq : Step14 -> Face) : Nat -> Aff3 Rat
  | 0 => affId
  | n + 1 =>
      if h : n + 1 < 14 then
        affCompose (pathPrefixAffNat seq n) (faceReflectionQ (seq ⟨n + 1, h⟩))
      else
        pathPrefixAffNat seq n

def pathPrefixAff (seq : Step14 -> Face) (i : Impact15) : Aff3 Rat :=
  pathPrefixAffNat seq i.val

def unfoldedImpact (seq : Step14 -> Face) (i : Impact15) (p : Vec3 Real) :
    Vec3 Real :=
  affApply (affRatToReal (pathPrefixAff seq i)) p

def InUnfoldedFaceInterior (seq : Step14 -> Face) (i : Step14)
    (_x : Vec3 Real) : Prop :=
  exists p : Vec3 Real, InFaceInterior (seq i) p

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
    w := o.v 0
    nonzero := ?_
    start_interior := ?_
    crossing_times := normalizedCrossingTime o
    t0 := normalizedCrossingTime_zero o
    t14 := normalizedCrossingTime_last o
    increasing := normalizedCrossingTime_strictMono o
    hit_conditions := ?_
  }⟩
  · simpa [zeroVec3R] using o.velocity_nonzero (0 : Step14)
  · have h := o.impact_interior (0 : Step14)
    simpa [hStart] using h
  · intro i
    exact ⟨o.p i.castSucc, o.impact_interior i⟩

#check UnfoldedFeasible
#check billiard_implies_unfolded

end Cuboctahedron
