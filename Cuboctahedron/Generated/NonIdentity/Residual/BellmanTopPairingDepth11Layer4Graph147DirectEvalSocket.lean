import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000

/-!
Graph-147 direct semantic eval socket for the layer-4 Bellman route.

This file is the production-shaped replacement for routing the graph-147
branches through mapped class cases.  A future generator/proof should provide
only two semantic facts for the branch suffix:

* the suffix is a `Graph147TargetCompletionTail`;
* the root-gain margin bound holds for the deterministic evaluator result.

The adapter below turns those facts, together with the strengthened closed
language and the layer-4 prefix equation, into the public graph-exact eval
gate.  It mentions no sampled ranks, selected prefixes, accepted trace ids,
exact affine keys, or raw path tables.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

/--
Semantic graph-147 target-completion family for the `yp, zm` layer-4 branch.

The hard future theorem is the `tail` field plus the `margin` field.  Both are
rank-semantic and parameterized by the strengthened closed-language proof; the
structure does not carry any per-rank object table.
-/
structure StrengthenedGraph147YpZmTargetCompletionFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  tail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
          Graph147TargetCompletionTail rest
  margin :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
          Graph147TargetCompletionTail rest ->
          Graph147TargetCompletionTailRootMarginBound
            scaledMargin rank (-53 : Int) rest

/--
Semantic graph-147 target-completion family for the `zm, yp` layer-4 branch.
-/
structure StrengthenedGraph147ZmYpTargetCompletionFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  tail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
          Graph147TargetCompletionTail rest
  margin :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
          Graph147TargetCompletionTail rest ->
          Graph147TargetCompletionTailRootMarginBound
            scaledMargin rank (-53 : Int) rest

/-- The two graph-147 branches packaged together for a future portfolio. -/
structure StrengthenedGraph147TargetCompletionBundle
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  yp_zm :
    StrengthenedGraph147YpZmTargetCompletionFamily
      scaledMargin sequenceBadFace
  zm_yp :
    StrengthenedGraph147ZmYpTargetCompletionFamily
      scaledMargin sequenceBadFace

private theorem graph147YpZm_usedFaceTail_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest) :
    TopPairingUsedFaceTail [Face.xm, Face.ym, Face.yp, Face.zm] rest := by
  apply TopPairingUsedFaceTail.of_actualFaceOmni_append
  have hactual := hstrengthened.actualFaceOmni
  change (topPairingRankFaceLabels rank).Nodup at hactual
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  rw [hprefix'] at hactual
  simpa [TopPairingActualFaceOmniLabels] using hactual

private theorem graph147ZmYp_usedFaceTail_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest) :
    TopPairingUsedFaceTail [Face.xm, Face.ym, Face.zm, Face.yp] rest := by
  apply TopPairingUsedFaceTail.of_actualFaceOmni_append
  have hactual := hstrengthened.actualFaceOmni
  change (topPairingRankFaceLabels rank).Nodup at hactual
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  rw [hprefix'] at hactual
  simpa [TopPairingActualFaceOmniLabels] using hactual

private theorem graph147YpZm_restLength_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest) :
    rest.length = graph147TargetCompletionState.remaining.length := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hprefixLabels :
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest := by
    simpa [topPairingRankFaceLabels] using hprefix'
  have hlen := hstrengthened.toTopPairingClosedLanguageAtRank.schedule.1
  rw [hprefixLabels] at hlen
  simpa [graph147TargetCompletionState] using hlen

private theorem graph147ZmYp_restLength_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest) :
    rest.length = graph147TargetCompletionState.remaining.length := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hprefixLabels :
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest := by
    simpa [topPairingRankFaceLabels] using hprefix'
  have hlen := hstrengthened.toTopPairingClosedLanguageAtRank.schedule.1
  rw [hprefixLabels] at hlen
  simpa [graph147TargetCompletionState] using hlen

private theorem graph147YpZm_stepScheduleTail_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest) :
    TopPairingStepScheduleFrom graph147TargetCompletionState.step rest := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hprefixLabels :
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest := by
    simpa [topPairingRankFaceLabels] using hprefix'
  have hschedule := hstrengthened.toTopPairingClosedLanguageAtRank.schedule.2
  rw [hprefixLabels] at hschedule
  have htail :=
    topPairingStepScheduleFrom_append
      (step := 0)
      (pfx := [Face.xm, Face.ym, Face.yp, Face.zm])
      (rest := rest) hschedule
  simpa [graph147TargetCompletionState] using htail

private theorem graph147ZmYp_stepScheduleTail_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest) :
    TopPairingStepScheduleFrom graph147TargetCompletionState.step rest := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hprefixLabels :
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest := by
    simpa [topPairingRankFaceLabels] using hprefix'
  have hschedule := hstrengthened.toTopPairingClosedLanguageAtRank.schedule.2
  rw [hprefixLabels] at hschedule
  have htail :=
    topPairingStepScheduleFrom_append
      (step := 0)
      (pfx := [Face.xm, Face.ym, Face.zm, Face.yp])
      (rest := rest) hschedule
  simpa [graph147TargetCompletionState] using htail

private theorem graph147YpZm_squareGapTail_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest) :
    TopPairingSquareGapFrom graph147TargetCompletionState.gap rest := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hprefixLabels :
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest := by
    simpa [topPairingRankFaceLabels] using hprefix'
  have hgap := hstrengthened.toTopPairingClosedLanguageAtRank.squareGap
  rw [hprefixLabels] at hgap
  have htail :=
    topPairingSquareGapFrom_append
      (gap := 0)
      (pfx := [Face.xm, Face.ym, Face.yp, Face.zm])
      (rest := rest) hgap
  simpa [graph147TargetCompletionState, topPairingSquareGapAfter,
    isSquarePair, pairOfFace] using htail

private theorem graph147ZmYp_squareGapTail_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest) :
    TopPairingSquareGapFrom graph147TargetCompletionState.gap rest := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hprefixLabels :
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest := by
    simpa [topPairingRankFaceLabels] using hprefix'
  have hgap := hstrengthened.toTopPairingClosedLanguageAtRank.squareGap
  rw [hprefixLabels] at hgap
  have htail :=
    topPairingSquareGapFrom_append
      (gap := 0)
      (pfx := [Face.xm, Face.ym, Face.zm, Face.yp])
      (rest := rest) hgap
  simpa [graph147TargetCompletionState, topPairingSquareGapAfter,
    isSquarePair, pairOfFace] using htail

private theorem graph147YpZm_triCursorTail_of_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hcursor : TopPairingTargetCursorAtRank rank)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest) :
    TopPairingTriCursorFrom graph147TargetCompletionState.triState.shadowLen
      graph147TargetCompletionState.parity rest := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  unfold TopPairingTargetCursorAtRank at hcursor
  rw [hprefix'] at hcursor
  have htail1 :=
    TopPairingTriCursorFrom.cons_square_tail
      hcursor (by rfl : triLetterOfFace? Face.xm = none)
  have htail2 :=
    TopPairingTriCursorFrom.cons_square_tail
      htail1 (by rfl : triLetterOfFace? Face.ym = none)
  have htail3 :=
    TopPairingTriCursorFrom.cons_square_tail
      htail2 (by rfl : triLetterOfFace? Face.yp = none)
  have htail4 :=
    TopPairingTriCursorFrom.cons_square_tail
      htail3 (by rfl : triLetterOfFace? Face.zm = none)
  simpa [graph147TargetCompletionState, SqParity.id, SqParity.applyPair,
    SqParity.xor, SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
    SqParity.toggleZ, pairOfFace] using htail4

private theorem graph147ZmYp_triCursorTail_of_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hcursor : TopPairingTargetCursorAtRank rank)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest) :
    TopPairingTriCursorFrom graph147TargetCompletionState.triState.shadowLen
      graph147TargetCompletionState.parity rest := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  unfold TopPairingTargetCursorAtRank at hcursor
  rw [hprefix'] at hcursor
  have htail1 :=
    TopPairingTriCursorFrom.cons_square_tail
      hcursor (by rfl : triLetterOfFace? Face.xm = none)
  have htail2 :=
    TopPairingTriCursorFrom.cons_square_tail
      htail1 (by rfl : triLetterOfFace? Face.ym = none)
  have htail3 :=
    TopPairingTriCursorFrom.cons_square_tail
      htail2 (by rfl : triLetterOfFace? Face.zm = none)
  have htail4 :=
    TopPairingTriCursorFrom.cons_square_tail
      htail3 (by rfl : triLetterOfFace? Face.yp = none)
  simpa [graph147TargetCompletionState, SqParity.id, SqParity.applyPair,
    SqParity.xor, SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
    SqParity.toggleZ, pairOfFace] using htail4

private def targetCompletionStateAfter :
    TopPairingTargetCompletionState -> List Face ->
      TopPairingTargetCompletionState
  | state, [] => state
  | state, face :: rest =>
      targetCompletionStateAfter (state.next face) rest

private abbrev Graph147TargetCancellationTail (rest : List Face) : Prop :=
  (targetCompletionStateAfter graph147TargetCompletionState rest).triState.summary =
    topPairingTargetSummary

private theorem graph147YpZm_remaining_iff_not_prefix_used (face : Face) :
    face ∈ graph147TargetCompletionState.remaining ↔
      face ∉ [Face.xm, Face.ym, Face.yp, Face.zm] := by
  cases face <;> simp [graph147TargetCompletionState]

private theorem graph147ZmYp_remaining_iff_not_prefix_used (face : Face) :
    face ∈ graph147TargetCompletionState.remaining ↔
      face ∉ [Face.xm, Face.ym, Face.zm, Face.yp] := by
  cases face <;> simp [graph147TargetCompletionState]

private theorem targetCompletionTail_of_semanticCore :
    ∀ {state : TopPairingTargetCompletionState} {used rest : List Face},
      (∀ face : Face, face ∈ state.remaining ↔ face ∉ used) ->
      state.remaining.Nodup ->
      rest.length = state.remaining.length ->
      TopPairingStepScheduleFrom state.step rest ->
      TopPairingSquareGapFrom state.gap rest ->
      TopPairingUsedFaceTail used rest ->
      (targetCompletionStateAfter state rest).triState.summary =
        topPairingTargetSummary ->
      TopPairingTargetCompletionTail state rest
  | state, used, [], hremaining, _hnodup, hlen, _hschedule, _hgap, _hused,
      hsummary => by
      cases hremainingEq : state.remaining with
      | nil =>
          exact TopPairingTargetCompletionTail.nil hremainingEq hsummary
      | cons face rest =>
          simp [hremainingEq] at hlen
  | state, used, face :: rest, hremaining, hnodup, hlen, hschedule, hgap,
      hused, hsummary => by
      unfold TopPairingStepScheduleFrom at hschedule
      rcases hschedule with ⟨hfaceSchedule, hscheduleRest⟩
      have hfaceRemaining : face ∈ state.remaining :=
        (hremaining face).2 (TopPairingUsedFaceTail.head_not_used hused)
      have hsquareAllowed : state.squareAllowed face := by
        unfold TopPairingTargetCompletionState.squareAllowed
        unfold TopPairingSquareGapFrom at hgap
        by_cases hsquare : isSquarePair (pairOfFace face) = true
        · rw [hsquare] at hgap
          simp [hsquare, hgap.1]
        · have hsquareFalse :
            isSquarePair (pairOfFace face) = false := by
              cases hpair : isSquarePair (pairOfFace face)
              · rfl
              · exact False.elim (hsquare hpair)
          simp [hsquareFalse]
      have hgapRest :
          TopPairingSquareGapFrom (state.next face).gap rest := by
        unfold TopPairingSquareGapFrom at hgap
        unfold TopPairingTargetCompletionState.next topPairingNextGap
        by_cases hsquare : isSquarePair (pairOfFace face) = true
        · rw [hsquare] at hgap
          simp [hsquare]
          exact hgap.2
        · have hsquareFalse :
            isSquarePair (pairOfFace face) = false := by
              cases hpair : isSquarePair (pairOfFace face)
              · rfl
              · exact False.elim (hsquare hpair)
          rw [hsquareFalse] at hgap
          simp [hsquareFalse]
          exact hgap
      have hremainingNext :
          ∀ f : Face,
            f ∈ (state.next face).remaining ↔ f ∉ face :: used := by
        intro f
        change f ∈ state.remaining.erase face ↔ f ∉ face :: used
        rw [hnodup.erase_eq_filter]
        simp [hremaining f, and_comm]
      have hlenNext :
          rest.length = (state.next face).remaining.length := by
        have herase :
            (state.remaining.erase face).length + 1 =
              state.remaining.length :=
          List.length_erase_add_one hfaceRemaining
        have hlenSucc : rest.length + 1 = state.remaining.length := by
          simpa using hlen
        simp [TopPairingTargetCompletionState.next]
        omega
      have htail :=
        targetCompletionTail_of_semanticCore
          (state := state.next face)
          (used := face :: used)
          (rest := rest)
          hremainingNext (hnodup.erase face) hlenNext hscheduleRest hgapRest
          (TopPairingUsedFaceTail.cons_tail hused) hsummary
      exact TopPairingTargetCompletionTail.cons
        hfaceRemaining hfaceSchedule hsquareAllowed htail

private theorem graph147_targetCompletionTail_of_semanticCore_yp_zm
    {rest : List Face}
    (hschedule :
      TopPairingStepScheduleFrom graph147TargetCompletionState.step rest)
    (hgap :
      TopPairingSquareGapFrom graph147TargetCompletionState.gap rest)
    (hused :
      TopPairingUsedFaceTail [Face.xm, Face.ym, Face.yp, Face.zm] rest)
    (hlen : rest.length = graph147TargetCompletionState.remaining.length)
    (hcancel : Graph147TargetCancellationTail rest) :
    Graph147TargetCompletionTail rest :=
  targetCompletionTail_of_semanticCore
    (state := graph147TargetCompletionState)
    (used := [Face.xm, Face.ym, Face.yp, Face.zm])
    (rest := rest)
    graph147YpZm_remaining_iff_not_prefix_used (by decide) hlen hschedule hgap
    hused hcancel

private theorem graph147_targetCompletionTail_of_semanticCore_zm_yp
    {rest : List Face}
    (hschedule :
      TopPairingStepScheduleFrom graph147TargetCompletionState.step rest)
    (hgap :
      TopPairingSquareGapFrom graph147TargetCompletionState.gap rest)
    (hused :
      TopPairingUsedFaceTail [Face.xm, Face.ym, Face.zm, Face.yp] rest)
    (hlen : rest.length = graph147TargetCompletionState.remaining.length)
    (hcancel : Graph147TargetCancellationTail rest) :
    Graph147TargetCompletionTail rest :=
  targetCompletionTail_of_semanticCore
    (state := graph147TargetCompletionState)
    (used := [Face.xm, Face.ym, Face.zm, Face.yp])
    (rest := rest)
    graph147ZmYp_remaining_iff_not_prefix_used (by decide) hlen hschedule hgap
    hused hcancel

private theorem targetCompletionStateAfter_triState_eq_foldl_acted
    (state : TopPairingTargetCompletionState) (rest : List Face) :
    (targetCompletionStateAfter state rest).triState =
      (actedTriLettersFrom state.parity rest).foldl
        TriCancellationState.push state.triState := by
  induction rest generalizing state with
  | nil =>
      rfl
  | cons face rest ih =>
      cases face <;>
        simp [targetCompletionStateAfter, TopPairingTargetCompletionState.next,
          actedTriLettersFrom, triLetterOfFace?, pairOfFace,
          TriLetter.ofPairId?, SqParity.applyPair, SqParity.toggleForPair, ih]

private theorem graph147_targetCancellationTail_of_triCursor
    {rest : List Face}
    (hcursor :
      TopPairingTriCursorFrom
        graph147TargetCompletionState.triState.shadowLen
        graph147TargetCompletionState.parity rest) :
    Graph147TargetCancellationTail rest := by
  have hacted := TopPairingTriCursorFrom.actedTriLetters_eq_drop hcursor
  unfold Graph147TargetCancellationTail
  rw [targetCompletionStateAfter_triState_eq_foldl_acted]
  rw [hacted]
  rfl

theorem graph147YpZm_targetCompletionTail_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest) :
    Graph147TargetCompletionTail rest := by
  have hcursor :=
    topPairingTriCursor_of_closed
      hstrengthened.toTopPairingClosedLanguageAtRank
  exact graph147_targetCompletionTail_of_semanticCore_yp_zm
    (graph147YpZm_stepScheduleTail_of_strengthened_prefix
      hstrengthened hprefix)
    (graph147YpZm_squareGapTail_of_strengthened_prefix
      hstrengthened hprefix)
    (graph147YpZm_usedFaceTail_of_strengthened_prefix
      hstrengthened hprefix)
    (graph147YpZm_restLength_of_strengthened_prefix
      hstrengthened hprefix)
    (graph147_targetCancellationTail_of_triCursor
      (graph147YpZm_triCursorTail_of_prefix hcursor hprefix))

theorem graph147ZmYp_targetCompletionTail_of_strengthened_prefix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest) :
    Graph147TargetCompletionTail rest := by
  have hcursor :=
    topPairingTriCursor_of_closed
      hstrengthened.toTopPairingClosedLanguageAtRank
  exact graph147_targetCompletionTail_of_semanticCore_zm_yp
    (graph147ZmYp_stepScheduleTail_of_strengthened_prefix
      hstrengthened hprefix)
    (graph147ZmYp_squareGapTail_of_strengthened_prefix
      hstrengthened hprefix)
    (graph147ZmYp_usedFaceTail_of_strengthened_prefix
      hstrengthened hprefix)
    (graph147ZmYp_restLength_of_strengthened_prefix
      hstrengthened hprefix)
    (graph147_targetCancellationTail_of_triCursor
      (graph147ZmYp_triCursorTail_of_prefix hcursor hprefix))

theorem graphExactEvalGateAtRank_of_yp_zm_targetCompletionFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hfamily :
      StrengthenedGraph147YpZmTargetCompletionFamily
        scaledMargin sequenceBadFace)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest) :
    TopPairingGraphExactEvalGateAtRank
      (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
      strengthenedClosedEvalNext
      (fun face : Face => face)
      strengthenedClosedEvalStart
      (176 : Int)
      scaledMargin
      rank
      Face.ym := by
  have hlabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have htail := hfamily.tail rank hstrengthened rest hprefix
  exact
    graph147YpZmStrengthenedGraphExactEvalGateAtRank_of_tail_margin
      hstrengthened hlabels htail
        (hfamily.margin rank hstrengthened rest hprefix htail)

theorem graphExactEvalGateAtRank_of_zm_yp_targetCompletionFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hfamily :
      StrengthenedGraph147ZmYpTargetCompletionFamily
        scaledMargin sequenceBadFace)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest) :
    TopPairingGraphExactEvalGateAtRank
      (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
      strengthenedClosedEvalNext
      (fun face : Face => face)
      strengthenedClosedEvalStart
      (176 : Int)
      scaledMargin
      rank
      Face.ym := by
  have hlabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have htail := hfamily.tail rank hstrengthened rest hprefix
  exact
    graph147ZmYpStrengthenedGraphExactEvalGateAtRank_of_tail_margin
      hstrengthened hlabels htail
        (hfamily.margin rank hstrengthened rest hprefix htail)

theorem graphExactEvalGateAtRank_of_bundle_yp_zm
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hbundle :
      StrengthenedGraph147TargetCompletionBundle
        scaledMargin sequenceBadFace)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest) :
    TopPairingGraphExactEvalGateAtRank
      (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
      strengthenedClosedEvalNext
      (fun face : Face => face)
      strengthenedClosedEvalStart
      (176 : Int)
      scaledMargin
      rank
      Face.ym :=
  graphExactEvalGateAtRank_of_yp_zm_targetCompletionFamily
    hbundle.yp_zm hstrengthened hprefix

theorem graphExactEvalGateAtRank_of_bundle_zm_yp
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hbundle :
      StrengthenedGraph147TargetCompletionBundle
        scaledMargin sequenceBadFace)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest) :
    TopPairingGraphExactEvalGateAtRank
      (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
      strengthenedClosedEvalNext
      (fun face : Face => face)
      strengthenedClosedEvalStart
      (176 : Int)
      scaledMargin
      rank
      Face.ym :=
  graphExactEvalGateAtRank_of_zm_yp_targetCompletionFamily
    hbundle.zm_yp hstrengthened hprefix

theorem graph147DirectEvalSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket
