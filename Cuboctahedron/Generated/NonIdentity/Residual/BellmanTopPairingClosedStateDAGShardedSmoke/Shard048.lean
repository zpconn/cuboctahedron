import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard048

open Cuboctahedron

def shardIndex : Nat := 48
def stateStart : Nat := 3072
def stateStop : Nat := 3136
def emittedEdgeCount : Nat := 67

def next : Nat -> Face -> Option (Nat × Int)
  | 3073, Face.tppp => some (3074, (0 : Int))
  | 3074, Face.zm => some (3075, (0 : Int))
  | 3076, Face.tmpm => some (3077, (0 : Int))
  | 3076, Face.zm => some (3078, (0 : Int))
  | 3079, Face.tmpm => some (3080, (0 : Int))
  | 3079, Face.tmpp => some (3083, (0 : Int))
  | 3079, Face.zp => some (3089, (0 : Int))
  | 3080, Face.tppp => some (3081, (0 : Int))
  | 3081, Face.zm => some (3082, (0 : Int))
  | 3083, Face.tmpm => some (3084, (0 : Int))
  | 3083, Face.tppp => some (3086, (0 : Int))
  | 3083, Face.zm => some (3088, (0 : Int))
  | 3084, Face.zm => some (3085, (0 : Int))
  | 3086, Face.zm => some (3087, (0 : Int))
  | 3089, Face.tmpm => some (3090, (0 : Int))
  | 3089, Face.tppp => some (3091, (0 : Int))
  | 3090, Face.tmpp => some (3085, (0 : Int))
  | 3092, Face.tpmm => some (3093, (0 : Int))
  | 3092, Face.zm => some (3105, (0 : Int))
  | 3093, Face.tmpm => some (3094, (0 : Int))
  | 3093, Face.tmpp => some (3095, (0 : Int))
  | 3093, Face.zm => some (3102, (0 : Int))
  | 3095, Face.tmpm => some (3096, (0 : Int))
  | 3095, Face.zm => some (3100, (0 : Int))
  | 3096, Face.zm => some (3097, (0 : Int))
  | 3097, Face.zp => some (3098, (0 : Int))
  | 3098, Face.xp => some (3099, (0 : Int))
  | 3100, Face.zp => some (3101, (0 : Int))
  | 3102, Face.tmpm => some (3103, (0 : Int))
  | 3103, Face.tmpp => some (3097, (0 : Int))
  | 3103, Face.zp => some (3104, (0 : Int))
  | 3105, Face.tmpp => some (3106, (0 : Int))
  | 3105, Face.tpmp => some (3107, (0 : Int))
  | 3105, Face.zp => some (3108, (0 : Int))
  | 3108, Face.tmpm => some (3109, (0 : Int))
  | 3110, Face.tmpp => some (3111, (0 : Int))
  | 3110, Face.tpmp => some (3114, (0 : Int))
  | 3110, Face.tppp => some (3120, (0 : Int))
  | 3110, Face.zp => some (3124, (0 : Int))
  | 3111, Face.tpmp => some (3055, (0 : Int))
  | 3111, Face.zp => some (3112, (0 : Int))
  | 3112, Face.tppp => some (3113, (0 : Int))
  | 3114, Face.tmpp => some (3115, (0 : Int))
  | 3114, Face.zp => some (3118, (0 : Int))
  | 3115, Face.tppp => some (3116, (0 : Int))
  | 3115, Face.zm => some (3090, (0 : Int))
  | 3116, Face.zm => some (3117, (0 : Int))
  | 3118, Face.tppp => some (3119, (0 : Int))
  | 3120, Face.tmpm => some (3121, (0 : Int))
  | 3120, Face.zm => some (3123, (0 : Int))
  | 3121, Face.zm => some (3122, (0 : Int))
  | 3124, Face.tmpm => some (3062, (0 : Int))
  | 3125, Face.tmpm => some (3126, (0 : Int))
  | 3125, Face.tpmm => some (3142, (0 : Int))
  | 3125, Face.zm => some (3156, (0 : Int))
  | 3126, Face.tpmm => some (3127, (0 : Int))
  | 3126, Face.tpmp => some (3136, (0 : Int))
  | 3126, Face.zm => some (3138, (0 : Int))
  | 3127, Face.tmpm => some (3128, (0 : Int))
  | 3127, Face.tmpp => some (3129, (0 : Int))
  | 3127, Face.zp => some (3132, (0 : Int))
  | 3129, Face.zm => some (3130, (0 : Int))
  | 3130, Face.zp => some (3131, (0 : Int))
  | 3132, Face.tmpm => some (3133, (0 : Int))
  | 3132, Face.zm => some (3135, (0 : Int))
  | 3133, Face.zp => some (3134, (0 : Int))
  | 3135, Face.tmpp => some (3131, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard048
