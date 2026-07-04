import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard065

open Cuboctahedron

def shardIndex : Nat := 65
def stateStart : Nat := 4160
def stateStop : Nat := 4224
def emittedEdgeCount : Nat := 79

def next : Nat -> Face -> Option (Nat × Int)
  | 4160, Face.tmpp => some (4161, (0 : Int))
  | 4160, Face.tppp => some (4165, (0 : Int))
  | 4161, Face.tmmm => some (4162, (0 : Int))
  | 4161, Face.tmpm => some (4164, (0 : Int))
  | 4162, Face.tppp => some (4163, (0 : Int))
  | 4165, Face.tmmm => some (4166, (0 : Int))
  | 4165, Face.tmpm => some (2761, (0 : Int))
  | 4165, Face.tmpp => some (4167, (0 : Int))
  | 4166, Face.tmpm => some (2594, (0 : Int))
  | 4167, Face.tmpm => some (4168, (0 : Int))
  | 4168, Face.tmmm => some (4169, (0 : Int))
  | 4170, Face.tmmm => some (4171, (0 : Int))
  | 4170, Face.tpmm => some (4218, (0 : Int))
  | 4170, Face.zm => some (2943, (0 : Int))
  | 4171, Face.tpmm => some (4172, (0 : Int))
  | 4171, Face.tpmp => some (4192, (0 : Int))
  | 4171, Face.tppm => some (4201, (0 : Int))
  | 4171, Face.zp => some (2872, (0 : Int))
  | 4172, Face.tmpp => some (4173, (0 : Int))
  | 4172, Face.tpmp => some (4180, (0 : Int))
  | 4172, Face.zp => some (4189, (0 : Int))
  | 4173, Face.tpmp => some (4174, (0 : Int))
  | 4173, Face.tppm => some (4178, (0 : Int))
  | 4173, Face.zp => some (4179, (0 : Int))
  | 4174, Face.tmpm => some (4175, (0 : Int))
  | 4174, Face.zm => some (4177, (0 : Int))
  | 4175, Face.zp => some (4176, (0 : Int))
  | 4180, Face.tmpm => some (4181, (0 : Int))
  | 4180, Face.tmpp => some (4182, (0 : Int))
  | 4180, Face.tppm => some (4186, (0 : Int))
  | 4180, Face.zp => some (4187, (0 : Int))
  | 4182, Face.tmpm => some (4183, (0 : Int))
  | 4182, Face.zm => some (4185, (0 : Int))
  | 4183, Face.zm => some (4184, (0 : Int))
  | 4187, Face.tmpm => some (4188, (0 : Int))
  | 4188, Face.tmpp => some (4184, (0 : Int))
  | 4189, Face.tmpm => some (4190, (0 : Int))
  | 4189, Face.tppm => some (4191, (0 : Int))
  | 4192, Face.tmpp => some (4193, (0 : Int))
  | 4192, Face.zm => some (4197, (0 : Int))
  | 4193, Face.tmpm => some (4194, (0 : Int))
  | 4193, Face.tppm => some (4196, (0 : Int))
  | 4193, Face.zm => some (2874, (0 : Int))
  | 4194, Face.zm => some (4195, (0 : Int))
  | 4197, Face.tmpm => some (4198, (0 : Int))
  | 4197, Face.tmpp => some (4199, (0 : Int))
  | 4197, Face.tppm => some (4200, (0 : Int))
  | 4201, Face.tmpp => some (4202, (0 : Int))
  | 4201, Face.tpmp => some (4209, (0 : Int))
  | 4201, Face.zp => some (2953, (0 : Int))
  | 4202, Face.tpmp => some (4203, (0 : Int))
  | 4202, Face.zp => some (4208, (0 : Int))
  | 4203, Face.tmpm => some (4204, (0 : Int))
  | 4203, Face.zm => some (4206, (0 : Int))
  | 4204, Face.zp => some (4205, (0 : Int))
  | 4206, Face.tmpp => some (4207, (0 : Int))
  | 4209, Face.tmpm => some (4210, (0 : Int))
  | 4209, Face.tmpp => some (4211, (0 : Int))
  | 4209, Face.zm => some (4216, (0 : Int))
  | 4211, Face.tmpm => some (4212, (0 : Int))
  | 4211, Face.zm => some (4214, (0 : Int))
  | 4212, Face.zm => some (4213, (0 : Int))
  | 4214, Face.tmpp => some (4215, (0 : Int))
  | 4216, Face.tmpm => some (4217, (0 : Int))
  | 4217, Face.tmpp => some (4213, (0 : Int))
  | 4218, Face.tmmp => some (4219, (0 : Int))
  | 4218, Face.tmpm => some (4238, (0 : Int))
  | 4218, Face.zp => some (4278, (0 : Int))
  | 4219, Face.tmpp => some (4220, (0 : Int))
  | 4219, Face.tppp => some (4229, (0 : Int))
  | 4219, Face.zm => some (4234, (0 : Int))
  | 4220, Face.tmmm => some (4221, (0 : Int))
  | 4220, Face.tmpm => some (4223, (0 : Int))
  | 4220, Face.zm => some (4227, (0 : Int))
  | 4221, Face.tmpm => some (4222, (0 : Int))
  | 4221, Face.zm => some (2818, (0 : Int))
  | 4222, Face.zm => some (2822, (0 : Int))
  | 4223, Face.tppp => some (4224, (0 : Int))
  | 4223, Face.zm => some (4226, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard065
