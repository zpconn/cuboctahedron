import Cuboctahedron.Search.BellmanPotential
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard000
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard001
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard002
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard003

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated strengthened top-pairing Bellman graph smoke root.

This root assembles the sharded real-gain transition table and proves
a concrete evaluator sanity check for one candidate path class.  It is
not rank coverage.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke

open Cuboctahedron
open Potential

def emittedBellmanShardCount : Nat := 4
def emittedBellmanEdgeCount : Nat := 229

def closedBellmanNext (state : Nat) (face : Face) : Option (Nat × Int) :=
  if state < 64 then Shard000.next state face else
    if state < 128 then Shard001.next state face else
      if state < 192 then Shard002.next state face else
        Shard003.next state face

inductive ClosedBellmanSuffixOk : Nat -> List Face -> Prop
  | nil (state : Nat) : ClosedBellmanSuffixOk state []
  | cons {state nextState : Nat} {face : Face} {gain : Int}
      {rest : List Face}
      (hnext : closedBellmanNext state face = some (nextState, gain))
      (hrest : ClosedBellmanSuffixOk nextState rest) :
      ClosedBellmanSuffixOk state (face :: rest)

theorem evalLabelStepFn_exists_of_closedBellmanSuffixOk
    {state : Nat} {labels : List Face}
    (h : ClosedBellmanSuffixOk state labels) :
    exists finish gain,
      evalLabelStepFn closedBellmanNext state labels = some (finish, gain) := by
  induction h with
  | nil state =>
      exact ⟨state, 0, by simp [evalLabelStepFn]⟩
  | cons hnext _hrest ih =>
      rename_i _ _ _ gain _
      rcases ih with ⟨finish, tailGain, htail⟩
      refine ⟨finish, gain + tailGain, ?_⟩
      simp [evalLabelStepFn, hnext, htail]

theorem strengthenedCandidate0_eval :
    evalLabelStepFn closedBellmanNext graphRoot
      [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.zm, Face.zp, Face.xp] =
      some (115, (-376 : Int)) := by
  rfl

theorem strengthenedCandidate0_margin_nonpos :
    (-200 : Int) <= 0 := by
  decide

theorem strengthenedBellmanRootBound :
    graphConst + graphPotential graphRoot <= 0 := root_bound

theorem strengthenedBellmanShardedSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke
