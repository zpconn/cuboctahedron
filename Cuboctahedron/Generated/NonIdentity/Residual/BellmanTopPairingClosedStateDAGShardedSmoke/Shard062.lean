import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard062

open Cuboctahedron

def shardIndex : Nat := 62
def stateStart : Nat := 3968
def stateStop : Nat := 4032
def emittedEdgeCount : Nat := 63

def next : Nat -> Face -> Option (Nat × Int)
  | 3968, Face.tmpm => some (3969, (0 : Int))
  | 3970, Face.tpmp => some (3971, (0 : Int))
  | 3971, Face.tmpm => some (3972, (0 : Int))
  | 3973, Face.tmmp => some (3974, (0 : Int))
  | 3973, Face.tpmm => some (3976, (0 : Int))
  | 3973, Face.tpmp => some (3981, (0 : Int))
  | 3974, Face.tmpm => some (3975, (0 : Int))
  | 3976, Face.tmpm => some (3977, (0 : Int))
  | 3976, Face.tmpp => some (3979, (0 : Int))
  | 3977, Face.tmmp => some (3978, (0 : Int))
  | 3979, Face.tmmp => some (3980, (0 : Int))
  | 3981, Face.tmpm => some (3982, (0 : Int))
  | 3982, Face.tmmp => some (3983, (0 : Int))
  | 3984, Face.tmmp => some (3985, (0 : Int))
  | 3984, Face.tmpm => some (4001, (0 : Int))
  | 3984, Face.tpmm => some (4021, (0 : Int))
  | 3985, Face.tmmm => some (3986, (0 : Int))
  | 3985, Face.tpmm => some (3989, (0 : Int))
  | 3986, Face.tpmp => some (3987, (0 : Int))
  | 3987, Face.tppp => some (3988, (0 : Int))
  | 3989, Face.tmmm => some (3990, (0 : Int))
  | 3989, Face.tmpm => some (3995, (0 : Int))
  | 3989, Face.tmpp => some (3998, (0 : Int))
  | 3990, Face.tmpm => some (3991, (0 : Int))
  | 3990, Face.tppp => some (3993, (0 : Int))
  | 3991, Face.tmpp => some (3992, (0 : Int))
  | 3993, Face.tmpp => some (3994, (0 : Int))
  | 3995, Face.tppp => some (3996, (0 : Int))
  | 3996, Face.tmmm => some (3997, (0 : Int))
  | 3998, Face.tmpm => some (3999, (0 : Int))
  | 3999, Face.tmmm => some (4000, (0 : Int))
  | 4001, Face.tmmm => some (4002, (0 : Int))
  | 4001, Face.tmmp => some (4007, (0 : Int))
  | 4001, Face.tpmm => some (4010, (0 : Int))
  | 4002, Face.tmpp => some (4003, (0 : Int))
  | 4002, Face.tppm => some (4005, (0 : Int))
  | 4003, Face.tppp => some (4004, (0 : Int))
  | 4005, Face.tppp => some (4006, (0 : Int))
  | 4007, Face.tmmm => some (4008, (0 : Int))
  | 4008, Face.tppp => some (4009, (0 : Int))
  | 4010, Face.tmmm => some (4011, (0 : Int))
  | 4010, Face.tmpp => some (4018, (0 : Int))
  | 4011, Face.tmmp => some (4012, (0 : Int))
  | 4011, Face.tppp => some (4014, (0 : Int))
  | 4012, Face.tmpp => some (4013, (0 : Int))
  | 4014, Face.tmpp => some (4015, (0 : Int))
  | 4015, Face.tmmp => some (4016, (0 : Int))
  | 4016, Face.xp => some (4017, (0 : Int))
  | 4018, Face.tmmp => some (4019, (0 : Int))
  | 4019, Face.tmmm => some (4020, (0 : Int))
  | 4021, Face.tmmm => some (4022, (0 : Int))
  | 4021, Face.tmmp => some (4031, (0 : Int))
  | 4021, Face.tmpp => some (4038, (0 : Int))
  | 4022, Face.tmpp => some (4023, (0 : Int))
  | 4022, Face.tpmp => some (4025, (0 : Int))
  | 4023, Face.tppp => some (4024, (0 : Int))
  | 4025, Face.tmmp => some (4026, (0 : Int))
  | 4025, Face.tppp => some (4028, (0 : Int))
  | 4026, Face.tmpp => some (4027, (0 : Int))
  | 4028, Face.tmpp => some (4029, (0 : Int))
  | 4029, Face.tmmp => some (4030, (0 : Int))
  | 4031, Face.tmmm => some (4032, (0 : Int))
  | 4031, Face.tmpm => some (4035, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard062
