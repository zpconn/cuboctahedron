import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard027

open Cuboctahedron

def shardIndex : Nat := 27
def stateStart : Nat := 1728
def stateStop : Nat := 1792
def emittedEdgeCount : Nat := 70

def next : Nat -> Face -> Option (Nat × Int)
  | 1728, Face.tmmp => some (1729, (0 : Int))
  | 1728, Face.tmpp => some (1731, (0 : Int))
  | 1729, Face.tppm => some (1730, (0 : Int))
  | 1732, Face.tmmm => some (1733, (0 : Int))
  | 1732, Face.tpmm => some (1755, (0 : Int))
  | 1732, Face.tpmp => some (1767, (0 : Int))
  | 1733, Face.tmmp => some (1734, (0 : Int))
  | 1733, Face.tpmm => some (1741, (0 : Int))
  | 1733, Face.tpmp => some (1751, (0 : Int))
  | 1734, Face.tpmm => some (1735, (0 : Int))
  | 1734, Face.tpmp => some (1739, (0 : Int))
  | 1735, Face.tmpp => some (1736, (0 : Int))
  | 1735, Face.tpmp => some (1737, (0 : Int))
  | 1737, Face.yp => some (1738, (0 : Int))
  | 1739, Face.tppm => some (1740, (0 : Int))
  | 1741, Face.tmmp => some (1742, (0 : Int))
  | 1741, Face.tmpp => some (1746, (0 : Int))
  | 1741, Face.tpmp => some (1749, (0 : Int))
  | 1742, Face.tpmp => some (1743, (0 : Int))
  | 1742, Face.tppm => some (1745, (0 : Int))
  | 1743, Face.yp => some (1744, (0 : Int))
  | 1746, Face.tpmp => some (1747, (0 : Int))
  | 1747, Face.yp => some (1748, (0 : Int))
  | 1749, Face.tmpp => some (1750, (0 : Int))
  | 1751, Face.tmpp => some (1752, (0 : Int))
  | 1752, Face.tppm => some (1753, (0 : Int))
  | 1753, Face.tmmp => some (1754, (0 : Int))
  | 1755, Face.tmmp => some (844, (0 : Int))
  | 1755, Face.tpmp => some (1703, (0 : Int))
  | 1755, Face.tppp => some (1756, (0 : Int))
  | 1756, Face.tmmp => some (1757, (0 : Int))
  | 1756, Face.tmpp => some (1761, (0 : Int))
  | 1756, Face.tpmp => some (1764, (0 : Int))
  | 1757, Face.tmpm => some (1758, (0 : Int))
  | 1757, Face.tppm => some (1760, (0 : Int))
  | 1758, Face.yp => some (1759, (0 : Int))
  | 1761, Face.tpmp => some (1762, (0 : Int))
  | 1762, Face.tmmp => some (1763, (0 : Int))
  | 1764, Face.tmpp => some (1765, (0 : Int))
  | 1765, Face.tmmp => some (1766, (0 : Int))
  | 1767, Face.tppm => some (1768, (0 : Int))
  | 1768, Face.tmmm => some (1769, (0 : Int))
  | 1768, Face.tmmp => some (1775, (0 : Int))
  | 1768, Face.tmpp => some (1781, (0 : Int))
  | 1769, Face.tmpp => some (1770, (0 : Int))
  | 1769, Face.tppm => some (1772, (0 : Int))
  | 1770, Face.yp => some (1771, (0 : Int))
  | 1772, Face.yp => some (1773, (0 : Int))
  | 1773, Face.tmpp => some (1774, (0 : Int))
  | 1775, Face.tmmm => some (1776, (0 : Int))
  | 1775, Face.tmpp => some (1778, (0 : Int))
  | 1776, Face.yp => some (1777, (0 : Int))
  | 1778, Face.yp => some (1779, (0 : Int))
  | 1779, Face.tmmm => some (1780, (0 : Int))
  | 1781, Face.tmmm => some (1782, (0 : Int))
  | 1781, Face.tppm => some (1784, (0 : Int))
  | 1782, Face.yp => some (1783, (0 : Int))
  | 1785, Face.tpmp => some (1786, (0 : Int))
  | 1785, Face.tppm => some (1148, (0 : Int))
  | 1785, Face.tppp => some (1825, (0 : Int))
  | 1786, Face.tmmm => some (1787, (0 : Int))
  | 1786, Face.tpmm => some (1348, (0 : Int))
  | 1786, Face.tppm => some (1818, (0 : Int))
  | 1787, Face.tpmm => some (1788, (0 : Int))
  | 1787, Face.tppm => some (1799, (0 : Int))
  | 1787, Face.tppp => some (1807, (0 : Int))
  | 1788, Face.tmpp => some (1789, (0 : Int))
  | 1788, Face.tppp => some (1792, (0 : Int))
  | 1789, Face.tppm => some (1790, (0 : Int))
  | 1790, Face.tmmp => some (1791, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard027
