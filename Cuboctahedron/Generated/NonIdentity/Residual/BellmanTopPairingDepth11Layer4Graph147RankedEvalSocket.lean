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

/--
Deterministic suffix-margin induction for the graph-147 ranked evaluator.

This is the next production-facing margin surface after the semantic
membership pivot.  A generated producer may give a semantic invariant over the
ranked suffix evaluator and a local preservation theorem; this adapter then
turns that invariant into the exact ranked-eval margin theorem consumed by the
root-margin socket.  The statement is intentionally over the suffix evaluator,
not sampled ranks, accepted trace ids, selected-prefix disjunctions, or affine
RHS keys.
-/
theorem graph147RankedEval_margin_of_suffixInvariant
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {labels : List Face}
    (Inv :
      TopPairingTransducerEvalState StrengthenedClosedEvalState ->
        List Face -> Int -> Prop)
    (hstart :
      Inv graph147RankedPrefix4EvalState labels (-53 : Int))
    (hlocal :
      ∀ {state :
            TopPairingTransducerEvalState StrengthenedClosedEvalState}
        {face : Face} {rest : List Face} {acc : Int}
        {nextState :
            TopPairingTransducerEvalState StrengthenedClosedEvalState}
        {stepGain : Int},
        Inv state (face :: rest) acc ->
        graph147RankedEvalNext state face =
            some (nextState, stepGain) ->
          Inv nextState rest (acc + stepGain))
    (hfinish :
      ∀ {finish :
            TopPairingTransducerEvalState StrengthenedClosedEvalState}
        {acc : Int},
        Inv finish [] acc ->
          scaledMargin rank <= (176 : Int) + acc) :
    ∀ finish gain,
      evalLabelStepFn graph147RankedEvalNext
          graph147RankedPrefix4EvalState labels = some (finish, gain) ->
        scaledMargin rank <= (176 : Int) + ((-53 : Int) + gain) := by
  have hgeneral :
      ∀ {state :
            TopPairingTransducerEvalState StrengthenedClosedEvalState}
        {suffix : List Face} {acc : Int},
        Inv state suffix acc ->
          ∀ finish gain,
            evalLabelStepFn graph147RankedEvalNext state suffix =
                some (finish, gain) ->
              scaledMargin rank <= (176 : Int) + (acc + gain) := by
    intro state suffix
    induction suffix generalizing state with
    | nil =>
        intro acc hinv finish gain heval
        simp [evalLabelStepFn] at heval
        rcases heval with ⟨rfl, rfl⟩
        simpa using hfinish hinv
    | cons face rest ih =>
        intro acc hinv finish gain heval
        simp [evalLabelStepFn] at heval
        cases hnext : graph147RankedEvalNext state face with
        | none =>
            simp [hnext] at heval
        | some step =>
            rcases step with ⟨nextState, stepGain⟩
            simp [hnext] at heval
            cases htail :
                evalLabelStepFn graph147RankedEvalNext nextState rest with
            | none =>
                simp [htail] at heval
            | some tail =>
                rcases tail with ⟨finish', tailGain⟩
                simp [htail] at heval
                rcases heval with ⟨rfl, rfl⟩
                have hinvNext := hlocal hinv hnext
                have hbound :=
                  ih hinvNext finish' tailGain htail
                simpa [Int.add_assoc] using hbound
  intro finish gain heval
  exact hgeneral hstart finish gain heval

/--
Rank-indexed semantic suffix-margin invariant surface for graph-147.

This record is sharper than a full graph-eval gate: it asks the producer to
prove only that a semantic margin invariant starts on each of the two prefix-4
branches, is preserved by the deterministic ranked suffix evaluator, and yields
the final margin at empty suffix.  It is designed for the next generator slice:
closed-language cursor/schedule/local-axis facts should establish `Inv`, while
the generic theorem above performs the gain accumulation.
-/
structure StrengthenedGraph147RankedEvalMarginInvariantFamily
    (Inv :
      Fin numPairWords ->
        TopPairingTransducerEvalState StrengthenedClosedEvalState ->
          List Face -> Int -> Prop)
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  yp_zm_start :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
            Inv rank graph147RankedPrefix4EvalState rest (-53 : Int)
  zm_yp_start :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
            Inv rank graph147RankedPrefix4EvalState rest (-53 : Int)
  localStep :
    ∀ {rank : Fin numPairWords}
      {state :
        TopPairingTransducerEvalState StrengthenedClosedEvalState}
      {face : Face} {rest : List Face} {acc : Int}
      {nextState :
        TopPairingTransducerEvalState StrengthenedClosedEvalState}
      {stepGain : Int},
      Inv rank state (face :: rest) acc ->
      graph147RankedEvalNext state face = some (nextState, stepGain) ->
        Inv rank nextState rest (acc + stepGain)
  finish :
    ∀ {rank : Fin numPairWords}
      {finish :
        TopPairingTransducerEvalState StrengthenedClosedEvalState}
      {acc : Int},
      Inv rank finish [] acc ->
        scaledMargin rank <= (176 : Int) + acc

def yp_zm_rankedEvalMarginFamily_of_rankedEvalMarginInvariantFamily
    {Inv :
      Fin numPairWords ->
        TopPairingTransducerEvalState StrengthenedClosedEvalState ->
          List Face -> Int -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedEvalMarginInvariantFamily
        Inv scaledMargin sequenceBadFace) :
    StrengthenedGraph147YpZmRankedEvalMarginFamily
      scaledMargin sequenceBadFace where
  margin := by
    intro rank hstrengthened rest hprefix finish gain heval
    exact graph147RankedEval_margin_of_suffixInvariant
      (scaledMargin := scaledMargin) (rank := rank)
      (labels := rest)
      (Inv := fun state suffix acc => Inv rank state suffix acc)
      (hstart := hfamily.yp_zm_start rank hstrengthened rest hprefix)
      (hlocal := by
        intro state face rest acc nextState stepGain hinv hnext
        exact hfamily.localStep hinv hnext)
      (hfinish := by
        intro finish acc hinv
        exact hfamily.finish hinv)
      finish gain heval

def zm_yp_rankedEvalMarginFamily_of_rankedEvalMarginInvariantFamily
    {Inv :
      Fin numPairWords ->
        TopPairingTransducerEvalState StrengthenedClosedEvalState ->
          List Face -> Int -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedEvalMarginInvariantFamily
        Inv scaledMargin sequenceBadFace) :
    StrengthenedGraph147ZmYpRankedEvalMarginFamily
      scaledMargin sequenceBadFace where
  margin := by
    intro rank hstrengthened rest hprefix finish gain heval
    exact graph147RankedEval_margin_of_suffixInvariant
      (scaledMargin := scaledMargin) (rank := rank)
      (labels := rest)
      (Inv := fun state suffix acc => Inv rank state suffix acc)
      (hstart := hfamily.zm_yp_start rank hstrengthened rest hprefix)
      (hlocal := by
        intro state face rest acc nextState stepGain hinv hnext
        exact hfamily.localStep hinv hnext)
      (hfinish := by
        intro finish acc hinv
        exact hfamily.finish hinv)
      finish gain heval

def rankedEvalMarginBundle_of_rankedEvalMarginInvariantFamily
    {Inv :
      Fin numPairWords ->
        TopPairingTransducerEvalState StrengthenedClosedEvalState ->
          List Face -> Int -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedEvalMarginInvariantFamily
        Inv scaledMargin sequenceBadFace) :
    StrengthenedGraph147RankedEvalMarginBundle
      scaledMargin sequenceBadFace where
  yp_zm := yp_zm_rankedEvalMarginFamily_of_rankedEvalMarginInvariantFamily
    hfamily
  zm_yp := zm_yp_rankedEvalMarginFamily_of_rankedEvalMarginInvariantFamily
    hfamily

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

def rootMarginBundle_of_rankedEvalMarginInvariantFamily_via_rankedEvalMarginBundle
    {Inv :
      Fin numPairWords ->
        TopPairingTransducerEvalState StrengthenedClosedEvalState ->
          List Face -> Int -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedEvalMarginInvariantFamily
        Inv scaledMargin sequenceBadFace) :
    StrengthenedGraph147RootMarginBundle
      scaledMargin sequenceBadFace :=
  rootMarginBundle_of_rankedEvalMarginBundle
    (rankedEvalMarginBundle_of_rankedEvalMarginInvariantFamily hfamily)

/--
Margin-only producer surface over the already-checked graph-147 ranked shard
suffix language.

`Graph147RankedShardSuffixOk` already proves the deterministic suffix evaluator
is locally closed and reaches a final nonnegative-potential state.  Therefore
the next generated producer should only have to prove a margin invariant over
that semantic suffix language.  The local margin step is allowed to use the
current suffix proof and transducer tail, but it still cannot use sampled
ranks, accepted trace ids, selected prefixes, or affine keys.
-/
structure StrengthenedGraph147RankedShardMarginInvariantFamily
    (MarginInv :
      Fin numPairWords ->
        TopPairingTransducerEvalState StrengthenedClosedEvalState ->
          List Face -> Int -> Prop)
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  yp_zm_start :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
            MarginInv rank graph147RankedPrefix4EvalState rest (-53 : Int)
  zm_yp_start :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
            MarginInv rank graph147RankedPrefix4EvalState rest (-53 : Int)
  localStep :
    ∀ {rank : Fin numPairWords}
      {state :
        TopPairingTransducerEvalState StrengthenedClosedEvalState}
      {face : Face} {rest : List Face} {acc : Int}
      {nextState :
        TopPairingTransducerEvalState StrengthenedClosedEvalState}
      {stepGain : Int},
      MarginInv rank state (face :: rest) acc ->
      Graph147RankedShardSuffixOk rank state (face :: rest) ->
      state.Tail (face :: rest) ->
      graph147RankedEvalNext state face = some (nextState, stepGain) ->
        MarginInv rank nextState rest (acc + stepGain)
  finish :
    ∀ {rank : Fin numPairWords}
      {finish :
        TopPairingTransducerEvalState StrengthenedClosedEvalState}
      {acc : Int},
      MarginInv rank finish [] acc ->
      Graph147RankedShardSuffixOk rank finish [] ->
        scaledMargin rank <= (176 : Int) + acc

/--
Tautological suffix-evaluator margin invariant for graph-147.

This invariant is intentionally semantic: it talks only about the deterministic
ranked evaluator from the current state and suffix.  It contains no sampled
ranks, selected-prefix ids, accepted trace ids, affine keys, or path table.  It
is useful as a producer-normal form because local preservation and finish are
pure evaluator algebra; the only remaining mathematical work is the branch
start theorem.
-/
def Graph147RankedSuffixEvalMarginInv
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords)
    (state :
      TopPairingTransducerEvalState StrengthenedClosedEvalState)
    (labels : List Face) (acc : Int) : Prop :=
  ∀ finish gain,
    evalLabelStepFn graph147RankedEvalNext state labels =
        some (finish, gain) ->
      scaledMargin rank <= (176 : Int) + (acc + gain)

/--
A branch-level ranked-evaluator margin bundle is exactly enough to instantiate
the shard-margin invariant socket using
`Graph147RankedSuffixEvalMarginInv`.

This adapter is a checkpoint for the semantic-transducer pivot.  It proves that
future generated work does not need to invent another membership layer: after
the two branch start-margin theorems are available, local-step preservation and
the empty-suffix finish theorem are discharged generically.
-/
def rankedShardMarginInvariantFamily_of_rankedEvalMarginBundle
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hbundle :
      StrengthenedGraph147RankedEvalMarginBundle
        scaledMargin sequenceBadFace) :
    StrengthenedGraph147RankedShardMarginInvariantFamily
      (Graph147RankedSuffixEvalMarginInv scaledMargin)
      scaledMargin sequenceBadFace where
  yp_zm_start := by
    intro rank hstrengthened rest hprefix finish gain heval
    exact hbundle.yp_zm.margin rank hstrengthened rest hprefix finish gain
      heval
  zm_yp_start := by
    intro rank hstrengthened rest hprefix finish gain heval
    exact hbundle.zm_yp.margin rank hstrengthened rest hprefix finish gain
      heval
  localStep := by
    intro rank state face rest acc nextState stepGain hmargin _hsuffix _htail
      hnext finish gain hevalTail
    have heval :
        evalLabelStepFn graph147RankedEvalNext state (face :: rest) =
          some (finish, stepGain + gain) := by
      simp [evalLabelStepFn, hnext, hevalTail]
    have hbound := hmargin finish (stepGain + gain) heval
    simpa [Int.add_assoc] using hbound
  finish := by
    intro rank finish acc hmargin _hsuffix
    have hbound := hmargin finish 0 (by rfl)
    simpa using hbound

def rankedEvalMarginInvariantFamily_of_rankedShardMarginInvariantFamily
    {MarginInv :
      Fin numPairWords ->
        TopPairingTransducerEvalState StrengthenedClosedEvalState ->
          List Face -> Int -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedShardMarginInvariantFamily
        MarginInv scaledMargin sequenceBadFace) :
    StrengthenedGraph147RankedEvalMarginInvariantFamily
      (fun rank state labels acc =>
        state.Tail labels ∧
          Graph147RankedShardSuffixOk rank state labels ∧
            MarginInv rank state labels acc)
      scaledMargin sequenceBadFace where
  yp_zm_start := by
    intro rank hstrengthened rest hprefix
    refine ⟨?_, ?_, ?_⟩
    · exact graph147YpZm_rankedPrefix4Tail_of_strengthened_prefix
        hstrengthened hprefix
    · exact graph147YpZm_rankedShardSuffixOk_of_strengthened_prefix
        hstrengthened hprefix
    · exact hfamily.yp_zm_start rank hstrengthened rest hprefix
  zm_yp_start := by
    intro rank hstrengthened rest hprefix
    refine ⟨?_, ?_, ?_⟩
    · exact graph147ZmYp_rankedPrefix4Tail_of_strengthened_prefix
        hstrengthened hprefix
    · exact graph147ZmYp_rankedShardSuffixOk_of_strengthened_prefix
        hstrengthened hprefix
    · exact hfamily.zm_yp_start rank hstrengthened rest hprefix
  localStep := by
    intro rank state face rest acc nextState stepGain hinv hnext
    rcases hinv with ⟨htail, hsuffix, hmargin⟩
    rcases graph147RankedShardSuffixOk_localStep htail hsuffix with
      ⟨nextState', stepGain', hnext', htailNext, hsuffixNext⟩
    have hnext0 :
        TopPairingTransducerEvalState.next?
            strengthenedClosedEvalNext (fun face : Face => face)
            state face =
          some (nextState, stepGain) := by
      simpa [graph147RankedEvalNext] using hnext
    rw [hnext0] at hnext'
    rcases Option.some.inj hnext' with ⟨rfl, rfl⟩
    exact
      ⟨htailNext, hsuffixNext,
        hfamily.localStep hmargin hsuffix htail hnext⟩
  finish := by
    intro rank finish acc hinv
    exact hfamily.finish hinv.2.2 hinv.2.1

def rankedEvalMarginBundle_of_rankedShardMarginInvariantFamily
    {MarginInv :
      Fin numPairWords ->
        TopPairingTransducerEvalState StrengthenedClosedEvalState ->
          List Face -> Int -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedShardMarginInvariantFamily
        MarginInv scaledMargin sequenceBadFace) :
    StrengthenedGraph147RankedEvalMarginBundle
      scaledMargin sequenceBadFace :=
  rankedEvalMarginBundle_of_rankedEvalMarginInvariantFamily
    (rankedEvalMarginInvariantFamily_of_rankedShardMarginInvariantFamily
      hfamily)

def rootMarginBundle_of_rankedShardMarginInvariantFamily_via_rankedEvalMarginBundle
    {MarginInv :
      Fin numPairWords ->
        TopPairingTransducerEvalState StrengthenedClosedEvalState ->
          List Face -> Int -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedShardMarginInvariantFamily
        MarginInv scaledMargin sequenceBadFace) :
    StrengthenedGraph147RootMarginBundle
      scaledMargin sequenceBadFace :=
  rootMarginBundle_of_rankedEvalMarginBundle
    (rankedEvalMarginBundle_of_rankedShardMarginInvariantFamily hfamily)

def rootMarginBundle_of_rankedEvalMarginBundle_via_suffixEvalMarginInv
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hbundle :
      StrengthenedGraph147RankedEvalMarginBundle
        scaledMargin sequenceBadFace) :
    StrengthenedGraph147RootMarginBundle
      scaledMargin sequenceBadFace :=
  rootMarginBundle_of_rankedShardMarginInvariantFamily_via_rankedEvalMarginBundle
    (rankedShardMarginInvariantFamily_of_rankedEvalMarginBundle hbundle)

/--
Semantic `sequenceBadFace` carrier for the graph-147 ranked-evaluator margin.

This predicate is intentionally just a carrier surface: it says that the
upstream strengthened language supplies the two branch start-margin theorems
needed by `Graph147RankedSuffixEvalMarginInv`.  It is acceptable only when the
upstream proof of this predicate is itself semantic.  A selected-prefix,
sampled-rank, accepted-trace, exact-affine, or per-observed-path proof of this
predicate is not production evidence.
-/
def Graph147RankedEvalMarginSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  badFace = Face.ym ∧
    (∀ rest,
      Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
        Graph147RankedSuffixEvalMarginInv scaledMargin rank
          graph147RankedPrefix4EvalState rest (-53 : Int)) ∧
    (∀ rest,
      Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
        Graph147RankedSuffixEvalMarginInv scaledMargin rank
          graph147RankedPrefix4EvalState rest (-53 : Int))

/--
The older target-completion root-margin socket implies the newer ranked suffix
margin invariant.

This adapter keeps the production surfaces compatible: a future semantic
producer may still target `Graph147TargetCompletionTailRootMarginBound`, and
the ranked evaluator projection supplies the exact `Graph147RankedSuffix...`
statement needed by the current graph147 carrier.
-/
theorem graph147RankedSuffixEvalMarginInv_of_targetCompletionRootMarginBound
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {labels : List Face}
    (hmargin :
      Graph147TargetCompletionTailRootMarginBound
        scaledMargin rank (-53 : Int) labels) :
    Graph147RankedSuffixEvalMarginInv scaledMargin rank
      graph147RankedPrefix4EvalState labels (-53 : Int) := by
  intro finish gain heval
  have hgraph :
      evalLabelStepFn strengthenedClosedEvalNext
          strengthenedClosedPrefix4YpZmEvalState labels =
        some (finish.graph, gain) := by
    simpa [graph147RankedPrefix4EvalState] using
      TopPairingTransducerEvalState.evalLabelStepFn_graph_of_faceEval
        (next := strengthenedClosedEvalNext)
        (labelOfFace := fun face : Face => face)
        heval
  exact hmargin (finish.graph, gain) hgraph

/--
Semantic `sequenceBadFace` carrier for graph-147 target-completion
root-margin bounds.

This is an equivalent, older-facing carrier.  It is useful because several
existing graph147 sockets are stated in terms of
`Graph147TargetCompletionTailRootMarginBound`.  As with
`Graph147RankedEvalMarginSequenceBadFace`, this predicate is production-safe
only if the upstream proof is semantic rather than selected-prefix or
sampled-path evidence.
-/
def Graph147TargetCompletionRootMarginSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  badFace = Face.ym ∧
    (∀ rest,
      Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
        Graph147TargetCompletionTailRootMarginBound
          scaledMargin rank (-53 : Int) rest) ∧
    (∀ rest,
      Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
        Graph147TargetCompletionTailRootMarginBound
          scaledMargin rank (-53 : Int) rest)

theorem graph147RankedEvalMarginSequenceBadFace_of_targetCompletionRootMargin
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {badFace : Face}
    (h :
      Graph147TargetCompletionRootMarginSequenceBadFace
        scaledMargin rank badFace) :
    Graph147RankedEvalMarginSequenceBadFace
      scaledMargin rank badFace := by
  rcases h with ⟨hface, hyp_zm, hzm_yp⟩
  exact ⟨hface,
    (by
      intro rest hprefix
      exact
        graph147RankedSuffixEvalMarginInv_of_targetCompletionRootMarginBound
          (hyp_zm rest hprefix)),
    (by
      intro rest hprefix
      exact
        graph147RankedSuffixEvalMarginInv_of_targetCompletionRootMarginBound
          (hzm_yp rest hprefix))⟩

def rankedEvalMarginBundle_of_graph147TargetCompletionRootMarginSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int) :
    StrengthenedGraph147RankedEvalMarginBundle
      scaledMargin
      (Graph147TargetCompletionRootMarginSequenceBadFace scaledMargin) where
  yp_zm := by
    refine ⟨?_⟩
    intro rank hstrengthened rest hprefix finish gain heval
    have hseq :=
      graph147RankedEvalMarginSequenceBadFace_of_targetCompletionRootMargin
        hstrengthened.sequenceBadFace_ok
    exact hseq.2.1 rest hprefix finish gain heval
  zm_yp := by
    refine ⟨?_⟩
    intro rank hstrengthened rest hprefix finish gain heval
    have hseq :=
      graph147RankedEvalMarginSequenceBadFace_of_targetCompletionRootMargin
        hstrengthened.sequenceBadFace_ok
    exact hseq.2.2 rest hprefix finish gain heval

def rootMarginBundle_of_graph147TargetCompletionRootMarginSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int) :
    StrengthenedGraph147RootMarginBundle
      scaledMargin
      (Graph147TargetCompletionRootMarginSequenceBadFace scaledMargin) :=
  rootMarginBundle_of_rankedEvalMarginBundle_via_suffixEvalMarginInv
    (rankedEvalMarginBundle_of_graph147TargetCompletionRootMarginSequenceBadFace
      scaledMargin)

/--
If `sequenceBadFace_ok` carries the semantic graph-147 branch start-margin
facts, the ranked-evaluator margin bundle is immediate.

This is a guardrail adapter for the current pivot.  It documents exactly what
would have to be proved upstream, and it does not inspect sampled paths,
selected prefixes, accepted traces, affine RHS keys, or rank tables.
-/
def rankedEvalMarginBundle_of_graph147RankedEvalMarginSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int) :
    StrengthenedGraph147RankedEvalMarginBundle
      scaledMargin
      (Graph147RankedEvalMarginSequenceBadFace scaledMargin) where
  yp_zm := by
    refine ⟨?_⟩
    intro rank hstrengthened rest hprefix finish gain heval
    rcases hstrengthened.sequenceBadFace_ok with ⟨_hbadFace, hyp_zm, _hzm_yp⟩
    exact hyp_zm rest hprefix finish gain heval
  zm_yp := by
    refine ⟨?_⟩
    intro rank hstrengthened rest hprefix finish gain heval
    rcases hstrengthened.sequenceBadFace_ok with ⟨_hbadFace, _hyp_zm, hzm_yp⟩
    exact hzm_yp rest hprefix finish gain heval

def rootMarginBundle_of_graph147RankedEvalMarginSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int) :
    StrengthenedGraph147RootMarginBundle
      scaledMargin
      (Graph147RankedEvalMarginSequenceBadFace scaledMargin) :=
  rootMarginBundle_of_rankedEvalMarginBundle_via_suffixEvalMarginInv
    (rankedEvalMarginBundle_of_graph147RankedEvalMarginSequenceBadFace
      scaledMargin)

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
