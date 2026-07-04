import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard021

open Cuboctahedron

def shardIndex : Nat := 21
def stateStart : Nat := 1344
def stateStop : Nat := 1408
def emittedEdgeCount : Nat := 67

def next : Nat -> Face -> Option (Nat × Int)
  | 1344, Face.tmmm => some (1345, (0 : Int))
  | 1345, Face.yp => some (1346, (0 : Int))
  | 1346, Face.xp => some (1347, (0 : Int))
  | 1348, Face.tppm => some (1349, (0 : Int))
  | 1348, Face.tppp => some (1359, (0 : Int))
  | 1349, Face.tmmm => some (1327, (0 : Int))
  | 1349, Face.tmmp => some (1350, (0 : Int))
  | 1349, Face.tmpp => some (1354, (0 : Int))
  | 1350, Face.tmpp => some (1351, (0 : Int))
  | 1351, Face.yp => some (1352, (0 : Int))
  | 1352, Face.tmmm => some (1353, (0 : Int))
  | 1354, Face.tmmm => some (1355, (0 : Int))
  | 1354, Face.tppm => some (1358, (0 : Int))
  | 1355, Face.tppp => some (1356, (0 : Int))
  | 1355, Face.yp => some (1357, (0 : Int))
  | 1359, Face.tmmm => some (1360, (0 : Int))
  | 1359, Face.tmpp => some (1370, (0 : Int))
  | 1360, Face.tmpp => some (1361, (0 : Int))
  | 1360, Face.tppm => some (1363, (0 : Int))
  | 1361, Face.yp => some (1362, (0 : Int))
  | 1363, Face.tmmp => some (1364, (0 : Int))
  | 1363, Face.yp => some (1368, (0 : Int))
  | 1364, Face.tmpp => some (1365, (0 : Int))
  | 1365, Face.yp => some (1366, (0 : Int))
  | 1366, Face.xp => some (1367, (0 : Int))
  | 1368, Face.tmpp => some (1369, (0 : Int))
  | 1369, Face.tmmp => some (1366, (0 : Int))
  | 1370, Face.tmmm => some (1371, (0 : Int))
  | 1370, Face.tppm => some (1373, (0 : Int))
  | 1371, Face.yp => some (1372, (0 : Int))
  | 1373, Face.tmmp => some (1374, (0 : Int))
  | 1374, Face.tmmm => some (1375, (0 : Int))
  | 1375, Face.yp => some (1376, (0 : Int))
  | 1376, Face.xp => some (1377, (0 : Int))
  | 1378, Face.tmmm => some (1379, (0 : Int))
  | 1378, Face.tpmm => some (1424, (0 : Int))
  | 1378, Face.zm => some (1474, (0 : Int))
  | 1379, Face.tmmp => some (1380, (0 : Int))
  | 1379, Face.tpmp => some (1401, (0 : Int))
  | 1379, Face.zp => some (1418, (0 : Int))
  | 1380, Face.tmpp => some (1381, (0 : Int))
  | 1380, Face.tpmp => some (1388, (0 : Int))
  | 1380, Face.zp => some (1397, (0 : Int))
  | 1381, Face.tpmp => some (1382, (0 : Int))
  | 1381, Face.tppm => some (1384, (0 : Int))
  | 1381, Face.yp => some (1385, (0 : Int))
  | 1381, Face.zp => some (1386, (0 : Int))
  | 1382, Face.zm => some (1383, (0 : Int))
  | 1386, Face.yp => some (1387, (0 : Int))
  | 1388, Face.tmpp => some (1389, (0 : Int))
  | 1388, Face.tppm => some (1391, (0 : Int))
  | 1388, Face.yp => some (1392, (0 : Int))
  | 1388, Face.zp => some (1395, (0 : Int))
  | 1389, Face.zm => some (1390, (0 : Int))
  | 1392, Face.tmmp => some (1393, (0 : Int))
  | 1393, Face.zm => some (1394, (0 : Int))
  | 1395, Face.yp => some (1396, (0 : Int))
  | 1397, Face.tmpm => some (1398, (0 : Int))
  | 1397, Face.tppm => some (1400, (0 : Int))
  | 1398, Face.yp => some (1399, (0 : Int))
  | 1401, Face.tmpp => some (1402, (0 : Int))
  | 1401, Face.zp => some (1408, (0 : Int))
  | 1402, Face.tppm => some (1403, (0 : Int))
  | 1402, Face.zm => some (1406, (0 : Int))
  | 1403, Face.tmmp => some (1404, (0 : Int))
  | 1404, Face.zm => some (1405, (0 : Int))
  | 1406, Face.tmmp => some (1407, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard021
