import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard032

open Cuboctahedron

def shardIndex : Nat := 32
def stateStart : Nat := 2048
def stateStop : Nat := 2112
def emittedEdgeCount : Nat := 81

def next : Nat -> Face -> Option (Nat × Int)
  | 2048, Face.tmpm => some (2049, (0 : Int))
  | 2048, Face.tmpp => some (2052, (0 : Int))
  | 2048, Face.zm => some (2058, (0 : Int))
  | 2049, Face.tppp => some (2050, (0 : Int))
  | 2050, Face.zm => some (2051, (0 : Int))
  | 2052, Face.tmpm => some (2053, (0 : Int))
  | 2052, Face.tppp => some (2055, (0 : Int))
  | 2052, Face.zm => some (2057, (0 : Int))
  | 2053, Face.zm => some (2054, (0 : Int))
  | 2055, Face.zm => some (2056, (0 : Int))
  | 2058, Face.tmpm => some (2059, (0 : Int))
  | 2058, Face.tppp => some (2060, (0 : Int))
  | 2059, Face.tmpp => some (2054, (0 : Int))
  | 2060, Face.tmpp => some (2044, (0 : Int))
  | 2061, Face.tmmp => some (2062, (0 : Int))
  | 2061, Face.tmpp => some (2074, (0 : Int))
  | 2061, Face.tppp => some (599, (0 : Int))
  | 2061, Face.zp => some (2086, (0 : Int))
  | 2062, Face.tmpp => some (2063, (0 : Int))
  | 2062, Face.zp => some (2070, (0 : Int))
  | 2063, Face.tppp => some (2064, (0 : Int))
  | 2063, Face.zm => some (2068, (0 : Int))
  | 2064, Face.zm => some (2065, (0 : Int))
  | 2065, Face.zp => some (2066, (0 : Int))
  | 2066, Face.xp => some (2067, (0 : Int))
  | 2068, Face.zp => some (2069, (0 : Int))
  | 2070, Face.tppp => some (2071, (0 : Int))
  | 2070, Face.zm => some (2073, (0 : Int))
  | 2071, Face.zm => some (2072, (0 : Int))
  | 2073, Face.tmpp => some (2069, (0 : Int))
  | 2074, Face.tmmm => some (2075, (0 : Int))
  | 2074, Face.tppm => some (2078, (0 : Int))
  | 2074, Face.zm => some (2081, (0 : Int))
  | 2075, Face.zm => some (2076, (0 : Int))
  | 2076, Face.zp => some (2077, (0 : Int))
  | 2078, Face.zm => some (2079, (0 : Int))
  | 2079, Face.tmmm => some (561, (0 : Int))
  | 2079, Face.zp => some (2080, (0 : Int))
  | 2081, Face.tmmp => some (2082, (0 : Int))
  | 2081, Face.tppp => some (2084, (0 : Int))
  | 2082, Face.zp => some (2083, (0 : Int))
  | 2084, Face.zp => some (2085, (0 : Int))
  | 2085, Face.tmmp => some (562, (0 : Int))
  | 2086, Face.tmmm => some (2087, (0 : Int))
  | 2086, Face.tppm => some (1726, (0 : Int))
  | 2086, Face.zm => some (2090, (0 : Int))
  | 2087, Face.zm => some (2088, (0 : Int))
  | 2088, Face.tmpp => some (2089, (0 : Int))
  | 2090, Face.tmmp => some (2073, (0 : Int))
  | 2090, Face.tppp => some (606, (0 : Int))
  | 2091, Face.tmmp => some (2092, (0 : Int))
  | 2091, Face.tmpp => some (2102, (0 : Int))
  | 2091, Face.zp => some (2106, (0 : Int))
  | 2092, Face.tmpm => some (2093, (0 : Int))
  | 2092, Face.tmpp => some (2094, (0 : Int))
  | 2092, Face.zm => some (2099, (0 : Int))
  | 2094, Face.tmpm => some (2095, (0 : Int))
  | 2094, Face.zm => some (2097, (0 : Int))
  | 2095, Face.zm => some (2096, (0 : Int))
  | 2096, Face.zp => some (691, (0 : Int))
  | 2097, Face.zp => some (2098, (0 : Int))
  | 2099, Face.tmpm => some (2100, (0 : Int))
  | 2100, Face.tmpp => some (2096, (0 : Int))
  | 2100, Face.zp => some (2101, (0 : Int))
  | 2102, Face.tpmp => some (2103, (0 : Int))
  | 2102, Face.zm => some (732, (0 : Int))
  | 2103, Face.tmmp => some (638, (0 : Int))
  | 2103, Face.zm => some (2104, (0 : Int))
  | 2104, Face.zp => some (2105, (0 : Int))
  | 2105, Face.tmmp => some (640, (0 : Int))
  | 2106, Face.tmpm => some (661, (0 : Int))
  | 2106, Face.tmpp => some (2107, (0 : Int))
  | 2106, Face.zm => some (2110, (0 : Int))
  | 2107, Face.tmmp => some (2108, (0 : Int))
  | 2107, Face.tmpm => some (2109, (0 : Int))
  | 2107, Face.zm => some (754, (0 : Int))
  | 2108, Face.zm => some (748, (0 : Int))
  | 2109, Face.zm => some (687, (0 : Int))
  | 2110, Face.tmmp => some (2111, (0 : Int))
  | 2110, Face.tmpm => some (686, (0 : Int))
  | 2111, Face.tmpp => some (2098, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard032
