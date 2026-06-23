import Cuboctahedron.Generated.NonIdentity.PrefixPruning

/-!
Phase 6U template-soundness prototypes for non-identity obstruction families.

The cross-family profiler groups many failures under diagnostic labels such as
`nonidentity.zeroNormal`.  This module records the proof-usable theorem schema
for that label without emitting any generated evidence.
-/

namespace Cuboctahedron.Generated.NonIdentity.TemplateSoundness

open Cuboctahedron.Generated

/--
Soundness schema for the `nonidentity.zeroNormal` diagnostic family.

If a generated template supplies an exact kernel-axis witness and an impact
whose pre-impact normal is orthogonal to that forced axis, then no feasible
non-identity started unfolded orbit can realize the rank.
-/
theorem zeroNormal_sound
    {r : Fin numPairWords} {axis : Vec3 Rat}
    {kernel : KernelLineWitness} {i : WordIndex}
    (hKernel :
      checkKernelLineWitness
        (totalLinearOfPairWord (unrankPairWord r)) axis kernel = true)
    (hAxisZero :
      AxisDotZeroAtWord (unrankPairWord r) axis i) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled r :=
  PrefixPruning.nonidentity_killed_of_axis_dot_zero hKernel hAxisZero

/--
`nonidentity.zeroAxis` is proof-usable only after it is refined to a concrete
zero-normal witness.  The axis label alone is a grouping key, while the supplied
impact and `AxisDotZeroAtWord` proof carry the semantic contradiction.
-/
theorem zeroAxis_refines_to_zeroNormal
    {r : Fin numPairWords} {axis : Vec3 Rat}
    {kernel : KernelLineWitness} {i : WordIndex}
    (hKernel :
      checkKernelLineWitness
        (totalLinearOfPairWord (unrankPairWord r)) axis kernel = true)
    (hAxisZero :
      AxisDotZeroAtWord (unrankPairWord r) axis i) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled r :=
  zeroNormal_sound hKernel hAxisZero

/--
`nonidentity.zeroRemainingCounts` is also a grouping key, not a standalone
geometric proof.  It becomes trusted evidence only when the generated leaf
provides an actual zero-normal witness for every covered completion.
-/
theorem zeroRemainingCounts_refines_to_zeroNormal
    {r : Fin numPairWords} {axis : Vec3 Rat}
    {kernel : KernelLineWitness} {i : WordIndex}
    (hKernel :
      checkKernelLineWitness
        (totalLinearOfPairWord (unrankPairWord r)) axis kernel = true)
    (hAxisZero :
      AxisDotZeroAtWord (unrankPairWord r) axis i) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled r :=
  zeroNormal_sound hKernel hAxisZero

end Cuboctahedron.Generated.NonIdentity.TemplateSoundness
