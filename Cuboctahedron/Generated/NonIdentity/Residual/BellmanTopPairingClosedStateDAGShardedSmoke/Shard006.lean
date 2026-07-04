import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard006

open Cuboctahedron

def shardIndex : Nat := 6
def stateStart : Nat := 384
def stateStop : Nat := 448
def emittedEdgeCount : Nat := 71

def next : Nat -> Face -> Option (Nat × Int)
  | 384, Face.tmpp => some (385, (0 : Int))
  | 386, Face.tmmm => some (387, (0 : Int))
  | 386, Face.tmpm => some (393, (0 : Int))
  | 386, Face.tmpp => some (394, (0 : Int))
  | 387, Face.tmpm => some (388, (0 : Int))
  | 387, Face.yp => some (392, (0 : Int))
  | 388, Face.tmpp => some (389, (0 : Int))
  | 389, Face.yp => some (390, (0 : Int))
  | 390, Face.xp => some (391, (0 : Int))
  | 394, Face.tmpm => some (395, (0 : Int))
  | 394, Face.yp => some (397, (0 : Int))
  | 395, Face.tmmm => some (396, (0 : Int))
  | 397, Face.tmmm => some (398, (0 : Int))
  | 399, Face.tmmm => some (400, (0 : Int))
  | 399, Face.tpmm => some (405, (0 : Int))
  | 399, Face.zm => some (414, (0 : Int))
  | 400, Face.tmpp => some (401, (0 : Int))
  | 400, Face.yp => some (402, (0 : Int))
  | 400, Face.zp => some (403, (0 : Int))
  | 403, Face.yp => some (404, (0 : Int))
  | 405, Face.tmmm => some (406, (0 : Int))
  | 405, Face.tmpp => some (407, (0 : Int))
  | 405, Face.yp => some (409, (0 : Int))
  | 405, Face.zm => some (413, (0 : Int))
  | 407, Face.zm => some (408, (0 : Int))
  | 409, Face.zm => some (410, (0 : Int))
  | 410, Face.tmmm => some (411, (0 : Int))
  | 410, Face.tmpp => some (412, (0 : Int))
  | 413, Face.yp => some (410, (0 : Int))
  | 414, Face.tmpp => some (415, (0 : Int))
  | 416, Face.tmmm => some (417, (0 : Int))
  | 416, Face.tpmm => some (420, (0 : Int))
  | 416, Face.tpmp => some (422, (0 : Int))
  | 417, Face.tpmp => some (418, (0 : Int))
  | 418, Face.yp => some (419, (0 : Int))
  | 420, Face.tmpp => some (421, (0 : Int))
  | 420, Face.tpmp => some (413, (0 : Int))
  | 422, Face.tmmm => some (423, (0 : Int))
  | 422, Face.tmpp => some (425, (0 : Int))
  | 423, Face.yp => some (424, (0 : Int))
  | 425, Face.yp => some (426, (0 : Int))
  | 426, Face.tmmm => some (427, (0 : Int))
  | 428, Face.tpmm => some (429, (0 : Int))
  | 428, Face.tpmp => some (133, (0 : Int))
  | 428, Face.tppp => some (336, (0 : Int))
  | 429, Face.tmpp => some (430, (0 : Int))
  | 429, Face.tppp => some (434, (0 : Int))
  | 430, Face.tpmp => some (431, (0 : Int))
  | 431, Face.yp => some (432, (0 : Int))
  | 432, Face.tmmm => some (433, (0 : Int))
  | 434, Face.tmmm => some (435, (0 : Int))
  | 434, Face.tmpm => some (440, (0 : Int))
  | 434, Face.tmpp => some (441, (0 : Int))
  | 435, Face.tmpm => some (436, (0 : Int))
  | 435, Face.yp => some (438, (0 : Int))
  | 436, Face.tmpp => some (437, (0 : Int))
  | 438, Face.tmpp => some (439, (0 : Int))
  | 441, Face.tmpm => some (442, (0 : Int))
  | 442, Face.tmmm => some (443, (0 : Int))
  | 444, Face.tpmp => some (445, (0 : Int))
  | 444, Face.tppp => some (552, (0 : Int))
  | 444, Face.zp => some (763, (0 : Int))
  | 445, Face.tmmm => some (446, (0 : Int))
  | 445, Face.zp => some (529, (0 : Int))
  | 446, Face.tmmp => some (447, (0 : Int))
  | 446, Face.tppp => some (474, (0 : Int))
  | 446, Face.zp => some (507, (0 : Int))
  | 447, Face.tmpp => some (448, (0 : Int))
  | 447, Face.tppp => some (459, (0 : Int))
  | 447, Face.yp => some (464, (0 : Int))
  | 447, Face.zp => some (469, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard006
