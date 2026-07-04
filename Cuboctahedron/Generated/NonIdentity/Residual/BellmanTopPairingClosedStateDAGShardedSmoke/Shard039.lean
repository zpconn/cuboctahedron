import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard039

open Cuboctahedron

def shardIndex : Nat := 39
def stateStart : Nat := 2496
def stateStop : Nat := 2560
def emittedEdgeCount : Nat := 78

def next : Nat -> Face -> Option (Nat × Int)
  | 2496, Face.tmmp => some (2497, (0 : Int))
  | 2496, Face.zm => some (1368, (0 : Int))
  | 2497, Face.zm => some (1249, (0 : Int))
  | 2498, Face.zp => some (2499, (0 : Int))
  | 2499, Face.tmmp => some (2500, (0 : Int))
  | 2501, Face.tmmp => some (2502, (0 : Int))
  | 2501, Face.tmpp => some (2505, (0 : Int))
  | 2501, Face.zm => some (2516, (0 : Int))
  | 2502, Face.tmpm => some (2503, (0 : Int))
  | 2502, Face.zm => some (2504, (0 : Int))
  | 2505, Face.tmpm => some (2506, (0 : Int))
  | 2505, Face.zm => some (2513, (0 : Int))
  | 2506, Face.tmmp => some (2507, (0 : Int))
  | 2506, Face.zm => some (2511, (0 : Int))
  | 2507, Face.zm => some (2508, (0 : Int))
  | 2508, Face.zp => some (2509, (0 : Int))
  | 2509, Face.xp => some (2510, (0 : Int))
  | 2511, Face.zp => some (2512, (0 : Int))
  | 2512, Face.tmmp => some (2509, (0 : Int))
  | 2513, Face.tmmp => some (2514, (0 : Int))
  | 2514, Face.zm => some (2515, (0 : Int))
  | 2516, Face.tmpm => some (1260, (0 : Int))
  | 2516, Face.tmpp => some (2517, (0 : Int))
  | 2516, Face.zp => some (2522, (0 : Int))
  | 2517, Face.tmmp => some (2518, (0 : Int))
  | 2517, Face.tmpm => some (2520, (0 : Int))
  | 2517, Face.zm => some (2521, (0 : Int))
  | 2518, Face.zm => some (2519, (0 : Int))
  | 2520, Face.zm => some (1289, (0 : Int))
  | 2522, Face.tmmp => some (2523, (0 : Int))
  | 2522, Face.tmpm => some (1288, (0 : Int))
  | 2524, Face.tmmp => some (2525, (0 : Int))
  | 2524, Face.tmpp => some (2529, (0 : Int))
  | 2524, Face.tpmp => some (2532, (0 : Int))
  | 2524, Face.zp => some (2537, (0 : Int))
  | 2525, Face.tmpm => some (2526, (0 : Int))
  | 2525, Face.zm => some (2528, (0 : Int))
  | 2526, Face.zm => some (2527, (0 : Int))
  | 2529, Face.tpmp => some (2496, (0 : Int))
  | 2529, Face.zp => some (2530, (0 : Int))
  | 2530, Face.tmmp => some (2531, (0 : Int))
  | 2532, Face.tmpp => some (2533, (0 : Int))
  | 2532, Face.zp => some (2535, (0 : Int))
  | 2533, Face.tmmp => some (2534, (0 : Int))
  | 2533, Face.zm => some (1288, (0 : Int))
  | 2534, Face.zm => some (1273, (0 : Int))
  | 2535, Face.tmmp => some (2536, (0 : Int))
  | 2537, Face.tmpm => some (2499, (0 : Int))
  | 2538, Face.tmmp => some (2539, (0 : Int))
  | 2538, Face.tpmm => some (2553, (0 : Int))
  | 2538, Face.tpmp => some (2565, (0 : Int))
  | 2538, Face.zp => some (2574, (0 : Int))
  | 2539, Face.tpmm => some (2540, (0 : Int))
  | 2539, Face.zm => some (2548, (0 : Int))
  | 2540, Face.tmpm => some (2541, (0 : Int))
  | 2540, Face.tmpp => some (2542, (0 : Int))
  | 2540, Face.zp => some (2546, (0 : Int))
  | 2542, Face.tmpm => some (2543, (0 : Int))
  | 2542, Face.zm => some (2545, (0 : Int))
  | 2543, Face.zm => some (2544, (0 : Int))
  | 2546, Face.tmpm => some (2547, (0 : Int))
  | 2547, Face.tmpp => some (2544, (0 : Int))
  | 2548, Face.tmpp => some (2549, (0 : Int))
  | 2548, Face.tpmp => some (2550, (0 : Int))
  | 2550, Face.tmpm => some (2551, (0 : Int))
  | 2551, Face.tmpp => some (2552, (0 : Int))
  | 2553, Face.tmmp => some (2554, (0 : Int))
  | 2553, Face.tmpp => some (2558, (0 : Int))
  | 2553, Face.tpmp => some (2516, (0 : Int))
  | 2553, Face.zp => some (2564, (0 : Int))
  | 2554, Face.tmpm => some (2555, (0 : Int))
  | 2554, Face.zm => some (2557, (0 : Int))
  | 2555, Face.zm => some (2556, (0 : Int))
  | 2558, Face.tpmp => some (2559, (0 : Int))
  | 2558, Face.zp => some (2562, (0 : Int))
  | 2559, Face.tmmp => some (2560, (0 : Int))
  | 2559, Face.tmpm => some (2495, (0 : Int))
  | 2559, Face.zm => some (1575, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard039
