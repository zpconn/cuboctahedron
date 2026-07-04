import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated strengthened top-pairing Bellman transition shard.

This file checks scaled integer edge inequalities for one source-state
range of the strengthened closed-language graph.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard003

open Cuboctahedron
open Potential

def shardIndex : Nat := 3
def stateStart : Nat := 192
def stateStop : Nat := 223
def emittedEdgeCount : Nat := 38

def next : Nat -> Face -> Option (Nat × Int)
  | 192, Face.tmpp => some (209, (-144 : Int))
  | 193, Face.zm => some (204, (90 : Int))
  | 194, Face.tmpp => some (211, (-144 : Int))
  | 195, Face.zp => some (210, (-54 : Int))
  | 195, Face.tppp => some (213, (-36 : Int))
  | 196, Face.tmmm => some (215, (-144 : Int))
  | 197, Face.tmmm => some (216, (-144 : Int))
  | 198, Face.tmmm => some (217, (-144 : Int))
  | 199, Face.tmmm => some (218, (-144 : Int))
  | 200, Face.tmmm => some (219, (-144 : Int))
  | 201, Face.zm => some (214, (-54 : Int))
  | 202, Face.tpmm => some (221, (-36 : Int))
  | 203, Face.yp => some (212, (-117 : Int))
  | 203, Face.zp => some (220, (-18 : Int))
  | 203, Face.tmmp => some (222, (96 : Int))
  | 204, Face.tmpm => some (2, (-144 : Int))
  | 205, Face.tmpm => some (3, (-144 : Int))
  | 206, Face.tmpm => some (4, (-144 : Int))
  | 207, Face.tmpm => some (5, (-144 : Int))
  | 208, Face.tmpm => some (6, (-144 : Int))
  | 209, Face.tppm => some (9, (-36 : Int))
  | 210, Face.zm => some (1, (-54 : Int))
  | 211, Face.tppm => some (11, (-36 : Int))
  | 212, Face.zp => some (7, (-18 : Int))
  | 212, Face.tmpp => some (12, (96 : Int))
  | 213, Face.zp => some (8, (-18 : Int))
  | 213, Face.tmpp => some (13, (96 : Int))
  | 214, Face.tpmp => some (15, (-36 : Int))
  | 215, Face.tpmp => some (16, (-36 : Int))
  | 216, Face.tpmp => some (17, (-36 : Int))
  | 217, Face.tpmp => some (18, (-36 : Int))
  | 218, Face.tpmp => some (19, (-36 : Int))
  | 219, Face.tpmp => some (20, (-36 : Int))
  | 220, Face.yp => some (7, (-117 : Int))
  | 220, Face.zm => some (14, (-18 : Int))
  | 221, Face.yp => some (10, (-117 : Int))
  | 221, Face.tmmm => some (21, (96 : Int))
  | 222, Face.tmpp => some (22, (-124 : Int))
  | _, _ => none

theorem edge_0191_label_03 :
    next 192 Face.tmpp =
      some (209, (-144 : Int)) /\
    (-144 : Int) + graphPotential 209 <=
      graphPotential 192 := by
  constructor <;> decide

theorem edge_0192_label_12 :
    next 193 Face.zm =
      some (204, (90 : Int)) /\
    (90 : Int) + graphPotential 204 <=
      graphPotential 193 := by
  constructor <;> decide

theorem edge_0193_label_03 :
    next 194 Face.tmpp =
      some (211, (-144 : Int)) /\
    (-144 : Int) + graphPotential 211 <=
      graphPotential 194 := by
  constructor <;> decide

theorem edge_0194_label_13 :
    next 195 Face.zp =
      some (210, (-54 : Int)) /\
    (-54 : Int) + graphPotential 210 <=
      graphPotential 195 := by
  constructor <;> decide

theorem edge_0195_label_07 :
    next 195 Face.tppp =
      some (213, (-36 : Int)) /\
    (-36 : Int) + graphPotential 213 <=
      graphPotential 195 := by
  constructor <;> decide

theorem edge_0196_label_00 :
    next 196 Face.tmmm =
      some (215, (-144 : Int)) /\
    (-144 : Int) + graphPotential 215 <=
      graphPotential 196 := by
  constructor <;> decide

theorem edge_0197_label_00 :
    next 197 Face.tmmm =
      some (216, (-144 : Int)) /\
    (-144 : Int) + graphPotential 216 <=
      graphPotential 197 := by
  constructor <;> decide

theorem edge_0198_label_00 :
    next 198 Face.tmmm =
      some (217, (-144 : Int)) /\
    (-144 : Int) + graphPotential 217 <=
      graphPotential 198 := by
  constructor <;> decide

theorem edge_0199_label_00 :
    next 199 Face.tmmm =
      some (218, (-144 : Int)) /\
    (-144 : Int) + graphPotential 218 <=
      graphPotential 199 := by
  constructor <;> decide

theorem edge_0200_label_00 :
    next 200 Face.tmmm =
      some (219, (-144 : Int)) /\
    (-144 : Int) + graphPotential 219 <=
      graphPotential 200 := by
  constructor <;> decide

theorem edge_0201_label_12 :
    next 201 Face.zm =
      some (214, (-54 : Int)) /\
    (-54 : Int) + graphPotential 214 <=
      graphPotential 201 := by
  constructor <;> decide

theorem edge_0202_label_04 :
    next 202 Face.tpmm =
      some (221, (-36 : Int)) /\
    (-36 : Int) + graphPotential 221 <=
      graphPotential 202 := by
  constructor <;> decide

theorem edge_0203_label_11 :
    next 203 Face.yp =
      some (212, (-117 : Int)) /\
    (-117 : Int) + graphPotential 212 <=
      graphPotential 203 := by
  constructor <;> decide

theorem edge_0204_label_13 :
    next 203 Face.zp =
      some (220, (-18 : Int)) /\
    (-18 : Int) + graphPotential 220 <=
      graphPotential 203 := by
  constructor <;> decide

theorem edge_0205_label_01 :
    next 203 Face.tmmp =
      some (222, (96 : Int)) /\
    (96 : Int) + graphPotential 222 <=
      graphPotential 203 := by
  constructor <;> decide

theorem edge_0206_label_02 :
    next 204 Face.tmpm =
      some (2, (-144 : Int)) /\
    (-144 : Int) + graphPotential 2 <=
      graphPotential 204 := by
  constructor <;> decide

theorem edge_0207_label_02 :
    next 205 Face.tmpm =
      some (3, (-144 : Int)) /\
    (-144 : Int) + graphPotential 3 <=
      graphPotential 205 := by
  constructor <;> decide

theorem edge_0208_label_02 :
    next 206 Face.tmpm =
      some (4, (-144 : Int)) /\
    (-144 : Int) + graphPotential 4 <=
      graphPotential 206 := by
  constructor <;> decide

theorem edge_0209_label_02 :
    next 207 Face.tmpm =
      some (5, (-144 : Int)) /\
    (-144 : Int) + graphPotential 5 <=
      graphPotential 207 := by
  constructor <;> decide

theorem edge_0210_label_02 :
    next 208 Face.tmpm =
      some (6, (-144 : Int)) /\
    (-144 : Int) + graphPotential 6 <=
      graphPotential 208 := by
  constructor <;> decide

theorem edge_0211_label_06 :
    next 209 Face.tppm =
      some (9, (-36 : Int)) /\
    (-36 : Int) + graphPotential 9 <=
      graphPotential 209 := by
  constructor <;> decide

theorem edge_0212_label_12 :
    next 210 Face.zm =
      some (1, (-54 : Int)) /\
    (-54 : Int) + graphPotential 1 <=
      graphPotential 210 := by
  constructor <;> decide

theorem edge_0213_label_06 :
    next 211 Face.tppm =
      some (11, (-36 : Int)) /\
    (-36 : Int) + graphPotential 11 <=
      graphPotential 211 := by
  constructor <;> decide

theorem edge_0214_label_13 :
    next 212 Face.zp =
      some (7, (-18 : Int)) /\
    (-18 : Int) + graphPotential 7 <=
      graphPotential 212 := by
  constructor <;> decide

theorem edge_0215_label_03 :
    next 212 Face.tmpp =
      some (12, (96 : Int)) /\
    (96 : Int) + graphPotential 12 <=
      graphPotential 212 := by
  constructor <;> decide

theorem edge_0216_label_13 :
    next 213 Face.zp =
      some (8, (-18 : Int)) /\
    (-18 : Int) + graphPotential 8 <=
      graphPotential 213 := by
  constructor <;> decide

theorem edge_0217_label_03 :
    next 213 Face.tmpp =
      some (13, (96 : Int)) /\
    (96 : Int) + graphPotential 13 <=
      graphPotential 213 := by
  constructor <;> decide

theorem edge_0218_label_05 :
    next 214 Face.tpmp =
      some (15, (-36 : Int)) /\
    (-36 : Int) + graphPotential 15 <=
      graphPotential 214 := by
  constructor <;> decide

theorem edge_0219_label_05 :
    next 215 Face.tpmp =
      some (16, (-36 : Int)) /\
    (-36 : Int) + graphPotential 16 <=
      graphPotential 215 := by
  constructor <;> decide

theorem edge_0220_label_05 :
    next 216 Face.tpmp =
      some (17, (-36 : Int)) /\
    (-36 : Int) + graphPotential 17 <=
      graphPotential 216 := by
  constructor <;> decide

theorem edge_0221_label_05 :
    next 217 Face.tpmp =
      some (18, (-36 : Int)) /\
    (-36 : Int) + graphPotential 18 <=
      graphPotential 217 := by
  constructor <;> decide

theorem edge_0222_label_05 :
    next 218 Face.tpmp =
      some (19, (-36 : Int)) /\
    (-36 : Int) + graphPotential 19 <=
      graphPotential 218 := by
  constructor <;> decide

theorem edge_0223_label_05 :
    next 219 Face.tpmp =
      some (20, (-36 : Int)) /\
    (-36 : Int) + graphPotential 20 <=
      graphPotential 219 := by
  constructor <;> decide

theorem edge_0224_label_11 :
    next 220 Face.yp =
      some (7, (-117 : Int)) /\
    (-117 : Int) + graphPotential 7 <=
      graphPotential 220 := by
  constructor <;> decide

theorem edge_0225_label_12 :
    next 220 Face.zm =
      some (14, (-18 : Int)) /\
    (-18 : Int) + graphPotential 14 <=
      graphPotential 220 := by
  constructor <;> decide

theorem edge_0226_label_11 :
    next 221 Face.yp =
      some (10, (-117 : Int)) /\
    (-117 : Int) + graphPotential 10 <=
      graphPotential 221 := by
  constructor <;> decide

theorem edge_0227_label_00 :
    next 221 Face.tmmm =
      some (21, (96 : Int)) /\
    (96 : Int) + graphPotential 21 <=
      graphPotential 221 := by
  constructor <;> decide

theorem edge_0228_label_03 :
    next 222 Face.tmpp =
      some (22, (-124 : Int)) /\
    (-124 : Int) + graphPotential 22 <=
      graphPotential 222 := by
  constructor <;> decide

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard003
