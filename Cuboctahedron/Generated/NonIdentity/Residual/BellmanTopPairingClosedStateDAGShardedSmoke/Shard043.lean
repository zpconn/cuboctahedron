import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard043

open Cuboctahedron

def shardIndex : Nat := 43
def stateStart : Nat := 2752
def stateStop : Nat := 2816
def emittedEdgeCount : Nat := 75

def next : Nat -> Face -> Option (Nat × Int)
  | 2753, Face.tmpp => some (2754, (0 : Int))
  | 2755, Face.tmpm => some (2756, (0 : Int))
  | 2756, Face.tmpp => some (2752, (0 : Int))
  | 2757, Face.tmmm => some (2758, (0 : Int))
  | 2757, Face.tmpm => some (2759, (0 : Int))
  | 2757, Face.zm => some (2761, (0 : Int))
  | 2758, Face.zm => some (2604, (0 : Int))
  | 2759, Face.zm => some (2760, (0 : Int))
  | 2761, Face.tppp => some (2602, (0 : Int))
  | 2762, Face.tmmm => some (2596, (0 : Int))
  | 2762, Face.tmpm => some (2763, (0 : Int))
  | 2762, Face.tmpp => some (2765, (0 : Int))
  | 2763, Face.tppp => some (2764, (0 : Int))
  | 2765, Face.tmpm => some (1592, (0 : Int))
  | 2766, Face.tmmp => some (2767, (0 : Int))
  | 2766, Face.tmpp => some (2773, (0 : Int))
  | 2766, Face.tppp => some (2605, (0 : Int))
  | 2767, Face.tmpm => some (2768, (0 : Int))
  | 2767, Face.tmpp => some (2770, (0 : Int))
  | 2768, Face.tppp => some (2769, (0 : Int))
  | 2770, Face.tmpm => some (2771, (0 : Int))
  | 2771, Face.tmmm => some (2772, (0 : Int))
  | 2773, Face.tmmm => some (2774, (0 : Int))
  | 2773, Face.tmpm => some (2743, (0 : Int))
  | 2773, Face.tppm => some (2775, (0 : Int))
  | 2776, Face.tmpm => some (2777, (0 : Int))
  | 2776, Face.tpmm => some (2789, (0 : Int))
  | 2776, Face.tppm => some (2802, (0 : Int))
  | 2777, Face.tmmm => some (2778, (0 : Int))
  | 2777, Face.tpmm => some (2781, (0 : Int))
  | 2777, Face.tpmp => some (2786, (0 : Int))
  | 2778, Face.tpmp => some (2779, (0 : Int))
  | 2778, Face.tppm => some (2780, (0 : Int))
  | 2781, Face.tmpm => some (2782, (0 : Int))
  | 2781, Face.tmpp => some (2785, (0 : Int))
  | 2782, Face.tmmp => some (2783, (0 : Int))
  | 2782, Face.tppp => some (1518, (0 : Int))
  | 2783, Face.tmpp => some (2784, (0 : Int))
  | 2786, Face.tmmm => some (2787, (0 : Int))
  | 2786, Face.tppm => some (2788, (0 : Int))
  | 2789, Face.tmmp => some (2790, (0 : Int))
  | 2789, Face.tmpp => some (2796, (0 : Int))
  | 2789, Face.tppp => some (2800, (0 : Int))
  | 2790, Face.tmpm => some (2791, (0 : Int))
  | 2790, Face.tmpp => some (2793, (0 : Int))
  | 2791, Face.tppp => some (2792, (0 : Int))
  | 2793, Face.tmpm => some (2794, (0 : Int))
  | 2794, Face.tmmm => some (2795, (0 : Int))
  | 2796, Face.tmmm => some (2797, (0 : Int))
  | 2796, Face.tmpm => some (2798, (0 : Int))
  | 2796, Face.tppm => some (2799, (0 : Int))
  | 2800, Face.tmpm => some (2603, (0 : Int))
  | 2800, Face.tmpp => some (2801, (0 : Int))
  | 2801, Face.tmpm => some (1466, (0 : Int))
  | 2802, Face.tmmm => some (2548, (0 : Int))
  | 2802, Face.tpmm => some (2803, (0 : Int))
  | 2802, Face.tpmp => some (2806, (0 : Int))
  | 2803, Face.tmmm => some (2464, (0 : Int))
  | 2803, Face.tmpm => some (2804, (0 : Int))
  | 2803, Face.tmpp => some (2805, (0 : Int))
  | 2806, Face.tmmm => some (2528, (0 : Int))
  | 2806, Face.tmpm => some (2807, (0 : Int))
  | 2808, Face.tpmm => some (2809, (0 : Int))
  | 2808, Face.zm => some (2871, (0 : Int))
  | 2809, Face.tmmp => some (2810, (0 : Int))
  | 2809, Face.tmpm => some (2827, (0 : Int))
  | 2809, Face.zp => some (2858, (0 : Int))
  | 2810, Face.tmpp => some (2811, (0 : Int))
  | 2810, Face.zm => some (2819, (0 : Int))
  | 2811, Face.tmpm => some (2812, (0 : Int))
  | 2811, Face.tppm => some (2814, (0 : Int))
  | 2811, Face.zm => some (2817, (0 : Int))
  | 2812, Face.zm => some (2813, (0 : Int))
  | 2814, Face.tmpm => some (2815, (0 : Int))
  | 2815, Face.zp => some (2816, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard043
