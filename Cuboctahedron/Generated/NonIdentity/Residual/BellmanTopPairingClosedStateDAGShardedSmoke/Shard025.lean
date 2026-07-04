import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard025

open Cuboctahedron

def shardIndex : Nat := 25
def stateStart : Nat := 1600
def stateStop : Nat := 1664
def emittedEdgeCount : Nat := 74

def next : Nat -> Face -> Option (Nat × Int)
  | 1600, Face.zm => some (1601, (0 : Int))
  | 1604, Face.yp => some (1605, (0 : Int))
  | 1606, Face.tmpp => some (1607, (0 : Int))
  | 1606, Face.tppm => some (20, (0 : Int))
  | 1606, Face.yp => some (1609, (0 : Int))
  | 1606, Face.zp => some (1611, (0 : Int))
  | 1607, Face.zm => some (1608, (0 : Int))
  | 1609, Face.tmmp => some (1610, (0 : Int))
  | 1610, Face.zm => some (32, (0 : Int))
  | 1611, Face.yp => some (1612, (0 : Int))
  | 1613, Face.tmpp => some (1614, (0 : Int))
  | 1613, Face.zp => some (1618, (0 : Int))
  | 1614, Face.tppm => some (1615, (0 : Int))
  | 1614, Face.zm => some (1617, (0 : Int))
  | 1615, Face.tmmp => some (1616, (0 : Int))
  | 1616, Face.zm => some (99, (0 : Int))
  | 1617, Face.tmmp => some (945, (0 : Int))
  | 1618, Face.tmpp => some (1619, (0 : Int))
  | 1618, Face.tppm => some (958, (0 : Int))
  | 1619, Face.yp => some (1620, (0 : Int))
  | 1621, Face.tpmm => some (1622, (0 : Int))
  | 1622, Face.tmpm => some (1617, (0 : Int))
  | 1622, Face.tppm => some (1623, (0 : Int))
  | 1623, Face.tmmp => some (1624, (0 : Int))
  | 1623, Face.tmpm => some (951, (0 : Int))
  | 1623, Face.yp => some (1625, (0 : Int))
  | 1626, Face.tppm => some (1627, (0 : Int))
  | 1626, Face.zm => some (1632, (0 : Int))
  | 1627, Face.tmmp => some (1628, (0 : Int))
  | 1627, Face.tmpp => some (1631, (0 : Int))
  | 1627, Face.zp => some (1010, (0 : Int))
  | 1628, Face.tmpp => some (1629, (0 : Int))
  | 1628, Face.yp => some (1630, (0 : Int))
  | 1628, Face.zm => some (363, (0 : Int))
  | 1629, Face.zm => some (436, (0 : Int))
  | 1630, Face.zm => some (364, (0 : Int))
  | 1631, Face.zm => some (1088, (0 : Int))
  | 1632, Face.tmmp => some (1633, (0 : Int))
  | 1632, Face.tmpp => some (1638, (0 : Int))
  | 1633, Face.tmpp => some (1634, (0 : Int))
  | 1633, Face.tppm => some (1635, (0 : Int))
  | 1635, Face.yp => some (1636, (0 : Int))
  | 1636, Face.tmpp => some (1637, (0 : Int))
  | 1638, Face.tppm => some (1639, (0 : Int))
  | 1639, Face.tmmp => some (1640, (0 : Int))
  | 1641, Face.tmmp => some (181, (0 : Int))
  | 1641, Face.tpmm => some (1642, (0 : Int))
  | 1641, Face.tpmp => some (1664, (0 : Int))
  | 1641, Face.zp => some (1095, (0 : Int))
  | 1642, Face.tmmp => some (1643, (0 : Int))
  | 1642, Face.tmpp => some (1651, (0 : Int))
  | 1642, Face.tpmp => some (1655, (0 : Int))
  | 1642, Face.zp => some (1662, (0 : Int))
  | 1643, Face.tmpp => some (1644, (0 : Int))
  | 1643, Face.tpmp => some (1645, (0 : Int))
  | 1643, Face.yp => some (1650, (0 : Int))
  | 1643, Face.zp => some (315, (0 : Int))
  | 1645, Face.zm => some (1646, (0 : Int))
  | 1646, Face.tmpp => some (1647, (0 : Int))
  | 1647, Face.yp => some (1648, (0 : Int))
  | 1648, Face.xp => some (1649, (0 : Int))
  | 1651, Face.tpmp => some (1652, (0 : Int))
  | 1651, Face.zp => some (1654, (0 : Int))
  | 1652, Face.zm => some (1653, (0 : Int))
  | 1655, Face.tmpp => some (1656, (0 : Int))
  | 1655, Face.tppm => some (284, (0 : Int))
  | 1655, Face.yp => some (1658, (0 : Int))
  | 1655, Face.zp => some (1660, (0 : Int))
  | 1656, Face.zm => some (1657, (0 : Int))
  | 1658, Face.tmmp => some (1659, (0 : Int))
  | 1659, Face.zm => some (294, (0 : Int))
  | 1660, Face.yp => some (1661, (0 : Int))
  | 1662, Face.tmpm => some (1663, (0 : Int))
  | 1662, Face.tppm => some (313, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard025
