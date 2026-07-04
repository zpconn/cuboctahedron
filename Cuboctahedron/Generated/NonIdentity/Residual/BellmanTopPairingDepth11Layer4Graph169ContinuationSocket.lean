import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph157ContinuationSocket

set_option linter.unusedSimpArgs false

/-!
Direct graph-exact socket for the graph-169 post-`tpmm` branch.

This is the third semantic local-step socket on the graph150 frontier.  It
checks that target-completion semantics after `zp,tppm` forces `tpmm`, the
strengthened Bellman graph advances from `169` to `183` with gain `-36`, and
the remaining continuation starts from the smaller post-`tpmm`
target-completion state.

This remains a semantic continuation surface.  It contains no sampled ranks,
selected-prefix membership, accepted trace ids, exact affine RHS keys, solved
start-point keys, or raw path tables.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph169ContinuationSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph157ContinuationSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

def graph183TargetCompletionState : TopPairingTargetCompletionState :=
  graph169TargetCompletionState.next Face.tpmm

abbrev Graph169TargetCompletionTail (labels : List Face) : Prop :=
  TopPairingTargetCompletionTail graph169TargetCompletionState labels

theorem graph169_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph169TargetCompletionTail (face :: rest)) :
    face = Face.tmmm ∨ face = Face.tpmm ∨ face = Face.tpmp ∨
      face = Face.tppp := by
  have hremaining :=
    TopPairingTargetCompletionTail.head_remaining htail
  have hschedule :=
    TopPairingTargetCompletionTail.head_schedule htail
  have hsquare :=
    TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [Graph169TargetCompletionTail, graph183TargetCompletionState,
      graph169TargetCompletionState, graph157TargetCompletionState,
      graph150TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?] at hremaining hschedule hsquare ⊢

private theorem graph169_tmmm_canComplete_false :
    (graph169TargetCompletionState.next Face.tmmm).canComplete = false := by
  rfl

private theorem graph169_tpmp_canComplete_false :
    (graph169TargetCompletionState.next Face.tpmp).canComplete = false := by
  rfl

private theorem graph169_tppp_canComplete_false :
    (graph169TargetCompletionState.next Face.tppp).canComplete = false := by
  rfl

private theorem no_tail_after_graph169_tmmm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph169TargetCompletionState.next Face.tmmm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph169_tmmm_canComplete_false h

private theorem no_tail_after_graph169_tpmp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph169TargetCompletionState.next Face.tpmp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph169_tpmp_canComplete_false h

private theorem no_tail_after_graph169_tppp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph169TargetCompletionState.next Face.tppp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph169_tppp_canComplete_false h

theorem graph169_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph169TargetCompletionTail (face :: rest)) :
    face = Face.tpmm := by
  rcases graph169_head_candidate_of_targetCompletionTail htail with
    htmmm | htpmm | htpmp | htppp
  · subst face
    exact False.elim
      (no_tail_after_graph169_tmmm
        (TopPairingTargetCompletionTail.tail_next htail))
  · exact htpmm
  · subst face
    exact False.elim
      (no_tail_after_graph169_tpmp
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph169_tppp
        (TopPairingTargetCompletionTail.tail_next htail))

theorem graph169_rest_nonempty_of_targetCompletionTail
    {rest : List Face}
    (h : Graph169TargetCompletionTail rest) :
    ∃ face restTail, rest = face :: restTail := by
  cases rest with
  | nil =>
      cases h with
      | nil hremaining _hsummary =>
          simp [Graph169TargetCompletionTail, graph169TargetCompletionState,
            graph157TargetCompletionState, graph150TargetCompletionState,
            TopPairingTargetCompletionState.next] at hremaining
  | cons face restTail =>
      exact ⟨face, restTail, rfl⟩

private theorem graph169PrefixEval :
    evalLabelStepFn closedBellmanNext graphRoot
      [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm,
        Face.tpmm] =
        some (183, (194 : Int)) := by
  rfl

private theorem graph169TpmmStep :
    closedBellmanNext 169 Face.tpmm = some (183, (-36 : Int)) := by
  rfl

private theorem graph169PrefixEval_append
    {restTail : List Face} {finalGraph : Nat} {suffixGain : Int}
    (hsuffix :
      evalLabelStepFn closedBellmanNext 183 restTail =
        some (finalGraph, suffixGain)) :
    evalLabelStepFn closedBellmanNext graphRoot
      ([Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm,
        Face.tpmm] ++ restTail) =
        some (finalGraph, (194 : Int) + suffixGain) := by
  simpa [Int.add_assoc] using
    evalLabelStepFn_append graph169PrefixEval hsuffix

/--
Post-`tpmm` graph-exact continuation for the graph-169 branch.

The hard suffix field starts after `tpmm`, from graph `183`.  It should be
proved by the generated semantic suffix producer, not by sampled paths.
-/
structure StrengthenedGraph169AfterTpmmGraphExactContinuationFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  completionTail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
          Graph150TargetCompletionTail rest
  suffix_exact :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ restTail,
          Depth11Layer4PrefixAtRank
            rank Face.tmpm Face.zm
              (Face.zp :: Face.tppm :: Face.tpmm :: restTail) ->
          TopPairingTargetCompletionTail graph183TargetCompletionState
            restTail ->
          ∃ finalGraph suffixGain,
            evalLabelStepFn closedBellmanNext 183 restTail =
              some (finalGraph, suffixGain) ∧
            0 <= graphPotential finalGraph ∧
            scaledMargin rank <= graphConst + ((194 : Int) + suffixGain)

theorem graph157ContinuationFamily_of_graph169AfterTpmm
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph169AfterTpmmGraphExactContinuationFamily
        scaledMargin sequenceBadFace) :
    StrengthenedGraph157AfterTppmGraphExactContinuationFamily
      scaledMargin sequenceBadFace where
  completionTail := hfamily.completionTail
  suffix_exact := by
    intro rank hstrengthened rest hprefix hcompletion
    rcases graph169_rest_nonempty_of_targetCompletionTail hcompletion with
      ⟨face, restTail, hrest⟩
    subst rest
    have htpmm := graph169_head_of_targetCompletionTail hcompletion
    subst face
    have hcompletionNext :
        TopPairingTargetCompletionTail graph183TargetCompletionState
          restTail := by
      simpa [graph183TargetCompletionState, graph169TargetCompletionState]
        using TopPairingTargetCompletionTail.tail_next hcompletion
    rcases hfamily.suffix_exact rank hstrengthened restTail hprefix
        hcompletionNext with
      ⟨finalGraph, suffixGain, hsuffix, hfinal, hmargin⟩
    refine ⟨finalGraph, (-36 : Int) + suffixGain, ?_, hfinal, ?_⟩
    · simp [evalLabelStepFn, graph169TpmmStep, hsuffix]
    · omega

theorem graphExactEvalGateAtRank_of_graph169AfterTpmm
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hfamily :
      StrengthenedGraph169AfterTpmmGraphExactContinuationFamily
        scaledMargin sequenceBadFace)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    TopPairingGraphExactEvalGateAtRank
      graphPotential closedBellmanNext (fun face : Face => face)
      graphRoot graphConst scaledMargin rank Face.ym :=
  graphExactEvalGateAtRank_of_graph157AfterTppm
    (graph157ContinuationFamily_of_graph169AfterTpmm hfamily)
    hstrengthened hprefix

theorem graph169DirectEvalSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph169ContinuationSocket
