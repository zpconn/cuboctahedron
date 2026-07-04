import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard053

open Cuboctahedron

def shardIndex : Nat := 53
def stateStart : Nat := 3392
def stateStop : Nat := 3456
def emittedEdgeCount : Nat := 74

def next : Nat -> Face -> Option (Nat × Int)
  | 3392, Face.zp => some (3393, (0 : Int))
  | 3393, Face.tmmp => some (3386, (0 : Int))
  | 3394, Face.tmpp => some (3395, (0 : Int))
  | 3394, Face.zp => some (3402, (0 : Int))
  | 3395, Face.tmmp => some (3396, (0 : Int))
  | 3395, Face.zm => some (3400, (0 : Int))
  | 3396, Face.zm => some (3397, (0 : Int))
  | 3397, Face.zp => some (3398, (0 : Int))
  | 3398, Face.xp => some (3399, (0 : Int))
  | 3400, Face.zp => some (3401, (0 : Int))
  | 3401, Face.tmmp => some (3398, (0 : Int))
  | 3402, Face.tmmp => some (3403, (0 : Int))
  | 3402, Face.zm => some (3405, (0 : Int))
  | 3403, Face.zm => some (3404, (0 : Int))
  | 3405, Face.tmpp => some (3401, (0 : Int))
  | 3406, Face.tmmm => some (3407, (0 : Int))
  | 3406, Face.tppm => some (3410, (0 : Int))
  | 3406, Face.zm => some (3413, (0 : Int))
  | 3407, Face.zm => some (3408, (0 : Int))
  | 3408, Face.tmpp => some (3409, (0 : Int))
  | 3410, Face.zm => some (3411, (0 : Int))
  | 3411, Face.tmmm => some (3404, (0 : Int))
  | 3411, Face.tmpp => some (3412, (0 : Int))
  | 3413, Face.tmmp => some (3378, (0 : Int))
  | 3413, Face.tppp => some (3405, (0 : Int))
  | 3414, Face.tmmp => some (3415, (0 : Int))
  | 3414, Face.tmpp => some (3427, (0 : Int))
  | 3414, Face.zp => some (3438, (0 : Int))
  | 3415, Face.tmpm => some (3416, (0 : Int))
  | 3415, Face.tmpp => some (3417, (0 : Int))
  | 3415, Face.zm => some (3424, (0 : Int))
  | 3417, Face.tmpm => some (3418, (0 : Int))
  | 3417, Face.zm => some (3422, (0 : Int))
  | 3418, Face.zm => some (3419, (0 : Int))
  | 3419, Face.zp => some (3420, (0 : Int))
  | 3420, Face.xp => some (3421, (0 : Int))
  | 3422, Face.zp => some (3423, (0 : Int))
  | 3424, Face.tmpm => some (3425, (0 : Int))
  | 3425, Face.tmpp => some (3419, (0 : Int))
  | 3425, Face.zp => some (3426, (0 : Int))
  | 3427, Face.tpmp => some (3428, (0 : Int))
  | 3427, Face.zm => some (3435, (0 : Int))
  | 3428, Face.tmmp => some (3429, (0 : Int))
  | 3428, Face.zm => some (3433, (0 : Int))
  | 3429, Face.zm => some (3430, (0 : Int))
  | 3430, Face.zp => some (3431, (0 : Int))
  | 3431, Face.xp => some (3432, (0 : Int))
  | 3433, Face.zp => some (3434, (0 : Int))
  | 3434, Face.tmmp => some (3431, (0 : Int))
  | 3435, Face.tmmp => some (3436, (0 : Int))
  | 3436, Face.zm => some (3437, (0 : Int))
  | 3438, Face.tmpm => some (3439, (0 : Int))
  | 3438, Face.tmpp => some (3442, (0 : Int))
  | 3438, Face.zm => some (3450, (0 : Int))
  | 3439, Face.tmmp => some (3440, (0 : Int))
  | 3440, Face.zm => some (3441, (0 : Int))
  | 3442, Face.tmmp => some (3443, (0 : Int))
  | 3442, Face.tmpm => some (3445, (0 : Int))
  | 3442, Face.zm => some (3449, (0 : Int))
  | 3443, Face.zm => some (3444, (0 : Int))
  | 3445, Face.zm => some (3446, (0 : Int))
  | 3446, Face.tmmp => some (3447, (0 : Int))
  | 3447, Face.xp => some (3448, (0 : Int))
  | 3450, Face.tmmp => some (3451, (0 : Int))
  | 3450, Face.tmpm => some (3452, (0 : Int))
  | 3451, Face.tmpp => some (3423, (0 : Int))
  | 3452, Face.tmpp => some (3446, (0 : Int))
  | 3453, Face.tmmm => some (3454, (0 : Int))
  | 3453, Face.tmpp => some (3462, (0 : Int))
  | 3453, Face.zm => some (3473, (0 : Int))
  | 3454, Face.tmpm => some (3455, (0 : Int))
  | 3454, Face.tmpp => some (3456, (0 : Int))
  | 3454, Face.tppm => some (3350, (0 : Int))
  | 3454, Face.zm => some (3460, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard053
