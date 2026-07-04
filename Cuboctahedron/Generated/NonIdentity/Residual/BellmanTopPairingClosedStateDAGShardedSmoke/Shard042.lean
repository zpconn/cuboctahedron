import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard042

open Cuboctahedron

def shardIndex : Nat := 42
def stateStart : Nat := 2688
def stateStop : Nat := 2752
def emittedEdgeCount : Nat := 78

def next : Nat -> Face -> Option (Nat × Int)
  | 2688, Face.tppm => some (2689, (0 : Int))
  | 2688, Face.zp => some (2690, (0 : Int))
  | 2691, Face.tmpp => some (2692, (0 : Int))
  | 2691, Face.zp => some (2380, (0 : Int))
  | 2692, Face.tmmp => some (2693, (0 : Int))
  | 2693, Face.zp => some (2190, (0 : Int))
  | 2694, Face.tppm => some (2695, (0 : Int))
  | 2695, Face.tmmp => some (2696, (0 : Int))
  | 2697, Face.tmpp => some (2698, (0 : Int))
  | 2697, Face.zm => some (2392, (0 : Int))
  | 2698, Face.tmpm => some (2699, (0 : Int))
  | 2698, Face.tppm => some (614, (0 : Int))
  | 2698, Face.zm => some (2383, (0 : Int))
  | 2699, Face.tmmp => some (2076, (0 : Int))
  | 2700, Face.tmmp => some (2701, (0 : Int))
  | 2700, Face.tmpp => some (2160, (0 : Int))
  | 2700, Face.zm => some (2704, (0 : Int))
  | 2701, Face.tmpm => some (2702, (0 : Int))
  | 2701, Face.zm => some (2703, (0 : Int))
  | 2704, Face.tmpm => some (2705, (0 : Int))
  | 2704, Face.tmpp => some (2707, (0 : Int))
  | 2705, Face.tmmp => some (2706, (0 : Int))
  | 2707, Face.tmmp => some (2708, (0 : Int))
  | 2709, Face.tmmp => some (2710, (0 : Int))
  | 2709, Face.tmpp => some (2379, (0 : Int))
  | 2709, Face.tpmp => some (2714, (0 : Int))
  | 2710, Face.tmpm => some (2711, (0 : Int))
  | 2710, Face.tmpp => some (2712, (0 : Int))
  | 2710, Face.tppm => some (2713, (0 : Int))
  | 2714, Face.tmpp => some (2715, (0 : Int))
  | 2716, Face.tmpm => some (2717, (0 : Int))
  | 2716, Face.tppm => some (2722, (0 : Int))
  | 2716, Face.tppp => some (2730, (0 : Int))
  | 2717, Face.tmpp => some (2718, (0 : Int))
  | 2717, Face.tppp => some (2721, (0 : Int))
  | 2718, Face.tppm => some (2719, (0 : Int))
  | 2719, Face.tmmp => some (2720, (0 : Int))
  | 2719, Face.tppp => some (1738, (0 : Int))
  | 2722, Face.tmmp => some (2723, (0 : Int))
  | 2722, Face.tmpp => some (2207, (0 : Int))
  | 2722, Face.tpmp => some (2728, (0 : Int))
  | 2722, Face.tppp => some (2704, (0 : Int))
  | 2723, Face.tmpm => some (2724, (0 : Int))
  | 2723, Face.tmpp => some (2726, (0 : Int))
  | 2724, Face.tppp => some (2725, (0 : Int))
  | 2726, Face.tppp => some (2727, (0 : Int))
  | 2728, Face.tmpp => some (2729, (0 : Int))
  | 2730, Face.tmmp => some (2731, (0 : Int))
  | 2730, Face.tpmm => some (2292, (0 : Int))
  | 2731, Face.tmpm => some (2732, (0 : Int))
  | 2731, Face.tppm => some (2734, (0 : Int))
  | 2732, Face.tmmp => some (2733, (0 : Int))
  | 2734, Face.tmpm => some (2735, (0 : Int))
  | 2736, Face.tpmp => some (2737, (0 : Int))
  | 2736, Face.tppp => some (2538, (0 : Int))
  | 2736, Face.zp => some (2776, (0 : Int))
  | 2737, Face.tmpm => some (2738, (0 : Int))
  | 2737, Face.tppm => some (2747, (0 : Int))
  | 2737, Face.zm => some (2766, (0 : Int))
  | 2738, Face.tmmp => some (2739, (0 : Int))
  | 2738, Face.tmpp => some (2742, (0 : Int))
  | 2738, Face.tppp => some (2744, (0 : Int))
  | 2738, Face.zp => some (2745, (0 : Int))
  | 2739, Face.zp => some (2740, (0 : Int))
  | 2740, Face.tppp => some (2741, (0 : Int))
  | 2742, Face.zp => some (2743, (0 : Int))
  | 2744, Face.zp => some (2586, (0 : Int))
  | 2745, Face.tmmm => some (2582, (0 : Int))
  | 2745, Face.tppm => some (2746, (0 : Int))
  | 2747, Face.tmmm => some (2748, (0 : Int))
  | 2747, Face.tmpp => some (2757, (0 : Int))
  | 2747, Face.zm => some (2762, (0 : Int))
  | 2748, Face.tmpm => some (2749, (0 : Int))
  | 2748, Face.tmpp => some (2750, (0 : Int))
  | 2748, Face.zp => some (2755, (0 : Int))
  | 2750, Face.tmpm => some (2751, (0 : Int))
  | 2750, Face.zm => some (2753, (0 : Int))
  | 2751, Face.zm => some (2752, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard042
