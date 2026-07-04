import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard082

open Cuboctahedron

def shardIndex : Nat := 82
def stateStart : Nat := 5248
def stateStop : Nat := 5312
def emittedEdgeCount : Nat := 62

def next : Nat -> Face -> Option (Nat × Int)
  | 5250, Face.tppp => some (5251, (0 : Int))
  | 5250, Face.yp => some (3706, (0 : Int))
  | 5252, Face.tmmm => some (5253, (0 : Int))
  | 5252, Face.tpmp => some (5255, (0 : Int))
  | 5253, Face.tmmp => some (5254, (0 : Int))
  | 5255, Face.yp => some (5256, (0 : Int))
  | 5256, Face.tmmm => some (5257, (0 : Int))
  | 5258, Face.tmpp => some (5259, (0 : Int))
  | 5260, Face.tmpp => some (5261, (0 : Int))
  | 5260, Face.tpmp => some (5263, (0 : Int))
  | 5261, Face.tmmp => some (5262, (0 : Int))
  | 5263, Face.tmmp => some (5264, (0 : Int))
  | 5265, Face.tmmp => some (5266, (0 : Int))
  | 5265, Face.tmpp => some (5271, (0 : Int))
  | 5266, Face.tmpm => some (5267, (0 : Int))
  | 5266, Face.tmpp => some (5268, (0 : Int))
  | 5268, Face.tmpm => some (5269, (0 : Int))
  | 5268, Face.yp => some (5270, (0 : Int))
  | 5271, Face.tpmp => some (5272, (0 : Int))
  | 5271, Face.tppm => some (5274, (0 : Int))
  | 5272, Face.tmpm => some (5273, (0 : Int))
  | 5275, Face.tmmm => some (5276, (0 : Int))
  | 5275, Face.tppm => some (5304, (0 : Int))
  | 5276, Face.tmpm => some (5277, (0 : Int))
  | 5276, Face.tppm => some (5294, (0 : Int))
  | 5277, Face.tmmp => some (5278, (0 : Int))
  | 5277, Face.tpmm => some (5281, (0 : Int))
  | 5277, Face.tpmp => some (5284, (0 : Int))
  | 5278, Face.tpmp => some (5279, (0 : Int))
  | 5278, Face.tppm => some (5280, (0 : Int))
  | 5279, Face.yp => some (4004, (0 : Int))
  | 5281, Face.tpmp => some (5282, (0 : Int))
  | 5282, Face.yp => some (5283, (0 : Int))
  | 5284, Face.tmpp => some (5285, (0 : Int))
  | 5284, Face.tppm => some (5287, (0 : Int))
  | 5285, Face.yp => some (5286, (0 : Int))
  | 5287, Face.tmmp => some (5288, (0 : Int))
  | 5287, Face.yp => some (5292, (0 : Int))
  | 5288, Face.tmpp => some (5289, (0 : Int))
  | 5289, Face.yp => some (5290, (0 : Int))
  | 5290, Face.xp => some (5291, (0 : Int))
  | 5292, Face.tmpp => some (5293, (0 : Int))
  | 5293, Face.tmmp => some (5290, (0 : Int))
  | 5294, Face.tmmp => some (5295, (0 : Int))
  | 5294, Face.tmpp => some (5300, (0 : Int))
  | 5295, Face.tmpm => some (5296, (0 : Int))
  | 5295, Face.tmpp => some (5297, (0 : Int))
  | 5297, Face.tmpm => some (5298, (0 : Int))
  | 5297, Face.yp => some (5299, (0 : Int))
  | 5300, Face.tpmp => some (5301, (0 : Int))
  | 5300, Face.tppm => some (5303, (0 : Int))
  | 5301, Face.tmpm => some (5302, (0 : Int))
  | 5304, Face.tmmp => some (5305, (0 : Int))
  | 5304, Face.tmpm => some (5317, (0 : Int))
  | 5305, Face.tmmm => some (5306, (0 : Int))
  | 5305, Face.tmpp => some (5311, (0 : Int))
  | 5306, Face.tmpm => some (5307, (0 : Int))
  | 5306, Face.tmpp => some (5308, (0 : Int))
  | 5308, Face.tmpm => some (5309, (0 : Int))
  | 5308, Face.yp => some (5310, (0 : Int))
  | 5311, Face.tmmm => some (5312, (0 : Int))
  | 5311, Face.tmpm => some (5315, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard082
