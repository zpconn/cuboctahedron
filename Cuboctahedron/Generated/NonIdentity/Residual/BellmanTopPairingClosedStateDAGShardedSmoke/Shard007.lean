import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard007

open Cuboctahedron

def shardIndex : Nat := 7
def stateStart : Nat := 448
def stateStop : Nat := 512
def emittedEdgeCount : Nat := 77

def next : Nat -> Face -> Option (Nat × Int)
  | 448, Face.tmmm => some (449, (0 : Int))
  | 448, Face.zm => some (456, (0 : Int))
  | 449, Face.yp => some (450, (0 : Int))
  | 449, Face.zm => some (454, (0 : Int))
  | 450, Face.zm => some (451, (0 : Int))
  | 451, Face.zp => some (452, (0 : Int))
  | 452, Face.xp => some (453, (0 : Int))
  | 454, Face.yp => some (451, (0 : Int))
  | 454, Face.zp => some (455, (0 : Int))
  | 455, Face.yp => some (452, (0 : Int))
  | 456, Face.tppp => some (457, (0 : Int))
  | 457, Face.zm => some (458, (0 : Int))
  | 459, Face.tmpp => some (460, (0 : Int))
  | 459, Face.zm => some (463, (0 : Int))
  | 460, Face.zm => some (461, (0 : Int))
  | 461, Face.zp => some (462, (0 : Int))
  | 464, Face.tmmm => some (465, (0 : Int))
  | 464, Face.zp => some (466, (0 : Int))
  | 466, Face.zm => some (467, (0 : Int))
  | 467, Face.tmmm => some (468, (0 : Int))
  | 469, Face.tmpp => some (470, (0 : Int))
  | 469, Face.yp => some (466, (0 : Int))
  | 469, Face.zm => some (472, (0 : Int))
  | 470, Face.zm => some (471, (0 : Int))
  | 472, Face.tppp => some (473, (0 : Int))
  | 472, Face.yp => some (467, (0 : Int))
  | 473, Face.tmpp => some (462, (0 : Int))
  | 474, Face.tmmp => some (475, (0 : Int))
  | 474, Face.tmpp => some (484, (0 : Int))
  | 474, Face.yp => some (494, (0 : Int))
  | 474, Face.zp => some (502, (0 : Int))
  | 475, Face.tmpp => some (476, (0 : Int))
  | 475, Face.zm => some (483, (0 : Int))
  | 476, Face.yp => some (477, (0 : Int))
  | 476, Face.zm => some (481, (0 : Int))
  | 477, Face.zm => some (478, (0 : Int))
  | 478, Face.zp => some (479, (0 : Int))
  | 479, Face.xp => some (480, (0 : Int))
  | 481, Face.yp => some (478, (0 : Int))
  | 481, Face.zp => some (482, (0 : Int))
  | 482, Face.yp => some (479, (0 : Int))
  | 484, Face.tppm => some (485, (0 : Int))
  | 484, Face.zm => some (488, (0 : Int))
  | 485, Face.zm => some (486, (0 : Int))
  | 486, Face.zp => some (487, (0 : Int))
  | 488, Face.tmmp => some (489, (0 : Int))
  | 489, Face.yp => some (490, (0 : Int))
  | 489, Face.zm => some (491, (0 : Int))
  | 491, Face.yp => some (492, (0 : Int))
  | 492, Face.xp => some (493, (0 : Int))
  | 494, Face.tmpp => some (495, (0 : Int))
  | 494, Face.zp => some (498, (0 : Int))
  | 495, Face.tmmp => some (477, (0 : Int))
  | 495, Face.zm => some (496, (0 : Int))
  | 496, Face.zp => some (497, (0 : Int))
  | 497, Face.tmmp => some (479, (0 : Int))
  | 498, Face.tmmp => some (499, (0 : Int))
  | 498, Face.zm => some (501, (0 : Int))
  | 499, Face.zm => some (500, (0 : Int))
  | 501, Face.tmpp => some (497, (0 : Int))
  | 502, Face.tmpp => some (503, (0 : Int))
  | 502, Face.yp => some (498, (0 : Int))
  | 502, Face.zm => some (505, (0 : Int))
  | 503, Face.zm => some (504, (0 : Int))
  | 505, Face.tmmp => some (506, (0 : Int))
  | 505, Face.yp => some (501, (0 : Int))
  | 506, Face.tmpp => some (482, (0 : Int))
  | 507, Face.tmmm => some (508, (0 : Int))
  | 507, Face.tmpp => some (515, (0 : Int))
  | 507, Face.zm => some (527, (0 : Int))
  | 508, Face.tmpp => some (509, (0 : Int))
  | 508, Face.tppm => some (463, (0 : Int))
  | 508, Face.yp => some (511, (0 : Int))
  | 508, Face.zm => some (514, (0 : Int))
  | 509, Face.zm => some (510, (0 : Int))
  | 511, Face.tmmp => some (512, (0 : Int))
  | 511, Face.zm => some (513, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard007
