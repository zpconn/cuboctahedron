import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard023

open Cuboctahedron

def shardIndex : Nat := 23
def stateStart : Nat := 1472
def stateStop : Nat := 1536
def emittedEdgeCount : Nat := 70

def next : Nat -> Face -> Option (Nat × Int)
  | 1472, Face.xp => some (1473, (0 : Int))
  | 1474, Face.tmmp => some (1475, (0 : Int))
  | 1474, Face.tpmp => some (1484, (0 : Int))
  | 1475, Face.tmmm => some (1397, (0 : Int))
  | 1475, Face.tpmm => some (1476, (0 : Int))
  | 1476, Face.tmpm => some (1477, (0 : Int))
  | 1476, Face.tppm => some (1480, (0 : Int))
  | 1477, Face.tmmp => some (1478, (0 : Int))
  | 1477, Face.tppp => some (1479, (0 : Int))
  | 1480, Face.tmpm => some (1481, (0 : Int))
  | 1480, Face.yp => some (1482, (0 : Int))
  | 1482, Face.tmmm => some (1483, (0 : Int))
  | 1484, Face.tmmm => some (1485, (0 : Int))
  | 1484, Face.tmmp => some (1487, (0 : Int))
  | 1484, Face.tmpp => some (1456, (0 : Int))
  | 1485, Face.tmpp => some (1486, (0 : Int))
  | 1487, Face.tmmm => some (1488, (0 : Int))
  | 1487, Face.tppm => some (1490, (0 : Int))
  | 1488, Face.yp => some (1489, (0 : Int))
  | 1491, Face.tmmm => some (1492, (0 : Int))
  | 1491, Face.tpmm => some (1553, (0 : Int))
  | 1491, Face.tppm => some (1576, (0 : Int))
  | 1492, Face.tmpm => some (1493, (0 : Int))
  | 1492, Face.tpmm => some (1502, (0 : Int))
  | 1492, Face.tppm => some (1509, (0 : Int))
  | 1492, Face.tppp => some (1545, (0 : Int))
  | 1493, Face.tpmm => some (1494, (0 : Int))
  | 1493, Face.tppp => some (1499, (0 : Int))
  | 1494, Face.tppm => some (1495, (0 : Int))
  | 1495, Face.tmmp => some (1496, (0 : Int))
  | 1495, Face.tppp => some (1497, (0 : Int))
  | 1495, Face.yp => some (1498, (0 : Int))
  | 1499, Face.tppm => some (1500, (0 : Int))
  | 1500, Face.tmmp => some (1501, (0 : Int))
  | 1502, Face.tppp => some (1503, (0 : Int))
  | 1503, Face.tmpm => some (1504, (0 : Int))
  | 1503, Face.tppm => some (1506, (0 : Int))
  | 1504, Face.tmmp => some (1505, (0 : Int))
  | 1506, Face.tmmp => some (1507, (0 : Int))
  | 1506, Face.tmpm => some (1508, (0 : Int))
  | 1509, Face.tmmm => some (1510, (0 : Int))
  | 1509, Face.tmmp => some (1520, (0 : Int))
  | 1509, Face.tmpp => some (1524, (0 : Int))
  | 1509, Face.tpmp => some (1532, (0 : Int))
  | 1510, Face.tmpp => some (1511, (0 : Int))
  | 1510, Face.tpmp => some (1513, (0 : Int))
  | 1511, Face.tmmp => some (1512, (0 : Int))
  | 1513, Face.tmmp => some (1514, (0 : Int))
  | 1513, Face.yp => some (1518, (0 : Int))
  | 1514, Face.tmpp => some (1515, (0 : Int))
  | 1515, Face.yp => some (1516, (0 : Int))
  | 1516, Face.xp => some (1517, (0 : Int))
  | 1518, Face.tmpp => some (1519, (0 : Int))
  | 1519, Face.tmmp => some (1516, (0 : Int))
  | 1520, Face.tmpm => some (1521, (0 : Int))
  | 1521, Face.tppp => some (1522, (0 : Int))
  | 1521, Face.yp => some (1523, (0 : Int))
  | 1524, Face.tmmm => some (1525, (0 : Int))
  | 1524, Face.tpmp => some (1527, (0 : Int))
  | 1525, Face.tmmp => some (1526, (0 : Int))
  | 1527, Face.tmmp => some (1528, (0 : Int))
  | 1528, Face.tmmm => some (1529, (0 : Int))
  | 1529, Face.yp => some (1530, (0 : Int))
  | 1530, Face.xp => some (1531, (0 : Int))
  | 1532, Face.tmmm => some (1533, (0 : Int))
  | 1532, Face.tmpp => some (1540, (0 : Int))
  | 1533, Face.tmmp => some (1534, (0 : Int))
  | 1533, Face.yp => some (1538, (0 : Int))
  | 1534, Face.tmpp => some (1535, (0 : Int))
  | 1535, Face.yp => some (1536, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard023
