import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard055

open Cuboctahedron

def shardIndex : Nat := 55
def stateStart : Nat := 3520
def stateStop : Nat := 3584
def emittedEdgeCount : Nat := 69

def next : Nat -> Face -> Option (Nat × Int)
  | 3520, Face.tmpm => some (3521, (0 : Int))
  | 3520, Face.zm => some (3525, (0 : Int))
  | 3521, Face.tmmp => some (3522, (0 : Int))
  | 3521, Face.zm => some (3524, (0 : Int))
  | 3522, Face.zm => some (3523, (0 : Int))
  | 3525, Face.tmmp => some (3526, (0 : Int))
  | 3527, Face.tmmp => some (3528, (0 : Int))
  | 3527, Face.tmpp => some (3531, (0 : Int))
  | 3527, Face.zm => some (3534, (0 : Int))
  | 3528, Face.tmpm => some (3529, (0 : Int))
  | 3528, Face.zm => some (3530, (0 : Int))
  | 3531, Face.tmpm => some (3504, (0 : Int))
  | 3531, Face.zm => some (3532, (0 : Int))
  | 3532, Face.tmmp => some (3533, (0 : Int))
  | 3534, Face.tmpm => some (3525, (0 : Int))
  | 3534, Face.tmpp => some (3535, (0 : Int))
  | 3535, Face.tmmp => some (3536, (0 : Int))
  | 3537, Face.tmpm => some (3538, (0 : Int))
  | 3537, Face.tpmm => some (3582, (0 : Int))
  | 3537, Face.tppm => some (3588, (0 : Int))
  | 3537, Face.zm => some (3597, (0 : Int))
  | 3538, Face.tmmp => some (3539, (0 : Int))
  | 3538, Face.tpmm => some (3545, (0 : Int))
  | 3538, Face.tpmp => some (3555, (0 : Int))
  | 3538, Face.tppp => some (3570, (0 : Int))
  | 3538, Face.zp => some (3578, (0 : Int))
  | 3539, Face.tpmp => some (3540, (0 : Int))
  | 3539, Face.zp => some (3543, (0 : Int))
  | 3540, Face.zm => some (3541, (0 : Int))
  | 3541, Face.tmpp => some (3542, (0 : Int))
  | 3543, Face.tppp => some (3544, (0 : Int))
  | 3545, Face.tpmp => some (3546, (0 : Int))
  | 3545, Face.zp => some (3552, (0 : Int))
  | 3546, Face.tmmp => some (3547, (0 : Int))
  | 3546, Face.tppp => some (3549, (0 : Int))
  | 3547, Face.zp => some (3548, (0 : Int))
  | 3549, Face.zp => some (3550, (0 : Int))
  | 3550, Face.tmmp => some (3551, (0 : Int))
  | 3552, Face.tmpm => some (3553, (0 : Int))
  | 3553, Face.tmmm => some (3554, (0 : Int))
  | 3555, Face.tmmm => some (3556, (0 : Int))
  | 3555, Face.tppm => some (3559, (0 : Int))
  | 3555, Face.zm => some (3563, (0 : Int))
  | 3556, Face.zm => some (3557, (0 : Int))
  | 3557, Face.tmpp => some (3558, (0 : Int))
  | 3559, Face.zm => some (3560, (0 : Int))
  | 3560, Face.tmmm => some (3561, (0 : Int))
  | 3560, Face.tmpp => some (3562, (0 : Int))
  | 3563, Face.tmmp => some (3564, (0 : Int))
  | 3563, Face.tppp => some (3566, (0 : Int))
  | 3564, Face.tmpp => some (3565, (0 : Int))
  | 3566, Face.tmpp => some (3567, (0 : Int))
  | 3567, Face.tmmp => some (3568, (0 : Int))
  | 3568, Face.xp => some (3569, (0 : Int))
  | 3570, Face.tpmp => some (3571, (0 : Int))
  | 3570, Face.zp => some (3576, (0 : Int))
  | 3571, Face.zm => some (3572, (0 : Int))
  | 3572, Face.tmpp => some (3573, (0 : Int))
  | 3573, Face.tmmp => some (3574, (0 : Int))
  | 3574, Face.xp => some (3575, (0 : Int))
  | 3576, Face.tmmp => some (3577, (0 : Int))
  | 3578, Face.tmmm => some (3579, (0 : Int))
  | 3578, Face.tpmp => some (3580, (0 : Int))
  | 3578, Face.tppm => some (3581, (0 : Int))
  | 3582, Face.tmmm => some (3583, (0 : Int))
  | 3582, Face.zm => some (3587, (0 : Int))
  | 3583, Face.tmpm => some (3584, (0 : Int))
  | 3583, Face.tppm => some (3585, (0 : Int))
  | 3583, Face.zm => some (3586, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard055
