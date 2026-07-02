import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root

/-!
Semantic object-cover wrapper for the selected-prefix trace-margin socket.

This module packages the selected-prefix trace-margin strengthened language as
an actual `BellmanAxisRankObjectCover`.  The covered objects are semantic
rank/evaluator objects, not sampled ranks or sampled paths.

The remaining production obligation is still to prove the selected-prefix
trace-margin sequence predicate from the full closed top-pairing classifier.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginObjectCover

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginSocket

theorem graphRootBound :
    (176 : Int) + graphPotential rootState <= 0 := by
  unfold rootState graphPotential
  decide

theorem graphRootInRange :
    rootState < stateCount := by
  unfold rootState stateCount
  decide

def GraphSmokeStepChecked
    (s : State) (label : SmokeLabel) (t : State) (gain : Int) : Prop :=
  s < stateCount /\
    t < stateCount /\
      graphSmokeNext s label = some (t, gain) /\
        gain + graphPotential t <= graphPotential s

theorem graphSmokeStepChecked_valid
    {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (h : GraphSmokeStepChecked s label t gain) :
    gain + graphPotential t <= graphPotential s :=
  h.2.2.2

theorem checkedRun_of_evalLabelStepFn
    {start finish : State} {labels : List SmokeLabel} {totalGain : Int}
    (hstart : start < stateCount)
    (heval :
      evalLabelStepFn graphSmokeNext start labels = some (finish, totalGain)) :
    BellmanLabelStepRun GraphSmokeStepChecked
      start finish labels totalGain := by
  induction labels generalizing start finish totalGain with
  | nil =>
      simp [evalLabelStepFn] at heval
      rcases heval with ⟨rfl, rfl⟩
      exact BellmanLabelStepRun.nil start
  | cons label labels ih =>
      simp [evalLabelStepFn] at heval
      cases hstep : graphSmokeNext start label with
      | none =>
          simp [hstep] at heval
      | some step =>
          cases step with
          | mk mid stepGain =>
              simp [hstep] at heval
              cases htail : evalLabelStepFn graphSmokeNext mid labels with
              | none =>
                  simp [htail] at heval
              | some tailResult =>
                  cases tailResult with
                  | mk finish tailGain =>
                      simp [htail] at heval
                      rcases heval with ⟨rfl, rfl⟩
                      rcases
                        Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root.transition_ok_of_lt
                          (s := start) (label := label) (t := mid)
                          (gain := stepGain) hstart hstep with
                        ⟨hmid, hbound⟩
                      exact
                        BellmanLabelStepRun.cons
                          ⟨hstart, hmid, hstep, hbound⟩
                          (ih hmid htail)

theorem selectedPrefixTraceMarginTraceBound
    {scaledMargin : Fin numPairWords -> Int} :
    BellmanLabelStepRunLanguageBound
      graphPotential GraphSmokeStepChecked rootState (176 : Int)
      (fun obj :
        TopPairingBellmanEvalObj
          graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
          scaledMargin Face.ym =>
        scaledMargin (TopPairingBellmanEvalObj.rankOf obj))
      (fun obj :
        TopPairingBellmanEvalObj
          graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
          scaledMargin Face.ym =>
        faceLabelsInContributionOrder smokeLabelOfFace
          (TopPairingBellmanEvalObj.forcedSeq obj))
      (TopPairingBellmanEvalObj.Accepts
        (V := graphPotential)
        (next := graphSmokeNext)
        (labelOfFace := smokeLabelOfFace)
        (start := rootState)
        (const := (176 : Int))
        (scaledMargin := scaledMargin)
        (badFace := Face.ym)) := by
  intro obj _hAccept
  rcases TopPairingBellmanEvalObj.evalAccepts obj with
    ⟨result, heval, hfinish, hmargin⟩
  refine ⟨result.1, result.2, ?_, hfinish, hmargin⟩
  exact checkedRun_of_evalLabelStepFn graphRootInRange heval

def selectedPrefixTraceMarginObjectCover
    {scaledMargin : Fin numPairWords -> Int} :
    BellmanAxisRankObjectCover
      (TopPairingBellmanEvalObj
        graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
        scaledMargin Face.ym)
      State SmokeLabel graphPotential GraphSmokeStepChecked smokeLabelOfFace
      rootState (176 : Int)
      (TopPairingBellmanEvalObj.rankOf
        (V := graphPotential)
        (next := graphSmokeNext)
        (labelOfFace := smokeLabelOfFace)
        (start := rootState)
        (const := (176 : Int))
        (scaledMargin := scaledMargin)
        (badFace := Face.ym))
      (TopPairingBellmanEvalObj.Accepts
        (V := graphPotential)
        (next := graphSmokeNext)
        (labelOfFace := smokeLabelOfFace)
        (start := rootState)
        (const := (176 : Int))
        (scaledMargin := scaledMargin)
        (badFace := Face.ym))
      (TopPairingStrengthenedClosedContainsRank
        (SelectedPrefixTraceMarginSequenceBadFace scaledMargin) Face.ym)
      scaledMargin where
  forcedSeq :=
    TopPairingBellmanEvalObj.forcedSeq
      (V := graphPotential)
      (next := graphSmokeNext)
      (labelOfFace := smokeLabelOfFace)
      (start := rootState)
      (const := (176 : Int))
      (scaledMargin := scaledMargin)
      (badFace := Face.ym)
  trace_bound := selectedPrefixTraceMarginTraceBound (scaledMargin := scaledMargin)
  step_valid := by
    intro s label t gain h
    exact graphSmokeStepChecked_valid h
  root_bound := graphRootBound
  covers := by
    intro rank hstrengthened
    refine ⟨⟨rank, ?_⟩, True.intro, rfl⟩
    exact
      evalLanguage_of_strengthenedSelectedPrefixTraceMargin
        (scaledMargin := scaledMargin) (rank := rank) hstrengthened

theorem selectedPrefixTraceMarginObjectCover_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (SelectedPrefixTraceMarginSequenceBadFace scaledMargin) rank Face.ym) :
    scaledMargin rank <= 0 :=
  BellmanAxisRankObjectCover.scaledMargin_nonpos
    (selectedPrefixTraceMarginObjectCover (scaledMargin := scaledMargin)) h

theorem selected_prefix_trace_margin_object_cover_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginObjectCover
