import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard058

open Cuboctahedron

def shardIndex : Nat := 58
def stateStart : Nat := 3712
def stateStop : Nat := 3776
def emittedEdgeCount : Nat := 70

def next : Nat -> Face -> Option (Nat × Int)
  | 3712, Face.tmpm => some (3713, (0 : Int))
  | 3713, Face.tppp => some (3714, (0 : Int))
  | 3714, Face.tmmm => some (3715, (0 : Int))
  | 3716, Face.tmmm => some (3717, (0 : Int))
  | 3716, Face.tpmp => some (3720, (0 : Int))
  | 3717, Face.tmmp => some (3718, (0 : Int))
  | 3717, Face.tppp => some (3719, (0 : Int))
  | 3720, Face.tmmp => some (3721, (0 : Int))
  | 3721, Face.tmmm => some (3722, (0 : Int))
  | 3723, Face.tmmm => some (3724, (0 : Int))
  | 3723, Face.tmpp => some (3731, (0 : Int))
  | 3724, Face.tmmp => some (3725, (0 : Int))
  | 3724, Face.tppp => some (3727, (0 : Int))
  | 3725, Face.tmpp => some (3726, (0 : Int))
  | 3727, Face.tmpp => some (3728, (0 : Int))
  | 3728, Face.tmmp => some (3729, (0 : Int))
  | 3729, Face.xp => some (3730, (0 : Int))
  | 3731, Face.tmmp => some (3732, (0 : Int))
  | 3732, Face.tmmm => some (3733, (0 : Int))
  | 3734, Face.tmmm => some (3735, (0 : Int))
  | 3734, Face.tpmp => some (3868, (0 : Int))
  | 3734, Face.zp => some (3942, (0 : Int))
  | 3735, Face.tpmp => some (3736, (0 : Int))
  | 3735, Face.tppp => some (3776, (0 : Int))
  | 3735, Face.zp => some (3836, (0 : Int))
  | 3736, Face.tmpm => some (3737, (0 : Int))
  | 3736, Face.tppm => some (3746, (0 : Int))
  | 3736, Face.zm => some (3761, (0 : Int))
  | 3737, Face.tmmp => some (3738, (0 : Int))
  | 3737, Face.tmpp => some (3739, (0 : Int))
  | 3737, Face.tppp => some (3741, (0 : Int))
  | 3737, Face.zp => some (3744, (0 : Int))
  | 3738, Face.zp => some (3214, (0 : Int))
  | 3739, Face.zp => some (3740, (0 : Int))
  | 3741, Face.zp => some (3742, (0 : Int))
  | 3742, Face.tmmp => some (3743, (0 : Int))
  | 3744, Face.tmmm => some (3745, (0 : Int))
  | 3744, Face.tppm => some (3212, (0 : Int))
  | 3746, Face.tmmm => some (3747, (0 : Int))
  | 3746, Face.tmpp => some (3756, (0 : Int))
  | 3746, Face.zm => some (3220, (0 : Int))
  | 3747, Face.tmpm => some (3748, (0 : Int))
  | 3747, Face.tmpp => some (3749, (0 : Int))
  | 3747, Face.zp => some (3754, (0 : Int))
  | 3749, Face.tmpm => some (3750, (0 : Int))
  | 3749, Face.zm => some (3752, (0 : Int))
  | 3750, Face.zm => some (3751, (0 : Int))
  | 3752, Face.tmpp => some (3753, (0 : Int))
  | 3754, Face.tmpm => some (3755, (0 : Int))
  | 3755, Face.tmpp => some (3751, (0 : Int))
  | 3756, Face.tmmm => some (3757, (0 : Int))
  | 3756, Face.tmpm => some (3759, (0 : Int))
  | 3756, Face.zm => some (3321, (0 : Int))
  | 3757, Face.zm => some (3758, (0 : Int))
  | 3759, Face.zm => some (3760, (0 : Int))
  | 3761, Face.tmmp => some (3762, (0 : Int))
  | 3761, Face.tmpp => some (3768, (0 : Int))
  | 3761, Face.tppp => some (3771, (0 : Int))
  | 3762, Face.tmpm => some (3763, (0 : Int))
  | 3762, Face.tmpp => some (3765, (0 : Int))
  | 3763, Face.tppp => some (3764, (0 : Int))
  | 3765, Face.tmpm => some (3766, (0 : Int))
  | 3766, Face.tmmm => some (3767, (0 : Int))
  | 3768, Face.tmmm => some (3769, (0 : Int))
  | 3768, Face.tmpm => some (3740, (0 : Int))
  | 3768, Face.tppm => some (3770, (0 : Int))
  | 3771, Face.tmpm => some (3772, (0 : Int))
  | 3771, Face.tmpp => some (3774, (0 : Int))
  | 3772, Face.tmmp => some (3773, (0 : Int))
  | 3774, Face.tmpm => some (3775, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard058
