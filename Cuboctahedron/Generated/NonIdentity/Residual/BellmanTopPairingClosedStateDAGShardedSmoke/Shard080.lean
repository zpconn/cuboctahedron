import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard080

open Cuboctahedron

def shardIndex : Nat := 80
def stateStart : Nat := 5120
def stateStop : Nat := 5184
def emittedEdgeCount : Nat := 65

def next : Nat -> Face -> Option (Nat × Int)
  | 5120, Face.tmpm => some (5121, (0 : Int))
  | 5121, Face.tmmp => some (5122, (0 : Int))
  | 5123, Face.tmmp => some (5124, (0 : Int))
  | 5123, Face.tpmp => some (5131, (0 : Int))
  | 5123, Face.tppp => some (5132, (0 : Int))
  | 5124, Face.tmpm => some (5125, (0 : Int))
  | 5124, Face.tppm => some (5128, (0 : Int))
  | 5125, Face.tppp => some (5126, (0 : Int))
  | 5125, Face.yp => some (5127, (0 : Int))
  | 5128, Face.tppp => some (5129, (0 : Int))
  | 5128, Face.yp => some (5130, (0 : Int))
  | 5132, Face.tmpm => some (5133, (0 : Int))
  | 5133, Face.tmmp => some (5134, (0 : Int))
  | 5135, Face.tmmp => some (5136, (0 : Int))
  | 5136, Face.tmpm => some (5137, (0 : Int))
  | 5136, Face.tppm => some (5139, (0 : Int))
  | 5137, Face.tmmp => some (5138, (0 : Int))
  | 5139, Face.tmpm => some (5140, (0 : Int))
  | 5139, Face.yp => some (5141, (0 : Int))
  | 5142, Face.tmpm => some (5143, (0 : Int))
  | 5142, Face.tpmm => some (5148, (0 : Int))
  | 5142, Face.tppm => some (5156, (0 : Int))
  | 5143, Face.tmmm => some (5144, (0 : Int))
  | 5143, Face.tpmm => some (5147, (0 : Int))
  | 5144, Face.tppm => some (5145, (0 : Int))
  | 5145, Face.tmmp => some (5146, (0 : Int))
  | 5148, Face.tppp => some (5149, (0 : Int))
  | 5149, Face.tmpm => some (5150, (0 : Int))
  | 5149, Face.tppm => some (5152, (0 : Int))
  | 5150, Face.tmmp => some (5151, (0 : Int))
  | 5152, Face.tmmp => some (5153, (0 : Int))
  | 5152, Face.tmpm => some (5154, (0 : Int))
  | 5152, Face.yp => some (5155, (0 : Int))
  | 5156, Face.tmmm => some (5157, (0 : Int))
  | 5156, Face.tmmp => some (5160, (0 : Int))
  | 5156, Face.tpmm => some (5165, (0 : Int))
  | 5156, Face.tpmp => some (5174, (0 : Int))
  | 5157, Face.tmpp => some (5158, (0 : Int))
  | 5157, Face.tpmp => some (5159, (0 : Int))
  | 5159, Face.yp => some (4372, (0 : Int))
  | 5160, Face.tmmm => some (5161, (0 : Int))
  | 5160, Face.tmpm => some (5164, (0 : Int))
  | 5161, Face.tmpm => some (5162, (0 : Int))
  | 5161, Face.yp => some (5163, (0 : Int))
  | 5165, Face.tmmm => some (5166, (0 : Int))
  | 5165, Face.tmpm => some (5169, (0 : Int))
  | 5166, Face.tmmp => some (5167, (0 : Int))
  | 5166, Face.yp => some (5168, (0 : Int))
  | 5169, Face.tmmp => some (5170, (0 : Int))
  | 5170, Face.tmmm => some (5171, (0 : Int))
  | 5171, Face.yp => some (5172, (0 : Int))
  | 5172, Face.xp => some (5173, (0 : Int))
  | 5174, Face.tmmm => some (5175, (0 : Int))
  | 5175, Face.tmmp => some (5176, (0 : Int))
  | 5175, Face.yp => some (5178, (0 : Int))
  | 5176, Face.tmpp => some (5177, (0 : Int))
  | 5178, Face.tmpp => some (5179, (0 : Int))
  | 5179, Face.tmmp => some (5180, (0 : Int))
  | 5180, Face.xp => some (5181, (0 : Int))
  | 5182, Face.tmmp => some (5183, (0 : Int))
  | 5182, Face.tpmm => some (5197, (0 : Int))
  | 5182, Face.tpmp => some (5215, (0 : Int))
  | 5183, Face.tmmm => some (5184, (0 : Int))
  | 5183, Face.tpmm => some (5188, (0 : Int))
  | 5183, Face.tpmp => some (5192, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard080
