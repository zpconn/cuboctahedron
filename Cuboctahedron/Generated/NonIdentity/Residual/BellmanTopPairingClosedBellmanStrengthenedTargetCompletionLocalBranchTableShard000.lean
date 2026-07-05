import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedNextFrontierSmoke

/-!
Generated strengthened target-completion local branch-table shard 000.

This bounded generated shard packages semantic Bellman local branch
tables behind one uniform shard-state API.  It is not rank coverage;
it is the production-shaped local-transition object that future
generated suffix evidence should consume.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

inductive ShardState where
  | prefix4YpZm
  | prefix5YpZmZp
  | prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp
  | prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm
  | prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp
  | prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp
  | prefix9YpZmZpTmmmTpmmTppmTpmp
  | prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp
  | prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm
  | prefix9YpZmTmmpTpmpTpppTpmmTmpp
  | prefix10YpZmZpTmmmTpmmTppmTpmpTmpm
  | prefix10YpZmTmmpTpmpTpppTpmmTmppTppm
  | prefix8YpZmZpTmmmTpmmTppm
  | prefix8YpZmTmmpTpmpTpppTpmm
  | prefix7YpZmZpTmmmTpmm
  | prefix7YpZmTmmpTpmpTppp
  | prefix6YpZmZpTmmm
  | prefix6YpZmTmmpTpmp
  | prefix5YpZmTmmp
  | prefix4TmpmZm
  | prefix4ZmTmpp
  deriving DecidableEq, Repr

def emittedShardStateCount : Nat := 21
def emittedShardBranchCount : Nat := 22
def emittedShardExternalTargetCount : Nat := 4

theorem emittedShardCount_audit :
    emittedShardStateCount = 21 /\
      emittedShardBranchCount = 22 /\
      emittedShardExternalTargetCount = 4 := by
  decide

def evalState : ShardState -> StrengthenedClosedEvalState
  | .prefix4YpZm => strengthenedClosedPrefix4YpZmEvalState
  | .prefix5YpZmZp => strengthenedClosedPrefix5YpZmZpEvalState
  | .prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp => strengthenedClosedPrefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppEvalState
  | .prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm => strengthenedClosedPrefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmEvalState
  | .prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp => strengthenedClosedPrefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmpEvalState
  | .prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp => strengthenedClosedPrefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZpEvalState
  | .prefix9YpZmZpTmmmTpmmTppmTpmp => strengthenedClosedPrefix9YpZmZpTmmmTpmmTppmTpmpEvalState
  | .prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp => strengthenedClosedPrefix11YpZmZpTmmmTpmmTppmTpmpTmpmTpppEvalState
  | .prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm => strengthenedClosedPrefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpmEvalState
  | .prefix9YpZmTmmpTpmpTpppTpmmTmpp => strengthenedClosedPrefix9YpZmTmmpTpmpTpppTpmmTmppEvalState
  | .prefix10YpZmZpTmmmTpmmTppmTpmpTmpm => strengthenedClosedPrefix10YpZmZpTmmmTpmmTppmTpmpTmpmEvalState
  | .prefix10YpZmTmmpTpmpTpppTpmmTmppTppm => strengthenedClosedPrefix10YpZmTmmpTpmpTpppTpmmTmppTppmEvalState
  | .prefix8YpZmZpTmmmTpmmTppm => strengthenedClosedPrefix8YpZmZpTmmmTpmmTppmEvalState
  | .prefix8YpZmTmmpTpmpTpppTpmm => strengthenedClosedPrefix8YpZmTmmpTpmpTpppTpmmEvalState
  | .prefix7YpZmZpTmmmTpmm => strengthenedClosedPrefix7YpZmZpTmmmTpmmEvalState
  | .prefix7YpZmTmmpTpmpTppp => strengthenedClosedPrefix7YpZmTmmpTpmpTpppEvalState
  | .prefix6YpZmZpTmmm => strengthenedClosedPrefix6YpZmZpTmmmEvalState
  | .prefix6YpZmTmmpTpmp => strengthenedClosedPrefix6YpZmTmmpTpmpEvalState
  | .prefix5YpZmTmmp => strengthenedClosedPrefix5YpZmTmmpEvalState
  | .prefix4TmpmZm => strengthenedClosedPrefix4TmpmZmEvalState
  | .prefix4ZmTmpp => strengthenedClosedPrefix4ZmTmppEvalState

def completionState : ShardState -> TopPairingTargetCompletionState
  | .prefix4YpZm => graph147TargetCompletionState
  | .prefix5YpZmZp => graph153TargetCompletionState
  | .prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp => graph69TargetCompletionState
  | .prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm => graph75TargetCompletionState
  | .prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp => graph112TargetCompletionState
  | .prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp => graph109TargetCompletionState
  | .prefix9YpZmZpTmmmTpmmTppmTpmp => graph208TargetCompletionState
  | .prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp => graph36TargetCompletionState
  | .prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm => graph41TargetCompletionState
  | .prefix9YpZmTmmpTpmpTpppTpmmTmpp => graph211TargetCompletionState
  | .prefix10YpZmZpTmmmTpmmTppmTpmpTmpm => graph6TargetCompletionState
  | .prefix10YpZmTmmpTpmpTpppTpmmTmppTppm => graph11TargetCompletionState
  | .prefix8YpZmZpTmmmTpmmTppm => graph191TargetCompletionState
  | .prefix8YpZmTmmpTpmpTpppTpmm => graph194TargetCompletionState
  | .prefix7YpZmZpTmmmTpmm => graph176TargetCompletionState
  | .prefix7YpZmTmmpTpmpTppp => graph178TargetCompletionState
  | .prefix6YpZmZpTmmm => graph163TargetCompletionState
  | .prefix6YpZmTmmpTpmp => graph166TargetCompletionState
  | .prefix5YpZmTmmp => graph155TargetCompletionState
  | .prefix4TmpmZm => graph150TargetCompletionState
  | .prefix4ZmTmpp => graph151TargetCompletionState

/--
Deterministic target for one generated local transition.

Most local transitions remain inside this shard.  A few transitions leave this
shard: the graph-147 lane reaches terminal Bellman graph states `141` and
`138`, while the graph-150/151 lanes hand off to external graph states already
handled by other terminal-machine experiments.
-/
inductive ShardStepTarget where
  | shard (state : ShardState)
  | externalGraph (graph : Nat)
  deriving DecidableEq, Repr

namespace ShardStepTarget

def graph : ShardStepTarget -> Nat
  | .shard state => (evalState state).graph
  | .externalGraph graph => graph

end ShardStepTarget

/--
Deterministic semantic transition table for shard 000.

This table is not rank coverage and contains no sampled prefix data.  It is
the compact recursion target for the next closed-language-to-evaluator gate:
starting from the shared graph-147 layer-4 state, target-completion and the
strengthened evaluator can follow this table until terminal graphs `141` or
`138`.
-/
def nextTarget? : ShardState -> Face -> Option (ShardStepTarget × Int)
  | .prefix4YpZm, Face.zp =>
      some (.shard .prefix5YpZmZp, (-10 : Int))
  | .prefix4YpZm, Face.tmmp =>
      some (.shard .prefix5YpZmTmmp, (-124 : Int))
  | .prefix5YpZmZp, Face.tmmm =>
      some (.shard .prefix6YpZmZpTmmm, (-124 : Int))
  | .prefix5YpZmTmmp, Face.tpmp =>
      some (.shard .prefix6YpZmTmmpTpmp, (96 : Int))
  | .prefix6YpZmZpTmmm, Face.tpmm =>
      some (.shard .prefix7YpZmZpTmmmTpmm, (96 : Int))
  | .prefix6YpZmTmmpTpmp, Face.tppp =>
      some (.shard .prefix7YpZmTmmpTpmpTppp, (-36 : Int))
  | .prefix7YpZmZpTmmmTpmm, Face.tppm =>
      some (.shard .prefix8YpZmZpTmmmTpmmTppm, (-36 : Int))
  | .prefix7YpZmTmmpTpmpTppp, Face.tpmm =>
      some (.shard .prefix8YpZmTmmpTpmpTpppTpmm, (-144 : Int))
  | .prefix8YpZmZpTmmmTpmmTppm, Face.tpmp =>
      some (.shard .prefix9YpZmZpTmmmTpmmTppmTpmp, (-144 : Int))
  | .prefix8YpZmTmmpTpmpTpppTpmm, Face.tmpp =>
      some (.shard .prefix9YpZmTmmpTpmpTpppTpmmTmpp, (-144 : Int))
  | .prefix9YpZmZpTmmmTpmmTppmTpmp, Face.tmpm =>
      some (.shard .prefix10YpZmZpTmmmTpmmTppmTpmpTmpm, (-144 : Int))
  | .prefix9YpZmTmmpTpmpTpppTpmmTmpp, Face.tppm =>
      some (.shard .prefix10YpZmTmmpTpmpTpppTpmmTmppTppm, (-36 : Int))
  | .prefix10YpZmZpTmmmTpmmTppmTpmpTmpm, Face.tppp =>
      some (.shard .prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp, (-36 : Int))
  | .prefix10YpZmTmmpTpmpTpppTpmmTmppTppm, Face.tmpm =>
      some (.shard .prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm, (96 : Int))
  | .prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp, Face.tmpp =>
      some (.shard .prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp, (96 : Int))
  | .prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm, Face.tmmm =>
      some (.shard .prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm,
        (-124 : Int))
  | .prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp, Face.tmmp =>
      some (.shard .prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp,
        (-124 : Int))
  | .prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm, Face.zp =>
      some (.shard .prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp,
        (-10 : Int))
  | .prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp, Face.xp =>
      some (.externalGraph 141, (-73 : Int))
  | .prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp, Face.xp =>
      some (.externalGraph 138, (-73 : Int))
  | .prefix4TmpmZm, Face.zp =>
      some (.externalGraph 157, (114 : Int))
  | .prefix4ZmTmpp, Face.tppp =>
      some (.externalGraph 159, (96 : Int))
  | _, _ => none

theorem nextTarget?_terminal_graph112 :
    nextTarget?
        .prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp Face.xp =
      some (.externalGraph 141, (-73 : Int)) := by
  rfl

theorem nextTarget?_terminal_graph109 :
    nextTarget?
        .prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp Face.xp =
      some (.externalGraph 138, (-73 : Int)) := by
  rfl

theorem nextTarget?_prefix4YpZm_zp :
    nextTarget? .prefix4YpZm Face.zp =
      some (.shard .prefix5YpZmZp, (-10 : Int)) := by
  rfl

theorem nextTarget?_prefix4YpZm_tmmp :
    nextTarget? .prefix4YpZm Face.tmmp =
      some (.shard .prefix5YpZmTmmp, (-124 : Int)) := by
  rfl

def strengthenedClosedPrefix14YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmpXpEvalState :
    StrengthenedClosedEvalState :=
  match strengthenedClosedEvalNext
      strengthenedClosedPrefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmpEvalState
        Face.xp with
  | some (state, _gain) => state
  | none =>
      strengthenedClosedPrefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmpEvalState

def strengthenedClosedPrefix14YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZpXpEvalState :
    StrengthenedClosedEvalState :=
  match strengthenedClosedEvalNext
      strengthenedClosedPrefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZpEvalState
        Face.xp with
  | some (state, _gain) => state
  | none =>
      strengthenedClosedPrefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZpEvalState

def strengthenedClosedPrefix5TmpmZmZpEvalState : StrengthenedClosedEvalState :=
  match strengthenedClosedEvalNext strengthenedClosedPrefix4TmpmZmEvalState
      Face.zp with
  | some (state, _gain) => state
  | none => strengthenedClosedPrefix4TmpmZmEvalState

theorem strengthenedClosed_prefix14_yp_zm_zp_tmmm_tpmm_tppm_tpmp_tmpm_tppp_tmpp_tmmp_xp_next_from_graph112 :
    strengthenedClosedEvalNext
        strengthenedClosedPrefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmpEvalState
        Face.xp =
      some
        (strengthenedClosedPrefix14YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmpXpEvalState,
          (-73 : Int)) := by
  rfl

theorem strengthenedClosed_prefix14_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_tppm_tmpm_tmmm_zp_xp_next_from_graph109 :
    strengthenedClosedEvalNext
        strengthenedClosedPrefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZpEvalState
        Face.xp =
      some
        (strengthenedClosedPrefix14YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZpXpEvalState,
          (-73 : Int)) := by
  rfl

theorem strengthenedClosed_prefix5_tmpm_zm_zp_next_from_graph150 :
    strengthenedClosedEvalNext strengthenedClosedPrefix4TmpmZmEvalState
        Face.zp =
      some (strengthenedClosedPrefix5TmpmZmZpEvalState, (114 : Int)) := by
  rfl

/--
The compact target table agrees with the actual strengthened evaluator step.

This is the local soundness hook for the next semantic
closed-language-to-evaluator gate: generated membership can reason in terms of
`nextTarget?`, while this theorem connects each table entry back to
`strengthenedClosedEvalNext`.
-/
theorem nextTarget?_graph_sound
    {state : ShardState} {face : Face}
    {target : ShardStepTarget} {gain : Int}
    (hnext : nextTarget? state face = some (target, gain)) :
    ∃ nextState : StrengthenedClosedEvalState,
      strengthenedClosedEvalNext (evalState state) face =
          some (nextState, gain) ∧
        nextState.graph = target.graph := by
  cases state <;> cases face <;>
    simp [nextTarget?] at hnext
  all_goals rcases hnext with ⟨rfl, rfl⟩
  case prefix4YpZm.zp =>
    exact ⟨strengthenedClosedPrefix5YpZmZpEvalState,
      strengthenedClosed_prefix5_yp_zm_zp_next_from_graph147, rfl⟩
  case prefix4YpZm.tmmp =>
    exact ⟨strengthenedClosedPrefix5YpZmTmmpEvalState,
      strengthenedClosed_prefix5_yp_zm_tmmp_next_from_graph147, rfl⟩
  case prefix5YpZmZp.tmmm =>
    exact ⟨strengthenedClosedPrefix6YpZmZpTmmmEvalState,
      strengthenedClosed_prefix6_yp_zm_zp_tmmm_next_from_graph153, rfl⟩
  case prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp.tmmp =>
    exact ⟨strengthenedClosedPrefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmpEvalState,
      strengthenedClosed_prefix13_yp_zm_zp_tmmm_tpmm_tppm_tpmp_tmpm_tppp_tmpp_tmmp_next_from_graph69,
      rfl⟩
  case prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm.zp =>
    exact ⟨strengthenedClosedPrefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZpEvalState,
      strengthenedClosed_prefix13_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_tppm_tmpm_tmmm_zp_next_from_graph75,
      rfl⟩
  case prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp.xp =>
    exact ⟨strengthenedClosedPrefix14YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmpXpEvalState,
      strengthenedClosed_prefix14_yp_zm_zp_tmmm_tpmm_tppm_tpmp_tmpm_tppp_tmpp_tmmp_xp_next_from_graph112,
      rfl⟩
  case prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp.xp =>
    exact ⟨strengthenedClosedPrefix14YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZpXpEvalState,
      strengthenedClosed_prefix14_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_tppm_tmpm_tmmm_zp_xp_next_from_graph109,
      rfl⟩
  case prefix9YpZmZpTmmmTpmmTppmTpmp.tmpm =>
    exact ⟨strengthenedClosedPrefix10YpZmZpTmmmTpmmTppmTpmpTmpmEvalState,
      strengthenedClosed_prefix10_yp_zm_zp_tmmm_tpmm_tppm_tpmp_tmpm_next_from_graph208,
      rfl⟩
  case prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp.tmpp =>
    exact ⟨strengthenedClosedPrefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppEvalState,
      strengthenedClosed_prefix12_yp_zm_zp_tmmm_tpmm_tppm_tpmp_tmpm_tppp_tmpp_next_from_graph36,
      rfl⟩
  case prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm.tmmm =>
    exact ⟨strengthenedClosedPrefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmEvalState,
      strengthenedClosed_prefix12_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_tppm_tmpm_tmmm_next_from_graph41,
      rfl⟩
  case prefix9YpZmTmmpTpmpTpppTpmmTmpp.tppm =>
    exact ⟨strengthenedClosedPrefix10YpZmTmmpTpmpTpppTpmmTmppTppmEvalState,
      strengthenedClosed_prefix10_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_tppm_next_from_graph211,
      rfl⟩
  case prefix10YpZmZpTmmmTpmmTppmTpmpTmpm.tppp =>
    exact ⟨strengthenedClosedPrefix11YpZmZpTmmmTpmmTppmTpmpTmpmTpppEvalState,
      strengthenedClosed_prefix11_yp_zm_zp_tmmm_tpmm_tppm_tpmp_tmpm_tppp_next_from_graph6,
      rfl⟩
  case prefix10YpZmTmmpTpmpTpppTpmmTmppTppm.tmpm =>
    exact ⟨strengthenedClosedPrefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpmEvalState,
      strengthenedClosed_prefix11_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_tppm_tmpm_next_from_graph11,
      rfl⟩
  case prefix8YpZmZpTmmmTpmmTppm.tpmp =>
    exact ⟨strengthenedClosedPrefix9YpZmZpTmmmTpmmTppmTpmpEvalState,
      strengthenedClosed_prefix9_yp_zm_zp_tmmm_tpmm_tppm_tpmp_next_from_graph191,
      rfl⟩
  case prefix8YpZmTmmpTpmpTpppTpmm.tmpp =>
    exact ⟨strengthenedClosedPrefix9YpZmTmmpTpmpTpppTpmmTmppEvalState,
      strengthenedClosed_prefix9_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_next_from_graph194,
      rfl⟩
  case prefix7YpZmZpTmmmTpmm.tppm =>
    exact ⟨strengthenedClosedPrefix8YpZmZpTmmmTpmmTppmEvalState,
      strengthenedClosed_prefix8_yp_zm_zp_tmmm_tpmm_tppm_next_from_graph176,
      rfl⟩
  case prefix7YpZmTmmpTpmpTppp.tpmm =>
    exact ⟨strengthenedClosedPrefix8YpZmTmmpTpmpTpppTpmmEvalState,
      strengthenedClosed_prefix8_yp_zm_tmmp_tpmp_tppp_tpmm_next_from_graph178,
      rfl⟩
  case prefix6YpZmZpTmmm.tpmm =>
    exact ⟨strengthenedClosedPrefix7YpZmZpTmmmTpmmEvalState,
      strengthenedClosed_prefix7_yp_zm_zp_tmmm_tpmm_next_from_graph163,
      rfl⟩
  case prefix6YpZmTmmpTpmp.tppp =>
    exact ⟨strengthenedClosedPrefix7YpZmTmmpTpmpTpppEvalState,
      strengthenedClosed_prefix7_yp_zm_tmmp_tpmp_tppp_next_from_graph166,
      rfl⟩
  case prefix5YpZmTmmp.tpmp =>
    exact ⟨strengthenedClosedPrefix6YpZmTmmpTpmpEvalState,
      strengthenedClosed_prefix6_yp_zm_tmmp_tpmp_next_from_graph155,
      rfl⟩
  case prefix4TmpmZm.zp =>
    exact ⟨strengthenedClosedPrefix5TmpmZmZpEvalState,
      strengthenedClosed_prefix5_tmpm_zm_zp_next_from_graph150, rfl⟩
  case prefix4ZmTmpp.tppp =>
    exact ⟨strengthenedClosedPrefix5ZmTmppTpppEvalState,
      strengthenedClosed_prefix5_zm_tmpp_tppp_next_from_prefix4ZmTmpp,
      rfl⟩

theorem nextTarget?_shard_sound
    {state nextState : ShardState} {face : Face} {gain : Int}
    (hnext : nextTarget? state face = some (.shard nextState, gain)) :
    strengthenedClosedEvalNext (evalState state) face =
      some (evalState nextState, gain) := by
  cases state <;> cases face <;>
    simp [nextTarget?] at hnext
  all_goals rcases hnext with ⟨rfl, rfl⟩
  case prefix4YpZm.zp =>
    exact strengthenedClosed_prefix5_yp_zm_zp_next_from_graph147
  case prefix4YpZm.tmmp =>
    exact strengthenedClosed_prefix5_yp_zm_tmmp_next_from_graph147
  case prefix5YpZmZp.tmmm =>
    exact strengthenedClosed_prefix6_yp_zm_zp_tmmm_next_from_graph153
  case prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp.tmmp =>
    exact strengthenedClosed_prefix13_yp_zm_zp_tmmm_tpmm_tppm_tpmp_tmpm_tppp_tmpp_tmmp_next_from_graph69
  case prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm.zp =>
    exact strengthenedClosed_prefix13_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_tppm_tmpm_tmmm_zp_next_from_graph75
  case prefix9YpZmZpTmmmTpmmTppmTpmp.tmpm =>
    exact strengthenedClosed_prefix10_yp_zm_zp_tmmm_tpmm_tppm_tpmp_tmpm_next_from_graph208
  case prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp.tmpp =>
    exact strengthenedClosed_prefix12_yp_zm_zp_tmmm_tpmm_tppm_tpmp_tmpm_tppp_tmpp_next_from_graph36
  case prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm.tmmm =>
    exact strengthenedClosed_prefix12_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_tppm_tmpm_tmmm_next_from_graph41
  case prefix9YpZmTmmpTpmpTpppTpmmTmpp.tppm =>
    exact strengthenedClosed_prefix10_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_tppm_next_from_graph211
  case prefix10YpZmZpTmmmTpmmTppmTpmpTmpm.tppp =>
    exact strengthenedClosed_prefix11_yp_zm_zp_tmmm_tpmm_tppm_tpmp_tmpm_tppp_next_from_graph6
  case prefix10YpZmTmmpTpmpTpppTpmmTmppTppm.tmpm =>
    exact strengthenedClosed_prefix11_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_tppm_tmpm_next_from_graph11
  case prefix8YpZmZpTmmmTpmmTppm.tpmp =>
    exact strengthenedClosed_prefix9_yp_zm_zp_tmmm_tpmm_tppm_tpmp_next_from_graph191
  case prefix8YpZmTmmpTpmpTpppTpmm.tmpp =>
    exact strengthenedClosed_prefix9_yp_zm_tmmp_tpmp_tppp_tpmm_tmpp_next_from_graph194
  case prefix7YpZmZpTmmmTpmm.tppm =>
    exact strengthenedClosed_prefix8_yp_zm_zp_tmmm_tpmm_tppm_next_from_graph176
  case prefix7YpZmTmmpTpmpTppp.tpmm =>
    exact strengthenedClosed_prefix8_yp_zm_tmmp_tpmp_tppp_tpmm_next_from_graph178
  case prefix6YpZmZpTmmm.tpmm =>
    exact strengthenedClosed_prefix7_yp_zm_zp_tmmm_tpmm_next_from_graph163
  case prefix6YpZmTmmpTpmp.tppp =>
    exact strengthenedClosed_prefix7_yp_zm_tmmp_tpmp_tppp_next_from_graph166
  case prefix5YpZmTmmp.tpmp =>
    exact strengthenedClosed_prefix6_yp_zm_tmmp_tpmp_next_from_graph155

private theorem evalLabelStepFn_cons_some
    {State Label : Type}
    {next : State -> Label -> Option (State × Int)}
    {start mid finish : State} {label : Label} {labels : List Label}
    {gain tailGain : Int}
    (hnext : next start label = some (mid, gain))
    (htail : evalLabelStepFn next mid labels = some (finish, tailGain)) :
    evalLabelStepFn next start (label :: labels) =
      some (finish, gain + tailGain) := by
  unfold evalLabelStepFn
  rw [hnext]
  simp [htail]

/--
Recursive semantic suffix predicate for this bounded target shard.

`ExternalOk graph rest` is the socket for graph targets outside this shard.
Inside the shard, membership follows the deterministic `nextTarget?` table.
This is the production-shaped object that the closed-language cursor theorem
should prove for the graph147 lane; it contains no rank list, selected prefix,
or sampled trace id.
-/
inductive ShardTargetSuffixOk
    (ExternalOk : Nat -> List Face -> Prop) :
    ShardState -> List Face -> Prop where
  | shard_step
      {state nextState : ShardState} {face : Face} {gain : Int}
      {rest : List Face}
      (hstep :
        nextTarget? state face = some (.shard nextState, gain))
      (hrest : ShardTargetSuffixOk ExternalOk nextState rest) :
      ShardTargetSuffixOk ExternalOk state (face :: rest)
  | external_step
      {state : ShardState} {graph : Nat} {face : Face} {gain : Int}
      {rest : List Face}
      (hstep :
        nextTarget? state face = some (.externalGraph graph, gain))
      (hrest : ExternalOk graph rest) :
      ShardTargetSuffixOk ExternalOk state (face :: rest)

theorem ShardTargetSuffixOk.not_nil
    {ExternalOk : Nat -> List Face -> Prop} {state : ShardState} :
    ¬ ShardTargetSuffixOk ExternalOk state [] := by
  intro h
  cases h

private theorem completionState_remaining_ne_nil (state : ShardState) :
    (completionState state).remaining ≠ [] := by
  cases state <;> decide

theorem ShardTargetSuffixOk.of_targetCompletionTail
    {ExternalOk : Nat -> List Face -> Prop}
    (hexternal :
      ∀ {state : ShardState} {graph : Nat} {face : Face} {gain : Int}
          {rest : List Face},
        nextTarget? state face = some (.externalGraph graph, gain) ->
        TopPairingTargetCompletionTail
          ((completionState state).next face) rest ->
          ExternalOk graph rest)
    {state : ShardState} {labels : List Face}
    (htail :
      TopPairingTargetCompletionTail (completionState state) labels) :
    ShardTargetSuffixOk ExternalOk state labels := by
  induction labels generalizing state with
  | nil =>
      cases htail with
      | nil hremaining _hsummary =>
          exact False.elim
            (completionState_remaining_ne_nil state hremaining)
  | cons face rest ih =>
      have htailNext :=
        TopPairingTargetCompletionTail.tail_next htail
      cases state with
      | prefix4YpZm =>
          rcases graph147_head_of_targetCompletionTail
              (by simpa [completionState] using htail) with hzp | htmmp
          · subst face
            exact ShardTargetSuffixOk.shard_step
              (by rfl)
              (ih (state := .prefix5YpZmZp)
                (by simpa [completionState, graph153TargetCompletionState]
                  using htailNext))
          · subst face
            exact ShardTargetSuffixOk.shard_step
              (by rfl)
              (ih (state := .prefix5YpZmTmmp)
                (by simpa [completionState, graph155TargetCompletionState]
                  using htailNext))
      | prefix5YpZmZp =>
          have hface := graph153_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih (state := .prefix6YpZmZpTmmm)
              (by simpa [completionState, graph163TargetCompletionState]
                using htailNext))
      | prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp =>
          have hface := graph69_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih
              (state :=
                .prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp)
              (by simpa [completionState, graph112TargetCompletionState]
                using htailNext))
      | prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm =>
          have hface := graph75_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih
              (state :=
                .prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp)
              (by simpa [completionState, graph109TargetCompletionState]
                using htailNext))
      | prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp =>
          have hface := graph112_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.external_step
            (by rfl)
            (hexternal
              (state :=
                .prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp)
              (graph := 141) (face := Face.xp) (gain := (-73 : Int))
              (rest := rest) (by rfl)
              (by simpa [completionState] using htailNext))
      | prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp =>
          have hface := graph109_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.external_step
            (by rfl)
            (hexternal
              (state :=
                .prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp)
              (graph := 138) (face := Face.xp) (gain := (-73 : Int))
              (rest := rest) (by rfl)
              (by simpa [completionState] using htailNext))
      | prefix9YpZmZpTmmmTpmmTppmTpmp =>
          have hface := graph208_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih (state := .prefix10YpZmZpTmmmTpmmTppmTpmpTmpm)
              (by simpa [completionState, graph6TargetCompletionState]
                using htailNext))
      | prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp =>
          have hface := graph36_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih
              (state := .prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp)
              (by simpa [completionState, graph69TargetCompletionState]
                using htailNext))
      | prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm =>
          have hface := graph41_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih
              (state :=
                .prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm)
              (by simpa [completionState, graph75TargetCompletionState]
                using htailNext))
      | prefix9YpZmTmmpTpmpTpppTpmmTmpp =>
          have hface := graph211_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih (state := .prefix10YpZmTmmpTpmpTpppTpmmTmppTppm)
              (by simpa [completionState, graph11TargetCompletionState]
                using htailNext))
      | prefix10YpZmZpTmmmTpmmTppmTpmpTmpm =>
          have hface := graph6_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih (state := .prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp)
              (by simpa [completionState, graph36TargetCompletionState]
                using htailNext))
      | prefix10YpZmTmmpTpmpTpppTpmmTmppTppm =>
          have hface := graph11_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih (state := .prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm)
              (by simpa [completionState, graph41TargetCompletionState]
                using htailNext))
      | prefix8YpZmZpTmmmTpmmTppm =>
          have hface := graph191_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih (state := .prefix9YpZmZpTmmmTpmmTppmTpmp)
              (by simpa [completionState, graph208TargetCompletionState]
                using htailNext))
      | prefix8YpZmTmmpTpmpTpppTpmm =>
          have hface := graph194_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih (state := .prefix9YpZmTmmpTpmpTpppTpmmTmpp)
              (by simpa [completionState, graph211TargetCompletionState]
                using htailNext))
      | prefix7YpZmZpTmmmTpmm =>
          have hface := graph176_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih (state := .prefix8YpZmZpTmmmTpmmTppm)
              (by simpa [completionState, graph191TargetCompletionState]
                using htailNext))
      | prefix7YpZmTmmpTpmpTppp =>
          have hface := graph178_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih (state := .prefix8YpZmTmmpTpmpTpppTpmm)
              (by simpa [completionState, graph194TargetCompletionState]
                using htailNext))
      | prefix6YpZmZpTmmm =>
          have hface := graph163_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih (state := .prefix7YpZmZpTmmmTpmm)
              (by simpa [completionState, graph176TargetCompletionState]
                using htailNext))
      | prefix6YpZmTmmpTpmp =>
          have hface := graph166_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih (state := .prefix7YpZmTmmpTpmpTppp)
              (by simpa [completionState, graph178TargetCompletionState]
                using htailNext))
      | prefix5YpZmTmmp =>
          have hface := graph155_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.shard_step
            (by rfl)
            (ih (state := .prefix6YpZmTmmpTpmp)
              (by simpa [completionState, graph166TargetCompletionState]
                using htailNext))
      | prefix4TmpmZm =>
          have hface := graph150_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.external_step
            (by rfl)
            (hexternal
              (state := .prefix4TmpmZm)
              (graph := 157) (face := Face.zp) (gain := (114 : Int))
              (rest := rest) (by rfl)
              (by simpa [completionState] using htailNext))
      | prefix4ZmTmpp =>
          have hface := graph151_head_of_targetCompletionTail
            (by simpa [completionState] using htail)
          subst face
          exact ShardTargetSuffixOk.external_step
            (by rfl)
            (hexternal
              (state := .prefix4ZmTmpp)
              (graph := 159) (face := Face.tppp) (gain := (96 : Int))
              (rest := rest) (by rfl)
              (by simpa [completionState] using htailNext))

theorem ShardTargetSuffixOk.first_step_graph_sound
    {ExternalOk : Nat -> List Face -> Prop}
    {state : ShardState} {face : Face} {rest : List Face}
    (hsuffix : ShardTargetSuffixOk ExternalOk state (face :: rest)) :
    ∃ target gain,
      nextTarget? state face = some (target, gain) ∧
        ∃ nextState : StrengthenedClosedEvalState,
          strengthenedClosedEvalNext (evalState state) face =
              some (nextState, gain) ∧
            nextState.graph = target.graph := by
  cases hsuffix with
  | shard_step hstep hrest =>
      exact ⟨_, _, hstep, nextTarget?_graph_sound hstep⟩
  | external_step hstep hrest =>
      exact ⟨_, _, hstep, nextTarget?_graph_sound hstep⟩

theorem ShardTargetSuffixOk.eval_exists_of_external
    {ExternalOk : Nat -> List Face -> Prop}
    (hexternal :
      ∀ {state : ShardState} {graph : Nat} {face : Face} {gain : Int}
          {rest : List Face},
        nextTarget? state face = some (.externalGraph graph, gain) ->
        ExternalOk graph rest ->
          ∃ nextState finish tailGain,
            strengthenedClosedEvalNext (evalState state) face =
                some (nextState, gain) ∧
              evalLabelStepFn strengthenedClosedEvalNext nextState rest =
                some (finish, tailGain))
    {state : ShardState} {labels : List Face}
    (hsuffix : ShardTargetSuffixOk ExternalOk state labels) :
    ∃ finish totalGain,
      evalLabelStepFn strengthenedClosedEvalNext (evalState state) labels =
        some (finish, totalGain) := by
  induction hsuffix with
  | shard_step hstep _hrest ih =>
      rename_i _currentState _nextShard _face stepGain _rest
      rcases ih with ⟨finish, tailGain, htail⟩
      refine ⟨finish, stepGain + tailGain, ?_⟩
      exact evalLabelStepFn_cons_some (nextTarget?_shard_sound hstep) htail
  | external_step hstep hrest =>
      rename_i _currentState _graph _face stepGain _rest
      rcases hexternal hstep hrest with
        ⟨nextState, finish, tailGain, hnextEval, htail⟩
      refine ⟨finish, stepGain + tailGain, ?_⟩
      exact evalLabelStepFn_cons_some hnextEval htail

theorem eval_exists_of_targetCompletionTail
    {ExternalOk : Nat -> List Face -> Prop}
    (hexternalOk :
      ∀ {state : ShardState} {graph : Nat} {face : Face} {gain : Int}
          {rest : List Face},
        nextTarget? state face = some (.externalGraph graph, gain) ->
        TopPairingTargetCompletionTail
          ((completionState state).next face) rest ->
          ExternalOk graph rest)
    (hexternalEval :
      ∀ {state : ShardState} {graph : Nat} {face : Face} {gain : Int}
          {rest : List Face},
        nextTarget? state face = some (.externalGraph graph, gain) ->
        ExternalOk graph rest ->
          ∃ nextState finish tailGain,
            strengthenedClosedEvalNext (evalState state) face =
                some (nextState, gain) ∧
              evalLabelStepFn strengthenedClosedEvalNext nextState rest =
                some (finish, tailGain))
    {state : ShardState} {labels : List Face}
    (htail :
      TopPairingTargetCompletionTail (completionState state) labels) :
    ∃ finish totalGain,
      evalLabelStepFn strengthenedClosedEvalNext (evalState state) labels =
        some (finish, totalGain) :=
  ShardTargetSuffixOk.eval_exists_of_external
    (ExternalOk := ExternalOk)
    hexternalEval
    (ShardTargetSuffixOk.of_targetCompletionTail
      (ExternalOk := ExternalOk) hexternalOk htail)

def localBranchTable :
    (state : ShardState) ->
      StrengthenedTargetCompletionLocalBranchTable
        (evalState state) (completionState state)
  | .prefix4YpZm => strengthenedPrefix4Graph147TargetCompletionLocalBranchTable
  | .prefix5YpZmZp => strengthenedPrefix5Graph153TargetCompletionLocalBranchTable
  | .prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp => strengthenedPrefix12Graph69TargetCompletionLocalBranchTable
  | .prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm => strengthenedPrefix12Graph75TargetCompletionLocalBranchTable
  | .prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp => strengthenedPrefix13Graph112TargetCompletionLocalBranchTable
  | .prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp => strengthenedPrefix13Graph109TargetCompletionLocalBranchTable
  | .prefix9YpZmZpTmmmTpmmTppmTpmp => strengthenedPrefix9Graph208TargetCompletionLocalBranchTable
  | .prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp => strengthenedPrefix11Graph36TargetCompletionLocalBranchTable
  | .prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm => strengthenedPrefix11Graph41TargetCompletionLocalBranchTable
  | .prefix9YpZmTmmpTpmpTpppTpmmTmpp => strengthenedPrefix9Graph211TargetCompletionLocalBranchTable
  | .prefix10YpZmZpTmmmTpmmTppmTpmpTmpm => strengthenedPrefix10Graph6TargetCompletionLocalBranchTable
  | .prefix10YpZmTmmpTpmpTpppTpmmTmppTppm => strengthenedPrefix10Graph11TargetCompletionLocalBranchTable
  | .prefix8YpZmZpTmmmTpmmTppm => strengthenedPrefix8Graph191TargetCompletionLocalBranchTable
  | .prefix8YpZmTmmpTpmpTpppTpmm => strengthenedPrefix8Graph194TargetCompletionLocalBranchTable
  | .prefix7YpZmZpTmmmTpmm => strengthenedPrefix7Graph176TargetCompletionLocalBranchTable
  | .prefix7YpZmTmmpTpmpTppp => strengthenedPrefix7Graph178TargetCompletionLocalBranchTable
  | .prefix6YpZmZpTmmm => strengthenedPrefix6Graph163TargetCompletionLocalBranchTable
  | .prefix6YpZmTmmpTpmp => strengthenedPrefix6Graph166TargetCompletionLocalBranchTable
  | .prefix5YpZmTmmp => strengthenedPrefix5Graph155TargetCompletionLocalBranchTable
  | .prefix4TmpmZm => strengthenedPrefix4Graph150TargetCompletionLocalBranchTable
  | .prefix4ZmTmpp => strengthenedPrefix4Graph151TargetCompletionLocalBranchTable

theorem localTransition
    {state : ShardState} {face : Face} {rest : List Face}
    (htail : (evalState state).Tail (face :: rest))
    (hcompletion :
      TopPairingTargetCompletionTail (completionState state) (face :: rest)) :
    ∃ branch : (localBranchTable state).Branch,
      (localBranchTable state).face branch = face ∧
        ∃ nextState : StrengthenedClosedEvalState,
          strengthenedClosedEvalNext (evalState state) face =
              some (nextState, (localBranchTable state).gain branch) ∧
            nextState.Tail rest ∧
              nextState.graph = (localBranchTable state).nextGraph branch :=
  StrengthenedTargetCompletionLocalBranchTable.localTransition
    (localBranchTable state) htail hcompletion

theorem shard000_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000
