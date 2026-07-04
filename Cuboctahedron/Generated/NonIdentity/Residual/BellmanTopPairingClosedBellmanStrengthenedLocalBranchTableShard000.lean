import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

/-!
Generated strengthened local branch-table shard 000.

This bounded generated shard packages the first semantic Bellman
local branch tables behind one uniform shard-state API.  It is not
rank coverage; it is the production-shaped local-transition object
that future generated suffix evidence should consume.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedLocalBranchTableShard000

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

inductive ShardState where
  | prefix2
  | prefix3Tmpm
  | prefix3Yp
  | prefix3Zm
  deriving DecidableEq, Repr

def emittedShardStateCount : Nat := 4
def emittedShardBranchCount : Nat := 10

theorem emittedShardCount_audit :
    emittedShardStateCount = 4 /\
      emittedShardBranchCount = 10 := by
  decide

def evalState : ShardState -> StrengthenedClosedEvalState
  | .prefix2 => strengthenedClosedPrefix2EvalState
  | .prefix3Tmpm => strengthenedClosedPrefix3TmpmEvalState
  | .prefix3Yp => strengthenedClosedPrefix3YpEvalState
  | .prefix3Zm => strengthenedClosedPrefix3ZmEvalState

def localBranchTable :
    (state : ShardState) ->
      StrengthenedLocalBranchTable (evalState state)
  | .prefix2 => strengthenedPrefix2LocalBranchTable
  | .prefix3Tmpm => strengthenedPrefix3TmpmLocalBranchTable
  | .prefix3Yp => strengthenedPrefix3YpLocalBranchTable
  | .prefix3Zm => strengthenedPrefix3ZmLocalBranchTable

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

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedLocalBranchTableShard000
