import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard000

open Cuboctahedron

def shardIndex : Nat := 0
def stateStart : Nat := 0
def stateStop : Nat := 64
def emittedEdgeCount : Nat := 85

def next : Nat -> Face -> Option (Nat × Int)
  | 0, Face.xm => some (1, (0 : Int))
  | 1, Face.ym => some (2, (0 : Int))
  | 2, Face.tmpm => some (3, (0 : Int))
  | 2, Face.yp => some (2022, (0 : Int))
  | 2, Face.zm => some (4583, (0 : Int))
  | 3, Face.tppm => some (4, (0 : Int))
  | 3, Face.zm => some (1230, (0 : Int))
  | 4, Face.tmmp => some (5, (0 : Int))
  | 4, Face.tpmm => some (444, (0 : Int))
  | 4, Face.zp => some (921, (0 : Int))
  | 5, Face.tpmp => some (6, (0 : Int))
  | 5, Face.tppp => some (134, (0 : Int))
  | 5, Face.zm => some (337, (0 : Int))
  | 6, Face.tmmm => some (7, (0 : Int))
  | 6, Face.tpmm => some (60, (0 : Int))
  | 6, Face.zm => some (113, (0 : Int))
  | 7, Face.tpmm => some (8, (0 : Int))
  | 7, Face.tppp => some (33, (0 : Int))
  | 7, Face.zm => some (49, (0 : Int))
  | 8, Face.tmpp => some (9, (0 : Int))
  | 8, Face.tppp => some (13, (0 : Int))
  | 8, Face.yp => some (21, (0 : Int))
  | 8, Face.zm => some (24, (0 : Int))
  | 9, Face.zm => some (10, (0 : Int))
  | 10, Face.tppp => some (11, (0 : Int))
  | 11, Face.zm => some (12, (0 : Int))
  | 13, Face.tmpp => some (14, (0 : Int))
  | 13, Face.zm => some (20, (0 : Int))
  | 14, Face.yp => some (15, (0 : Int))
  | 14, Face.zm => some (18, (0 : Int))
  | 15, Face.zm => some (16, (0 : Int))
  | 16, Face.zp => some (17, (0 : Int))
  | 18, Face.yp => some (16, (0 : Int))
  | 18, Face.zp => some (19, (0 : Int))
  | 19, Face.yp => some (17, (0 : Int))
  | 21, Face.tmmm => some (22, (0 : Int))
  | 21, Face.zm => some (23, (0 : Int))
  | 24, Face.tmpp => some (25, (0 : Int))
  | 24, Face.yp => some (23, (0 : Int))
  | 24, Face.zp => some (29, (0 : Int))
  | 25, Face.tppp => some (26, (0 : Int))
  | 25, Face.zm => some (28, (0 : Int))
  | 26, Face.zm => some (27, (0 : Int))
  | 29, Face.tppp => some (30, (0 : Int))
  | 29, Face.yp => some (31, (0 : Int))
  | 30, Face.tmpp => some (19, (0 : Int))
  | 31, Face.tmmm => some (32, (0 : Int))
  | 33, Face.tpmm => some (34, (0 : Int))
  | 33, Face.yp => some (43, (0 : Int))
  | 33, Face.zm => some (45, (0 : Int))
  | 34, Face.tmpp => some (35, (0 : Int))
  | 34, Face.zm => some (42, (0 : Int))
  | 35, Face.yp => some (36, (0 : Int))
  | 35, Face.zm => some (40, (0 : Int))
  | 36, Face.zm => some (37, (0 : Int))
  | 37, Face.zp => some (38, (0 : Int))
  | 38, Face.xp => some (39, (0 : Int))
  | 40, Face.yp => some (37, (0 : Int))
  | 40, Face.zp => some (41, (0 : Int))
  | 41, Face.yp => some (38, (0 : Int))
  | 43, Face.zm => some (44, (0 : Int))
  | 45, Face.tmpp => some (46, (0 : Int))
  | 45, Face.yp => some (44, (0 : Int))
  | 45, Face.zp => some (47, (0 : Int))
  | 47, Face.yp => some (48, (0 : Int))
  | 49, Face.tmpp => some (50, (0 : Int))
  | 49, Face.tppp => some (57, (0 : Int))
  | 49, Face.zp => some (59, (0 : Int))
  | 50, Face.yp => some (51, (0 : Int))
  | 50, Face.zp => some (54, (0 : Int))
  | 51, Face.tppp => some (52, (0 : Int))
  | 52, Face.zm => some (53, (0 : Int))
  | 54, Face.tppp => some (55, (0 : Int))
  | 54, Face.yp => some (56, (0 : Int))
  | 57, Face.zm => some (58, (0 : Int))
  | 60, Face.tppp => some (61, (0 : Int))
  | 60, Face.zm => some (91, (0 : Int))
  | 61, Face.tmmm => some (62, (0 : Int))
  | 61, Face.tmpp => some (71, (0 : Int))
  | 61, Face.yp => some (82, (0 : Int))
  | 61, Face.zm => some (85, (0 : Int))
  | 62, Face.tmpp => some (63, (0 : Int))
  | 62, Face.zm => some (70, (0 : Int))
  | 63, Face.yp => some (64, (0 : Int))
  | 63, Face.zm => some (68, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard000
