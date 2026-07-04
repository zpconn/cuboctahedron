import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard026

open Cuboctahedron

def shardIndex : Nat := 26
def stateStart : Nat := 1664
def stateStop : Nat := 1728
def emittedEdgeCount : Nat := 81

def next : Nat -> Face -> Option (Nat × Int)
  | 1664, Face.tmpp => some (1665, (0 : Int))
  | 1664, Face.zm => some (1667, (0 : Int))
  | 1665, Face.tppm => some (204, (0 : Int))
  | 1665, Face.yp => some (1666, (0 : Int))
  | 1665, Face.zm => some (1097, (0 : Int))
  | 1666, Face.zm => some (1098, (0 : Int))
  | 1667, Face.tmpp => some (1668, (0 : Int))
  | 1669, Face.tpmm => some (1670, (0 : Int))
  | 1669, Face.tpmp => some (1690, (0 : Int))
  | 1669, Face.tppm => some (1060, (0 : Int))
  | 1670, Face.tmmp => some (1671, (0 : Int))
  | 1670, Face.tmpp => some (1685, (0 : Int))
  | 1671, Face.tmpm => some (1672, (0 : Int))
  | 1671, Face.tmpp => some (1679, (0 : Int))
  | 1671, Face.tppm => some (1680, (0 : Int))
  | 1672, Face.tmmp => some (1673, (0 : Int))
  | 1672, Face.yp => some (1675, (0 : Int))
  | 1673, Face.tmpp => some (1674, (0 : Int))
  | 1675, Face.tmpp => some (1676, (0 : Int))
  | 1676, Face.tmmp => some (1677, (0 : Int))
  | 1677, Face.xp => some (1678, (0 : Int))
  | 1680, Face.tmpm => some (1681, (0 : Int))
  | 1680, Face.yp => some (1683, (0 : Int))
  | 1681, Face.tmpp => some (1682, (0 : Int))
  | 1683, Face.tmpp => some (1684, (0 : Int))
  | 1685, Face.tpmp => some (1686, (0 : Int))
  | 1685, Face.tppm => some (1688, (0 : Int))
  | 1686, Face.yp => some (1687, (0 : Int))
  | 1688, Face.tmmp => some (1689, (0 : Int))
  | 1690, Face.tpmm => some (1618, (0 : Int))
  | 1691, Face.tmmm => some (1692, (0 : Int))
  | 1691, Face.tpmm => some (1702, (0 : Int))
  | 1691, Face.tppm => some (1717, (0 : Int))
  | 1691, Face.zm => some (1727, (0 : Int))
  | 1692, Face.tppm => some (1693, (0 : Int))
  | 1692, Face.zp => some (1698, (0 : Int))
  | 1693, Face.tmmp => some (1694, (0 : Int))
  | 1693, Face.tmpp => some (1697, (0 : Int))
  | 1693, Face.zp => some (1123, (0 : Int))
  | 1694, Face.tmpp => some (1695, (0 : Int))
  | 1694, Face.yp => some (1696, (0 : Int))
  | 1694, Face.zp => some (1111, (0 : Int))
  | 1697, Face.zp => some (849, (0 : Int))
  | 1698, Face.tpmm => some (1699, (0 : Int))
  | 1699, Face.tmpp => some (1700, (0 : Int))
  | 1699, Face.tppm => some (782, (0 : Int))
  | 1700, Face.yp => some (1701, (0 : Int))
  | 1702, Face.tmmp => some (507, (0 : Int))
  | 1702, Face.zm => some (1703, (0 : Int))
  | 1703, Face.tmmm => some (1704, (0 : Int))
  | 1703, Face.tmmp => some (1706, (0 : Int))
  | 1703, Face.tmpp => some (1714, (0 : Int))
  | 1704, Face.tmpp => some (1705, (0 : Int))
  | 1706, Face.tmpp => some (1707, (0 : Int))
  | 1706, Face.tppm => some (1710, (0 : Int))
  | 1707, Face.yp => some (1708, (0 : Int))
  | 1708, Face.tmmm => some (1709, (0 : Int))
  | 1710, Face.yp => some (1711, (0 : Int))
  | 1711, Face.tmmm => some (1712, (0 : Int))
  | 1711, Face.tmpp => some (1713, (0 : Int))
  | 1714, Face.tmmm => some (1715, (0 : Int))
  | 1714, Face.tppm => some (879, (0 : Int))
  | 1715, Face.yp => some (1716, (0 : Int))
  | 1717, Face.tmmp => some (1718, (0 : Int))
  | 1717, Face.tpmm => some (657, (0 : Int))
  | 1717, Face.zm => some (1143, (0 : Int))
  | 1718, Face.tmmm => some (1719, (0 : Int))
  | 1718, Face.tpmm => some (1724, (0 : Int))
  | 1718, Face.zm => some (1131, (0 : Int))
  | 1719, Face.tmpp => some (1720, (0 : Int))
  | 1719, Face.yp => some (1721, (0 : Int))
  | 1719, Face.zp => some (1722, (0 : Int))
  | 1722, Face.yp => some (1723, (0 : Int))
  | 1724, Face.tmmm => some (588, (0 : Int))
  | 1724, Face.tmpp => some (1725, (0 : Int))
  | 1724, Face.yp => some (1726, (0 : Int))
  | 1724, Face.zm => some (706, (0 : Int))
  | 1725, Face.zm => some (703, (0 : Int))
  | 1726, Face.zm => some (707, (0 : Int))
  | 1727, Face.tmmp => some (1122, (0 : Int))
  | 1727, Face.tppp => some (1728, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard026
