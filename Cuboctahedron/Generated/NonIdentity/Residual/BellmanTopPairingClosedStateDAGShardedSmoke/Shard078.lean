import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard078

open Cuboctahedron

def shardIndex : Nat := 78
def stateStart : Nat := 4992
def stateStop : Nat := 5056
def emittedEdgeCount : Nat := 59

def next : Nat -> Face -> Option (Nat × Int)
  | 4994, Face.tmmm => some (4995, (0 : Int))
  | 4996, Face.tmmm => some (4997, (0 : Int))
  | 4996, Face.tmpm => some (5001, (0 : Int))
  | 4997, Face.tmmp => some (4998, (0 : Int))
  | 4997, Face.tmpm => some (4999, (0 : Int))
  | 4997, Face.yp => some (5000, (0 : Int))
  | 5001, Face.tmmp => some (5002, (0 : Int))
  | 5001, Face.tppp => some (5003, (0 : Int))
  | 5004, Face.tpmp => some (5005, (0 : Int))
  | 5005, Face.tmmp => some (5006, (0 : Int))
  | 5005, Face.tmpm => some (5007, (0 : Int))
  | 5008, Face.tmmm => some (5009, (0 : Int))
  | 5008, Face.tmpp => some (5020, (0 : Int))
  | 5009, Face.tmpm => some (5010, (0 : Int))
  | 5009, Face.tmpp => some (5012, (0 : Int))
  | 5009, Face.tppm => some (5015, (0 : Int))
  | 5010, Face.yp => some (5011, (0 : Int))
  | 5012, Face.tmpm => some (5013, (0 : Int))
  | 5012, Face.yp => some (5014, (0 : Int))
  | 5015, Face.tmpm => some (5016, (0 : Int))
  | 5015, Face.yp => some (5018, (0 : Int))
  | 5016, Face.tmpp => some (5017, (0 : Int))
  | 5018, Face.tmpp => some (5019, (0 : Int))
  | 5020, Face.tmmm => some (5021, (0 : Int))
  | 5020, Face.tmpm => some (5024, (0 : Int))
  | 5020, Face.tppm => some (5027, (0 : Int))
  | 5021, Face.tmpm => some (5022, (0 : Int))
  | 5021, Face.yp => some (5023, (0 : Int))
  | 5024, Face.tmmp => some (5025, (0 : Int))
  | 5025, Face.tmmm => some (5026, (0 : Int))
  | 5027, Face.tmpm => some (5028, (0 : Int))
  | 5028, Face.tmmm => some (5029, (0 : Int))
  | 5030, Face.tmmp => some (5031, (0 : Int))
  | 5030, Face.tpmm => some (5035, (0 : Int))
  | 5030, Face.tpmp => some (5040, (0 : Int))
  | 5031, Face.tpmp => some (5032, (0 : Int))
  | 5032, Face.tmpm => some (5033, (0 : Int))
  | 5032, Face.yp => some (5034, (0 : Int))
  | 5035, Face.tpmp => some (5036, (0 : Int))
  | 5036, Face.tmmp => some (5037, (0 : Int))
  | 5036, Face.tmpm => some (5038, (0 : Int))
  | 5036, Face.yp => some (5039, (0 : Int))
  | 5040, Face.tmpm => some (5041, (0 : Int))
  | 5040, Face.tmpp => some (5043, (0 : Int))
  | 5040, Face.tppm => some (5046, (0 : Int))
  | 5041, Face.tmmp => some (5042, (0 : Int))
  | 5043, Face.tmpm => some (5044, (0 : Int))
  | 5043, Face.yp => some (5045, (0 : Int))
  | 5046, Face.tmpm => some (5047, (0 : Int))
  | 5046, Face.yp => some (5048, (0 : Int))
  | 5048, Face.tmpp => some (5049, (0 : Int))
  | 5050, Face.tmmp => some (5051, (0 : Int))
  | 5050, Face.tpmp => some (881, (0 : Int))
  | 5050, Face.tppp => some (5056, (0 : Int))
  | 5051, Face.tppp => some (5052, (0 : Int))
  | 5052, Face.tmmm => some (5053, (0 : Int))
  | 5052, Face.tmpm => some (798, (0 : Int))
  | 5053, Face.tmpm => some (5054, (0 : Int))
  | 5053, Face.yp => some (5055, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard078
