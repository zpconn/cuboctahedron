import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard038

open Cuboctahedron

def shardIndex : Nat := 38
def stateStart : Nat := 2432
def stateStop : Nat := 2496
def emittedEdgeCount : Nat := 71

def next : Nat -> Face -> Option (Nat × Int)
  | 2432, Face.zp => some (2433, (0 : Int))
  | 2435, Face.tpmp => some (2436, (0 : Int))
  | 2435, Face.zp => some (2442, (0 : Int))
  | 2436, Face.tmmp => some (2437, (0 : Int))
  | 2436, Face.zm => some (2440, (0 : Int))
  | 2437, Face.zm => some (2438, (0 : Int))
  | 2438, Face.zp => some (2439, (0 : Int))
  | 2440, Face.zp => some (2441, (0 : Int))
  | 2441, Face.tmmp => some (2439, (0 : Int))
  | 2442, Face.tmmp => some (2443, (0 : Int))
  | 2442, Face.zm => some (2445, (0 : Int))
  | 2443, Face.zm => some (2444, (0 : Int))
  | 2446, Face.tmpp => some (2447, (0 : Int))
  | 2446, Face.zp => some (2454, (0 : Int))
  | 2447, Face.tmmp => some (2448, (0 : Int))
  | 2447, Face.zm => some (2452, (0 : Int))
  | 2448, Face.zm => some (2449, (0 : Int))
  | 2449, Face.zp => some (2450, (0 : Int))
  | 2450, Face.xp => some (2451, (0 : Int))
  | 2452, Face.zp => some (2453, (0 : Int))
  | 2453, Face.tmmp => some (2450, (0 : Int))
  | 2454, Face.tmmp => some (2455, (0 : Int))
  | 2454, Face.zm => some (2457, (0 : Int))
  | 2455, Face.zm => some (2456, (0 : Int))
  | 2457, Face.tmpp => some (2453, (0 : Int))
  | 2458, Face.tmpm => some (1310, (0 : Int))
  | 2458, Face.zm => some (2459, (0 : Int))
  | 2459, Face.tmmp => some (2460, (0 : Int))
  | 2461, Face.tmmp => some (2462, (0 : Int))
  | 2461, Face.tmpp => some (2465, (0 : Int))
  | 2461, Face.zm => some (2468, (0 : Int))
  | 2462, Face.tmpm => some (2463, (0 : Int))
  | 2462, Face.zm => some (2464, (0 : Int))
  | 2465, Face.tmpm => some (2442, (0 : Int))
  | 2465, Face.zm => some (2466, (0 : Int))
  | 2466, Face.tmmp => some (2467, (0 : Int))
  | 2468, Face.tmpm => some (2459, (0 : Int))
  | 2468, Face.tmpp => some (2469, (0 : Int))
  | 2469, Face.tmmp => some (2470, (0 : Int))
  | 2471, Face.tmmp => some (2472, (0 : Int))
  | 2471, Face.tmpm => some (2488, (0 : Int))
  | 2471, Face.tpmm => some (2501, (0 : Int))
  | 2471, Face.zm => some (2524, (0 : Int))
  | 2472, Face.tpmm => some (2473, (0 : Int))
  | 2472, Face.zm => some (2483, (0 : Int))
  | 2473, Face.tmpm => some (2474, (0 : Int))
  | 2473, Face.tmpp => some (2475, (0 : Int))
  | 2473, Face.zm => some (2480, (0 : Int))
  | 2475, Face.tmpm => some (2476, (0 : Int))
  | 2475, Face.zm => some (2478, (0 : Int))
  | 2476, Face.zm => some (2477, (0 : Int))
  | 2477, Face.zp => some (1376, (0 : Int))
  | 2478, Face.zp => some (2479, (0 : Int))
  | 2480, Face.tmpm => some (2481, (0 : Int))
  | 2481, Face.tmpp => some (2477, (0 : Int))
  | 2481, Face.zp => some (2482, (0 : Int))
  | 2483, Face.tmpp => some (2484, (0 : Int))
  | 2483, Face.tpmp => some (2485, (0 : Int))
  | 2483, Face.zp => some (2486, (0 : Int))
  | 2486, Face.tmpm => some (2487, (0 : Int))
  | 2488, Face.tmmp => some (2489, (0 : Int))
  | 2488, Face.tpmm => some (2491, (0 : Int))
  | 2488, Face.zm => some (2498, (0 : Int))
  | 2489, Face.zm => some (2490, (0 : Int))
  | 2491, Face.tmpp => some (2492, (0 : Int))
  | 2491, Face.zp => some (2496, (0 : Int))
  | 2492, Face.tmmp => some (2493, (0 : Int))
  | 2492, Face.zm => some (2495, (0 : Int))
  | 2493, Face.zm => some (2494, (0 : Int))
  | 2494, Face.zp => some (1366, (0 : Int))
  | 2495, Face.zp => some (1369, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard038
