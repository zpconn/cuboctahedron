import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard015

open Cuboctahedron

def shardIndex : Nat := 15
def stateStart : Nat := 960
def stateStop : Nat := 1024
def emittedEdgeCount : Nat := 73

def next : Nat -> Face -> Option (Nat × Int)
  | 960, Face.yp => some (956, (0 : Int))
  | 961, Face.tmpp => some (962, (0 : Int))
  | 961, Face.tppm => some (108, (0 : Int))
  | 962, Face.yp => some (963, (0 : Int))
  | 963, Face.tmmm => some (964, (0 : Int))
  | 965, Face.tmmp => some (966, (0 : Int))
  | 965, Face.tpmm => some (971, (0 : Int))
  | 965, Face.zm => some (981, (0 : Int))
  | 966, Face.tmpm => some (967, (0 : Int))
  | 966, Face.yp => some (969, (0 : Int))
  | 966, Face.zm => some (352, (0 : Int))
  | 967, Face.zm => some (968, (0 : Int))
  | 969, Face.tmpm => some (970, (0 : Int))
  | 969, Face.zm => some (353, (0 : Int))
  | 970, Face.zm => some (131, (0 : Int))
  | 971, Face.tmpm => some (972, (0 : Int))
  | 971, Face.zm => some (978, (0 : Int))
  | 972, Face.tmmp => some (973, (0 : Int))
  | 973, Face.yp => some (974, (0 : Int))
  | 973, Face.zm => some (975, (0 : Int))
  | 975, Face.yp => some (976, (0 : Int))
  | 976, Face.xp => some (977, (0 : Int))
  | 978, Face.tmmp => some (979, (0 : Int))
  | 978, Face.tmpm => some (980, (0 : Int))
  | 981, Face.tmpp => some (982, (0 : Int))
  | 981, Face.tpmp => some (984, (0 : Int))
  | 982, Face.tmmp => some (983, (0 : Int))
  | 984, Face.tmmp => some (985, (0 : Int))
  | 986, Face.tmmm => some (987, (0 : Int))
  | 986, Face.tpmm => some (990, (0 : Int))
  | 987, Face.tmpm => some (988, (0 : Int))
  | 987, Face.tppm => some (941, (0 : Int))
  | 988, Face.yp => some (989, (0 : Int))
  | 990, Face.tmpm => some (947, (0 : Int))
  | 990, Face.tppm => some (991, (0 : Int))
  | 991, Face.tmpm => some (103, (0 : Int))
  | 991, Face.yp => some (992, (0 : Int))
  | 992, Face.tmmm => some (993, (0 : Int))
  | 994, Face.tppm => some (995, (0 : Int))
  | 994, Face.zm => some (1004, (0 : Int))
  | 995, Face.tmmm => some (996, (0 : Int))
  | 995, Face.tmpp => some (1002, (0 : Int))
  | 995, Face.zp => some (362, (0 : Int))
  | 996, Face.tmpp => some (997, (0 : Int))
  | 996, Face.yp => some (999, (0 : Int))
  | 996, Face.zp => some (1000, (0 : Int))
  | 997, Face.zm => some (998, (0 : Int))
  | 1000, Face.yp => some (1001, (0 : Int))
  | 1002, Face.tmmm => some (1003, (0 : Int))
  | 1002, Face.zm => some (440, (0 : Int))
  | 1004, Face.tmmp => some (1005, (0 : Int))
  | 1004, Face.tmpp => some (1008, (0 : Int))
  | 1004, Face.tppp => some (1010, (0 : Int))
  | 1005, Face.tmpp => some (1006, (0 : Int))
  | 1006, Face.tppp => some (1007, (0 : Int))
  | 1008, Face.tppm => some (1009, (0 : Int))
  | 1010, Face.tmpp => some (1011, (0 : Int))
  | 1011, Face.tmmp => some (1012, (0 : Int))
  | 1013, Face.tmmp => some (1014, (0 : Int))
  | 1013, Face.tpmm => some (1025, (0 : Int))
  | 1013, Face.tpmp => some (1044, (0 : Int))
  | 1013, Face.zm => some (1060, (0 : Int))
  | 1014, Face.tpmm => some (1015, (0 : Int))
  | 1014, Face.tpmp => some (1023, (0 : Int))
  | 1014, Face.zm => some (417, (0 : Int))
  | 1015, Face.tmpm => some (1016, (0 : Int))
  | 1015, Face.tmpp => some (1017, (0 : Int))
  | 1015, Face.yp => some (1019, (0 : Int))
  | 1015, Face.zp => some (1020, (0 : Int))
  | 1017, Face.zm => some (1018, (0 : Int))
  | 1020, Face.tmpm => some (1021, (0 : Int))
  | 1020, Face.yp => some (1022, (0 : Int))
  | 1023, Face.zm => some (1024, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard015
