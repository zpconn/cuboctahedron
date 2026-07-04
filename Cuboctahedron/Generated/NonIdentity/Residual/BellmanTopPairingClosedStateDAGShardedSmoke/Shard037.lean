import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard037

open Cuboctahedron

def shardIndex : Nat := 37
def stateStart : Nat := 2368
def stateStop : Nat := 2432
def emittedEdgeCount : Nat := 74

def next : Nat -> Face -> Option (Nat × Int)
  | 2368, Face.tmpp => some (2369, (0 : Int))
  | 2371, Face.tpmp => some (2372, (0 : Int))
  | 2371, Face.zp => some (2375, (0 : Int))
  | 2372, Face.tmmp => some (2373, (0 : Int))
  | 2373, Face.zp => some (2374, (0 : Int))
  | 2375, Face.tmpm => some (2376, (0 : Int))
  | 2377, Face.tppm => some (1116, (0 : Int))
  | 2377, Face.zm => some (2378, (0 : Int))
  | 2378, Face.tmmp => some (2193, (0 : Int))
  | 2379, Face.tpmp => some (2380, (0 : Int))
  | 2379, Face.tppm => some (2205, (0 : Int))
  | 2381, Face.zm => some (2382, (0 : Int))
  | 2382, Face.tmpm => some (2383, (0 : Int))
  | 2383, Face.tmmp => some (2124, (0 : Int))
  | 2384, Face.tmmp => some (2385, (0 : Int))
  | 2384, Face.tmpp => some (2389, (0 : Int))
  | 2384, Face.tpmp => some (2392, (0 : Int))
  | 2385, Face.tmpm => some (2386, (0 : Int))
  | 2385, Face.tmpp => some (2387, (0 : Int))
  | 2385, Face.tppm => some (2388, (0 : Int))
  | 2389, Face.tpmp => some (2375, (0 : Int))
  | 2389, Face.tppm => some (2390, (0 : Int))
  | 2390, Face.tmmp => some (2391, (0 : Int))
  | 2392, Face.tmpm => some (2393, (0 : Int))
  | 2392, Face.tmpp => some (2394, (0 : Int))
  | 2393, Face.tmmp => some (2088, (0 : Int))
  | 2395, Face.tmpm => some (2396, (0 : Int))
  | 2395, Face.tppm => some (2224, (0 : Int))
  | 2395, Face.tppp => some (2297, (0 : Int))
  | 2396, Face.tmpp => some (2397, (0 : Int))
  | 2396, Face.tpmp => some (2403, (0 : Int))
  | 2396, Face.tppp => some (2409, (0 : Int))
  | 2397, Face.tpmp => some (2398, (0 : Int))
  | 2397, Face.tppm => some (2400, (0 : Int))
  | 2398, Face.tppp => some (2399, (0 : Int))
  | 2400, Face.tmmp => some (2401, (0 : Int))
  | 2400, Face.tppp => some (2402, (0 : Int))
  | 2403, Face.tmpp => some (2404, (0 : Int))
  | 2403, Face.tppm => some (2406, (0 : Int))
  | 2404, Face.tppp => some (2405, (0 : Int))
  | 2406, Face.tmmp => some (2407, (0 : Int))
  | 2406, Face.tppp => some (1211, (0 : Int))
  | 2407, Face.tmpp => some (2408, (0 : Int))
  | 2409, Face.tmpm => some (2410, (0 : Int))
  | 2410, Face.tmmp => some (1191, (0 : Int))
  | 2411, Face.tppm => some (2412, (0 : Int))
  | 2411, Face.zm => some (2577, (0 : Int))
  | 2412, Face.tpmm => some (2413, (0 : Int))
  | 2412, Face.tpmp => some (2471, (0 : Int))
  | 2412, Face.zm => some (2538, (0 : Int))
  | 2413, Face.tmmp => some (2414, (0 : Int))
  | 2413, Face.tmpm => some (2429, (0 : Int))
  | 2413, Face.zp => some (2461, (0 : Int))
  | 2414, Face.tpmm => some (2415, (0 : Int))
  | 2414, Face.zm => some (2420, (0 : Int))
  | 2415, Face.tmpm => some (2416, (0 : Int))
  | 2415, Face.zm => some (2417, (0 : Int))
  | 2417, Face.tmpm => some (2418, (0 : Int))
  | 2418, Face.zp => some (2419, (0 : Int))
  | 2420, Face.tmpp => some (2421, (0 : Int))
  | 2420, Face.tpmp => some (2423, (0 : Int))
  | 2420, Face.zp => some (2427, (0 : Int))
  | 2421, Face.zm => some (2422, (0 : Int))
  | 2423, Face.tmpm => some (2424, (0 : Int))
  | 2424, Face.tmpp => some (2425, (0 : Int))
  | 2424, Face.zp => some (2426, (0 : Int))
  | 2427, Face.tmpm => some (2428, (0 : Int))
  | 2429, Face.tmmp => some (2430, (0 : Int))
  | 2429, Face.tmpp => some (2435, (0 : Int))
  | 2429, Face.tpmp => some (2446, (0 : Int))
  | 2429, Face.zp => some (2458, (0 : Int))
  | 2430, Face.tmpm => some (2431, (0 : Int))
  | 2430, Face.zm => some (2434, (0 : Int))
  | 2431, Face.zm => some (2432, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard037
