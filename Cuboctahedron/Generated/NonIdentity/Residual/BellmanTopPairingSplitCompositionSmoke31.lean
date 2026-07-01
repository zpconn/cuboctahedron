import Cuboctahedron.Generated.NonIdentity.Residual.BellmanAxisForcesPairSignSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke31

/-!
Small composition smoke for a sampled split Bellman route.

This file composes a generated trace shard at the `PairSignLanguageAtRank`
boundary with the separately measured axis-forces bridge.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplitCompositionSmoke31

open Cuboctahedron

private abbrev traceRank : Fin numPairWords :=
  _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke31.generated31Rank

private abbrev traceForcedSeq : Step14 -> Face :=
  _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke31.generated31ForcedSeq

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
  _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke31.generated31ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    (_root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanAxisForcesPairSignSmoke.pairSign_of_axisForces_smoke
      hRealize hAxisConstraints hKernel hForces)

theorem splitCompositionSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplitCompositionSmoke31
