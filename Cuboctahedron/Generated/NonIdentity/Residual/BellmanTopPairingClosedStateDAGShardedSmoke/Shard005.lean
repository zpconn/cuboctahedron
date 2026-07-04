import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard005

open Cuboctahedron

def shardIndex : Nat := 5
def stateStart : Nat := 320
def stateStop : Nat := 384
def emittedEdgeCount : Nat := 72

def next : Nat -> Face -> Option (Nat × Int)
  | 320, Face.zm => some (254, (0 : Int))
  | 321, Face.zm => some (322, (0 : Int))
  | 323, Face.yp => some (322, (0 : Int))
  | 324, Face.tmpp => some (325, (0 : Int))
  | 326, Face.tpmm => some (327, (0 : Int))
  | 326, Face.tpmp => some (332, (0 : Int))
  | 326, Face.zp => some (334, (0 : Int))
  | 327, Face.tmpp => some (328, (0 : Int))
  | 327, Face.tpmp => some (329, (0 : Int))
  | 327, Face.zp => some (330, (0 : Int))
  | 330, Face.tmpm => some (331, (0 : Int))
  | 332, Face.zm => some (333, (0 : Int))
  | 334, Face.tpmp => some (335, (0 : Int))
  | 336, Face.tmmm => some (193, (0 : Int))
  | 336, Face.tpmm => some (265, (0 : Int))
  | 336, Face.tpmp => some (300, (0 : Int))
  | 337, Face.tpmm => some (338, (0 : Int))
  | 337, Face.tpmp => some (359, (0 : Int))
  | 337, Face.tppp => some (367, (0 : Int))
  | 337, Face.zp => some (428, (0 : Int))
  | 338, Face.tpmp => some (91, (0 : Int))
  | 338, Face.tppp => some (339, (0 : Int))
  | 338, Face.zp => some (356, (0 : Int))
  | 339, Face.tmmm => some (340, (0 : Int))
  | 339, Face.tpmm => some (347, (0 : Int))
  | 339, Face.zm => some (351, (0 : Int))
  | 340, Face.tmpp => some (341, (0 : Int))
  | 340, Face.tpmp => some (342, (0 : Int))
  | 340, Face.yp => some (343, (0 : Int))
  | 340, Face.zp => some (344, (0 : Int))
  | 344, Face.tmpm => some (345, (0 : Int))
  | 344, Face.yp => some (346, (0 : Int))
  | 347, Face.tmmm => some (348, (0 : Int))
  | 347, Face.tmpm => some (349, (0 : Int))
  | 347, Face.zm => some (350, (0 : Int))
  | 350, Face.tmpm => some (123, (0 : Int))
  | 351, Face.tmmm => some (352, (0 : Int))
  | 351, Face.tmpp => some (355, (0 : Int))
  | 351, Face.tpmp => some (127, (0 : Int))
  | 352, Face.yp => some (353, (0 : Int))
  | 353, Face.tmpp => some (354, (0 : Int))
  | 356, Face.tmmm => some (357, (0 : Int))
  | 356, Face.tpmm => some (358, (0 : Int))
  | 357, Face.tmpm => some (54, (0 : Int))
  | 358, Face.tmpm => some (97, (0 : Int))
  | 359, Face.zm => some (360, (0 : Int))
  | 360, Face.tmpp => some (361, (0 : Int))
  | 360, Face.tppp => some (362, (0 : Int))
  | 362, Face.tmmm => some (363, (0 : Int))
  | 362, Face.tmpp => some (366, (0 : Int))
  | 363, Face.yp => some (364, (0 : Int))
  | 364, Face.tmpp => some (365, (0 : Int))
  | 367, Face.tpmm => some (368, (0 : Int))
  | 367, Face.tpmp => some (399, (0 : Int))
  | 367, Face.zm => some (416, (0 : Int))
  | 368, Face.tmpp => some (369, (0 : Int))
  | 368, Face.tppp => some (374, (0 : Int))
  | 368, Face.zp => some (386, (0 : Int))
  | 369, Face.tmmm => some (370, (0 : Int))
  | 369, Face.tpmp => some (371, (0 : Int))
  | 369, Face.zm => some (373, (0 : Int))
  | 371, Face.zm => some (372, (0 : Int))
  | 374, Face.tmpm => some (375, (0 : Int))
  | 374, Face.tmpp => some (376, (0 : Int))
  | 374, Face.yp => some (378, (0 : Int))
  | 374, Face.zp => some (382, (0 : Int))
  | 376, Face.zm => some (377, (0 : Int))
  | 378, Face.tmpm => some (379, (0 : Int))
  | 379, Face.tmpp => some (380, (0 : Int))
  | 379, Face.zp => some (381, (0 : Int))
  | 382, Face.tmpm => some (383, (0 : Int))
  | 382, Face.yp => some (384, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard005
