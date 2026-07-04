import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard079

open Cuboctahedron

def shardIndex : Nat := 79
def stateStart : Nat := 5056
def stateStop : Nat := 5120
def emittedEdgeCount : Nat := 70

def next : Nat -> Face -> Option (Nat × Int)
  | 5056, Face.tmmm => some (5057, (0 : Int))
  | 5056, Face.tmmp => some (5058, (0 : Int))
  | 5056, Face.tpmp => some (751, (0 : Int))
  | 5057, Face.tpmp => some (618, (0 : Int))
  | 5058, Face.tmpm => some (5059, (0 : Int))
  | 5059, Face.tppp => some (5060, (0 : Int))
  | 5059, Face.yp => some (5061, (0 : Int))
  | 5062, Face.tmpm => some (5063, (0 : Int))
  | 5062, Face.tppm => some (5067, (0 : Int))
  | 5063, Face.tmmm => some (5064, (0 : Int))
  | 5063, Face.tmmp => some (5065, (0 : Int))
  | 5063, Face.tpmm => some (5066, (0 : Int))
  | 5067, Face.tmmm => some (5068, (0 : Int))
  | 5067, Face.tmpp => some (5074, (0 : Int))
  | 5068, Face.tmpm => some (5069, (0 : Int))
  | 5068, Face.tmpp => some (5072, (0 : Int))
  | 5069, Face.tppp => some (5070, (0 : Int))
  | 5069, Face.yp => some (5071, (0 : Int))
  | 5072, Face.tppp => some (5073, (0 : Int))
  | 5072, Face.yp => some (2347, (0 : Int))
  | 5074, Face.tmmm => some (5075, (0 : Int))
  | 5074, Face.tmpm => some (5079, (0 : Int))
  | 5075, Face.tmpm => some (5076, (0 : Int))
  | 5075, Face.tppp => some (5077, (0 : Int))
  | 5075, Face.yp => some (5078, (0 : Int))
  | 5078, Face.tmmm => some (2324, (0 : Int))
  | 5080, Face.tmmm => some (5081, (0 : Int))
  | 5080, Face.tpmm => some (5118, (0 : Int))
  | 5080, Face.tpmp => some (5142, (0 : Int))
  | 5080, Face.tppm => some (5182, (0 : Int))
  | 5081, Face.tpmm => some (5082, (0 : Int))
  | 5081, Face.tpmp => some (5090, (0 : Int))
  | 5081, Face.tppm => some (5098, (0 : Int))
  | 5082, Face.tmmp => some (5083, (0 : Int))
  | 5083, Face.tmpm => some (5084, (0 : Int))
  | 5083, Face.tppm => some (5087, (0 : Int))
  | 5084, Face.tmmp => some (5085, (0 : Int))
  | 5084, Face.yp => some (5086, (0 : Int))
  | 5087, Face.tmpm => some (5088, (0 : Int))
  | 5087, Face.yp => some (5089, (0 : Int))
  | 5090, Face.tpmm => some (5091, (0 : Int))
  | 5091, Face.tmpm => some (5092, (0 : Int))
  | 5091, Face.tppm => some (5094, (0 : Int))
  | 5092, Face.tmmp => some (5093, (0 : Int))
  | 5094, Face.tmmp => some (5095, (0 : Int))
  | 5094, Face.tmpm => some (5096, (0 : Int))
  | 5094, Face.yp => some (5097, (0 : Int))
  | 5098, Face.tmmp => some (5099, (0 : Int))
  | 5098, Face.tpmm => some (5103, (0 : Int))
  | 5098, Face.tpmp => some (5108, (0 : Int))
  | 5099, Face.tpmp => some (5100, (0 : Int))
  | 5100, Face.tmpm => some (5101, (0 : Int))
  | 5100, Face.yp => some (5102, (0 : Int))
  | 5103, Face.tpmp => some (5104, (0 : Int))
  | 5104, Face.tmmp => some (5105, (0 : Int))
  | 5104, Face.tmpm => some (5106, (0 : Int))
  | 5104, Face.yp => some (5107, (0 : Int))
  | 5108, Face.tmpm => some (5109, (0 : Int))
  | 5108, Face.tmpp => some (5111, (0 : Int))
  | 5108, Face.tppm => some (5114, (0 : Int))
  | 5109, Face.tmmp => some (5110, (0 : Int))
  | 5111, Face.tmpm => some (5112, (0 : Int))
  | 5111, Face.yp => some (5113, (0 : Int))
  | 5114, Face.tmpm => some (5115, (0 : Int))
  | 5114, Face.yp => some (5116, (0 : Int))
  | 5116, Face.tmpp => some (5117, (0 : Int))
  | 5118, Face.tmmp => some (5119, (0 : Int))
  | 5118, Face.tmpm => some (5123, (0 : Int))
  | 5118, Face.tppp => some (5135, (0 : Int))
  | 5119, Face.tppp => some (5120, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard079
