import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221TerminalTailPrefixSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

set_option maxRecDepth 4096

/-!
Semantic terminal bridge for the graph221 `zm,tmpp` layer-4 branch.

The Bellman pivot for this branch is no longer a selected-prefix or sampled
trace theorem.  `BellmanTopPairingGraph221TerminalTailPrefixSmoke` already
proves that strengthened closed-language semantics plus the `zm,tmpp` layer-4
prefix drives the terminal partial machine from its initial semantic state to a
terminal state.  This file exposes the lightweight terminal-trace consequence
without importing the heavier start-violation provider path.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221SemanticTerminalBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221TerminalTailPrefixSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphExactProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

theorem terminalTraceLabels_of_graph221_zm_tmpp_semantic
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) :=
  terminalTraceLabels_of_containedEvalPrefixGate
    TerminalStepStatePartialMachine.semantic
    hstrengthened.closed
    (graph221InitialContainedEvalPrefixGate_of_strengthened_prefix_semantic
      hstrengthened hprefix)

theorem traceIdExistsClosedMarginFamily_of_graph221_zm_tmpp_semantic
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hmargin :
      forall traceId : AcceptedTraceId,
        topPairingRankFaceLabels rank = acceptedTraceOfId traceId ->
          scaledMargin rank <= (176 : Int) + acceptedTraceGain traceId) :
    TraceIdExistsClosedMarginFamily scaledMargin rank := by
  have hterm :
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (topPairingRankFaceLabels rank) :=
    terminalTraceLabels_of_graph221_zm_tmpp_semantic
      hstrengthened hprefix
  have haccepted :=
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge.graphAcceptedTraceLabels_of_strengthenedTerminalTrace
      hstrengthened hterm
  rcases acceptedTraceId_of_graphAcceptedTraceLabels haccepted with
    ⟨traceId, htrace⟩
  exact ⟨hstrengthened.closed, traceId, htrace, hmargin traceId htrace⟩

theorem evalLanguage_of_graph221_zm_tmpp_semantic_marginBound
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hmargin :
      forall traceId : AcceptedTraceId,
        topPairingRankFaceLabels rank = acceptedTraceOfId traceId ->
          scaledMargin rank <= (176 : Int) + acceptedTraceGain traceId) :
    TopPairingBellmanEvalLanguageAtRank
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base.graphPotential
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base.graphSmokeNext
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base.smokeLabelOfFace
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base.rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceIdExistsClosedMarginFamily
    (traceIdExistsClosedMarginFamily_of_graph221_zm_tmpp_semantic
      hstrengthened hprefix hmargin)

theorem scaledMargin_nonpos_of_graph221_zm_tmpp_semantic_marginBound
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hmargin :
      forall traceId : AcceptedTraceId,
        topPairingRankFaceLabels rank = acceptedTraceOfId traceId ->
          scaledMargin rank <= (176 : Int) + acceptedTraceGain traceId) :
    scaledMargin rank <= 0 :=
  traceIdExistsClosedMarginFamily_scaledMargin_nonpos
    (traceIdExistsClosedMarginFamily_of_graph221_zm_tmpp_semantic
      hstrengthened hprefix hmargin)

theorem scaledMargin_nonpos_of_graph221_semantic_evalLanguage
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (heval :
      TopPairingBellmanEvalLanguageAtRank
        graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
        scaledMargin rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_bellmanEvalAccepts_invariant
    (V := graphPotential)
    (next := graphSmokeNext)
    (InRange := fun s : State => s < stateCount)
    (start := rootState)
    (const := (176 : Int))
    (scaledMargin := scaledMargin)
    (wordOf := fun rank : Fin numPairWords =>
      faceLabelsInContributionOrder smokeLabelOfFace
        (canonicalSeqOfPairWord (unrankPairWord rank)))
    (by
      intro s label t gain hs hnext
      exact
        Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root.transition_ok_of_lt
          (s := s) (label := label) (t := t) (gain := gain) hs hnext)
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedObjectCover.graphRootInRange
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedObjectCover.graphRootBound
    heval.eval_accepts

theorem scaledMargin_nonpos_of_graph221_semantic_graphExact
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hgate :
      TopPairingGraphExactEvalGateAtRank
        graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
        scaledMargin rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_graph221_semantic_evalLanguage
    (evalLanguageAtRank_of_graphExactEvalGate hgate)

/--
Graph221 root-margin obligation for the split-10M graph.

This is the emitter-facing margin theorem shape for the deterministic
closed-language route: once the semantic graph221 suffix has driven the checked
graph evaluator to a concrete result, the generated margin producer only needs
to bound `scaledMargin` by that result gain.  No accepted trace id, sampled rank
object, selected prefix id, exact affine RHS key, or raw path table is part of
the public obligation.
-/
def Graph221Layer4Split10MRootMarginBound
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (rest : List Face) : Prop :=
  ∀ result : State × Int,
    evalLabelStepFn graphSmokeNext rootState
        (([Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest).map
          smokeLabelOfFace) = some result ->
      scaledMargin rank <= (176 : Int) + result.2

private theorem graph221Tail029_split10M_eval :
    evalLabelStepFn graphSmokeNext rootState
        (([Face.xm, Face.ym, Face.zm, Face.tmpp] ++
            graph221Layer4ForcedTailPrefixLabels ++ graph221Tail029).map
          smokeLabelOfFace) =
      some ((601 : State), (-376 : Int)) := by
  rfl

private theorem graph221Tail030_split10M_eval :
    evalLabelStepFn graphSmokeNext rootState
        (([Face.xm, Face.ym, Face.zm, Face.tmpp] ++
            graph221Layer4ForcedTailPrefixLabels ++ graph221Tail030).map
          smokeLabelOfFace) =
      some ((601 : State), (-376 : Int)) := by
  rfl

private theorem graph221Tail031_split10M_eval :
    evalLabelStepFn graphSmokeNext rootState
        (([Face.xm, Face.ym, Face.zm, Face.tmpp] ++
            graph221Layer4ForcedTailPrefixLabels ++ graph221Tail031).map
          smokeLabelOfFace) =
      some ((600 : State), (-596 : Int)) := by
  rfl

private theorem graph221Tail029_split10M_final_nonneg :
    0 <= graphPotential (601 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem graph221Tail030_split10M_final_nonneg :
    0 <= graphPotential (601 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem graph221Tail031_split10M_final_nonneg :
    0 <= graphPotential (600 : State) := by
  change 0 <= (0 : Int)
  norm_num

/--
Semantic graph221 suffixes drive the split-10M evaluator to a final
nonnegative-potential state.

The proof case-splits only on the three suffix alternatives of the semantic
`graph221Layer4AcceptedTailSuffixOk` predicate.  It does not route through
accepted trace ids or sampled membership.
-/
theorem graph221Layer4AcceptedTailSuffixOk_split10M_eval_exists_final_nonneg
    {rest : List Face}
    (hok : graph221Layer4AcceptedTailSuffixOk rest) :
    ∃ finish gain,
      evalLabelStepFn graphSmokeNext rootState
          (([Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest).map
            smokeLabelOfFace) = some (finish, gain) ∧
        0 <= graphPotential finish := by
  rcases hok with ⟨tail, hrest, htailOk⟩
  subst rest
  rcases htailOk with h029 | h030 | h031
  · subst tail
    exact ⟨(601 : State), (-376 : Int),
      graph221Tail029_split10M_eval,
      graph221Tail029_split10M_final_nonneg⟩
  · subst tail
    exact ⟨(601 : State), (-376 : Int),
      graph221Tail030_split10M_eval,
      graph221Tail030_split10M_final_nonneg⟩
  · subst tail
    exact ⟨(600 : State), (-596 : Int),
      graph221Tail031_split10M_eval,
      graph221Tail031_split10M_final_nonneg⟩

/--
Graph221 `zm,tmpp` branch adapter from semantic suffix membership and a
deterministic root-margin producer to the split-10M graph-exact eval gate.

This is the graph221 analogue of the graph147 direct eval socket, but with the
new production surface requested by the Bellman pivot: the evaluator result is
derived from the closed holonomy/cancellation language, while the remaining
margin theorem is stated against the deterministic evaluator gain.
-/
theorem split10MGraphExactEvalGateAtRank_of_graph221_zm_tmpp_semantic_margin
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hmargin :
      Graph221Layer4Split10MRootMarginBound scaledMargin rank rest) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank := by
  have htail : Graph151TargetCompletionTail rest :=
    graph151CompletionTail_of_strengthened_prefix hstrengthened hprefix
  have hok : graph221Layer4AcceptedTailSuffixOk rest :=
    graph221Layer4AcceptedTailSuffixOk_of_graph151TargetCompletionTail htail
  rcases graph221Layer4AcceptedTailSuffixOk_split10M_eval_exists_final_nonneg
      hok with
    ⟨finish, gain, heval, hfinal⟩
  have hlabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hevalRank :
      evalLabelStepFn graphSmokeNext rootState
          ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
        some (finish, gain) := by
    simpa [hlabels] using heval
  exact graphExactEvalGateAtRank_of_evalLanguageAtRank
    (evalLanguageAtRank_of_mappedRankLabelsGraphExact
      (V := graphPotential)
      (next := graphSmokeNext)
      (labelOfFace := smokeLabelOfFace)
      (start := rootState)
      (const := (176 : Int))
      (scaledMargin := scaledMargin)
      (rank := rank)
      (badFace := Face.ym)
      (finish := finish)
      (gain := gain)
      hstrengthened.closed
      hevalRank
      hfinal
      (hmargin (finish, gain) heval))

/--
Generic version of the graph151 target-completion tail theorem for the graph221
lane.

The target-completion derivation uses only closed-language schedule/cursor
fields plus actual-face omnihedrality.  It does not depend on the particular
`sequenceBadFace` carrier.  Keeping this theorem generic is important for the
Bellman pivot: future margin producers may choose a semantic carrier that
stores deterministic margin facts rather than reusing
`AcceptedSequenceBadFaceAtRank`.
-/
theorem graph151CompletionTail_of_strengthened_prefix_generic
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    Graph151TargetCompletionTail rest := by
  have hprefixLabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hfaceLabels :
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [topPairingRankFaceLabels] using hprefixLabels
  have hused :
      TopPairingUsedFaceTail [Face.xm, Face.ym, Face.zm, Face.tmpp] rest := by
    apply TopPairingUsedFaceTail.of_actualFaceOmni_append
    have hactual := hstrengthened.actualFaceOmni
    change (topPairingRankFaceLabels rank).Nodup at hactual
    rw [hprefixLabels] at hactual
    simpa [TopPairingActualFaceOmniLabels] using hactual
  have hlen :
      rest.length = graph151TargetCompletionState.remaining.length := by
    have hlen := hstrengthened.toTopPairingClosedLanguageAtRank.schedule.1
    rw [hfaceLabels] at hlen
    simpa [graph151TargetCompletionState] using hlen
  have hschedule :
      TopPairingStepScheduleFrom graph151TargetCompletionState.step rest := by
    have hschedule :=
      hstrengthened.toTopPairingClosedLanguageAtRank.schedule.2
    rw [hfaceLabels] at hschedule
    have htail :=
      topPairingStepScheduleFrom_append
        (step := 0)
        (pfx := [Face.xm, Face.ym, Face.zm, Face.tmpp])
        (rest := rest) hschedule
    simpa [graph151TargetCompletionState] using htail
  have hgap :
      TopPairingSquareGapFrom graph151TargetCompletionState.gap rest := by
    have hgap := hstrengthened.toTopPairingClosedLanguageAtRank.squareGap
    rw [hfaceLabels] at hgap
    have htail :=
      topPairingSquareGapFrom_append
        (gap := 0)
        (pfx := [Face.xm, Face.ym, Face.zm, Face.tmpp])
        (rest := rest) hgap
    simpa [graph151TargetCompletionState, topPairingSquareGapAfter,
      isSquarePair, pairOfFace] using htail
  have hcursor :=
    topPairingTriCursor_of_closed
      hstrengthened.toTopPairingClosedLanguageAtRank
  have htriCursor :=
    graph151_triCursorTail_of_prefix hcursor hprefix
  exact graph151_targetCompletionTail_of_semanticCore
    hschedule hgap hused hlen
    (graph151_targetCancellationTail_of_triCursor htriCursor)

/--
Generic graph221 root-margin family, parameterized by the strengthened
language's `sequenceBadFace` predicate.

This is the production-safe surface: an upstream semantic language may carry
exactly the deterministic graph221 margin fact it needs, without changing the
graph221 evaluator proof or falling back to sampled objects.
-/
structure Graph221ZmTmppSplit10MRootMarginFamily
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  margin :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      ∀ rest,
        Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest ->
        Graph221Layer4Split10MRootMarginBound scaledMargin rank rest

theorem split10MGraphExactEvalGateAtRank_of_graph221_zm_tmpp_generic_rootMarginFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Graph221ZmTmppSplit10MRootMarginFamily sequenceBadFace scaledMargin)
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank := by
  have htail : Graph151TargetCompletionTail rest :=
    graph151CompletionTail_of_strengthened_prefix_generic
      hstrengthened hprefix
  have hok : graph221Layer4AcceptedTailSuffixOk rest :=
    graph221Layer4AcceptedTailSuffixOk_of_graph151TargetCompletionTail htail
  rcases graph221Layer4AcceptedTailSuffixOk_split10M_eval_exists_final_nonneg
      hok with
    ⟨finish, gain, heval, hfinal⟩
  have hlabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hevalRank :
      evalLabelStepFn graphSmokeNext rootState
          ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
        some (finish, gain) := by
    simpa [hlabels] using heval
  exact graphExactEvalGateAtRank_of_evalLanguageAtRank
    (evalLanguageAtRank_of_mappedRankLabelsGraphExact
      (V := graphPotential)
      (next := graphSmokeNext)
      (labelOfFace := smokeLabelOfFace)
      (start := rootState)
      (const := (176 : Int))
      (scaledMargin := scaledMargin)
      (rank := rank)
      (badFace := Face.ym)
      (finish := finish)
      (gain := gain)
      hstrengthened.closed
      hevalRank
      hfinal
      (hfamily.margin rank hstrengthened rest hprefix (finish, gain) heval))

theorem scaledMargin_nonpos_of_graph221_zm_tmpp_generic_rootMarginFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      Graph221ZmTmppSplit10MRootMarginFamily sequenceBadFace scaledMargin)
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MGraphExactEvalGate
    (split10MGraphExactEvalGateAtRank_of_graph221_zm_tmpp_generic_rootMarginFamily
      hfamily hstrengthened hprefix)

/--
Semantic `sequenceBadFace` carrier for graph221 `zm,tmpp` root-margin bounds.

This predicate is a carrier for a future deterministic margin theorem, not a
certificate by itself.  Its intended proofs should come from the graph221
cocycle/Bellman or segment-summary producer over closed-language state.
-/
def Graph221ZmTmppSplit10MRootMarginSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  badFace = Face.ym ∧
    ∀ rest,
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest ->
        Graph221Layer4Split10MRootMarginBound scaledMargin rank rest

def graph221ZmTmppSplit10MRootMarginFamily_of_sequenceBadFace
    (scaledMargin : Fin numPairWords -> Int) :
    Graph221ZmTmppSplit10MRootMarginFamily
      (Graph221ZmTmppSplit10MRootMarginSequenceBadFace scaledMargin)
      scaledMargin where
  margin := by
    intro rank hstrengthened rest hprefix
    rcases hstrengthened.sequenceBadFace_ok with ⟨_hbadFace, hmargin⟩
    exact hmargin rest hprefix

theorem split10MGraphExactEvalGateAtRank_of_graph221_zm_tmpp_sequenceBadFace
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        (Graph221ZmTmppSplit10MRootMarginSequenceBadFace scaledMargin)
        rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank :=
  split10MGraphExactEvalGateAtRank_of_graph221_zm_tmpp_generic_rootMarginFamily
    (graph221ZmTmppSplit10MRootMarginFamily_of_sequenceBadFace scaledMargin)
    hstrengthened hprefix

theorem scaledMargin_nonpos_of_graph221_zm_tmpp_sequenceBadFace
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        (Graph221ZmTmppSplit10MRootMarginSequenceBadFace scaledMargin)
        rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_graph221_zm_tmpp_generic_rootMarginFamily
    (graph221ZmTmppSplit10MRootMarginFamily_of_sequenceBadFace scaledMargin)
    hstrengthened hprefix

/--
Emitter-facing graph221 root-margin family for the accepted-sequence
`zm,tmpp` branch.

This packages the remaining generated obligation without exposing terminal
trace ids or sampled membership.  A future deterministic margin producer should
prove this structure from the graph221 closed-language/cancellation state.
-/
structure AcceptedSequenceGraph221ZmTmppSplit10MRootMarginFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  margin :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      ∀ rest,
        Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest ->
        Graph221Layer4Split10MRootMarginBound scaledMargin rank rest

theorem split10MGraphExactEvalGateAtRank_of_graph221_zm_tmpp_rootMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph221ZmTmppSplit10MRootMarginFamily scaledMargin)
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    Split10MGraphExactEvalGateAtRank scaledMargin rank :=
  split10MGraphExactEvalGateAtRank_of_graph221_zm_tmpp_generic_rootMarginFamily
    ({ margin := hfamily.margin } :
      Graph221ZmTmppSplit10MRootMarginFamily
        AcceptedSequenceBadFaceAtRank scaledMargin)
    hstrengthened hprefix

theorem scaledMargin_nonpos_of_graph221_zm_tmpp_rootMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph221ZmTmppSplit10MRootMarginFamily scaledMargin)
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MGraphExactEvalGate
    (split10MGraphExactEvalGateAtRank_of_graph221_zm_tmpp_rootMarginFamily
      hfamily hstrengthened hprefix)

theorem graph221_semantic_terminal_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221SemanticTerminalBridge
