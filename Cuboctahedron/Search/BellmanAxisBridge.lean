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

structure BellmanAxisRankFamily
    (State Label : Type)
    (V : State -> Int)
    (Step : State -> Label -> State -> Int -> Prop)
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (ContainsRank : Fin numPairWords -> Prop)
    (scaledMargin : Fin numPairWords -> Int) where
  forcedSeq : Step14 -> Face
  axis : Vec3 Rat
  kernel : KernelLineWitness
  finish : State
  gain : Int
  run :
    BellmanLabelStepRun Step start finish
      (faceLabelsInContributionOrder labelOfFace forcedSeq) gain
  step_valid :
    forall s label t gain, Step s label t gain -> gain + V t <= V s
  finish_nonneg : 0 <= V finish
  root_bound : const + V start <= 0
  margin_bound :
    forall rank, ContainsRank rank -> scaledMargin rank <= const + gain
  kernel_check :
    forall rank, ContainsRank rank ->
      checkKernelLineWitness (totalLinearOfPairWord (unrankPairWord rank))
        axis kernel = true
  axis_forces :
    forall rank, ContainsRank rank ->
      AxisForcesForcedSeq (unrankPairWord rank) axis forcedSeq

namespace BellmanAxisRankFamily

theorem scaledMargin_nonpos
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {ContainsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      BellmanAxisRankFamily
        State Label V Step labelOfFace start const ContainsRank scaledMargin)
    {rank : Fin numPairWords} {seq : Step14 -> Face}
    (hrank : ContainsRank rank)
    (hRealize : SeqRealizesPairWord (unrankPairWord rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_axisForces_labelStepRun
    (labelOfFace := labelOfFace)
    (V := V)
    (Step := Step)
    (rank := rank)
    (axis := family.axis)
    (kernel := family.kernel)
    (forcedSeq := family.forcedSeq)
    (seq := seq)
    (start := start)
    (finish := family.finish)
    (gain := family.gain)
    (const := const)
    (margin := scaledMargin rank)
    family.run
    family.step_valid
    family.finish_nonneg
    family.root_bound
    (family.margin_bound rank hrank)
    hRealize
    hAxisConstraints
    (family.kernel_check rank hrank)
    (family.axis_forces rank hrank)

end BellmanAxisRankFamily

structure BellmanAxisRankLanguageFamily
    (State Label : Type)
    (V : State -> Int)
    (Step : State -> Label -> State -> Int -> Prop)
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (ContainsRank : Fin numPairWords -> Prop)
    (scaledMargin : Fin numPairWords -> Int) where
  axis : Vec3 Rat
  kernel :
    forall rank, ContainsRank rank -> KernelLineWitness
  forcedSeq :
    forall rank, ContainsRank rank -> Step14 -> Face
  finish :
    forall rank, ContainsRank rank -> State
  gain :
    forall rank, ContainsRank rank -> Int
  run :
    forall rank hrank,
      BellmanLabelStepRun Step start (finish rank hrank)
        (faceLabelsInContributionOrder labelOfFace (forcedSeq rank hrank))
        (gain rank hrank)
  step_valid :
    forall s label t gain, Step s label t gain -> gain + V t <= V s
  finish_nonneg :
    forall rank hrank, 0 <= V (finish rank hrank)
  root_bound : const + V start <= 0
  margin_bound :
    forall rank hrank, scaledMargin rank <= const + gain rank hrank
  kernel_check :
    forall rank hrank,
      checkKernelLineWitness (totalLinearOfPairWord (unrankPairWord rank))
        axis (kernel rank hrank) = true
  axis_forces :
    forall rank hrank,
      AxisForcesForcedSeq (unrankPairWord rank) axis (forcedSeq rank hrank)

namespace BellmanAxisRankLanguageFamily

theorem scaledMargin_nonpos
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {ContainsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      BellmanAxisRankLanguageFamily
        State Label V Step labelOfFace start const ContainsRank scaledMargin)
    {rank : Fin numPairWords} {seq : Step14 -> Face}
    (hrank : ContainsRank rank)
    (hRealize : SeqRealizesPairWord (unrankPairWord rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_axisForces_labelStepRun
    (labelOfFace := labelOfFace)
    (V := V)
    (Step := Step)
    (rank := rank)
    (axis := family.axis)
    (kernel := family.kernel rank hrank)
    (forcedSeq := family.forcedSeq rank hrank)
    (seq := seq)
    (start := start)
    (finish := family.finish rank hrank)
    (gain := family.gain rank hrank)
    (const := const)
    (margin := scaledMargin rank)
    (family.run rank hrank)
    family.step_valid
    (family.finish_nonneg rank hrank)
    family.root_bound
    (family.margin_bound rank hrank)
    hRealize
    hAxisConstraints
    (family.kernel_check rank hrank)
    (family.axis_forces rank hrank)

end BellmanAxisRankLanguageFamily

structure BellmanAxisRankIndexedFamily
    (Index State Label : Type)
    (V : State -> Int)
    (Step : State -> Label -> State -> Int -> Prop)
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (rankOf : Index -> Fin numPairWords)
    (scaledMargin : Fin numPairWords -> Int) where
  axis : Vec3 Rat
  kernel : Index -> KernelLineWitness
  forcedSeq : Index -> Step14 -> Face
  finish : Index -> State
  gain : Index -> Int
  run :
    forall idx,
      BellmanLabelStepRun Step start (finish idx)
        (faceLabelsInContributionOrder labelOfFace (forcedSeq idx))
        (gain idx)
  step_valid :
    forall s label t gain, Step s label t gain -> gain + V t <= V s
  finish_nonneg :
    forall idx, 0 <= V (finish idx)
  root_bound : const + V start <= 0
  margin_bound :
    forall idx, scaledMargin (rankOf idx) <= const + gain idx
  kernel_check :
    forall idx,
      checkKernelLineWitness (totalLinearOfPairWord (unrankPairWord (rankOf idx)))
        axis (kernel idx) = true
  axis_forces :
    forall idx,
      AxisForcesForcedSeq (unrankPairWord (rankOf idx)) axis (forcedSeq idx)

namespace BellmanAxisRankIndexedFamily

theorem scaledMargin_nonpos
    {Index State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {rankOf : Index -> Fin numPairWords}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      BellmanAxisRankIndexedFamily
        Index State Label V Step labelOfFace start const rankOf scaledMargin)
    (idx : Index) {seq : Step14 -> Face}
    (hRealize : SeqRealizesPairWord (unrankPairWord (rankOf idx)) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    scaledMargin (rankOf idx) <= 0 :=
  scaledMargin_nonpos_of_axisForces_labelStepRun
    (labelOfFace := labelOfFace)
    (V := V)
    (Step := Step)
    (rank := rankOf idx)
    (axis := family.axis)
    (kernel := family.kernel idx)
    (forcedSeq := family.forcedSeq idx)
    (seq := seq)
    (start := start)
    (finish := family.finish idx)
    (gain := family.gain idx)
    (const := const)
    (margin := scaledMargin (rankOf idx))
    (family.run idx)
    family.step_valid
    (family.finish_nonneg idx)
    family.root_bound
    (family.margin_bound idx)
    hRealize
    hAxisConstraints
    (family.kernel_check idx)
    (family.axis_forces idx)

end BellmanAxisRankIndexedFamily

structure BellmanAxisRankIndexedCover
    (Index State Label : Type)
    (V : State -> Int)
    (Step : State -> Label -> State -> Int -> Prop)
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (rankOf : Index -> Fin numPairWords)
    (ContainsRank : Fin numPairWords -> Prop)
    (scaledMargin : Fin numPairWords -> Int) where
  family :
    BellmanAxisRankIndexedFamily
      Index State Label V Step labelOfFace start const rankOf scaledMargin
  covers :
    forall rank, ContainsRank rank -> exists idx : Index, rankOf idx = rank

namespace BellmanAxisRankIndexedCover

theorem scaledMargin_nonpos
    {Index State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {rankOf : Index -> Fin numPairWords}
    {ContainsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (cover :
      BellmanAxisRankIndexedCover
        Index State Label V Step labelOfFace start const rankOf
        ContainsRank scaledMargin)
    {rank : Fin numPairWords}
    (hrank : ContainsRank rank)
    {seq : Step14 -> Face}
    (hRealize : SeqRealizesPairWord (unrankPairWord rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    scaledMargin rank <= 0 := by
  rcases cover.covers rank hrank with ⟨idx, hidx⟩
  rw [← hidx] at hRealize ⊢
  exact BellmanAxisRankIndexedFamily.scaledMargin_nonpos
    cover.family idx hRealize hAxisConstraints

end BellmanAxisRankIndexedCover

structure BellmanRankObjectMembership
    (Obj : Type)
    (rankOf : Obj -> Fin numPairWords)
    (Accepts : Obj -> Prop)
    (ContainsRank : Fin numPairWords -> Prop) where
  objectOf : forall rank, ContainsRank rank -> Obj
  object_accepts : forall rank hrank, Accepts (objectOf rank hrank)
  object_rank : forall rank hrank, rankOf (objectOf rank hrank) = rank

namespace BellmanRankObjectMembership

theorem covers
    {Obj : Type}
    {rankOf : Obj -> Fin numPairWords}
    {Accepts : Obj -> Prop}
    {ContainsRank : Fin numPairWords -> Prop}
    (membership :
      BellmanRankObjectMembership Obj rankOf Accepts ContainsRank) :
    forall rank, ContainsRank rank -> exists obj, Accepts obj /\ rankOf obj = rank := by
  intro rank hrank
  exact ⟨membership.objectOf rank hrank,
    membership.object_accepts rank hrank,
    membership.object_rank rank hrank⟩

end BellmanRankObjectMembership

structure BellmanAxisRankObjectCover
    (Obj State Label : Type)
    (V : State -> Int)
    (Step : State -> Label -> State -> Int -> Prop)
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (rankOf : Obj -> Fin numPairWords)
    (Accepts : Obj -> Prop)
    (ContainsRank : Fin numPairWords -> Prop)
    (scaledMargin : Fin numPairWords -> Int) where
  forcedSeq : Obj -> Step14 -> Face
  trace_bound :
    BellmanLabelStepRunLanguageBound V Step start const
      (fun obj => scaledMargin (rankOf obj))
      (fun obj => faceLabelsInContributionOrder labelOfFace (forcedSeq obj))
      Accepts
  step_valid :
    forall s label t gain, Step s label t gain -> gain + V t <= V s
  root_bound : const + V start <= 0
  covers :
    forall rank, ContainsRank rank -> exists obj, Accepts obj /\ rankOf obj = rank

namespace BellmanAxisRankObjectCover

theorem scaledMargin_nonpos_at_object
    {Obj State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {rankOf : Obj -> Fin numPairWords}
    {Accepts : Obj -> Prop}
    {ContainsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (cover :
      BellmanAxisRankObjectCover
        Obj State Label V Step labelOfFace start const rankOf
        Accepts ContainsRank scaledMargin)
    (obj : Obj) (hobj : Accepts obj) :
    scaledMargin (rankOf obj) <= 0 :=
  scaledMargin_nonpos_of_bellmanLabelStepRunLanguageBound
    (V := V)
    (Step := Step)
    (start := start)
    (const := const)
    (scaledMargin := fun obj => scaledMargin (rankOf obj))
    (wordOf := fun obj =>
      faceLabelsInContributionOrder labelOfFace (cover.forcedSeq obj))
    (Accepts := Accepts)
    cover.step_valid
    cover.root_bound
    cover.trace_bound
    obj
    hobj

theorem scaledMargin_nonpos
    {Obj State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {rankOf : Obj -> Fin numPairWords}
    {Accepts : Obj -> Prop}
    {ContainsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (cover :
      BellmanAxisRankObjectCover
        Obj State Label V Step labelOfFace start const rankOf
        Accepts ContainsRank scaledMargin)
    {rank : Fin numPairWords}
    (hrank : ContainsRank rank) :
    scaledMargin rank <= 0 := by
  rcases cover.covers rank hrank with ⟨obj, hobj, hidx⟩
  rw [← hidx]
  exact cover.scaledMargin_nonpos_at_object obj hobj

end BellmanAxisRankObjectCover

end Cuboctahedron
