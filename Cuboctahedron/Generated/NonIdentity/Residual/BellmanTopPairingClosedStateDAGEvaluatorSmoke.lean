import Cuboctahedron.Search.BellmanPotential
import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator smoke.

This bounded module exercises the next production shape after the
closed-language audit: a deterministic state-DAG evaluator over face
labels.  It is not coverage evidence and it does not use sampled ranks,
selected prefixes, accepted trace ids, exact affine RHS keys, or solved
start-point keys.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGEvaluatorSmoke

open Cuboctahedron

def closedDAGProfileStateCount : Nat := 5347
def closedDAGProfileEdgeCount : Nat := 6089
def closedDAGProfileClosedPathCount : Nat := 47
def emittedClosedDAGEdgeCount : Nat := 64

/-- Bounded semantic state-DAG next function.  Gains are zero in this
smoke; production will replace them with the Bellman margin gains. -/
def closedDAGNext : Nat -> Face -> Option (Nat × Int)
  | 0, Face.xm => some (1, (0 : Int))
  | 1, Face.ym => some (2, (0 : Int))
  | 2, Face.tmpm => some (3, (0 : Int))
  | 2, Face.yp => some (2022, (0 : Int))
  | 2, Face.zm => some (4583, (0 : Int))
  | 3, Face.tppm => some (4, (0 : Int))
  | 3, Face.zm => some (1230, (0 : Int))
  | 4, Face.tmmp => some (5, (0 : Int))
  | 4, Face.tpmm => some (444, (0 : Int))
  | 4, Face.zp => some (921, (0 : Int))
  | 5, Face.tpmp => some (6, (0 : Int))
  | 5, Face.tppp => some (134, (0 : Int))
  | 5, Face.zm => some (337, (0 : Int))
  | 6, Face.tmmm => some (7, (0 : Int))
  | 6, Face.tpmm => some (60, (0 : Int))
  | 6, Face.zm => some (113, (0 : Int))
  | 7, Face.tpmm => some (8, (0 : Int))
  | 7, Face.tppp => some (33, (0 : Int))
  | 7, Face.zm => some (49, (0 : Int))
  | 8, Face.tmpp => some (9, (0 : Int))
  | 8, Face.tppp => some (13, (0 : Int))
  | 8, Face.yp => some (21, (0 : Int))
  | 8, Face.zm => some (24, (0 : Int))
  | 9, Face.zm => some (10, (0 : Int))
  | 10, Face.tppp => some (11, (0 : Int))
  | 11, Face.zm => some (12, (0 : Int))
  | 13, Face.tmpp => some (14, (0 : Int))
  | 13, Face.zm => some (20, (0 : Int))
  | 14, Face.yp => some (15, (0 : Int))
  | 14, Face.zm => some (18, (0 : Int))
  | 15, Face.zm => some (16, (0 : Int))
  | 16, Face.zp => some (17, (0 : Int))
  | 18, Face.yp => some (16, (0 : Int))
  | 18, Face.zp => some (19, (0 : Int))
  | 19, Face.yp => some (17, (0 : Int))
  | 21, Face.tmmm => some (22, (0 : Int))
  | 21, Face.zm => some (23, (0 : Int))
  | 24, Face.tmpp => some (25, (0 : Int))
  | 24, Face.yp => some (23, (0 : Int))
  | 24, Face.zp => some (29, (0 : Int))
  | 25, Face.tppp => some (26, (0 : Int))
  | 25, Face.zm => some (28, (0 : Int))
  | 26, Face.zm => some (27, (0 : Int))
  | 29, Face.tppp => some (30, (0 : Int))
  | 29, Face.yp => some (31, (0 : Int))
  | 30, Face.tmpp => some (19, (0 : Int))
  | 31, Face.tmmm => some (32, (0 : Int))
  | 33, Face.tpmm => some (34, (0 : Int))
  | 33, Face.yp => some (43, (0 : Int))
  | 33, Face.zm => some (45, (0 : Int))
  | 34, Face.tmpp => some (35, (0 : Int))
  | 34, Face.zm => some (42, (0 : Int))
  | 35, Face.yp => some (36, (0 : Int))
  | 35, Face.zm => some (40, (0 : Int))
  | 36, Face.zm => some (37, (0 : Int))
  | 37, Face.zp => some (38, (0 : Int))
  | 38, Face.xp => some (39, (0 : Int))
  | 40, Face.yp => some (37, (0 : Int))
  | 40, Face.zp => some (41, (0 : Int))
  | 41, Face.yp => some (38, (0 : Int))
  | 43, Face.zm => some (44, (0 : Int))
  | 45, Face.tmpp => some (46, (0 : Int))
  | 45, Face.yp => some (44, (0 : Int))
  | 45, Face.zp => some (47, (0 : Int))
  | _, _ => none

/-- Suffix evidence for the bounded evaluator table. -/
inductive ClosedDAGSuffixOk : Nat -> List Face -> Prop
  | nil (state : Nat) : ClosedDAGSuffixOk state []
  | cons {state nextState : Nat} {face : Face} {gain : Int}
      {rest : List Face}
      (hnext : closedDAGNext state face = some (nextState, gain))
      (hrest : ClosedDAGSuffixOk nextState rest) :
      ClosedDAGSuffixOk state (face :: rest)

theorem evalLabelStepFn_exists_of_closedDAGSuffixOk
    {state : Nat} {labels : List Face}
    (h : ClosedDAGSuffixOk state labels) :
    exists finish gain,
      evalLabelStepFn closedDAGNext state labels = some (finish, gain) := by
  induction h with
  | nil state =>
      exact ⟨state, 0, by simp [evalLabelStepFn]⟩
  | cons hnext _hrest ih =>
      rename_i _ _ _ gain _
      rcases ih with ⟨finish, tailGain, htail⟩
      refine ⟨finish, gain + tailGain, ?_⟩
      simp [evalLabelStepFn, hnext, htail]

theorem closed_dag_edge_0000_s0000_xm :
    closedDAGNext 0 Face.xm =
      some (1, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0001_s0001_ym :
    closedDAGNext 1 Face.ym =
      some (2, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0002_s0002_tmpm :
    closedDAGNext 2 Face.tmpm =
      some (3, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0003_s0002_yp :
    closedDAGNext 2 Face.yp =
      some (2022, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0004_s0002_zm :
    closedDAGNext 2 Face.zm =
      some (4583, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0005_s0003_tppm :
    closedDAGNext 3 Face.tppm =
      some (4, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0006_s0003_zm :
    closedDAGNext 3 Face.zm =
      some (1230, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0007_s0004_tmmp :
    closedDAGNext 4 Face.tmmp =
      some (5, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0008_s0004_tpmm :
    closedDAGNext 4 Face.tpmm =
      some (444, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0009_s0004_zp :
    closedDAGNext 4 Face.zp =
      some (921, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0010_s0005_tpmp :
    closedDAGNext 5 Face.tpmp =
      some (6, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0011_s0005_tppp :
    closedDAGNext 5 Face.tppp =
      some (134, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0012_s0005_zm :
    closedDAGNext 5 Face.zm =
      some (337, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0013_s0006_tmmm :
    closedDAGNext 6 Face.tmmm =
      some (7, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0014_s0006_tpmm :
    closedDAGNext 6 Face.tpmm =
      some (60, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0015_s0006_zm :
    closedDAGNext 6 Face.zm =
      some (113, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0016_s0007_tpmm :
    closedDAGNext 7 Face.tpmm =
      some (8, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0017_s0007_tppp :
    closedDAGNext 7 Face.tppp =
      some (33, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0018_s0007_zm :
    closedDAGNext 7 Face.zm =
      some (49, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0019_s0008_tmpp :
    closedDAGNext 8 Face.tmpp =
      some (9, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0020_s0008_tppp :
    closedDAGNext 8 Face.tppp =
      some (13, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0021_s0008_yp :
    closedDAGNext 8 Face.yp =
      some (21, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0022_s0008_zm :
    closedDAGNext 8 Face.zm =
      some (24, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0023_s0009_zm :
    closedDAGNext 9 Face.zm =
      some (10, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0024_s0010_tppp :
    closedDAGNext 10 Face.tppp =
      some (11, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0025_s0011_zm :
    closedDAGNext 11 Face.zm =
      some (12, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0026_s0013_tmpp :
    closedDAGNext 13 Face.tmpp =
      some (14, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0027_s0013_zm :
    closedDAGNext 13 Face.zm =
      some (20, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0028_s0014_yp :
    closedDAGNext 14 Face.yp =
      some (15, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0029_s0014_zm :
    closedDAGNext 14 Face.zm =
      some (18, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0030_s0015_zm :
    closedDAGNext 15 Face.zm =
      some (16, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0031_s0016_zp :
    closedDAGNext 16 Face.zp =
      some (17, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0032_s0018_yp :
    closedDAGNext 18 Face.yp =
      some (16, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0033_s0018_zp :
    closedDAGNext 18 Face.zp =
      some (19, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0034_s0019_yp :
    closedDAGNext 19 Face.yp =
      some (17, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0035_s0021_tmmm :
    closedDAGNext 21 Face.tmmm =
      some (22, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0036_s0021_zm :
    closedDAGNext 21 Face.zm =
      some (23, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0037_s0024_tmpp :
    closedDAGNext 24 Face.tmpp =
      some (25, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0038_s0024_yp :
    closedDAGNext 24 Face.yp =
      some (23, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0039_s0024_zp :
    closedDAGNext 24 Face.zp =
      some (29, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0040_s0025_tppp :
    closedDAGNext 25 Face.tppp =
      some (26, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0041_s0025_zm :
    closedDAGNext 25 Face.zm =
      some (28, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0042_s0026_zm :
    closedDAGNext 26 Face.zm =
      some (27, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0043_s0029_tppp :
    closedDAGNext 29 Face.tppp =
      some (30, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0044_s0029_yp :
    closedDAGNext 29 Face.yp =
      some (31, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0045_s0030_tmpp :
    closedDAGNext 30 Face.tmpp =
      some (19, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0046_s0031_tmmm :
    closedDAGNext 31 Face.tmmm =
      some (32, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0047_s0033_tpmm :
    closedDAGNext 33 Face.tpmm =
      some (34, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0048_s0033_yp :
    closedDAGNext 33 Face.yp =
      some (43, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0049_s0033_zm :
    closedDAGNext 33 Face.zm =
      some (45, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0050_s0034_tmpp :
    closedDAGNext 34 Face.tmpp =
      some (35, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0051_s0034_zm :
    closedDAGNext 34 Face.zm =
      some (42, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0052_s0035_yp :
    closedDAGNext 35 Face.yp =
      some (36, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0053_s0035_zm :
    closedDAGNext 35 Face.zm =
      some (40, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0054_s0036_zm :
    closedDAGNext 36 Face.zm =
      some (37, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0055_s0037_zp :
    closedDAGNext 37 Face.zp =
      some (38, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0056_s0038_xp :
    closedDAGNext 38 Face.xp =
      some (39, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0057_s0040_yp :
    closedDAGNext 40 Face.yp =
      some (37, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0058_s0040_zp :
    closedDAGNext 40 Face.zp =
      some (41, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0059_s0041_yp :
    closedDAGNext 41 Face.yp =
      some (38, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0060_s0043_zm :
    closedDAGNext 43 Face.zm =
      some (44, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0061_s0045_tmpp :
    closedDAGNext 45 Face.tmpp =
      some (46, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0062_s0045_yp :
    closedDAGNext 45 Face.yp =
      some (44, (0 : Int)) := by
  rfl

theorem closed_dag_edge_0063_s0045_zp :
    closedDAGNext 45 Face.zp =
      some (47, (0 : Int)) := by
  rfl

/-- A tiny evaluator smoke over the first closed-language DAG prefix. -/
theorem closedDAGPrefix4_eval :
    evalLabelStepFn closedDAGNext 0 [Face.xm, Face.ym, Face.tmpm, Face.tppm] =
      some (4, (0 : Int)) := by
  rfl

theorem closedStateDAGEvaluatorSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGEvaluatorSmoke
