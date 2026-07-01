import Cuboctahedron.Search.TerminalNonidentityTemplates

/-!
Smoke test for the direct start-violation theorem surface.

This file deliberately avoids `AxisStartViolationCert` and
`AffineAxisSolveWitness`.  It checks whether a representative residual case can
derive the bad start-face inequality directly from the endpoint equation, fixed
direction equation, and the `X+` start-interior fact.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.DirectStartSmoke

open Cuboctahedron

private def rank861Seq : Step14 -> Face := fun i =>
  match i.val with
  | 0 => Face.xp
  | 1 => Face.xm
  | 2 => Face.ym
  | 3 => Face.yp
  | 4 => Face.zm
  | 5 => Face.zp
  | 6 => Face.tmmp
  | 7 => Face.tppm
  | 8 => Face.tpmp
  | 9 => Face.tpmm
  | 10 => Face.tmmm
  | 11 => Face.tmpm
  | 12 => Face.tmpp
  | _ => Face.tppp

private theorem rank861Seq_startsXp : StartsXp rank861Seq := by
  unfold StartsXp rank861Seq
  rfl

set_option maxHeartbeats 800000 in
private theorem rank861_totalAff :
    totalAff rank861Seq =
      { M :=
          { m00 := (-551/729), m01 := (464/729), m02 := (-112/729),
            m10 := (304/729), m11 := (473/729), m12 := (464/729),
            m20 := (368/729), m21 := (304/729), m22 := (-551/729) },
        b := { x := (-284/243), y := (-3452/243), z := (-700/243) } } := by
  rw [totalAff_eq_finalPath]
  norm_num [rank861Seq, pathPrefixAffNat, faceReflectionQ, reflM, reflD,
    normalQ, offsetQ, affCompose, affId, matSub, matId, scalarMat, outer,
    dot, matMul, matVec, vecAdd, scalarMul]

private theorem rank861_direct_ym_violation :
    forall data : UnfoldedFeasibleData rank861Seq,
      data.w ≠ zeroVec3R ->
      InFaceInterior Face.xp data.p0 ->
      linePoint data.p0 data.w 1 =
        affApply (affRatToReal (totalAff rank861Seq)) data.p0 ->
      matVec (affRatToReal (totalAff rank861Seq)).M data.w = data.w ->
      offsetR Face.ym ≤ dot (normalR Face.ym) data.p0 := by
  intro data _hNonzero hStartInterior hEndpoint hFixed
  have hpx : data.p0.x = 1 := by
    have h := hStartInterior.1
    norm_num [normalR, normalQ, offsetR, offsetQ, dot] at h
    exact h
  have hxEndpoint := congrArg Vec3.x hEndpoint
  have hyEndpoint := congrArg Vec3.y hEndpoint
  have hzEndpoint := congrArg Vec3.z hEndpoint
  have hxFixed := congrArg Vec3.x hFixed
  have hyFixed := congrArg Vec3.y hFixed
  have hzFixed := congrArg Vec3.z hFixed
  rw [rank861_totalAff] at hxEndpoint hyEndpoint hzEndpoint hxFixed hyFixed hzFixed
  norm_num [linePoint, affApply, affRatToReal, Aff3.map, Mat3.map, Vec3.map,
    matVec, vecAdd, scalarMul]
    at hxEndpoint hyEndpoint hzEndpoint hxFixed hyFixed hzFixed
  norm_num [normalR, normalQ, offsetR, offsetQ, dot]
  linarith

private theorem rank861_ym_ne_xp : Face.ym ≠ Face.xp := by
  decide

theorem rank861_no_axis_constraints :
    ¬ NonIdentityAxisConstraints rank861Seq :=
  no_nonidentity_axis_constraints_of_direct_start_violation
    rank861Seq_startsXp rank861_ym_ne_xp rank861_direct_ym_violation

theorem directStartSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.DirectStartSmoke
