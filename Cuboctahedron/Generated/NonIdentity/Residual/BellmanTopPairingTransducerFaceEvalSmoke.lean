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
  let start : FaceEvalState := TopPairingTransducerEvalState.start rootState
  have htail0 : start.Tail (Face.xm :: Face.ym :: rest) := by
    have htailRank :
        start.Tail (topPairingRankFaceLabels rank) := by
      simpa [start, FaceEvalState, TopPairingTransducerEvalState.Tail,
        TopPairingTransducerEvalState.start] using
        TopPairingTransducerState.start_tail_of_closed hclosed
    simpa [topPairingRankFaceLabels, hlabels] using htailRank
  have hgraph0 :
      graphSmokeNext rootState (smokeLabelOfFace Face.xm) =
        some ((608 : State), (103 : Int)) := by
    rfl
  rcases TopPairingTransducerEvalState.next?_tail
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
      htail0 hgraph0 with
    ⟨mid, hnext0, htail1, hmidGraph⟩
  have hgraph1 :
      graphSmokeNext mid.graph (smokeLabelOfFace Face.ym) =
        some ((610 : State), (-73 : Int)) := by
    rw [hmidGraph]
    rfl
  rcases TopPairingTransducerEvalState.next?_tail
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
      htail1 hgraph1 with
    ⟨finish, hnext1, hfinishTail, hfinishGraph⟩
  refine ⟨rest, finish, hlabels, ?_, hfinishGraph, hfinishTail⟩
  change
    evalLabelStepFn faceEvalNext start [Face.xm, Face.ym] =
      some (finish, (30 : Int))
  simp [faceEvalNext, evalLabelStepFn, hnext0, hnext1]

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
