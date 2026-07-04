import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedNextFrontierSmoke

/-!
Generated strengthened used-face local branch-table shard 000.

This bounded generated shard packages semantic Bellman local branch
tables behind one uniform shard-state API.  It is not rank coverage;
it is the production-shaped local-transition object that future
generated suffix evidence should consume.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedUsedFaceLocalBranchTableShard000

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

inductive ShardState where
  | prefix4YpTmmm
  | prefix4ZmZp
  deriving DecidableEq, Repr

def emittedShardStateCount : Nat := 2
def emittedShardBranchCount : Nat := 4

theorem emittedShardCount_audit :
    emittedShardStateCount = 2 /\
      emittedShardBranchCount = 4 := by
  decide

def evalState : ShardState -> TopPairingUsedFaceEvalState Nat
  | .prefix4YpTmmm => strengthenedClosedPrefix4YpTmmmUsedEvalState
  | .prefix4ZmZp => strengthenedClosedPrefix4ZmZpUsedEvalState

def localBranchTable :
    (state : ShardState) ->
      StrengthenedUsedFaceLocalBranchTable (evalState state)
  | .prefix4YpTmmm => strengthenedPrefix4Graph148UsedFaceLocalBranchTable
  | .prefix4ZmZp => strengthenedPrefix4Graph149UsedFaceLocalBranchTable

theorem localTransition
    {state : ShardState} {face : Face} {rest : List Face}
    (htail : (evalState state).Tail (face :: rest)) :
    ∃ branch : (localBranchTable state).Branch,
      (localBranchTable state).face branch = face ∧
        ∃ nextState : TopPairingUsedFaceEvalState Nat,
          strengthenedClosedUsedEvalNext (evalState state) face =
              some (nextState, (localBranchTable state).gain branch) ∧
            nextState.Tail rest ∧
              nextState.eval.graph = (localBranchTable state).nextGraph branch ∧
                nextState.used = face :: (evalState state).used :=
  StrengthenedUsedFaceLocalBranchTable.localTransition
    (localBranchTable state) htail

theorem shard000_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedUsedFaceLocalBranchTableShard000
