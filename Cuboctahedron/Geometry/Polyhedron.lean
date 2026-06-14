import Mathlib.Tactic
import Cuboctahedron.Geometry.Faces

/-!
Polyhedron predicates for the standard coordinate cuboctahedron.
-/

namespace Cuboctahedron

def InPolyhedron (p : Vec3 Real) : Prop :=
  forall f : Face, dot (normalR f) p <= offsetR f

def OnFace (f : Face) (p : Vec3 Real) : Prop :=
  dot (normalR f) p = offsetR f /\ InPolyhedron p

def InFaceInterior (f : Face) (p : Vec3 Real) : Prop :=
  dot (normalR f) p = offsetR f /\
    forall g : Face, (g = f -> False) -> dot (normalR g) p < offsetR g

theorem xp_face_interior_iff (y z : Real) :
    InFaceInterior Face.xp { x := 1, y := y, z := z } <->
      y + z < 1 /\ y - z < 1 /\ -y + z < 1 /\ -y - z < 1 := by
  constructor
  · intro h
    rcases h with ⟨_, hint⟩
    have htppp := hint Face.tppp (by decide)
    have htppm := hint Face.tppm (by decide)
    have htpmp := hint Face.tpmp (by decide)
    have htpmm := hint Face.tpmm (by decide)
    simp [normalR, offsetR, normalQ, offsetQ, dot] at htppp htppm htpmp htpmm
    exact ⟨by linarith, by linarith, by linarith, by linarith⟩
  · intro h
    rcases h with ⟨hyz, hy_z, hnyz, hnynz⟩
    constructor
    · norm_num [normalR, offsetR, normalQ, offsetQ, dot]
    · intro g hg
      cases g
      · exact False.elim (hg rfl)
      · norm_num [normalR, offsetR, normalQ, offsetQ, dot]
      · simp [normalR, offsetR, normalQ, offsetQ, dot]
        linarith
      · simp [normalR, offsetR, normalQ, offsetQ, dot]
        linarith
      · simp [normalR, offsetR, normalQ, offsetQ, dot]
        linarith
      · simp [normalR, offsetR, normalQ, offsetQ, dot]
        linarith
      · simp [normalR, offsetR, normalQ, offsetQ, dot]
        linarith
      · simp [normalR, offsetR, normalQ, offsetQ, dot]
        linarith
      · simp [normalR, offsetR, normalQ, offsetQ, dot]
        linarith
      · simp [normalR, offsetR, normalQ, offsetQ, dot]
        linarith
      · simp [normalR, offsetR, normalQ, offsetQ, dot]
        linarith
      · simp [normalR, offsetR, normalQ, offsetQ, dot]
        linarith
      · simp [normalR, offsetR, normalQ, offsetQ, dot]
        linarith
      · simp [normalR, offsetR, normalQ, offsetQ, dot]
        linarith

end Cuboctahedron
