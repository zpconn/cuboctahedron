import Cuboctahedron.Search.Certificates
import Cuboctahedron.Search.RankFaceLabelLanguage

/-!
Bridge from axis-forced nonidentity data to rank-indexed face-label languages.

The nonidentity residual Bellman route needs generated holonomy-family
predicates to establish that any feasible sequence follows the same signed
face language as the generated template.  The geometric work already lives in
`forcedSeq_eq_of_axisForces_data`; this file packages that result in the
`PairSignLanguageAtRank` surface used by generated Bellman automata.
-/

namespace Cuboctahedron

theorem pairSignLanguageAtRank_of_axisForces
    {rank : Fin numPairWords} {axis : Vec3 Rat} {kernel : KernelLineWitness}
    {forcedSeq seq : Step14 -> Face}
    (hRealize : SeqRealizesPairWord (unrankPairWord rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq)
    (hKernel :
      checkKernelLineWitness (totalLinearOfPairWord (unrankPairWord rank))
        axis kernel = true)
    (hForces :
      AxisForcesForcedSeq (unrankPairWord rank) axis forcedSeq) :
    PairSignLanguageAtRank rank forcedSeq seq := by
  have hEq : forcedSeq = seq :=
    forcedSeq_eq_of_axisForces_data
      (w := unrankPairWord rank) (axis := axis) (kernel := kernel)
      (forcedSeq := forcedSeq) (seq := seq)
      hRealize hAxisConstraints hKernel hForces
  refine ⟨hRealize.pair_matches, ?_, ?_⟩
  · intro i
    rw [← hEq]
  · rw [← hEq]

theorem faceLabelsInContributionOrder_eq_of_axisForces
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
  faceLabelsInContributionOrder_eq_of_pairSignLanguageAtRank labelOfFace
    hForces.2.1
    (pairSignLanguageAtRank_of_axisForces
      hRealize hAxisConstraints hKernel hForces)

end Cuboctahedron
