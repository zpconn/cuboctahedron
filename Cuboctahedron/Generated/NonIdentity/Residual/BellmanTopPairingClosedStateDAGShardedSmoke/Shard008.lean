import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard008

open Cuboctahedron

def shardIndex : Nat := 8
def stateStart : Nat := 512
def stateStop : Nat := 576
def emittedEdgeCount : Nat := 72

def next : Nat -> Face -> Option (Nat × Int)
  | 512, Face.zm => some (468, (0 : Int))
  | 514, Face.yp => some (513, (0 : Int))
  | 515, Face.tmmm => some (516, (0 : Int))
  | 515, Face.tppm => some (518, (0 : Int))
  | 515, Face.yp => some (522, (0 : Int))
  | 515, Face.zm => some (524, (0 : Int))
  | 516, Face.zm => some (517, (0 : Int))
  | 518, Face.zm => some (519, (0 : Int))
  | 519, Face.tmmm => some (520, (0 : Int))
  | 520, Face.yp => some (521, (0 : Int))
  | 522, Face.zm => some (523, (0 : Int))
  | 524, Face.tmmp => some (525, (0 : Int))
  | 524, Face.tppp => some (526, (0 : Int))
  | 524, Face.yp => some (523, (0 : Int))
  | 527, Face.tmpp => some (528, (0 : Int))
  | 529, Face.tmmp => some (530, (0 : Int))
  | 529, Face.zm => some (542, (0 : Int))
  | 530, Face.tmmm => some (469, (0 : Int))
  | 530, Face.tmpp => some (531, (0 : Int))
  | 530, Face.zm => some (540, (0 : Int))
  | 531, Face.tmmm => some (532, (0 : Int))
  | 531, Face.yp => some (537, (0 : Int))
  | 531, Face.zm => some (539, (0 : Int))
  | 532, Face.tppp => some (533, (0 : Int))
  | 532, Face.zm => some (525, (0 : Int))
  | 533, Face.yp => some (534, (0 : Int))
  | 533, Face.zm => some (535, (0 : Int))
  | 535, Face.yp => some (536, (0 : Int))
  | 537, Face.zm => some (538, (0 : Int))
  | 539, Face.tppp => some (519, (0 : Int))
  | 539, Face.yp => some (538, (0 : Int))
  | 540, Face.tmpp => some (541, (0 : Int))
  | 542, Face.tmmm => some (527, (0 : Int))
  | 542, Face.tmmp => some (543, (0 : Int))
  | 542, Face.tmpp => some (547, (0 : Int))
  | 543, Face.tmpp => some (544, (0 : Int))
  | 544, Face.yp => some (545, (0 : Int))
  | 545, Face.tmmm => some (546, (0 : Int))
  | 547, Face.tmmm => some (548, (0 : Int))
  | 547, Face.tppm => some (551, (0 : Int))
  | 548, Face.tppp => some (549, (0 : Int))
  | 548, Face.yp => some (550, (0 : Int))
  | 552, Face.tmmm => some (553, (0 : Int))
  | 552, Face.tpmp => some (623, (0 : Int))
  | 552, Face.zp => some (693, (0 : Int))
  | 553, Face.tmmp => some (554, (0 : Int))
  | 553, Face.tpmp => some (579, (0 : Int))
  | 553, Face.zp => some (612, (0 : Int))
  | 554, Face.tpmm => some (555, (0 : Int))
  | 554, Face.yp => some (565, (0 : Int))
  | 554, Face.zm => some (573, (0 : Int))
  | 555, Face.tmpm => some (556, (0 : Int))
  | 555, Face.zm => some (559, (0 : Int))
  | 556, Face.yp => some (557, (0 : Int))
  | 557, Face.zp => some (558, (0 : Int))
  | 559, Face.tmpm => some (560, (0 : Int))
  | 560, Face.yp => some (561, (0 : Int))
  | 560, Face.zp => some (564, (0 : Int))
  | 561, Face.zp => some (562, (0 : Int))
  | 562, Face.xp => some (563, (0 : Int))
  | 564, Face.yp => some (562, (0 : Int))
  | 565, Face.tpmp => some (566, (0 : Int))
  | 565, Face.zm => some (572, (0 : Int))
  | 566, Face.zm => some (567, (0 : Int))
  | 567, Face.tmpp => some (568, (0 : Int))
  | 567, Face.zp => some (571, (0 : Int))
  | 568, Face.zp => some (569, (0 : Int))
  | 569, Face.xp => some (570, (0 : Int))
  | 573, Face.tmpp => some (574, (0 : Int))
  | 573, Face.tpmp => some (575, (0 : Int))
  | 573, Face.yp => some (572, (0 : Int))
  | 573, Face.zp => some (576, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard008
