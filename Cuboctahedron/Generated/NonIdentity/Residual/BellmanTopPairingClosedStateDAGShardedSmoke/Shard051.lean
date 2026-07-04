import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard051

open Cuboctahedron

def shardIndex : Nat := 51
def stateStart : Nat := 3264
def stateStop : Nat := 3328
def emittedEdgeCount : Nat := 64

def next : Nat -> Face -> Option (Nat × Int)
  | 3264, Face.tmmm => some (3265, (0 : Int))
  | 3264, Face.tmpp => some (3260, (0 : Int))
  | 3266, Face.tmmm => some (3267, (0 : Int))
  | 3266, Face.tmpm => some (3268, (0 : Int))
  | 3269, Face.tmmm => some (3270, (0 : Int))
  | 3269, Face.tmpp => some (3276, (0 : Int))
  | 3269, Face.zm => some (3282, (0 : Int))
  | 3270, Face.tmpp => some (3271, (0 : Int))
  | 3270, Face.tpmp => some (3273, (0 : Int))
  | 3270, Face.zp => some (3274, (0 : Int))
  | 3271, Face.zm => some (3272, (0 : Int))
  | 3274, Face.tmpm => some (3275, (0 : Int))
  | 3276, Face.tmmm => some (3277, (0 : Int))
  | 3276, Face.tmpm => some (3278, (0 : Int))
  | 3276, Face.zm => some (3281, (0 : Int))
  | 3278, Face.zm => some (3279, (0 : Int))
  | 3279, Face.tmmm => some (3280, (0 : Int))
  | 3282, Face.tmmm => some (3283, (0 : Int))
  | 3282, Face.tmpm => some (3284, (0 : Int))
  | 3282, Face.tmpp => some (3285, (0 : Int))
  | 3286, Face.tmmm => some (3287, (0 : Int))
  | 3286, Face.tpmm => some (3292, (0 : Int))
  | 3286, Face.tpmp => some (3295, (0 : Int))
  | 3287, Face.tmpp => some (3288, (0 : Int))
  | 3287, Face.tpmp => some (3289, (0 : Int))
  | 3289, Face.tmpm => some (3290, (0 : Int))
  | 3290, Face.tmpp => some (3291, (0 : Int))
  | 3292, Face.tmmm => some (3293, (0 : Int))
  | 3292, Face.tmpm => some (3281, (0 : Int))
  | 3292, Face.tmpp => some (3294, (0 : Int))
  | 3295, Face.tmmm => some (3296, (0 : Int))
  | 3295, Face.tmpm => some (3297, (0 : Int))
  | 3298, Face.tmpm => some (3299, (0 : Int))
  | 3298, Face.tpmm => some (3312, (0 : Int))
  | 3299, Face.tmmm => some (3300, (0 : Int))
  | 3299, Face.tpmm => some (3303, (0 : Int))
  | 3299, Face.tpmp => some (3309, (0 : Int))
  | 3300, Face.tpmp => some (3301, (0 : Int))
  | 3301, Face.tppp => some (3302, (0 : Int))
  | 3303, Face.tmpm => some (3304, (0 : Int))
  | 3303, Face.tmpp => some (3308, (0 : Int))
  | 3304, Face.tppp => some (3305, (0 : Int))
  | 3305, Face.tmmm => some (3306, (0 : Int))
  | 3305, Face.tmpp => some (3307, (0 : Int))
  | 3309, Face.tmmm => some (3310, (0 : Int))
  | 3310, Face.tppp => some (3311, (0 : Int))
  | 3312, Face.tmpp => some (3313, (0 : Int))
  | 3312, Face.tppp => some (3317, (0 : Int))
  | 3313, Face.tmmm => some (3314, (0 : Int))
  | 3313, Face.tmpm => some (3316, (0 : Int))
  | 3314, Face.tppp => some (3315, (0 : Int))
  | 3317, Face.tmmm => some (3318, (0 : Int))
  | 3317, Face.tmpm => some (3321, (0 : Int))
  | 3317, Face.tmpp => some (3323, (0 : Int))
  | 3318, Face.tmpm => some (3319, (0 : Int))
  | 3319, Face.tmpp => some (3320, (0 : Int))
  | 3321, Face.tppp => some (3322, (0 : Int))
  | 3323, Face.tmpm => some (3324, (0 : Int))
  | 3324, Face.tmmm => some (3325, (0 : Int))
  | 3326, Face.tmmm => some (3327, (0 : Int))
  | 3326, Face.zp => some (3606, (0 : Int))
  | 3327, Face.tpmp => some (3328, (0 : Int))
  | 3327, Face.tppp => some (3475, (0 : Int))
  | 3327, Face.zp => some (3537, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard051
