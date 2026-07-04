import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard011

open Cuboctahedron

def shardIndex : Nat := 11
def stateStart : Nat := 704
def stateStop : Nat := 768
def emittedEdgeCount : Nat := 89

def next : Nat -> Face -> Option (Nat × Int)
  | 704, Face.tmpp => some (705, (0 : Int))
  | 704, Face.tpmp => some (706, (0 : Int))
  | 706, Face.yp => some (707, (0 : Int))
  | 707, Face.tmmm => some (605, (0 : Int))
  | 707, Face.tmpp => some (700, (0 : Int))
  | 708, Face.tmmm => some (709, (0 : Int))
  | 708, Face.tmmp => some (712, (0 : Int))
  | 708, Face.tpmm => some (717, (0 : Int))
  | 708, Face.zm => some (726, (0 : Int))
  | 709, Face.tppm => some (710, (0 : Int))
  | 709, Face.zp => some (711, (0 : Int))
  | 712, Face.tmmm => some (713, (0 : Int))
  | 712, Face.zm => some (715, (0 : Int))
  | 713, Face.zm => some (714, (0 : Int))
  | 715, Face.tppp => some (716, (0 : Int))
  | 717, Face.tmmm => some (718, (0 : Int))
  | 717, Face.zp => some (724, (0 : Int))
  | 718, Face.tmmp => some (719, (0 : Int))
  | 719, Face.yp => some (720, (0 : Int))
  | 719, Face.zp => some (723, (0 : Int))
  | 720, Face.zp => some (721, (0 : Int))
  | 721, Face.xp => some (722, (0 : Int))
  | 723, Face.yp => some (721, (0 : Int))
  | 724, Face.tmmp => some (725, (0 : Int))
  | 725, Face.tmmm => some (723, (0 : Int))
  | 726, Face.tmmm => some (727, (0 : Int))
  | 727, Face.tmmp => some (714, (0 : Int))
  | 728, Face.tmmm => some (729, (0 : Int))
  | 728, Face.tmmp => some (737, (0 : Int))
  | 728, Face.zm => some (751, (0 : Int))
  | 729, Face.tmpm => some (730, (0 : Int))
  | 729, Face.tppm => some (731, (0 : Int))
  | 729, Face.yp => some (732, (0 : Int))
  | 729, Face.zp => some (735, (0 : Int))
  | 730, Face.tmmp => some (631, (0 : Int))
  | 731, Face.tmpm => some (642, (0 : Int))
  | 732, Face.tmmp => some (733, (0 : Int))
  | 733, Face.zm => some (734, (0 : Int))
  | 735, Face.tmpm => some (660, (0 : Int))
  | 735, Face.yp => some (736, (0 : Int))
  | 737, Face.tmmm => some (738, (0 : Int))
  | 737, Face.tmpm => some (742, (0 : Int))
  | 737, Face.yp => some (745, (0 : Int))
  | 737, Face.zm => some (749, (0 : Int))
  | 738, Face.tmpm => some (739, (0 : Int))
  | 738, Face.zm => some (741, (0 : Int))
  | 739, Face.yp => some (740, (0 : Int))
  | 739, Face.zp => some (668, (0 : Int))
  | 740, Face.zp => some (669, (0 : Int))
  | 742, Face.tppp => some (743, (0 : Int))
  | 743, Face.zp => some (744, (0 : Int))
  | 745, Face.tmpm => some (746, (0 : Int))
  | 745, Face.zm => some (747, (0 : Int))
  | 746, Face.tmmm => some (740, (0 : Int))
  | 746, Face.zm => some (676, (0 : Int))
  | 747, Face.tmmm => some (748, (0 : Int))
  | 749, Face.tmpm => some (672, (0 : Int))
  | 749, Face.tppp => some (750, (0 : Int))
  | 749, Face.yp => some (747, (0 : Int))
  | 751, Face.tmmm => some (752, (0 : Int))
  | 751, Face.tmpm => some (682, (0 : Int))
  | 752, Face.tmmp => some (741, (0 : Int))
  | 752, Face.tmpm => some (753, (0 : Int))
  | 752, Face.yp => some (754, (0 : Int))
  | 755, Face.tmmm => some (620, (0 : Int))
  | 755, Face.tmmp => some (756, (0 : Int))
  | 755, Face.tmpp => some (760, (0 : Int))
  | 755, Face.tpmp => some (684, (0 : Int))
  | 756, Face.tmpm => some (757, (0 : Int))
  | 757, Face.tppp => some (758, (0 : Int))
  | 757, Face.yp => some (759, (0 : Int))
  | 760, Face.tmmm => some (761, (0 : Int))
  | 760, Face.tpmp => some (724, (0 : Int))
  | 761, Face.tmmp => some (762, (0 : Int))
  | 763, Face.tmmm => some (764, (0 : Int))
  | 763, Face.tpmm => some (851, (0 : Int))
  | 763, Face.tppm => some (887, (0 : Int))
  | 763, Face.zm => some (912, (0 : Int))
  | 764, Face.tpmp => some (765, (0 : Int))
  | 764, Face.tppm => some (793, (0 : Int))
  | 764, Face.tppp => some (818, (0 : Int))
  | 764, Face.zp => some (844, (0 : Int))
  | 765, Face.tmpp => some (766, (0 : Int))
  | 765, Face.tppp => some (778, (0 : Int))
  | 765, Face.zp => some (787, (0 : Int))
  | 766, Face.tppm => some (767, (0 : Int))
  | 766, Face.yp => some (770, (0 : Int))
  | 766, Face.zm => some (776, (0 : Int))
  | 767, Face.tppp => some (768, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard011
