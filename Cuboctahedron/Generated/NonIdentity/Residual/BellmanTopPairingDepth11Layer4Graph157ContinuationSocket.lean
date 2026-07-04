import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph150DirectEvalSocket

set_option linter.unusedSimpArgs false

/-!
Direct graph-exact socket for the graph-157 post-`tppm` branch.

The graph-150 direct socket consumes the semantic `zp` step and leaves a
post-`zp` continuation from strengthened Bellman graph state `157`.  This file
checks one more deterministic semantic target-completion step: from that state,
target-completion forces `tppm`, the graph advances to `169` with gain `96`,
and the remaining continuation starts from the smaller target-completion state.

This is a semantic local-step socket.  It does not introduce selected-prefix
membership, sampled ranks, accepted trace ids, exact affine RHS keys, solved
start-point keys, or raw path tables.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph157ContinuationSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph150DirectEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

def graph157TargetCompletionState : TopPairingTargetCompletionState :=
  graph150TargetCompletionState.next Face.zp

def graph169TargetCompletionState : TopPairingTargetCompletionState :=
  graph157TargetCompletionState.next Face.tppm

abbrev Graph157TargetCompletionTail (labels : List Face) : Prop :=
  TopPairingTargetCompletionTail graph157TargetCompletionState labels

theorem graph157_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph157TargetCompletionTail (face :: rest)) :
    face = Face.tmmm ∨ face = Face.tpmp ∨ face = Face.tppm ∨
      face = Face.tppp := by
  have hremaining :=
    TopPairingTargetCompletionTail.head_remaining htail
  have hschedule :=
    TopPairingTargetCompletionTail.head_schedule htail
  have hsquare :=
    TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [Graph157TargetCompletionTail, graph157TargetCompletionState,
      graph150TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?] at hremaining hschedule hsquare ⊢

private theorem graph157_tmmm_canComplete_false :
    (graph157TargetCompletionState.next Face.tmmm).canComplete = false := by
  rfl

private theorem graph157_tpmp_canComplete_false :
    (graph157TargetCompletionState.next Face.tpmp).canComplete = false := by
  rfl

private theorem graph157_tppp_canComplete_false :
    (graph157TargetCompletionState.next Face.tppp).canComplete = false := by
  rfl

private theorem no_tail_after_graph157_tmmm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph157TargetCompletionState.next Face.tmmm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph157_tmmm_canComplete_false h

private theorem no_tail_after_graph157_tpmp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph157TargetCompletionState.next Face.tpmp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph157_tpmp_canComplete_false h

private theorem no_tail_after_graph157_tppp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph157TargetCompletionState.next Face.tppp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph157_tppp_canComplete_false h

theorem graph157_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph157TargetCompletionTail (face :: rest)) :
    face = Face.tppm := by
  rcases graph157_head_candidate_of_targetCompletionTail htail with
    htmmm | htpmp | htppm | htppp
  · subst face
    exact False.elim
      (no_tail_after_graph157_tmmm
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph157_tpmp
        (TopPairingTargetCompletionTail.tail_next htail))
  · exact htppm
  · subst face
    exact False.elim
      (no_tail_after_graph157_tppp
        (TopPairingTargetCompletionTail.tail_next htail))

theorem graph157_rest_nonempty_of_targetCompletionTail
    {rest : List Face}
    (h : Graph157TargetCompletionTail rest) :
    ∃ face restTail, rest = face :: restTail := by
  cases rest with
  | nil =>
      cases h with
      | nil hremaining _hsummary =>
          simp [Graph157TargetCompletionTail, graph157TargetCompletionState,
            graph150TargetCompletionState, TopPairingTargetCompletionState.next]
            at hremaining
  | cons face restTail =>
      exact ⟨face, restTail, rfl⟩

private theorem graph157PrefixEval :
    evalLabelStepFn closedBellmanNext graphRoot
      [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] =
        some (169, (230 : Int)) := by
  rfl

private theorem graph157TppmStep :
    closedBellmanNext 157 Face.tppm = some (169, (96 : Int)) := by
  rfl

private theorem graph157PrefixEval_append
    {restTail : List Face} {finalGraph : Nat} {suffixGain : Int}
    (hsuffix :
      evalLabelStepFn closedBellmanNext 169 restTail =
        some (finalGraph, suffixGain)) :
    evalLabelStepFn closedBellmanNext graphRoot
      ([Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm] ++
        restTail) =
        some (finalGraph, (230 : Int) + suffixGain) := by
  simpa [Int.add_assoc] using
    evalLabelStepFn_append graph157PrefixEval hsuffix

/--
Post-`tppm` graph-exact continuation for the graph-157 branch.

The only remaining hard field is `suffix_exact`: a production generator should
prove it from the post-`tppm` semantic suffix state, not from sampled paths.
-/
structure StrengthenedGraph157AfterTppmGraphExactContinuationFamily
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
            rank Face.tmpm Face.zm (Face.zp :: Face.tppm :: restTail) ->
          TopPairingTargetCompletionTail graph169TargetCompletionState
            restTail ->
          ∃ finalGraph suffixGain,
            evalLabelStepFn closedBellmanNext 169 restTail =
              some (finalGraph, suffixGain) ∧
            0 <= graphPotential finalGraph ∧
            scaledMargin rank <= graphConst + ((230 : Int) + suffixGain)

theorem graph150ContinuationFamily_of_graph157AfterTppm
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph157AfterTppmGraphExactContinuationFamily
        scaledMargin sequenceBadFace) :
    StrengthenedGraph150AfterZpGraphExactContinuationFamily
      scaledMargin sequenceBadFace where
  completionTail := hfamily.completionTail
  suffix_exact := by
    intro rank hstrengthened rest hprefix hcompletion
    rcases graph157_rest_nonempty_of_targetCompletionTail hcompletion with
      ⟨face, restTail, hrest⟩
    subst rest
    have htppm := graph157_head_of_targetCompletionTail hcompletion
    subst face
    have hcompletionNext :
        TopPairingTargetCompletionTail graph169TargetCompletionState
          restTail := by
      simpa [graph169TargetCompletionState, graph157TargetCompletionState]
        using TopPairingTargetCompletionTail.tail_next hcompletion
    rcases hfamily.suffix_exact rank hstrengthened restTail hprefix
        hcompletionNext with
      ⟨finalGraph, suffixGain, hsuffix, hfinal, hmargin⟩
    refine ⟨finalGraph, (96 : Int) + suffixGain, ?_, hfinal, ?_⟩
    · simp [evalLabelStepFn, graph157TppmStep, hsuffix]
    · omega

theorem graphExactEvalGateAtRank_of_graph157AfterTppm
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hfamily :
      StrengthenedGraph157AfterTppmGraphExactContinuationFamily
        scaledMargin sequenceBadFace)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    TopPairingGraphExactEvalGateAtRank
      graphPotential closedBellmanNext (fun face : Face => face)
      graphRoot graphConst scaledMargin rank Face.ym :=
  graphExactEvalGateAtRank_of_graph150AfterZpGraphExactContinuation
    (graph150ContinuationFamily_of_graph157AfterTppm hfamily)
    hstrengthened hprefix

theorem graph157DirectEvalSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph157ContinuationSocket
