import Cuboctahedron.Search.TerminalNonidentityTemplates

/-!
Smoke test for the top margin+cancellation-pairing residual family.

This file is deliberately small and semantic.  It does not prove coverage for
the family yet.  It checks the theorem surface needed by such a family:
fixed linear part plus an affine-offset margin bound implies the bad start-face
inequality directly from endpoint/fixed-direction equations.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.DirectStartTopPairingSmoke

open Cuboctahedron

private def topSeq : Step14 -> Face := fun i =>
  match i.val with
  | 0 => Face.xp
  | 1 => Face.xm
  | 2 => Face.ym
  | 3 => Face.zm
  | 4 => Face.tmpp
  | 5 => Face.tppp
  | 6 => Face.tpmp
  | 7 => Face.tppm
  | 8 => Face.tmmp
  | 9 => Face.tpmm
  | 10 => Face.yp
  | 11 => Face.tmpm
  | 12 => Face.tmmm
  | _ => Face.zp

private theorem topSeq_startsXp : StartsXp topSeq := by
  unfold StartsXp topSeq
  rfl

set_option maxHeartbeats 800000 in
private theorem top_totalAff :
    totalAff topSeq =
      { M :=
          { m00 := (-551/729), m01 := (368/729), m02 := (304/729),
            m10 := (-112/729), m11 := (-551/729), m12 := (464/729),
            m20 := (464/729), m21 := (304/729), m22 := (473/729) },
        b := { x := (652/243), y := (-2620/243), z := (-3124/243) } } := by
  rw [totalAff_eq_finalPath]
  norm_num [topSeq, pathPrefixAffNat, faceReflectionQ, reflM, reflD,
    normalQ, offsetQ, affCompose, affId, matSub, matId, scalarMat, outer,
    dot, matMul, matVec, vecAdd, scalarMul]

private abbrev topLinearPart : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729),
    m10 := (-112/729), m11 := (-551/729), m12 := (464/729),
    m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private abbrev topAff : Aff3 Rat :=
  { M := topLinearPart,
    b := { x := (652/243), y := (-2620/243), z := (-3124/243) } }

private abbrev topMarginCoeff : Vec3 Rat :=
  { x := (-103/176), y := (73/176), z := (5/88) }

private inductive TopPairingMarginValue : Rat -> Prop
  | neg25_11 : TopPairingMarginValue (-25/11)
  | neg47_11 : TopPairingMarginValue (-47/11)
  | neg109_22 : TopPairingMarginValue (-109/22)
  | neg105_22 : TopPairingMarginValue (-105/22)
  | neg16_11 : TopPairingMarginValue (-16/11)
  | neg43_22 : TopPairingMarginValue (-43/22)
  | neg27_11 : TopPairingMarginValue (-27/11)
  | neg127_22 : TopPairingMarginValue (-127/22)
  | neg36_11 : TopPairingMarginValue (-36/11)
  | neg49_11 : TopPairingMarginValue (-49/11)
  | neg58_11 : TopPairingMarginValue (-58/11)
  | neg5_2 : TopPairingMarginValue (-5/2)
  | zero : TopPairingMarginValue 0
  | neg2 : TopPairingMarginValue (-2)

private theorem TopPairingMarginValue.nonpos
    {value : Rat} (h : TopPairingMarginValue value) :
    value ≤ 0 := by
  cases h <;> norm_num

private theorem top_pairing_margin_bound_of_value
    {b : Vec3 Rat} {value : Rat}
    (hvalue : offsetMarginQ 2 topMarginCoeff b = value)
    (hmember : TopPairingMarginValue value) :
    (2 : Real) +
        ((-103 / 176 : Rat) : Real) * (b.x : Real) +
        ((73 / 176 : Rat) : Real) * (b.y : Real) +
        ((5 / 88 : Rat) : Real) * (b.z : Real) ≤ 0 :=
  offsetMarginQ_real_bound_of_value hvalue hmember.nonpos

private theorem direct_ym_violation_of_top_linear_form
    {seq : Step14 -> Face} {A : Aff3 Rat}
    (hTotal : totalAff seq = A)
    (hM : A.M = topLinearPart)
    (hBound :
      (2 : Real) +
          ((-103 / 176 : Rat) : Real) * (A.b.x : Real) +
          ((73 / 176 : Rat) : Real) * (A.b.y : Real) +
          ((5 / 88 : Rat) : Real) * (A.b.z : Real) ≤ 0) :
    forall data : UnfoldedFeasibleData seq,
      data.w ≠ zeroVec3R ->
      InFaceInterior Face.xp data.p0 ->
      linePoint data.p0 data.w 1 =
        affApply (affRatToReal (totalAff seq)) data.p0 ->
      matVec (affRatToReal (totalAff seq)).M data.w = data.w ->
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
  rw [hTotal] at hxEndpoint hyEndpoint hzEndpoint hxFixed hyFixed hzFixed
  norm_num [linePoint, affApply, affRatToReal, Aff3.map, Mat3.map, Vec3.map,
    hM, topLinearPart, matVec, vecAdd, scalarMul]
    at hxEndpoint hyEndpoint hzEndpoint hxFixed hyFixed hzFixed
  norm_num [normalR, normalQ, offsetR, offsetQ, dot]
  linarith

private theorem top_direct_ym_violation :
    forall data : UnfoldedFeasibleData topSeq,
      data.w ≠ zeroVec3R ->
      InFaceInterior Face.xp data.p0 ->
      linePoint data.p0 data.w 1 =
        affApply (affRatToReal (totalAff topSeq)) data.p0 ->
      matVec (affRatToReal (totalAff topSeq)).M data.w = data.w ->
      offsetR Face.ym ≤ dot (normalR Face.ym) data.p0 := by
  apply direct_ym_violation_of_top_linear_form (A := topAff)
  · exact top_totalAff
  · rfl
  · exact
      top_pairing_margin_bound_of_value
        (b := topAff.b)
        (value := (-105/22))
        (by norm_num [offsetMarginQ, dot, topMarginCoeff, topAff])
        TopPairingMarginValue.neg105_22

private theorem top_ym_ne_xp : Face.ym ≠ Face.xp := by
  decide

theorem top_no_axis_constraints :
    ¬ NonIdentityAxisConstraints topSeq :=
  no_nonidentity_axis_constraints_of_direct_start_violation
    topSeq_startsXp top_ym_ne_xp top_direct_ym_violation

theorem directStartTopPairingSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.DirectStartTopPairingSmoke
