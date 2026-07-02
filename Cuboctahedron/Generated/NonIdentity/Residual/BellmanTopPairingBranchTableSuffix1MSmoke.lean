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

theorem branchTableSuffix1MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffix1MSmoke
