import Cuboctahedron.Search.AxisForcedRankLanguage

/-!
Small smoke target for the Bellman axis-forces boundary.

This file intentionally stops at `PairSignLanguageAtRank`.  It isolates the
axis-forces import stack from the heavier Bellman trace shard so the memory
guard can measure the split bridge before any production generator merges the
two paths.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanAxisForcesPairSignSmoke

open Cuboctahedron

theorem pairSign_of_axisForces_smoke
    {rank : Fin numPairWords} {axis : Vec3 Rat} {kernel : KernelLineWitness}
    {forcedSeq seq : Step14 -> Face}
    (hRealize : SeqRealizesPairWord (unrankPairWord rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq)
    (hKernel :
      checkKernelLineWitness (totalLinearOfPairWord (unrankPairWord rank))
        axis kernel = true)
    (hForces :
      AxisForcesForcedSeq (unrankPairWord rank) axis forcedSeq) :
    PairSignLanguageAtRank rank forcedSeq seq :=
  pairSignLanguageAtRank_of_axisForces
    hRealize hAxisConstraints hKernel hForces

theorem contributionLabels_eq_of_axisForces_smoke
    {α : Type} (labelOfFace : Face -> α)
    {rank : Fin numPairWords} {axis : Vec3 Rat} {kernel : KernelLineWitness}
    {forcedSeq seq : Step14 -> Face}
    (hRealize : SeqRealizesPairWord (unrankPairWord rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq)
    (hKernel :
      checkKernelLineWitness (totalLinearOfPairWord (unrankPairWord rank))
        axis kernel = true)
    (hForces :
      AxisForcesForcedSeq (unrankPairWord rank) axis forcedSeq) :
    faceLabelsInContributionOrder labelOfFace seq =
      faceLabelsInContributionOrder labelOfFace forcedSeq :=
  faceLabelsInContributionOrder_eq_of_axisForces
    labelOfFace hRealize hAxisConstraints hKernel hForces

theorem axisForcesPairSignSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanAxisForcesPairSignSmoke
