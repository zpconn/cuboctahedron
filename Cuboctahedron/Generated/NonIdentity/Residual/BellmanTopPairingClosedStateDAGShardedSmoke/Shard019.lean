import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard019

open Cuboctahedron

def shardIndex : Nat := 19
def stateStart : Nat := 1216
def stateStop : Nat := 1280
def emittedEdgeCount : Nat := 73

def next : Nat -> Face -> Option (Nat × Int)
  | 1216, Face.yp => some (1217, (0 : Int))
  | 1217, Face.tmpp => some (1218, (0 : Int))
  | 1219, Face.tppm => some (1220, (0 : Int))
  | 1220, Face.tmmm => some (1221, (0 : Int))
  | 1220, Face.tmpp => some (1225, (0 : Int))
  | 1221, Face.tmpp => some (1222, (0 : Int))
  | 1222, Face.tppp => some (1223, (0 : Int))
  | 1222, Face.yp => some (1224, (0 : Int))
  | 1225, Face.tmmm => some (1226, (0 : Int))
  | 1226, Face.tppp => some (1227, (0 : Int))
  | 1226, Face.yp => some (1228, (0 : Int))
  | 1228, Face.tmmm => some (1229, (0 : Int))
  | 1230, Face.tpmm => some (1231, (0 : Int))
  | 1230, Face.tppp => some (1595, (0 : Int))
  | 1230, Face.zp => some (1785, (0 : Int))
  | 1231, Face.tpmp => some (1232, (0 : Int))
  | 1231, Face.tppp => some (1378, (0 : Int))
  | 1231, Face.zp => some (1491, (0 : Int))
  | 1232, Face.tppm => some (1233, (0 : Int))
  | 1232, Face.tppp => some (1304, (0 : Int))
  | 1232, Face.zp => some (1348, (0 : Int))
  | 1233, Face.tmmp => some (1234, (0 : Int))
  | 1233, Face.tppp => some (1256, (0 : Int))
  | 1233, Face.zp => some (1293, (0 : Int))
  | 1234, Face.tmpp => some (1235, (0 : Int))
  | 1234, Face.tppp => some (1243, (0 : Int))
  | 1234, Face.zp => some (1252, (0 : Int))
  | 1235, Face.tmmm => some (1236, (0 : Int))
  | 1235, Face.zm => some (1240, (0 : Int))
  | 1236, Face.tppp => some (1237, (0 : Int))
  | 1236, Face.zm => some (1239, (0 : Int))
  | 1237, Face.zm => some (1238, (0 : Int))
  | 1240, Face.tppp => some (1241, (0 : Int))
  | 1241, Face.tmmm => some (1242, (0 : Int))
  | 1243, Face.tmmm => some (1244, (0 : Int))
  | 1243, Face.tmpp => some (1245, (0 : Int))
  | 1243, Face.yp => some (1247, (0 : Int))
  | 1243, Face.zm => some (1251, (0 : Int))
  | 1245, Face.zm => some (1246, (0 : Int))
  | 1247, Face.zm => some (1248, (0 : Int))
  | 1248, Face.tmmm => some (1249, (0 : Int))
  | 1248, Face.tmpp => some (1250, (0 : Int))
  | 1251, Face.yp => some (1248, (0 : Int))
  | 1252, Face.tmpp => some (1253, (0 : Int))
  | 1253, Face.yp => some (1254, (0 : Int))
  | 1254, Face.tmmm => some (1255, (0 : Int))
  | 1256, Face.tmmm => some (1257, (0 : Int))
  | 1256, Face.tmmp => some (1265, (0 : Int))
  | 1256, Face.tmpp => some (1278, (0 : Int))
  | 1256, Face.zp => some (1286, (0 : Int))
  | 1257, Face.tmpp => some (1258, (0 : Int))
  | 1257, Face.yp => some (1260, (0 : Int))
  | 1257, Face.zp => some (1263, (0 : Int))
  | 1258, Face.zm => some (1259, (0 : Int))
  | 1260, Face.tmmp => some (1261, (0 : Int))
  | 1261, Face.zm => some (1262, (0 : Int))
  | 1263, Face.yp => some (1264, (0 : Int))
  | 1265, Face.tmmm => some (1266, (0 : Int))
  | 1265, Face.tmpp => some (1269, (0 : Int))
  | 1265, Face.yp => some (1271, (0 : Int))
  | 1265, Face.zm => some (1275, (0 : Int))
  | 1266, Face.zm => some (1267, (0 : Int))
  | 1267, Face.tmpp => some (1268, (0 : Int))
  | 1269, Face.zm => some (1270, (0 : Int))
  | 1271, Face.zm => some (1272, (0 : Int))
  | 1272, Face.tmmm => some (1273, (0 : Int))
  | 1272, Face.tmpp => some (1274, (0 : Int))
  | 1275, Face.tppp => some (1276, (0 : Int))
  | 1275, Face.yp => some (1272, (0 : Int))
  | 1276, Face.tmpp => some (1277, (0 : Int))
  | 1278, Face.tmmm => some (1279, (0 : Int))
  | 1278, Face.tppm => some (1280, (0 : Int))
  | 1278, Face.zm => some (1283, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard019
