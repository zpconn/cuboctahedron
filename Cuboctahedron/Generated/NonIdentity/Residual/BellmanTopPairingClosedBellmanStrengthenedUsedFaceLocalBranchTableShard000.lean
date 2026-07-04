import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedNextFrontierSmoke

/-!
Generated strengthened used-face local branch-table shard 000.

This bounded shard packages the first used-face-aware local branch table behind
the same kind of uniform shard API as the graph-only local branch-table shards.
It is not rank coverage; it is an emitter-facing semantic transition object for
the deterministic closed-language evaluator route.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedUsedFaceLocalBranchTableShard000

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

inductive ShardState where
  | prefix4YpTmmm
  deriving DecidableEq, Repr

def emittedShardStateCount : Nat := 1
def emittedShardBranchCount : Nat := 2

theorem emittedShardCount_audit :
    emittedShardStateCount = 1 /\
      emittedShardBranchCount = 2 := by
  decide

def evalState : ShardState -> TopPairingUsedFaceEvalState Nat
  | .prefix4YpTmmm => strengthenedClosedPrefix4YpTmmmUsedEvalState

def localBranchTable :
    (state : ShardState) ->
      StrengthenedUsedFaceLocalBranchTable (evalState state)
  | .prefix4YpTmmm => strengthenedPrefix4Graph148UsedFaceLocalBranchTable

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
