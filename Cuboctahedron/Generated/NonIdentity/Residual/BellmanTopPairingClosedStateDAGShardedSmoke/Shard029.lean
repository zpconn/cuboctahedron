import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard029

open Cuboctahedron

def shardIndex : Nat := 29
def stateStart : Nat := 1856
def stateStop : Nat := 1920
def emittedEdgeCount : Nat := 64

def next : Nat -> Face -> Option (Nat × Int)
  | 1856, Face.tmpp => some (1857, (0 : Int))
  | 1857, Face.tmmp => some (1854, (0 : Int))
  | 1858, Face.tmmp => some (1859, (0 : Int))
  | 1858, Face.tpmm => some (1862, (0 : Int))
  | 1858, Face.tpmp => some (1872, (0 : Int))
  | 1859, Face.tpmp => some (1860, (0 : Int))
  | 1860, Face.yp => some (1861, (0 : Int))
  | 1862, Face.tmpp => some (1863, (0 : Int))
  | 1862, Face.tpmp => some (1865, (0 : Int))
  | 1863, Face.tmmp => some (1864, (0 : Int))
  | 1865, Face.tmmp => some (1866, (0 : Int))
  | 1865, Face.yp => some (1870, (0 : Int))
  | 1866, Face.tmpp => some (1867, (0 : Int))
  | 1867, Face.yp => some (1868, (0 : Int))
  | 1868, Face.xp => some (1869, (0 : Int))
  | 1870, Face.tmpp => some (1871, (0 : Int))
  | 1871, Face.tmmp => some (1868, (0 : Int))
  | 1872, Face.tmpp => some (1873, (0 : Int))
  | 1872, Face.tppm => some (1875, (0 : Int))
  | 1873, Face.yp => some (1874, (0 : Int))
  | 1875, Face.yp => some (1876, (0 : Int))
  | 1876, Face.tmpp => some (1877, (0 : Int))
  | 1878, Face.tmmp => some (1879, (0 : Int))
  | 1878, Face.tmpm => some (1891, (0 : Int))
  | 1878, Face.tppp => some (1908, (0 : Int))
  | 1879, Face.tmpp => some (1880, (0 : Int))
  | 1879, Face.tppp => some (1886, (0 : Int))
  | 1880, Face.tpmp => some (1881, (0 : Int))
  | 1880, Face.tppm => some (1885, (0 : Int))
  | 1881, Face.tppp => some (1882, (0 : Int))
  | 1881, Face.yp => some (1883, (0 : Int))
  | 1883, Face.tmmm => some (1884, (0 : Int))
  | 1886, Face.tmpm => some (1887, (0 : Int))
  | 1886, Face.tmpp => some (1889, (0 : Int))
  | 1887, Face.tmmp => some (1888, (0 : Int))
  | 1889, Face.tmpm => some (1890, (0 : Int))
  | 1891, Face.tmmp => some (1892, (0 : Int))
  | 1891, Face.tmpp => some (1901, (0 : Int))
  | 1891, Face.tppp => some (1905, (0 : Int))
  | 1892, Face.tmpp => some (1893, (0 : Int))
  | 1892, Face.tppm => some (1896, (0 : Int))
  | 1893, Face.tppp => some (1894, (0 : Int))
  | 1893, Face.yp => some (1895, (0 : Int))
  | 1896, Face.tppp => some (1897, (0 : Int))
  | 1896, Face.yp => some (1899, (0 : Int))
  | 1897, Face.tmpp => some (1898, (0 : Int))
  | 1899, Face.tmpp => some (1900, (0 : Int))
  | 1901, Face.tppm => some (1902, (0 : Int))
  | 1902, Face.tmmp => some (1903, (0 : Int))
  | 1902, Face.tppp => some (1904, (0 : Int))
  | 1905, Face.tmpp => some (1906, (0 : Int))
  | 1906, Face.tmmp => some (1907, (0 : Int))
  | 1908, Face.tmmp => some (1909, (0 : Int))
  | 1908, Face.tmpp => some (1920, (0 : Int))
  | 1909, Face.tmpm => some (1910, (0 : Int))
  | 1909, Face.tmpp => some (1912, (0 : Int))
  | 1909, Face.tppm => some (1915, (0 : Int))
  | 1910, Face.tmmp => some (1911, (0 : Int))
  | 1912, Face.tmpm => some (1913, (0 : Int))
  | 1912, Face.yp => some (1914, (0 : Int))
  | 1915, Face.tmpm => some (1916, (0 : Int))
  | 1915, Face.yp => some (1918, (0 : Int))
  | 1916, Face.tmpp => some (1917, (0 : Int))
  | 1918, Face.tmpp => some (1919, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard029
