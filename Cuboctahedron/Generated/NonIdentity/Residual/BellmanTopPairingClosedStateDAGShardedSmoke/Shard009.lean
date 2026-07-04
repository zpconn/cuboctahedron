import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard009

open Cuboctahedron

def shardIndex : Nat := 9
def stateStart : Nat := 576
def stateStop : Nat := 640
def emittedEdgeCount : Nat := 81

def next : Nat -> Face -> Option (Nat × Int)
  | 576, Face.tmpm => some (577, (0 : Int))
  | 576, Face.yp => some (578, (0 : Int))
  | 579, Face.tmmp => some (580, (0 : Int))
  | 579, Face.tmpp => some (589, (0 : Int))
  | 579, Face.yp => some (599, (0 : Int))
  | 579, Face.zp => some (607, (0 : Int))
  | 580, Face.tmpp => some (581, (0 : Int))
  | 580, Face.zm => some (588, (0 : Int))
  | 581, Face.yp => some (582, (0 : Int))
  | 581, Face.zm => some (586, (0 : Int))
  | 582, Face.zm => some (583, (0 : Int))
  | 583, Face.zp => some (584, (0 : Int))
  | 584, Face.xp => some (585, (0 : Int))
  | 586, Face.yp => some (583, (0 : Int))
  | 586, Face.zp => some (587, (0 : Int))
  | 587, Face.yp => some (584, (0 : Int))
  | 589, Face.tppm => some (590, (0 : Int))
  | 589, Face.zm => some (593, (0 : Int))
  | 590, Face.zm => some (591, (0 : Int))
  | 591, Face.zp => some (592, (0 : Int))
  | 593, Face.tmmp => some (594, (0 : Int))
  | 594, Face.yp => some (595, (0 : Int))
  | 594, Face.zm => some (596, (0 : Int))
  | 596, Face.yp => some (597, (0 : Int))
  | 597, Face.xp => some (598, (0 : Int))
  | 599, Face.tmpp => some (600, (0 : Int))
  | 599, Face.zp => some (603, (0 : Int))
  | 600, Face.tmmp => some (582, (0 : Int))
  | 600, Face.zm => some (601, (0 : Int))
  | 601, Face.zp => some (602, (0 : Int))
  | 602, Face.tmmp => some (584, (0 : Int))
  | 603, Face.tmmp => some (604, (0 : Int))
  | 603, Face.zm => some (606, (0 : Int))
  | 604, Face.zm => some (605, (0 : Int))
  | 606, Face.tmpp => some (602, (0 : Int))
  | 607, Face.tmpp => some (608, (0 : Int))
  | 607, Face.yp => some (603, (0 : Int))
  | 607, Face.zm => some (610, (0 : Int))
  | 608, Face.zm => some (609, (0 : Int))
  | 610, Face.tmmp => some (611, (0 : Int))
  | 610, Face.yp => some (606, (0 : Int))
  | 611, Face.tmpp => some (587, (0 : Int))
  | 612, Face.tpmm => some (613, (0 : Int))
  | 612, Face.zm => some (620, (0 : Int))
  | 613, Face.tmpm => some (593, (0 : Int))
  | 613, Face.yp => some (614, (0 : Int))
  | 613, Face.zm => some (618, (0 : Int))
  | 614, Face.tmmp => some (615, (0 : Int))
  | 614, Face.tmpm => some (601, (0 : Int))
  | 614, Face.zm => some (617, (0 : Int))
  | 615, Face.zm => some (616, (0 : Int))
  | 618, Face.tmmp => some (619, (0 : Int))
  | 618, Face.tmpm => some (609, (0 : Int))
  | 618, Face.yp => some (617, (0 : Int))
  | 620, Face.tmpp => some (621, (0 : Int))
  | 620, Face.tpmp => some (610, (0 : Int))
  | 621, Face.tmmp => some (622, (0 : Int))
  | 623, Face.tmmp => some (624, (0 : Int))
  | 623, Face.zp => some (657, (0 : Int))
  | 624, Face.tmpp => some (625, (0 : Int))
  | 624, Face.tppp => some (636, (0 : Int))
  | 624, Face.yp => some (645, (0 : Int))
  | 624, Face.zm => some (648, (0 : Int))
  | 625, Face.tmmm => some (626, (0 : Int))
  | 625, Face.zm => some (633, (0 : Int))
  | 626, Face.yp => some (627, (0 : Int))
  | 626, Face.zm => some (631, (0 : Int))
  | 627, Face.zm => some (628, (0 : Int))
  | 628, Face.zp => some (629, (0 : Int))
  | 629, Face.xp => some (630, (0 : Int))
  | 631, Face.yp => some (628, (0 : Int))
  | 631, Face.zp => some (632, (0 : Int))
  | 632, Face.yp => some (629, (0 : Int))
  | 633, Face.tppp => some (634, (0 : Int))
  | 634, Face.zm => some (635, (0 : Int))
  | 636, Face.tmpp => some (637, (0 : Int))
  | 636, Face.zm => some (644, (0 : Int))
  | 637, Face.yp => some (638, (0 : Int))
  | 637, Face.zm => some (642, (0 : Int))
  | 638, Face.zm => some (639, (0 : Int))
  | 639, Face.zp => some (640, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard009
