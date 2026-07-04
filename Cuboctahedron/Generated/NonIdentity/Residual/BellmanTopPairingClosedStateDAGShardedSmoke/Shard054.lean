import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard054

open Cuboctahedron

def shardIndex : Nat := 54
def stateStart : Nat := 3456
def stateStop : Nat := 3520
def emittedEdgeCount : Nat := 70

def next : Nat -> Face -> Option (Nat × Int)
  | 3456, Face.tmpm => some (3457, (0 : Int))
  | 3456, Face.zm => some (3459, (0 : Int))
  | 3457, Face.zm => some (3458, (0 : Int))
  | 3460, Face.tmpm => some (3461, (0 : Int))
  | 3461, Face.tmpp => some (3458, (0 : Int))
  | 3462, Face.tmmm => some (3463, (0 : Int))
  | 3462, Face.tmpm => some (3389, (0 : Int))
  | 3462, Face.tppm => some (3466, (0 : Int))
  | 3462, Face.zm => some (3470, (0 : Int))
  | 3463, Face.tmpm => some (3464, (0 : Int))
  | 3463, Face.zm => some (3465, (0 : Int))
  | 3464, Face.zp => some (3409, (0 : Int))
  | 3466, Face.tmpm => some (3467, (0 : Int))
  | 3466, Face.zm => some (3468, (0 : Int))
  | 3467, Face.tmmm => some (3397, (0 : Int))
  | 3467, Face.zp => some (3412, (0 : Int))
  | 3468, Face.tmmm => some (3469, (0 : Int))
  | 3470, Face.tmmp => some (3471, (0 : Int))
  | 3470, Face.tppp => some (3472, (0 : Int))
  | 3473, Face.tmpm => some (3413, (0 : Int))
  | 3473, Face.tmpp => some (3474, (0 : Int))
  | 3475, Face.tmmp => some (3476, (0 : Int))
  | 3475, Face.tmpm => some (3491, (0 : Int))
  | 3475, Face.zp => some (3527, (0 : Int))
  | 3476, Face.tpmm => some (3477, (0 : Int))
  | 3476, Face.zm => some (3482, (0 : Int))
  | 3477, Face.tmpm => some (3478, (0 : Int))
  | 3477, Face.zm => some (3479, (0 : Int))
  | 3479, Face.tmpm => some (3480, (0 : Int))
  | 3480, Face.zp => some (3481, (0 : Int))
  | 3482, Face.tmpp => some (3483, (0 : Int))
  | 3482, Face.tpmp => some (3485, (0 : Int))
  | 3482, Face.zp => some (3489, (0 : Int))
  | 3483, Face.zm => some (3484, (0 : Int))
  | 3485, Face.tmpm => some (3486, (0 : Int))
  | 3486, Face.tmpp => some (3487, (0 : Int))
  | 3486, Face.zp => some (3488, (0 : Int))
  | 3489, Face.tmpm => some (3490, (0 : Int))
  | 3491, Face.tmmp => some (3492, (0 : Int))
  | 3491, Face.tmpp => some (3497, (0 : Int))
  | 3491, Face.tpmp => some (3508, (0 : Int))
  | 3491, Face.zp => some (3520, (0 : Int))
  | 3492, Face.tmpm => some (3493, (0 : Int))
  | 3492, Face.zm => some (3496, (0 : Int))
  | 3493, Face.zm => some (3494, (0 : Int))
  | 3494, Face.zp => some (3495, (0 : Int))
  | 3497, Face.tpmp => some (3498, (0 : Int))
  | 3497, Face.zp => some (3504, (0 : Int))
  | 3498, Face.tmmp => some (3499, (0 : Int))
  | 3498, Face.zm => some (3502, (0 : Int))
  | 3499, Face.zm => some (3500, (0 : Int))
  | 3500, Face.zp => some (3501, (0 : Int))
  | 3502, Face.zp => some (3503, (0 : Int))
  | 3503, Face.tmmp => some (3501, (0 : Int))
  | 3504, Face.tmmp => some (3505, (0 : Int))
  | 3504, Face.zm => some (3507, (0 : Int))
  | 3505, Face.zm => some (3506, (0 : Int))
  | 3508, Face.tmpp => some (3509, (0 : Int))
  | 3508, Face.zp => some (3516, (0 : Int))
  | 3509, Face.tmmp => some (3510, (0 : Int))
  | 3509, Face.zm => some (3514, (0 : Int))
  | 3510, Face.zm => some (3511, (0 : Int))
  | 3511, Face.zp => some (3512, (0 : Int))
  | 3512, Face.xp => some (3513, (0 : Int))
  | 3514, Face.zp => some (3515, (0 : Int))
  | 3515, Face.tmmp => some (3512, (0 : Int))
  | 3516, Face.tmmp => some (3517, (0 : Int))
  | 3516, Face.zm => some (3519, (0 : Int))
  | 3517, Face.zm => some (3518, (0 : Int))
  | 3519, Face.tmpp => some (3515, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard054
