import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard010

open Cuboctahedron

def shardIndex : Nat := 10
def stateStart : Nat := 640
def stateStop : Nat := 704
def emittedEdgeCount : Nat := 76

def next : Nat -> Face -> Option (Nat × Int)
  | 640, Face.xp => some (641, (0 : Int))
  | 642, Face.yp => some (639, (0 : Int))
  | 642, Face.zp => some (643, (0 : Int))
  | 643, Face.yp => some (640, (0 : Int))
  | 645, Face.tmmm => some (646, (0 : Int))
  | 645, Face.zm => some (647, (0 : Int))
  | 648, Face.tmpp => some (649, (0 : Int))
  | 648, Face.yp => some (647, (0 : Int))
  | 648, Face.zp => some (653, (0 : Int))
  | 649, Face.tppp => some (650, (0 : Int))
  | 649, Face.zm => some (652, (0 : Int))
  | 650, Face.zm => some (651, (0 : Int))
  | 653, Face.tppp => some (654, (0 : Int))
  | 653, Face.yp => some (655, (0 : Int))
  | 654, Face.tmpp => some (643, (0 : Int))
  | 655, Face.tmmm => some (656, (0 : Int))
  | 657, Face.tmmm => some (658, (0 : Int))
  | 657, Face.tmmp => some (665, (0 : Int))
  | 657, Face.tmpp => some (680, (0 : Int))
  | 657, Face.zm => some (684, (0 : Int))
  | 658, Face.tmpp => some (659, (0 : Int))
  | 658, Face.tppm => some (644, (0 : Int))
  | 658, Face.yp => some (661, (0 : Int))
  | 658, Face.zp => some (663, (0 : Int))
  | 659, Face.zm => some (660, (0 : Int))
  | 661, Face.tmmp => some (662, (0 : Int))
  | 662, Face.zm => some (656, (0 : Int))
  | 663, Face.yp => some (664, (0 : Int))
  | 665, Face.tmmm => some (666, (0 : Int))
  | 665, Face.tmpp => some (671, (0 : Int))
  | 665, Face.yp => some (673, (0 : Int))
  | 665, Face.zm => some (677, (0 : Int))
  | 666, Face.zm => some (667, (0 : Int))
  | 667, Face.tmpp => some (668, (0 : Int))
  | 668, Face.yp => some (669, (0 : Int))
  | 669, Face.xp => some (670, (0 : Int))
  | 671, Face.zm => some (672, (0 : Int))
  | 673, Face.zm => some (674, (0 : Int))
  | 674, Face.tmmm => some (675, (0 : Int))
  | 674, Face.tmpp => some (676, (0 : Int))
  | 677, Face.tppp => some (678, (0 : Int))
  | 677, Face.yp => some (674, (0 : Int))
  | 678, Face.tmpp => some (679, (0 : Int))
  | 680, Face.tmmm => some (681, (0 : Int))
  | 680, Face.zm => some (682, (0 : Int))
  | 682, Face.tmmp => some (683, (0 : Int))
  | 684, Face.tmmm => some (685, (0 : Int))
  | 684, Face.tmpp => some (688, (0 : Int))
  | 685, Face.tmmp => some (667, (0 : Int))
  | 685, Face.yp => some (686, (0 : Int))
  | 686, Face.tmpp => some (687, (0 : Int))
  | 687, Face.tmmp => some (669, (0 : Int))
  | 688, Face.tmmp => some (689, (0 : Int))
  | 689, Face.tmmm => some (690, (0 : Int))
  | 690, Face.yp => some (691, (0 : Int))
  | 691, Face.xp => some (692, (0 : Int))
  | 693, Face.tmmp => some (694, (0 : Int))
  | 693, Face.tmpm => some (708, (0 : Int))
  | 693, Face.tpmm => some (728, (0 : Int))
  | 693, Face.zm => some (755, (0 : Int))
  | 694, Face.tmmm => some (573, (0 : Int))
  | 694, Face.tpmm => some (695, (0 : Int))
  | 694, Face.zm => some (704, (0 : Int))
  | 695, Face.tmmm => some (696, (0 : Int))
  | 695, Face.tmpm => some (697, (0 : Int))
  | 695, Face.yp => some (698, (0 : Int))
  | 695, Face.zm => some (702, (0 : Int))
  | 696, Face.tmpm => some (586, (0 : Int))
  | 697, Face.tppp => some (591, (0 : Int))
  | 698, Face.tmpm => some (699, (0 : Int))
  | 698, Face.zm => some (701, (0 : Int))
  | 699, Face.tmmm => some (583, (0 : Int))
  | 699, Face.zp => some (700, (0 : Int))
  | 701, Face.tmmm => some (616, (0 : Int))
  | 702, Face.tmpm => some (703, (0 : Int))
  | 702, Face.yp => some (701, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard010
