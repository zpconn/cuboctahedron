import Mathlib.Tactic
import Cuboctahedron.Basic.Aff3
import Cuboctahedron.Geometry.Polyhedron

/-!
Exact affine reflections for cuboctahedron faces.
-/

namespace Cuboctahedron

def reflM (n : Vec3 Rat) : Mat3 Rat :=
  matSub (matId : Mat3 Rat) (scalarMat (2 / dot n n) (outer n n))

def reflD (n : Vec3 Rat) (c : Rat) : Vec3 Rat :=
  scalarMul (2 * c / dot n n) n

def faceReflectionQ (f : Face) : Aff3 Rat :=
  { M := reflM (normalQ f), b := reflD (normalQ f) (offsetQ f) }

noncomputable def reflectPoint (p n : Vec3 Real) (c : Real) : Vec3 Real :=
  vecSub p (scalarMul (2 * (dot n p - c) / dot n n) n)

noncomputable def reflectVec (v n : Vec3 Real) : Vec3 Real :=
  vecSub v (scalarMul (2 * dot n v / dot n n) n)

theorem xp_reflection_formula (p : Vec3 Rat) :
    affApply (faceReflectionQ Face.xp) p =
      { x := 2 - p.x, y := p.y, z := p.z } := by
  apply Vec3.ext
  · simp [faceReflectionQ, reflM, reflD, affApply, matSub, scalarMat, outer,
      matId, dot, matVec, vecAdd, normalQ, offsetQ]
    ring
  · simp [faceReflectionQ, reflM, reflD, affApply, matSub, scalarMat, outer,
      matId, dot, matVec, vecAdd, normalQ, offsetQ]
  · simp [faceReflectionQ, reflM, reflD, affApply, matSub, scalarMat, outer,
      matId, dot, matVec, vecAdd, normalQ, offsetQ]

theorem faceReflectionQ_real_apply_eq_reflectPoint (f : Face) (p : Vec3 Real) :
    affApply (affRatToReal (faceReflectionQ f)) p =
      reflectPoint p (normalR f) (offsetR f) := by
  cases f <;>
    apply Vec3.ext <;>
    simp [affRatToReal, faceReflectionQ, reflM, reflD, reflectPoint, affApply,
      Aff3.map, Mat3.map, Vec3.map, matSub, scalarMat, outer, matId, matVec,
      vecAdd, vecSub, scalarMul, normalR, normalQ, offsetR, offsetQ, dot] <;>
    ring

theorem faceReflectionQ_real_linear_eq_reflectVec
    (f : Face) (v : Vec3 Real) :
    matVec (affRatToReal (faceReflectionQ f)).M v =
      reflectVec v (normalR f) := by
  cases f <;>
    apply Vec3.ext <;>
    simp [affRatToReal, faceReflectionQ, reflM, reflD, reflectVec,
      Aff3.map, Mat3.map, Vec3.map, matSub, scalarMat, outer, matId, matVec,
      vecSub, scalarMul, normalR, normalQ, offsetQ, dot] <;>
    ring

theorem reflectVec_face_involutive (f : Face) (v : Vec3 Real) :
    reflectVec (reflectVec v (normalR f)) (normalR f) = v := by
  cases f <;>
    apply Vec3.ext <;>
    simp [reflectVec, vecSub, scalarMul, normalR, normalQ, dot] <;>
    ring

theorem faceReflectionQ_real_fix_of_inFaceInterior
    {f : Face} {p : Vec3 Real}
    (h : InFaceInterior f p) :
    affApply (affRatToReal (faceReflectionQ f)) p = p := by
  rw [faceReflectionQ_real_apply_eq_reflectPoint]
  rcases h with ⟨hon, _⟩
  apply Vec3.ext <;>
    simp [reflectPoint, vecSub, scalarMul, hon]

end Cuboctahedron
