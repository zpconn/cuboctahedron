import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard064

open Cuboctahedron

def shardIndex : Nat := 64
def stateStart : Nat := 4096
def stateStop : Nat := 4160
def emittedEdgeCount : Nat := 85

def next : Nat -> Face -> Option (Nat × Int)
  | 4096, Face.tmpp => some (4097, (0 : Int))
  | 4096, Face.tpmp => some (4099, (0 : Int))
  | 4096, Face.tppp => some (4087, (0 : Int))
  | 4097, Face.tmmm => some (2179, (0 : Int))
  | 4097, Face.tpmp => some (4098, (0 : Int))
  | 4099, Face.tmpp => some (4100, (0 : Int))
  | 4101, Face.tpmp => some (4102, (0 : Int))
  | 4101, Face.tppp => some (4113, (0 : Int))
  | 4101, Face.zp => some (4146, (0 : Int))
  | 4102, Face.tmpm => some (4103, (0 : Int))
  | 4102, Face.zm => some (4109, (0 : Int))
  | 4103, Face.tmpp => some (4104, (0 : Int))
  | 4103, Face.tppp => some (4106, (0 : Int))
  | 4103, Face.zp => some (4108, (0 : Int))
  | 4104, Face.zp => some (4105, (0 : Int))
  | 4106, Face.tmmm => some (4107, (0 : Int))
  | 4106, Face.zp => some (2746, (0 : Int))
  | 4108, Face.tmmm => some (2740, (0 : Int))
  | 4109, Face.tmpp => some (4110, (0 : Int))
  | 4109, Face.tppp => some (2762, (0 : Int))
  | 4110, Face.tmmm => some (4111, (0 : Int))
  | 4110, Face.tmpm => some (4105, (0 : Int))
  | 4111, Face.tppp => some (4112, (0 : Int))
  | 4113, Face.tpmm => some (4114, (0 : Int))
  | 4113, Face.tpmp => some (4134, (0 : Int))
  | 4113, Face.zp => some (2802, (0 : Int))
  | 4114, Face.tmmm => some (4115, (0 : Int))
  | 4114, Face.tmpp => some (4119, (0 : Int))
  | 4114, Face.tpmp => some (4125, (0 : Int))
  | 4114, Face.zp => some (4132, (0 : Int))
  | 4115, Face.tmpp => some (4116, (0 : Int))
  | 4115, Face.tpmp => some (2480, (0 : Int))
  | 4115, Face.zp => some (4117, (0 : Int))
  | 4117, Face.tmpm => some (4118, (0 : Int))
  | 4119, Face.tmmm => some (4120, (0 : Int))
  | 4119, Face.tpmp => some (4121, (0 : Int))
  | 4119, Face.zp => some (4124, (0 : Int))
  | 4121, Face.tmpm => some (4122, (0 : Int))
  | 4121, Face.zm => some (4123, (0 : Int))
  | 4122, Face.tmmm => some (2494, (0 : Int))
  | 4122, Face.zp => some (1250, (0 : Int))
  | 4123, Face.tmmm => some (2561, (0 : Int))
  | 4125, Face.tmmm => some (2504, (0 : Int))
  | 4125, Face.tmpm => some (4126, (0 : Int))
  | 4125, Face.tmpp => some (4127, (0 : Int))
  | 4125, Face.zp => some (4131, (0 : Int))
  | 4127, Face.tmpm => some (4128, (0 : Int))
  | 4127, Face.zm => some (4130, (0 : Int))
  | 4128, Face.tmmm => some (4129, (0 : Int))
  | 4128, Face.zm => some (1274, (0 : Int))
  | 4129, Face.zp => some (1290, (0 : Int))
  | 4130, Face.tmmm => some (2519, (0 : Int))
  | 4131, Face.tmpm => some (1272, (0 : Int))
  | 4132, Face.tmmm => some (2557, (0 : Int))
  | 4132, Face.tmpm => some (4133, (0 : Int))
  | 4134, Face.tmmm => some (4135, (0 : Int))
  | 4134, Face.tmpp => some (4140, (0 : Int))
  | 4134, Face.zm => some (4143, (0 : Int))
  | 4135, Face.tmpp => some (4136, (0 : Int))
  | 4135, Face.tpmp => some (4137, (0 : Int))
  | 4135, Face.zp => some (4138, (0 : Int))
  | 4136, Face.zm => some (2428, (0 : Int))
  | 4138, Face.tmpm => some (4139, (0 : Int))
  | 4140, Face.tmmm => some (2434, (0 : Int))
  | 4140, Face.tmpm => some (4141, (0 : Int))
  | 4140, Face.zm => some (2804, (0 : Int))
  | 4141, Face.zm => some (4142, (0 : Int))
  | 4142, Face.tmmm => some (1312, (0 : Int))
  | 4143, Face.tmmm => some (2568, (0 : Int))
  | 4143, Face.tmpm => some (4144, (0 : Int))
  | 4143, Face.tmpp => some (4145, (0 : Int))
  | 4146, Face.tmpm => some (4147, (0 : Int))
  | 4146, Face.tpmm => some (4160, (0 : Int))
  | 4147, Face.tmmm => some (4148, (0 : Int))
  | 4147, Face.tpmm => some (4151, (0 : Int))
  | 4147, Face.tpmp => some (4157, (0 : Int))
  | 4148, Face.tpmp => some (4149, (0 : Int))
  | 4149, Face.tppp => some (4150, (0 : Int))
  | 4151, Face.tmpm => some (4152, (0 : Int))
  | 4151, Face.tmpp => some (4156, (0 : Int))
  | 4152, Face.tppp => some (4153, (0 : Int))
  | 4153, Face.tmmm => some (4154, (0 : Int))
  | 4153, Face.tmpp => some (4155, (0 : Int))
  | 4157, Face.tmmm => some (4158, (0 : Int))
  | 4158, Face.tppp => some (4159, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard064
