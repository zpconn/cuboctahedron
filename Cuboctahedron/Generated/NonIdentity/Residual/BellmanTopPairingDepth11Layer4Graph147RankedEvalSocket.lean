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

theorem graph147RankedEvalSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147RankedEvalSocket
