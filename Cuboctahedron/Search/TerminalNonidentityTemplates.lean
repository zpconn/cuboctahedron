import Cuboctahedron.Search.NonIdentityCase

/-!
Small theorem schemas for terminal nonidentity obstruction families.

These theorems are intentionally semantic.  Generated evidence should use them
by proving small local facts, such as "the forced affine-axis start point is
this point" and "this copied face inequality is non-strict."  The public
theorem statements do not mention generated certificate literals.
-/

namespace Cuboctahedron

theorem not_inFaceInterior_of_not_strict
    {f g : Face} {p : Vec3 Real}
    (hgf : g ≠ f)
    (hbad : offsetR g ≤ dot (normalR g) p) :
    ¬ InFaceInterior f p := by
  intro hInterior
  exact (not_lt_of_ge hbad) (hInterior.2 g hgf)

theorem not_inFaceInterior_of_other_face_on_boundary
    {f g : Face} {p : Vec3 Real}
    (hgf : g ≠ f)
    (hon : dot (normalR g) p = offsetR g) :
    ¬ InFaceInterior f p := by
  exact not_inFaceInterior_of_not_strict
    (f := f) (g := g) (p := p) hgf (by rw [hon])

theorem not_PreImpactForwardAll_of_nonpositive
    {seq : Step14 -> Face} {w : Vec3 Real} {i : Impact15}
    (hi : i ≠ (0 : Impact15))
    (hbad : dot (preImpactNormalR seq i) w ≤ 0) :
    ¬ PreImpactForwardAll seq w := by
  intro hForward
  exact (not_lt_of_ge hbad) (hForward i hi)

theorem no_nonidentity_axis_constraints_of_forced_start_violation
    {seq : Step14 -> Face} {p0 : Vec3 Real} {badFace : Face}
    (hStart : seq 0 = Face.xp)
    (hForcedStart :
      forall data : UnfoldedFeasibleData seq,
        data.w ≠ zeroVec3R ->
        linePoint data.p0 data.w 1 =
          affApply (affRatToReal (totalAff seq)) data.p0 ->
        matVec (affRatToReal (totalAff seq)).M data.w = data.w ->
        data.p0 = p0)
    (hbadFace : badFace ≠ Face.xp)
    (hviol : offsetR badFace ≤ dot (normalR badFace) p0) :
    ¬ NonIdentityAxisConstraints seq := by
  intro hAxis
  rcases hAxis.line_data with
    ⟨data, hNonzero, hStartInterior, hEndpoint, hFixed, _hForward,
      _hForwardAll, _hImpact, _hPreImpact, _hOpen, _hHit⟩
  have hp0 : data.p0 = p0 :=
    hForcedStart data hNonzero hEndpoint hFixed
  have hStartInteriorXp : InFaceInterior Face.xp data.p0 := by
    simpa [hStart] using hStartInterior
  rw [hp0] at hStartInteriorXp
  exact not_inFaceInterior_of_not_strict
    (f := Face.xp) (g := badFace) (p := p0) hbadFace hviol
    hStartInteriorXp

theorem no_nonidentity_axis_constraints_of_forced_direction_nonpositive
    {seq : Step14 -> Face} {candidateW : Vec3 Real} {i : Impact15}
    (hi : i ≠ (0 : Impact15))
    (hForcedDirection :
      forall data : UnfoldedFeasibleData seq,
        data.w ≠ zeroVec3R ->
        linePoint data.p0 data.w 1 =
          affApply (affRatToReal (totalAff seq)) data.p0 ->
        matVec (affRatToReal (totalAff seq)).M data.w = data.w ->
        data.w = candidateW)
    (hbad : dot (preImpactNormalR seq i) candidateW ≤ 0) :
    ¬ NonIdentityAxisConstraints seq := by
  intro hAxis
  rcases hAxis.line_data with
    ⟨data, hNonzero, _hStartInterior, hEndpoint, hFixed, _hForward,
      hForwardAll, _hImpact, _hPreImpact, _hOpen, _hHit⟩
  have hw : data.w = candidateW :=
    hForcedDirection data hNonzero hEndpoint hFixed
  rw [hw] at hForwardAll
  exact not_PreImpactForwardAll_of_nonpositive
    (seq := seq) (w := candidateW) (i := i) hi hbad hForwardAll

end Cuboctahedron
