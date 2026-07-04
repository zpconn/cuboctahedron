import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard083

open Cuboctahedron

def shardIndex : Nat := 83
def stateStart : Nat := 5312
def stateStop : Nat := 5347
def emittedEdgeCount : Nat := 34

def next : Nat -> Face -> Option (Nat × Int)
  | 5312, Face.tmpm => some (5313, (0 : Int))
  | 5312, Face.yp => some (5314, (0 : Int))
  | 5315, Face.tppp => some (5316, (0 : Int))
  | 5317, Face.tmmp => some (5318, (0 : Int))
  | 5317, Face.tmpp => some (5323, (0 : Int))
  | 5317, Face.tpmp => some (5332, (0 : Int))
  | 5317, Face.tppp => some (5341, (0 : Int))
  | 5318, Face.tpmp => some (5319, (0 : Int))
  | 5319, Face.tppp => some (5320, (0 : Int))
  | 5319, Face.yp => some (5321, (0 : Int))
  | 5321, Face.tmmm => some (5322, (0 : Int))
  | 5323, Face.tmmm => some (5324, (0 : Int))
  | 5323, Face.tpmp => some (5326, (0 : Int))
  | 5324, Face.tmmp => some (5325, (0 : Int))
  | 5326, Face.tmmp => some (5327, (0 : Int))
  | 5326, Face.yp => some (5330, (0 : Int))
  | 5327, Face.tmmm => some (5328, (0 : Int))
  | 5328, Face.yp => some (5329, (0 : Int))
  | 5330, Face.tmmm => some (5331, (0 : Int))
  | 5332, Face.tmmm => some (5333, (0 : Int))
  | 5332, Face.tmpp => some (5340, (0 : Int))
  | 5333, Face.tmmp => some (5334, (0 : Int))
  | 5333, Face.yp => some (5336, (0 : Int))
  | 5334, Face.tmpp => some (5335, (0 : Int))
  | 5336, Face.tmpp => some (5337, (0 : Int))
  | 5337, Face.tmmp => some (5338, (0 : Int))
  | 5338, Face.xp => some (5339, (0 : Int))
  | 5341, Face.tmpp => some (5342, (0 : Int))
  | 5341, Face.tpmp => some (5344, (0 : Int))
  | 5342, Face.tmmp => some (5343, (0 : Int))
  | 5344, Face.tmmp => some (5345, (0 : Int))
  | 5344, Face.yp => some (4028, (0 : Int))
  | 5345, Face.tmpp => some (5346, (0 : Int))
  | 5346, Face.yp => some (4030, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard083
