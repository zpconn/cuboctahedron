import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard069

open Cuboctahedron

def shardIndex : Nat := 69
def stateStart : Nat := 4416
def stateStop : Nat := 4480
def emittedEdgeCount : Nat := 74

def next : Nat -> Face -> Option (Nat × Int)
  | 4416, Face.tmmp => some (4417, (0 : Int))
  | 4418, Face.tmpm => some (4419, (0 : Int))
  | 4418, Face.tpmm => some (4428, (0 : Int))
  | 4418, Face.tppm => some (3827, (0 : Int))
  | 4419, Face.tpmm => some (4420, (0 : Int))
  | 4419, Face.tpmp => some (4425, (0 : Int))
  | 4420, Face.tmpm => some (4421, (0 : Int))
  | 4420, Face.tmpp => some (4424, (0 : Int))
  | 4421, Face.tmmp => some (4422, (0 : Int))
  | 4422, Face.tmpp => some (4423, (0 : Int))
  | 4425, Face.tppm => some (4426, (0 : Int))
  | 4426, Face.tmmp => some (4427, (0 : Int))
  | 4428, Face.tmmp => some (4429, (0 : Int))
  | 4428, Face.tmpp => some (4437, (0 : Int))
  | 4429, Face.tmpm => some (4430, (0 : Int))
  | 4429, Face.tmpp => some (4432, (0 : Int))
  | 4429, Face.tppm => some (4434, (0 : Int))
  | 4430, Face.tmmp => some (4431, (0 : Int))
  | 4432, Face.tmpm => some (4433, (0 : Int))
  | 4434, Face.tmpm => some (4435, (0 : Int))
  | 4435, Face.tmpp => some (4436, (0 : Int))
  | 4437, Face.tmpm => some (4438, (0 : Int))
  | 4437, Face.tppm => some (4439, (0 : Int))
  | 4439, Face.tmmp => some (4440, (0 : Int))
  | 4441, Face.tmmm => some (4442, (0 : Int))
  | 4441, Face.zm => some (4468, (0 : Int))
  | 4442, Face.tpmp => some (4443, (0 : Int))
  | 4442, Face.tppm => some (4450, (0 : Int))
  | 4442, Face.zp => some (4464, (0 : Int))
  | 4443, Face.tmpp => some (4444, (0 : Int))
  | 4443, Face.zp => some (4448, (0 : Int))
  | 4444, Face.tppm => some (4445, (0 : Int))
  | 4444, Face.zm => some (4447, (0 : Int))
  | 4445, Face.tmmp => some (4446, (0 : Int))
  | 4446, Face.zm => some (3928, (0 : Int))
  | 4448, Face.tmpp => some (4449, (0 : Int))
  | 4448, Face.tppm => some (3876, (0 : Int))
  | 4450, Face.tmmp => some (4451, (0 : Int))
  | 4450, Face.tmpp => some (4454, (0 : Int))
  | 4450, Face.tpmp => some (4459, (0 : Int))
  | 4450, Face.zp => some (3921, (0 : Int))
  | 4451, Face.tmpp => some (4452, (0 : Int))
  | 4451, Face.tpmp => some (4453, (0 : Int))
  | 4451, Face.zp => some (3902, (0 : Int))
  | 4452, Face.zm => some (3672, (0 : Int))
  | 4454, Face.tpmp => some (4455, (0 : Int))
  | 4454, Face.tppm => some (4458, (0 : Int))
  | 4454, Face.zm => some (3696, (0 : Int))
  | 4455, Face.zm => some (4456, (0 : Int))
  | 4456, Face.tmpp => some (4457, (0 : Int))
  | 4459, Face.tmpp => some (4460, (0 : Int))
  | 4459, Face.tppm => some (4462, (0 : Int))
  | 4459, Face.zp => some (4463, (0 : Int))
  | 4460, Face.zm => some (4461, (0 : Int))
  | 4464, Face.tpmm => some (4465, (0 : Int))
  | 4465, Face.tmpm => some (4447, (0 : Int))
  | 4465, Face.tmpp => some (4466, (0 : Int))
  | 4465, Face.tppm => some (3627, (0 : Int))
  | 4466, Face.tmpm => some (4467, (0 : Int))
  | 4468, Face.tmmp => some (3920, (0 : Int))
  | 4468, Face.tmpm => some (4469, (0 : Int))
  | 4469, Face.tmmm => some (4470, (0 : Int))
  | 4469, Face.tmmp => some (4473, (0 : Int))
  | 4469, Face.tmpp => some (4475, (0 : Int))
  | 4470, Face.tmpp => some (4471, (0 : Int))
  | 4471, Face.tmmp => some (4472, (0 : Int))
  | 4473, Face.tppm => some (4474, (0 : Int))
  | 4475, Face.tmmm => some (4476, (0 : Int))
  | 4476, Face.tmmp => some (4477, (0 : Int))
  | 4478, Face.tmmm => some (4479, (0 : Int))
  | 4478, Face.tpmm => some (4504, (0 : Int))
  | 4478, Face.tpmp => some (4529, (0 : Int))
  | 4479, Face.tpmp => some (4480, (0 : Int))
  | 4479, Face.tppm => some (4485, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard069
