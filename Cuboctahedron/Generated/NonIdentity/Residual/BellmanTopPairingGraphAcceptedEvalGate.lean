import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
import Cuboctahedron.Search.TopPairingBellmanObject

/-!
Generated semantic eval gate for graph-accepted top-pairing traces.

This module replaces the obsolete two-trace smoke gate with the corrected
Lean-aligned graph-accepted trace surface.  It does not prove that the current
closed-language predicate implies graph acceptance; instead it records the
compact production socket needed by a strengthened semantic language:
graph-accepted trace membership plus the matching margin bound implies
`BellmanEvalAccepts`.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

private def acceptedFaceTrace_000 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.zm, Face.zp, Face.xp]
private def acceptedFaceTrace_001 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.zm, Face.yp, Face.zp, Face.xp]
private def acceptedFaceTrace_002 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.zm, Face.zp, Face.yp, Face.xp]
private def acceptedFaceTrace_003 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.zm, Face.zp, Face.xp]
private def acceptedFaceTrace_004 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.zm, Face.zp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_005 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.zp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_006 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.zp, Face.yp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_007 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.zp, Face.zm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
private def acceptedFaceTrace_008 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.zp, Face.zm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_009 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.zp, Face.zm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
private def acceptedFaceTrace_010 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.zp, Face.zm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_011 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.zm, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
private def acceptedFaceTrace_012 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.zm, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_013 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.zm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
private def acceptedFaceTrace_014 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.zm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_015 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
private def acceptedFaceTrace_016 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_017 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_018 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.zm, Face.zp, Face.xp]
private def acceptedFaceTrace_019 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.zm, Face.zp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_020 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.zp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_021 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.zp, Face.zm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_022 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.zp, Face.zm, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_023 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.zp, Face.zm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_024 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp, Face.zm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_025 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmpm, Face.zp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_026 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_027 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
private def acceptedFaceTrace_028 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_029 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tmmp, Face.tpmm, Face.tmmm, Face.tmpm, Face.yp, Face.zp, Face.xp]
private def acceptedFaceTrace_030 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tmmp, Face.tpmm, Face.tmmm, Face.tmpm, Face.zp, Face.yp, Face.xp]
private def acceptedFaceTrace_031 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tmmp, Face.tpmm, Face.yp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
private def acceptedFaceTrace_032 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
private def acceptedFaceTrace_033 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_034 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
private def acceptedFaceTrace_035 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
private def acceptedFaceTrace_036 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]


private theorem acceptedTrace_000_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_000.map smokeLabelOfFace) =
      some ((558 : State), (-376 : Int)) := by
  rfl

private theorem acceptedTrace_000_final_nonneg :
    0 <= graphPotential (558 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_001_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_001.map smokeLabelOfFace) =
      some ((558 : State), (-376 : Int)) := by
  rfl

private theorem acceptedTrace_001_final_nonneg :
    0 <= graphPotential (558 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_002_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_002.map smokeLabelOfFace) =
      some ((558 : State), (-376 : Int)) := by
  rfl

private theorem acceptedTrace_002_final_nonneg :
    0 <= graphPotential (558 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_003_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_003.map smokeLabelOfFace) =
      some ((559 : State), (-596 : Int)) := by
  rfl

private theorem acceptedTrace_003_final_nonneg :
    0 <= graphPotential (559 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_004_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_004.map smokeLabelOfFace) =
      some ((560 : State), (-348 : Int)) := by
  rfl

private theorem acceptedTrace_004_final_nonneg :
    0 <= graphPotential (560 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_005_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_005.map smokeLabelOfFace) =
      some ((557 : State), (-612 : Int)) := by
  rfl

private theorem acceptedTrace_005_final_nonneg :
    0 <= graphPotential (557 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_006_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_006.map smokeLabelOfFace) =
      some ((557 : State), (-612 : Int)) := by
  rfl

private theorem acceptedTrace_006_final_nonneg :
    0 <= graphPotential (557 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_007_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_007.map smokeLabelOfFace) =
      some ((556 : State), (-392 : Int)) := by
  rfl

private theorem acceptedTrace_007_final_nonneg :
    0 <= graphPotential (556 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_008_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_008.map smokeLabelOfFace) =
      some ((557 : State), (-612 : Int)) := by
  rfl

private theorem acceptedTrace_008_final_nonneg :
    0 <= graphPotential (557 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_009_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_009.map smokeLabelOfFace) =
      some ((561 : State), (-464 : Int)) := by
  rfl

private theorem acceptedTrace_009_final_nonneg :
    0 <= graphPotential (561 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_010_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_010.map smokeLabelOfFace) =
      some ((562 : State), (-684 : Int)) := by
  rfl

private theorem acceptedTrace_010_final_nonneg :
    0 <= graphPotential (562 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_011_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_011.map smokeLabelOfFace) =
      some ((563 : State), (-176 : Int)) := by
  rfl

private theorem acceptedTrace_011_final_nonneg :
    0 <= graphPotential (563 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_012_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_012.map smokeLabelOfFace) =
      some ((564 : State), (-396 : Int)) := by
  rfl

private theorem acceptedTrace_012_final_nonneg :
    0 <= graphPotential (564 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_013_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_013.map smokeLabelOfFace) =
      some ((565 : State), (-464 : Int)) := by
  rfl

private theorem acceptedTrace_013_final_nonneg :
    0 <= graphPotential (565 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_014_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_014.map smokeLabelOfFace) =
      some ((566 : State), (-684 : Int)) := by
  rfl

private theorem acceptedTrace_014_final_nonneg :
    0 <= graphPotential (566 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_015_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_015.map smokeLabelOfFace) =
      some ((567 : State), (-392 : Int)) := by
  rfl

private theorem acceptedTrace_015_final_nonneg :
    0 <= graphPotential (567 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_016_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_016.map smokeLabelOfFace) =
      some ((568 : State), (-612 : Int)) := by
  rfl

private theorem acceptedTrace_016_final_nonneg :
    0 <= graphPotential (568 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_017_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_017.map smokeLabelOfFace) =
      some ((569 : State), (-348 : Int)) := by
  rfl

private theorem acceptedTrace_017_final_nonneg :
    0 <= graphPotential (569 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_018_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_018.map smokeLabelOfFace) =
      some ((590 : State), (-552 : Int)) := by
  rfl

private theorem acceptedTrace_018_final_nonneg :
    0 <= graphPotential (590 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_019_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_019.map smokeLabelOfFace) =
      some ((591 : State), (-304 : Int)) := by
  rfl

private theorem acceptedTrace_019_final_nonneg :
    0 <= graphPotential (591 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_020_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_020.map smokeLabelOfFace) =
      some ((589 : State), (-568 : Int)) := by
  rfl

private theorem acceptedTrace_020_final_nonneg :
    0 <= graphPotential (589 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_021_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_021.map smokeLabelOfFace) =
      some ((587 : State), (-640 : Int)) := by
  rfl

private theorem acceptedTrace_021_final_nonneg :
    0 <= graphPotential (587 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_022_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_022.map smokeLabelOfFace) =
      some ((592 : State), (-352 : Int)) := by
  rfl

private theorem acceptedTrace_022_final_nonneg :
    0 <= graphPotential (592 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_023_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_023.map smokeLabelOfFace) =
      some ((593 : State), (-640 : Int)) := by
  rfl

private theorem acceptedTrace_023_final_nonneg :
    0 <= graphPotential (593 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_024_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_024.map smokeLabelOfFace) =
      some ((594 : State), (-568 : Int)) := by
  rfl

private theorem acceptedTrace_024_final_nonneg :
    0 <= graphPotential (594 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_025_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_025.map smokeLabelOfFace) =
      some ((596 : State), (-304 : Int)) := by
  rfl

private theorem acceptedTrace_025_final_nonneg :
    0 <= graphPotential (596 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_026_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_026.map smokeLabelOfFace) =
      some ((597 : State), (-304 : Int)) := by
  rfl

private theorem acceptedTrace_026_final_nonneg :
    0 <= graphPotential (597 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_027_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_027.map smokeLabelOfFace) =
      some ((602 : State), (-552 : Int)) := by
  rfl

private theorem acceptedTrace_027_final_nonneg :
    0 <= graphPotential (602 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_028_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_028.map smokeLabelOfFace) =
      some ((607 : State), (-552 : Int)) := by
  rfl

private theorem acceptedTrace_028_final_nonneg :
    0 <= graphPotential (607 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_029_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_029.map smokeLabelOfFace) =
      some ((601 : State), (-376 : Int)) := by
  rfl

private theorem acceptedTrace_029_final_nonneg :
    0 <= graphPotential (601 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_030_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_030.map smokeLabelOfFace) =
      some ((601 : State), (-376 : Int)) := by
  rfl

private theorem acceptedTrace_030_final_nonneg :
    0 <= graphPotential (601 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_031_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_031.map smokeLabelOfFace) =
      some ((600 : State), (-596 : Int)) := by
  rfl

private theorem acceptedTrace_031_final_nonneg :
    0 <= graphPotential (600 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_032_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_032.map smokeLabelOfFace) =
      some ((602 : State), (-552 : Int)) := by
  rfl

private theorem acceptedTrace_032_final_nonneg :
    0 <= graphPotential (602 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_033_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_033.map smokeLabelOfFace) =
      some ((607 : State), (-552 : Int)) := by
  rfl

private theorem acceptedTrace_033_final_nonneg :
    0 <= graphPotential (607 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_034_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_034.map smokeLabelOfFace) =
      some ((603 : State), (-376 : Int)) := by
  rfl

private theorem acceptedTrace_034_final_nonneg :
    0 <= graphPotential (603 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_035_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_035.map smokeLabelOfFace) =
      some ((604 : State), (-596 : Int)) := by
  rfl

private theorem acceptedTrace_035_final_nonneg :
    0 <= graphPotential (604 : State) := by
  change 0 <= (0 : Int)
  norm_num

private theorem acceptedTrace_036_eval :
    evalLabelStepFn graphSmokeNext rootState
        (acceptedFaceTrace_036.map smokeLabelOfFace) =
      some ((607 : State), (-552 : Int)) := by
  rfl

private theorem acceptedTrace_036_final_nonneg :
    0 <= graphPotential (607 : State) := by
  change 0 <= (0 : Int)
  norm_num

def GraphAcceptedTraceMargin
    (scaledMargin : Fin numPairWords -> Int)
    (obj : TopPairingBellmanObj Face.ym) : Prop :=
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_000 /\
      scaledMargin obj.rank <= (176 : Int) + (-376 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_001 /\
      scaledMargin obj.rank <= (176 : Int) + (-376 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_002 /\
      scaledMargin obj.rank <= (176 : Int) + (-376 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_003 /\
      scaledMargin obj.rank <= (176 : Int) + (-596 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_004 /\
      scaledMargin obj.rank <= (176 : Int) + (-348 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_005 /\
      scaledMargin obj.rank <= (176 : Int) + (-612 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_006 /\
      scaledMargin obj.rank <= (176 : Int) + (-612 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_007 /\
      scaledMargin obj.rank <= (176 : Int) + (-392 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_008 /\
      scaledMargin obj.rank <= (176 : Int) + (-612 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_009 /\
      scaledMargin obj.rank <= (176 : Int) + (-464 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_010 /\
      scaledMargin obj.rank <= (176 : Int) + (-684 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_011 /\
      scaledMargin obj.rank <= (176 : Int) + (-176 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_012 /\
      scaledMargin obj.rank <= (176 : Int) + (-396 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_013 /\
      scaledMargin obj.rank <= (176 : Int) + (-464 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_014 /\
      scaledMargin obj.rank <= (176 : Int) + (-684 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_015 /\
      scaledMargin obj.rank <= (176 : Int) + (-392 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_016 /\
      scaledMargin obj.rank <= (176 : Int) + (-612 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_017 /\
      scaledMargin obj.rank <= (176 : Int) + (-348 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_018 /\
      scaledMargin obj.rank <= (176 : Int) + (-552 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_019 /\
      scaledMargin obj.rank <= (176 : Int) + (-304 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_020 /\
      scaledMargin obj.rank <= (176 : Int) + (-568 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_021 /\
      scaledMargin obj.rank <= (176 : Int) + (-640 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_022 /\
      scaledMargin obj.rank <= (176 : Int) + (-352 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_023 /\
      scaledMargin obj.rank <= (176 : Int) + (-640 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_024 /\
      scaledMargin obj.rank <= (176 : Int) + (-568 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_025 /\
      scaledMargin obj.rank <= (176 : Int) + (-304 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_026 /\
      scaledMargin obj.rank <= (176 : Int) + (-304 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_027 /\
      scaledMargin obj.rank <= (176 : Int) + (-552 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_028 /\
      scaledMargin obj.rank <= (176 : Int) + (-552 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_029 /\
      scaledMargin obj.rank <= (176 : Int) + (-376 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_030 /\
      scaledMargin obj.rank <= (176 : Int) + (-376 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_031 /\
      scaledMargin obj.rank <= (176 : Int) + (-596 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_032 /\
      scaledMargin obj.rank <= (176 : Int) + (-552 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_033 /\
      scaledMargin obj.rank <= (176 : Int) + (-552 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_034 /\
      scaledMargin obj.rank <= (176 : Int) + (-376 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_035 /\
      scaledMargin obj.rank <= (176 : Int) + (-596 : Int)) \/
    (TopPairingBellmanObj.labels (fun f : Face => f) obj = acceptedFaceTrace_036 /\
      scaledMargin obj.rank <= (176 : Int) + (-552 : Int))

theorem bellmanEvalAccepts_of_graphAcceptedTraceMargin
    {scaledMargin : Fin numPairWords -> Int}
    (obj : TopPairingBellmanObj Face.ym)
    (hgraph : GraphAcceptedTraceMargin scaledMargin obj) :
    BellmanEvalAccepts graphPotential graphSmokeNext rootState (176 : Int)
      (fun obj : TopPairingBellmanObj Face.ym => scaledMargin obj.rank)
      (fun obj => TopPairingBellmanObj.labels smokeLabelOfFace obj)
      obj := by
  unfold GraphAcceptedTraceMargin at hgraph
  rcases hgraph with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28 | h29 | h30 | h31 | h32 | h33 | h34 | h35 | h36
  · rcases h0 with ⟨htrace, hmargin⟩
    refine ⟨((558 : State), (-376 : Int)), ?_, acceptedTrace_000_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((558 : State), (-376 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_000_eval

  · rcases h1 with ⟨htrace, hmargin⟩
    refine ⟨((558 : State), (-376 : Int)), ?_, acceptedTrace_001_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((558 : State), (-376 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_001_eval

  · rcases h2 with ⟨htrace, hmargin⟩
    refine ⟨((558 : State), (-376 : Int)), ?_, acceptedTrace_002_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((558 : State), (-376 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_002_eval

  · rcases h3 with ⟨htrace, hmargin⟩
    refine ⟨((559 : State), (-596 : Int)), ?_, acceptedTrace_003_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((559 : State), (-596 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_003_eval

  · rcases h4 with ⟨htrace, hmargin⟩
    refine ⟨((560 : State), (-348 : Int)), ?_, acceptedTrace_004_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((560 : State), (-348 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_004_eval

  · rcases h5 with ⟨htrace, hmargin⟩
    refine ⟨((557 : State), (-612 : Int)), ?_, acceptedTrace_005_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((557 : State), (-612 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_005_eval

  · rcases h6 with ⟨htrace, hmargin⟩
    refine ⟨((557 : State), (-612 : Int)), ?_, acceptedTrace_006_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((557 : State), (-612 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_006_eval

  · rcases h7 with ⟨htrace, hmargin⟩
    refine ⟨((556 : State), (-392 : Int)), ?_, acceptedTrace_007_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((556 : State), (-392 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_007_eval

  · rcases h8 with ⟨htrace, hmargin⟩
    refine ⟨((557 : State), (-612 : Int)), ?_, acceptedTrace_008_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((557 : State), (-612 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_008_eval

  · rcases h9 with ⟨htrace, hmargin⟩
    refine ⟨((561 : State), (-464 : Int)), ?_, acceptedTrace_009_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((561 : State), (-464 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_009_eval

  · rcases h10 with ⟨htrace, hmargin⟩
    refine ⟨((562 : State), (-684 : Int)), ?_, acceptedTrace_010_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((562 : State), (-684 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_010_eval

  · rcases h11 with ⟨htrace, hmargin⟩
    refine ⟨((563 : State), (-176 : Int)), ?_, acceptedTrace_011_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((563 : State), (-176 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_011_eval

  · rcases h12 with ⟨htrace, hmargin⟩
    refine ⟨((564 : State), (-396 : Int)), ?_, acceptedTrace_012_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((564 : State), (-396 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_012_eval

  · rcases h13 with ⟨htrace, hmargin⟩
    refine ⟨((565 : State), (-464 : Int)), ?_, acceptedTrace_013_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((565 : State), (-464 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_013_eval

  · rcases h14 with ⟨htrace, hmargin⟩
    refine ⟨((566 : State), (-684 : Int)), ?_, acceptedTrace_014_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((566 : State), (-684 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_014_eval

  · rcases h15 with ⟨htrace, hmargin⟩
    refine ⟨((567 : State), (-392 : Int)), ?_, acceptedTrace_015_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((567 : State), (-392 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_015_eval

  · rcases h16 with ⟨htrace, hmargin⟩
    refine ⟨((568 : State), (-612 : Int)), ?_, acceptedTrace_016_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((568 : State), (-612 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_016_eval

  · rcases h17 with ⟨htrace, hmargin⟩
    refine ⟨((569 : State), (-348 : Int)), ?_, acceptedTrace_017_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((569 : State), (-348 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_017_eval

  · rcases h18 with ⟨htrace, hmargin⟩
    refine ⟨((590 : State), (-552 : Int)), ?_, acceptedTrace_018_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((590 : State), (-552 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_018_eval

  · rcases h19 with ⟨htrace, hmargin⟩
    refine ⟨((591 : State), (-304 : Int)), ?_, acceptedTrace_019_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((591 : State), (-304 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_019_eval

  · rcases h20 with ⟨htrace, hmargin⟩
    refine ⟨((589 : State), (-568 : Int)), ?_, acceptedTrace_020_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((589 : State), (-568 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_020_eval

  · rcases h21 with ⟨htrace, hmargin⟩
    refine ⟨((587 : State), (-640 : Int)), ?_, acceptedTrace_021_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((587 : State), (-640 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_021_eval

  · rcases h22 with ⟨htrace, hmargin⟩
    refine ⟨((592 : State), (-352 : Int)), ?_, acceptedTrace_022_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((592 : State), (-352 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_022_eval

  · rcases h23 with ⟨htrace, hmargin⟩
    refine ⟨((593 : State), (-640 : Int)), ?_, acceptedTrace_023_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((593 : State), (-640 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_023_eval

  · rcases h24 with ⟨htrace, hmargin⟩
    refine ⟨((594 : State), (-568 : Int)), ?_, acceptedTrace_024_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((594 : State), (-568 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_024_eval

  · rcases h25 with ⟨htrace, hmargin⟩
    refine ⟨((596 : State), (-304 : Int)), ?_, acceptedTrace_025_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((596 : State), (-304 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_025_eval

  · rcases h26 with ⟨htrace, hmargin⟩
    refine ⟨((597 : State), (-304 : Int)), ?_, acceptedTrace_026_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((597 : State), (-304 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_026_eval

  · rcases h27 with ⟨htrace, hmargin⟩
    refine ⟨((602 : State), (-552 : Int)), ?_, acceptedTrace_027_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((602 : State), (-552 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_027_eval

  · rcases h28 with ⟨htrace, hmargin⟩
    refine ⟨((607 : State), (-552 : Int)), ?_, acceptedTrace_028_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((607 : State), (-552 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_028_eval

  · rcases h29 with ⟨htrace, hmargin⟩
    refine ⟨((601 : State), (-376 : Int)), ?_, acceptedTrace_029_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((601 : State), (-376 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_029_eval

  · rcases h30 with ⟨htrace, hmargin⟩
    refine ⟨((601 : State), (-376 : Int)), ?_, acceptedTrace_030_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((601 : State), (-376 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_030_eval

  · rcases h31 with ⟨htrace, hmargin⟩
    refine ⟨((600 : State), (-596 : Int)), ?_, acceptedTrace_031_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((600 : State), (-596 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_031_eval

  · rcases h32 with ⟨htrace, hmargin⟩
    refine ⟨((602 : State), (-552 : Int)), ?_, acceptedTrace_032_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((602 : State), (-552 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_032_eval

  · rcases h33 with ⟨htrace, hmargin⟩
    refine ⟨((607 : State), (-552 : Int)), ?_, acceptedTrace_033_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((607 : State), (-552 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_033_eval

  · rcases h34 with ⟨htrace, hmargin⟩
    refine ⟨((603 : State), (-376 : Int)), ?_, acceptedTrace_034_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((603 : State), (-376 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_034_eval

  · rcases h35 with ⟨htrace, hmargin⟩
    refine ⟨((604 : State), (-596 : Int)), ?_, acceptedTrace_035_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((604 : State), (-596 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_035_eval

  · rcases h36 with ⟨htrace, hmargin⟩
    refine ⟨((607 : State), (-552 : Int)), ?_, acceptedTrace_036_final_nonneg, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some ((607 : State), (-552 : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact acceptedTrace_036_eval


theorem gate_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
