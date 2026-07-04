import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard046

open Cuboctahedron

def shardIndex : Nat := 46
def stateStart : Nat := 2944
def stateStop : Nat := 3008
def emittedEdgeCount : Nat := 73

def next : Nat -> Face -> Option (Nat × Int)
  | 2944, Face.tpmm => some (2945, (0 : Int))
  | 2944, Face.tpmp => some (2950, (0 : Int))
  | 2944, Face.tppp => some (2953, (0 : Int))
  | 2945, Face.tmpm => some (2946, (0 : Int))
  | 2945, Face.tmpp => some (2948, (0 : Int))
  | 2946, Face.tppp => some (2947, (0 : Int))
  | 2948, Face.tppp => some (2949, (0 : Int))
  | 2950, Face.tmpm => some (2951, (0 : Int))
  | 2951, Face.tppp => some (2952, (0 : Int))
  | 2953, Face.tmpm => some (2954, (0 : Int))
  | 2955, Face.tmmm => some (2956, (0 : Int))
  | 2955, Face.tmmp => some (2964, (0 : Int))
  | 2955, Face.tmpp => some (2973, (0 : Int))
  | 2956, Face.tmpm => some (2957, (0 : Int))
  | 2956, Face.tmpp => some (2960, (0 : Int))
  | 2956, Face.tppm => some (2961, (0 : Int))
  | 2957, Face.tmmp => some (2958, (0 : Int))
  | 2958, Face.tmpp => some (2959, (0 : Int))
  | 2961, Face.tmpm => some (2962, (0 : Int))
  | 2962, Face.tmpp => some (2963, (0 : Int))
  | 2964, Face.tmmm => some (2965, (0 : Int))
  | 2964, Face.tmpm => some (2968, (0 : Int))
  | 2964, Face.tmpp => some (2970, (0 : Int))
  | 2965, Face.tmpm => some (2966, (0 : Int))
  | 2966, Face.tmpp => some (2967, (0 : Int))
  | 2968, Face.tppp => some (2969, (0 : Int))
  | 2970, Face.tmpm => some (2971, (0 : Int))
  | 2971, Face.tmmm => some (2972, (0 : Int))
  | 2973, Face.tmmm => some (2832, (0 : Int))
  | 2973, Face.tmpm => some (2974, (0 : Int))
  | 2973, Face.tppm => some (2977, (0 : Int))
  | 2974, Face.tmmp => some (2975, (0 : Int))
  | 2975, Face.tmmm => some (2976, (0 : Int))
  | 2977, Face.tmpm => some (2978, (0 : Int))
  | 2978, Face.tmmm => some (2979, (0 : Int))
  | 2980, Face.tmmp => some (2981, (0 : Int))
  | 2980, Face.tpmm => some (3326, (0 : Int))
  | 2980, Face.zm => some (3734, (0 : Int))
  | 2981, Face.tmmm => some (2982, (0 : Int))
  | 2981, Face.zm => some (3205, (0 : Int))
  | 2982, Face.tpmm => some (2983, (0 : Int))
  | 2982, Face.tpmp => some (3045, (0 : Int))
  | 2982, Face.tppp => some (3125, (0 : Int))
  | 2982, Face.zm => some (3167, (0 : Int))
  | 2983, Face.tmpm => some (2984, (0 : Int))
  | 2983, Face.tppp => some (3020, (0 : Int))
  | 2983, Face.zp => some (3035, (0 : Int))
  | 2984, Face.tmpp => some (2985, (0 : Int))
  | 2984, Face.tpmp => some (2996, (0 : Int))
  | 2984, Face.tppp => some (3008, (0 : Int))
  | 2984, Face.zp => some (3013, (0 : Int))
  | 2985, Face.tpmp => some (2986, (0 : Int))
  | 2985, Face.zp => some (2992, (0 : Int))
  | 2986, Face.tppp => some (2987, (0 : Int))
  | 2986, Face.zm => some (2990, (0 : Int))
  | 2987, Face.zm => some (2988, (0 : Int))
  | 2988, Face.zp => some (2989, (0 : Int))
  | 2990, Face.zp => some (2991, (0 : Int))
  | 2992, Face.tppp => some (2993, (0 : Int))
  | 2992, Face.zm => some (2995, (0 : Int))
  | 2993, Face.zm => some (2994, (0 : Int))
  | 2996, Face.tmpp => some (2997, (0 : Int))
  | 2996, Face.zp => some (3004, (0 : Int))
  | 2997, Face.tppp => some (2998, (0 : Int))
  | 2997, Face.zm => some (3002, (0 : Int))
  | 2998, Face.zm => some (2999, (0 : Int))
  | 2999, Face.zp => some (3000, (0 : Int))
  | 3000, Face.xp => some (3001, (0 : Int))
  | 3002, Face.zp => some (3003, (0 : Int))
  | 3004, Face.tppp => some (3005, (0 : Int))
  | 3004, Face.zm => some (3007, (0 : Int))
  | 3005, Face.zm => some (3006, (0 : Int))
  | 3007, Face.tmpp => some (3003, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard046
