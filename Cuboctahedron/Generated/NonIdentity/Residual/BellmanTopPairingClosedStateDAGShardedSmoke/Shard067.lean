import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard067

open Cuboctahedron

def shardIndex : Nat := 67
def stateStart : Nat := 4288
def stateStop : Nat := 4352
def emittedEdgeCount : Nat := 72

def next : Nat -> Face -> Option (Nat × Int)
  | 4288, Face.tmmm => some (4289, (0 : Int))
  | 4288, Face.tmpm => some (4255, (0 : Int))
  | 4288, Face.tppm => some (4290, (0 : Int))
  | 4290, Face.tmpm => some (4291, (0 : Int))
  | 4291, Face.tmmm => some (4273, (0 : Int))
  | 4292, Face.tpmm => some (4293, (0 : Int))
  | 4292, Face.tpmp => some (4324, (0 : Int))
  | 4292, Face.tppm => some (4379, (0 : Int))
  | 4292, Face.tppp => some (2776, (0 : Int))
  | 4293, Face.tmpm => some (4294, (0 : Int))
  | 4293, Face.tppm => some (4315, (0 : Int))
  | 4293, Face.tppp => some (2357, (0 : Int))
  | 4294, Face.tmpp => some (4295, (0 : Int))
  | 4294, Face.tpmp => some (4302, (0 : Int))
  | 4294, Face.tppp => some (4310, (0 : Int))
  | 4295, Face.tpmp => some (4296, (0 : Int))
  | 4295, Face.tppm => some (4299, (0 : Int))
  | 4296, Face.tppp => some (4297, (0 : Int))
  | 4297, Face.tmmm => some (4298, (0 : Int))
  | 4299, Face.tppp => some (4300, (0 : Int))
  | 4300, Face.tmmm => some (4301, (0 : Int))
  | 4302, Face.tmpp => some (4303, (0 : Int))
  | 4302, Face.tppm => some (4306, (0 : Int))
  | 4303, Face.tppp => some (4304, (0 : Int))
  | 4304, Face.tmmm => some (4305, (0 : Int))
  | 4306, Face.tppp => some (4307, (0 : Int))
  | 4307, Face.tmmm => some (4308, (0 : Int))
  | 4307, Face.tmpp => some (4309, (0 : Int))
  | 4310, Face.tmmm => some (4311, (0 : Int))
  | 4310, Face.tmpm => some (4312, (0 : Int))
  | 4312, Face.tmmp => some (4313, (0 : Int))
  | 4313, Face.tmmm => some (4314, (0 : Int))
  | 4315, Face.tmpp => some (4316, (0 : Int))
  | 4315, Face.tpmp => some (4321, (0 : Int))
  | 4315, Face.tppp => some (2221, (0 : Int))
  | 4316, Face.tmmm => some (4317, (0 : Int))
  | 4316, Face.tpmp => some (4319, (0 : Int))
  | 4317, Face.tppp => some (4318, (0 : Int))
  | 4319, Face.tmpm => some (4320, (0 : Int))
  | 4320, Face.tmmm => some (4072, (0 : Int))
  | 4321, Face.tmpm => some (4322, (0 : Int))
  | 4321, Face.tmpp => some (4323, (0 : Int))
  | 4322, Face.tppp => some (707, (0 : Int))
  | 4324, Face.tmpm => some (4325, (0 : Int))
  | 4324, Face.tpmm => some (4337, (0 : Int))
  | 4324, Face.tppm => some (4352, (0 : Int))
  | 4324, Face.tppp => some (4365, (0 : Int))
  | 4325, Face.tpmm => some (4326, (0 : Int))
  | 4325, Face.tppp => some (4334, (0 : Int))
  | 4326, Face.tmpp => some (4327, (0 : Int))
  | 4326, Face.tppm => some (4330, (0 : Int))
  | 4327, Face.tppp => some (4328, (0 : Int))
  | 4328, Face.tmmm => some (4329, (0 : Int))
  | 4330, Face.tppp => some (4331, (0 : Int))
  | 4331, Face.tmmm => some (4332, (0 : Int))
  | 4331, Face.tmpp => some (4333, (0 : Int))
  | 4334, Face.tmmm => some (4335, (0 : Int))
  | 4334, Face.tppm => some (4336, (0 : Int))
  | 4337, Face.tmpp => some (4338, (0 : Int))
  | 4337, Face.tppp => some (4343, (0 : Int))
  | 4338, Face.tmpm => some (4339, (0 : Int))
  | 4338, Face.tppm => some (4342, (0 : Int))
  | 4339, Face.tppp => some (4340, (0 : Int))
  | 4340, Face.tmmm => some (4341, (0 : Int))
  | 4343, Face.tmmm => some (4344, (0 : Int))
  | 4343, Face.tmpm => some (4347, (0 : Int))
  | 4343, Face.tppm => some (4349, (0 : Int))
  | 4344, Face.tmpm => some (4345, (0 : Int))
  | 4345, Face.tmpp => some (4346, (0 : Int))
  | 4347, Face.tmmp => some (4348, (0 : Int))
  | 4349, Face.tmpm => some (4350, (0 : Int))
  | 4350, Face.tmmm => some (4351, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard067
