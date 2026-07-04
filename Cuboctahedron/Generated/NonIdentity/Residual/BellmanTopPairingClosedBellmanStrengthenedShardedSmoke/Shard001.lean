import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated strengthened top-pairing Bellman transition shard.

This file checks scaled integer edge inequalities for one source-state
range of the strengthened closed-language graph.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard001

open Cuboctahedron
open Potential

def shardIndex : Nat := 1
def stateStart : Nat := 64
def stateStop : Nat := 128
def emittedEdgeCount : Nat := 49

def next : Nat -> Face -> Option (Nat × Int)
  | 64, Face.tmmp => some (103, (-124 : Int))
  | 65, Face.tmmp => some (104, (-124 : Int))
  | 66, Face.tmmp => some (105, (-124 : Int))
  | 67, Face.tmmp => some (106, (-124 : Int))
  | 68, Face.tmmp => some (111, (-124 : Int))
  | 69, Face.tmmp => some (112, (-124 : Int))
  | 70, Face.zp => some (86, (-10 : Int))
  | 71, Face.zp => some (87, (-10 : Int))
  | 72, Face.zp => some (100, (-10 : Int))
  | 73, Face.zp => some (107, (-10 : Int))
  | 74, Face.zp => some (108, (-10 : Int))
  | 75, Face.zp => some (109, (-10 : Int))
  | 76, Face.yp => some (84, (103 : Int))
  | 77, Face.yp => some (86, (103 : Int))
  | 78, Face.yp => some (89, (103 : Int))
  | 79, Face.yp => some (91, (103 : Int))
  | 80, Face.yp => some (93, (103 : Int))
  | 81, Face.yp => some (95, (103 : Int))
  | 82, Face.yp => some (108, (103 : Int))
  | 83, Face.yp => some (110, (103 : Int))
  | 84, Face.xp => some (113, (-73 : Int))
  | 85, Face.xp => some (114, (-73 : Int))
  | 86, Face.xp => some (115, (-73 : Int))
  | 87, Face.xp => some (116, (-73 : Int))
  | 88, Face.xp => some (117, (-73 : Int))
  | 89, Face.xp => some (118, (-73 : Int))
  | 90, Face.xp => some (119, (-73 : Int))
  | 91, Face.xp => some (120, (-73 : Int))
  | 92, Face.xp => some (121, (-73 : Int))
  | 93, Face.xp => some (122, (-73 : Int))
  | 94, Face.xp => some (123, (-73 : Int))
  | 95, Face.xp => some (124, (-73 : Int))
  | 96, Face.xp => some (125, (-73 : Int))
  | 97, Face.xp => some (126, (-73 : Int))
  | 98, Face.xp => some (127, (-73 : Int))
  | 99, Face.xp => some (128, (-73 : Int))
  | 100, Face.xp => some (129, (-73 : Int))
  | 101, Face.xp => some (130, (-73 : Int))
  | 102, Face.xp => some (131, (-73 : Int))
  | 103, Face.xp => some (132, (-73 : Int))
  | 104, Face.xp => some (133, (-73 : Int))
  | 105, Face.xp => some (134, (-73 : Int))
  | 106, Face.xp => some (135, (-73 : Int))
  | 107, Face.xp => some (136, (-73 : Int))
  | 108, Face.xp => some (137, (-73 : Int))
  | 109, Face.xp => some (138, (-73 : Int))
  | 110, Face.xp => some (139, (-73 : Int))
  | 111, Face.xp => some (140, (-73 : Int))
  | 112, Face.xp => some (141, (-73 : Int))
  | _, _ => none

theorem edge_0075_label_01 :
    next 64 Face.tmmp =
      some (103, (-124 : Int)) /\
    (-124 : Int) + graphPotential 103 <=
      graphPotential 64 := by
  constructor <;> decide

theorem edge_0076_label_01 :
    next 65 Face.tmmp =
      some (104, (-124 : Int)) /\
    (-124 : Int) + graphPotential 104 <=
      graphPotential 65 := by
  constructor <;> decide

theorem edge_0077_label_01 :
    next 66 Face.tmmp =
      some (105, (-124 : Int)) /\
    (-124 : Int) + graphPotential 105 <=
      graphPotential 66 := by
  constructor <;> decide

theorem edge_0078_label_01 :
    next 67 Face.tmmp =
      some (106, (-124 : Int)) /\
    (-124 : Int) + graphPotential 106 <=
      graphPotential 67 := by
  constructor <;> decide

theorem edge_0079_label_01 :
    next 68 Face.tmmp =
      some (111, (-124 : Int)) /\
    (-124 : Int) + graphPotential 111 <=
      graphPotential 68 := by
  constructor <;> decide

theorem edge_0080_label_01 :
    next 69 Face.tmmp =
      some (112, (-124 : Int)) /\
    (-124 : Int) + graphPotential 112 <=
      graphPotential 69 := by
  constructor <;> decide

theorem edge_0081_label_13 :
    next 70 Face.zp =
      some (86, (-10 : Int)) /\
    (-10 : Int) + graphPotential 86 <=
      graphPotential 70 := by
  constructor <;> decide

theorem edge_0082_label_13 :
    next 71 Face.zp =
      some (87, (-10 : Int)) /\
    (-10 : Int) + graphPotential 87 <=
      graphPotential 71 := by
  constructor <;> decide

theorem edge_0083_label_13 :
    next 72 Face.zp =
      some (100, (-10 : Int)) /\
    (-10 : Int) + graphPotential 100 <=
      graphPotential 72 := by
  constructor <;> decide

theorem edge_0084_label_13 :
    next 73 Face.zp =
      some (107, (-10 : Int)) /\
    (-10 : Int) + graphPotential 107 <=
      graphPotential 73 := by
  constructor <;> decide

theorem edge_0085_label_13 :
    next 74 Face.zp =
      some (108, (-10 : Int)) /\
    (-10 : Int) + graphPotential 108 <=
      graphPotential 74 := by
  constructor <;> decide

theorem edge_0086_label_13 :
    next 75 Face.zp =
      some (109, (-10 : Int)) /\
    (-10 : Int) + graphPotential 109 <=
      graphPotential 75 := by
  constructor <;> decide

theorem edge_0087_label_11 :
    next 76 Face.yp =
      some (84, (103 : Int)) /\
    (103 : Int) + graphPotential 84 <=
      graphPotential 76 := by
  constructor <;> decide

theorem edge_0088_label_11 :
    next 77 Face.yp =
      some (86, (103 : Int)) /\
    (103 : Int) + graphPotential 86 <=
      graphPotential 77 := by
  constructor <;> decide

theorem edge_0089_label_11 :
    next 78 Face.yp =
      some (89, (103 : Int)) /\
    (103 : Int) + graphPotential 89 <=
      graphPotential 78 := by
  constructor <;> decide

theorem edge_0090_label_11 :
    next 79 Face.yp =
      some (91, (103 : Int)) /\
    (103 : Int) + graphPotential 91 <=
      graphPotential 79 := by
  constructor <;> decide

theorem edge_0091_label_11 :
    next 80 Face.yp =
      some (93, (103 : Int)) /\
    (103 : Int) + graphPotential 93 <=
      graphPotential 80 := by
  constructor <;> decide

theorem edge_0092_label_11 :
    next 81 Face.yp =
      some (95, (103 : Int)) /\
    (103 : Int) + graphPotential 95 <=
      graphPotential 81 := by
  constructor <;> decide

theorem edge_0093_label_11 :
    next 82 Face.yp =
      some (108, (103 : Int)) /\
    (103 : Int) + graphPotential 108 <=
      graphPotential 82 := by
  constructor <;> decide

theorem edge_0094_label_11 :
    next 83 Face.yp =
      some (110, (103 : Int)) /\
    (103 : Int) + graphPotential 110 <=
      graphPotential 83 := by
  constructor <;> decide

theorem edge_0095_label_09 :
    next 84 Face.xp =
      some (113, (-73 : Int)) /\
    (-73 : Int) + graphPotential 113 <=
      graphPotential 84 := by
  constructor <;> decide

theorem edge_0096_label_09 :
    next 85 Face.xp =
      some (114, (-73 : Int)) /\
    (-73 : Int) + graphPotential 114 <=
      graphPotential 85 := by
  constructor <;> decide

theorem edge_0097_label_09 :
    next 86 Face.xp =
      some (115, (-73 : Int)) /\
    (-73 : Int) + graphPotential 115 <=
      graphPotential 86 := by
  constructor <;> decide

theorem edge_0098_label_09 :
    next 87 Face.xp =
      some (116, (-73 : Int)) /\
    (-73 : Int) + graphPotential 116 <=
      graphPotential 87 := by
  constructor <;> decide

theorem edge_0099_label_09 :
    next 88 Face.xp =
      some (117, (-73 : Int)) /\
    (-73 : Int) + graphPotential 117 <=
      graphPotential 88 := by
  constructor <;> decide

theorem edge_0100_label_09 :
    next 89 Face.xp =
      some (118, (-73 : Int)) /\
    (-73 : Int) + graphPotential 118 <=
      graphPotential 89 := by
  constructor <;> decide

theorem edge_0101_label_09 :
    next 90 Face.xp =
      some (119, (-73 : Int)) /\
    (-73 : Int) + graphPotential 119 <=
      graphPotential 90 := by
  constructor <;> decide

theorem edge_0102_label_09 :
    next 91 Face.xp =
      some (120, (-73 : Int)) /\
    (-73 : Int) + graphPotential 120 <=
      graphPotential 91 := by
  constructor <;> decide

theorem edge_0103_label_09 :
    next 92 Face.xp =
      some (121, (-73 : Int)) /\
    (-73 : Int) + graphPotential 121 <=
      graphPotential 92 := by
  constructor <;> decide

theorem edge_0104_label_09 :
    next 93 Face.xp =
      some (122, (-73 : Int)) /\
    (-73 : Int) + graphPotential 122 <=
      graphPotential 93 := by
  constructor <;> decide

theorem edge_0105_label_09 :
    next 94 Face.xp =
      some (123, (-73 : Int)) /\
    (-73 : Int) + graphPotential 123 <=
      graphPotential 94 := by
  constructor <;> decide

theorem edge_0106_label_09 :
    next 95 Face.xp =
      some (124, (-73 : Int)) /\
    (-73 : Int) + graphPotential 124 <=
      graphPotential 95 := by
  constructor <;> decide

theorem edge_0107_label_09 :
    next 96 Face.xp =
      some (125, (-73 : Int)) /\
    (-73 : Int) + graphPotential 125 <=
      graphPotential 96 := by
  constructor <;> decide

theorem edge_0108_label_09 :
    next 97 Face.xp =
      some (126, (-73 : Int)) /\
    (-73 : Int) + graphPotential 126 <=
      graphPotential 97 := by
  constructor <;> decide

theorem edge_0109_label_09 :
    next 98 Face.xp =
      some (127, (-73 : Int)) /\
    (-73 : Int) + graphPotential 127 <=
      graphPotential 98 := by
  constructor <;> decide

theorem edge_0110_label_09 :
    next 99 Face.xp =
      some (128, (-73 : Int)) /\
    (-73 : Int) + graphPotential 128 <=
      graphPotential 99 := by
  constructor <;> decide

theorem edge_0111_label_09 :
    next 100 Face.xp =
      some (129, (-73 : Int)) /\
    (-73 : Int) + graphPotential 129 <=
      graphPotential 100 := by
  constructor <;> decide

theorem edge_0112_label_09 :
    next 101 Face.xp =
      some (130, (-73 : Int)) /\
    (-73 : Int) + graphPotential 130 <=
      graphPotential 101 := by
  constructor <;> decide

theorem edge_0113_label_09 :
    next 102 Face.xp =
      some (131, (-73 : Int)) /\
    (-73 : Int) + graphPotential 131 <=
      graphPotential 102 := by
  constructor <;> decide

theorem edge_0114_label_09 :
    next 103 Face.xp =
      some (132, (-73 : Int)) /\
    (-73 : Int) + graphPotential 132 <=
      graphPotential 103 := by
  constructor <;> decide

theorem edge_0115_label_09 :
    next 104 Face.xp =
      some (133, (-73 : Int)) /\
    (-73 : Int) + graphPotential 133 <=
      graphPotential 104 := by
  constructor <;> decide

theorem edge_0116_label_09 :
    next 105 Face.xp =
      some (134, (-73 : Int)) /\
    (-73 : Int) + graphPotential 134 <=
      graphPotential 105 := by
  constructor <;> decide

theorem edge_0117_label_09 :
    next 106 Face.xp =
      some (135, (-73 : Int)) /\
    (-73 : Int) + graphPotential 135 <=
      graphPotential 106 := by
  constructor <;> decide

theorem edge_0118_label_09 :
    next 107 Face.xp =
      some (136, (-73 : Int)) /\
    (-73 : Int) + graphPotential 136 <=
      graphPotential 107 := by
  constructor <;> decide

theorem edge_0119_label_09 :
    next 108 Face.xp =
      some (137, (-73 : Int)) /\
    (-73 : Int) + graphPotential 137 <=
      graphPotential 108 := by
  constructor <;> decide

theorem edge_0120_label_09 :
    next 109 Face.xp =
      some (138, (-73 : Int)) /\
    (-73 : Int) + graphPotential 138 <=
      graphPotential 109 := by
  constructor <;> decide

theorem edge_0121_label_09 :
    next 110 Face.xp =
      some (139, (-73 : Int)) /\
    (-73 : Int) + graphPotential 139 <=
      graphPotential 110 := by
  constructor <;> decide

theorem edge_0122_label_09 :
    next 111 Face.xp =
      some (140, (-73 : Int)) /\
    (-73 : Int) + graphPotential 140 <=
      graphPotential 111 := by
  constructor <;> decide

theorem edge_0123_label_09 :
    next 112 Face.xp =
      some (141, (-73 : Int)) /\
    (-73 : Int) + graphPotential 141 <=
      graphPotential 112 := by
  constructor <;> decide

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard001
