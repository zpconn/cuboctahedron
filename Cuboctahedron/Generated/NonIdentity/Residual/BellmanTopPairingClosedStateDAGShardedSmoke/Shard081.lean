import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard081

open Cuboctahedron

def shardIndex : Nat := 81
def stateStart : Nat := 5184
def stateStop : Nat := 5248
def emittedEdgeCount : Nat := 68

def next : Nat -> Face -> Option (Nat × Int)
  | 5184, Face.tpmp => some (5185, (0 : Int))
  | 5185, Face.tmpm => some (5186, (0 : Int))
  | 5185, Face.yp => some (5187, (0 : Int))
  | 5188, Face.tmpm => some (5189, (0 : Int))
  | 5189, Face.tppp => some (5190, (0 : Int))
  | 5189, Face.yp => some (5191, (0 : Int))
  | 5192, Face.tmmm => some (5193, (0 : Int))
  | 5192, Face.tmpm => some (5196, (0 : Int))
  | 5193, Face.tmpm => some (5194, (0 : Int))
  | 5193, Face.yp => some (5195, (0 : Int))
  | 5197, Face.tmmp => some (5198, (0 : Int))
  | 5197, Face.tpmp => some (5202, (0 : Int))
  | 5197, Face.tppp => some (5210, (0 : Int))
  | 5198, Face.tmpm => some (5199, (0 : Int))
  | 5199, Face.tppp => some (5200, (0 : Int))
  | 5199, Face.yp => some (5201, (0 : Int))
  | 5202, Face.tmmm => some (5203, (0 : Int))
  | 5202, Face.tmpm => some (5207, (0 : Int))
  | 5203, Face.tmmp => some (5204, (0 : Int))
  | 5203, Face.tmpm => some (5205, (0 : Int))
  | 5203, Face.yp => some (5206, (0 : Int))
  | 5207, Face.tmmp => some (5208, (0 : Int))
  | 5207, Face.tppp => some (5209, (0 : Int))
  | 5210, Face.tpmp => some (5211, (0 : Int))
  | 5211, Face.tmmp => some (5212, (0 : Int))
  | 5211, Face.tmpm => some (5213, (0 : Int))
  | 5211, Face.yp => some (5214, (0 : Int))
  | 5215, Face.tmmm => some (5216, (0 : Int))
  | 5215, Face.tpmm => some (5224, (0 : Int))
  | 5216, Face.tmpm => some (5217, (0 : Int))
  | 5216, Face.tmpp => some (5219, (0 : Int))
  | 5216, Face.tppm => some (5221, (0 : Int))
  | 5217, Face.yp => some (5218, (0 : Int))
  | 5219, Face.yp => some (5220, (0 : Int))
  | 5221, Face.yp => some (5222, (0 : Int))
  | 5222, Face.tmpp => some (5223, (0 : Int))
  | 5224, Face.tmmm => some (5225, (0 : Int))
  | 5224, Face.tmpm => some (5228, (0 : Int))
  | 5225, Face.tmpm => some (5226, (0 : Int))
  | 5225, Face.yp => some (5227, (0 : Int))
  | 5228, Face.tmmp => some (5229, (0 : Int))
  | 5230, Face.tmpm => some (1785, (0 : Int))
  | 5230, Face.tpmm => some (5231, (0 : Int))
  | 5230, Face.yp => some (4582, (0 : Int))
  | 5231, Face.tppm => some (5232, (0 : Int))
  | 5231, Face.tppp => some (5275, (0 : Int))
  | 5232, Face.tmmm => some (5233, (0 : Int))
  | 5233, Face.tmmp => some (5234, (0 : Int))
  | 5233, Face.tmpm => some (5245, (0 : Int))
  | 5233, Face.tppp => some (5265, (0 : Int))
  | 5234, Face.tmpp => some (5235, (0 : Int))
  | 5234, Face.tppp => some (5241, (0 : Int))
  | 5235, Face.tmmm => some (5236, (0 : Int))
  | 5235, Face.tmpm => some (5239, (0 : Int))
  | 5236, Face.tmpm => some (5237, (0 : Int))
  | 5236, Face.yp => some (5238, (0 : Int))
  | 5239, Face.tppp => some (5240, (0 : Int))
  | 5241, Face.tmpm => some (5242, (0 : Int))
  | 5241, Face.tmpp => some (5243, (0 : Int))
  | 5243, Face.tmpm => some (5244, (0 : Int))
  | 5245, Face.tmmp => some (5246, (0 : Int))
  | 5245, Face.tmpp => some (5252, (0 : Int))
  | 5245, Face.tpmp => some (5258, (0 : Int))
  | 5245, Face.tppp => some (5260, (0 : Int))
  | 5246, Face.tmpm => some (5247, (0 : Int))
  | 5246, Face.tmpp => some (5250, (0 : Int))
  | 5247, Face.tppp => some (5248, (0 : Int))
  | 5247, Face.yp => some (5249, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard081
