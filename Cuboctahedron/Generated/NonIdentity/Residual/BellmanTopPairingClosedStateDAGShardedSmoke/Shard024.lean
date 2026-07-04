import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard024

open Cuboctahedron

def shardIndex : Nat := 24
def stateStart : Nat := 1536
def stateStop : Nat := 1600
def emittedEdgeCount : Nat := 74

def next : Nat -> Face -> Option (Nat × Int)
  | 1536, Face.xp => some (1537, (0 : Int))
  | 1538, Face.tmpp => some (1539, (0 : Int))
  | 1539, Face.tmmp => some (1536, (0 : Int))
  | 1540, Face.tmmp => some (1541, (0 : Int))
  | 1541, Face.tmmm => some (1542, (0 : Int))
  | 1542, Face.yp => some (1543, (0 : Int))
  | 1543, Face.xp => some (1544, (0 : Int))
  | 1545, Face.tpmm => some (1546, (0 : Int))
  | 1546, Face.tmpm => some (1547, (0 : Int))
  | 1546, Face.tppm => some (1549, (0 : Int))
  | 1547, Face.tmmp => some (1548, (0 : Int))
  | 1549, Face.tmmp => some (1550, (0 : Int))
  | 1549, Face.tmpm => some (1551, (0 : Int))
  | 1549, Face.yp => some (1552, (0 : Int))
  | 1553, Face.tmpm => some (1554, (0 : Int))
  | 1553, Face.tppm => some (1562, (0 : Int))
  | 1553, Face.tppp => some (1568, (0 : Int))
  | 1554, Face.tmmp => some (1555, (0 : Int))
  | 1554, Face.tppp => some (1559, (0 : Int))
  | 1555, Face.tppm => some (1556, (0 : Int))
  | 1556, Face.tppp => some (1557, (0 : Int))
  | 1557, Face.tmmm => some (1558, (0 : Int))
  | 1559, Face.tmmm => some (1560, (0 : Int))
  | 1560, Face.tmmp => some (1561, (0 : Int))
  | 1562, Face.tmmm => some (1563, (0 : Int))
  | 1562, Face.tmmp => some (1564, (0 : Int))
  | 1563, Face.tmpm => some (1324, (0 : Int))
  | 1564, Face.tmpm => some (1565, (0 : Int))
  | 1565, Face.tppp => some (1566, (0 : Int))
  | 1566, Face.tmmm => some (1567, (0 : Int))
  | 1568, Face.tmmm => some (1569, (0 : Int))
  | 1569, Face.tmpm => some (1570, (0 : Int))
  | 1569, Face.tppm => some (1572, (0 : Int))
  | 1570, Face.tmmp => some (1571, (0 : Int))
  | 1572, Face.tmmp => some (1573, (0 : Int))
  | 1572, Face.tmpm => some (1574, (0 : Int))
  | 1572, Face.yp => some (1575, (0 : Int))
  | 1576, Face.tmmp => some (1577, (0 : Int))
  | 1576, Face.tpmp => some (1585, (0 : Int))
  | 1577, Face.tmmm => some (1578, (0 : Int))
  | 1577, Face.tpmm => some (1582, (0 : Int))
  | 1578, Face.tmpm => some (1579, (0 : Int))
  | 1579, Face.tppp => some (1580, (0 : Int))
  | 1579, Face.yp => some (1581, (0 : Int))
  | 1582, Face.tmpm => some (1583, (0 : Int))
  | 1583, Face.tppp => some (1584, (0 : Int))
  | 1584, Face.tmmm => some (1405, (0 : Int))
  | 1585, Face.tmmm => some (1586, (0 : Int))
  | 1585, Face.tmmp => some (1589, (0 : Int))
  | 1585, Face.tmpp => some (1594, (0 : Int))
  | 1586, Face.tmpp => some (1587, (0 : Int))
  | 1587, Face.tppp => some (1588, (0 : Int))
  | 1589, Face.tmmm => some (1590, (0 : Int))
  | 1590, Face.tppp => some (1591, (0 : Int))
  | 1590, Face.yp => some (1592, (0 : Int))
  | 1592, Face.tmmm => some (1593, (0 : Int))
  | 1594, Face.tmmm => some (1453, (0 : Int))
  | 1595, Face.tmmm => some (1596, (0 : Int))
  | 1595, Face.tpmp => some (1691, (0 : Int))
  | 1595, Face.zm => some (1732, (0 : Int))
  | 1596, Face.tpmm => some (1597, (0 : Int))
  | 1596, Face.tpmp => some (1626, (0 : Int))
  | 1596, Face.tppm => some (1641, (0 : Int))
  | 1596, Face.zp => some (1669, (0 : Int))
  | 1597, Face.tmmp => some (1598, (0 : Int))
  | 1597, Face.tpmp => some (1613, (0 : Int))
  | 1597, Face.zp => some (1621, (0 : Int))
  | 1598, Face.tmpp => some (1599, (0 : Int))
  | 1598, Face.tpmp => some (1606, (0 : Int))
  | 1598, Face.zp => some (987, (0 : Int))
  | 1599, Face.tpmp => some (1600, (0 : Int))
  | 1599, Face.tppm => some (1602, (0 : Int))
  | 1599, Face.yp => some (1603, (0 : Int))
  | 1599, Face.zp => some (1604, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard024
