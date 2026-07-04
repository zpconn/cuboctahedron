import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard049

open Cuboctahedron

def shardIndex : Nat := 49
def stateStart : Nat := 3136
def stateStop : Nat := 3200
def emittedEdgeCount : Nat := 73

def next : Nat -> Face -> Option (Nat × Int)
  | 3136, Face.zm => some (3137, (0 : Int))
  | 3138, Face.tpmp => some (3139, (0 : Int))
  | 3138, Face.zp => some (3141, (0 : Int))
  | 3139, Face.zm => some (3140, (0 : Int))
  | 3140, Face.tmpp => some (3134, (0 : Int))
  | 3142, Face.tmpp => some (3143, (0 : Int))
  | 3142, Face.zp => some (3148, (0 : Int))
  | 3143, Face.tmpm => some (3144, (0 : Int))
  | 3143, Face.zm => some (3147, (0 : Int))
  | 3144, Face.zm => some (3145, (0 : Int))
  | 3145, Face.zp => some (3146, (0 : Int))
  | 3148, Face.tmpm => some (3149, (0 : Int))
  | 3148, Face.tmpp => some (3150, (0 : Int))
  | 3148, Face.zm => some (3154, (0 : Int))
  | 3150, Face.tmpm => some (3151, (0 : Int))
  | 3150, Face.zm => some (3153, (0 : Int))
  | 3151, Face.zm => some (3152, (0 : Int))
  | 3154, Face.tmpm => some (3155, (0 : Int))
  | 3155, Face.tmpp => some (3152, (0 : Int))
  | 3156, Face.tmpp => some (3157, (0 : Int))
  | 3156, Face.tpmp => some (3159, (0 : Int))
  | 3156, Face.zp => some (3166, (0 : Int))
  | 3157, Face.tpmp => some (3132, (0 : Int))
  | 3157, Face.zp => some (3158, (0 : Int))
  | 3159, Face.tmpm => some (3160, (0 : Int))
  | 3159, Face.tmpp => some (3161, (0 : Int))
  | 3159, Face.zm => some (3164, (0 : Int))
  | 3161, Face.tmpm => some (3162, (0 : Int))
  | 3161, Face.zm => some (3155, (0 : Int))
  | 3162, Face.zm => some (3163, (0 : Int))
  | 3164, Face.tmpm => some (3165, (0 : Int))
  | 3165, Face.tmpp => some (3163, (0 : Int))
  | 3166, Face.tmpm => some (3141, (0 : Int))
  | 3167, Face.tpmm => some (3168, (0 : Int))
  | 3167, Face.tpmp => some (3181, (0 : Int))
  | 3167, Face.tppp => some (3190, (0 : Int))
  | 3167, Face.zp => some (3204, (0 : Int))
  | 3168, Face.tmpp => some (3169, (0 : Int))
  | 3168, Face.tpmp => some (3079, (0 : Int))
  | 3168, Face.tppp => some (3176, (0 : Int))
  | 3168, Face.zp => some (3180, (0 : Int))
  | 3169, Face.tpmp => some (3170, (0 : Int))
  | 3169, Face.zp => some (3174, (0 : Int))
  | 3170, Face.tmpm => some (3053, (0 : Int))
  | 3170, Face.tppp => some (3171, (0 : Int))
  | 3170, Face.zm => some (3173, (0 : Int))
  | 3171, Face.zm => some (3172, (0 : Int))
  | 3174, Face.tppp => some (3175, (0 : Int))
  | 3176, Face.tmpm => some (3177, (0 : Int))
  | 3176, Face.zm => some (3179, (0 : Int))
  | 3177, Face.zm => some (3178, (0 : Int))
  | 3180, Face.tmpm => some (3112, (0 : Int))
  | 3181, Face.tmpp => some (3013, (0 : Int))
  | 3181, Face.tppp => some (3182, (0 : Int))
  | 3181, Face.zm => some (3185, (0 : Int))
  | 3182, Face.tmpm => some (3183, (0 : Int))
  | 3182, Face.zm => some (3184, (0 : Int))
  | 3185, Face.tmpm => some (3186, (0 : Int))
  | 3185, Face.tmpp => some (3188, (0 : Int))
  | 3186, Face.tppp => some (3187, (0 : Int))
  | 3188, Face.tppp => some (3189, (0 : Int))
  | 3190, Face.tpmm => some (3191, (0 : Int))
  | 3190, Face.zm => some (3199, (0 : Int))
  | 3191, Face.tmpm => some (3192, (0 : Int))
  | 3191, Face.tmpp => some (3193, (0 : Int))
  | 3191, Face.zp => some (3197, (0 : Int))
  | 3193, Face.tmpm => some (3194, (0 : Int))
  | 3193, Face.zm => some (3196, (0 : Int))
  | 3194, Face.zm => some (3195, (0 : Int))
  | 3197, Face.tmpm => some (3198, (0 : Int))
  | 3198, Face.tmpp => some (3195, (0 : Int))
  | 3199, Face.tmpp => some (3200, (0 : Int))
  | 3199, Face.tpmp => some (3201, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard049
