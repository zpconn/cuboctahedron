import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
import Cuboctahedron.Search.TopPairingBellmanObject

/-!
Trace-level evaluator smoke for the semantic top-pairing Bellman object.

This file isolates the next production theorem into two small obligations:

1. classify a closed top-pairing object's labels as one of the two accepted
   closed traces;
2. prove the scaled-margin bound for that closed object.

Given those two facts, the deterministic generated evaluator already supplies
`BellmanEvalAccepts` without a sampled rank/path index.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedEvalTraceSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

def closedTraceA : List SmokeLabel :=
  [smokeLabelOfFace Face.xm, smokeLabelOfFace Face.ym,
    smokeLabelOfFace Face.zm, smokeLabelOfFace Face.tmpp,
    smokeLabelOfFace Face.tppp, smokeLabelOfFace Face.tpmp,
    smokeLabelOfFace Face.tppm, smokeLabelOfFace Face.tmmp,
    smokeLabelOfFace Face.tpmm, smokeLabelOfFace Face.tmmm,
    smokeLabelOfFace Face.tmpm, smokeLabelOfFace Face.yp,
    smokeLabelOfFace Face.zp, smokeLabelOfFace Face.xp]

def closedTraceB : List SmokeLabel :=
  [smokeLabelOfFace Face.xm, smokeLabelOfFace Face.ym,
    smokeLabelOfFace Face.zm, smokeLabelOfFace Face.tmpp,
    smokeLabelOfFace Face.tppp, smokeLabelOfFace Face.tpmp,
    smokeLabelOfFace Face.tppm, smokeLabelOfFace Face.tmmp,
    smokeLabelOfFace Face.tpmm, smokeLabelOfFace Face.tmmm,
    smokeLabelOfFace Face.tmpm, smokeLabelOfFace Face.zp,
    smokeLabelOfFace Face.yp, smokeLabelOfFace Face.xp]

theorem closedTraceA_eq_faceTraceA_labels :
    topPairingClosedFaceTraceA.map smokeLabelOfFace = closedTraceA := by
  rfl

theorem closedTraceB_eq_faceTraceB_labels :
    topPairingClosedFaceTraceB.map smokeLabelOfFace = closedTraceB := by
  rfl

theorem closedTraceA_eval :
    evalLabelStepFn graphSmokeNext rootState closedTraceA =
      some ((601 : State), (-376 : Int)) := by
  rfl

theorem closedTraceB_eval :
    evalLabelStepFn graphSmokeNext rootState closedTraceB =
      some ((601 : State), (-376 : Int)) := by
  rfl

theorem graphPotential_601_nonneg :
    0 <= graphPotential (601 : State) := by
  change 0 <= (0 : Int)
  norm_num

theorem bellmanEvalAccepts_of_closedTraceA_or_closedTraceB
    {badFace : Face}
    {scaledMargin : Fin numPairWords -> Int}
    (obj : TopPairingBellmanObj badFace)
    (htrace :
      TopPairingBellmanObj.labels smokeLabelOfFace obj = closedTraceA \/
        TopPairingBellmanObj.labels smokeLabelOfFace obj = closedTraceB)
    (hmargin : scaledMargin obj.rank <= (176 : Int) + (-376 : Int)) :
    BellmanEvalAccepts graphPotential graphSmokeNext rootState (176 : Int)
      (fun obj : TopPairingBellmanObj badFace => scaledMargin obj.rank)
      (fun obj => TopPairingBellmanObj.labels smokeLabelOfFace obj)
      obj := by
  refine ⟨((601 : State), (-376 : Int)), ?_, graphPotential_601_nonneg, hmargin⟩
  change
    evalLabelStepFn graphSmokeNext rootState
        (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
      some ((601 : State), (-376 : Int))
  rcases htrace with htrace | htrace
  · rw [htrace]
    exact closedTraceA_eval
  · rw [htrace]
    exact closedTraceB_eval

theorem bellmanEvalAccepts_of_closedFaceTraceA_or_closedFaceTraceB
    {badFace : Face}
    {scaledMargin : Fin numPairWords -> Int}
    (obj : TopPairingBellmanObj badFace)
    (htrace :
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
          topPairingClosedFaceTraceA \/
        TopPairingBellmanObj.labels (fun f : Face => f) obj =
          topPairingClosedFaceTraceB)
    (hmargin : scaledMargin obj.rank <= (176 : Int) + (-376 : Int)) :
    BellmanEvalAccepts graphPotential graphSmokeNext rootState (176 : Int)
      (fun obj : TopPairingBellmanObj badFace => scaledMargin obj.rank)
      (fun obj => TopPairingBellmanObj.labels smokeLabelOfFace obj)
      obj := by
  apply bellmanEvalAccepts_of_closedTraceA_or_closedTraceB obj
  · rcases htrace with htrace | htrace
    · left
      rw [TopPairingBellmanObj.labels_map
        (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
      rw [htrace]
      exact closedTraceA_eq_faceTraceA_labels
    · right
      rw [TopPairingBellmanObj.labels_map
        (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
      rw [htrace]
      exact closedTraceB_eq_faceTraceB_labels
  · exact hmargin

theorem traceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedEvalTraceSmoke
