import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard018

open Cuboctahedron

def shardIndex : Nat := 18
def stateStart : Nat := 1152
def stateStop : Nat := 1216
def emittedEdgeCount : Nat := 59

def next : Nat -> Face -> Option (Nat × Int)
  | 1152, Face.tppp => some (1153, (0 : Int))
  | 1154, Face.tppp => some (1155, (0 : Int))
  | 1154, Face.yp => some (1157, (0 : Int))
  | 1155, Face.tmpp => some (1156, (0 : Int))
  | 1157, Face.tmmm => some (1158, (0 : Int))
  | 1159, Face.tmmm => some (1160, (0 : Int))
  | 1160, Face.yp => some (1161, (0 : Int))
  | 1162, Face.tpmp => some (1163, (0 : Int))
  | 1164, Face.tmmp => some (1165, (0 : Int))
  | 1164, Face.tmpp => some (1170, (0 : Int))
  | 1164, Face.tpmp => some (1174, (0 : Int))
  | 1164, Face.tppp => some (1183, (0 : Int))
  | 1165, Face.tpmp => some (1166, (0 : Int))
  | 1166, Face.tppp => some (1167, (0 : Int))
  | 1166, Face.yp => some (1168, (0 : Int))
  | 1168, Face.tmmm => some (1169, (0 : Int))
  | 1170, Face.tpmp => some (1171, (0 : Int))
  | 1171, Face.yp => some (1172, (0 : Int))
  | 1172, Face.tmmm => some (1173, (0 : Int))
  | 1174, Face.tmmm => some (1175, (0 : Int))
  | 1174, Face.tmpp => some (1182, (0 : Int))
  | 1175, Face.tmmp => some (1176, (0 : Int))
  | 1175, Face.yp => some (1178, (0 : Int))
  | 1176, Face.tmpp => some (1177, (0 : Int))
  | 1178, Face.tmpp => some (1179, (0 : Int))
  | 1179, Face.tmmp => some (1180, (0 : Int))
  | 1180, Face.xp => some (1181, (0 : Int))
  | 1183, Face.tmpp => some (1184, (0 : Int))
  | 1183, Face.tpmp => some (1186, (0 : Int))
  | 1184, Face.tmmp => some (1185, (0 : Int))
  | 1186, Face.tmmp => some (1187, (0 : Int))
  | 1188, Face.tmmm => some (1189, (0 : Int))
  | 1188, Face.tmpp => some (1195, (0 : Int))
  | 1189, Face.tmpp => some (1190, (0 : Int))
  | 1189, Face.tppm => some (1192, (0 : Int))
  | 1190, Face.yp => some (1191, (0 : Int))
  | 1192, Face.yp => some (1193, (0 : Int))
  | 1193, Face.tmpp => some (1194, (0 : Int))
  | 1195, Face.tmmm => some (1196, (0 : Int))
  | 1195, Face.tppm => some (1198, (0 : Int))
  | 1196, Face.yp => some (1197, (0 : Int))
  | 1199, Face.tmmp => some (1200, (0 : Int))
  | 1199, Face.tpmm => some (1203, (0 : Int))
  | 1199, Face.tpmp => some (1213, (0 : Int))
  | 1200, Face.tpmp => some (1201, (0 : Int))
  | 1201, Face.yp => some (1202, (0 : Int))
  | 1203, Face.tmpp => some (1204, (0 : Int))
  | 1203, Face.tpmp => some (1206, (0 : Int))
  | 1204, Face.tmmp => some (1205, (0 : Int))
  | 1206, Face.tmmp => some (1207, (0 : Int))
  | 1206, Face.yp => some (1211, (0 : Int))
  | 1207, Face.tmpp => some (1208, (0 : Int))
  | 1208, Face.yp => some (1209, (0 : Int))
  | 1209, Face.xp => some (1210, (0 : Int))
  | 1211, Face.tmpp => some (1212, (0 : Int))
  | 1212, Face.tmmp => some (1209, (0 : Int))
  | 1213, Face.tmpp => some (1214, (0 : Int))
  | 1213, Face.tppm => some (1216, (0 : Int))
  | 1214, Face.yp => some (1215, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard018
