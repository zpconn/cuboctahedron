import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard071

open Cuboctahedron

def shardIndex : Nat := 71
def stateStart : Nat := 4544
def stateStop : Nat := 4608
def emittedEdgeCount : Nat := 81

def next : Nat -> Face -> Option (Nat × Int)
  | 4544, Face.tmmm => some (4545, (0 : Int))
  | 4546, Face.tmmm => some (4547, (0 : Int))
  | 4546, Face.tmmp => some (4552, (0 : Int))
  | 4546, Face.tpmm => some (4555, (0 : Int))
  | 4547, Face.tmpp => some (4548, (0 : Int))
  | 4547, Face.tppm => some (4549, (0 : Int))
  | 4549, Face.tmmp => some (4550, (0 : Int))
  | 4550, Face.tmpp => some (4551, (0 : Int))
  | 4552, Face.tmmm => some (4553, (0 : Int))
  | 4552, Face.tppm => some (4554, (0 : Int))
  | 4555, Face.tmmm => some (4556, (0 : Int))
  | 4555, Face.tmpp => some (4559, (0 : Int))
  | 4556, Face.tmmp => some (4557, (0 : Int))
  | 4557, Face.tmpp => some (4558, (0 : Int))
  | 4559, Face.tmmp => some (4560, (0 : Int))
  | 4560, Face.tmmm => some (4561, (0 : Int))
  | 4562, Face.tmmm => some (4563, (0 : Int))
  | 4562, Face.tmmp => some (4568, (0 : Int))
  | 4562, Face.tmpp => some (4577, (0 : Int))
  | 4563, Face.tmpp => some (4564, (0 : Int))
  | 4563, Face.tpmp => some (4565, (0 : Int))
  | 4565, Face.tmmp => some (4566, (0 : Int))
  | 4566, Face.tmpp => some (4567, (0 : Int))
  | 4568, Face.tmmm => some (4569, (0 : Int))
  | 4568, Face.tmpm => some (4571, (0 : Int))
  | 4568, Face.tppm => some (4573, (0 : Int))
  | 4569, Face.tmpm => some (4570, (0 : Int))
  | 4571, Face.tppp => some (4572, (0 : Int))
  | 4573, Face.tmpm => some (4574, (0 : Int))
  | 4574, Face.tmmm => some (4575, (0 : Int))
  | 4574, Face.tmpp => some (4576, (0 : Int))
  | 4577, Face.tmmm => some (4578, (0 : Int))
  | 4577, Face.tmpm => some (4579, (0 : Int))
  | 4579, Face.tmmp => some (4580, (0 : Int))
  | 4580, Face.tmmm => some (4581, (0 : Int))
  | 4582, Face.tmmm => some (2889, (0 : Int))
  | 4582, Face.tppm => some (3942, (0 : Int))
  | 4583, Face.tmpp => some (4584, (0 : Int))
  | 4583, Face.yp => some (4044, (0 : Int))
  | 4583, Face.zp => some (5230, (0 : Int))
  | 4584, Face.tpmm => some (4585, (0 : Int))
  | 4584, Face.tppp => some (4741, (0 : Int))
  | 4584, Face.zp => some (4972, (0 : Int))
  | 4585, Face.tpmp => some (4586, (0 : Int))
  | 4585, Face.tppp => some (4679, (0 : Int))
  | 4585, Face.zp => some (4700, (0 : Int))
  | 4586, Face.tppm => some (4587, (0 : Int))
  | 4586, Face.tppp => some (4641, (0 : Int))
  | 4586, Face.zp => some (1553, (0 : Int))
  | 4587, Face.tmmp => some (4588, (0 : Int))
  | 4587, Face.tmpm => some (4597, (0 : Int))
  | 4587, Face.tppp => some (4615, (0 : Int))
  | 4587, Face.zp => some (4637, (0 : Int))
  | 4588, Face.tppp => some (4589, (0 : Int))
  | 4588, Face.zp => some (4596, (0 : Int))
  | 4589, Face.tmmm => some (4590, (0 : Int))
  | 4589, Face.tmpm => some (4592, (0 : Int))
  | 4589, Face.yp => some (4121, (0 : Int))
  | 4589, Face.zm => some (4595, (0 : Int))
  | 4590, Face.tmpm => some (4591, (0 : Int))
  | 4591, Face.yp => some (2494, (0 : Int))
  | 4591, Face.zp => some (1365, (0 : Int))
  | 4592, Face.tppp => some (4593, (0 : Int))
  | 4593, Face.zp => some (4594, (0 : Int))
  | 4595, Face.tmpm => some (1246, (0 : Int))
  | 4595, Face.yp => some (4123, (0 : Int))
  | 4596, Face.tmpm => some (1240, (0 : Int))
  | 4597, Face.tmmp => some (4598, (0 : Int))
  | 4597, Face.tppp => some (4612, (0 : Int))
  | 4597, Face.zp => some (1298, (0 : Int))
  | 4598, Face.yp => some (4599, (0 : Int))
  | 4598, Face.zp => some (4605, (0 : Int))
  | 4599, Face.tppp => some (4600, (0 : Int))
  | 4600, Face.tmmm => some (4601, (0 : Int))
  | 4600, Face.zp => some (4604, (0 : Int))
  | 4601, Face.zp => some (4602, (0 : Int))
  | 4602, Face.xp => some (4603, (0 : Int))
  | 4605, Face.tppp => some (4606, (0 : Int))
  | 4605, Face.yp => some (4610, (0 : Int))
  | 4606, Face.tmmm => some (4607, (0 : Int))
  | 4607, Face.yp => some (4608, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard071
