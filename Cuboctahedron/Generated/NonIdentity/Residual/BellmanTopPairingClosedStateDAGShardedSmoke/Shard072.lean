import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard072

open Cuboctahedron

def shardIndex : Nat := 72
def stateStart : Nat := 4608
def stateStop : Nat := 4672
def emittedEdgeCount : Nat := 84

def next : Nat -> Face -> Option (Nat × Int)
  | 4608, Face.xp => some (4609, (0 : Int))
  | 4610, Face.tmmm => some (4611, (0 : Int))
  | 4612, Face.tmmm => some (4613, (0 : Int))
  | 4612, Face.zp => some (1373, (0 : Int))
  | 4613, Face.tmmp => some (4614, (0 : Int))
  | 4614, Face.yp => some (2477, (0 : Int))
  | 4614, Face.zp => some (1375, (0 : Int))
  | 4615, Face.tmmm => some (4616, (0 : Int))
  | 4615, Face.tmmp => some (4625, (0 : Int))
  | 4615, Face.zp => some (4634, (0 : Int))
  | 4616, Face.tmpm => some (4617, (0 : Int))
  | 4616, Face.yp => some (2513, (0 : Int))
  | 4616, Face.zp => some (4623, (0 : Int))
  | 4617, Face.tmmp => some (4618, (0 : Int))
  | 4618, Face.yp => some (4619, (0 : Int))
  | 4618, Face.zp => some (4622, (0 : Int))
  | 4619, Face.zp => some (4620, (0 : Int))
  | 4620, Face.xp => some (4621, (0 : Int))
  | 4622, Face.yp => some (4620, (0 : Int))
  | 4623, Face.tmpm => some (1259, (0 : Int))
  | 4623, Face.yp => some (4624, (0 : Int))
  | 4625, Face.tmmm => some (4626, (0 : Int))
  | 4625, Face.tmpm => some (4629, (0 : Int))
  | 4625, Face.yp => some (4127, (0 : Int))
  | 4625, Face.zm => some (4632, (0 : Int))
  | 4626, Face.tmpm => some (4627, (0 : Int))
  | 4626, Face.zm => some (4628, (0 : Int))
  | 4627, Face.zp => some (1268, (0 : Int))
  | 4629, Face.tppp => some (4630, (0 : Int))
  | 4630, Face.zp => some (4631, (0 : Int))
  | 4632, Face.tmpm => some (1270, (0 : Int))
  | 4632, Face.tppp => some (4633, (0 : Int))
  | 4632, Face.yp => some (4130, (0 : Int))
  | 4634, Face.tmmm => some (4635, (0 : Int))
  | 4634, Face.tmpm => some (1283, (0 : Int))
  | 4635, Face.tmmp => some (4628, (0 : Int))
  | 4635, Face.tmpm => some (4636, (0 : Int))
  | 4635, Face.yp => some (2521, (0 : Int))
  | 4637, Face.tmmm => some (4638, (0 : Int))
  | 4638, Face.tmpm => some (4639, (0 : Int))
  | 4638, Face.tppm => some (4595, (0 : Int))
  | 4639, Face.tmmp => some (1239, (0 : Int))
  | 4639, Face.tppp => some (4640, (0 : Int))
  | 4641, Face.tmmp => some (4642, (0 : Int))
  | 4641, Face.tmpm => some (4654, (0 : Int))
  | 4641, Face.zm => some (4667, (0 : Int))
  | 4642, Face.tmmm => some (4643, (0 : Int))
  | 4642, Face.zm => some (1563, (0 : Int))
  | 4643, Face.tmpm => some (4644, (0 : Int))
  | 4643, Face.tppm => some (4650, (0 : Int))
  | 4643, Face.yp => some (2442, (0 : Int))
  | 4643, Face.zm => some (4653, (0 : Int))
  | 4644, Face.tmmp => some (4645, (0 : Int))
  | 4645, Face.yp => some (4646, (0 : Int))
  | 4645, Face.zp => some (4649, (0 : Int))
  | 4646, Face.zp => some (4647, (0 : Int))
  | 4647, Face.xp => some (4648, (0 : Int))
  | 4649, Face.yp => some (4647, (0 : Int))
  | 4650, Face.tmpm => some (4651, (0 : Int))
  | 4651, Face.zp => some (4652, (0 : Int))
  | 4653, Face.tmpm => some (1308, (0 : Int))
  | 4653, Face.yp => some (2445, (0 : Int))
  | 4654, Face.tmmp => some (4655, (0 : Int))
  | 4654, Face.tppp => some (4664, (0 : Int))
  | 4654, Face.zp => some (1340, (0 : Int))
  | 4655, Face.tppm => some (4656, (0 : Int))
  | 4655, Face.yp => some (4659, (0 : Int))
  | 4655, Face.zm => some (1355, (0 : Int))
  | 4656, Face.tppp => some (4657, (0 : Int))
  | 4657, Face.zp => some (4658, (0 : Int))
  | 4659, Face.tppp => some (4660, (0 : Int))
  | 4659, Face.zm => some (1357, (0 : Int))
  | 4660, Face.zm => some (4661, (0 : Int))
  | 4661, Face.tmmp => some (4662, (0 : Int))
  | 4662, Face.xp => some (4663, (0 : Int))
  | 4664, Face.zp => some (4665, (0 : Int))
  | 4665, Face.tmmp => some (4666, (0 : Int))
  | 4667, Face.tmmm => some (4668, (0 : Int))
  | 4667, Face.tmmp => some (4671, (0 : Int))
  | 4668, Face.tmpm => some (4669, (0 : Int))
  | 4669, Face.tmmp => some (1317, (0 : Int))
  | 4669, Face.yp => some (4670, (0 : Int))
  | 4671, Face.tmpm => some (4672, (0 : Int))
  | 4671, Face.tppm => some (4675, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard072
