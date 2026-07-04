import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard012

open Cuboctahedron

def shardIndex : Nat := 12
def stateStart : Nat := 768
def stateStop : Nat := 832
def emittedEdgeCount : Nat := 63

def next : Nat -> Face -> Option (Nat × Int)
  | 768, Face.zp => some (769, (0 : Int))
  | 770, Face.tppp => some (771, (0 : Int))
  | 770, Face.zm => some (775, (0 : Int))
  | 771, Face.zm => some (772, (0 : Int))
  | 772, Face.tmmp => some (773, (0 : Int))
  | 773, Face.xp => some (774, (0 : Int))
  | 776, Face.tppp => some (777, (0 : Int))
  | 776, Face.yp => some (775, (0 : Int))
  | 778, Face.tppm => some (779, (0 : Int))
  | 778, Face.zm => some (782, (0 : Int))
  | 779, Face.zm => some (780, (0 : Int))
  | 780, Face.tmpp => some (781, (0 : Int))
  | 782, Face.tmmp => some (783, (0 : Int))
  | 783, Face.tmpp => some (784, (0 : Int))
  | 784, Face.yp => some (785, (0 : Int))
  | 785, Face.xp => some (786, (0 : Int))
  | 787, Face.tmpp => some (788, (0 : Int))
  | 787, Face.tppm => some (792, (0 : Int))
  | 788, Face.tppp => some (789, (0 : Int))
  | 788, Face.yp => some (790, (0 : Int))
  | 790, Face.tmmm => some (791, (0 : Int))
  | 792, Face.tppp => some (780, (0 : Int))
  | 793, Face.tmpp => some (794, (0 : Int))
  | 793, Face.tpmp => some (799, (0 : Int))
  | 793, Face.tppp => some (808, (0 : Int))
  | 793, Face.zp => some (813, (0 : Int))
  | 794, Face.tmmm => some (795, (0 : Int))
  | 794, Face.tpmp => some (796, (0 : Int))
  | 794, Face.zp => some (798, (0 : Int))
  | 796, Face.zm => some (797, (0 : Int))
  | 799, Face.tmmm => some (800, (0 : Int))
  | 799, Face.tmpp => some (801, (0 : Int))
  | 799, Face.yp => some (803, (0 : Int))
  | 799, Face.zp => some (804, (0 : Int))
  | 801, Face.zm => some (802, (0 : Int))
  | 804, Face.yp => some (805, (0 : Int))
  | 805, Face.tmmm => some (806, (0 : Int))
  | 805, Face.tmpp => some (807, (0 : Int))
  | 808, Face.tmpp => some (809, (0 : Int))
  | 808, Face.tpmp => some (810, (0 : Int))
  | 808, Face.zp => some (811, (0 : Int))
  | 811, Face.tmpm => some (812, (0 : Int))
  | 813, Face.tmmm => some (814, (0 : Int))
  | 813, Face.tmpm => some (817, (0 : Int))
  | 814, Face.tmpm => some (815, (0 : Int))
  | 814, Face.yp => some (816, (0 : Int))
  | 818, Face.tpmm => some (819, (0 : Int))
  | 818, Face.zm => some (837, (0 : Int))
  | 819, Face.tmpm => some (820, (0 : Int))
  | 819, Face.yp => some (826, (0 : Int))
  | 819, Face.zm => some (834, (0 : Int))
  | 820, Face.tmmp => some (821, (0 : Int))
  | 821, Face.yp => some (822, (0 : Int))
  | 821, Face.zm => some (823, (0 : Int))
  | 823, Face.yp => some (824, (0 : Int))
  | 824, Face.xp => some (825, (0 : Int))
  | 826, Face.tmmp => some (827, (0 : Int))
  | 826, Face.tmpm => some (829, (0 : Int))
  | 826, Face.zm => some (833, (0 : Int))
  | 827, Face.zm => some (828, (0 : Int))
  | 829, Face.zp => some (830, (0 : Int))
  | 830, Face.tmmp => some (831, (0 : Int))
  | 831, Face.xp => some (832, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard012
