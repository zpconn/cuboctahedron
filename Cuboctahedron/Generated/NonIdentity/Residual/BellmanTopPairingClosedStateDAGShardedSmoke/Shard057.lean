import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard057

open Cuboctahedron

def shardIndex : Nat := 57
def stateStart : Nat := 3648
def stateStop : Nat := 3712
def emittedEdgeCount : Nat := 65

def next : Nat -> Face -> Option (Nat × Int)
  | 3649, Face.tmpm => some (3650, (0 : Int))
  | 3649, Face.tmpp => some (3654, (0 : Int))
  | 3649, Face.zp => some (3658, (0 : Int))
  | 3650, Face.tppp => some (3651, (0 : Int))
  | 3651, Face.tmpp => some (3652, (0 : Int))
  | 3651, Face.zm => some (3653, (0 : Int))
  | 3654, Face.tppp => some (3655, (0 : Int))
  | 3654, Face.zm => some (3657, (0 : Int))
  | 3655, Face.zm => some (3656, (0 : Int))
  | 3658, Face.tmpm => some (3659, (0 : Int))
  | 3658, Face.tppp => some (3660, (0 : Int))
  | 3660, Face.tmpp => some (3661, (0 : Int))
  | 3662, Face.tmpm => some (3663, (0 : Int))
  | 3662, Face.tmpp => some (3664, (0 : Int))
  | 3662, Face.zm => some (3668, (0 : Int))
  | 3664, Face.tmpm => some (3665, (0 : Int))
  | 3664, Face.zm => some (3667, (0 : Int))
  | 3665, Face.zm => some (3666, (0 : Int))
  | 3668, Face.tmpm => some (3669, (0 : Int))
  | 3669, Face.tmpp => some (3666, (0 : Int))
  | 3670, Face.tmmm => some (3671, (0 : Int))
  | 3670, Face.tmpm => some (3673, (0 : Int))
  | 3671, Face.tmpm => some (3672, (0 : Int))
  | 3673, Face.tppp => some (3674, (0 : Int))
  | 3675, Face.tmmp => some (3676, (0 : Int))
  | 3675, Face.tmpp => some (3679, (0 : Int))
  | 3675, Face.zm => some (3686, (0 : Int))
  | 3676, Face.tmpm => some (3677, (0 : Int))
  | 3676, Face.zm => some (3678, (0 : Int))
  | 3679, Face.tmpm => some (3680, (0 : Int))
  | 3679, Face.zm => some (3684, (0 : Int))
  | 3680, Face.tmmp => some (3681, (0 : Int))
  | 3680, Face.zm => some (3683, (0 : Int))
  | 3681, Face.zm => some (3682, (0 : Int))
  | 3684, Face.tmmp => some (3685, (0 : Int))
  | 3686, Face.tmpm => some (3687, (0 : Int))
  | 3686, Face.tmpp => some (3689, (0 : Int))
  | 3687, Face.tmmp => some (3688, (0 : Int))
  | 3689, Face.tmmp => some (3690, (0 : Int))
  | 3691, Face.tpmm => some (3692, (0 : Int))
  | 3691, Face.tppp => some (3695, (0 : Int))
  | 3692, Face.tmpm => some (3613, (0 : Int))
  | 3692, Face.tppm => some (3693, (0 : Int))
  | 3693, Face.tmpm => some (3694, (0 : Int))
  | 3694, Face.tmmm => some (3621, (0 : Int))
  | 3695, Face.tmpm => some (3696, (0 : Int))
  | 3695, Face.tppm => some (3668, (0 : Int))
  | 3697, Face.tmmp => some (3698, (0 : Int))
  | 3697, Face.tmpm => some (3703, (0 : Int))
  | 3698, Face.tpmm => some (3699, (0 : Int))
  | 3698, Face.tppp => some (3670, (0 : Int))
  | 3699, Face.tmpm => some (3700, (0 : Int))
  | 3700, Face.tppp => some (3701, (0 : Int))
  | 3701, Face.tmmm => some (3702, (0 : Int))
  | 3703, Face.tmmm => some (3704, (0 : Int))
  | 3703, Face.tmmp => some (3712, (0 : Int))
  | 3703, Face.tmpp => some (3716, (0 : Int))
  | 3703, Face.tpmp => some (3723, (0 : Int))
  | 3704, Face.tmpp => some (3705, (0 : Int))
  | 3704, Face.tpmp => some (3707, (0 : Int))
  | 3705, Face.tmmp => some (3706, (0 : Int))
  | 3707, Face.tmmp => some (3708, (0 : Int))
  | 3707, Face.tppp => some (3710, (0 : Int))
  | 3708, Face.tmpp => some (3709, (0 : Int))
  | 3710, Face.tmpp => some (3711, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard057
