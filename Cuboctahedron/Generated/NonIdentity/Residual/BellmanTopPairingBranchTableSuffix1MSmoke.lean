import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableProgress1MSmoke

/-!
Branch-table suffix smoke for the strengthened 1M top-pairing graph.

`BellmanTopPairingStrengthenedLocal1MSmoke.StrengthenedSuffixOk` still stores
ordinary evaluator steps in its graph/table constructor.  This module records
the next producer shape: the graph constructor stores a finite
`StrengthenedBranchTable` entry, and the local evaluator step is derived from
that relation.

This is not closed-language membership yet.  It is the predicate shape the
future membership theorem should produce.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffix1MSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingMissingTransition1MSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTable1MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableProgress1MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLocal1MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEval1MSmoke

abbrev BranchInv (state : FaceEvalState) : Prop :=
  BellmanTopPairingStrengthenedLocal1MSmoke.Inv state

/--
Suffix predicate whose ordinary branch stores branch-table membership rather
than a direct `faceEvalNext` equation.
-/
inductive BranchTableSuffixOk (rank : Fin numPairWords) :
    FaceEvalState -> List Face -> Prop
  | nil (state : FaceEvalState) : BranchTableSuffixOk rank state []
  | graph {state : FaceEvalState} {face : Face} {rest : List Face}
      (hbranch : StrengthenedBranchTable state.graph face BranchKind.graph)
      (hrest :
        ∀ nextState gain,
          faceEvalNext state face = some (nextState, gain) ->
          nextState.Tail rest ->
          BranchInv nextState ->
            BranchTableSuffixOk rank nextState rest) :
      BranchTableSuffixOk rank state (face :: rest)
  | socket19Tmmp {rest : List Face}
      (hbranch :
        StrengthenedBranchTable
          missingState19TmmpSemanticEvalState.graph Face.tmmp
          BranchKind.socket19Tmmp)
      (hstrengthened :
        TopPairingStrengthenedClosedLanguageAtRank
          BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
            rank Face.ym)
      (hlabels :
        topPairingRankFaceLabels rank =
          missingState19TmmpPrefix ++ (Face.tmmp :: rest))
      (hlen : rest.length = 3) :
      BranchTableSuffixOk rank
        missingState19TmmpSemanticEvalState (Face.tmmp :: rest)
  | socket150Tppp {rest : List Face}
      (hbranch :
        StrengthenedBranchTable
          missingState150TpppSemanticEvalState.graph Face.tppp
          BranchKind.socket150Tppp)
      (hstrengthened :
        TopPairingStrengthenedClosedLanguageAtRank
          BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
            rank Face.ym)
      (hlabels :
        topPairingRankFaceLabels rank =
          missingState150TpppPrefix ++ (Face.tppp :: rest))
      (hlen : rest.length = 9) :
      BranchTableSuffixOk rank
        missingState150TpppSemanticEvalState (Face.tppp :: rest)

/--
Local evaluator progress from the branch-table suffix predicate.

The graph case consumes `faceEvalNext_of_graphBranchTable`; the socket cases are
semantic contradictions.
-/
theorem branchTableSuffixOk_local
    {rank : Fin numPairWords}
    {state : FaceEvalState} {face : Face} {rest : List Face}
    (hinv : BranchInv state)
    (htail : state.Tail (face :: rest))
    (hsuffix : BranchTableSuffixOk rank state (face :: rest)) :
    ∃ nextState gain,
      faceEvalNext state face = some (nextState, gain) ∧
        nextState.Tail rest ∧ BranchInv nextState ∧
          BranchTableSuffixOk rank nextState rest := by
  cases hsuffix with
  | graph hbranch hrest =>
      rcases faceEvalNext_of_graphBranchTable hinv htail hbranch with
        ⟨nextState, gain, hnext, htailNext, hinvNext⟩
      exact ⟨nextState, gain, hnext, htailNext, hinvNext,
        hrest nextState gain hnext htailNext hinvNext⟩
  | socket19Tmmp hbranch hstrengthened hlabels hlen =>
      exact False.elim
        (socket19TmmpBranch_impossible hbranch hstrengthened hlabels htail hlen)
  | socket150Tppp hbranch hstrengthened hlabels hlen =>
      exact False.elim
        (socket150TpppBranch_impossible hbranch hstrengthened hlabels htail hlen)

theorem eval_exists_of_branchTableSuffixOk
    {rank : Fin numPairWords}
    {state : FaceEvalState} {faces : List Face}
    (hinv : BranchInv state)
    (htail : state.Tail faces)
    (hsuffix : BranchTableSuffixOk rank state faces) :
    ∃ finish gain,
      evalLabelStepFn faceEvalNext state faces =
        some (finish, gain) ∧
        finish.Tail [] ∧ BranchInv finish ∧
          BranchTableSuffixOk rank finish [] :=
  TopPairingTransducerEvalState.evalLabelStepFn_exists_of_tail_and_invariantLocalWithSuffix
    (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
    BranchInv (BranchTableSuffixOk rank) branchTableSuffixOk_local
    hinv htail hsuffix

/--
Semantic root-prefix lift for the branch-table suffix predicate.

The top-pairing schedule already proves that every closed rank begins with
`xm, ym`.  This theorem records those two deterministic root steps through
`StrengthenedBranchTable`, so future membership emitters can start from the
semantic suffix after the Lean-proved prefix without storing direct evaluator
steps or sampled path objects.
-/
theorem branchTableSuffixOk_root_of_closedPrefix2
    {rank : Fin numPairWords}
    {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank = Face.xm :: Face.ym :: rest)
    (hsuffix : BranchTableSuffixOk rank closedPrefix2EvalState rest) :
    BranchTableSuffixOk rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) := by
  rw [hlabels]
  refine BranchTableSuffixOk.graph
    StrengthenedBranchTable.graph_000_s0000_xm ?_
  intro nextState gain hnext _htailNext _hinvNext
  rw [closed_prefix1_next] at hnext
  cases hnext
  refine BranchTableSuffixOk.graph
    StrengthenedBranchTable.graph_124_s0142_ym ?_
  intro nextState gain hnext _htailNext _hinvNext
  rw [closed_prefix2_next_from_prefix1] at hnext
  cases hnext
  exact hsuffix

theorem branchTableSuffixOk_root_of_closedPrefix2_forall
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hsuffix :
      ∀ rest : List Face,
        topPairingRankFaceLabels rank = Face.xm :: Face.ym :: rest ->
          BranchTableSuffixOk rank closedPrefix2EvalState rest) :
    BranchTableSuffixOk rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym hclosed.schedule with
    ⟨rest, hlabels⟩
  exact branchTableSuffixOk_root_of_closedPrefix2 hlabels
    (hsuffix rest hlabels)

theorem branchTableSuffix1MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffix1MSmoke
