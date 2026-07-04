import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard002

open Cuboctahedron

def shardIndex : Nat := 2
def stateStart : Nat := 128
def stateStop : Nat := 192
def emittedEdgeCount : Nat := 79

def next : Nat -> Face -> Option (Nat × Int)
  | 128, Face.tmmm => some (129, (0 : Int))
  | 128, Face.tmpp => some (132, (0 : Int))
  | 129, Face.yp => some (130, (0 : Int))
  | 130, Face.tmpp => some (131, (0 : Int))
  | 133, Face.tmmm => some (59, (0 : Int))
  | 133, Face.tpmm => some (109, (0 : Int))
  | 134, Face.tmmm => some (135, (0 : Int))
  | 134, Face.tpmm => some (194, (0 : Int))
  | 134, Face.tpmp => some (267, (0 : Int))
  | 134, Face.zm => some (303, (0 : Int))
  | 135, Face.tpmm => some (136, (0 : Int))
  | 135, Face.tpmp => some (165, (0 : Int))
  | 135, Face.zm => some (181, (0 : Int))
  | 136, Face.tmpp => some (137, (0 : Int))
  | 136, Face.yp => some (146, (0 : Int))
  | 136, Face.zp => some (157, (0 : Int))
  | 137, Face.tpmp => some (138, (0 : Int))
  | 137, Face.zm => some (145, (0 : Int))
  | 138, Face.yp => some (139, (0 : Int))
  | 138, Face.zm => some (143, (0 : Int))
  | 139, Face.zm => some (140, (0 : Int))
  | 140, Face.zp => some (141, (0 : Int))
  | 141, Face.xp => some (142, (0 : Int))
  | 143, Face.yp => some (140, (0 : Int))
  | 143, Face.zp => some (144, (0 : Int))
  | 144, Face.yp => some (141, (0 : Int))
  | 146, Face.tmpp => some (147, (0 : Int))
  | 146, Face.tpmp => some (148, (0 : Int))
  | 146, Face.zp => some (152, (0 : Int))
  | 148, Face.zm => some (149, (0 : Int))
  | 149, Face.tmpp => some (150, (0 : Int))
  | 149, Face.zp => some (151, (0 : Int))
  | 152, Face.tmpm => some (153, (0 : Int))
  | 152, Face.zm => some (155, (0 : Int))
  | 153, Face.zm => some (154, (0 : Int))
  | 155, Face.tmpp => some (156, (0 : Int))
  | 157, Face.tmpm => some (158, (0 : Int))
  | 157, Face.tmpp => some (159, (0 : Int))
  | 157, Face.yp => some (152, (0 : Int))
  | 157, Face.zm => some (163, (0 : Int))
  | 159, Face.tmpm => some (160, (0 : Int))
  | 159, Face.zm => some (162, (0 : Int))
  | 160, Face.zp => some (161, (0 : Int))
  | 163, Face.tmpm => some (164, (0 : Int))
  | 163, Face.yp => some (155, (0 : Int))
  | 164, Face.tmpp => some (161, (0 : Int))
  | 165, Face.tpmm => some (166, (0 : Int))
  | 165, Face.yp => some (175, (0 : Int))
  | 165, Face.zm => some (177, (0 : Int))
  | 166, Face.tmpp => some (167, (0 : Int))
  | 166, Face.zm => some (174, (0 : Int))
  | 167, Face.yp => some (168, (0 : Int))
  | 167, Face.zm => some (172, (0 : Int))
  | 168, Face.zm => some (169, (0 : Int))
  | 169, Face.zp => some (170, (0 : Int))
  | 170, Face.xp => some (171, (0 : Int))
  | 172, Face.yp => some (169, (0 : Int))
  | 172, Face.zp => some (173, (0 : Int))
  | 173, Face.yp => some (170, (0 : Int))
  | 175, Face.zm => some (176, (0 : Int))
  | 177, Face.tmpp => some (178, (0 : Int))
  | 177, Face.yp => some (176, (0 : Int))
  | 177, Face.zp => some (179, (0 : Int))
  | 179, Face.yp => some (180, (0 : Int))
  | 181, Face.tpmm => some (182, (0 : Int))
  | 181, Face.tpmp => some (188, (0 : Int))
  | 181, Face.zp => some (193, (0 : Int))
  | 182, Face.tmpp => some (183, (0 : Int))
  | 182, Face.tpmp => some (174, (0 : Int))
  | 182, Face.yp => some (184, (0 : Int))
  | 182, Face.zp => some (185, (0 : Int))
  | 185, Face.tmpm => some (186, (0 : Int))
  | 185, Face.yp => some (187, (0 : Int))
  | 188, Face.tmpp => some (189, (0 : Int))
  | 188, Face.yp => some (190, (0 : Int))
  | 188, Face.zm => some (192, (0 : Int))
  | 189, Face.zm => some (164, (0 : Int))
  | 190, Face.zm => some (191, (0 : Int))
  | 191, Face.tmpp => some (154, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard002
