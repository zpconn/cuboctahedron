import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated strengthened top-pairing Bellman transition shard.

This file checks scaled integer edge inequalities for one source-state
range of the strengthened closed-language graph.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard000

open Cuboctahedron
open Potential

def shardIndex : Nat := 0
def stateStart : Nat := 0
def stateStop : Nat := 64
def emittedEdgeCount : Nat := 75

def next : Nat -> Face -> Option (Nat × Int)
  | 0, Face.xm => some (142, (103 : Int))
  | 1, Face.tppp => some (29, (-36 : Int))
  | 2, Face.tppp => some (31, (-36 : Int))
  | 3, Face.tppp => some (32, (-36 : Int))
  | 4, Face.tppp => some (33, (-36 : Int))
  | 5, Face.tppp => some (34, (-36 : Int))
  | 6, Face.tppp => some (36, (-36 : Int))
  | 7, Face.zm => some (23, (-18 : Int))
  | 8, Face.zm => some (30, (-18 : Int))
  | 9, Face.tmpm => some (39, (96 : Int))
  | 10, Face.tmpm => some (40, (96 : Int))
  | 11, Face.tmpm => some (41, (96 : Int))
  | 12, Face.zm => some (37, (114 : Int))
  | 12, Face.tmmp => some (43, (-124 : Int))
  | 13, Face.zm => some (38, (114 : Int))
  | 13, Face.tmmp => some (44, (-124 : Int))
  | 14, Face.yp => some (23, (-117 : Int))
  | 14, Face.tmmp => some (45, (96 : Int))
  | 15, Face.yp => some (24, (-117 : Int))
  | 15, Face.tmmp => some (46, (96 : Int))
  | 16, Face.yp => some (25, (-117 : Int))
  | 16, Face.tmmp => some (47, (96 : Int))
  | 17, Face.yp => some (26, (-117 : Int))
  | 17, Face.tmmp => some (48, (96 : Int))
  | 18, Face.yp => some (27, (-117 : Int))
  | 18, Face.tmmp => some (49, (96 : Int))
  | 19, Face.yp => some (28, (-117 : Int))
  | 20, Face.yp => some (35, (-117 : Int))
  | 20, Face.tmmp => some (50, (96 : Int))
  | 21, Face.tmpm => some (52, (-124 : Int))
  | 22, Face.yp => some (42, (103 : Int))
  | 22, Face.zm => some (51, (-10 : Int))
  | 23, Face.tmpp => some (53, (96 : Int))
  | 24, Face.tmpp => some (55, (96 : Int))
  | 25, Face.tmpp => some (56, (96 : Int))
  | 26, Face.tmpp => some (57, (96 : Int))
  | 27, Face.tmpp => some (58, (96 : Int))
  | 28, Face.tmpp => some (59, (96 : Int))
  | 29, Face.tmpp => some (60, (96 : Int))
  | 30, Face.tmpp => some (61, (96 : Int))
  | 31, Face.tmpp => some (63, (96 : Int))
  | 32, Face.tmpp => some (64, (96 : Int))
  | 33, Face.tmpp => some (65, (96 : Int))
  | 34, Face.tmpp => some (67, (96 : Int))
  | 35, Face.tmpp => some (68, (96 : Int))
  | 36, Face.tmpp => some (69, (96 : Int))
  | 37, Face.zp => some (54, (114 : Int))
  | 38, Face.zp => some (62, (114 : Int))
  | 39, Face.zp => some (66, (114 : Int))
  | 40, Face.tmmm => some (73, (-124 : Int))
  | 41, Face.tmmm => some (75, (-124 : Int))
  | 42, Face.zm => some (70, (-10 : Int))
  | 43, Face.zm => some (71, (-10 : Int))
  | 44, Face.zm => some (72, (-10 : Int))
  | 45, Face.tmpp => some (76, (-124 : Int))
  | 46, Face.tmpp => some (78, (-124 : Int))
  | 47, Face.tmpp => some (79, (-124 : Int))
  | 48, Face.tmpp => some (80, (-124 : Int))
  | 49, Face.tmpp => some (81, (-124 : Int))
  | 50, Face.tmpp => some (83, (-124 : Int))
  | 51, Face.yp => some (70, (103 : Int))
  | 51, Face.zp => some (77, (-10 : Int))
  | 52, Face.yp => some (74, (103 : Int))
  | 52, Face.zp => some (82, (-10 : Int))
  | 53, Face.tmmp => some (85, (-124 : Int))
  | 54, Face.tmmp => some (88, (-124 : Int))
  | 55, Face.tmmp => some (90, (-124 : Int))
  | 56, Face.tmmp => some (92, (-124 : Int))
  | 57, Face.tmmp => some (94, (-124 : Int))
  | 58, Face.tmmp => some (96, (-124 : Int))
  | 59, Face.tmmp => some (97, (-124 : Int))
  | 60, Face.tmmp => some (98, (-124 : Int))
  | 61, Face.tmmp => some (99, (-124 : Int))
  | 62, Face.tmmp => some (101, (-124 : Int))
  | 63, Face.tmmp => some (102, (-124 : Int))
  | _, _ => none

theorem edge_0000_label_08 :
    next 0 Face.xm =
      some (142, (103 : Int)) /\
    (103 : Int) + graphPotential 142 <=
      graphPotential 0 := by
  constructor <;> decide

theorem edge_0001_label_07 :
    next 1 Face.tppp =
      some (29, (-36 : Int)) /\
    (-36 : Int) + graphPotential 29 <=
      graphPotential 1 := by
  constructor <;> decide

theorem edge_0002_label_07 :
    next 2 Face.tppp =
      some (31, (-36 : Int)) /\
    (-36 : Int) + graphPotential 31 <=
      graphPotential 2 := by
  constructor <;> decide

theorem edge_0003_label_07 :
    next 3 Face.tppp =
      some (32, (-36 : Int)) /\
    (-36 : Int) + graphPotential 32 <=
      graphPotential 3 := by
  constructor <;> decide

theorem edge_0004_label_07 :
    next 4 Face.tppp =
      some (33, (-36 : Int)) /\
    (-36 : Int) + graphPotential 33 <=
      graphPotential 4 := by
  constructor <;> decide

theorem edge_0005_label_07 :
    next 5 Face.tppp =
      some (34, (-36 : Int)) /\
    (-36 : Int) + graphPotential 34 <=
      graphPotential 5 := by
  constructor <;> decide

theorem edge_0006_label_07 :
    next 6 Face.tppp =
      some (36, (-36 : Int)) /\
    (-36 : Int) + graphPotential 36 <=
      graphPotential 6 := by
  constructor <;> decide

theorem edge_0007_label_12 :
    next 7 Face.zm =
      some (23, (-18 : Int)) /\
    (-18 : Int) + graphPotential 23 <=
      graphPotential 7 := by
  constructor <;> decide

theorem edge_0008_label_12 :
    next 8 Face.zm =
      some (30, (-18 : Int)) /\
    (-18 : Int) + graphPotential 30 <=
      graphPotential 8 := by
  constructor <;> decide

theorem edge_0009_label_02 :
    next 9 Face.tmpm =
      some (39, (96 : Int)) /\
    (96 : Int) + graphPotential 39 <=
      graphPotential 9 := by
  constructor <;> decide

theorem edge_0010_label_02 :
    next 10 Face.tmpm =
      some (40, (96 : Int)) /\
    (96 : Int) + graphPotential 40 <=
      graphPotential 10 := by
  constructor <;> decide

theorem edge_0011_label_02 :
    next 11 Face.tmpm =
      some (41, (96 : Int)) /\
    (96 : Int) + graphPotential 41 <=
      graphPotential 11 := by
  constructor <;> decide

theorem edge_0012_label_12 :
    next 12 Face.zm =
      some (37, (114 : Int)) /\
    (114 : Int) + graphPotential 37 <=
      graphPotential 12 := by
  constructor <;> decide

theorem edge_0013_label_01 :
    next 12 Face.tmmp =
      some (43, (-124 : Int)) /\
    (-124 : Int) + graphPotential 43 <=
      graphPotential 12 := by
  constructor <;> decide

theorem edge_0014_label_12 :
    next 13 Face.zm =
      some (38, (114 : Int)) /\
    (114 : Int) + graphPotential 38 <=
      graphPotential 13 := by
  constructor <;> decide

theorem edge_0015_label_01 :
    next 13 Face.tmmp =
      some (44, (-124 : Int)) /\
    (-124 : Int) + graphPotential 44 <=
      graphPotential 13 := by
  constructor <;> decide

theorem edge_0016_label_11 :
    next 14 Face.yp =
      some (23, (-117 : Int)) /\
    (-117 : Int) + graphPotential 23 <=
      graphPotential 14 := by
  constructor <;> decide

theorem edge_0017_label_01 :
    next 14 Face.tmmp =
      some (45, (96 : Int)) /\
    (96 : Int) + graphPotential 45 <=
      graphPotential 14 := by
  constructor <;> decide

theorem edge_0018_label_11 :
    next 15 Face.yp =
      some (24, (-117 : Int)) /\
    (-117 : Int) + graphPotential 24 <=
      graphPotential 15 := by
  constructor <;> decide

theorem edge_0019_label_01 :
    next 15 Face.tmmp =
      some (46, (96 : Int)) /\
    (96 : Int) + graphPotential 46 <=
      graphPotential 15 := by
  constructor <;> decide

theorem edge_0020_label_11 :
    next 16 Face.yp =
      some (25, (-117 : Int)) /\
    (-117 : Int) + graphPotential 25 <=
      graphPotential 16 := by
  constructor <;> decide

theorem edge_0021_label_01 :
    next 16 Face.tmmp =
      some (47, (96 : Int)) /\
    (96 : Int) + graphPotential 47 <=
      graphPotential 16 := by
  constructor <;> decide

theorem edge_0022_label_11 :
    next 17 Face.yp =
      some (26, (-117 : Int)) /\
    (-117 : Int) + graphPotential 26 <=
      graphPotential 17 := by
  constructor <;> decide

theorem edge_0023_label_01 :
    next 17 Face.tmmp =
      some (48, (96 : Int)) /\
    (96 : Int) + graphPotential 48 <=
      graphPotential 17 := by
  constructor <;> decide

theorem edge_0024_label_11 :
    next 18 Face.yp =
      some (27, (-117 : Int)) /\
    (-117 : Int) + graphPotential 27 <=
      graphPotential 18 := by
  constructor <;> decide

theorem edge_0025_label_01 :
    next 18 Face.tmmp =
      some (49, (96 : Int)) /\
    (96 : Int) + graphPotential 49 <=
      graphPotential 18 := by
  constructor <;> decide

theorem edge_0026_label_11 :
    next 19 Face.yp =
      some (28, (-117 : Int)) /\
    (-117 : Int) + graphPotential 28 <=
      graphPotential 19 := by
  constructor <;> decide

theorem edge_0027_label_11 :
    next 20 Face.yp =
      some (35, (-117 : Int)) /\
    (-117 : Int) + graphPotential 35 <=
      graphPotential 20 := by
  constructor <;> decide

theorem edge_0028_label_01 :
    next 20 Face.tmmp =
      some (50, (96 : Int)) /\
    (96 : Int) + graphPotential 50 <=
      graphPotential 20 := by
  constructor <;> decide

theorem edge_0029_label_02 :
    next 21 Face.tmpm =
      some (52, (-124 : Int)) /\
    (-124 : Int) + graphPotential 52 <=
      graphPotential 21 := by
  constructor <;> decide

theorem edge_0030_label_11 :
    next 22 Face.yp =
      some (42, (103 : Int)) /\
    (103 : Int) + graphPotential 42 <=
      graphPotential 22 := by
  constructor <;> decide

theorem edge_0031_label_12 :
    next 22 Face.zm =
      some (51, (-10 : Int)) /\
    (-10 : Int) + graphPotential 51 <=
      graphPotential 22 := by
  constructor <;> decide

theorem edge_0032_label_03 :
    next 23 Face.tmpp =
      some (53, (96 : Int)) /\
    (96 : Int) + graphPotential 53 <=
      graphPotential 23 := by
  constructor <;> decide

theorem edge_0033_label_03 :
    next 24 Face.tmpp =
      some (55, (96 : Int)) /\
    (96 : Int) + graphPotential 55 <=
      graphPotential 24 := by
  constructor <;> decide

theorem edge_0034_label_03 :
    next 25 Face.tmpp =
      some (56, (96 : Int)) /\
    (96 : Int) + graphPotential 56 <=
      graphPotential 25 := by
  constructor <;> decide

theorem edge_0035_label_03 :
    next 26 Face.tmpp =
      some (57, (96 : Int)) /\
    (96 : Int) + graphPotential 57 <=
      graphPotential 26 := by
  constructor <;> decide

theorem edge_0036_label_03 :
    next 27 Face.tmpp =
      some (58, (96 : Int)) /\
    (96 : Int) + graphPotential 58 <=
      graphPotential 27 := by
  constructor <;> decide

theorem edge_0037_label_03 :
    next 28 Face.tmpp =
      some (59, (96 : Int)) /\
    (96 : Int) + graphPotential 59 <=
      graphPotential 28 := by
  constructor <;> decide

theorem edge_0038_label_03 :
    next 29 Face.tmpp =
      some (60, (96 : Int)) /\
    (96 : Int) + graphPotential 60 <=
      graphPotential 29 := by
  constructor <;> decide

theorem edge_0039_label_03 :
    next 30 Face.tmpp =
      some (61, (96 : Int)) /\
    (96 : Int) + graphPotential 61 <=
      graphPotential 30 := by
  constructor <;> decide

theorem edge_0040_label_03 :
    next 31 Face.tmpp =
      some (63, (96 : Int)) /\
    (96 : Int) + graphPotential 63 <=
      graphPotential 31 := by
  constructor <;> decide

theorem edge_0041_label_03 :
    next 32 Face.tmpp =
      some (64, (96 : Int)) /\
    (96 : Int) + graphPotential 64 <=
      graphPotential 32 := by
  constructor <;> decide

theorem edge_0042_label_03 :
    next 33 Face.tmpp =
      some (65, (96 : Int)) /\
    (96 : Int) + graphPotential 65 <=
      graphPotential 33 := by
  constructor <;> decide

theorem edge_0043_label_03 :
    next 34 Face.tmpp =
      some (67, (96 : Int)) /\
    (96 : Int) + graphPotential 67 <=
      graphPotential 34 := by
  constructor <;> decide

theorem edge_0044_label_03 :
    next 35 Face.tmpp =
      some (68, (96 : Int)) /\
    (96 : Int) + graphPotential 68 <=
      graphPotential 35 := by
  constructor <;> decide

theorem edge_0045_label_03 :
    next 36 Face.tmpp =
      some (69, (96 : Int)) /\
    (96 : Int) + graphPotential 69 <=
      graphPotential 36 := by
  constructor <;> decide

theorem edge_0046_label_13 :
    next 37 Face.zp =
      some (54, (114 : Int)) /\
    (114 : Int) + graphPotential 54 <=
      graphPotential 37 := by
  constructor <;> decide

theorem edge_0047_label_13 :
    next 38 Face.zp =
      some (62, (114 : Int)) /\
    (114 : Int) + graphPotential 62 <=
      graphPotential 38 := by
  constructor <;> decide

theorem edge_0048_label_13 :
    next 39 Face.zp =
      some (66, (114 : Int)) /\
    (114 : Int) + graphPotential 66 <=
      graphPotential 39 := by
  constructor <;> decide

theorem edge_0049_label_00 :
    next 40 Face.tmmm =
      some (73, (-124 : Int)) /\
    (-124 : Int) + graphPotential 73 <=
      graphPotential 40 := by
  constructor <;> decide

theorem edge_0050_label_00 :
    next 41 Face.tmmm =
      some (75, (-124 : Int)) /\
    (-124 : Int) + graphPotential 75 <=
      graphPotential 41 := by
  constructor <;> decide

theorem edge_0051_label_12 :
    next 42 Face.zm =
      some (70, (-10 : Int)) /\
    (-10 : Int) + graphPotential 70 <=
      graphPotential 42 := by
  constructor <;> decide

theorem edge_0052_label_12 :
    next 43 Face.zm =
      some (71, (-10 : Int)) /\
    (-10 : Int) + graphPotential 71 <=
      graphPotential 43 := by
  constructor <;> decide

theorem edge_0053_label_12 :
    next 44 Face.zm =
      some (72, (-10 : Int)) /\
    (-10 : Int) + graphPotential 72 <=
      graphPotential 44 := by
  constructor <;> decide

theorem edge_0054_label_03 :
    next 45 Face.tmpp =
      some (76, (-124 : Int)) /\
    (-124 : Int) + graphPotential 76 <=
      graphPotential 45 := by
  constructor <;> decide

theorem edge_0055_label_03 :
    next 46 Face.tmpp =
      some (78, (-124 : Int)) /\
    (-124 : Int) + graphPotential 78 <=
      graphPotential 46 := by
  constructor <;> decide

theorem edge_0056_label_03 :
    next 47 Face.tmpp =
      some (79, (-124 : Int)) /\
    (-124 : Int) + graphPotential 79 <=
      graphPotential 47 := by
  constructor <;> decide

theorem edge_0057_label_03 :
    next 48 Face.tmpp =
      some (80, (-124 : Int)) /\
    (-124 : Int) + graphPotential 80 <=
      graphPotential 48 := by
  constructor <;> decide

theorem edge_0058_label_03 :
    next 49 Face.tmpp =
      some (81, (-124 : Int)) /\
    (-124 : Int) + graphPotential 81 <=
      graphPotential 49 := by
  constructor <;> decide

theorem edge_0059_label_03 :
    next 50 Face.tmpp =
      some (83, (-124 : Int)) /\
    (-124 : Int) + graphPotential 83 <=
      graphPotential 50 := by
  constructor <;> decide

theorem edge_0060_label_11 :
    next 51 Face.yp =
      some (70, (103 : Int)) /\
    (103 : Int) + graphPotential 70 <=
      graphPotential 51 := by
  constructor <;> decide

theorem edge_0061_label_13 :
    next 51 Face.zp =
      some (77, (-10 : Int)) /\
    (-10 : Int) + graphPotential 77 <=
      graphPotential 51 := by
  constructor <;> decide

theorem edge_0062_label_11 :
    next 52 Face.yp =
      some (74, (103 : Int)) /\
    (103 : Int) + graphPotential 74 <=
      graphPotential 52 := by
  constructor <;> decide

theorem edge_0063_label_13 :
    next 52 Face.zp =
      some (82, (-10 : Int)) /\
    (-10 : Int) + graphPotential 82 <=
      graphPotential 52 := by
  constructor <;> decide

theorem edge_0064_label_01 :
    next 53 Face.tmmp =
      some (85, (-124 : Int)) /\
    (-124 : Int) + graphPotential 85 <=
      graphPotential 53 := by
  constructor <;> decide

theorem edge_0065_label_01 :
    next 54 Face.tmmp =
      some (88, (-124 : Int)) /\
    (-124 : Int) + graphPotential 88 <=
      graphPotential 54 := by
  constructor <;> decide

theorem edge_0066_label_01 :
    next 55 Face.tmmp =
      some (90, (-124 : Int)) /\
    (-124 : Int) + graphPotential 90 <=
      graphPotential 55 := by
  constructor <;> decide

theorem edge_0067_label_01 :
    next 56 Face.tmmp =
      some (92, (-124 : Int)) /\
    (-124 : Int) + graphPotential 92 <=
      graphPotential 56 := by
  constructor <;> decide

theorem edge_0068_label_01 :
    next 57 Face.tmmp =
      some (94, (-124 : Int)) /\
    (-124 : Int) + graphPotential 94 <=
      graphPotential 57 := by
  constructor <;> decide

theorem edge_0069_label_01 :
    next 58 Face.tmmp =
      some (96, (-124 : Int)) /\
    (-124 : Int) + graphPotential 96 <=
      graphPotential 58 := by
  constructor <;> decide

theorem edge_0070_label_01 :
    next 59 Face.tmmp =
      some (97, (-124 : Int)) /\
    (-124 : Int) + graphPotential 97 <=
      graphPotential 59 := by
  constructor <;> decide

theorem edge_0071_label_01 :
    next 60 Face.tmmp =
      some (98, (-124 : Int)) /\
    (-124 : Int) + graphPotential 98 <=
      graphPotential 60 := by
  constructor <;> decide

theorem edge_0072_label_01 :
    next 61 Face.tmmp =
      some (99, (-124 : Int)) /\
    (-124 : Int) + graphPotential 99 <=
      graphPotential 61 := by
  constructor <;> decide

theorem edge_0073_label_01 :
    next 62 Face.tmmp =
      some (101, (-124 : Int)) /\
    (-124 : Int) + graphPotential 101 <=
      graphPotential 62 := by
  constructor <;> decide

theorem edge_0074_label_01 :
    next 63 Face.tmmp =
      some (102, (-124 : Int)) /\
    (-124 : Int) + graphPotential 102 <=
      graphPotential 63 := by
  constructor <;> decide

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard000
