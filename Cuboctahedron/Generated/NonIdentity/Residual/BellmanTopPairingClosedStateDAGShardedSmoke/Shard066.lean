import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard066

open Cuboctahedron

def shardIndex : Nat := 66
def stateStart : Nat := 4224
def stateStop : Nat := 4288
def emittedEdgeCount : Nat := 70

def next : Nat -> Face -> Option (Nat × Int)
  | 4224, Face.zm => some (4225, (0 : Int))
  | 4227, Face.tppp => some (4228, (0 : Int))
  | 4229, Face.tmpm => some (4230, (0 : Int))
  | 4229, Face.tmpp => some (4231, (0 : Int))
  | 4229, Face.zm => some (2824, (0 : Int))
  | 4231, Face.tmpm => some (4232, (0 : Int))
  | 4231, Face.zm => some (4233, (0 : Int))
  | 4232, Face.zm => some (2826, (0 : Int))
  | 4234, Face.tmpm => some (4235, (0 : Int))
  | 4234, Face.tmpp => some (4237, (0 : Int))
  | 4235, Face.tppp => some (4236, (0 : Int))
  | 4236, Face.tmpp => some (2816, (0 : Int))
  | 4238, Face.tmmp => some (4239, (0 : Int))
  | 4238, Face.tmpp => some (4246, (0 : Int))
  | 4238, Face.tpmp => some (4257, (0 : Int))
  | 4238, Face.tppp => some (4270, (0 : Int))
  | 4238, Face.zp => some (2973, (0 : Int))
  | 4239, Face.tmpm => some (4240, (0 : Int))
  | 4239, Face.zm => some (4244, (0 : Int))
  | 4240, Face.tppp => some (4241, (0 : Int))
  | 4240, Face.zm => some (4243, (0 : Int))
  | 4241, Face.zm => some (4242, (0 : Int))
  | 4244, Face.tppp => some (4245, (0 : Int))
  | 4246, Face.tmmm => some (4247, (0 : Int))
  | 4246, Face.tpmp => some (4250, (0 : Int))
  | 4246, Face.zp => some (4255, (0 : Int))
  | 4247, Face.tmmp => some (4248, (0 : Int))
  | 4248, Face.zp => some (4249, (0 : Int))
  | 4250, Face.tmmp => some (4251, (0 : Int))
  | 4250, Face.zm => some (4254, (0 : Int))
  | 4251, Face.tmmm => some (4252, (0 : Int))
  | 4251, Face.zm => some (4253, (0 : Int))
  | 4252, Face.zp => some (2837, (0 : Int))
  | 4254, Face.tmmm => some (2836, (0 : Int))
  | 4255, Face.tmmp => some (4256, (0 : Int))
  | 4256, Face.tmmm => some (4249, (0 : Int))
  | 4257, Face.tmmm => some (4258, (0 : Int))
  | 4257, Face.tmpp => some (4262, (0 : Int))
  | 4257, Face.zp => some (4267, (0 : Int))
  | 4258, Face.tmmp => some (4259, (0 : Int))
  | 4259, Face.tmpp => some (4260, (0 : Int))
  | 4259, Face.zp => some (4261, (0 : Int))
  | 4262, Face.tmmp => some (4263, (0 : Int))
  | 4262, Face.zm => some (4266, (0 : Int))
  | 4263, Face.tmmm => some (4264, (0 : Int))
  | 4263, Face.zm => some (4265, (0 : Int))
  | 4264, Face.zp => some (2846, (0 : Int))
  | 4266, Face.tmmm => some (2845, (0 : Int))
  | 4267, Face.tmmp => some (4268, (0 : Int))
  | 4268, Face.tmmm => some (4261, (0 : Int))
  | 4268, Face.tmpp => some (4269, (0 : Int))
  | 4270, Face.tmpp => some (4271, (0 : Int))
  | 4270, Face.tpmp => some (4274, (0 : Int))
  | 4270, Face.zp => some (2855, (0 : Int))
  | 4271, Face.tmmp => some (4272, (0 : Int))
  | 4272, Face.zm => some (4273, (0 : Int))
  | 4274, Face.tmmp => some (4275, (0 : Int))
  | 4275, Face.tmpp => some (4276, (0 : Int))
  | 4275, Face.zm => some (4277, (0 : Int))
  | 4278, Face.tmmm => some (2819, (0 : Int))
  | 4278, Face.tmmp => some (4279, (0 : Int))
  | 4278, Face.tmpp => some (4288, (0 : Int))
  | 4279, Face.tmmm => some (4280, (0 : Int))
  | 4279, Face.tmpm => some (4283, (0 : Int))
  | 4279, Face.tmpp => some (4285, (0 : Int))
  | 4280, Face.tmpm => some (4281, (0 : Int))
  | 4281, Face.tmpp => some (4282, (0 : Int))
  | 4283, Face.tppp => some (4284, (0 : Int))
  | 4285, Face.tmpm => some (4286, (0 : Int))
  | 4286, Face.tmmm => some (4287, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard066
