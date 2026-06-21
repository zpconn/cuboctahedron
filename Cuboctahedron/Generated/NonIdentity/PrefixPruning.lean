import Cuboctahedron.Generated.Coverage.PrefixInterval
import Cuboctahedron.Generated.Coverage.Predicates
import Cuboctahedron.Search.Certificates

/-!
Semantic prefix-level non-identity pruning.

This module is the first non-singleton, non-certificate-literal target for the
symmetry/prefix backend.  A generated leaf can prove that every rank in a small
interval has a fixed pair prefix, then supply exact axis/forced-sequence
witnesses showing that any non-identity feasible orbit would force a
non-omnihedral face sequence.
-/

namespace Cuboctahedron.Generated.NonIdentity.PrefixPruning

theorem nonidentity_killed_of_axis_forces_not_omni
    {r : Fin numPairWords} {axis : Vec3 Rat}
    {kernel : KernelLineWitness} {forcedSeq : Step14 -> Face}
    (hKernel :
      checkKernelLineWitness
        (totalLinearOfPairWord (unrankPairWord r)) axis kernel = true)
    (hForces :
      AxisForcesForcedSeq (unrankPairWord r) axis forcedSeq)
    (hNotOmni : ¬ IsOmniSeq forcedSeq) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled r := by
  intro _hM hbad
  rcases hbad with ⟨seq, hRealize, _hStart, hLinear, hFeasible⟩
  have hAxisConstraints :=
    unfolded_feasible_nonidentity_axis_constraints hFeasible hLinear
  have hForcedEq : forcedSeq = seq :=
    forcedSeq_eq_of_axisForces_data
      (w := unrankPairWord r) (axis := axis) (kernel := kernel)
      (forcedSeq := forcedSeq) (seq := seq)
      hRealize hAxisConstraints hKernel hForces
  exact hNotOmni (by
    rw [hForcedEq]
    exact hRealize.omni)

theorem nonidentity_killed_of_axis_dot_zero
    {r : Fin numPairWords} {axis : Vec3 Rat}
    {kernel : KernelLineWitness} {i : WordIndex}
    (hKernel :
      checkKernelLineWitness
        (totalLinearOfPairWord (unrankPairWord r)) axis kernel = true)
    (hAxisZero :
      AxisDotZeroAtWord (unrankPairWord r) axis i) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled r := by
  intro _hM hbad
  rcases hbad with ⟨seq, hRealize, _hStart, hLinear, hFeasible⟩
  have hSeqLinear : totalLinear seq = totalLinearOfPairWord (unrankPairWord r) :=
    hRealize.linear_eq
  have hAxisConstraints :=
    unfolded_feasible_nonidentity_axis_constraints hFeasible hLinear
  rcases hAxisConstraints.line_data with
    ⟨data, _hNonzero, _hStartLine, _hEnd, hFixed, _hForward,
      hForwardAll, _hImpact, _hPreImpact, _hOpen, _hHit⟩
  have hFixedWord :
      matVec ((totalLinearOfPairWord (unrankPairWord r)).map fun q => (q : Real))
          data.w = data.w := by
    rw [← hSeqLinear]
    simpa [totalLinear, affRatToReal, Aff3.map] using hFixed
  have hCross :
      cross (vecRatToReal axis) data.w = zeroVec3R :=
    checkKernelLineWitness_real_axisLine hKernel hFixedWord
  have hAxisNonzero :
      vecRatToReal axis ≠ zeroVec3R :=
    checkKernelLineWitness_axis_nonzero hKernel
  rcases cross_eq_zero_scalar_of_axis_ne_zero hAxisNonzero hCross with
    ⟨lambda, hParallel⟩
  have hi0 : wordImpact i ≠ (0 : Impact15) := by
    intro h
    have hv := congrArg Fin.val h
    simp [wordImpact, afterStart] at hv
  have hZeroAxis :
      dot (preImpactNormalR seq (wordImpact i))
        (vecRatToReal axis) = 0 :=
    dot_preImpactNormalR_axis_zero_of_axisDotZeroAtWord
      (seq := seq) (w := unrankPairWord r) (axis := axis)
      hRealize.pair_matches hAxisZero
  have hDotW :
      dot (preImpactNormalR seq (wordImpact i)) data.w = 0 := by
    rw [hParallel]
    calc
      dot (preImpactNormalR seq (wordImpact i))
          (scalarMul lambda (vecRatToReal axis)) =
          lambda *
            dot (preImpactNormalR seq (wordImpact i))
              (vecRatToReal axis) := by
        simp [scalarMul, dot]
        ring
      _ = 0 := by
        rw [hZeroAxis]
        ring
  have hPos := hForwardAll (wordImpact i) hi0
  linarith

theorem nonidentity_killed_of_no_fixed_axis
    {r : Fin numPairWords} {witness : NoFixedVectorWitness}
    (hNoFixed :
      checkNoFixedVectorWitness
        (totalLinearOfPairWord (unrankPairWord r)) witness = true) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled r := by
  intro _hM hbad
  rcases hbad with ⟨seq, hRealize, _hStart, hLinear, hFeasible⟩
  have hSeqLinear : totalLinear seq = totalLinearOfPairWord (unrankPairWord r) :=
    hRealize.linear_eq
  have hAxisConstraints :=
    unfolded_feasible_nonidentity_axis_constraints hFeasible hLinear
  rcases nonidentity_axis_constraints_fixed_direction hAxisConstraints with
    ⟨data, hNonzero, hFixed⟩
  have hFixedWord :
      matVec ((totalLinearOfPairWord (unrankPairWord r)).map fun q => (q : Real))
          data.w = data.w := by
    rw [← hSeqLinear]
    simpa [totalLinear, affRatToReal, Aff3.map] using hFixed
  exact hNonzero
    (checkNoFixedVectorWitness_real_zero hNoFixed hFixedWord)

structure BadPairBalancePrefixCert (lo hi : Nat) where
  pairPrefix : Cuboctahedron.Generated.Coverage.PairPrefix
  prefix_covers :
    Cuboctahedron.Generated.Coverage.PrefixRankInterval pairPrefix lo hi
  axis : Vec3 Rat
  kernel : KernelLineWitness
  forcedSeq : Step14 -> Face
  kernel_sound :
    forall raw : Nat, lo <= raw -> raw < hi -> forall hlt : raw < numPairWords,
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix pairPrefix
        (unrankPairWord ⟨raw, hlt⟩) ->
        checkKernelLineWitness
          (totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩))
          axis kernel = true
  forces_sound :
    forall raw : Nat, lo <= raw -> raw < hi -> forall hlt : raw < numPairWords,
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix pairPrefix
        (unrankPairWord ⟨raw, hlt⟩) ->
        AxisForcesForcedSeq (unrankPairWord ⟨raw, hlt⟩) axis forcedSeq
  not_omni : ¬ IsOmniSeq forcedSeq

namespace BadPairBalancePrefixCert

theorem sound {lo hi : Nat}
    (cert : BadPairBalancePrefixCert lo hi) :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat lo hi := by
  intro raw hlo hhi hlt
  let r : Fin numPairWords := ⟨raw, hlt⟩
  have hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix cert.pairPrefix
        (unrankPairWord r) :=
    cert.prefix_covers raw hlo hhi hlt
  exact nonidentity_killed_of_axis_forces_not_omni
    (r := r) (axis := cert.axis) (kernel := cert.kernel)
    (forcedSeq := cert.forcedSeq)
    (cert.kernel_sound raw hlo hhi hlt hprefix)
    (cert.forces_sound raw hlo hhi hlt hprefix)
    cert.not_omni

end BadPairBalancePrefixCert

structure BadDirectionPrefixCert (lo hi : Nat) where
  pairPrefix : Cuboctahedron.Generated.Coverage.PairPrefix
  prefix_covers :
    Cuboctahedron.Generated.Coverage.PrefixRankInterval pairPrefix lo hi
  direction_sound :
    forall raw : Nat, lo <= raw -> raw < hi -> forall hlt : raw < numPairWords,
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix pairPrefix
        (unrankPairWord ⟨raw, hlt⟩) ->
        totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩) ≠
          (matId : Mat3 Rat) ->
        exists axis : Vec3 Rat, exists kernel : KernelLineWitness,
          exists i : WordIndex,
            checkKernelLineWitness
              (totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩))
              axis kernel = true /\
            AxisDotZeroAtWord (unrankPairWord ⟨raw, hlt⟩) axis i

namespace BadDirectionPrefixCert

theorem sound {lo hi : Nat}
    (cert : BadDirectionPrefixCert lo hi) :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat lo hi := by
  intro raw hlo hhi hlt
  let r : Fin numPairWords := ⟨raw, hlt⟩
  intro hM hbad
  have hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix cert.pairPrefix
        (unrankPairWord r) :=
    cert.prefix_covers raw hlo hhi hlt
  rcases cert.direction_sound raw hlo hhi hlt hprefix hM with
    ⟨axis, kernel, i, hKernel, hAxisZero⟩
  exact nonidentity_killed_of_axis_dot_zero
    (r := r) (axis := axis) (kernel := kernel) (i := i)
    hKernel hAxisZero hM hbad

end BadDirectionPrefixCert

structure UniformBadDirectionPrefixCert (lo hi : Nat) where
  pairPrefix : Cuboctahedron.Generated.Coverage.PairPrefix
  prefix_covers :
    Cuboctahedron.Generated.Coverage.PrefixRankInterval pairPrefix lo hi
  axis : Vec3 Rat
  kernel : KernelLineWitness
  impact : WordIndex
  kernel_sound :
    forall raw : Nat, lo <= raw -> raw < hi -> forall hlt : raw < numPairWords,
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix pairPrefix
        (unrankPairWord ⟨raw, hlt⟩) ->
        totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩) ≠
          (matId : Mat3 Rat) ->
        checkKernelLineWitness
          (totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩))
          axis kernel = true
  axis_zero_sound :
    forall raw : Nat, lo <= raw -> raw < hi -> forall hlt : raw < numPairWords,
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix pairPrefix
        (unrankPairWord ⟨raw, hlt⟩) ->
        totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩) ≠
          (matId : Mat3 Rat) ->
        AxisDotZeroAtWord (unrankPairWord ⟨raw, hlt⟩) axis impact

namespace UniformBadDirectionPrefixCert

theorem sound {lo hi : Nat}
    (cert : UniformBadDirectionPrefixCert lo hi) :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat lo hi := by
  intro raw hlo hhi hlt
  let r : Fin numPairWords := ⟨raw, hlt⟩
  intro hM hbad
  have hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix cert.pairPrefix
        (unrankPairWord r) :=
    cert.prefix_covers raw hlo hhi hlt
  have hKernel :=
    cert.kernel_sound raw hlo hhi hlt hprefix hM
  have hAxisZero :=
    cert.axis_zero_sound raw hlo hhi hlt hprefix hM
  exact nonidentity_killed_of_axis_dot_zero
    (r := r) (axis := cert.axis) (kernel := cert.kernel)
    (i := cert.impact) hKernel hAxisZero hM hbad

end UniformBadDirectionPrefixCert

structure NoFixedAxisPrefixCert (lo hi : Nat) where
  pairPrefix : Cuboctahedron.Generated.Coverage.PairPrefix
  prefix_covers :
    Cuboctahedron.Generated.Coverage.PrefixRankInterval pairPrefix lo hi
  witness : NoFixedVectorWitness
  no_fixed_sound :
    forall raw : Nat, lo <= raw -> raw < hi -> forall hlt : raw < numPairWords,
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix pairPrefix
        (unrankPairWord ⟨raw, hlt⟩) ->
        totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩) ≠
          (matId : Mat3 Rat) ->
        checkNoFixedVectorWitness
          (totalLinearOfPairWord (unrankPairWord ⟨raw, hlt⟩))
          witness = true

namespace NoFixedAxisPrefixCert

theorem sound {lo hi : Nat}
    (cert : NoFixedAxisPrefixCert lo hi) :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat lo hi := by
  intro raw hlo hhi hlt
  let r : Fin numPairWords := ⟨raw, hlt⟩
  intro hM hbad
  have hprefix :
      Cuboctahedron.Generated.Coverage.PairWordHasPrefix cert.pairPrefix
        (unrankPairWord r) :=
    cert.prefix_covers raw hlo hhi hlt
  have hNoFixed :=
    cert.no_fixed_sound raw hlo hhi hlt hprefix hM
  exact nonidentity_killed_of_no_fixed_axis
    (r := r) (witness := cert.witness) hNoFixed hM hbad

end NoFixedAxisPrefixCert

end Cuboctahedron.Generated.NonIdentity.PrefixPruning
