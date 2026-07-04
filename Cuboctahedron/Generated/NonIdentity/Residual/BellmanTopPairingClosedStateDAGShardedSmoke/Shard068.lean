import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard068

open Cuboctahedron

def shardIndex : Nat := 68
def stateStart : Nat := 4352
def stateStop : Nat := 4416
def emittedEdgeCount : Nat := 74

def next : Nat -> Face -> Option (Nat × Int)
  | 4352, Face.tmmm => some (4353, (0 : Int))
  | 4352, Face.tmpp => some (4356, (0 : Int))
  | 4352, Face.tpmp => some (4360, (0 : Int))
  | 4353, Face.tmpp => some (4354, (0 : Int))
  | 4353, Face.tpmp => some (4355, (0 : Int))
  | 4356, Face.tmmm => some (4357, (0 : Int))
  | 4356, Face.tpmp => some (4359, (0 : Int))
  | 4357, Face.tppp => some (4358, (0 : Int))
  | 4360, Face.tmmm => some (4361, (0 : Int))
  | 4360, Face.tmpp => some (4364, (0 : Int))
  | 4361, Face.tppp => some (4362, (0 : Int))
  | 4362, Face.tmpp => some (4363, (0 : Int))
  | 4365, Face.tmmm => some (4366, (0 : Int))
  | 4365, Face.tpmm => some (4369, (0 : Int))
  | 4366, Face.tmpm => some (4367, (0 : Int))
  | 4366, Face.tppm => some (4368, (0 : Int))
  | 4369, Face.tmpm => some (4370, (0 : Int))
  | 4369, Face.tmpp => some (4373, (0 : Int))
  | 4369, Face.tppm => some (4376, (0 : Int))
  | 4370, Face.tmmp => some (4371, (0 : Int))
  | 4370, Face.tppp => some (4372, (0 : Int))
  | 4373, Face.tmpm => some (4374, (0 : Int))
  | 4374, Face.tmmm => some (4375, (0 : Int))
  | 4376, Face.tmpm => some (4377, (0 : Int))
  | 4377, Face.tmpp => some (4378, (0 : Int))
  | 4379, Face.tpmp => some (4380, (0 : Int))
  | 4380, Face.tmmm => some (4381, (0 : Int))
  | 4380, Face.tmpp => some (4386, (0 : Int))
  | 4381, Face.tmpm => some (4382, (0 : Int))
  | 4381, Face.tmpp => some (4385, (0 : Int))
  | 4382, Face.tppp => some (4383, (0 : Int))
  | 4383, Face.tmpp => some (4384, (0 : Int))
  | 4386, Face.tmmm => some (4244, (0 : Int))
  | 4386, Face.tmpm => some (4387, (0 : Int))
  | 4388, Face.tmmm => some (4389, (0 : Int))
  | 4388, Face.tpmp => some (4441, (0 : Int))
  | 4388, Face.zp => some (4478, (0 : Int))
  | 4389, Face.tpmp => some (4390, (0 : Int))
  | 4389, Face.zp => some (4418, (0 : Int))
  | 4390, Face.tmpm => some (4391, (0 : Int))
  | 4390, Face.tppm => some (4397, (0 : Int))
  | 4390, Face.zm => some (4406, (0 : Int))
  | 4391, Face.tmmp => some (4392, (0 : Int))
  | 4391, Face.tmpp => some (4394, (0 : Int))
  | 4391, Face.zp => some (4396, (0 : Int))
  | 4392, Face.tppm => some (4393, (0 : Int))
  | 4392, Face.zp => some (3745, (0 : Int))
  | 4394, Face.zp => some (4395, (0 : Int))
  | 4396, Face.tppm => some (3742, (0 : Int))
  | 4397, Face.tmmp => some (4398, (0 : Int))
  | 4397, Face.tmpp => some (4402, (0 : Int))
  | 4397, Face.zm => some (3771, (0 : Int))
  | 4398, Face.tmpm => some (4399, (0 : Int))
  | 4398, Face.tmpp => some (4400, (0 : Int))
  | 4398, Face.zm => some (3221, (0 : Int))
  | 4400, Face.tmpm => some (4401, (0 : Int))
  | 4400, Face.zm => some (3319, (0 : Int))
  | 4401, Face.zm => some (3223, (0 : Int))
  | 4402, Face.tmpm => some (4403, (0 : Int))
  | 4402, Face.tppm => some (4405, (0 : Int))
  | 4402, Face.zm => some (3865, (0 : Int))
  | 4403, Face.zm => some (4404, (0 : Int))
  | 4405, Face.zm => some (3322, (0 : Int))
  | 4406, Face.tmmp => some (4407, (0 : Int))
  | 4406, Face.tmpp => some (4415, (0 : Int))
  | 4407, Face.tmpm => some (4408, (0 : Int))
  | 4407, Face.tmpp => some (4410, (0 : Int))
  | 4407, Face.tppm => some (4412, (0 : Int))
  | 4408, Face.tmmp => some (4409, (0 : Int))
  | 4410, Face.tmpm => some (4411, (0 : Int))
  | 4412, Face.tmpm => some (4413, (0 : Int))
  | 4413, Face.tmpp => some (4414, (0 : Int))
  | 4415, Face.tmpm => some (4395, (0 : Int))
  | 4415, Face.tppm => some (4416, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard068
