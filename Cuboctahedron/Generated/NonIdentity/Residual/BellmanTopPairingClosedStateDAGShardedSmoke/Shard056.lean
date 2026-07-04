import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard056

open Cuboctahedron

def shardIndex : Nat := 56
def stateStart : Nat := 3584
def stateStop : Nat := 3648
def emittedEdgeCount : Nat := 74

def next : Nat -> Face -> Option (Nat × Int)
  | 3585, Face.tmpm => some (3348, (0 : Int))
  | 3586, Face.tmpm => some (3459, (0 : Int))
  | 3587, Face.tmpm => some (3470, (0 : Int))
  | 3588, Face.tmmm => some (3482, (0 : Int))
  | 3588, Face.tmpp => some (3589, (0 : Int))
  | 3588, Face.zm => some (3594, (0 : Int))
  | 3589, Face.tmmm => some (3590, (0 : Int))
  | 3589, Face.tmpm => some (3591, (0 : Int))
  | 3589, Face.zm => some (3593, (0 : Int))
  | 3591, Face.zm => some (3592, (0 : Int))
  | 3592, Face.tmmm => some (3506, (0 : Int))
  | 3594, Face.tmmm => some (3530, (0 : Int))
  | 3594, Face.tmpm => some (3595, (0 : Int))
  | 3594, Face.tmpp => some (3596, (0 : Int))
  | 3597, Face.tmmp => some (3598, (0 : Int))
  | 3597, Face.tmpp => some (3603, (0 : Int))
  | 3597, Face.tpmp => some (3473, (0 : Int))
  | 3597, Face.tppp => some (3534, (0 : Int))
  | 3598, Face.tmpm => some (3599, (0 : Int))
  | 3598, Face.tmpp => some (3601, (0 : Int))
  | 3599, Face.tppp => some (3600, (0 : Int))
  | 3601, Face.tppp => some (3602, (0 : Int))
  | 3603, Face.tmmm => some (3604, (0 : Int))
  | 3603, Face.tpmp => some (3552, (0 : Int))
  | 3603, Face.tppm => some (3605, (0 : Int))
  | 3606, Face.tmmm => some (3607, (0 : Int))
  | 3606, Face.zm => some (3697, (0 : Int))
  | 3607, Face.tpmp => some (3608, (0 : Int))
  | 3607, Face.tppm => some (3641, (0 : Int))
  | 3607, Face.tppp => some (3675, (0 : Int))
  | 3607, Face.zp => some (3691, (0 : Int))
  | 3608, Face.tmpp => some (3609, (0 : Int))
  | 3608, Face.tppp => some (3615, (0 : Int))
  | 3608, Face.zp => some (3631, (0 : Int))
  | 3609, Face.tpmp => some (3610, (0 : Int))
  | 3609, Face.tppm => some (3612, (0 : Int))
  | 3609, Face.zm => some (3613, (0 : Int))
  | 3610, Face.zm => some (3611, (0 : Int))
  | 3613, Face.tppp => some (3614, (0 : Int))
  | 3615, Face.tmpm => some (3616, (0 : Int))
  | 3615, Face.tmpp => some (3619, (0 : Int))
  | 3615, Face.zm => some (3627, (0 : Int))
  | 3616, Face.tmmp => some (3617, (0 : Int))
  | 3617, Face.zm => some (3618, (0 : Int))
  | 3619, Face.tmmp => some (3620, (0 : Int))
  | 3619, Face.tmpm => some (3622, (0 : Int))
  | 3619, Face.zm => some (3626, (0 : Int))
  | 3620, Face.zm => some (3621, (0 : Int))
  | 3622, Face.zm => some (3623, (0 : Int))
  | 3623, Face.tmmp => some (3624, (0 : Int))
  | 3624, Face.xp => some (3625, (0 : Int))
  | 3627, Face.tmmp => some (3628, (0 : Int))
  | 3627, Face.tmpm => some (3630, (0 : Int))
  | 3628, Face.tmpp => some (3629, (0 : Int))
  | 3630, Face.tmpp => some (3623, (0 : Int))
  | 3631, Face.tmpm => some (3632, (0 : Int))
  | 3631, Face.tmpp => some (3634, (0 : Int))
  | 3631, Face.tppm => some (3637, (0 : Int))
  | 3632, Face.tppp => some (3633, (0 : Int))
  | 3634, Face.tmpm => some (3635, (0 : Int))
  | 3634, Face.tppp => some (3636, (0 : Int))
  | 3637, Face.tmpm => some (3638, (0 : Int))
  | 3638, Face.tmmm => some (3639, (0 : Int))
  | 3638, Face.tmpp => some (3640, (0 : Int))
  | 3641, Face.tmpp => some (3642, (0 : Int))
  | 3641, Face.tpmp => some (3649, (0 : Int))
  | 3641, Face.tppp => some (3662, (0 : Int))
  | 3641, Face.zp => some (3670, (0 : Int))
  | 3642, Face.tpmp => some (3643, (0 : Int))
  | 3642, Face.zm => some (3647, (0 : Int))
  | 3643, Face.tmpm => some (3644, (0 : Int))
  | 3643, Face.zm => some (3646, (0 : Int))
  | 3644, Face.zm => some (3645, (0 : Int))
  | 3647, Face.tppp => some (3648, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard056
