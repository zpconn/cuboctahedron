import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard020

open Cuboctahedron

def shardIndex : Nat := 20
def stateStart : Nat := 1280
def stateStop : Nat := 1344
def emittedEdgeCount : Nat := 64

def next : Nat -> Face -> Option (Nat × Int)
  | 1280, Face.zm => some (1281, (0 : Int))
  | 1281, Face.tmmm => some (1282, (0 : Int))
  | 1283, Face.tmmp => some (1284, (0 : Int))
  | 1283, Face.tppp => some (1285, (0 : Int))
  | 1286, Face.tmmm => some (1287, (0 : Int))
  | 1286, Face.tmpp => some (1292, (0 : Int))
  | 1287, Face.tmmp => some (1267, (0 : Int))
  | 1287, Face.yp => some (1288, (0 : Int))
  | 1288, Face.tmpp => some (1289, (0 : Int))
  | 1289, Face.tmmp => some (1290, (0 : Int))
  | 1290, Face.xp => some (1291, (0 : Int))
  | 1293, Face.tmmm => some (1294, (0 : Int))
  | 1293, Face.tmpp => some (1298, (0 : Int))
  | 1294, Face.tmpp => some (1295, (0 : Int))
  | 1294, Face.tppm => some (1251, (0 : Int))
  | 1295, Face.yp => some (1296, (0 : Int))
  | 1296, Face.tmmm => some (1297, (0 : Int))
  | 1298, Face.tmmm => some (1299, (0 : Int))
  | 1298, Face.tppm => some (1303, (0 : Int))
  | 1299, Face.tppp => some (1300, (0 : Int))
  | 1299, Face.yp => some (1301, (0 : Int))
  | 1301, Face.tmmm => some (1302, (0 : Int))
  | 1304, Face.tmmp => some (1305, (0 : Int))
  | 1304, Face.zm => some (1329, (0 : Int))
  | 1305, Face.tmmm => some (1306, (0 : Int))
  | 1305, Face.tmpp => some (1315, (0 : Int))
  | 1305, Face.zm => some (1327, (0 : Int))
  | 1306, Face.tmpp => some (1307, (0 : Int))
  | 1306, Face.tppm => some (1309, (0 : Int))
  | 1306, Face.yp => some (1310, (0 : Int))
  | 1306, Face.zm => some (1314, (0 : Int))
  | 1307, Face.zm => some (1308, (0 : Int))
  | 1310, Face.tmmp => some (1311, (0 : Int))
  | 1310, Face.zm => some (1313, (0 : Int))
  | 1311, Face.zm => some (1312, (0 : Int))
  | 1314, Face.yp => some (1313, (0 : Int))
  | 1315, Face.tmmm => some (1316, (0 : Int))
  | 1315, Face.tppm => some (1318, (0 : Int))
  | 1315, Face.yp => some (1322, (0 : Int))
  | 1315, Face.zm => some (1324, (0 : Int))
  | 1316, Face.zm => some (1317, (0 : Int))
  | 1318, Face.zm => some (1319, (0 : Int))
  | 1319, Face.tmmm => some (1320, (0 : Int))
  | 1320, Face.yp => some (1321, (0 : Int))
  | 1322, Face.zm => some (1323, (0 : Int))
  | 1324, Face.tmmp => some (1325, (0 : Int))
  | 1324, Face.tppp => some (1326, (0 : Int))
  | 1324, Face.yp => some (1323, (0 : Int))
  | 1327, Face.tmpp => some (1328, (0 : Int))
  | 1329, Face.tmmm => some (1330, (0 : Int))
  | 1329, Face.tmmp => some (1332, (0 : Int))
  | 1329, Face.tmpp => some (1340, (0 : Int))
  | 1330, Face.tmpp => some (1331, (0 : Int))
  | 1332, Face.tmpp => some (1333, (0 : Int))
  | 1332, Face.tppm => some (1336, (0 : Int))
  | 1333, Face.yp => some (1334, (0 : Int))
  | 1334, Face.tmmm => some (1335, (0 : Int))
  | 1336, Face.yp => some (1337, (0 : Int))
  | 1337, Face.tmmm => some (1338, (0 : Int))
  | 1337, Face.tmpp => some (1339, (0 : Int))
  | 1340, Face.tmmm => some (1341, (0 : Int))
  | 1340, Face.tppm => some (1343, (0 : Int))
  | 1341, Face.yp => some (1342, (0 : Int))
  | 1343, Face.tmmp => some (1344, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard020
