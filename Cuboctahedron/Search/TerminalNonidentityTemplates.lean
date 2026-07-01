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

theorem no_nonidentity_axis_constraints_of_direct_start_violation
    {seq : Step14 -> Face} {badFace : Face}
    (hStart : seq 0 = Face.xp)
    (hbadFace : badFace ≠ Face.xp)
    (hviol :
      forall data : UnfoldedFeasibleData seq,
        data.w ≠ zeroVec3R ->
        linePoint data.p0 data.w 1 =
          affApply (affRatToReal (totalAff seq)) data.p0 ->
        matVec (affRatToReal (totalAff seq)).M data.w = data.w ->
        offsetR badFace ≤ dot (normalR badFace) data.p0) :
    ¬ NonIdentityAxisConstraints seq := by
  intro hAxis
  rcases hAxis.line_data with
    ⟨data, hNonzero, hStartInterior, hEndpoint, hFixed, _hForward,
      _hForwardAll, _hImpact, _hPreImpact, _hOpen, _hHit⟩
  have hbad : offsetR badFace ≤ dot (normalR badFace) data.p0 :=
    hviol data hNonzero hEndpoint hFixed
  have hStartInteriorXp : InFaceInterior Face.xp data.p0 := by
    simpa [hStart] using hStartInterior
  exact not_inFaceInterior_of_not_strict
    (f := Face.xp) (g := badFace) (p := data.p0) hbadFace hbad
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

theorem no_nonidentity_axis_constraints_of_forced_preimpact_point_not_interior
    {seq : Step14 -> Face} {i : Impact15} {x : Vec3 Real}
    (hForcedPoint :
      forall data : UnfoldedFeasibleData seq,
        data.w ≠ zeroVec3R ->
        linePoint data.p0 data.w 1 =
          affApply (affRatToReal (totalAff seq)) data.p0 ->
        matVec (affRatToReal (totalAff seq)).M data.w = data.w ->
        linePoint data.p0 data.w (data.crossing_times i) = x)
    (hnot : ¬ InPreUnfoldedImpactFaceInterior seq i x) :
    ¬ NonIdentityAxisConstraints seq := by
  intro hAxis
  rcases hAxis.line_data with
    ⟨data, hNonzero, _hStartInterior, hEndpoint, hFixed, _hForward,
      _hForwardAll, _hImpact, hPreImpact, _hOpen, _hHit⟩
  have hx : linePoint data.p0 data.w (data.crossing_times i) = x :=
    hForcedPoint data hNonzero hEndpoint hFixed
  exact hnot (by simpa [hx] using hPreImpact i)

theorem no_nonidentity_axis_constraints_of_forced_open_segment_not_interior
    {seq : Step14 -> Face} {i : Step14} {s : Real} {x : Vec3 Real}
    (hs0 : 0 < s)
    (hs1 : s < 1)
    (hForcedPoint :
      forall data : UnfoldedFeasibleData seq,
        data.w ≠ zeroVec3R ->
        linePoint data.p0 data.w 1 =
          affApply (affRatToReal (totalAff seq)) data.p0 ->
        matVec (affRatToReal (totalAff seq)).M data.w = data.w ->
        linePoint data.p0 data.w
          (segmentTime (data.crossing_times i.castSucc)
            (data.crossing_times (transitionEndImpact i)) s) = x)
    (hnot : ¬ InPreUnfoldedPolyhedronInterior seq (transitionEndImpact i) x) :
    ¬ NonIdentityAxisConstraints seq := by
  intro hAxis
  rcases hAxis.line_data with
    ⟨data, hNonzero, _hStartInterior, hEndpoint, hFixed, _hForward,
      _hForwardAll, _hImpact, _hPreImpact, hOpen, _hHit⟩
  have hx :
      linePoint data.p0 data.w
          (segmentTime (data.crossing_times i.castSucc)
            (data.crossing_times (transitionEndImpact i)) s) = x :=
    hForcedPoint data hNonzero hEndpoint hFixed
  exact hnot (by simpa [hx] using hOpen i s hs0 hs1)

structure AxisStartViolationCert
    (seq : Step14 -> Face) where
  axis : Vec3 Rat
  p0 : Vec3 Rat
  lambda : Rat
  kernel : KernelLineWitness
  solve : AffineAxisSolveWitness
  badFace : Face

def AxisStartViolationCert.Checked
    {seq : Step14 -> Face} (cert : AxisStartViolationCert seq) : Prop :=
  checkKernelLineWitness (totalLinear seq) cert.axis cert.kernel = true /\
    checkAffineAxisSolveWitness (totalAff seq) cert.axis cert.p0
      cert.lambda cert.solve = true /\
    cert.badFace ≠ Face.xp /\
    offsetR cert.badFace ≤ dot (normalR cert.badFace) (vecRatToReal cert.p0)

theorem AxisStartViolationCert.no_axis_constraints
    {seq : Step14 -> Face} (cert : AxisStartViolationCert seq)
    (hStart : StartsXp seq)
    (hchecked : cert.Checked) :
    ¬ NonIdentityAxisConstraints seq := by
  intro hAxis
  rcases hchecked with ⟨hKernel, hSolve, hbadFace, hviol⟩
  rcases hAxis.line_data with
    ⟨data', _hNonzero, hStartInterior, _hEndpoint, hFixed, _hForward,
      _hForwardAll, _hImpact, _hPreImpact, _hOpen, _hHit⟩
  have hp0' : data'.p0 = vecRatToReal cert.p0 := by
    have hFixed' :
        matVec ((totalLinear seq).map fun q => (q : Real)) data'.w =
          data'.w := by
      simpa [totalLinear, affRatToReal, Aff3.map] using hFixed
    have hCross :=
      checkKernelLineWitness_real_axisLine
        (M := totalLinear seq) (axis := cert.axis)
        (witness := cert.kernel) hKernel hFixed'
    have hAxisNonzero := checkKernelLineWitness_axis_nonzero hKernel
    rcases cross_eq_zero_scalar_of_axis_ne_zero hAxisNonzero hCross with
      ⟨lambda, hParallel⟩
    have hsol :=
      endpoint_axis_solve_equation
        (seq := seq) (axis := cert.axis) (data := data')
        (lambda := lambda) hStart hParallel
    exact
      checkAffineAxisSolveWitness_real_start_eq
        (A := totalAff seq) (axis := cert.axis) (certP := cert.p0)
        (certLambda := cert.lambda) (witness := cert.solve)
        hSolve hsol
  have hStartInteriorXp : InFaceInterior Face.xp data'.p0 := by
    rw [hStart] at hStartInterior
    exact hStartInterior
  rw [hp0'] at hStartInteriorXp
  exact not_inFaceInterior_of_not_strict
    (f := Face.xp) (g := cert.badFace) (p := vecRatToReal cert.p0)
    hbadFace hviol hStartInteriorXp

structure PreImpactPointViolationCert
    (seq : Step14 -> Face) where
  impact : Impact15
  point : Vec3 Rat
  forcedPoint :
    forall data : UnfoldedFeasibleData seq,
      data.w ≠ zeroVec3R ->
      linePoint data.p0 data.w 1 =
        affApply (affRatToReal (totalAff seq)) data.p0 ->
      matVec (affRatToReal (totalAff seq)).M data.w = data.w ->
      linePoint data.p0 data.w (data.crossing_times impact) =
        vecRatToReal point
  notInterior :
    ¬ InPreUnfoldedImpactFaceInterior seq impact (vecRatToReal point)

theorem PreImpactPointViolationCert.no_axis_constraints
    {seq : Step14 -> Face} (cert : PreImpactPointViolationCert seq) :
    ¬ NonIdentityAxisConstraints seq :=
  no_nonidentity_axis_constraints_of_forced_preimpact_point_not_interior
    (seq := seq) (i := cert.impact) (x := vecRatToReal cert.point)
    cert.forcedPoint cert.notInterior

structure OpenSegmentViolationCert
    (seq : Step14 -> Face) where
  step : Step14
  s : Real
  point : Vec3 Rat
  s_pos : 0 < s
  s_lt_one : s < 1
  forcedPoint :
    forall data : UnfoldedFeasibleData seq,
      data.w ≠ zeroVec3R ->
      linePoint data.p0 data.w 1 =
        affApply (affRatToReal (totalAff seq)) data.p0 ->
      matVec (affRatToReal (totalAff seq)).M data.w = data.w ->
      linePoint data.p0 data.w
        (segmentTime (data.crossing_times step.castSucc)
          (data.crossing_times (transitionEndImpact step)) s) =
        vecRatToReal point
  notInterior :
    ¬ InPreUnfoldedPolyhedronInterior seq (transitionEndImpact step)
      (vecRatToReal point)

theorem OpenSegmentViolationCert.no_axis_constraints
    {seq : Step14 -> Face} (cert : OpenSegmentViolationCert seq) :
    ¬ NonIdentityAxisConstraints seq :=
  no_nonidentity_axis_constraints_of_forced_open_segment_not_interior
    (seq := seq) (i := cert.step) (s := cert.s)
    (x := vecRatToReal cert.point)
    cert.s_pos cert.s_lt_one cert.forcedPoint cert.notInterior

end Cuboctahedron
