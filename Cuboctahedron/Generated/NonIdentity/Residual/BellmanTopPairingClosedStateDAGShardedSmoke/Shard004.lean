import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard004

open Cuboctahedron

def shardIndex : Nat := 4
def stateStart : Nat := 256
def stateStop : Nat := 320
def emittedEdgeCount : Nat := 77

def next : Nat -> Face -> Option (Nat × Int)
  | 256, Face.tmpm => some (257, (0 : Int))
  | 256, Face.zm => some (259, (0 : Int))
  | 257, Face.yp => some (258, (0 : Int))
  | 257, Face.zp => some (214, (0 : Int))
  | 258, Face.zp => some (215, (0 : Int))
  | 260, Face.tmpm => some (261, (0 : Int))
  | 260, Face.zm => some (262, (0 : Int))
  | 261, Face.tmmm => some (258, (0 : Int))
  | 261, Face.zm => some (210, (0 : Int))
  | 263, Face.tppp => some (264, (0 : Int))
  | 263, Face.yp => some (262, (0 : Int))
  | 265, Face.tmpm => some (217, (0 : Int))
  | 265, Face.tmpp => some (266, (0 : Int))
  | 267, Face.tpmm => some (268, (0 : Int))
  | 267, Face.zm => some (295, (0 : Int))
  | 268, Face.tmpp => some (269, (0 : Int))
  | 268, Face.tppp => some (280, (0 : Int))
  | 268, Face.yp => some (285, (0 : Int))
  | 268, Face.zm => some (288, (0 : Int))
  | 269, Face.tmmm => some (270, (0 : Int))
  | 269, Face.zm => some (277, (0 : Int))
  | 270, Face.yp => some (271, (0 : Int))
  | 270, Face.zm => some (275, (0 : Int))
  | 271, Face.zm => some (272, (0 : Int))
  | 272, Face.zp => some (273, (0 : Int))
  | 273, Face.xp => some (274, (0 : Int))
  | 275, Face.yp => some (272, (0 : Int))
  | 275, Face.zp => some (276, (0 : Int))
  | 276, Face.yp => some (273, (0 : Int))
  | 277, Face.tppp => some (278, (0 : Int))
  | 278, Face.zp => some (279, (0 : Int))
  | 280, Face.tmpp => some (281, (0 : Int))
  | 280, Face.zm => some (284, (0 : Int))
  | 281, Face.zm => some (282, (0 : Int))
  | 282, Face.zp => some (283, (0 : Int))
  | 285, Face.tmmm => some (286, (0 : Int))
  | 285, Face.zm => some (287, (0 : Int))
  | 288, Face.tmpp => some (289, (0 : Int))
  | 288, Face.yp => some (287, (0 : Int))
  | 288, Face.zp => some (291, (0 : Int))
  | 289, Face.zm => some (290, (0 : Int))
  | 291, Face.tppp => some (292, (0 : Int))
  | 291, Face.yp => some (293, (0 : Int))
  | 292, Face.tmpp => some (283, (0 : Int))
  | 293, Face.tmmm => some (294, (0 : Int))
  | 295, Face.tmpp => some (296, (0 : Int))
  | 295, Face.tppp => some (298, (0 : Int))
  | 295, Face.zp => some (300, (0 : Int))
  | 296, Face.zp => some (297, (0 : Int))
  | 298, Face.zp => some (299, (0 : Int))
  | 300, Face.tmmm => some (301, (0 : Int))
  | 301, Face.yp => some (302, (0 : Int))
  | 303, Face.tpmm => some (304, (0 : Int))
  | 303, Face.tpmp => some (318, (0 : Int))
  | 303, Face.tppp => some (326, (0 : Int))
  | 303, Face.zp => some (336, (0 : Int))
  | 304, Face.tmpp => some (305, (0 : Int))
  | 304, Face.tpmp => some (288, (0 : Int))
  | 304, Face.tppp => some (309, (0 : Int))
  | 304, Face.zp => some (314, (0 : Int))
  | 305, Face.tpmp => some (306, (0 : Int))
  | 305, Face.zp => some (308, (0 : Int))
  | 306, Face.zm => some (307, (0 : Int))
  | 309, Face.tpmp => some (310, (0 : Int))
  | 309, Face.zp => some (313, (0 : Int))
  | 310, Face.zm => some (311, (0 : Int))
  | 311, Face.tmpp => some (312, (0 : Int))
  | 314, Face.tmmm => some (315, (0 : Int))
  | 314, Face.tmpm => some (297, (0 : Int))
  | 315, Face.tmpm => some (316, (0 : Int))
  | 315, Face.yp => some (317, (0 : Int))
  | 318, Face.tmmm => some (319, (0 : Int))
  | 318, Face.tmpp => some (211, (0 : Int))
  | 318, Face.zm => some (324, (0 : Int))
  | 319, Face.tmpp => some (320, (0 : Int))
  | 319, Face.yp => some (321, (0 : Int))
  | 319, Face.zm => some (323, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard004
