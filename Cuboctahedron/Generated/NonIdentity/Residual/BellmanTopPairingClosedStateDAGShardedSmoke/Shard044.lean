import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard044

open Cuboctahedron

def shardIndex : Nat := 44
def stateStart : Nat := 2816
def stateStop : Nat := 2880
def emittedEdgeCount : Nat := 60

def next : Nat -> Face -> Option (Nat × Int)
  | 2817, Face.tmmp => some (2818, (0 : Int))
  | 2819, Face.tmpm => some (2820, (0 : Int))
  | 2819, Face.tmpp => some (2823, (0 : Int))
  | 2819, Face.tppm => some (2824, (0 : Int))
  | 2820, Face.tmmp => some (2821, (0 : Int))
  | 2821, Face.tmpp => some (2822, (0 : Int))
  | 2824, Face.tmpm => some (2825, (0 : Int))
  | 2825, Face.tmpp => some (2826, (0 : Int))
  | 2827, Face.tmmp => some (2828, (0 : Int))
  | 2827, Face.tmpp => some (2833, (0 : Int))
  | 2827, Face.tpmp => some (2842, (0 : Int))
  | 2827, Face.zp => some (2852, (0 : Int))
  | 2828, Face.tmpm => some (2829, (0 : Int))
  | 2828, Face.tppm => some (2831, (0 : Int))
  | 2828, Face.zm => some (2832, (0 : Int))
  | 2829, Face.zm => some (2830, (0 : Int))
  | 2833, Face.tpmp => some (2834, (0 : Int))
  | 2833, Face.zp => some (2840, (0 : Int))
  | 2834, Face.tmmp => some (2835, (0 : Int))
  | 2834, Face.zm => some (2839, (0 : Int))
  | 2835, Face.zm => some (2836, (0 : Int))
  | 2836, Face.tmmp => some (2837, (0 : Int))
  | 2837, Face.xp => some (2838, (0 : Int))
  | 2840, Face.tmmp => some (2841, (0 : Int))
  | 2842, Face.tmpp => some (2843, (0 : Int))
  | 2842, Face.zp => some (2849, (0 : Int))
  | 2843, Face.tmmp => some (2844, (0 : Int))
  | 2843, Face.zm => some (2848, (0 : Int))
  | 2844, Face.zm => some (2845, (0 : Int))
  | 2845, Face.tmmp => some (2846, (0 : Int))
  | 2846, Face.xp => some (2847, (0 : Int))
  | 2849, Face.tmmp => some (2850, (0 : Int))
  | 2850, Face.tmpp => some (2851, (0 : Int))
  | 2852, Face.tmpm => some (2853, (0 : Int))
  | 2852, Face.tppm => some (2855, (0 : Int))
  | 2853, Face.tmmp => some (2854, (0 : Int))
  | 2855, Face.tmmp => some (2856, (0 : Int))
  | 2855, Face.tmpm => some (2857, (0 : Int))
  | 2858, Face.tmmp => some (2859, (0 : Int))
  | 2858, Face.tmpp => some (2867, (0 : Int))
  | 2859, Face.tmpm => some (2860, (0 : Int))
  | 2859, Face.tmpp => some (2862, (0 : Int))
  | 2859, Face.tppm => some (2864, (0 : Int))
  | 2860, Face.tmmp => some (2861, (0 : Int))
  | 2862, Face.tmpm => some (2863, (0 : Int))
  | 2864, Face.tmpm => some (2865, (0 : Int))
  | 2865, Face.tmpp => some (2866, (0 : Int))
  | 2867, Face.tmpm => some (2840, (0 : Int))
  | 2867, Face.tppm => some (2868, (0 : Int))
  | 2868, Face.tmmp => some (2869, (0 : Int))
  | 2868, Face.tmpm => some (2870, (0 : Int))
  | 2871, Face.tmmp => some (2872, (0 : Int))
  | 2871, Face.tpmp => some (2880, (0 : Int))
  | 2872, Face.tpmm => some (2873, (0 : Int))
  | 2872, Face.tpmp => some (2877, (0 : Int))
  | 2873, Face.tmpm => some (2874, (0 : Int))
  | 2873, Face.tmpp => some (2875, (0 : Int))
  | 2873, Face.tppm => some (2876, (0 : Int))
  | 2877, Face.tmpm => some (2878, (0 : Int))
  | 2877, Face.tppm => some (2879, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard044
