import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard040

open Cuboctahedron

def shardIndex : Nat := 40
def stateStart : Nat := 2560
def stateStop : Nat := 2624
def emittedEdgeCount : Nat := 70

def next : Nat -> Face -> Option (Nat × Int)
  | 2560, Face.zm => some (2561, (0 : Int))
  | 2562, Face.tmmp => some (2563, (0 : Int))
  | 2564, Face.tmpm => some (2530, (0 : Int))
  | 2565, Face.tmmp => some (2566, (0 : Int))
  | 2565, Face.tmpp => some (2458, (0 : Int))
  | 2565, Face.zm => some (2569, (0 : Int))
  | 2566, Face.tmpm => some (2567, (0 : Int))
  | 2566, Face.zm => some (2568, (0 : Int))
  | 2569, Face.tmpm => some (2570, (0 : Int))
  | 2569, Face.tmpp => some (2572, (0 : Int))
  | 2570, Face.tmmp => some (2571, (0 : Int))
  | 2572, Face.tmmp => some (2573, (0 : Int))
  | 2574, Face.tmmp => some (2575, (0 : Int))
  | 2574, Face.tpmm => some (2468, (0 : Int))
  | 2574, Face.tpmp => some (2537, (0 : Int))
  | 2575, Face.tmpm => some (2576, (0 : Int))
  | 2577, Face.tpmp => some (2578, (0 : Int))
  | 2577, Face.zp => some (2621, (0 : Int))
  | 2578, Face.tmpm => some (2579, (0 : Int))
  | 2578, Face.tppm => some (2588, (0 : Int))
  | 2578, Face.zm => some (2609, (0 : Int))
  | 2579, Face.tmmp => some (2580, (0 : Int))
  | 2579, Face.tmpp => some (2583, (0 : Int))
  | 2579, Face.zp => some (2585, (0 : Int))
  | 2580, Face.tppm => some (2581, (0 : Int))
  | 2580, Face.zp => some (2582, (0 : Int))
  | 2583, Face.zp => some (2584, (0 : Int))
  | 2585, Face.tppm => some (2586, (0 : Int))
  | 2586, Face.tmmp => some (2587, (0 : Int))
  | 2588, Face.tmmp => some (2589, (0 : Int))
  | 2588, Face.tmpp => some (2598, (0 : Int))
  | 2588, Face.zm => some (2605, (0 : Int))
  | 2589, Face.tmpm => some (2590, (0 : Int))
  | 2589, Face.tmpp => some (2591, (0 : Int))
  | 2589, Face.zm => some (2596, (0 : Int))
  | 2591, Face.tmpm => some (2592, (0 : Int))
  | 2591, Face.zm => some (2594, (0 : Int))
  | 2592, Face.zm => some (2593, (0 : Int))
  | 2594, Face.tmpp => some (2595, (0 : Int))
  | 2596, Face.tmpm => some (2597, (0 : Int))
  | 2597, Face.tmpp => some (2593, (0 : Int))
  | 2598, Face.tmpm => some (2599, (0 : Int))
  | 2598, Face.tppm => some (2601, (0 : Int))
  | 2598, Face.zm => some (2603, (0 : Int))
  | 2599, Face.zm => some (2600, (0 : Int))
  | 2601, Face.zm => some (2602, (0 : Int))
  | 2603, Face.tmmp => some (2604, (0 : Int))
  | 2605, Face.tmpm => some (2606, (0 : Int))
  | 2605, Face.tmpp => some (2608, (0 : Int))
  | 2606, Face.tmmp => some (2607, (0 : Int))
  | 2608, Face.tmpm => some (1489, (0 : Int))
  | 2609, Face.tmmp => some (2610, (0 : Int))
  | 2609, Face.tmpp => some (2618, (0 : Int))
  | 2610, Face.tmpm => some (2611, (0 : Int))
  | 2610, Face.tmpp => some (2613, (0 : Int))
  | 2610, Face.tppm => some (2615, (0 : Int))
  | 2611, Face.tmmp => some (2612, (0 : Int))
  | 2613, Face.tmpm => some (2614, (0 : Int))
  | 2615, Face.tmpm => some (2616, (0 : Int))
  | 2616, Face.tmpp => some (2617, (0 : Int))
  | 2618, Face.tmpm => some (2584, (0 : Int))
  | 2618, Face.tppm => some (2619, (0 : Int))
  | 2619, Face.tmmp => some (2620, (0 : Int))
  | 2621, Face.tmpm => some (2622, (0 : Int))
  | 2621, Face.tpmm => some (2631, (0 : Int))
  | 2621, Face.tppm => some (2574, (0 : Int))
  | 2622, Face.tpmm => some (2623, (0 : Int))
  | 2622, Face.tpmp => some (2628, (0 : Int))
  | 2623, Face.tmpm => some (2624, (0 : Int))
  | 2623, Face.tmpp => some (2627, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard040
