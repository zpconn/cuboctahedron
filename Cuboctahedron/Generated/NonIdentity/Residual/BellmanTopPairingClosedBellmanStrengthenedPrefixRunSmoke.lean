import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket
import Cuboctahedron.Search.TopPairingTransducerEvalBridge

/-!
Semantic prefix-run smoke for the strengthened top-pairing Bellman graph.

This file checks the first production-facing membership step for the
strengthened Bellman route: closed top-pairing language data determines the
initial Bellman labels and constructs the corresponding `ClosedBellmanStep`
run.  It deliberately does not mention sampled ranks, selected prefixes,
accepted trace ids, or exact affine RHS keys.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

abbrev StrengthenedClosedPrefixGraphRun
    (rank : Fin numPairWords) (finish : Nat)
    (pfx : List Face) (gain : Int) : Prop :=
  exists rest : List Face,
    topPairingRankFaceLabels rank = pfx ++ rest /\
      BellmanLabelStepRun ClosedBellmanStep graphRoot finish pfx gain

abbrev StrengthenedClosedEvalState :=
  TopPairingTransducerEvalState Nat

def strengthenedClosedEvalStart : StrengthenedClosedEvalState :=
  TopPairingTransducerEvalState.start graphRoot

def strengthenedClosedEvalNext :
    StrengthenedClosedEvalState -> Face ->
      Option (StrengthenedClosedEvalState × Int) :=
  TopPairingTransducerEvalState.next? closedBellmanNext (fun face : Face => face)

def strengthenedClosedPrefix1TransducerState : TopPairingTransducerState where
  step := 1
  gap := topPairingNextGap 0 Face.xm
  k := 0
  parity := SqParity.id.applyPair (pairOfFace Face.xm)
  linear := topPairingNextLinear (matId : Mat3 Rat) Face.xm

def strengthenedClosedPrefix1EvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix1TransducerState
  graph := 142

def strengthenedClosedPrefix2TransducerState : TopPairingTransducerState where
  step := 2
  gap := topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym
  k := 0
  parity := (SqParity.id.applyPair (pairOfFace Face.xm)).applyPair
    (pairOfFace Face.ym)
  linear := topPairingNextLinear
    (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym

def strengthenedClosedPrefix2EvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix2TransducerState
  graph := 143

theorem strengthenedClosed_prefix1_next :
    strengthenedClosedEvalNext strengthenedClosedEvalStart Face.xm =
      some (strengthenedClosedPrefix1EvalState, (103 : Int)) := by
  rfl

theorem strengthenedClosed_prefix2_next_from_prefix1 :
    strengthenedClosedEvalNext strengthenedClosedPrefix1EvalState Face.ym =
      some (strengthenedClosedPrefix2EvalState, (-73 : Int)) := by
  rfl

theorem strengthenedClosed_prefix2_eval_eq :
    evalLabelStepFn strengthenedClosedEvalNext strengthenedClosedEvalStart
      [Face.xm, Face.ym] =
        some (strengthenedClosedPrefix2EvalState, (30 : Int)) := by
  rfl

abbrev StrengthenedClosedPrefixTransducerEval
    (rank : Fin numPairWords) (finish : Nat)
    (pfx : List Face) (gain : Int) : Prop :=
  exists rest : List Face,
    exists state : StrengthenedClosedEvalState,
      topPairingRankFaceLabels rank = pfx ++ rest /\
        evalLabelStepFn strengthenedClosedEvalNext strengthenedClosedEvalStart
          pfx = some (state, gain) /\
        state.graph = finish /\ state.Tail rest

theorem strengthenedClosedEvalNext_of_closedBellmanStep
    {state : StrengthenedClosedEvalState} {face : Face} {rest : List Face}
    {nextGraph : Nat} {gain : Int}
    (htail : state.Tail (face :: rest))
    (hstep : ClosedBellmanStep state.graph face nextGraph gain) :
    ∃ nextState : StrengthenedClosedEvalState,
      strengthenedClosedEvalNext state face = some (nextState, gain) ∧
        nextState.Tail rest ∧ nextState.graph = nextGraph := by
  have hgraph :
      closedBellmanNext state.graph face = some (nextGraph, gain) :=
    closedBellmanStep_next hstep
  rcases TopPairingTransducerEvalState.next?_tail
      (next := closedBellmanNext) (labelOfFace := fun face : Face => face)
      htail hgraph with
    ⟨nextState, hnext, htailNext, hgraphNext⟩
  exact ⟨nextState, hnext, htailNext, hgraphNext⟩

private theorem closedScheduleLabels
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    TopPairingStepScheduleLabels (topPairingRankFaceLabels rank) := by
  simpa [topPairingRankFaceLabels] using hclosed.schedule

private theorem strengthenedClosedStartTail
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    strengthenedClosedEvalStart.Tail (topPairingRankFaceLabels rank) := by
  change TopPairingTransducerState.start.Tail
    (topPairingRankFaceLabels rank)
  exact
    TopPairingTransducerState.start_tail_of_closed
      hstrengthened.toTopPairingClosedLanguageAtRank

theorem graphStepRun_prefix2_expr :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 143
      [Face.xm, Face.ym] ((103 : Int) + ((-73 : Int) + 0)) := by
  change BellmanLabelStepRun ClosedBellmanStep 0 143
    [Face.xm, Face.ym] ((103 : Int) + ((-73 : Int) + 0))
  exact BellmanLabelStepRun.cons
    ClosedBellmanStep.e0000_l08
    (BellmanLabelStepRun.cons
      ClosedBellmanStep.e0124_l10
      (BellmanLabelStepRun.nil 143))

theorem graphStepRun_prefix2 :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 143
      [Face.xm, Face.ym] (30 : Int) := by
  simpa using graphStepRun_prefix2_expr

theorem graphStepRun_prefix3_tmpm_expr :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 146
      [Face.xm, Face.ym, Face.tmpm]
      ((103 : Int) + ((-73 : Int) + ((-124 : Int) + 0))) := by
  change BellmanLabelStepRun ClosedBellmanStep 0 146
    [Face.xm, Face.ym, Face.tmpm]
      ((103 : Int) + ((-73 : Int) + ((-124 : Int) + 0)))
  exact BellmanLabelStepRun.cons
    ClosedBellmanStep.e0000_l08
    (BellmanLabelStepRun.cons
      ClosedBellmanStep.e0124_l10
      (BellmanLabelStepRun.cons
        ClosedBellmanStep.e0127_l02
        (BellmanLabelStepRun.nil 146)))

theorem graphStepRun_prefix3_tmpm :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 146
      [Face.xm, Face.ym, Face.tmpm] (-94 : Int) := by
  simpa using graphStepRun_prefix3_tmpm_expr

theorem graphStepRun_prefix3_yp_expr :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 144
      [Face.xm, Face.ym, Face.yp]
      ((103 : Int) + ((-73 : Int) + ((-73 : Int) + 0))) := by
  change BellmanLabelStepRun ClosedBellmanStep 0 144
    [Face.xm, Face.ym, Face.yp]
      ((103 : Int) + ((-73 : Int) + ((-73 : Int) + 0)))
  exact BellmanLabelStepRun.cons
    ClosedBellmanStep.e0000_l08
    (BellmanLabelStepRun.cons
      ClosedBellmanStep.e0124_l10
      (BellmanLabelStepRun.cons
        ClosedBellmanStep.e0125_l11
        (BellmanLabelStepRun.nil 144)))

theorem graphStepRun_prefix3_yp :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 144
      [Face.xm, Face.ym, Face.yp] (-43 : Int) := by
  simpa using graphStepRun_prefix3_yp_expr

theorem graphStepRun_prefix3_zm_expr :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 145
      [Face.xm, Face.ym, Face.zm]
      ((103 : Int) + ((-73 : Int) + ((-10 : Int) + 0))) := by
  change BellmanLabelStepRun ClosedBellmanStep 0 145
    [Face.xm, Face.ym, Face.zm]
      ((103 : Int) + ((-73 : Int) + ((-10 : Int) + 0)))
  exact BellmanLabelStepRun.cons
    ClosedBellmanStep.e0000_l08
    (BellmanLabelStepRun.cons
      ClosedBellmanStep.e0124_l10
      (BellmanLabelStepRun.cons
        ClosedBellmanStep.e0126_l12
        (BellmanLabelStepRun.nil 145)))

theorem graphStepRun_prefix3_zm :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 145
      [Face.xm, Face.ym, Face.zm] (20 : Int) := by
  simpa using graphStepRun_prefix3_zm_expr

theorem closedPrefix2GraphRun
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    StrengthenedClosedPrefixGraphRun rank 143
      [Face.xm, Face.ym] (30 : Int) := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym
      (closedScheduleLabels hclosed) with
    ⟨rest, hlabels⟩
  refine ⟨rest, ?_, graphStepRun_prefix2⟩
  simpa using hlabels

theorem strengthenedClosedPrefix2GraphRun
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    StrengthenedClosedPrefixGraphRun rank 143
      [Face.xm, Face.ym] (30 : Int) :=
  closedPrefix2GraphRun hstrengthened.toTopPairingClosedLanguageAtRank

theorem strengthenedClosedPrefix2TransducerEval
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    StrengthenedClosedPrefixTransducerEval rank 143
      [Face.xm, Face.ym] (30 : Int) := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym
      (closedScheduleLabels
        hstrengthened.toTopPairingClosedLanguageAtRank) with
    ⟨rest, hlabels⟩
  have htail0 :
      strengthenedClosedEvalStart.Tail (Face.xm :: Face.ym :: rest) := by
    simpa [hlabels] using strengthenedClosedStartTail hstrengthened
  rcases strengthenedClosedEvalNext_of_closedBellmanStep
      (state := strengthenedClosedEvalStart)
      (face := Face.xm) (rest := Face.ym :: rest)
      htail0 ClosedBellmanStep.e0000_l08 with
    ⟨state1, hnext1, htail1, hstate1Graph⟩
  have hstate1 :
      state1 = strengthenedClosedPrefix1EvalState := by
    have hpair :=
      Option.some.inj (hnext1.symm.trans strengthenedClosed_prefix1_next)
    exact congrArg Prod.fst hpair
  subst state1
  rcases strengthenedClosedEvalNext_of_closedBellmanStep
      (state := strengthenedClosedPrefix1EvalState)
      (face := Face.ym) (rest := rest)
      htail1 ClosedBellmanStep.e0124_l10 with
    ⟨state2, hnext2, htail2, hstate2Graph⟩
  have hstate2 :
      state2 = strengthenedClosedPrefix2EvalState := by
    have hpair :=
      Option.some.inj
        (hnext2.symm.trans strengthenedClosed_prefix2_next_from_prefix1)
    exact congrArg Prod.fst hpair
  subst state2
  refine ⟨rest, strengthenedClosedPrefix2EvalState, ?_, ?_, rfl, htail2⟩
  · simpa using hlabels
  · exact strengthenedClosed_prefix2_eval_eq

theorem strengthenedClosedPrefix2LocalTransition_of_tail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix2EvalState.Tail (face :: rest)) :
    ∃ nextState : StrengthenedClosedEvalState, ∃ gain : Int,
      strengthenedClosedEvalNext strengthenedClosedPrefix2EvalState face =
          some (nextState, gain) ∧
        nextState.Tail rest ∧
          ((nextState.graph = 146 ∧ gain = (-124 : Int)) ∨
            (nextState.graph = 144 ∧ gain = (-73 : Int)) ∨
              (nextState.graph = 145 ∧ gain = (-10 : Int))) := by
  have htailRaw :
      TopPairingTransducerTail
        strengthenedClosedPrefix2TransducerState.step
        strengthenedClosedPrefix2TransducerState.gap
        strengthenedClosedPrefix2TransducerState.k
        strengthenedClosedPrefix2TransducerState.parity
        strengthenedClosedPrefix2TransducerState.linear
        (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail,
      strengthenedClosedPrefix2EvalState] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  have hface : face ∈ topPairingAllowedFacesAtStep 2 := by
    simpa [strengthenedClosedPrefix2TransducerState] using hcons.1
  simp [topPairingAllowedFacesAtStep] at hface
  rcases hface with rfl | rfl | rfl
  · rcases strengthenedClosedEvalNext_of_closedBellmanStep
      (state := strengthenedClosedPrefix2EvalState)
      (face := Face.tmpm) (rest := rest)
      htail ClosedBellmanStep.e0127_l02 with
      ⟨nextState, hnext, htailNext, hgraphNext⟩
    exact ⟨nextState, (-124 : Int), hnext, htailNext,
      Or.inl ⟨hgraphNext, rfl⟩⟩
  · rcases strengthenedClosedEvalNext_of_closedBellmanStep
      (state := strengthenedClosedPrefix2EvalState)
      (face := Face.yp) (rest := rest)
      htail ClosedBellmanStep.e0125_l11 with
      ⟨nextState, hnext, htailNext, hgraphNext⟩
    exact ⟨nextState, (-73 : Int), hnext, htailNext,
      Or.inr (Or.inl ⟨hgraphNext, rfl⟩)⟩
  · rcases strengthenedClosedEvalNext_of_closedBellmanStep
      (state := strengthenedClosedPrefix2EvalState)
      (face := Face.zm) (rest := rest)
      htail ClosedBellmanStep.e0126_l12 with
      ⟨nextState, hnext, htailNext, hgraphNext⟩
    exact ⟨nextState, (-10 : Int), hnext, htailNext,
      Or.inr (Or.inr ⟨hgraphNext, rfl⟩)⟩

theorem closedPrefix3GraphRun_cases
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    StrengthenedClosedPrefixGraphRun rank 146
        [Face.xm, Face.ym, Face.tmpm] (-94 : Int) \/
      StrengthenedClosedPrefixGraphRun rank 144
          [Face.xm, Face.ym, Face.yp] (-43 : Int) \/
        StrengthenedClosedPrefixGraphRun rank 145
          [Face.xm, Face.ym, Face.zm] (20 : Int) := by
  rcases topPairingStepScheduleLabels_prefix3
      (closedScheduleLabels hclosed) with
    htmpm | hyp | hzm
  · rcases htmpm with ⟨rest, hlabels⟩
    exact Or.inl ⟨rest, by simpa using hlabels, graphStepRun_prefix3_tmpm⟩
  · rcases hyp with ⟨rest, hlabels⟩
    exact Or.inr (Or.inl
      ⟨rest, by simpa using hlabels, graphStepRun_prefix3_yp⟩)
  · rcases hzm with ⟨rest, hlabels⟩
    exact Or.inr (Or.inr
      ⟨rest, by simpa using hlabels, graphStepRun_prefix3_zm⟩)

theorem strengthenedClosedPrefix3GraphRun_cases
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    StrengthenedClosedPrefixGraphRun rank 146
        [Face.xm, Face.ym, Face.tmpm] (-94 : Int) \/
      StrengthenedClosedPrefixGraphRun rank 144
          [Face.xm, Face.ym, Face.yp] (-43 : Int) \/
        StrengthenedClosedPrefixGraphRun rank 145
          [Face.xm, Face.ym, Face.zm] (20 : Int) :=
  closedPrefix3GraphRun_cases
    hstrengthened.toTopPairingClosedLanguageAtRank

theorem strengthenedClosedBellmanPrefixRunSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
