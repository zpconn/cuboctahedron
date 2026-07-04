import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard070

open Cuboctahedron

def shardIndex : Nat := 70
def stateStart : Nat := 4480
def stateStop : Nat := 4544
def emittedEdgeCount : Nat := 64

def next : Nat -> Face -> Option (Nat × Int)
  | 4480, Face.tmpp => some (4481, (0 : Int))
  | 4481, Face.tmpm => some (4482, (0 : Int))
  | 4481, Face.tppm => some (4483, (0 : Int))
  | 4483, Face.tmmp => some (4484, (0 : Int))
  | 4485, Face.tmmp => some (4486, (0 : Int))
  | 4485, Face.tmpp => some (4491, (0 : Int))
  | 4485, Face.tpmp => some (4495, (0 : Int))
  | 4486, Face.tmpp => some (4487, (0 : Int))
  | 4486, Face.tpmp => some (4488, (0 : Int))
  | 4488, Face.tmpm => some (4489, (0 : Int))
  | 4489, Face.tmpp => some (4490, (0 : Int))
  | 4491, Face.tpmp => some (4492, (0 : Int))
  | 4491, Face.tppm => some (4494, (0 : Int))
  | 4492, Face.tmpm => some (4493, (0 : Int))
  | 4495, Face.tmpm => some (4496, (0 : Int))
  | 4495, Face.tmpp => some (4499, (0 : Int))
  | 4495, Face.tppm => some (4501, (0 : Int))
  | 4496, Face.tmmp => some (4497, (0 : Int))
  | 4497, Face.tmpp => some (4498, (0 : Int))
  | 4499, Face.tmpm => some (4500, (0 : Int))
  | 4501, Face.tmpm => some (4502, (0 : Int))
  | 4502, Face.tmpp => some (4503, (0 : Int))
  | 4504, Face.tmmp => some (3691, (0 : Int))
  | 4504, Face.tmpm => some (4505, (0 : Int))
  | 4505, Face.tmmm => some (4506, (0 : Int))
  | 4505, Face.tmmp => some (4512, (0 : Int))
  | 4505, Face.tmpp => some (4516, (0 : Int))
  | 4505, Face.tpmp => some (4522, (0 : Int))
  | 4506, Face.tmpp => some (4507, (0 : Int))
  | 4506, Face.tpmp => some (4509, (0 : Int))
  | 4507, Face.tmmp => some (4508, (0 : Int))
  | 4509, Face.tmmp => some (4510, (0 : Int))
  | 4510, Face.tmpp => some (4511, (0 : Int))
  | 4512, Face.tmpm => some (4513, (0 : Int))
  | 4512, Face.tppm => some (4515, (0 : Int))
  | 4513, Face.tppp => some (4514, (0 : Int))
  | 4516, Face.tmmm => some (4517, (0 : Int))
  | 4516, Face.tpmp => some (4519, (0 : Int))
  | 4517, Face.tmmp => some (4518, (0 : Int))
  | 4519, Face.tmmp => some (4520, (0 : Int))
  | 4520, Face.tmmm => some (4521, (0 : Int))
  | 4522, Face.tmmm => some (4523, (0 : Int))
  | 4522, Face.tmpp => some (4526, (0 : Int))
  | 4523, Face.tmmp => some (4524, (0 : Int))
  | 4524, Face.tmpp => some (4525, (0 : Int))
  | 4526, Face.tmmp => some (4527, (0 : Int))
  | 4527, Face.tmmm => some (4528, (0 : Int))
  | 4529, Face.tmmp => some (4530, (0 : Int))
  | 4529, Face.tmpm => some (4546, (0 : Int))
  | 4529, Face.tpmm => some (4562, (0 : Int))
  | 4530, Face.tmmm => some (4531, (0 : Int))
  | 4530, Face.tpmm => some (4534, (0 : Int))
  | 4531, Face.tpmp => some (4532, (0 : Int))
  | 4531, Face.tppm => some (4533, (0 : Int))
  | 4534, Face.tmmm => some (4535, (0 : Int))
  | 4534, Face.tmpm => some (4540, (0 : Int))
  | 4534, Face.tmpp => some (4543, (0 : Int))
  | 4535, Face.tmpm => some (4536, (0 : Int))
  | 4536, Face.tmpp => some (4537, (0 : Int))
  | 4537, Face.tmmp => some (4538, (0 : Int))
  | 4538, Face.xp => some (4539, (0 : Int))
  | 4540, Face.tmmp => some (4541, (0 : Int))
  | 4540, Face.tppp => some (4542, (0 : Int))
  | 4543, Face.tmpm => some (4544, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard070
