import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket

/-!
Graph-147 ranked suffix evaluator socket.

The direct graph-147 socket proves a semantic suffix predicate
`Graph147RankedShardSuffixOk` and a one-step preservation theorem for it.  This
file packages the induction principle that production membership needs next:
from a semantic suffix certificate and a deterministic transducer tail, the
strengthened evaluator actually runs to a final graph-147 state with
nonnegative potential.

This deliberately does not prove the root margin inequality.  It isolates the
remaining `finish` gap to the margin conjunct while checking that the
deterministic graph/state side is already semantic and rank-indexed rather than
sampled-prefix based.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147RankedEvalSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

abbrev graph147RankedEvalNext :
    TopPairingTransducerEvalState StrengthenedClosedEvalState ->
      Face ->
        Option
          (TopPairingTransducerEvalState StrengthenedClosedEvalState × Int) :=
  TopPairingTransducerEvalState.next?
    strengthenedClosedEvalNext (fun face : Face => face)

/--
Semantic suffix certificates drive the deterministic graph-147 evaluator to a
final nonnegative-potential state.

The proof is a structural induction over the remaining label list using the
already-checked local step and final-potential facts.  It does not inspect
ranks, sampled paths, selected prefixes, accepted trace ids, or affine keys.
-/
theorem graph147RankedShardSuffixOk_eval_exists_finalPotential
    {rank : Fin numPairWords}
    {state :
      TopPairingTransducerEvalState StrengthenedClosedEvalState}
    {labels : List Face}
    (htail : state.Tail labels)
    (hsuffix : Graph147RankedShardSuffixOk rank state labels) :
    ∃ finish gain,
      evalLabelStepFn graph147RankedEvalNext state labels =
          some (finish, gain) ∧
        finish.Tail [] ∧
          Graph147RankedShardSuffixOk rank finish [] ∧
            0 <= graphPotential finish.graph.graph := by
  induction labels generalizing state with
  | nil =>
      refine ⟨state, 0, ?_, htail, hsuffix, ?_⟩
      · rfl
      · exact graph147RankedShardSuffixOk_finalPotential hsuffix
  | cons face rest ih =>
      rcases graph147RankedShardSuffixOk_localStep htail hsuffix with
        ⟨nextState, gain, hnext, htailNext, hsuffixNext⟩
      rcases ih htailNext hsuffixNext with
        ⟨finish, tailGain, hevalTail, hfinishTail, hsuffixFinish,
          hfinalPotential⟩
      refine ⟨finish, gain + tailGain, ?_, hfinishTail, hsuffixFinish,
        hfinalPotential⟩
      simp [evalLabelStepFn, graph147RankedEvalNext, hnext, hevalTail]

/--
Graph-only projection of
`graph147RankedShardSuffixOk_eval_exists_finalPotential`.

This is the bridge needed by future margin producers: the semantic combined
transducer/evaluator run projects to the ordinary strengthened Bellman graph
run used by `Graph147TargetCompletionTailRootMarginBound`.
-/
theorem graph147RankedShardSuffixOk_graph_eval_exists_finalPotential
    {rank : Fin numPairWords}
    {state :
      TopPairingTransducerEvalState StrengthenedClosedEvalState}
    {labels : List Face}
    (htail : state.Tail labels)
    (hsuffix : Graph147RankedShardSuffixOk rank state labels) :
    ∃ finish gain,
      evalLabelStepFn strengthenedClosedEvalNext state.graph labels =
          some (finish, gain) ∧
        0 <= graphPotential finish.graph := by
  rcases graph147RankedShardSuffixOk_eval_exists_finalPotential
      htail hsuffix with
    ⟨finish, gain, heval, _hfinishTail, _hsuffixFinish, hfinalPotential⟩
  refine ⟨finish.graph, gain, ?_, hfinalPotential⟩
  simpa using
    TopPairingTransducerEvalState.evalLabelStepFn_graph_of_faceEval
      (next := strengthenedClosedEvalNext)
      (labelOfFace := fun face : Face => face)
      heval

/--
The `yp, zm` layer-4 prefix leaves the semantic transducer at the shared
graph147 prefix-4 state, so the remaining labels are a tail of that state.
-/
theorem graph147YpZm_rankedPrefix4Tail_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest) :
    graph147RankedPrefix4EvalState.Tail rest := by
  have hlabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have htail0 :=
    TopPairingTransducerTail.ofClosedRank
      hstrengthened.toTopPairingClosedLanguageAtRank
  rw [hlabels] at htail0
  have htail1 :=
    TopPairingTransducerTail.cons_square_tail
      htail0 (by rfl : triLetterOfFace? Face.xm = none)
  have htail2 :=
    TopPairingTransducerTail.cons_square_tail
      htail1 (by rfl : triLetterOfFace? Face.ym = none)
  have htail3 :=
    TopPairingTransducerTail.cons_square_tail
      htail2 (by rfl : triLetterOfFace? Face.yp = none)
  have htail4 :=
    TopPairingTransducerTail.cons_square_tail
      htail3 (by rfl : triLetterOfFace? Face.zm = none)
  simpa [graph147RankedPrefix4EvalState,
    TopPairingTransducerEvalState.Tail, TopPairingTransducerState.Tail,
    strengthenedClosedPrefix4YpZmEvalState,
    strengthenedClosedPrefix4YpZmTransducerState,
    strengthenedClosedPrefix3YpTransducerState,
    strengthenedClosedPrefix2TransducerState,
    topPairingNextGap, SqParity.id, SqParity.applyPair,
    SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
    SqParity.toggleZ, SqParity.xor, pairOfFace,
    topPairingNextLinear] using htail4

/--
The `zm, yp` layer-4 prefix reaches the same graph147 prefix-4 transducer state
as `yp, zm`; the remaining labels are again a tail of that state.
-/
theorem graph147ZmYp_rankedPrefix4Tail_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest) :
    graph147RankedPrefix4EvalState.Tail rest := by
  have hlabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have htail0 :=
    TopPairingTransducerTail.ofClosedRank
      hstrengthened.toTopPairingClosedLanguageAtRank
  rw [hlabels] at htail0
  have htail1 :=
    TopPairingTransducerTail.cons_square_tail
      htail0 (by rfl : triLetterOfFace? Face.xm = none)
  have htail2 :=
    TopPairingTransducerTail.cons_square_tail
      htail1 (by rfl : triLetterOfFace? Face.ym = none)
  have htail3 :=
    TopPairingTransducerTail.cons_square_tail
      htail2 (by rfl : triLetterOfFace? Face.zm = none)
  have htail4 :=
    TopPairingTransducerTail.cons_square_tail
      htail3 (by rfl : triLetterOfFace? Face.yp = none)
  have htailZmYp :
      TopPairingTransducerTail
        strengthenedClosedPrefix4ZmYpTransducerState.step
        strengthenedClosedPrefix4ZmYpTransducerState.gap
        strengthenedClosedPrefix4ZmYpTransducerState.k
        strengthenedClosedPrefix4ZmYpTransducerState.parity
        strengthenedClosedPrefix4ZmYpTransducerState.linear rest := by
    simpa [strengthenedClosedPrefix4ZmYpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingNextGap, SqParity.id, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor, pairOfFace,
      topPairingNextLinear] using htail4
  have htrans := strengthenedClosedPrefix4YpZm_transducer_eq_zm_yp
  change
    TopPairingTransducerTail
      strengthenedClosedPrefix4YpZmTransducerState.step
      strengthenedClosedPrefix4YpZmTransducerState.gap
      strengthenedClosedPrefix4YpZmTransducerState.k
      strengthenedClosedPrefix4YpZmTransducerState.parity
      strengthenedClosedPrefix4YpZmTransducerState.linear rest
  rw [htrans]
  exact htailZmYp

/--
Turn a margin theorem for the deterministic combined ranked evaluator into the
older graph-only target-completion root-margin API.

This is intentionally only an adapter.  The hard mathematical producer remains
the `hmargin` argument, whose type talks about the semantic evaluator result
rather than sampled prefixes, accepted traces, or affine keys.
-/
theorem graph147TargetCompletionTailRootMarginBound_of_ranked_eval_margin
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {state :
      TopPairingTransducerEvalState StrengthenedClosedEvalState}
    {prefixGain : Int} {labels : List Face}
    (hgraph :
      state.graph = strengthenedClosedPrefix4YpZmEvalState)
    (htail : state.Tail labels)
    (hsuffix : Graph147RankedShardSuffixOk rank state labels)
    (hmargin :
      ∀ finish gain,
        evalLabelStepFn graph147RankedEvalNext state labels =
            some (finish, gain) ->
          scaledMargin rank <= (176 : Int) + (prefixGain + gain)) :
    Graph147TargetCompletionTailRootMarginBound
      scaledMargin rank prefixGain labels := by
  intro result hgraphEval
  rcases graph147RankedShardSuffixOk_eval_exists_finalPotential
      htail hsuffix with
    ⟨finish, gain, heval, _hfinishTail, _hsuffixFinish,
      _hfinalPotential⟩
  have hprojected :
      evalLabelStepFn strengthenedClosedEvalNext
          strengthenedClosedPrefix4YpZmEvalState labels =
        some (finish.graph, gain) := by
    have hprojectedFromState :
        evalLabelStepFn strengthenedClosedEvalNext state.graph labels =
          some (finish.graph, gain) := by
      simpa using
        TopPairingTransducerEvalState.evalLabelStepFn_graph_of_faceEval
          (next := strengthenedClosedEvalNext)
          (labelOfFace := fun face : Face => face)
          heval
    simpa [hgraph] using hprojectedFromState
  have hsame : result = (finish.graph, gain) := by
    rw [hgraphEval] at hprojected
    exact Option.some.inj hprojected
  have hmarginRun := hmargin finish gain heval
  simpa [hsame] using hmarginRun

/--
Branch-local graph-147 evaluator consequence for the `yp, zm` lane.

The caller still supplies the transducer-tail fact for the shared prefix-4
state.  The rank-specific semantic suffix proof comes from the direct socket.
-/
theorem graph147YpZm_eval_exists_finalPotential_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest)
    (htail : graph147RankedPrefix4EvalState.Tail rest) :
    ∃ finish gain,
      evalLabelStepFn graph147RankedEvalNext graph147RankedPrefix4EvalState rest =
          some (finish, gain) ∧
        finish.Tail [] ∧
          Graph147RankedShardSuffixOk rank finish [] ∧
            0 <= graphPotential finish.graph.graph :=
  graph147RankedShardSuffixOk_eval_exists_finalPotential htail
    (graph147YpZm_rankedShardSuffixOk_of_strengthened_prefix
      hstrengthened hprefix)

/--
Graph-only projection for the `yp, zm` lane, starting from the shared
graph-147 prefix-4 Bellman graph state.
-/
theorem graph147YpZm_graph_eval_exists_finalPotential_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest)
    (htail : graph147RankedPrefix4EvalState.Tail rest) :
    ∃ finish gain,
      evalLabelStepFn strengthenedClosedEvalNext
          strengthenedClosedPrefix4YpZmEvalState rest =
          some (finish, gain) ∧
        0 <= graphPotential finish.graph := by
  simpa [graph147RankedPrefix4EvalState] using
    graph147RankedShardSuffixOk_graph_eval_exists_finalPotential
      (state := graph147RankedPrefix4EvalState)
      htail
      (graph147YpZm_rankedShardSuffixOk_of_strengthened_prefix
        hstrengthened hprefix)

/--
`yp, zm` lane adapter from a deterministic combined-evaluator margin theorem
to the graph-only root-margin API.
-/
theorem graph147YpZmRootMarginBound_of_ranked_eval_margin
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest)
    (htail : graph147RankedPrefix4EvalState.Tail rest)
    (hmargin :
      ∀ finish gain,
        evalLabelStepFn graph147RankedEvalNext
            graph147RankedPrefix4EvalState rest =
            some (finish, gain) ->
          scaledMargin rank <= (176 : Int) + ((-53 : Int) + gain)) :
    Graph147TargetCompletionTailRootMarginBound
      scaledMargin rank (-53 : Int) rest :=
  graph147TargetCompletionTailRootMarginBound_of_ranked_eval_margin
    (state := graph147RankedPrefix4EvalState)
    (hgraph := rfl)
    htail
    (graph147YpZm_rankedShardSuffixOk_of_strengthened_prefix
      hstrengthened hprefix)
    hmargin

/--
Branch-local graph-147 evaluator consequence for the `zm, yp` lane.
-/
theorem graph147ZmYp_eval_exists_finalPotential_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest)
    (htail : graph147RankedPrefix4EvalState.Tail rest) :
    ∃ finish gain,
      evalLabelStepFn graph147RankedEvalNext graph147RankedPrefix4EvalState rest =
          some (finish, gain) ∧
        finish.Tail [] ∧
          Graph147RankedShardSuffixOk rank finish [] ∧
            0 <= graphPotential finish.graph.graph :=
  graph147RankedShardSuffixOk_eval_exists_finalPotential htail
    (graph147ZmYp_rankedShardSuffixOk_of_strengthened_prefix
      hstrengthened hprefix)

/--
Graph-only projection for the `zm, yp` lane, starting from the shared
graph-147 prefix-4 Bellman graph state.
-/
theorem graph147ZmYp_graph_eval_exists_finalPotential_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest)
    (htail : graph147RankedPrefix4EvalState.Tail rest) :
    ∃ finish gain,
      evalLabelStepFn strengthenedClosedEvalNext
          strengthenedClosedPrefix4YpZmEvalState rest =
          some (finish, gain) ∧
        0 <= graphPotential finish.graph := by
  simpa [graph147RankedPrefix4EvalState] using
    graph147RankedShardSuffixOk_graph_eval_exists_finalPotential
      (state := graph147RankedPrefix4EvalState)
      htail
      (graph147ZmYp_rankedShardSuffixOk_of_strengthened_prefix
        hstrengthened hprefix)

/--
`zm, yp` lane adapter from a deterministic combined-evaluator margin theorem
to the graph-only root-margin API.
-/
theorem graph147ZmYpRootMarginBound_of_ranked_eval_margin
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest)
    (htail : graph147RankedPrefix4EvalState.Tail rest)
    (hmargin :
      ∀ finish gain,
        evalLabelStepFn graph147RankedEvalNext
            graph147RankedPrefix4EvalState rest =
            some (finish, gain) ->
          scaledMargin rank <= (176 : Int) + ((-53 : Int) + gain)) :
    Graph147TargetCompletionTailRootMarginBound
      scaledMargin rank (-53 : Int) rest :=
  graph147TargetCompletionTailRootMarginBound_of_ranked_eval_margin
    (state := graph147RankedPrefix4EvalState)
    (hgraph := rfl)
    htail
    (graph147ZmYp_rankedShardSuffixOk_of_strengthened_prefix
      hstrengthened hprefix)
    hmargin

/--
Ranked-evaluator margin producer surface for the `yp, zm` graph-147 branch.

This is the production target after the semantic-membership pivot: the producer
proves the margin bound for the deterministic suffix evaluator result.  It does
not need sampled ranks, selected prefixes, or graph-only root replay.
-/
structure StrengthenedGraph147YpZmRankedEvalMarginFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  margin :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
          ∀ finish gain,
            evalLabelStepFn graph147RankedEvalNext
                graph147RankedPrefix4EvalState rest =
                some (finish, gain) ->
              scaledMargin rank <= (176 : Int) + ((-53 : Int) + gain)

/-- Ranked-evaluator margin producer surface for the `zm, yp` graph-147 branch. -/
structure StrengthenedGraph147ZmYpRankedEvalMarginFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  margin :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
          ∀ finish gain,
            evalLabelStepFn graph147RankedEvalNext
                graph147RankedPrefix4EvalState rest =
                some (finish, gain) ->
              scaledMargin rank <= (176 : Int) + ((-53 : Int) + gain)

/-- The two graph-147 ranked-evaluator margin branches packaged together. -/
structure StrengthenedGraph147RankedEvalMarginBundle
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  yp_zm :
    StrengthenedGraph147YpZmRankedEvalMarginFamily
      scaledMargin sequenceBadFace
  zm_yp :
    StrengthenedGraph147ZmYpRankedEvalMarginFamily
      scaledMargin sequenceBadFace

def rootMarginFamily_of_yp_zm_rankedEvalMargin
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147YpZmRankedEvalMarginFamily
        scaledMargin sequenceBadFace) :
    StrengthenedGraph147YpZmRootMarginFamily
      scaledMargin sequenceBadFace where
  margin := by
    intro rank hstrengthened rest hprefix
    exact graph147YpZmRootMarginBound_of_ranked_eval_margin
      hstrengthened hprefix
      (graph147YpZm_rankedPrefix4Tail_of_strengthened_prefix
        hstrengthened hprefix)
      (hfamily.margin rank hstrengthened rest hprefix)

def rootMarginFamily_of_zm_yp_rankedEvalMargin
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147ZmYpRankedEvalMarginFamily
        scaledMargin sequenceBadFace) :
    StrengthenedGraph147ZmYpRootMarginFamily
      scaledMargin sequenceBadFace where
  margin := by
    intro rank hstrengthened rest hprefix
    exact graph147ZmYpRootMarginBound_of_ranked_eval_margin
      hstrengthened hprefix
      (graph147ZmYp_rankedPrefix4Tail_of_strengthened_prefix
        hstrengthened hprefix)
      (hfamily.margin rank hstrengthened rest hprefix)

def rootMarginBundle_of_rankedEvalMarginBundle
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hbundle :
      StrengthenedGraph147RankedEvalMarginBundle
        scaledMargin sequenceBadFace) :
    StrengthenedGraph147RootMarginBundle
      scaledMargin sequenceBadFace where
  yp_zm := rootMarginFamily_of_yp_zm_rankedEvalMargin hbundle.yp_zm
  zm_yp := rootMarginFamily_of_zm_yp_rankedEvalMargin hbundle.zm_yp

def rankedEvalMarginFamily_of_yp_zm_graphExactEvalGate
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hgate :
      TopPairingStrengthenedToGraphExactEvalGate
        (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
        strengthenedClosedEvalNext
        (fun face : Face => face)
        strengthenedClosedEvalStart
        (176 : Int)
        scaledMargin
        sequenceBadFace
        Face.ym) :
    StrengthenedGraph147YpZmRankedEvalMarginFamily
      scaledMargin sequenceBadFace where
  margin := by
    intro rank hstrengthened rest hprefix finish gain heval
    rcases hgate rank hstrengthened with
      ⟨fullFinish, fullGain, gate⟩
    have hlabels :
        topPairingRankFaceLabels rank =
          [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest := by
      simpa [Depth11Layer4PrefixAtRank] using hprefix
    have hgraphEval :
        evalLabelStepFn strengthenedClosedEvalNext
            strengthenedClosedPrefix4YpZmEvalState rest =
          some (finish.graph, gain) := by
      simpa [graph147RankedPrefix4EvalState] using
        TopPairingTransducerEvalState.evalLabelStepFn_graph_of_faceEval
          (next := strengthenedClosedEvalNext)
          (labelOfFace := fun face : Face => face)
          heval
    have hfullFromSuffix :
        evalLabelStepFn strengthenedClosedEvalNext strengthenedClosedEvalStart
            (topPairingRankFaceLabels rank) =
          some (finish.graph, (-53 : Int) + gain) := by
      have happ :=
        evalLabelStepFn_append strengthenedClosed_prefix4_yp_zm_eval_eq
          hgraphEval
      simpa [hlabels] using happ
    have hfullFromGate :
        evalLabelStepFn strengthenedClosedEvalNext strengthenedClosedEvalStart
            (topPairingRankFaceLabels rank) =
          some (fullFinish, fullGain) := by
      simpa [topPairingRankFaceLabels] using gate.eval_eq
    have hsame : (fullFinish, fullGain) =
        (finish.graph, (-53 : Int) + gain) := by
      rw [hfullFromGate] at hfullFromSuffix
      exact Option.some.inj hfullFromSuffix
    have hgain : fullGain = (-53 : Int) + gain :=
      congrArg Prod.snd hsame
    simpa [hgain] using gate.margin_bound

def rankedEvalMarginFamily_of_zm_yp_graphExactEvalGate
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hgate :
      TopPairingStrengthenedToGraphExactEvalGate
        (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
        strengthenedClosedEvalNext
        (fun face : Face => face)
        strengthenedClosedEvalStart
        (176 : Int)
        scaledMargin
        sequenceBadFace
        Face.ym) :
    StrengthenedGraph147ZmYpRankedEvalMarginFamily
      scaledMargin sequenceBadFace where
  margin := by
    intro rank hstrengthened rest hprefix finish gain heval
    rcases hgate rank hstrengthened with
      ⟨fullFinish, fullGain, gate⟩
    have hlabels :
        topPairingRankFaceLabels rank =
          [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest := by
      simpa [Depth11Layer4PrefixAtRank] using hprefix
    have hgraphEval :
        evalLabelStepFn strengthenedClosedEvalNext
            strengthenedClosedPrefix4YpZmEvalState rest =
          some (finish.graph, gain) := by
      simpa [graph147RankedPrefix4EvalState] using
        TopPairingTransducerEvalState.evalLabelStepFn_graph_of_faceEval
          (next := strengthenedClosedEvalNext)
          (labelOfFace := fun face : Face => face)
          heval
    have hfullFromSuffix :
        evalLabelStepFn strengthenedClosedEvalNext strengthenedClosedEvalStart
            (topPairingRankFaceLabels rank) =
          some (finish.graph, (-53 : Int) + gain) := by
      have happ :=
        evalLabelStepFn_append strengthenedClosed_prefix4_zm_yp_eval_eq
          hgraphEval
      simpa [hlabels] using happ
    have hfullFromGate :
        evalLabelStepFn strengthenedClosedEvalNext strengthenedClosedEvalStart
            (topPairingRankFaceLabels rank) =
          some (fullFinish, fullGain) := by
      simpa [topPairingRankFaceLabels] using gate.eval_eq
    have hsame : (fullFinish, fullGain) =
        (finish.graph, (-53 : Int) + gain) := by
      rw [hfullFromGate] at hfullFromSuffix
      exact Option.some.inj hfullFromSuffix
    have hgain : fullGain = (-53 : Int) + gain :=
      congrArg Prod.snd hsame
    simpa [hgain] using gate.margin_bound

def rankedEvalMarginBundle_of_graphExactEvalGate
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hgate :
      TopPairingStrengthenedToGraphExactEvalGate
        (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
        strengthenedClosedEvalNext
        (fun face : Face => face)
        strengthenedClosedEvalStart
        (176 : Int)
        scaledMargin
        sequenceBadFace
        Face.ym) :
    StrengthenedGraph147RankedEvalMarginBundle
      scaledMargin sequenceBadFace where
  yp_zm := rankedEvalMarginFamily_of_yp_zm_graphExactEvalGate hgate
  zm_yp := rankedEvalMarginFamily_of_zm_yp_graphExactEvalGate hgate

def rootMarginBundle_of_graphExactEvalGate_via_rankedEvalMarginBundle
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hgate :
      TopPairingStrengthenedToGraphExactEvalGate
        (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
        strengthenedClosedEvalNext
        (fun face : Face => face)
        strengthenedClosedEvalStart
        (176 : Int)
        scaledMargin
        sequenceBadFace
        Face.ym) :
    StrengthenedGraph147RootMarginBundle
      scaledMargin sequenceBadFace :=
  rootMarginBundle_of_rankedEvalMarginBundle
    (rankedEvalMarginBundle_of_graphExactEvalGate hgate)

def rankedEvalMarginBundle_of_rankedTransducerInvariantFamily
    {Inv :
      TopPairingTransducerEvalState StrengthenedClosedEvalState -> Prop}
    {SuffixOk :
      Fin numPairWords ->
        TopPairingTransducerEvalState StrengthenedClosedEvalState ->
          List Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedTransducerInvariantFamily
        Inv SuffixOk scaledMargin sequenceBadFace) :
    StrengthenedGraph147RankedEvalMarginBundle
      scaledMargin sequenceBadFace :=
  rankedEvalMarginBundle_of_graphExactEvalGate
    (graphExactEvalGate_of_rankedTransducerInvariantFamily hfamily)

def rootMarginBundle_of_rankedTransducerInvariantFamily_via_rankedEvalMarginBundle
    {Inv :
      TopPairingTransducerEvalState StrengthenedClosedEvalState -> Prop}
    {SuffixOk :
      Fin numPairWords ->
        TopPairingTransducerEvalState StrengthenedClosedEvalState ->
          List Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedTransducerInvariantFamily
        Inv SuffixOk scaledMargin sequenceBadFace) :
    StrengthenedGraph147RootMarginBundle
      scaledMargin sequenceBadFace :=
  rootMarginBundle_of_rankedEvalMarginBundle
    (rankedEvalMarginBundle_of_rankedTransducerInvariantFamily hfamily)

theorem graph147RankedEvalSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147RankedEvalSocket
