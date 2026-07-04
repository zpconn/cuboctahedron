import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedNextFrontierSmoke

/-!
Generated strengthened local branch-table shard 000.

This bounded generated shard packages semantic Bellman local branch
tables behind one uniform shard-state API.  It is not rank coverage;
it is the production-shaped local-transition object that future
generated suffix evidence should consume.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedLocalBranchTableShard001

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

inductive ShardState where
  | prefix4YpZm
  deriving DecidableEq, Repr

def emittedShardStateCount : Nat := 1
def emittedShardBranchCount : Nat := 2

theorem emittedShardCount_audit :
    emittedShardStateCount = 1 /\
      emittedShardBranchCount = 2 := by
  decide

def evalState : ShardState -> StrengthenedClosedEvalState
  | .prefix4YpZm => strengthenedClosedPrefix4YpZmEvalState

def localBranchTable :
    (state : ShardState) ->
      StrengthenedLocalBranchTable (evalState state)
  | .prefix4YpZm => strengthenedPrefix4Graph147LocalBranchTable

theorem localTransition
    {state : ShardState} {face : Face} {rest : List Face}
    (htail : (evalState state).Tail (face :: rest)) :
    ∃ branch : (localBranchTable state).Branch,
      (localBranchTable state).face branch = face ∧
        ∃ nextState : StrengthenedClosedEvalState,
          strengthenedClosedEvalNext (evalState state) face =
              some (nextState, (localBranchTable state).gain branch) ∧
            nextState.Tail rest ∧
              nextState.graph = (localBranchTable state).nextGraph branch :=
  StrengthenedLocalBranchTable.localTransition
    (localBranchTable state) htail

theorem shard000_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedLocalBranchTableShard001
