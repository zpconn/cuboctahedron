import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard028

open Cuboctahedron

def shardIndex : Nat := 28
def stateStart : Nat := 1792
def stateStop : Nat := 1856
def emittedEdgeCount : Nat := 65

def next : Nat -> Face -> Option (Nat × Int)
  | 1792, Face.tmpp => some (1793, (0 : Int))
  | 1792, Face.tppm => some (1795, (0 : Int))
  | 1793, Face.yp => some (1794, (0 : Int))
  | 1795, Face.tmmp => some (1796, (0 : Int))
  | 1796, Face.tmpp => some (1797, (0 : Int))
  | 1797, Face.yp => some (1798, (0 : Int))
  | 1799, Face.tmmm => some (1800, (0 : Int))
  | 1799, Face.tmmp => some (1803, (0 : Int))
  | 1799, Face.tmpp => some (1804, (0 : Int))
  | 1800, Face.tmpp => some (1801, (0 : Int))
  | 1801, Face.tmmp => some (1802, (0 : Int))
  | 1804, Face.tmmm => some (1805, (0 : Int))
  | 1805, Face.tmmp => some (1806, (0 : Int))
  | 1807, Face.tpmm => some (1808, (0 : Int))
  | 1808, Face.tmpp => some (1809, (0 : Int))
  | 1808, Face.tppm => some (1811, (0 : Int))
  | 1809, Face.yp => some (1810, (0 : Int))
  | 1811, Face.tmmp => some (1812, (0 : Int))
  | 1811, Face.yp => some (1816, (0 : Int))
  | 1812, Face.tmpp => some (1813, (0 : Int))
  | 1813, Face.yp => some (1814, (0 : Int))
  | 1814, Face.xp => some (1815, (0 : Int))
  | 1816, Face.tmpp => some (1817, (0 : Int))
  | 1817, Face.tmmp => some (1814, (0 : Int))
  | 1818, Face.tmmp => some (1819, (0 : Int))
  | 1819, Face.tmmm => some (1820, (0 : Int))
  | 1819, Face.tpmm => some (1821, (0 : Int))
  | 1821, Face.tmpp => some (1822, (0 : Int))
  | 1822, Face.yp => some (1823, (0 : Int))
  | 1823, Face.tmmm => some (1824, (0 : Int))
  | 1825, Face.tmmm => some (1826, (0 : Int))
  | 1825, Face.tpmm => some (1878, (0 : Int))
  | 1825, Face.tpmp => some (1923, (0 : Int))
  | 1825, Face.tppm => some (1961, (0 : Int))
  | 1826, Face.tpmm => some (1827, (0 : Int))
  | 1826, Face.tpmp => some (1847, (0 : Int))
  | 1826, Face.tppm => some (1858, (0 : Int))
  | 1827, Face.tmmp => some (1828, (0 : Int))
  | 1827, Face.tmpp => some (1842, (0 : Int))
  | 1828, Face.tmpm => some (1829, (0 : Int))
  | 1828, Face.tmpp => some (1836, (0 : Int))
  | 1828, Face.tppm => some (1837, (0 : Int))
  | 1829, Face.tmmp => some (1830, (0 : Int))
  | 1829, Face.yp => some (1832, (0 : Int))
  | 1830, Face.tmpp => some (1831, (0 : Int))
  | 1832, Face.tmpp => some (1833, (0 : Int))
  | 1833, Face.tmmp => some (1834, (0 : Int))
  | 1834, Face.xp => some (1835, (0 : Int))
  | 1837, Face.tmpm => some (1838, (0 : Int))
  | 1837, Face.yp => some (1840, (0 : Int))
  | 1838, Face.tmpp => some (1839, (0 : Int))
  | 1840, Face.tmpp => some (1841, (0 : Int))
  | 1842, Face.tpmp => some (1843, (0 : Int))
  | 1842, Face.tppm => some (1845, (0 : Int))
  | 1843, Face.yp => some (1844, (0 : Int))
  | 1845, Face.tmmp => some (1846, (0 : Int))
  | 1847, Face.tpmm => some (1848, (0 : Int))
  | 1848, Face.tmpp => some (1849, (0 : Int))
  | 1848, Face.tppm => some (1851, (0 : Int))
  | 1849, Face.yp => some (1850, (0 : Int))
  | 1851, Face.tmmp => some (1852, (0 : Int))
  | 1851, Face.yp => some (1856, (0 : Int))
  | 1852, Face.tmpp => some (1853, (0 : Int))
  | 1853, Face.yp => some (1854, (0 : Int))
  | 1854, Face.xp => some (1855, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard028
