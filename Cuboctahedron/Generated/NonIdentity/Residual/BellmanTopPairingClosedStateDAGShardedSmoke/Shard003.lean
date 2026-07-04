import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard003

open Cuboctahedron

def shardIndex : Nat := 3
def stateStart : Nat := 192
def stateStop : Nat := 256
def emittedEdgeCount : Nat := 79

def next : Nat -> Face -> Option (Nat × Int)
  | 192, Face.yp => some (191, (0 : Int))
  | 193, Face.tpmp => some (179, (0 : Int))
  | 194, Face.tmpm => some (195, (0 : Int))
  | 194, Face.tppp => some (218, (0 : Int))
  | 194, Face.zp => some (244, (0 : Int))
  | 195, Face.tmpp => some (196, (0 : Int))
  | 195, Face.tppp => some (200, (0 : Int))
  | 195, Face.yp => some (206, (0 : Int))
  | 195, Face.zp => some (211, (0 : Int))
  | 196, Face.zm => some (197, (0 : Int))
  | 197, Face.tppp => some (198, (0 : Int))
  | 198, Face.zm => some (199, (0 : Int))
  | 200, Face.tmpp => some (201, (0 : Int))
  | 200, Face.zp => some (204, (0 : Int))
  | 201, Face.zm => some (202, (0 : Int))
  | 202, Face.zp => some (203, (0 : Int))
  | 204, Face.zm => some (205, (0 : Int))
  | 205, Face.tmpp => some (203, (0 : Int))
  | 206, Face.tmpp => some (207, (0 : Int))
  | 206, Face.zp => some (208, (0 : Int))
  | 208, Face.zm => some (209, (0 : Int))
  | 209, Face.tmpp => some (210, (0 : Int))
  | 211, Face.tmmm => some (212, (0 : Int))
  | 211, Face.yp => some (208, (0 : Int))
  | 211, Face.zm => some (217, (0 : Int))
  | 212, Face.zm => some (213, (0 : Int))
  | 213, Face.tmpp => some (214, (0 : Int))
  | 214, Face.yp => some (215, (0 : Int))
  | 215, Face.xp => some (216, (0 : Int))
  | 217, Face.tppp => some (205, (0 : Int))
  | 217, Face.yp => some (209, (0 : Int))
  | 218, Face.tmpp => some (219, (0 : Int))
  | 218, Face.yp => some (224, (0 : Int))
  | 218, Face.zp => some (236, (0 : Int))
  | 219, Face.tmpm => some (220, (0 : Int))
  | 219, Face.zm => some (223, (0 : Int))
  | 220, Face.zm => some (221, (0 : Int))
  | 221, Face.zp => some (222, (0 : Int))
  | 224, Face.tmpm => some (225, (0 : Int))
  | 224, Face.tmpp => some (226, (0 : Int))
  | 224, Face.zp => some (232, (0 : Int))
  | 226, Face.tmpm => some (227, (0 : Int))
  | 226, Face.zm => some (230, (0 : Int))
  | 227, Face.zm => some (228, (0 : Int))
  | 228, Face.zp => some (229, (0 : Int))
  | 230, Face.zp => some (231, (0 : Int))
  | 232, Face.tmpm => some (233, (0 : Int))
  | 232, Face.zm => some (235, (0 : Int))
  | 233, Face.tmpp => some (228, (0 : Int))
  | 233, Face.zp => some (234, (0 : Int))
  | 235, Face.tmpp => some (231, (0 : Int))
  | 236, Face.tmpm => some (237, (0 : Int))
  | 236, Face.tmpp => some (238, (0 : Int))
  | 236, Face.yp => some (232, (0 : Int))
  | 236, Face.zm => some (242, (0 : Int))
  | 238, Face.tmpm => some (239, (0 : Int))
  | 238, Face.zm => some (241, (0 : Int))
  | 239, Face.zm => some (240, (0 : Int))
  | 242, Face.tmpm => some (243, (0 : Int))
  | 242, Face.yp => some (235, (0 : Int))
  | 243, Face.tmpp => some (240, (0 : Int))
  | 244, Face.tmmm => some (245, (0 : Int))
  | 244, Face.tmpp => some (255, (0 : Int))
  | 244, Face.zm => some (265, (0 : Int))
  | 245, Face.tmpm => some (246, (0 : Int))
  | 245, Face.tmpp => some (247, (0 : Int))
  | 245, Face.yp => some (251, (0 : Int))
  | 245, Face.zm => some (253, (0 : Int))
  | 247, Face.tmpm => some (248, (0 : Int))
  | 247, Face.zm => some (250, (0 : Int))
  | 248, Face.zm => some (249, (0 : Int))
  | 251, Face.zm => some (252, (0 : Int))
  | 253, Face.tmpm => some (254, (0 : Int))
  | 253, Face.yp => some (252, (0 : Int))
  | 254, Face.tmpp => some (249, (0 : Int))
  | 255, Face.tmmm => some (256, (0 : Int))
  | 255, Face.tmpm => some (197, (0 : Int))
  | 255, Face.yp => some (260, (0 : Int))
  | 255, Face.zm => some (263, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard003
