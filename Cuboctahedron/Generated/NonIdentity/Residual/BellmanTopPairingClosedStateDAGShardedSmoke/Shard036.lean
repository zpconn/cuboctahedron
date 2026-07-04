import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard036

open Cuboctahedron

def shardIndex : Nat := 36
def stateStart : Nat := 2304
def stateStop : Nat := 2368
def emittedEdgeCount : Nat := 82

def next : Nat -> Face -> Option (Nat × Int)
  | 2304, Face.tmmp => some (2305, (0 : Int))
  | 2304, Face.tpmp => some (2320, (0 : Int))
  | 2304, Face.zp => some (2357, (0 : Int))
  | 2305, Face.tmpp => some (2306, (0 : Int))
  | 2305, Face.tppp => some (2313, (0 : Int))
  | 2305, Face.zm => some (2315, (0 : Int))
  | 2306, Face.tmpm => some (2307, (0 : Int))
  | 2306, Face.zm => some (2311, (0 : Int))
  | 2307, Face.tppp => some (2308, (0 : Int))
  | 2307, Face.zm => some (2310, (0 : Int))
  | 2308, Face.zm => some (2309, (0 : Int))
  | 2311, Face.tppp => some (2312, (0 : Int))
  | 2313, Face.tmpm => some (2314, (0 : Int))
  | 2313, Face.zm => some (2279, (0 : Int))
  | 2315, Face.tmpm => some (2316, (0 : Int))
  | 2315, Face.tmpp => some (2318, (0 : Int))
  | 2316, Face.tppp => some (2317, (0 : Int))
  | 2318, Face.tppp => some (2319, (0 : Int))
  | 2320, Face.tmmm => some (2321, (0 : Int))
  | 2320, Face.tmmp => some (2330, (0 : Int))
  | 2320, Face.tmpp => some (2343, (0 : Int))
  | 2320, Face.zp => some (2348, (0 : Int))
  | 2321, Face.tmpp => some (2322, (0 : Int))
  | 2321, Face.tpmp => some (2325, (0 : Int))
  | 2321, Face.zp => some (2329, (0 : Int))
  | 2322, Face.tmmp => some (2323, (0 : Int))
  | 2322, Face.zm => some (2243, (0 : Int))
  | 2323, Face.zm => some (2324, (0 : Int))
  | 2325, Face.tmmp => some (2326, (0 : Int))
  | 2326, Face.tmpp => some (2327, (0 : Int))
  | 2326, Face.zm => some (2328, (0 : Int))
  | 2329, Face.tmpm => some (1783, (0 : Int))
  | 2330, Face.tmpm => some (2331, (0 : Int))
  | 2330, Face.tmpp => some (2334, (0 : Int))
  | 2330, Face.zm => some (2340, (0 : Int))
  | 2331, Face.tppp => some (2332, (0 : Int))
  | 2332, Face.zm => some (2333, (0 : Int))
  | 2334, Face.tmpm => some (2335, (0 : Int))
  | 2334, Face.tppp => some (2337, (0 : Int))
  | 2334, Face.zm => some (2339, (0 : Int))
  | 2335, Face.zm => some (2336, (0 : Int))
  | 2337, Face.zm => some (2338, (0 : Int))
  | 2340, Face.tmpm => some (2341, (0 : Int))
  | 2340, Face.tppp => some (2342, (0 : Int))
  | 2341, Face.tmpp => some (2336, (0 : Int))
  | 2342, Face.tmpp => some (2265, (0 : Int))
  | 2343, Face.tmmm => some (2250, (0 : Int))
  | 2343, Face.tpmp => some (2344, (0 : Int))
  | 2343, Face.zm => some (2346, (0 : Int))
  | 2344, Face.zm => some (2345, (0 : Int))
  | 2346, Face.tmmp => some (2347, (0 : Int))
  | 2348, Face.tmmm => some (2290, (0 : Int))
  | 2348, Face.tmpm => some (2349, (0 : Int))
  | 2348, Face.tmpp => some (2350, (0 : Int))
  | 2349, Face.tmmp => some (1224, (0 : Int))
  | 2350, Face.tmmp => some (2351, (0 : Int))
  | 2350, Face.tmpm => some (2353, (0 : Int))
  | 2351, Face.tmmm => some (2352, (0 : Int))
  | 2353, Face.tmmm => some (2354, (0 : Int))
  | 2354, Face.tmmp => some (2355, (0 : Int))
  | 2355, Face.xp => some (2356, (0 : Int))
  | 2357, Face.tmmm => some (2276, (0 : Int))
  | 2357, Face.tmmp => some (2358, (0 : Int))
  | 2357, Face.tpmm => some (2363, (0 : Int))
  | 2358, Face.tmmm => some (2359, (0 : Int))
  | 2358, Face.tmpm => some (2362, (0 : Int))
  | 2359, Face.tmpm => some (2360, (0 : Int))
  | 2360, Face.tmpp => some (2361, (0 : Int))
  | 2363, Face.tmmm => some (2266, (0 : Int))
  | 2363, Face.tmpm => some (2346, (0 : Int))
  | 2364, Face.tmpm => some (2365, (0 : Int))
  | 2364, Face.tpmm => some (2381, (0 : Int))
  | 2364, Face.tppm => some (2163, (0 : Int))
  | 2364, Face.zm => some (2384, (0 : Int))
  | 2365, Face.tmmp => some (2366, (0 : Int))
  | 2365, Face.tpmm => some (2371, (0 : Int))
  | 2365, Face.tpmp => some (2377, (0 : Int))
  | 2365, Face.zp => some (2379, (0 : Int))
  | 2366, Face.tpmp => some (2367, (0 : Int))
  | 2366, Face.tppm => some (2370, (0 : Int))
  | 2366, Face.zp => some (2208, (0 : Int))
  | 2367, Face.zm => some (2368, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard036
