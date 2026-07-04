import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard022

open Cuboctahedron

def shardIndex : Nat := 22
def stateStart : Nat := 1408
def stateStop : Nat := 1472
def emittedEdgeCount : Nat := 67

def next : Nat -> Face -> Option (Nat × Int)
  | 1408, Face.tmpp => some (1409, (0 : Int))
  | 1408, Face.tppm => some (1411, (0 : Int))
  | 1409, Face.yp => some (1410, (0 : Int))
  | 1411, Face.tmmp => some (1412, (0 : Int))
  | 1411, Face.yp => some (1416, (0 : Int))
  | 1412, Face.tmpp => some (1413, (0 : Int))
  | 1413, Face.yp => some (1414, (0 : Int))
  | 1414, Face.xp => some (1415, (0 : Int))
  | 1416, Face.tmpp => some (1417, (0 : Int))
  | 1417, Face.tmmp => some (1414, (0 : Int))
  | 1418, Face.tpmm => some (1419, (0 : Int))
  | 1419, Face.tmpm => some (1406, (0 : Int))
  | 1419, Face.tppm => some (1420, (0 : Int))
  | 1420, Face.tmmp => some (1421, (0 : Int))
  | 1420, Face.tmpm => some (1422, (0 : Int))
  | 1420, Face.yp => some (1423, (0 : Int))
  | 1424, Face.tmmp => some (1425, (0 : Int))
  | 1424, Face.tmpm => some (1440, (0 : Int))
  | 1424, Face.zm => some (1459, (0 : Int))
  | 1425, Face.tmmm => some (1426, (0 : Int))
  | 1425, Face.zm => some (1433, (0 : Int))
  | 1426, Face.tmpm => some (1427, (0 : Int))
  | 1426, Face.tppm => some (1429, (0 : Int))
  | 1426, Face.yp => some (1430, (0 : Int))
  | 1426, Face.zm => some (1432, (0 : Int))
  | 1427, Face.zm => some (1428, (0 : Int))
  | 1430, Face.zm => some (1431, (0 : Int))
  | 1432, Face.yp => some (1431, (0 : Int))
  | 1433, Face.tpmp => some (1434, (0 : Int))
  | 1434, Face.tppp => some (1435, (0 : Int))
  | 1434, Face.yp => some (1436, (0 : Int))
  | 1436, Face.tmmm => some (1437, (0 : Int))
  | 1437, Face.tmmp => some (1438, (0 : Int))
  | 1438, Face.xp => some (1439, (0 : Int))
  | 1440, Face.tmmm => some (1441, (0 : Int))
  | 1440, Face.tmmp => some (1447, (0 : Int))
  | 1440, Face.zp => some (1456, (0 : Int))
  | 1441, Face.yp => some (1442, (0 : Int))
  | 1441, Face.zp => some (1445, (0 : Int))
  | 1442, Face.tmmp => some (1443, (0 : Int))
  | 1443, Face.zp => some (1444, (0 : Int))
  | 1445, Face.yp => some (1446, (0 : Int))
  | 1447, Face.tmmm => some (1448, (0 : Int))
  | 1447, Face.tppm => some (1450, (0 : Int))
  | 1447, Face.yp => some (1451, (0 : Int))
  | 1447, Face.zm => some (1453, (0 : Int))
  | 1448, Face.zm => some (1449, (0 : Int))
  | 1451, Face.zm => some (1452, (0 : Int))
  | 1453, Face.tmmp => some (1454, (0 : Int))
  | 1453, Face.tppp => some (1455, (0 : Int))
  | 1453, Face.yp => some (1452, (0 : Int))
  | 1456, Face.tmmm => some (1457, (0 : Int))
  | 1457, Face.tmmp => some (1449, (0 : Int))
  | 1457, Face.yp => some (1458, (0 : Int))
  | 1459, Face.tmmm => some (1460, (0 : Int))
  | 1459, Face.tmmp => some (1463, (0 : Int))
  | 1460, Face.tpmp => some (1461, (0 : Int))
  | 1461, Face.yp => some (1462, (0 : Int))
  | 1463, Face.tmmm => some (1464, (0 : Int))
  | 1463, Face.tmpm => some (1467, (0 : Int))
  | 1463, Face.tppm => some (1469, (0 : Int))
  | 1464, Face.tmpm => some (1465, (0 : Int))
  | 1464, Face.yp => some (1466, (0 : Int))
  | 1467, Face.tppp => some (1468, (0 : Int))
  | 1469, Face.tmpm => some (1470, (0 : Int))
  | 1470, Face.tmmm => some (1471, (0 : Int))
  | 1471, Face.yp => some (1472, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard022
