import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph169ContinuationSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
import Cuboctahedron.Search.TopPairingUsedFaceTail

set_option linter.unusedSimpArgs false

/-!
Table-shaped graph-exact socket for the remaining graph-183 tail.

The preceding graph150/157/169 sockets proved three deterministic local steps
from semantic target-completion state.  At graph `183`, target-completion alone
has two possible tails.  One tail is accepted by the strengthened Bellman
evaluator; the other begins with `tmmp` from graph `19`, where the evaluator has
no transition.

This module records that honest table shape.  A production semantic family must
prove the accepted branch's final margin and rule out the blocked `tmmp`
branch from the stronger closed-language semantics.  The file contains no
sampled ranks, selected-prefix membership, accepted trace ids, exact affine RHS
keys, solved start-point keys, or raw rank/path tables.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183TailTableSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph157ContinuationSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph169ContinuationSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted

def graph199TargetCompletionState : TopPairingTargetCompletionState :=
  graph183TargetCompletionState.next Face.tppp

def graph218TargetCompletionState : TopPairingTargetCompletionState :=
  graph199TargetCompletionState.next Face.tmmm

def graph19TargetCompletionState : TopPairingTargetCompletionState :=
  graph218TargetCompletionState.next Face.tpmp

def graph28TargetCompletionState : TopPairingTargetCompletionState :=
  graph19TargetCompletionState.next Face.yp

def graph59TargetCompletionState : TopPairingTargetCompletionState :=
  graph28TargetCompletionState.next Face.tmpp

def graph97TargetCompletionState : TopPairingTargetCompletionState :=
  graph59TargetCompletionState.next Face.tmmp

def graph126TargetCompletionState : TopPairingTargetCompletionState :=
  graph97TargetCompletionState.next Face.xp

abbrev Graph183TargetCompletionTail (labels : List Face) : Prop :=
  TopPairingTargetCompletionTail graph183TargetCompletionState labels

def graph183ForcedTail : List Face :=
  [Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]

private theorem graph183_tmmp_canComplete_false :
    (graph183TargetCompletionState.next Face.tmmp).canComplete = false := by
  rfl

private theorem graph183_tpmp_canComplete_false :
    (graph183TargetCompletionState.next Face.tpmp).canComplete = false := by
  rfl

private theorem graph199_tmmp_canComplete_false :
    (graph199TargetCompletionState.next Face.tmmp).canComplete = false := by
  rfl

private theorem graph199_tmpp_canComplete_false :
    (graph199TargetCompletionState.next Face.tmpp).canComplete = false := by
  rfl

private theorem graph199_tpmp_canComplete_false :
    (graph199TargetCompletionState.next Face.tpmp).canComplete = false := by
  rfl

private theorem graph218_tmpp_canComplete_false :
    (graph218TargetCompletionState.next Face.tmpp).canComplete = false := by
  rfl

private theorem no_tail_after
    {state : TopPairingTargetCompletionState} {rest : List Face}
    (hcomplete : state.canComplete = false)
    (h : TopPairingTargetCompletionTail state rest) :
    False :=
  TopPairingTargetCompletionTail.false_of_canComplete_eq_false hcomplete h

private theorem graph183_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph183TargetCompletionTail (face :: rest)) :
    face = Face.tmmp ∨ face = Face.tpmp ∨ face = Face.tppp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [Graph183TargetCompletionTail, graph183TargetCompletionState,
      graph169TargetCompletionState, graph157TargetCompletionState,
      graph150TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?] at hremaining hschedule hsquare ⊢

private theorem graph183_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph183TargetCompletionTail (face :: rest)) :
    face = Face.tppp := by
  rcases graph183_head_candidate_of_targetCompletionTail htail with
    htmmp | htpmp | htppp
  · subst face
    exact False.elim
      (no_tail_after graph183_tmmp_canComplete_false
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after graph183_tpmp_canComplete_false
        (TopPairingTargetCompletionTail.tail_next htail))
  · exact htppp

private theorem graph199_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph199TargetCompletionState
        (face :: rest)) :
    face = Face.tmmm ∨ face = Face.tmmp ∨ face = Face.tmpp ∨
      face = Face.tpmp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph199TargetCompletionState, graph183TargetCompletionState,
      graph169TargetCompletionState, graph157TargetCompletionState,
      graph150TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?] at hremaining hschedule hsquare ⊢

private theorem graph199_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph199TargetCompletionState
        (face :: rest)) :
    face = Face.tmmm := by
  rcases graph199_head_candidate_of_targetCompletionTail htail with
    htmmm | htmmp | htmpp | htpmp
  · exact htmmm
  · subst face
    exact False.elim
      (no_tail_after graph199_tmmp_canComplete_false
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after graph199_tmpp_canComplete_false
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after graph199_tpmp_canComplete_false
        (TopPairingTargetCompletionTail.tail_next htail))

private theorem graph218_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph218TargetCompletionState
        (face :: rest)) :
    face = Face.tmpp ∨ face = Face.tpmp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph218TargetCompletionState, graph199TargetCompletionState,
      graph183TargetCompletionState, graph169TargetCompletionState,
      graph157TargetCompletionState, graph150TargetCompletionState,
      TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?] at hremaining hschedule hsquare ⊢

private theorem graph218_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph218TargetCompletionState
        (face :: rest)) :
    face = Face.tpmp := by
  rcases graph218_head_candidate_of_targetCompletionTail htail with
    htmpp | htpmp
  · subst face
    exact False.elim
      (no_tail_after graph218_tmpp_canComplete_false
        (TopPairingTargetCompletionTail.tail_next htail))
  · exact htpmp

private theorem graph19_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph19TargetCompletionState
        (face :: rest)) :
    face = Face.yp ∨ face = Face.tmmp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph19TargetCompletionState, graph218TargetCompletionState,
      graph199TargetCompletionState, graph183TargetCompletionState,
      graph169TargetCompletionState, graph157TargetCompletionState,
      graph150TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?] at hremaining hschedule hsquare ⊢

private theorem graph28_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph28TargetCompletionState
        (face :: rest)) :
    face = Face.tmpp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph28TargetCompletionState, graph19TargetCompletionState,
      graph218TargetCompletionState, graph199TargetCompletionState,
      graph183TargetCompletionState, graph169TargetCompletionState,
      graph157TargetCompletionState, graph150TargetCompletionState,
      TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?] at hremaining hschedule hsquare ⊢

private theorem graph59_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph59TargetCompletionState
        (face :: rest)) :
    face = Face.tmmp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph59TargetCompletionState, graph28TargetCompletionState,
      graph19TargetCompletionState, graph218TargetCompletionState,
      graph199TargetCompletionState, graph183TargetCompletionState,
      graph169TargetCompletionState, graph157TargetCompletionState,
      graph150TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?] at hremaining hschedule hsquare ⊢

private theorem graph97_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph97TargetCompletionState
        (face :: rest)) :
    face = Face.xp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph97TargetCompletionState, graph59TargetCompletionState,
      graph28TargetCompletionState, graph19TargetCompletionState,
      graph218TargetCompletionState, graph199TargetCompletionState,
      graph183TargetCompletionState, graph169TargetCompletionState,
      graph157TargetCompletionState, graph150TargetCompletionState,
      TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?] at hremaining hschedule hsquare ⊢

private theorem graph126_tail_nil
    {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail graph126TargetCompletionState rest) :
    rest = [] := by
  cases rest with
  | nil => rfl
  | cons face tail =>
      have hremaining := TopPairingTargetCompletionTail.head_remaining htail
      cases face <;>
        simp [graph126TargetCompletionState, graph97TargetCompletionState,
          graph59TargetCompletionState, graph28TargetCompletionState,
          graph19TargetCompletionState, graph218TargetCompletionState,
          graph199TargetCompletionState, graph183TargetCompletionState,
          graph169TargetCompletionState, graph157TargetCompletionState,
          graph150TargetCompletionState, TopPairingTargetCompletionState.next]
          at hremaining

theorem graph183_tail_eq_forced_or_tmmp_branch
    {rest : List Face}
    (htail : Graph183TargetCompletionTail rest) :
    rest = graph183ForcedTail ∨
      ∃ restTail,
        rest =
          Face.tppp :: Face.tmmm :: Face.tpmp :: Face.tmmp :: restTail ∧
        TopPairingTargetCompletionTail
          (graph19TargetCompletionState.next Face.tmmp) restTail := by
  cases rest with
  | nil =>
      cases htail with
      | nil hremaining _hsummary =>
          simp [Graph183TargetCompletionTail, graph183TargetCompletionState,
            graph169TargetCompletionState, graph157TargetCompletionState,
            graph150TargetCompletionState, TopPairingTargetCompletionState.next]
            at hremaining
  | cons face1 rest1 =>
      have hface1 := graph183_head_of_targetCompletionTail htail
      subst face1
      have htail1 := TopPairingTargetCompletionTail.tail_next htail
      cases rest1 with
      | nil =>
          cases htail1 with
          | nil hremaining _hsummary =>
              simp [graph199TargetCompletionState,
                graph183TargetCompletionState, graph169TargetCompletionState,
                graph157TargetCompletionState, graph150TargetCompletionState,
                TopPairingTargetCompletionState.next] at hremaining
      | cons face2 rest2 =>
          have hface2 := graph199_head_of_targetCompletionTail htail1
          subst face2
          have htail2 := TopPairingTargetCompletionTail.tail_next htail1
          cases rest2 with
          | nil =>
              cases htail2 with
              | nil hremaining _hsummary =>
                  simp [graph218TargetCompletionState,
                    graph199TargetCompletionState,
                    graph183TargetCompletionState,
                    graph169TargetCompletionState,
                    graph157TargetCompletionState,
                    graph150TargetCompletionState,
                    TopPairingTargetCompletionState.next] at hremaining
          | cons face3 rest3 =>
              have hface3 := graph218_head_of_targetCompletionTail htail2
              subst face3
              have htail3 := TopPairingTargetCompletionTail.tail_next htail2
              cases rest3 with
              | nil =>
                  cases htail3 with
                  | nil hremaining _hsummary =>
                      simp [graph19TargetCompletionState,
                        graph218TargetCompletionState,
                        graph199TargetCompletionState,
                        graph183TargetCompletionState,
                        graph169TargetCompletionState,
                        graph157TargetCompletionState,
                        graph150TargetCompletionState,
                        TopPairingTargetCompletionState.next] at hremaining
              | cons face4 rest4 =>
                  rcases graph19_head_candidate_of_targetCompletionTail
                      htail3 with hface4 | hface4
                  · subst face4
                    have htail4 :=
                      TopPairingTargetCompletionTail.tail_next htail3
                    cases rest4 with
                    | nil =>
                        cases htail4 with
                        | nil hremaining _hsummary =>
                            simp [graph28TargetCompletionState,
                              graph19TargetCompletionState,
                              graph218TargetCompletionState,
                              graph199TargetCompletionState,
                              graph183TargetCompletionState,
                              graph169TargetCompletionState,
                              graph157TargetCompletionState,
                              graph150TargetCompletionState,
                              TopPairingTargetCompletionState.next] at hremaining
                    | cons face5 rest5 =>
                        have hface5 :=
                          graph28_head_of_targetCompletionTail htail4
                        subst face5
                        have htail5 :=
                          TopPairingTargetCompletionTail.tail_next htail4
                        cases rest5 with
                        | nil =>
                            cases htail5 with
                            | nil hremaining _hsummary =>
                                simp [graph59TargetCompletionState,
                                  graph28TargetCompletionState,
                                  graph19TargetCompletionState,
                                  graph218TargetCompletionState,
                                  graph199TargetCompletionState,
                                  graph183TargetCompletionState,
                                  graph169TargetCompletionState,
                                  graph157TargetCompletionState,
                                  graph150TargetCompletionState,
                                  TopPairingTargetCompletionState.next] at hremaining
                        | cons face6 rest6 =>
                            have hface6 :=
                              graph59_head_of_targetCompletionTail htail5
                            subst face6
                            have htail6 :=
                              TopPairingTargetCompletionTail.tail_next htail5
                            cases rest6 with
                            | nil =>
                                cases htail6 with
                                | nil hremaining _hsummary =>
                                    simp [graph97TargetCompletionState,
                                      graph59TargetCompletionState,
                                      graph28TargetCompletionState,
                                      graph19TargetCompletionState,
                                      graph218TargetCompletionState,
                                      graph199TargetCompletionState,
                                      graph183TargetCompletionState,
                                      graph169TargetCompletionState,
                                      graph157TargetCompletionState,
                                      graph150TargetCompletionState,
                                      TopPairingTargetCompletionState.next] at hremaining
                            | cons face7 rest7 =>
                                have hface7 :=
                                  graph97_head_of_targetCompletionTail htail6
                                subst face7
                                have htail7 :=
                                  TopPairingTargetCompletionTail.tail_next htail6
                                have hrest7 := graph126_tail_nil htail7
                                subst rest7
                                exact Or.inl rfl
                  · subst face4
                    exact Or.inr
                      ⟨rest4, rfl,
                        TopPairingTargetCompletionTail.tail_next htail3⟩

private theorem graph183TailEval :
    evalLabelStepFn closedBellmanNext 183 graph183ForcedTail =
      some (126, (-542 : Int)) := by
  rfl

private theorem graph183BlockedTailHeadEval :
    closedBellmanNext 19 Face.tmmp = none := by
  rfl

private theorem graph126Potential_nonneg :
    0 <= graphPotential 126 := by
  decide

private theorem graph19_tmmp_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail
        (graph19TargetCompletionState.next Face.tmmp) (face :: rest)) :
    face = Face.tmpp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph19TargetCompletionState, graph218TargetCompletionState,
      graph199TargetCompletionState, graph183TargetCompletionState,
      graph169TargetCompletionState, graph157TargetCompletionState,
      graph150TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?] at hremaining hschedule hsquare ⊢

private theorem graph19_tmmp_tmpp_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail
        ((graph19TargetCompletionState.next Face.tmmp).next Face.tmpp)
          (face :: rest)) :
    face = Face.yp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph19TargetCompletionState, graph218TargetCompletionState,
      graph199TargetCompletionState, graph183TargetCompletionState,
      graph169TargetCompletionState, graph157TargetCompletionState,
      graph150TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?] at hremaining hschedule hsquare ⊢

private theorem graph19_tmmp_tmpp_yp_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail
        (((graph19TargetCompletionState.next Face.tmmp).next Face.tmpp).next
          Face.yp) (face :: rest)) :
    face = Face.xp := by
  have hremaining := TopPairingTargetCompletionTail.head_remaining htail
  have hschedule := TopPairingTargetCompletionTail.head_schedule htail
  have hsquare := TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph19TargetCompletionState, graph218TargetCompletionState,
      graph199TargetCompletionState, graph183TargetCompletionState,
      graph169TargetCompletionState, graph157TargetCompletionState,
      graph150TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?] at hremaining hschedule hsquare ⊢

private theorem graph19_tmmp_tmpp_yp_xp_tail_nil
    {rest : List Face}
    (htail :
      TopPairingTargetCompletionTail
        ((((graph19TargetCompletionState.next Face.tmmp).next Face.tmpp).next
          Face.yp).next Face.xp) rest) :
    rest = [] := by
  cases rest with
  | nil => rfl
  | cons face tail =>
      have hremaining := TopPairingTargetCompletionTail.head_remaining htail
      cases face <;>
        simp [graph19TargetCompletionState, graph218TargetCompletionState,
          graph199TargetCompletionState, graph183TargetCompletionState,
          graph169TargetCompletionState, graph157TargetCompletionState,
          graph150TargetCompletionState, TopPairingTargetCompletionState.next]
          at hremaining

theorem graph183_blocked_restTail_eq
    {restTail : List Face}
    (htail :
      TopPairingTargetCompletionTail
        (graph19TargetCompletionState.next Face.tmmp) restTail) :
    restTail = [Face.tmpp, Face.yp, Face.xp] := by
  cases restTail with
  | nil =>
      cases htail with
      | nil hremaining _hsummary =>
          simp [graph19TargetCompletionState, graph218TargetCompletionState,
            graph199TargetCompletionState, graph183TargetCompletionState,
            graph169TargetCompletionState, graph157TargetCompletionState,
            graph150TargetCompletionState, TopPairingTargetCompletionState.next]
            at hremaining
  | cons face1 rest1 =>
      have hface1 := graph19_tmmp_head_of_targetCompletionTail htail
      subst face1
      have htail1 := TopPairingTargetCompletionTail.tail_next htail
      cases rest1 with
      | nil =>
          cases htail1 with
          | nil hremaining _hsummary =>
              simp [graph19TargetCompletionState, graph218TargetCompletionState,
                graph199TargetCompletionState, graph183TargetCompletionState,
                graph169TargetCompletionState, graph157TargetCompletionState,
                graph150TargetCompletionState,
                TopPairingTargetCompletionState.next] at hremaining
      | cons face2 rest2 =>
          have hface2 := graph19_tmmp_tmpp_head_of_targetCompletionTail htail1
          subst face2
          have htail2 := TopPairingTargetCompletionTail.tail_next htail1
          cases rest2 with
          | nil =>
              cases htail2 with
              | nil hremaining _hsummary =>
                  simp [graph19TargetCompletionState,
                    graph218TargetCompletionState, graph199TargetCompletionState,
                    graph183TargetCompletionState, graph169TargetCompletionState,
                    graph157TargetCompletionState, graph150TargetCompletionState,
                    TopPairingTargetCompletionState.next] at hremaining
          | cons face3 rest3 =>
              have hface3 :=
                graph19_tmmp_tmpp_yp_head_of_targetCompletionTail htail2
              subst face3
              have htail3 := TopPairingTargetCompletionTail.tail_next htail2
              have hrest3 := graph19_tmmp_tmpp_yp_xp_tail_nil htail3
              subst rest3
              rfl

theorem graph183_blocked_branch_labels_eq_rejectedGraphTrace004
    {rank : Fin numPairWords} {restTail : List Face}
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: Face.tppp ::
          Face.tmmm :: Face.tpmp :: Face.tmmp :: restTail))
    (htail :
      TopPairingTargetCompletionTail
        (graph19TargetCompletionState.next Face.tmmp) restTail) :
    topPairingRankFaceLabels rank = rejectedGraphTrace_004 := by
  have hrestTail := graph183_blocked_restTail_eq htail
  rw [hprefix, hrestTail]
  rfl

theorem graph183_blocked_branch_not_sequenceBadFace
    {rank : Fin numPairWords} {restTail : List Face}
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: Face.tppp ::
          Face.tmmm :: Face.tpmp :: Face.tmmp :: restTail))
    (htail :
      TopPairingTargetCompletionTail
        (graph19TargetCompletionState.next Face.tmmp) restTail) :
    ¬ AcceptedSequenceBadFaceAtRank rank Face.ym := by
  intro hbad
  have hlabels :=
    graph183_blocked_branch_labels_eq_rejectedGraphTrace004
      hprefix htail
  have hbadRejected :
      SequenceBadFaceLabels rejectedGraphTrace_004 Face.ym := by
    rw [← hlabels]
    exact hbad
  exact hbadRejected.2 rfl

theorem graph183_blocked_branch_absurd_of_acceptedSequenceBadFace
    {rank : Fin numPairWords} {restTail : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: Face.tppp ::
          Face.tmmm :: Face.tpmp :: Face.tmmp :: restTail))
    (htail :
      TopPairingTargetCompletionTail
        (graph19TargetCompletionState.next Face.tmmp) restTail) :
    False :=
  graph183_blocked_branch_not_sequenceBadFace hprefix htail
    hstrengthened.sequenceBadFace_ok

/--
Graph-183 tail table family.

The `yp` branch is the Bellman-accepted tail.  The `tmmp` branch is a real
target-completion branch but not a Bellman-evaluable branch from graph `19`; a
production proof must rule it out from the stronger closed-language semantics.
-/
structure StrengthenedGraph183TailFinalMarginFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  completionTail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      ∀ rest,
        Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
        Graph150TargetCompletionTail rest
  final_margin_yp_branch :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail) ->
      scaledMargin rank <= graphConst + ((194 : Int) + (-542 : Int))
  tmmp_branch_absurd :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
      ∀ restTail,
        Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
          (Face.zp :: Face.tppm :: Face.tpmm :: Face.tppp ::
            Face.tmmm :: Face.tpmp :: Face.tmmp :: restTail) ->
        TopPairingTargetCompletionTail
          (graph19TargetCompletionState.next Face.tmmp) restTail ->
        False

/--
Graph-183 family specialized to the generated accepted bad-face predicate.

For this production route the blocked `tmmp` branch is no longer an emitter
obligation: `graph183_blocked_branch_absurd_of_acceptedSequenceBadFace` proves
that it is exactly the generated bad-face-rejected trace.  A future family
producer only needs to prove the semantic target-completion tail and the
integer margin bound on the accepted `yp` branch.
-/
structure AcceptedSequenceGraph183AcceptedBranchFinalMarginFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  completionTail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      ∀ rest,
        Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
        Graph150TargetCompletionTail rest
  final_margin_yp_branch :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail) ->
      scaledMargin rank <= graphConst + ((194 : Int) + (-542 : Int))

/--
Semantic target-completion component of the graph183 accepted branch.

This is the deterministic-language part of the remaining producer.  It should
be proved from closed top-pairing state fields such as target cursor,
schedule, square gap, local axis, and pair-count progress, not from observed
trace ids or selected-prefix membership.
-/
structure AcceptedSequenceGraph183CompletionTailFamily : Prop where
  completionTail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      ∀ rest,
        Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
        Graph150TargetCompletionTail rest

/--
Cursor-front-door version of `AcceptedSequenceGraph183CompletionTailFamily`.

This is the preferred next proof target for the semantic transducer route: the
producer may use the closed-language proof, but it should make the
target-shadow cursor explicit.  The adapter below discharges that cursor from
`topPairingTriCursor_of_closed`.
-/
structure AcceptedSequenceGraph183CursorCompletionTailFamily : Prop where
  completionTail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      TopPairingTargetCursorAtRank rank ->
      ∀ rest,
        Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
        Graph150TargetCompletionTail rest

theorem graph150_usedFaceTail_of_acceptedSequence_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    TopPairingUsedFaceTail [Face.xm, Face.ym, Face.tmpm, Face.zm] rest := by
  apply TopPairingUsedFaceTail.of_actualFaceOmni_append
  have hactual := hstrengthened.actualFaceOmni
  change (topPairingRankFaceLabels rank).Nodup at hactual
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.tmpm, Face.zm] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  rw [hprefix'] at hactual
  simpa [TopPairingActualFaceOmniLabels] using hactual

theorem graph150_restLength_of_acceptedSequence_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    rest.length = graph150TargetCompletionState.remaining.length := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.tmpm, Face.zm] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hprefixLabels :
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.tmpm, Face.zm] ++ rest := by
    simpa [topPairingRankFaceLabels] using hprefix'
  have hlen := hstrengthened.toTopPairingClosedLanguageAtRank.schedule.1
  rw [hprefixLabels] at hlen
  simpa [graph150TargetCompletionState] using hlen

theorem graph150_stepScheduleTail_of_acceptedSequence_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    TopPairingStepScheduleFrom graph150TargetCompletionState.step rest := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.tmpm, Face.zm] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hprefixLabels :
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.tmpm, Face.zm] ++ rest := by
    simpa [topPairingRankFaceLabels] using hprefix'
  have hschedule := hstrengthened.toTopPairingClosedLanguageAtRank.schedule.2
  rw [hprefixLabels] at hschedule
  have htail :=
    topPairingStepScheduleFrom_append
      (step := 0)
      (pfx := [Face.xm, Face.ym, Face.tmpm, Face.zm])
      (rest := rest) hschedule
  simpa [graph150TargetCompletionState] using htail

theorem graph150_squareGapTail_of_acceptedSequence_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    TopPairingSquareGapFrom graph150TargetCompletionState.gap rest := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.tmpm, Face.zm] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have hprefixLabels :
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        [Face.xm, Face.ym, Face.tmpm, Face.zm] ++ rest := by
    simpa [topPairingRankFaceLabels] using hprefix'
  have hgap := hstrengthened.toTopPairingClosedLanguageAtRank.squareGap
  rw [hprefixLabels] at hgap
  have htail :=
    topPairingSquareGapFrom_append
      (gap := 0)
      (pfx := [Face.xm, Face.ym, Face.tmpm, Face.zm])
      (rest := rest) hgap
  simpa [graph150TargetCompletionState, topPairingSquareGapAfter,
    isSquarePair, pairOfFace] using htail

theorem graph150_triCursorTail_of_prefix
    {rank : Fin numPairWords} {rest : List Face}
    (hcursor : TopPairingTargetCursorAtRank rank)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    TopPairingTriCursorFrom graph150TargetCompletionState.triState.shadowLen
      graph150TargetCompletionState.parity rest := by
  have hprefix' :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.tmpm, Face.zm] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  unfold TopPairingTargetCursorAtRank at hcursor
  rw [hprefix'] at hcursor
  have htail1 :=
    TopPairingTriCursorFrom.cons_square_tail
      hcursor (by rfl : triLetterOfFace? Face.xm = none)
  have htail2 :=
    TopPairingTriCursorFrom.cons_square_tail
      htail1 (by rfl : triLetterOfFace? Face.ym = none)
  rcases
      TopPairingTriCursorFrom.cons_tri_tail
        htail2 (by rfl : triLetterOfFace? Face.tmpm = some TriLetter.d1m1)
    with ⟨_hk, _hletter, htail3⟩
  have htail4 :=
    TopPairingTriCursorFrom.cons_square_tail
      htail3 (by rfl : triLetterOfFace? Face.zm = none)
  simpa [graph150TargetCompletionState, SqParity.id, SqParity.applyPair,
    SqParity.xor, SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
    SqParity.toggleZ, pairOfFace] using htail4

/--
Used-face/cursor front door for the graph183 completion-tail producer.

This is the next semantic state refinement after the target cursor: the
producer gets both the target-shadow cursor and the remaining actual-face
invariant for the suffix after `[xm, ym, tmpm, zm]`.  The adapter derives the
used-face invariant from strengthened closed-language actual-face
omnihedrality, so no rank/path table is introduced.
-/
structure AcceptedSequenceGraph183CursorUsedCompletionTailFamily : Prop where
  completionTail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      TopPairingTargetCursorAtRank rank ->
      ∀ rest,
        TopPairingUsedFaceTail [Face.xm, Face.ym, Face.tmpm, Face.zm] rest ->
        Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
        Graph150TargetCompletionTail rest

theorem acceptedSequenceGraph183CursorCompletionTailFamily_of_used
    (hfamily : AcceptedSequenceGraph183CursorUsedCompletionTailFamily) :
    AcceptedSequenceGraph183CursorCompletionTailFamily where
  completionTail := by
    intro rank hstrengthened hcursor rest hprefix
    exact hfamily.completionTail rank hstrengthened hcursor rest
      (graph150_usedFaceTail_of_acceptedSequence_prefix
        hstrengthened hprefix)
      hprefix

/--
Semantic-state front door for the graph183 completion-tail producer.

This is the deterministic transducer shape requested by the Bellman pivot:
after the concrete layer-4 prefix, the producer receives the remaining
schedule state, square-gap state, target-shadow cursor state, and actual-face
tail state.  It still receives the strengthened closed-language proof for
downstream compatibility, but it should not use selected prefixes, sampled
paths, accepted trace ids, exact affine RHS keys, or solved start-point keys.
-/
structure AcceptedSequenceGraph183SemanticCompletionTailFamily : Prop where
  completionTail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      ∀ rest,
        TopPairingStepScheduleFrom graph150TargetCompletionState.step rest ->
        TopPairingSquareGapFrom graph150TargetCompletionState.gap rest ->
        TopPairingTriCursorFrom
          graph150TargetCompletionState.triState.shadowLen
          graph150TargetCompletionState.parity rest ->
        TopPairingUsedFaceTail [Face.xm, Face.ym, Face.tmpm, Face.zm] rest ->
        rest.length = graph150TargetCompletionState.remaining.length ->
        Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
        Graph150TargetCompletionTail rest

theorem acceptedSequenceGraph183CursorUsedCompletionTailFamily_of_semantic
    (hfamily : AcceptedSequenceGraph183SemanticCompletionTailFamily) :
    AcceptedSequenceGraph183CursorUsedCompletionTailFamily where
  completionTail := by
    intro rank hstrengthened hcursor rest hused hprefix
    exact hfamily.completionTail rank hstrengthened rest
      (graph150_stepScheduleTail_of_acceptedSequence_prefix
        hstrengthened hprefix)
      (graph150_squareGapTail_of_acceptedSequence_prefix
        hstrengthened hprefix)
      (graph150_triCursorTail_of_prefix hcursor hprefix)
      hused
      (graph150_restLength_of_acceptedSequence_prefix
        hstrengthened hprefix)
      hprefix

theorem acceptedSequenceGraph183CompletionTailFamily_of_cursor
    (hfamily : AcceptedSequenceGraph183CursorCompletionTailFamily) :
    AcceptedSequenceGraph183CompletionTailFamily where
  completionTail := by
    intro rank hstrengthened rest hprefix
    exact hfamily.completionTail rank hstrengthened
      (topPairingTriCursor_of_closed
        hstrengthened.toTopPairingClosedLanguageAtRank)
      rest hprefix

/--
Integer margin component of the graph183 accepted branch.

This isolates the only arithmetic fact still needed on the `yp` tail.  If a
future proof of this field wants exact affine RHS keys, solved start points, or
one branch per rank/path, the strategy should pivot to a cancellation/cocycle
semantic state rather than enlarging this surface.
-/
structure AcceptedSequenceGraph183AcceptedTailMarginFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  final_margin_yp_branch :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
        (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail) ->
      scaledMargin rank <= graphConst + ((194 : Int) + (-542 : Int))

theorem acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_components
    {scaledMargin : Fin numPairWords -> Int}
    (hcompletion : AcceptedSequenceGraph183CompletionTailFamily)
    (hmargin :
      AcceptedSequenceGraph183AcceptedTailMarginFamily scaledMargin) :
    AcceptedSequenceGraph183AcceptedBranchFinalMarginFamily scaledMargin where
  completionTail := hcompletion.completionTail
  final_margin_yp_branch := hmargin.final_margin_yp_branch

theorem graph183TailFinalMarginFamily_of_acceptedSequenceAcceptedBranch
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedBranchFinalMarginFamily scaledMargin) :
    StrengthenedGraph183TailFinalMarginFamily
      scaledMargin AcceptedSequenceBadFaceAtRank where
  completionTail := hfamily.completionTail
  final_margin_yp_branch := hfamily.final_margin_yp_branch
  tmmp_branch_absurd := by
    intro rank hstrengthened restTail hprefix htail
    exact graph183_blocked_branch_absurd_of_acceptedSequenceBadFace
      hstrengthened hprefix htail

theorem graph169ContinuationFamily_of_graph183TailFinalMargin
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph183TailFinalMarginFamily
        scaledMargin sequenceBadFace) :
    StrengthenedGraph169AfterTpmmGraphExactContinuationFamily
      scaledMargin sequenceBadFace where
  completionTail := hfamily.completionTail
  suffix_exact := by
    intro rank hstrengthened restTail hprefix hcompletion
    rcases graph183_tail_eq_forced_or_tmmp_branch hcompletion with
      hrest | hblocked
    · subst restTail
      refine ⟨126, -542, graph183TailEval, graph126Potential_nonneg, ?_⟩
      exact hfamily.final_margin_yp_branch rank hstrengthened hprefix
    · rcases hblocked with ⟨blockedTail, hrest, hblockedTail⟩
      subst restTail
      exact False.elim
        (hfamily.tmmp_branch_absurd rank hstrengthened blockedTail
          hprefix hblockedTail)

theorem graph169ContinuationFamily_of_acceptedSequenceGraph183AcceptedBranch
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      AcceptedSequenceGraph183AcceptedBranchFinalMarginFamily scaledMargin) :
    StrengthenedGraph169AfterTpmmGraphExactContinuationFamily
      scaledMargin AcceptedSequenceBadFaceAtRank :=
  graph169ContinuationFamily_of_graph183TailFinalMargin
    (graph183TailFinalMarginFamily_of_acceptedSequenceAcceptedBranch hfamily)

theorem graphExactEvalGateAtRank_of_graph183TailFinalMargin
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hfamily :
      StrengthenedGraph183TailFinalMarginFamily
        scaledMargin sequenceBadFace)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    TopPairingGraphExactEvalGateAtRank
      graphPotential closedBellmanNext (fun face : Face => face)
      graphRoot graphConst scaledMargin rank Face.ym :=
  graphExactEvalGateAtRank_of_graph169AfterTpmm
    (graph169ContinuationFamily_of_graph183TailFinalMargin hfamily)
    hstrengthened hprefix

theorem graphExactEvalGateAtRank_of_acceptedSequenceGraph183AcceptedBranch
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hfamily :
      AcceptedSequenceGraph183AcceptedBranchFinalMarginFamily scaledMargin)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    TopPairingGraphExactEvalGateAtRank
      graphPotential closedBellmanNext (fun face : Face => face)
      graphRoot graphConst scaledMargin rank Face.ym :=
  graphExactEvalGateAtRank_of_graph183TailFinalMargin
    (graph183TailFinalMarginFamily_of_acceptedSequenceAcceptedBranch hfamily)
    hstrengthened hprefix

theorem graph183TailTableSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph183TailTableSocket
