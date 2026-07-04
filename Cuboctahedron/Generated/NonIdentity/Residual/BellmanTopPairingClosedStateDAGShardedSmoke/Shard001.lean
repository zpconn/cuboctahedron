import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard001

open Cuboctahedron

def shardIndex : Nat := 1
def stateStart : Nat := 64
def stateStop : Nat := 128
def emittedEdgeCount : Nat := 64

def next : Nat -> Face -> Option (Nat × Int)
  | 64, Face.zm => some (65, (0 : Int))
  | 65, Face.zp => some (66, (0 : Int))
  | 66, Face.xp => some (67, (0 : Int))
  | 68, Face.yp => some (65, (0 : Int))
  | 68, Face.zp => some (69, (0 : Int))
  | 69, Face.yp => some (66, (0 : Int))
  | 71, Face.tmmm => some (72, (0 : Int))
  | 71, Face.zm => some (79, (0 : Int))
  | 72, Face.yp => some (73, (0 : Int))
  | 72, Face.zm => some (77, (0 : Int))
  | 73, Face.zm => some (74, (0 : Int))
  | 74, Face.zp => some (75, (0 : Int))
  | 75, Face.xp => some (76, (0 : Int))
  | 77, Face.yp => some (74, (0 : Int))
  | 77, Face.zp => some (78, (0 : Int))
  | 78, Face.yp => some (75, (0 : Int))
  | 79, Face.tppp => some (80, (0 : Int))
  | 80, Face.zp => some (81, (0 : Int))
  | 82, Face.tmmm => some (83, (0 : Int))
  | 82, Face.zm => some (84, (0 : Int))
  | 85, Face.tmpp => some (86, (0 : Int))
  | 85, Face.yp => some (84, (0 : Int))
  | 85, Face.zp => some (88, (0 : Int))
  | 86, Face.zm => some (87, (0 : Int))
  | 88, Face.yp => some (89, (0 : Int))
  | 89, Face.tmmm => some (90, (0 : Int))
  | 91, Face.tmpp => some (92, (0 : Int))
  | 91, Face.tppp => some (100, (0 : Int))
  | 91, Face.zp => some (109, (0 : Int))
  | 92, Face.tmmm => some (93, (0 : Int))
  | 92, Face.zm => some (97, (0 : Int))
  | 93, Face.tppp => some (94, (0 : Int))
  | 93, Face.zm => some (96, (0 : Int))
  | 94, Face.zm => some (95, (0 : Int))
  | 97, Face.tppp => some (98, (0 : Int))
  | 98, Face.tmmm => some (99, (0 : Int))
  | 100, Face.tmmm => some (101, (0 : Int))
  | 100, Face.tmpp => some (102, (0 : Int))
  | 100, Face.yp => some (104, (0 : Int))
  | 100, Face.zm => some (108, (0 : Int))
  | 102, Face.zm => some (103, (0 : Int))
  | 104, Face.zm => some (105, (0 : Int))
  | 105, Face.tmmm => some (106, (0 : Int))
  | 105, Face.tmpp => some (107, (0 : Int))
  | 108, Face.yp => some (105, (0 : Int))
  | 109, Face.tmpp => some (110, (0 : Int))
  | 110, Face.yp => some (111, (0 : Int))
  | 111, Face.tmmm => some (112, (0 : Int))
  | 113, Face.tppp => some (114, (0 : Int))
  | 113, Face.zp => some (133, (0 : Int))
  | 114, Face.tmmm => some (115, (0 : Int))
  | 114, Face.tpmm => some (120, (0 : Int))
  | 114, Face.zm => some (128, (0 : Int))
  | 115, Face.tmpp => some (116, (0 : Int))
  | 115, Face.yp => some (117, (0 : Int))
  | 115, Face.zp => some (118, (0 : Int))
  | 118, Face.yp => some (119, (0 : Int))
  | 120, Face.tmmm => some (121, (0 : Int))
  | 120, Face.tmpp => some (122, (0 : Int))
  | 120, Face.zm => some (127, (0 : Int))
  | 122, Face.zm => some (123, (0 : Int))
  | 123, Face.tmmm => some (124, (0 : Int))
  | 124, Face.yp => some (125, (0 : Int))
  | 125, Face.xp => some (126, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard001
