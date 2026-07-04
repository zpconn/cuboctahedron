import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard060

open Cuboctahedron

def shardIndex : Nat := 60
def stateStart : Nat := 3840
def stateStop : Nat := 3904
def emittedEdgeCount : Nat := 72

def next : Nat -> Face -> Option (Nat × Int)
  | 3841, Face.tmpm => some (3842, (0 : Int))
  | 3841, Face.tmpp => some (3849, (0 : Int))
  | 3842, Face.tmmp => some (3843, (0 : Int))
  | 3842, Face.tppp => some (3845, (0 : Int))
  | 3843, Face.tmpp => some (3844, (0 : Int))
  | 3845, Face.tmpp => some (3846, (0 : Int))
  | 3846, Face.tmmp => some (3847, (0 : Int))
  | 3847, Face.xp => some (3848, (0 : Int))
  | 3850, Face.tmmm => some (3851, (0 : Int))
  | 3850, Face.tppm => some (3852, (0 : Int))
  | 3853, Face.tmmp => some (3854, (0 : Int))
  | 3853, Face.tmpp => some (3860, (0 : Int))
  | 3853, Face.tppp => some (3864, (0 : Int))
  | 3854, Face.tmpm => some (3855, (0 : Int))
  | 3854, Face.tmpp => some (3857, (0 : Int))
  | 3855, Face.tppp => some (3856, (0 : Int))
  | 3857, Face.tmpm => some (3858, (0 : Int))
  | 3858, Face.tmmm => some (3859, (0 : Int))
  | 3860, Face.tmmm => some (3861, (0 : Int))
  | 3860, Face.tmpm => some (3862, (0 : Int))
  | 3860, Face.tppm => some (3863, (0 : Int))
  | 3864, Face.tmpm => some (3865, (0 : Int))
  | 3864, Face.tmpp => some (3866, (0 : Int))
  | 3865, Face.tmmp => some (3758, (0 : Int))
  | 3866, Face.tmpm => some (3867, (0 : Int))
  | 3868, Face.tmmm => some (3869, (0 : Int))
  | 3868, Face.zm => some (3923, (0 : Int))
  | 3869, Face.tpmp => some (3870, (0 : Int))
  | 3869, Face.tppm => some (3883, (0 : Int))
  | 3869, Face.tppp => some (3906, (0 : Int))
  | 3869, Face.zp => some (3920, (0 : Int))
  | 3870, Face.tmpp => some (3871, (0 : Int))
  | 3870, Face.tppp => some (3873, (0 : Int))
  | 3870, Face.zp => some (3879, (0 : Int))
  | 3871, Face.tppm => some (3872, (0 : Int))
  | 3871, Face.zm => some (3632, (0 : Int))
  | 3873, Face.tmpp => some (3874, (0 : Int))
  | 3873, Face.zm => some (3876, (0 : Int))
  | 3874, Face.tmmp => some (3875, (0 : Int))
  | 3874, Face.zm => some (3630, (0 : Int))
  | 3875, Face.zm => some (3639, (0 : Int))
  | 3876, Face.tmmp => some (3877, (0 : Int))
  | 3877, Face.tmpp => some (3878, (0 : Int))
  | 3879, Face.tmpp => some (3880, (0 : Int))
  | 3879, Face.tppm => some (3882, (0 : Int))
  | 3880, Face.tppp => some (3881, (0 : Int))
  | 3883, Face.tmpp => some (3884, (0 : Int))
  | 3883, Face.tpmp => some (3887, (0 : Int))
  | 3883, Face.tppp => some (3894, (0 : Int))
  | 3883, Face.zp => some (3901, (0 : Int))
  | 3884, Face.tpmp => some (3885, (0 : Int))
  | 3884, Face.zm => some (3673, (0 : Int))
  | 3885, Face.zm => some (3886, (0 : Int))
  | 3886, Face.tmpp => some (3645, (0 : Int))
  | 3887, Face.tmpp => some (3888, (0 : Int))
  | 3887, Face.zp => some (3891, (0 : Int))
  | 3888, Face.tppp => some (3889, (0 : Int))
  | 3888, Face.zm => some (3659, (0 : Int))
  | 3889, Face.zm => some (3890, (0 : Int))
  | 3891, Face.tppp => some (3892, (0 : Int))
  | 3892, Face.tmpp => some (3893, (0 : Int))
  | 3894, Face.tmpm => some (3895, (0 : Int))
  | 3894, Face.tmpp => some (3896, (0 : Int))
  | 3894, Face.zm => some (3899, (0 : Int))
  | 3896, Face.tmpm => some (3897, (0 : Int))
  | 3896, Face.zm => some (3669, (0 : Int))
  | 3897, Face.zm => some (3898, (0 : Int))
  | 3899, Face.tmpm => some (3900, (0 : Int))
  | 3900, Face.tmpp => some (3898, (0 : Int))
  | 3901, Face.tmmm => some (3902, (0 : Int))
  | 3901, Face.tmpm => some (3904, (0 : Int))
  | 3902, Face.tmpm => some (3903, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard060
