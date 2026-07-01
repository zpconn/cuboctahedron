import Cuboctahedron.Search.AxisForcedRankLanguage
import Cuboctahedron.Search.BellmanPotential

/-!
Reusable bridge from axis-forced nonidentity sequences into Bellman label-step
languages.

Generated Bellman margin leaves should prove a label-step run for a semantic
forced/template sequence.  The theorems here let those leaves reuse the common
axis-forcing geometry: any feasible nonidentity sequence whose direction is
forced to the template has the same contribution-order label word, so the same
Bellman run and potential bound apply.
-/

namespace Cuboctahedron

theorem bellmanLabelStepRun_of_sameFaceSeq
    {State Label : Type}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start finish : State} {template seq : Step14 -> Face}
    {gain : Int}
    (hrun :
      BellmanLabelStepRun Step start finish
        (faceLabelsInContributionOrder labelOfFace template) gain)
    (hseq : SameFaceSeq template seq) :
    BellmanLabelStepRun Step start finish
      (faceLabelsInContributionOrder labelOfFace seq) gain := by
  have hlabels :
      faceLabelsInContributionOrder labelOfFace seq =
        faceLabelsInContributionOrder labelOfFace template :=
    faceLabelsInContributionOrder_eq_of_same labelOfFace hseq
  rw [hlabels]
  exact hrun

theorem bellmanLabelStepRun_of_pairSignLanguageAtRank
    {State Label : Type}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {rank : Fin numPairWords} {template seq : Step14 -> Face}
    {start finish : State} {gain : Int}
    (hrun :
      BellmanLabelStepRun Step start finish
        (faceLabelsInContributionOrder labelOfFace template) gain)
    (htemplate : PairWordMatchesSeq (unrankPairWord rank) template)
    (hseq : PairSignLanguageAtRank rank template seq) :
    BellmanLabelStepRun Step start finish
      (faceLabelsInContributionOrder labelOfFace seq) gain :=
  bellmanLabelStepRun_of_sameFaceSeq hrun
    (sameFaceSeq_of_pairSignLanguageAtRank htemplate hseq)

theorem bellmanLabelStepRun_of_axisForces
    {State Label : Type}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {rank : Fin numPairWords} {axis : Vec3 Rat} {kernel : KernelLineWitness}
    {forcedSeq seq : Step14 -> Face}
    {start finish : State} {gain : Int}
    (hrun :
      BellmanLabelStepRun Step start finish
        (faceLabelsInContributionOrder labelOfFace forcedSeq) gain)
    (hRealize : SeqRealizesPairWord (unrankPairWord rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq)
    (hKernel :
      checkKernelLineWitness (totalLinearOfPairWord (unrankPairWord rank))
        axis kernel = true)
    (hForces :
      AxisForcesForcedSeq (unrankPairWord rank) axis forcedSeq) :
    BellmanLabelStepRun Step start finish
      (faceLabelsInContributionOrder labelOfFace seq) gain := by
  have hlabels :
      faceLabelsInContributionOrder labelOfFace seq =
        faceLabelsInContributionOrder labelOfFace forcedSeq :=
    faceLabelsInContributionOrder_eq_of_axisForces
      labelOfFace hRealize hAxisConstraints hKernel hForces
  rw [hlabels]
  exact hrun

theorem scaledMargin_nonpos_of_axisForces_labelStepRun
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {rank : Fin numPairWords} {axis : Vec3 Rat} {kernel : KernelLineWitness}
    {forcedSeq seq : Step14 -> Face}
    {start finish : State} {gain const margin : Int}
    (hrun :
      BellmanLabelStepRun Step start finish
        (faceLabelsInContributionOrder labelOfFace forcedSeq) gain)
    (hvalid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (hfinish : 0 <= V finish)
    (hroot : const + V start <= 0)
    (hmargin : margin <= const + gain)
    (hRealize : SeqRealizesPairWord (unrankPairWord rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq)
    (hKernel :
      checkKernelLineWitness (totalLinearOfPairWord (unrankPairWord rank))
        axis kernel = true)
    (hForces :
      AxisForcesForcedSeq (unrankPairWord rank) axis forcedSeq) :
    margin <= 0 := by
  have hrunSeq :
      BellmanLabelStepRun Step start finish
        (faceLabelsInContributionOrder labelOfFace seq) gain :=
    bellmanLabelStepRun_of_axisForces
      hrun hRealize hAxisConstraints hKernel hForces
  have hbound : const + gain <= 0 :=
    const_add_labelStepRunGain_nonpos
      (V := V) hrunSeq hvalid hfinish hroot
  linarith

end Cuboctahedron
