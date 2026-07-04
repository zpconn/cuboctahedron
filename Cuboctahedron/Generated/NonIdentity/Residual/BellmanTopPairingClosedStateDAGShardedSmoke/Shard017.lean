import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard017

open Cuboctahedron

def shardIndex : Nat := 17
def stateStart : Nat := 1088
def stateStop : Nat := 1152
def emittedEdgeCount : Nat := 85

def next : Nat -> Face -> Option (Nat × Int)
  | 1088, Face.tmmp => some (1089, (0 : Int))
  | 1090, Face.tmmp => some (1091, (0 : Int))
  | 1090, Face.tmpm => some (1092, (0 : Int))
  | 1093, Face.tmmm => some (1094, (0 : Int))
  | 1093, Face.tpmm => some (961, (0 : Int))
  | 1094, Face.tppm => some (58, (0 : Int))
  | 1095, Face.tpmm => some (1096, (0 : Int))
  | 1095, Face.tpmp => some (1101, (0 : Int))
  | 1096, Face.tmpm => some (1097, (0 : Int))
  | 1096, Face.tmpp => some (1100, (0 : Int))
  | 1097, Face.tmmp => some (213, (0 : Int))
  | 1097, Face.yp => some (1098, (0 : Int))
  | 1098, Face.tmpp => some (1099, (0 : Int))
  | 1099, Face.tmmp => some (215, (0 : Int))
  | 1101, Face.tppm => some (299, (0 : Int))
  | 1102, Face.tmmm => some (1103, (0 : Int))
  | 1102, Face.tpmm => some (529, (0 : Int))
  | 1102, Face.tppm => some (1124, (0 : Int))
  | 1102, Face.zm => some (1133, (0 : Int))
  | 1103, Face.tppm => some (1104, (0 : Int))
  | 1103, Face.tppp => some (1113, (0 : Int))
  | 1103, Face.zp => some (1122, (0 : Int))
  | 1104, Face.tmpp => some (1105, (0 : Int))
  | 1104, Face.tppp => some (1107, (0 : Int))
  | 1104, Face.zp => some (1110, (0 : Int))
  | 1105, Face.tmmm => some (1106, (0 : Int))
  | 1105, Face.zp => some (817, (0 : Int))
  | 1107, Face.tmpp => some (1108, (0 : Int))
  | 1107, Face.zp => some (1109, (0 : Int))
  | 1110, Face.tmmm => some (1111, (0 : Int))
  | 1111, Face.yp => some (1112, (0 : Int))
  | 1113, Face.tpmm => some (1114, (0 : Int))
  | 1113, Face.zm => some (1119, (0 : Int))
  | 1114, Face.tmpp => some (1115, (0 : Int))
  | 1114, Face.yp => some (1116, (0 : Int))
  | 1114, Face.zm => some (840, (0 : Int))
  | 1115, Face.zm => some (836, (0 : Int))
  | 1116, Face.tmmp => some (1117, (0 : Int))
  | 1116, Face.zm => some (843, (0 : Int))
  | 1117, Face.zm => some (1118, (0 : Int))
  | 1119, Face.tmpp => some (1120, (0 : Int))
  | 1120, Face.tmmp => some (1121, (0 : Int))
  | 1122, Face.tpmm => some (787, (0 : Int))
  | 1122, Face.tppp => some (1123, (0 : Int))
  | 1123, Face.tppm => some (1109, (0 : Int))
  | 1124, Face.tpmm => some (1125, (0 : Int))
  | 1124, Face.zm => some (1130, (0 : Int))
  | 1125, Face.tmmm => some (648, (0 : Int))
  | 1125, Face.tmpp => some (1126, (0 : Int))
  | 1125, Face.zm => some (910, (0 : Int))
  | 1126, Face.tmmm => some (1127, (0 : Int))
  | 1126, Face.zm => some (905, (0 : Int))
  | 1127, Face.tppp => some (1128, (0 : Int))
  | 1128, Face.zm => some (1129, (0 : Int))
  | 1130, Face.tmmm => some (1131, (0 : Int))
  | 1130, Face.tmpp => some (897, (0 : Int))
  | 1131, Face.tmpp => some (1132, (0 : Int))
  | 1133, Face.tmmp => some (1134, (0 : Int))
  | 1133, Face.tppp => some (1143, (0 : Int))
  | 1134, Face.tpmm => some (1135, (0 : Int))
  | 1134, Face.tppp => some (1110, (0 : Int))
  | 1135, Face.tmpp => some (1136, (0 : Int))
  | 1136, Face.tppp => some (1137, (0 : Int))
  | 1136, Face.yp => some (1141, (0 : Int))
  | 1137, Face.tmmm => some (1138, (0 : Int))
  | 1138, Face.yp => some (1139, (0 : Int))
  | 1139, Face.xp => some (1140, (0 : Int))
  | 1141, Face.tmmm => some (1142, (0 : Int))
  | 1143, Face.tmmm => some (1144, (0 : Int))
  | 1143, Face.tmmp => some (1147, (0 : Int))
  | 1143, Face.tmpp => some (726, (0 : Int))
  | 1144, Face.tmpp => some (1145, (0 : Int))
  | 1145, Face.tmmp => some (1146, (0 : Int))
  | 1148, Face.tmmm => some (1149, (0 : Int))
  | 1148, Face.tpmm => some (912, (0 : Int))
  | 1148, Face.tpmp => some (1219, (0 : Int))
  | 1149, Face.tmmp => some (1150, (0 : Int))
  | 1149, Face.tpmm => some (1164, (0 : Int))
  | 1149, Face.tpmp => some (1188, (0 : Int))
  | 1149, Face.tppp => some (1199, (0 : Int))
  | 1150, Face.tpmm => some (1151, (0 : Int))
  | 1150, Face.tpmp => some (1159, (0 : Int))
  | 1150, Face.tppp => some (1162, (0 : Int))
  | 1151, Face.tmpp => some (1152, (0 : Int))
  | 1151, Face.tpmp => some (1154, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard017
