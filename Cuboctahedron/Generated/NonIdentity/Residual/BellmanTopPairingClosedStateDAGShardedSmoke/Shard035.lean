import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard035

open Cuboctahedron

def shardIndex : Nat := 35
def stateStart : Nat := 2240
def stateStop : Nat := 2304
def emittedEdgeCount : Nat := 67

def next : Nat -> Face -> Option (Nat × Int)
  | 2240, Face.zp => some (2241, (0 : Int))
  | 2242, Face.tmpm => some (2243, (0 : Int))
  | 2244, Face.tmmp => some (2245, (0 : Int))
  | 2244, Face.tpmp => some (2251, (0 : Int))
  | 2244, Face.zp => some (2255, (0 : Int))
  | 2245, Face.tpmp => some (2246, (0 : Int))
  | 2245, Face.tppm => some (2249, (0 : Int))
  | 2245, Face.zm => some (2250, (0 : Int))
  | 2246, Face.zm => some (2247, (0 : Int))
  | 2247, Face.zp => some (2248, (0 : Int))
  | 2251, Face.zm => some (2252, (0 : Int))
  | 2252, Face.tmmp => some (2253, (0 : Int))
  | 2253, Face.zm => some (2254, (0 : Int))
  | 2255, Face.tpmp => some (2256, (0 : Int))
  | 2255, Face.zm => some (2258, (0 : Int))
  | 2256, Face.zm => some (2257, (0 : Int))
  | 2258, Face.tmmp => some (2259, (0 : Int))
  | 2260, Face.tmmp => some (2261, (0 : Int))
  | 2260, Face.zp => some (2268, (0 : Int))
  | 2261, Face.tmpm => some (2262, (0 : Int))
  | 2261, Face.tppm => some (2263, (0 : Int))
  | 2261, Face.zm => some (2266, (0 : Int))
  | 2263, Face.tmpm => some (2264, (0 : Int))
  | 2264, Face.zp => some (2265, (0 : Int))
  | 2266, Face.tmpm => some (2267, (0 : Int))
  | 2268, Face.tmpm => some (2258, (0 : Int))
  | 2269, Face.tmmp => some (2270, (0 : Int))
  | 2269, Face.tpmp => some (2280, (0 : Int))
  | 2269, Face.zp => some (2297, (0 : Int))
  | 2270, Face.tmpp => some (2271, (0 : Int))
  | 2270, Face.zm => some (2276, (0 : Int))
  | 2271, Face.tmpm => some (2272, (0 : Int))
  | 2271, Face.tppm => some (2274, (0 : Int))
  | 2271, Face.zm => some (2275, (0 : Int))
  | 2272, Face.zm => some (2273, (0 : Int))
  | 2276, Face.tmpm => some (2277, (0 : Int))
  | 2276, Face.tmpp => some (2278, (0 : Int))
  | 2276, Face.tppm => some (2279, (0 : Int))
  | 2280, Face.tmmp => some (2281, (0 : Int))
  | 2280, Face.tmpp => some (2255, (0 : Int))
  | 2280, Face.zp => some (2292, (0 : Int))
  | 2281, Face.tmpm => some (2282, (0 : Int))
  | 2281, Face.tmpp => some (2283, (0 : Int))
  | 2281, Face.tppm => some (2286, (0 : Int))
  | 2281, Face.zm => some (2290, (0 : Int))
  | 2283, Face.tmpm => some (2284, (0 : Int))
  | 2283, Face.zm => some (2267, (0 : Int))
  | 2284, Face.zm => some (2285, (0 : Int))
  | 2286, Face.tmpm => some (2287, (0 : Int))
  | 2287, Face.tmpp => some (2288, (0 : Int))
  | 2287, Face.zp => some (2289, (0 : Int))
  | 2290, Face.tmpm => some (2291, (0 : Int))
  | 2291, Face.tmpp => some (2285, (0 : Int))
  | 2292, Face.tmpm => some (2293, (0 : Int))
  | 2292, Face.tmpp => some (2294, (0 : Int))
  | 2293, Face.tmmp => some (1771, (0 : Int))
  | 2294, Face.tmmp => some (2295, (0 : Int))
  | 2294, Face.tmpm => some (2296, (0 : Int))
  | 2297, Face.tmmp => some (2298, (0 : Int))
  | 2297, Face.tpmm => some (2268, (0 : Int))
  | 2298, Face.tmpm => some (2299, (0 : Int))
  | 2298, Face.tppm => some (2301, (0 : Int))
  | 2299, Face.tmmp => some (2300, (0 : Int))
  | 2301, Face.tmpm => some (2302, (0 : Int))
  | 2303, Face.tppm => some (2304, (0 : Int))
  | 2303, Face.tppp => some (2364, (0 : Int))
  | 2303, Face.zm => some (2395, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard035
