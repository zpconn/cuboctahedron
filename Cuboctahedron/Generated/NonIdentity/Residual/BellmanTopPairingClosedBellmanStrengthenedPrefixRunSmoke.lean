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

abbrev StrengthenedClosedPrefixTransducerEval
    (rank : Fin numPairWords) (finish : Nat)
    (pfx : List Face) (gain : Int) : Prop :=
  exists rest : List Face,
    exists state : StrengthenedClosedEvalState,
      topPairingRankFaceLabels rank = pfx ++ rest /\
        evalLabelStepFn strengthenedClosedEvalNext strengthenedClosedEvalStart
          pfx = some (state, gain) /\
        state.graph = finish /\ state.Tail rest

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
      strengthenedClosedEvalStart.Tail
        (Face.xm :: Face.ym :: rest) := by
    simpa [hlabels] using strengthenedClosedStartTail hstrengthened
  have hgraph0 :
      closedBellmanNext strengthenedClosedEvalStart.graph Face.xm =
        some (142, (103 : Int)) := by
    change closedBellmanNext graphRoot Face.xm = some (142, (103 : Int))
    exact closedBellmanStep_next ClosedBellmanStep.e0000_l08
  rcases TopPairingTransducerEvalState.next?_tail
      (next := closedBellmanNext) (labelOfFace := fun face : Face => face)
      (state := strengthenedClosedEvalStart)
      (face := Face.xm) (rest := Face.ym :: rest)
      htail0 hgraph0 with
    ⟨state1, hnext1, htail1, hstate1Graph⟩
  have hgraph1 :
      closedBellmanNext state1.graph Face.ym = some (143, (-73 : Int)) := by
    rw [hstate1Graph]
    exact closedBellmanStep_next ClosedBellmanStep.e0124_l10
  rcases TopPairingTransducerEvalState.next?_tail
      (next := closedBellmanNext) (labelOfFace := fun face : Face => face)
      (state := state1)
      (face := Face.ym) (rest := rest)
      htail1 hgraph1 with
    ⟨state2, hnext2, htail2, hstate2Graph⟩
  refine ⟨rest, state2, ?_, ?_, hstate2Graph, htail2⟩
  · simpa using hlabels
  · simp [evalLabelStepFn, strengthenedClosedEvalNext, hnext1, hnext2]

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
