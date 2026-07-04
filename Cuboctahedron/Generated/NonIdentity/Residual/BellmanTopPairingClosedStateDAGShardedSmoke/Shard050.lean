import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard050

open Cuboctahedron

def shardIndex : Nat := 50
def stateStart : Nat := 3200
def stateStop : Nat := 3264
def emittedEdgeCount : Nat := 69

def next : Nat -> Face -> Option (Nat × Int)
  | 3201, Face.tmpm => some (3202, (0 : Int))
  | 3202, Face.tmpp => some (3203, (0 : Int))
  | 3204, Face.tpmm => some (3042, (0 : Int))
  | 3204, Face.tpmp => some (3124, (0 : Int))
  | 3204, Face.tppp => some (3166, (0 : Int))
  | 3205, Face.tpmp => some (3206, (0 : Int))
  | 3205, Face.tppp => some (3229, (0 : Int))
  | 3205, Face.zp => some (3298, (0 : Int))
  | 3206, Face.tmpm => some (3207, (0 : Int))
  | 3206, Face.zm => some (3216, (0 : Int))
  | 3207, Face.tmpp => some (3208, (0 : Int))
  | 3207, Face.tppp => some (3210, (0 : Int))
  | 3207, Face.zp => some (3213, (0 : Int))
  | 3208, Face.zp => some (3209, (0 : Int))
  | 3210, Face.tmmm => some (3211, (0 : Int))
  | 3210, Face.zp => some (3212, (0 : Int))
  | 3213, Face.tmmm => some (3214, (0 : Int))
  | 3214, Face.tppp => some (3215, (0 : Int))
  | 3216, Face.tmpp => some (3217, (0 : Int))
  | 3216, Face.tppp => some (3220, (0 : Int))
  | 3217, Face.tmmm => some (3218, (0 : Int))
  | 3217, Face.tmpm => some (3209, (0 : Int))
  | 3218, Face.tppp => some (3219, (0 : Int))
  | 3220, Face.tmmm => some (3221, (0 : Int))
  | 3220, Face.tmpm => some (3224, (0 : Int))
  | 3220, Face.tmpp => some (3226, (0 : Int))
  | 3221, Face.tmpm => some (3222, (0 : Int))
  | 3222, Face.tmpp => some (3223, (0 : Int))
  | 3224, Face.tppp => some (3225, (0 : Int))
  | 3226, Face.tmpm => some (3227, (0 : Int))
  | 3227, Face.tmmm => some (3228, (0 : Int))
  | 3229, Face.tpmm => some (3230, (0 : Int))
  | 3229, Face.tpmp => some (3269, (0 : Int))
  | 3229, Face.zp => some (3286, (0 : Int))
  | 3230, Face.tmmm => some (3231, (0 : Int))
  | 3230, Face.tmpp => some (3241, (0 : Int))
  | 3230, Face.tpmp => some (3252, (0 : Int))
  | 3230, Face.zp => some (3266, (0 : Int))
  | 3231, Face.tmpp => some (3232, (0 : Int))
  | 3231, Face.tpmp => some (3233, (0 : Int))
  | 3231, Face.zp => some (3239, (0 : Int))
  | 3233, Face.tmpm => some (3234, (0 : Int))
  | 3234, Face.tmpp => some (3235, (0 : Int))
  | 3234, Face.zp => some (3238, (0 : Int))
  | 3235, Face.zp => some (3236, (0 : Int))
  | 3236, Face.xp => some (3237, (0 : Int))
  | 3239, Face.tmpm => some (3240, (0 : Int))
  | 3241, Face.tmmm => some (3242, (0 : Int))
  | 3241, Face.tpmp => some (3243, (0 : Int))
  | 3241, Face.zp => some (3251, (0 : Int))
  | 3243, Face.tmpm => some (3244, (0 : Int))
  | 3243, Face.zm => some (3249, (0 : Int))
  | 3244, Face.tmmm => some (3245, (0 : Int))
  | 3244, Face.zp => some (3248, (0 : Int))
  | 3245, Face.zp => some (3246, (0 : Int))
  | 3246, Face.xp => some (3247, (0 : Int))
  | 3249, Face.tmmm => some (3250, (0 : Int))
  | 3252, Face.tmmm => some (3253, (0 : Int))
  | 3252, Face.tmpm => some (3254, (0 : Int))
  | 3252, Face.tmpp => some (3255, (0 : Int))
  | 3252, Face.zp => some (3263, (0 : Int))
  | 3255, Face.tmpm => some (3256, (0 : Int))
  | 3255, Face.zm => some (3261, (0 : Int))
  | 3256, Face.tmmm => some (3257, (0 : Int))
  | 3256, Face.zm => some (3260, (0 : Int))
  | 3257, Face.zp => some (3258, (0 : Int))
  | 3258, Face.xp => some (3259, (0 : Int))
  | 3261, Face.tmmm => some (3262, (0 : Int))
  | 3263, Face.tmpm => some (3264, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard050
