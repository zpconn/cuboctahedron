import Mathlib.Tactic
import Cuboctahedron.Geometry.Unfolding

/-!
Real billiard-orbit data for period-14 cuboctahedron itineraries.
-/

namespace Cuboctahedron

abbrev Step14 := Fin 14
abbrev Impact15 := Fin 15

def stepSucc (i : Step14) : Step14 :=
  i + 1

def lastImpact : Impact15 :=
  ⟨14, by decide⟩

def zeroVec3R : Vec3 Real :=
  { x := 0, y := 0, z := 0 }

def pointOnSegment (a b : Vec3 Real) (t : Real) : Vec3 Real :=
  vecAdd a (scalarMul t (vecSub b a))

def InPolyhedronInterior (p : Vec3 Real) : Prop :=
  forall f : Face, dot (normalR f) p < offsetR f

def SegmentTravelValid (a b : Vec3 Real) : Prop :=
  (forall t : Real, 0 <= t -> t <= 1 -> InPolyhedron (pointOnSegment a b t)) /\
    forall t : Real, 0 < t -> t < 1 -> InPolyhedronInterior (pointOnSegment a b t)

structure BilliardOrbit14 where
  p : Impact15 -> Vec3 Real
  v : Impact15 -> Vec3 Real
  face : Step14 -> Face
  time : Step14 -> Real
  time_pos : forall i : Step14, 0 < time i
  velocity_nonzero : forall i : Step14, v i.castSucc = zeroVec3R -> False
  impact_interior : forall i : Step14, InFaceInterior (face i) (p i.castSucc)
  next_point :
    forall i : Step14, p (stepSucc i).castSucc =
      vecAdd (p i.castSucc) (scalarMul (time i) (v i.castSucc))
  segment_valid :
    forall i : Step14, SegmentTravelValid (p i.castSucc) (p (stepSucc i).castSucc)
  reflection_law :
    forall i : Step14, v (stepSucc i).castSucc =
      reflectVec (v i.castSucc) (normalR (face (stepSucc i)))
  p_periodic : p lastImpact = p 0
  v_periodic : v lastImpact = v 0

namespace BilliardOrbit14

def Nonsingular (o : BilliardOrbit14) : Prop :=
  forall i : Step14, InFaceInterior (o.face i) (o.p i.castSucc)

def Periodic (o : BilliardOrbit14) : Prop :=
  o.p lastImpact = o.p 0 /\ o.v lastImpact = o.v 0

def TouchesEachFaceExactlyOnce (o : BilliardOrbit14) : Prop :=
  Function.Bijective o.face

end BilliardOrbit14

abbrev Nonsingular : BilliardOrbit14 -> Prop :=
  BilliardOrbit14.Nonsingular

abbrev Periodic : BilliardOrbit14 -> Prop :=
  BilliardOrbit14.Periodic

abbrev TouchesEachFaceExactlyOnce : BilliardOrbit14 -> Prop :=
  BilliardOrbit14.TouchesEachFaceExactlyOnce

def IsOmniSeq (seq : Step14 -> Face) : Prop :=
  Function.Bijective seq

def StartsXp (seq : Step14 -> Face) : Prop :=
  seq 0 = Face.xp

def shiftStep (k i : Step14) : Step14 :=
  k + i

theorem shiftStep_bijective (k : Step14) : Function.Bijective (shiftStep k) := by
  constructor
  · intro a b h
    exact add_left_cancel h
  · intro j
    use -k + j
    simp [shiftStep]

def rotateOrbit (o : BilliardOrbit14) (k : Step14) : BilliardOrbit14 where
  p := fun j =>
    if h : j.val < 14 then
      o.p ((shiftStep k ⟨j.val, h⟩).castSucc)
    else
      o.p k.castSucc
  v := fun j =>
    if h : j.val < 14 then
      o.v ((shiftStep k ⟨j.val, h⟩).castSucc)
    else
      o.v k.castSucc
  face := fun i => o.face (shiftStep k i)
  time := fun i => o.time (shiftStep k i)
  time_pos := by
    intro i
    exact o.time_pos (shiftStep k i)
  velocity_nonzero := by
    intro i
    simpa [shiftStep, zeroVec3R] using o.velocity_nonzero (shiftStep k i)
  impact_interior := by
    intro i
    simpa [shiftStep] using o.impact_interior (shiftStep k i)
  next_point := by
    intro i
    have h := o.next_point (shiftStep k i)
    simpa [shiftStep, stepSucc, add_assoc] using h
  segment_valid := by
    intro i
    have h := o.segment_valid (shiftStep k i)
    simpa [shiftStep, stepSucc, add_assoc] using h
  reflection_law := by
    intro i
    have h := o.reflection_law (shiftStep k i)
    simpa [shiftStep, stepSucc, add_assoc] using h
  p_periodic := by
    simp [lastImpact, shiftStep]
  v_periodic := by
    simp [lastImpact, shiftStep]

theorem rotate_touches (o : BilliardOrbit14) (k : Step14)
    (h : TouchesEachFaceExactlyOnce o) :
    TouchesEachFaceExactlyOnce (rotateOrbit o k) := by
  exact h.comp (shiftStep_bijective k)

theorem can_start_at_xp
    (o : BilliardOrbit14)
    (h : TouchesEachFaceExactlyOnce o) :
    exists o' : BilliardOrbit14,
      TouchesEachFaceExactlyOnce o' /\ o'.face 0 = Face.xp := by
  rcases h.2 Face.xp with ⟨k, hk⟩
  refine ⟨rotateOrbit o k, rotate_touches o k h, ?_⟩
  simpa [rotateOrbit, shiftStep] using hk

#check BilliardOrbit14
#check TouchesEachFaceExactlyOnce
#check can_start_at_xp

end Cuboctahedron
