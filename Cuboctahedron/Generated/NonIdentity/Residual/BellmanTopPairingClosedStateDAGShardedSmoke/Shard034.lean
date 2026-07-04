import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard034

open Cuboctahedron

def shardIndex : Nat := 34
def stateStart : Nat := 2176
def stateStop : Nat := 2240
def emittedEdgeCount : Nat := 71

def next : Nat -> Face -> Option (Nat × Int)
  | 2176, Face.zm => some (2177, (0 : Int))
  | 2177, Face.tmpp => some (2178, (0 : Int))
  | 2179, Face.tppp => some (2180, (0 : Int))
  | 2181, Face.tpmp => some (2182, (0 : Int))
  | 2181, Face.zp => some (2188, (0 : Int))
  | 2182, Face.tmmp => some (2183, (0 : Int))
  | 2182, Face.tppp => some (2185, (0 : Int))
  | 2183, Face.zp => some (2184, (0 : Int))
  | 2185, Face.zp => some (2186, (0 : Int))
  | 2186, Face.tmmp => some (2187, (0 : Int))
  | 2188, Face.tmpm => some (2189, (0 : Int))
  | 2189, Face.tmmm => some (2190, (0 : Int))
  | 2191, Face.tmmm => some (2192, (0 : Int))
  | 2191, Face.tppm => some (2195, (0 : Int))
  | 2191, Face.zm => some (2198, (0 : Int))
  | 2192, Face.zm => some (2193, (0 : Int))
  | 2193, Face.tmpp => some (2194, (0 : Int))
  | 2195, Face.zm => some (2196, (0 : Int))
  | 2196, Face.tmmm => some (1118, (0 : Int))
  | 2196, Face.tmpp => some (2197, (0 : Int))
  | 2198, Face.tmmp => some (2199, (0 : Int))
  | 2198, Face.tppp => some (843, (0 : Int))
  | 2199, Face.tmpp => some (2200, (0 : Int))
  | 2201, Face.tpmp => some (2202, (0 : Int))
  | 2201, Face.zp => some (2205, (0 : Int))
  | 2202, Face.zm => some (2203, (0 : Int))
  | 2203, Face.tmpp => some (2204, (0 : Int))
  | 2204, Face.tmmp => some (785, (0 : Int))
  | 2205, Face.tmmp => some (2206, (0 : Int))
  | 2207, Face.tmmm => some (2208, (0 : Int))
  | 2207, Face.tpmp => some (2209, (0 : Int))
  | 2207, Face.tppm => some (2210, (0 : Int))
  | 2211, Face.tmmm => some (2212, (0 : Int))
  | 2211, Face.zm => some (2216, (0 : Int))
  | 2212, Face.tmpm => some (2213, (0 : Int))
  | 2212, Face.tppm => some (2214, (0 : Int))
  | 2212, Face.zm => some (2215, (0 : Int))
  | 2214, Face.tmpm => some (2043, (0 : Int))
  | 2215, Face.tmpm => some (2118, (0 : Int))
  | 2216, Face.tmpm => some (2125, (0 : Int))
  | 2217, Face.tmmm => some (2136, (0 : Int))
  | 2217, Face.tmpp => some (2218, (0 : Int))
  | 2217, Face.zm => some (2221, (0 : Int))
  | 2218, Face.tmmm => some (2219, (0 : Int))
  | 2218, Face.tmpm => some (854, (0 : Int))
  | 2218, Face.zm => some (2220, (0 : Int))
  | 2221, Face.tmmm => some (2166, (0 : Int))
  | 2221, Face.tmpm => some (2222, (0 : Int))
  | 2221, Face.tmpp => some (2223, (0 : Int))
  | 2224, Face.tmmp => some (2225, (0 : Int))
  | 2224, Face.tmpp => some (2230, (0 : Int))
  | 2224, Face.tpmp => some (2127, (0 : Int))
  | 2224, Face.tppp => some (2170, (0 : Int))
  | 2225, Face.tmpm => some (2226, (0 : Int))
  | 2225, Face.tmpp => some (2228, (0 : Int))
  | 2226, Face.tppp => some (2227, (0 : Int))
  | 2228, Face.tppp => some (2229, (0 : Int))
  | 2230, Face.tmmm => some (2231, (0 : Int))
  | 2230, Face.tpmp => some (2188, (0 : Int))
  | 2230, Face.tppm => some (2232, (0 : Int))
  | 2233, Face.tpmm => some (2234, (0 : Int))
  | 2233, Face.zm => some (2269, (0 : Int))
  | 2234, Face.tmmp => some (2235, (0 : Int))
  | 2234, Face.tmpm => some (2244, (0 : Int))
  | 2234, Face.zm => some (2260, (0 : Int))
  | 2235, Face.zm => some (2236, (0 : Int))
  | 2236, Face.tpmp => some (2237, (0 : Int))
  | 2236, Face.zp => some (2242, (0 : Int))
  | 2237, Face.tmmp => some (2238, (0 : Int))
  | 2237, Face.tmpm => some (2240, (0 : Int))
  | 2238, Face.zm => some (2239, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard034
