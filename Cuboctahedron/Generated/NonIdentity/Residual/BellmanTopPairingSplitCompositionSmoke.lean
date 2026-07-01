import Cuboctahedron.Generated.NonIdentity.Residual.BellmanAxisForcesPairSignSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke

/-!
Small composition smoke for the split Bellman route.

The ordinary generated trace shard stops at `PairSignLanguageAtRank`; the
axis-forces bridge is measured separately.  This file checks that the two
surfaces compose in a tiny root module, without putting the axis-forces import
back into every trace leaf.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplitCompositionSmoke

open Cuboctahedron

private abbrev traceRank : Fin numPairWords :=
  _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke.generatedRank

private abbrev traceForcedSeq : Step14 -> Face :=
  _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke.generatedForcedSeq

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
  _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke.generatedClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    (_root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanAxisForcesPairSignSmoke.pairSign_of_axisForces_smoke
      hRealize hAxisConstraints hKernel hForces)

theorem splitCompositionSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplitCompositionSmoke
