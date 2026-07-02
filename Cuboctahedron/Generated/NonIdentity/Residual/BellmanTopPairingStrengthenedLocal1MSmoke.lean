import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingInvariantSuffix1MSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingMissingTransition1MSocket

/-!
Strengthened local-transition smoke for the aligned 1M top-pairing graph.

The ordinary invariant/suffix smoke proves eval progress from a graph-accepted
suffix predicate.  This module records the first production-shaped exception:
the only missing graph transition, state `19` on face `tmmp`, is impossible for
the strengthened closed language.  The theorem is intentionally semantic: it is
keyed by the strengthened closed rank predicate and the deterministic
transducer tail, not by a sampled rank/path index.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLocal1MSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingMissingTransition1MSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEval1MSmoke

/--
Minimal suffix predicate for the missing-transition socket.

The production version should carry this style of semantic information through
the full evaluator: a strengthened closed rank, the current semantic state, the
remaining rank-label suffix, and its length.  It deliberately contains no
sampled index and no selected-prefix object.
-/
def StrengthenedMissingSuffixOk
    (rank : Fin numPairWords) (state : FaceEvalState)
    (suffix : List Face) : Prop :=
  TopPairingStrengthenedClosedLanguageAtRank
      AcceptedSequenceBadFaceAtRank rank Face.ym ∧
    state = missingState19TmmpSemanticEvalState ∧
    topPairingRankFaceLabels rank =
      missingState19TmmpPrefix ++ suffix ∧
    suffix.length = 4

/--
Local progress for the sole missing graph edge follows ex falso from the
strengthened semantic language: any semantic tail beginning with `tmmp` at
state `19` must be the rejected graph trace `004`, but the strengthened
bad-face predicate excludes that trace.
-/
theorem strengthened_missing_tmmp_local_progress
    {rank : Fin numPairWords} {rest : List Face}
    (hsuffix :
      StrengthenedMissingSuffixOk rank
        missingState19TmmpSemanticEvalState (Face.tmmp :: rest))
    (htail :
      missingState19TmmpSemanticEvalState.Tail (Face.tmmp :: rest)) :
    ∃ nextState gain,
      faceEvalNext missingState19TmmpSemanticEvalState Face.tmmp =
        some (nextState, gain) := by
  rcases hsuffix with ⟨hstrengthened, _hstate, hlabels, hlen⟩
  have hrestLen : rest.length = 3 := by
    simpa using hlen
  exact False.elim
    (strengthened_no_missingState19TmmpSemanticTail
      hstrengthened hlabels htail hrestLen)

/-- The graph-state range invariant reused by the strengthened local smoke. -/
def Inv (state : FaceEvalState) : Prop :=
  state.graph < stateCount

theorem start_inv :
    Inv (TopPairingTransducerEvalState.start rootState) := by
  norm_num [Inv, TopPairingTransducerEvalState.start, rootState, stateCount]

private theorem tail_of_next
    {state nextState : FaceEvalState} {face : Face} {rest : List Face}
    {gain : Int}
    (htail : state.Tail (face :: rest))
    (hnext : faceEvalNext state face = some (nextState, gain)) :
    nextState.Tail rest := by
  have hgraph :=
    TopPairingTransducerEvalState.graph_next_of_next?
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace) hnext
  rcases TopPairingTransducerEvalState.next?_tail
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
      htail hgraph with
    ⟨tableNextState, htableNext, htailNext, _hgraphNext⟩
  change
    TopPairingTransducerEvalState.next? graphSmokeNext smokeLabelOfFace
      state face = some (nextState, gain) at hnext
  rw [hnext] at htableNext
  cases htableNext
  exact htailNext

private theorem inv_of_next
    {state nextState : FaceEvalState} {face : Face} {gain : Int}
    (hinv : Inv state)
    (hnext : faceEvalNext state face = some (nextState, gain)) :
    Inv nextState := by
  have hgraph :=
    TopPairingTransducerEvalState.graph_next_of_next?
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace) hnext
  exact
    (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Root.transition_ok_of_lt
      hinv hgraph).1

/--
Suffix predicate with the production-shaped strengthened exception.

The `table` branch is the ordinary generated graph suffix.  The
`missing19Tmmp` branch records the single over-approximate semantic transition
that the graph table lacks; local closure discharges it from the strengthened
closed-language contradiction instead of storing a sampled trace.
-/
inductive StrengthenedSuffixOk (rank : Fin numPairWords) :
    FaceEvalState -> List Face -> Prop
  | nil (state : FaceEvalState) : StrengthenedSuffixOk rank state []
  | table {state nextState : FaceEvalState} {face : Face} {rest : List Face}
      {gain : Int}
      (hnext : faceEvalNext state face = some (nextState, gain))
      (hrest : StrengthenedSuffixOk rank nextState rest) :
      StrengthenedSuffixOk rank state (face :: rest)
  | missing19Tmmp {rest : List Face}
      (hstrengthened :
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym)
      (hlabels :
        topPairingRankFaceLabels rank =
          missingState19TmmpPrefix ++ (Face.tmmp :: rest))
      (hlen : rest.length = 3) :
      StrengthenedSuffixOk rank
        missingState19TmmpSemanticEvalState (Face.tmmp :: rest)

theorem strengthenedSuffixOk_local
    {rank : Fin numPairWords}
    {state : FaceEvalState} {face : Face} {rest : List Face}
    (hinv : Inv state)
    (htail : state.Tail (face :: rest))
    (hsuffix : StrengthenedSuffixOk rank state (face :: rest)) :
    ∃ nextState gain,
      faceEvalNext state face = some (nextState, gain) ∧
        nextState.Tail rest ∧ Inv nextState ∧
          StrengthenedSuffixOk rank nextState rest := by
  cases hsuffix with
  | table hnext hrest =>
      exact ⟨_, _, hnext, tail_of_next htail hnext, inv_of_next hinv hnext,
        hrest⟩
  | missing19Tmmp hstrengthened hlabels hlen =>
      exact False.elim
        (strengthened_no_missingState19TmmpSemanticTail
          hstrengthened hlabels htail hlen)

theorem eval_exists_of_strengthenedSuffixOk
    {rank : Fin numPairWords}
    {state : FaceEvalState} {faces : List Face}
    (hinv : Inv state)
    (htail : state.Tail faces)
    (hsuffix : StrengthenedSuffixOk rank state faces) :
    ∃ finish gain,
      evalLabelStepFn faceEvalNext state faces =
        some (finish, gain) ∧
        finish.Tail [] ∧ Inv finish ∧
          StrengthenedSuffixOk rank finish [] :=
  TopPairingTransducerEvalState.evalLabelStepFn_exists_of_tail_and_invariantLocalWithSuffix
    (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
    Inv (StrengthenedSuffixOk rank) strengthenedSuffixOk_local
    hinv htail hsuffix

theorem strengthenedLocal1MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLocal1MSmoke
