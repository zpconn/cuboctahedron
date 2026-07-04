import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4TargetCompletionBranchSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedNextFrontierSmoke

/-!
Local-step composition socket for target-completion Bellman branches.

The target-completion branch socket asks a generated family to classify a
whole remaining suffix from a semantic `TopPairingTargetCompletionTail` state.
This file factors the intended production proof one step further: a local
semantic branch table advances the deterministic Bellman evaluator and the
target-completion state by one face, then a continuation proves the smaller
suffix.

This is still a theorem surface.  It introduces no sampled ranks, selected
prefixes, accepted trace ids, exact affine keys, raw paths, or rank tables.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4TargetCompletionLocalStepSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedFinish
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4TargetCompletionBranchSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

/--
One local target-completion step plus a continuation.

The `evalTail` and `completionTail` fields are semantic membership facts for
the current branch prefix.  The `table` field gives the deterministic local
Bellman transition.  The `classify_after` field is the continuation after the
local face has been consumed.
-/
structure StrengthenedDepth11Layer4TargetCompletionLocalStepFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (face₀ face₁ : Face)
    (evalState : StrengthenedClosedEvalState)
    (completionState : TopPairingTargetCompletionState)
    (table :
      StrengthenedTargetCompletionLocalBranchTable
        evalState completionState) : Prop where
  evalTail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank face₀ face₁ rest ->
          evalState.Tail rest
  completionTail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank face₀ face₁ rest ->
          TopPairingTargetCompletionTail completionState rest
  rest_nonempty :
    ∀ rest,
      TopPairingTargetCompletionTail completionState rest ->
        ∃ face restTail, rest = face :: restTail
  classify_after :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank face₀ face₁ rest ->
          ∀ face restTail,
            rest = face :: restTail ->
            ∀ branch,
              table.face branch = face ->
              ∀ nextState,
                strengthenedClosedEvalNext evalState face =
                    some (nextState, table.gain branch) ->
                nextState.Tail restTail ->
                nextState.graph = table.nextGraph branch ->
                TopPairingTargetCompletionTail
                  (completionState.next face) restTail ->
                  Depth11Layer4MappedClassCase scaledMargin rank

theorem targetCompletionBranchFamily_of_localStepFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {face₀ face₁ : Face}
    {evalState : StrengthenedClosedEvalState}
    {completionState : TopPairingTargetCompletionState}
    {table :
      StrengthenedTargetCompletionLocalBranchTable
        evalState completionState}
    (hfamily :
      StrengthenedDepth11Layer4TargetCompletionLocalStepFamily
        scaledMargin sequenceBadFace face₀ face₁ evalState completionState
        table) :
    StrengthenedDepth11Layer4TargetCompletionBranchFamily
      scaledMargin sequenceBadFace face₀ face₁ completionState where
  tail := by
    intro rank hstrengthened rest hprefix
    exact hfamily.completionTail rank hstrengthened rest hprefix
  classify := by
    intro rank hstrengthened rest hprefix hcompletion
    have hevalTail := hfamily.evalTail rank hstrengthened rest hprefix
    rcases hfamily.rest_nonempty rest hcompletion with
      ⟨face, restTail, hrest⟩
    subst rest
    rcases StrengthenedTargetCompletionLocalBranchTable.localTransition
        table hevalTail hcompletion with
      ⟨branch, hface, nextState, hnext, htailNext, hgraphNext⟩
    exact
      hfamily.classify_after rank hstrengthened (face :: restTail)
        hprefix face restTail rfl branch hface nextState hnext
        htailNext hgraphNext
        (TopPairingTargetCompletionTail.tail_next hcompletion)

theorem graph150_rest_nonempty_of_targetCompletionTail
    {rest : List Face}
    (h : Graph150TargetCompletionTail rest) :
    ∃ face restTail, rest = face :: restTail := by
  cases rest with
  | nil =>
      cases h with
      | nil hremaining _hsummary =>
          simp [graph150TargetCompletionState] at hremaining
  | cons face restTail =>
      exact ⟨face, restTail, rfl⟩

theorem graph151_rest_nonempty_of_targetCompletionTail
    {rest : List Face}
    (h : Graph151TargetCompletionTail rest) :
    ∃ face restTail, rest = face :: restTail := by
  cases rest with
  | nil =>
      cases h with
      | nil hremaining _hsummary =>
          simp [graph151TargetCompletionState] at hremaining
  | cons face restTail =>
      exact ⟨face, restTail, rfl⟩

theorem targetCompletionLocalStepSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4TargetCompletionLocalStepSocket
