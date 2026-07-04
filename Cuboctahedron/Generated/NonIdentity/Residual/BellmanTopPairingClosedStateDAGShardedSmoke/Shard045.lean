import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard045

open Cuboctahedron

def shardIndex : Nat := 45
def stateStart : Nat := 2880
def stateStop : Nat := 2944
def emittedEdgeCount : Nat := 71

def next : Nat -> Face -> Option (Nat × Int)
  | 2880, Face.tmmp => some (2881, (0 : Int))
  | 2880, Face.tmpp => some (2852, (0 : Int))
  | 2881, Face.tmpm => some (2882, (0 : Int))
  | 2881, Face.tmpp => some (2884, (0 : Int))
  | 2881, Face.tppm => some (2886, (0 : Int))
  | 2882, Face.tmmp => some (2883, (0 : Int))
  | 2884, Face.tmpm => some (2885, (0 : Int))
  | 2886, Face.tmpm => some (2887, (0 : Int))
  | 2887, Face.tmpp => some (2888, (0 : Int))
  | 2889, Face.tpmm => some (2395, (0 : Int))
  | 2889, Face.tpmp => some (2890, (0 : Int))
  | 2889, Face.tppm => some (2943, (0 : Int))
  | 2889, Face.tppp => some (2621, (0 : Int))
  | 2890, Face.tmpm => some (2891, (0 : Int))
  | 2890, Face.tpmm => some (2901, (0 : Int))
  | 2890, Face.tppm => some (2911, (0 : Int))
  | 2890, Face.tppp => some (2934, (0 : Int))
  | 2891, Face.tpmm => some (2892, (0 : Int))
  | 2891, Face.tppp => some (2898, (0 : Int))
  | 2892, Face.tmpp => some (2893, (0 : Int))
  | 2892, Face.tppm => some (2895, (0 : Int))
  | 2893, Face.tppp => some (2894, (0 : Int))
  | 2895, Face.tmmp => some (2896, (0 : Int))
  | 2895, Face.tppp => some (1870, (0 : Int))
  | 2896, Face.tmpp => some (2897, (0 : Int))
  | 2898, Face.tppm => some (2899, (0 : Int))
  | 2899, Face.tmmp => some (2900, (0 : Int))
  | 2901, Face.tmpp => some (2902, (0 : Int))
  | 2901, Face.tppp => some (2907, (0 : Int))
  | 2902, Face.tmpm => some (2903, (0 : Int))
  | 2902, Face.tppm => some (2905, (0 : Int))
  | 2903, Face.tppp => some (2904, (0 : Int))
  | 2905, Face.tmmp => some (2906, (0 : Int))
  | 2907, Face.tmpm => some (2908, (0 : Int))
  | 2907, Face.tppm => some (2909, (0 : Int))
  | 2908, Face.tmmp => some (2014, (0 : Int))
  | 2909, Face.tmmp => some (2910, (0 : Int))
  | 2909, Face.tmpm => some (2020, (0 : Int))
  | 2911, Face.tmmm => some (2912, (0 : Int))
  | 2911, Face.tmmp => some (2918, (0 : Int))
  | 2911, Face.tmpp => some (2921, (0 : Int))
  | 2911, Face.tpmp => some (2927, (0 : Int))
  | 2912, Face.tmpp => some (2913, (0 : Int))
  | 2912, Face.tpmp => some (2915, (0 : Int))
  | 2913, Face.tmmp => some (2914, (0 : Int))
  | 2915, Face.tmmp => some (2916, (0 : Int))
  | 2916, Face.tmpp => some (2917, (0 : Int))
  | 2918, Face.tmpm => some (2919, (0 : Int))
  | 2919, Face.tppp => some (2920, (0 : Int))
  | 2921, Face.tmmm => some (2922, (0 : Int))
  | 2921, Face.tpmp => some (2924, (0 : Int))
  | 2922, Face.tmmp => some (2923, (0 : Int))
  | 2924, Face.tmmp => some (2925, (0 : Int))
  | 2925, Face.tmmm => some (2926, (0 : Int))
  | 2927, Face.tmmm => some (2928, (0 : Int))
  | 2927, Face.tmpp => some (2931, (0 : Int))
  | 2928, Face.tmmp => some (2929, (0 : Int))
  | 2929, Face.tmpp => some (2930, (0 : Int))
  | 2931, Face.tmmp => some (2932, (0 : Int))
  | 2932, Face.tmmm => some (2933, (0 : Int))
  | 2934, Face.tpmm => some (2935, (0 : Int))
  | 2935, Face.tmpm => some (2936, (0 : Int))
  | 2935, Face.tmpp => some (2938, (0 : Int))
  | 2935, Face.tppm => some (2940, (0 : Int))
  | 2936, Face.tmmp => some (2937, (0 : Int))
  | 2938, Face.tmpm => some (2939, (0 : Int))
  | 2940, Face.tmmp => some (2941, (0 : Int))
  | 2940, Face.tmpm => some (1954, (0 : Int))
  | 2941, Face.tmpp => some (2942, (0 : Int))
  | 2943, Face.tmmp => some (2944, (0 : Int))
  | 2943, Face.tpmp => some (2955, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard045
