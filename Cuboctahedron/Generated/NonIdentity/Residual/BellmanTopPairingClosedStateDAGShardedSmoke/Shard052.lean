import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard052

open Cuboctahedron

def shardIndex : Nat := 52
def stateStart : Nat := 3328
def stateStop : Nat := 3392
def emittedEdgeCount : Nat := 72

def next : Nat -> Face -> Option (Nat × Int)
  | 3328, Face.tmmp => some (3329, (0 : Int))
  | 3328, Face.tmpm => some (3366, (0 : Int))
  | 3328, Face.tppp => some (3414, (0 : Int))
  | 3328, Face.zp => some (3453, (0 : Int))
  | 3329, Face.tmpp => some (3330, (0 : Int))
  | 3329, Face.tppp => some (3341, (0 : Int))
  | 3329, Face.zp => some (3353, (0 : Int))
  | 3330, Face.tpmp => some (3331, (0 : Int))
  | 3330, Face.zm => some (3338, (0 : Int))
  | 3331, Face.tppp => some (3332, (0 : Int))
  | 3331, Face.zm => some (3336, (0 : Int))
  | 3332, Face.zm => some (3333, (0 : Int))
  | 3333, Face.zp => some (3334, (0 : Int))
  | 3334, Face.xp => some (3335, (0 : Int))
  | 3336, Face.zp => some (3337, (0 : Int))
  | 3338, Face.tppp => some (3339, (0 : Int))
  | 3339, Face.zm => some (3340, (0 : Int))
  | 3341, Face.tmpm => some (3342, (0 : Int))
  | 3341, Face.tmpp => some (3343, (0 : Int))
  | 3341, Face.zm => some (3350, (0 : Int))
  | 3343, Face.tmpm => some (3344, (0 : Int))
  | 3343, Face.zm => some (3348, (0 : Int))
  | 3344, Face.zm => some (3345, (0 : Int))
  | 3345, Face.zp => some (3346, (0 : Int))
  | 3346, Face.xp => some (3347, (0 : Int))
  | 3348, Face.zp => some (3349, (0 : Int))
  | 3350, Face.tmpm => some (3351, (0 : Int))
  | 3351, Face.tmpp => some (3345, (0 : Int))
  | 3351, Face.zp => some (3352, (0 : Int))
  | 3353, Face.tmpm => some (3354, (0 : Int))
  | 3353, Face.tmpp => some (3357, (0 : Int))
  | 3353, Face.zm => some (3363, (0 : Int))
  | 3354, Face.tppp => some (3355, (0 : Int))
  | 3355, Face.zm => some (3356, (0 : Int))
  | 3357, Face.tmpm => some (3358, (0 : Int))
  | 3357, Face.tppp => some (3360, (0 : Int))
  | 3357, Face.zm => some (3362, (0 : Int))
  | 3358, Face.zm => some (3359, (0 : Int))
  | 3360, Face.zm => some (3361, (0 : Int))
  | 3363, Face.tmpm => some (3364, (0 : Int))
  | 3363, Face.tppp => some (3365, (0 : Int))
  | 3364, Face.tmpp => some (3359, (0 : Int))
  | 3365, Face.tmpp => some (3349, (0 : Int))
  | 3366, Face.tmmp => some (3367, (0 : Int))
  | 3366, Face.tmpp => some (3379, (0 : Int))
  | 3366, Face.tppp => some (3394, (0 : Int))
  | 3366, Face.zp => some (3406, (0 : Int))
  | 3367, Face.tmpp => some (3368, (0 : Int))
  | 3367, Face.zp => some (3375, (0 : Int))
  | 3368, Face.tppp => some (3369, (0 : Int))
  | 3368, Face.zm => some (3373, (0 : Int))
  | 3369, Face.zm => some (3370, (0 : Int))
  | 3370, Face.zp => some (3371, (0 : Int))
  | 3371, Face.xp => some (3372, (0 : Int))
  | 3373, Face.zp => some (3374, (0 : Int))
  | 3375, Face.tppp => some (3376, (0 : Int))
  | 3375, Face.zm => some (3378, (0 : Int))
  | 3376, Face.zm => some (3377, (0 : Int))
  | 3378, Face.tmpp => some (3374, (0 : Int))
  | 3379, Face.tmmm => some (3380, (0 : Int))
  | 3379, Face.tppm => some (3383, (0 : Int))
  | 3379, Face.zm => some (3389, (0 : Int))
  | 3380, Face.zm => some (3381, (0 : Int))
  | 3381, Face.zp => some (3382, (0 : Int))
  | 3383, Face.zm => some (3384, (0 : Int))
  | 3384, Face.tmmm => some (3385, (0 : Int))
  | 3384, Face.zp => some (3388, (0 : Int))
  | 3385, Face.zp => some (3386, (0 : Int))
  | 3386, Face.xp => some (3387, (0 : Int))
  | 3389, Face.tmmp => some (3390, (0 : Int))
  | 3389, Face.tppp => some (3392, (0 : Int))
  | 3390, Face.zp => some (3391, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard052
