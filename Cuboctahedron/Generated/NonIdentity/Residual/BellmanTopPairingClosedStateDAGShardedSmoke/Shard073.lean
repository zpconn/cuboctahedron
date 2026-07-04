import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard073

open Cuboctahedron

def shardIndex : Nat := 73
def stateStart : Nat := 4672
def stateStop : Nat := 4736
def emittedEdgeCount : Nat := 71

def next : Nat -> Face -> Option (Nat × Int)
  | 4672, Face.tmmp => some (4673, (0 : Int))
  | 4672, Face.tppp => some (4674, (0 : Int))
  | 4675, Face.tmpm => some (4676, (0 : Int))
  | 4675, Face.yp => some (4677, (0 : Int))
  | 4677, Face.tmmm => some (4678, (0 : Int))
  | 4679, Face.tmmm => some (4680, (0 : Int))
  | 4679, Face.zm => some (4698, (0 : Int))
  | 4680, Face.tmmp => some (4681, (0 : Int))
  | 4680, Face.tpmp => some (4696, (0 : Int))
  | 4680, Face.zp => some (4697, (0 : Int))
  | 4681, Face.tpmp => some (4682, (0 : Int))
  | 4681, Face.zp => some (4694, (0 : Int))
  | 4682, Face.tmpm => some (4683, (0 : Int))
  | 4682, Face.tppm => some (4684, (0 : Int))
  | 4682, Face.yp => some (4689, (0 : Int))
  | 4682, Face.zp => some (4692, (0 : Int))
  | 4684, Face.tmpm => some (4685, (0 : Int))
  | 4685, Face.yp => some (4686, (0 : Int))
  | 4685, Face.zp => some (4688, (0 : Int))
  | 4686, Face.zp => some (4687, (0 : Int))
  | 4688, Face.yp => some (4687, (0 : Int))
  | 4689, Face.tmmp => some (4690, (0 : Int))
  | 4690, Face.zm => some (4691, (0 : Int))
  | 4692, Face.tmpm => some (1390, (0 : Int))
  | 4692, Face.yp => some (4693, (0 : Int))
  | 4694, Face.tmpm => some (1386, (0 : Int))
  | 4694, Face.tppm => some (4695, (0 : Int))
  | 4696, Face.zp => some (1419, (0 : Int))
  | 4698, Face.tmmp => some (4699, (0 : Int))
  | 4698, Face.tpmp => some (1459, (0 : Int))
  | 4699, Face.tmmm => some (4694, (0 : Int))
  | 4700, Face.tmmm => some (4701, (0 : Int))
  | 4700, Face.tppm => some (4727, (0 : Int))
  | 4701, Face.tmpm => some (4702, (0 : Int))
  | 4701, Face.tppm => some (4710, (0 : Int))
  | 4701, Face.tppp => some (4726, (0 : Int))
  | 4702, Face.tpmp => some (4703, (0 : Int))
  | 4702, Face.tppp => some (4706, (0 : Int))
  | 4703, Face.tppm => some (4704, (0 : Int))
  | 4704, Face.tmmp => some (4705, (0 : Int))
  | 4706, Face.tpmp => some (4707, (0 : Int))
  | 4706, Face.tppm => some (4708, (0 : Int))
  | 4708, Face.tmmp => some (4709, (0 : Int))
  | 4710, Face.tmmm => some (4711, (0 : Int))
  | 4710, Face.tmmp => some (4716, (0 : Int))
  | 4710, Face.tpmp => some (4720, (0 : Int))
  | 4711, Face.tpmp => some (4712, (0 : Int))
  | 4712, Face.tmmp => some (4713, (0 : Int))
  | 4712, Face.tmpm => some (4714, (0 : Int))
  | 4712, Face.yp => some (4715, (0 : Int))
  | 4716, Face.tmpm => some (4717, (0 : Int))
  | 4717, Face.tppp => some (4718, (0 : Int))
  | 4717, Face.yp => some (4719, (0 : Int))
  | 4720, Face.tmmm => some (4721, (0 : Int))
  | 4720, Face.tmpm => some (4724, (0 : Int))
  | 4721, Face.tmmp => some (4722, (0 : Int))
  | 4721, Face.yp => some (4723, (0 : Int))
  | 4724, Face.tmmp => some (4725, (0 : Int))
  | 4727, Face.tmmp => some (4728, (0 : Int))
  | 4727, Face.tpmp => some (4733, (0 : Int))
  | 4728, Face.tmmm => some (4729, (0 : Int))
  | 4729, Face.tmpm => some (4730, (0 : Int))
  | 4730, Face.tppp => some (4731, (0 : Int))
  | 4730, Face.yp => some (4732, (0 : Int))
  | 4733, Face.tmmm => some (1433, (0 : Int))
  | 4733, Face.tmmp => some (4734, (0 : Int))
  | 4734, Face.tmmm => some (4735, (0 : Int))
  | 4734, Face.tmpm => some (4738, (0 : Int))
  | 4735, Face.tmpm => some (4736, (0 : Int))
  | 4735, Face.tppp => some (4737, (0 : Int))
  | 4735, Face.yp => some (4168, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard073
