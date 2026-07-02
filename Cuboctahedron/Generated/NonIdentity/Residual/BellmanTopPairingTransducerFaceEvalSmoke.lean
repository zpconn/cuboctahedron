import Cuboctahedron.Search.TopPairingTransducerEvalBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate

/-!
Bounded face-eval smoke for the top-pairing transducer route.

This module checks the next production-facing socket after
`TopPairingTransducerEvalBridge`: a deterministic evaluator over semantic face
states can be projected to the ordinary Bellman graph evaluator.  It is still a
bounded smoke over one accepted trace, not coverage.  It also checks the first
non-sampled semantic slice: any closed top-pairing rank drives the first two
forced schedule faces through the face evaluator and leaves a valid semantic
tail.
-/

set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEvalSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate

abbrev FaceEvalState :=
  TopPairingTransducerEvalState State

def faceEvalNext :
    FaceEvalState -> Face -> Option (FaceEvalState × Int) :=
  TopPairingTransducerEvalState.next? graphSmokeNext smokeLabelOfFace

def closedPrefix2TransducerState : TopPairingTransducerState where
  step := 2
  gap := topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym
  k := 0
  parity := (SqParity.id.applyPair (pairOfFace Face.xm)).applyPair
    (pairOfFace Face.ym)
  linear := topPairingNextLinear
    (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym

def closedPrefix2EvalState : FaceEvalState where
  transducer := closedPrefix2TransducerState
  graph := (610 : State)

theorem closed_prefix2_eval_eq :
    evalLabelStepFn faceEvalNext
      (TopPairingTransducerEvalState.start rootState)
      [Face.xm, Face.ym] =
        some (closedPrefix2EvalState, (30 : Int)) := by
  rfl

theorem closed_prefix2_tail
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {rest : List Face}
    (hlabels : topPairingRankFaceLabels rank = Face.xm :: Face.ym :: rest) :
    closedPrefix2EvalState.Tail rest := by
  have htail0 :
      TopPairingTransducerTail 0 0 0 SqParity.id (matId : Mat3 Rat)
        (Face.xm :: Face.ym :: rest) := by
    have htailRank :
        TopPairingTransducerTail 0 0 0 SqParity.id (matId : Mat3 Rat)
          (topPairingRankFaceLabels rank) :=
      TopPairingTransducerTail.ofClosedRank hclosed
    rw [← hlabels]
    exact htailRank
  have htail1 :
      TopPairingTransducerTail 1 (topPairingNextGap 0 Face.xm) 0
        (SqParity.id.applyPair (pairOfFace Face.xm))
        (topPairingNextLinear (matId : Mat3 Rat) Face.xm)
        (Face.ym :: rest) :=
    TopPairingTransducerTail.cons_square_tail htail0 (by rfl)
  have htail2 :
      TopPairingTransducerTail 2
        (topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym) 0
        ((SqParity.id.applyPair (pairOfFace Face.xm)).applyPair
          (pairOfFace Face.ym))
        (topPairingNextLinear
          (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym)
        rest :=
    TopPairingTransducerTail.cons_square_tail htail1 (by rfl)
  simpa [closedPrefix2EvalState, closedPrefix2TransducerState,
    TopPairingTransducerEvalState.Tail, TopPairingTransducerState.Tail] using
    htail2

theorem closed_prefix2_faceEval
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    ∃ rest : List Face, ∃ finish : FaceEvalState,
      topPairingRankFaceLabels rank = Face.xm :: Face.ym :: rest ∧
        evalLabelStepFn faceEvalNext
          (TopPairingTransducerEvalState.start rootState)
          [Face.xm, Face.ym] = some (finish, (30 : Int)) ∧
        finish.graph = (610 : State) ∧
        finish.Tail rest := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym hclosed.schedule with
    ⟨rest, hlabels⟩
  refine ⟨rest, closedPrefix2EvalState, hlabels, closed_prefix2_eval_eq, ?_, ?_⟩
  · rfl
  · exact closed_prefix2_tail hclosed hlabels

theorem closed_prefix2_branch_faceEval
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {face : Face} {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: face :: rest) :
    ∃ nextState : FaceEvalState, ∃ gain : Int,
      faceEvalNext closedPrefix2EvalState face = some (nextState, gain) ∧
        nextState.Tail rest := by
  have hschedule :
      TopPairingStepScheduleLabels (topPairingRankFaceLabels rank) := by
    simpa [topPairingRankFaceLabels] using hclosed.schedule
  have hface :
      face ∈ topPairingAllowedFacesAtStep 2 := by
    simpa using
      (topPairingStepScheduleLabels_allows_next_of_prefix
        (labels := topPairingRankFaceLabels rank)
        (pfx := [Face.xm, Face.ym])
        (rest := rest)
        hschedule
        (by simpa using hlabels))
  have htail : closedPrefix2EvalState.Tail (face :: rest) :=
    closed_prefix2_tail hclosed hlabels
  simp [topPairingAllowedFacesAtStep] at hface
  rcases hface with rfl | rfl | rfl
  · have hgraph :
        graphSmokeNext closedPrefix2EvalState.graph
            (smokeLabelOfFace Face.tmpm) =
          some ((618 : State), (-124 : Int)) := by
      rfl
    rcases TopPairingTransducerEvalState.next?_tail
        (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
        htail hgraph with
      ⟨nextState, hnext, htailNext, _hgraphNext⟩
    exact ⟨nextState, (-124 : Int), hnext, htailNext⟩
  · have hgraph :
        graphSmokeNext closedPrefix2EvalState.graph
            (smokeLabelOfFace Face.yp) =
          some ((615 : State), (-73 : Int)) := by
      rfl
    rcases TopPairingTransducerEvalState.next?_tail
        (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
        htail hgraph with
      ⟨nextState, hnext, htailNext, _hgraphNext⟩
    exact ⟨nextState, (-73 : Int), hnext, htailNext⟩
  · have hgraph :
        graphSmokeNext closedPrefix2EvalState.graph
            (smokeLabelOfFace Face.zm) =
          some ((616 : State), (-10 : Int)) := by
      rfl
    rcases TopPairingTransducerEvalState.next?_tail
        (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
        htail hgraph with
      ⟨nextState, hnext, htailNext, _hgraphNext⟩
    exact ⟨nextState, (-10 : Int), hnext, htailNext⟩

theorem acceptedTrace000_faceEval_isSome :
    (evalLabelStepFn faceEvalNext
      (TopPairingTransducerEvalState.start rootState)
      acceptedFaceTrace_000).isSome = true := by
  rfl

theorem acceptedTrace000_faceEval_some :
    ∃ result : FaceEvalState × Int,
      evalLabelStepFn faceEvalNext
          (TopPairingTransducerEvalState.start rootState)
          acceptedFaceTrace_000 = some result ∧
        result.1.graph = (558 : State) ∧
        result.2 = (-376 : Int) ∧
        0 <= graphPotential result.1.graph := by
  have hsome := acceptedTrace000_faceEval_isSome
  cases heval :
      evalLabelStepFn faceEvalNext
        (TopPairingTransducerEvalState.start rootState)
        acceptedFaceTrace_000 with
  | none =>
      simp [heval] at hsome
  | some result =>
      have hgraphEval :=
        TopPairingTransducerEvalState.evalLabelStepFn_graph_of_faceEval
          (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace) heval
      have hknown :
          evalLabelStepFn graphSmokeNext rootState
              (acceptedFaceTrace_000.map smokeLabelOfFace) =
            some ((558 : State), (-376 : Int)) := by
        rfl
      simp [TopPairingTransducerEvalState.start] at hgraphEval
      rw [hknown] at hgraphEval
      have hpair := Option.some.inj hgraphEval
      have hgraph : result.1.graph = (558 : State) := by
        simpa using congrArg Prod.fst hpair.symm
      have hgain : result.2 = (-376 : Int) := by
        simpa using congrArg Prod.snd hpair.symm
      refine ⟨result, rfl, hgraph, hgain, ?_⟩
      rw [hgraph]
      change 0 <= (0 : Int)
      norm_num

theorem evalLanguage_of_faceEval
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {finish : FaceEvalState}
    {gain : Int}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (heval :
      evalLabelStepFn faceEvalNext
        (TopPairingTransducerEvalState.start rootState)
        (topPairingRankFaceLabels rank) = some (finish, gain))
    (hfinal : 0 <= graphPotential finish.graph)
    (hmargin : scaledMargin rank <= (176 : Int) + gain) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  TopPairingTransducerEvalState.evalLanguageAtRank_of_faceEval
    hclosed heval hfinal hmargin

theorem evalLanguage_of_trace000_faceEval
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_000)
    (hmargin : scaledMargin rank <= (176 : Int) + (-376 : Int)) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym := by
  rcases acceptedTrace000_faceEval_some with
    ⟨result, heval, _hgraph, hgain, hfinal⟩
  exact evalLanguage_of_faceEval
    (scaledMargin := scaledMargin)
    (rank := rank)
    (finish := result.1)
    (gain := result.2)
    hclosed
    (by simpa [htrace] using heval)
    hfinal
    (by simpa [hgain] using hmargin)

theorem transducer_face_eval_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEvalSmoke
