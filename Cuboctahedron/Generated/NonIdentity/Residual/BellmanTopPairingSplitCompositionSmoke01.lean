import Cuboctahedron.Generated.NonIdentity.Residual.BellmanAxisForcesPairSignSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke01

/-!
Second small composition smoke for the split Bellman route.

This mirrors `BellmanTopPairingSplitCompositionSmoke` for a second sampled
Bellman graph path object.  The trace shard still stops at the
`PairSignLanguageAtRank` boundary, and this tiny root composes it with the
separately measured axis-forces bridge.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplitCompositionSmoke01

open Cuboctahedron

private abbrev traceRank : Fin numPairWords :=
  _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke01.generated01Rank

private abbrev traceForcedSeq : Step14 -> Face :=
  _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke01.generated01ForcedSeq

theorem generatedClosedLanguageForSeqOfAxisForcesSplit
    {axis : Vec3 Rat} {kernel : KernelLineWitness}
    {seq : Step14 -> Face}
    (hRealize :
      SeqRealizesPairWord (unrankPairWord traceRank) seq)
    (hAxisConstraints :
      NonIdentityAxisConstraints seq)
    (hKernel :
      checkKernelLineWitness
        (totalLinearOfPairWord (unrankPairWord traceRank))
        axis kernel = true)
    (hForces :
      AxisForcesForcedSeq (unrankPairWord traceRank)
        axis traceForcedSeq) :
    TopPairingClosedLanguageForSeq traceRank seq Face.ym :=
  _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke01.generated01ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    (_root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanAxisForcesPairSignSmoke.pairSign_of_axisForces_smoke
      hRealize hAxisConstraints hKernel hForces)

theorem splitCompositionSmoke01_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplitCompositionSmoke01
