import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard013

open Cuboctahedron

def shardIndex : Nat := 13
def stateStart : Nat := 832
def stateStop : Nat := 896
def emittedEdgeCount : Nat := 74

def next : Nat -> Face -> Option (Nat × Int)
  | 834, Face.tmmp => some (835, (0 : Int))
  | 834, Face.tmpm => some (836, (0 : Int))
  | 834, Face.yp => some (833, (0 : Int))
  | 837, Face.tmpp => some (838, (0 : Int))
  | 837, Face.tpmp => some (840, (0 : Int))
  | 838, Face.tmmp => some (839, (0 : Int))
  | 840, Face.tmmp => some (841, (0 : Int))
  | 840, Face.yp => some (843, (0 : Int))
  | 841, Face.tmpp => some (842, (0 : Int))
  | 842, Face.yp => some (831, (0 : Int))
  | 843, Face.tmpp => some (830, (0 : Int))
  | 844, Face.tpmm => some (845, (0 : Int))
  | 844, Face.tppp => some (848, (0 : Int))
  | 845, Face.tmpm => some (776, (0 : Int))
  | 845, Face.tppm => some (846, (0 : Int))
  | 846, Face.tppp => some (847, (0 : Int))
  | 848, Face.tmpm => some (849, (0 : Int))
  | 848, Face.tppm => some (811, (0 : Int))
  | 849, Face.tmmp => some (850, (0 : Int))
  | 851, Face.tmmp => some (852, (0 : Int))
  | 851, Face.tmpm => some (860, (0 : Int))
  | 851, Face.zm => some (881, (0 : Int))
  | 852, Face.tmmm => some (853, (0 : Int))
  | 852, Face.zm => some (859, (0 : Int))
  | 853, Face.tmpm => some (456, (0 : Int))
  | 853, Face.yp => some (854, (0 : Int))
  | 853, Face.zm => some (857, (0 : Int))
  | 854, Face.zm => some (855, (0 : Int))
  | 855, Face.tmmm => some (856, (0 : Int))
  | 857, Face.tmpm => some (471, (0 : Int))
  | 857, Face.tppp => some (858, (0 : Int))
  | 857, Face.yp => some (855, (0 : Int))
  | 859, Face.tmpm => some (539, (0 : Int))
  | 860, Face.tmmp => some (861, (0 : Int))
  | 860, Face.tppp => some (872, (0 : Int))
  | 860, Face.zp => some (547, (0 : Int))
  | 861, Face.yp => some (862, (0 : Int))
  | 861, Face.zm => some (867, (0 : Int))
  | 862, Face.tppp => some (863, (0 : Int))
  | 862, Face.zm => some (866, (0 : Int))
  | 863, Face.tmmm => some (864, (0 : Int))
  | 863, Face.zm => some (865, (0 : Int))
  | 867, Face.tppp => some (868, (0 : Int))
  | 867, Face.yp => some (866, (0 : Int))
  | 868, Face.tmmm => some (869, (0 : Int))
  | 869, Face.yp => some (870, (0 : Int))
  | 870, Face.xp => some (871, (0 : Int))
  | 872, Face.tmmm => some (873, (0 : Int))
  | 872, Face.zp => some (879, (0 : Int))
  | 873, Face.tmmp => some (874, (0 : Int))
  | 874, Face.yp => some (875, (0 : Int))
  | 874, Face.zm => some (876, (0 : Int))
  | 876, Face.yp => some (877, (0 : Int))
  | 877, Face.xp => some (878, (0 : Int))
  | 879, Face.tmmp => some (880, (0 : Int))
  | 880, Face.tmmm => some (876, (0 : Int))
  | 881, Face.tmmm => some (882, (0 : Int))
  | 881, Face.tmmp => some (883, (0 : Int))
  | 882, Face.tmpm => some (524, (0 : Int))
  | 883, Face.tmpm => some (884, (0 : Int))
  | 884, Face.tppp => some (885, (0 : Int))
  | 885, Face.tmmm => some (886, (0 : Int))
  | 887, Face.tmpm => some (888, (0 : Int))
  | 887, Face.tpmm => some (898, (0 : Int))
  | 887, Face.zm => some (906, (0 : Int))
  | 888, Face.tmmm => some (889, (0 : Int))
  | 888, Face.tpmm => some (892, (0 : Int))
  | 888, Face.zm => some (897, (0 : Int))
  | 889, Face.zp => some (890, (0 : Int))
  | 890, Face.tppp => some (891, (0 : Int))
  | 892, Face.tmmm => some (893, (0 : Int))
  | 892, Face.zp => some (896, (0 : Int))
  | 893, Face.tppp => some (894, (0 : Int))
  | 894, Face.zp => some (895, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard013
