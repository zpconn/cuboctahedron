import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard041

open Cuboctahedron

def shardIndex : Nat := 41
def stateStart : Nat := 2624
def stateStop : Nat := 2688
def emittedEdgeCount : Nat := 78

def next : Nat -> Face -> Option (Nat × Int)
  | 2624, Face.tmmp => some (2625, (0 : Int))
  | 2625, Face.tmpp => some (2626, (0 : Int))
  | 2628, Face.tppm => some (2629, (0 : Int))
  | 2629, Face.tmmp => some (2630, (0 : Int))
  | 2631, Face.tmmp => some (2632, (0 : Int))
  | 2631, Face.tmpp => some (2640, (0 : Int))
  | 2632, Face.tmpm => some (2633, (0 : Int))
  | 2632, Face.tmpp => some (2635, (0 : Int))
  | 2632, Face.tppm => some (2637, (0 : Int))
  | 2633, Face.tmmp => some (2634, (0 : Int))
  | 2635, Face.tmpm => some (2636, (0 : Int))
  | 2637, Face.tmpm => some (2638, (0 : Int))
  | 2638, Face.tmpp => some (2639, (0 : Int))
  | 2640, Face.tmpm => some (2641, (0 : Int))
  | 2640, Face.tppm => some (2642, (0 : Int))
  | 2642, Face.tmmp => some (2643, (0 : Int))
  | 2644, Face.tpmp => some (2645, (0 : Int))
  | 2644, Face.tppm => some (2736, (0 : Int))
  | 2644, Face.tppp => some (2808, (0 : Int))
  | 2644, Face.zp => some (2889, (0 : Int))
  | 2645, Face.tppm => some (2646, (0 : Int))
  | 2645, Face.tppp => some (2686, (0 : Int))
  | 2645, Face.zm => some (2716, (0 : Int))
  | 2646, Face.tmmp => some (2647, (0 : Int))
  | 2646, Face.tpmp => some (2661, (0 : Int))
  | 2646, Face.zp => some (2677, (0 : Int))
  | 2647, Face.tmpp => some (2648, (0 : Int))
  | 2647, Face.tppp => some (2653, (0 : Int))
  | 2647, Face.zm => some (2656, (0 : Int))
  | 2648, Face.tmpm => some (2649, (0 : Int))
  | 2648, Face.zm => some (2316, (0 : Int))
  | 2649, Face.tppp => some (2650, (0 : Int))
  | 2649, Face.zm => some (2652, (0 : Int))
  | 2650, Face.zm => some (2651, (0 : Int))
  | 2653, Face.tmpm => some (2654, (0 : Int))
  | 2653, Face.zm => some (2655, (0 : Int))
  | 2656, Face.tmpm => some (2657, (0 : Int))
  | 2656, Face.tmpp => some (2659, (0 : Int))
  | 2657, Face.tppp => some (2658, (0 : Int))
  | 2659, Face.tppp => some (2660, (0 : Int))
  | 2661, Face.tmmm => some (2662, (0 : Int))
  | 2661, Face.tmmp => some (2666, (0 : Int))
  | 2661, Face.tmpp => some (2672, (0 : Int))
  | 2661, Face.zp => some (2674, (0 : Int))
  | 2662, Face.tmpp => some (2663, (0 : Int))
  | 2662, Face.zp => some (2665, (0 : Int))
  | 2663, Face.tmmp => some (2664, (0 : Int))
  | 2663, Face.zm => some (1783, (0 : Int))
  | 2664, Face.zm => some (1229, (0 : Int))
  | 2666, Face.tmpp => some (2667, (0 : Int))
  | 2666, Face.zm => some (2670, (0 : Int))
  | 2667, Face.tppp => some (2668, (0 : Int))
  | 2667, Face.zm => some (2341, (0 : Int))
  | 2668, Face.zm => some (2669, (0 : Int))
  | 2670, Face.tppp => some (2671, (0 : Int))
  | 2671, Face.tmpp => some (2289, (0 : Int))
  | 2672, Face.tmmm => some (2673, (0 : Int))
  | 2672, Face.zm => some (2349, (0 : Int))
  | 2674, Face.tmmm => some (2675, (0 : Int))
  | 2674, Face.tmpp => some (2676, (0 : Int))
  | 2676, Face.tmmp => some (1779, (0 : Int))
  | 2677, Face.tmmm => some (2678, (0 : Int))
  | 2677, Face.tmmp => some (2681, (0 : Int))
  | 2677, Face.tpmm => some (2348, (0 : Int))
  | 2678, Face.tmpm => some (2679, (0 : Int))
  | 2678, Face.tmpp => some (2680, (0 : Int))
  | 2678, Face.tppm => some (2655, (0 : Int))
  | 2681, Face.tmmm => some (2682, (0 : Int))
  | 2681, Face.tmpm => some (2685, (0 : Int))
  | 2682, Face.tmpm => some (2683, (0 : Int))
  | 2683, Face.tmpp => some (2684, (0 : Int))
  | 2686, Face.tmpm => some (2687, (0 : Int))
  | 2686, Face.tpmm => some (2697, (0 : Int))
  | 2686, Face.tppm => some (2700, (0 : Int))
  | 2686, Face.zm => some (2709, (0 : Int))
  | 2687, Face.tmmp => some (2688, (0 : Int))
  | 2687, Face.tpmm => some (2691, (0 : Int))
  | 2687, Face.zp => some (2694, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard041
