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
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
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

def closedPrefix1TransducerState : TopPairingTransducerState where
  step := 1
  gap := topPairingNextGap 0 Face.xm
  k := 0
  parity := SqParity.id.applyPair (pairOfFace Face.xm)
  linear := topPairingNextLinear (matId : Mat3 Rat) Face.xm

def closedPrefix1EvalState : FaceEvalState where
  transducer := closedPrefix1TransducerState
  graph := (142 : State)

theorem closed_prefix1_next :
    faceEvalNext (TopPairingTransducerEvalState.start rootState) Face.xm =
      some (closedPrefix1EvalState, (103 : Int)) := by
  rfl

theorem closed_prefix2_next_from_prefix1 :
    faceEvalNext closedPrefix1EvalState Face.ym =
      some (closedPrefix2EvalState, (-73 : Int)) := by
  rfl

/--
Semantic root-prefix lift for the strengthened suffix predicate.

The top-pairing schedule already proves that every closed rank begins with
`xm, ym`; this theorem turns coverage of the remaining suffix from
`closedPrefix2EvalState` into root coverage.  Future generated semantic
constructors can therefore start after the Lean-proved deterministic prefix
instead of carrying a sampled root trace.
-/
theorem strengthenedSuffixOk_root_of_closedPrefix2
    {rank : Fin numPairWords}
    {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank = Face.xm :: Face.ym :: rest)
    (hsuffix : StrengthenedSuffixOk rank closedPrefix2EvalState rest) :
    StrengthenedSuffixOk rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) := by
  rw [hlabels]
  exact StrengthenedSuffixOk.table closed_prefix1_next
    (StrengthenedSuffixOk.table closed_prefix2_next_from_prefix1 hsuffix)

theorem strengthenedSuffixOk_root_of_closedPrefix2_forall
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hsuffix :
      ∀ rest : List Face,
        topPairingRankFaceLabels rank = Face.xm :: Face.ym :: rest ->
          StrengthenedSuffixOk rank closedPrefix2EvalState rest) :
    StrengthenedSuffixOk rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym hclosed.schedule with
    ⟨rest, hlabels⟩
  exact strengthenedSuffixOk_root_of_closedPrefix2 hlabels
    (hsuffix rest hlabels)

theorem strengthenedSuffixOk_closedPrefix2_branch_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {face : Face} {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: face :: rest)
    (hsuffix :
      ∀ nextState gain,
        faceEvalNext closedPrefix2EvalState face = some (nextState, gain) ->
        nextState.Tail rest ->
          StrengthenedSuffixOk rank nextState rest) :
    StrengthenedSuffixOk rank closedPrefix2EvalState (face :: rest) := by
  rcases closed_prefix2_branch_faceEval hclosed hlabels with
    ⟨nextState, gain, hnext, htailNext⟩
  exact StrengthenedSuffixOk.table hnext
    (hsuffix nextState gain hnext htailNext)

/--
Semantic branch lift after the Lean-proved `xm, ym` prefix.

The schedule restricts the third face to `tmpm`, `yp`, or `zm`, and
`closed_prefix2_branch_faceEval` proves that each such semantic branch follows
the 1M graph table.  This theorem makes those branch suffixes the next
generated obligation, without terminal trace classes or selected-prefix
objects.
-/
theorem strengthenedSuffixOk_root_of_closedPrefix3_forall
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hsuffix :
      ∀ face rest nextState gain,
        topPairingRankFaceLabels rank =
          Face.xm :: Face.ym :: face :: rest ->
        faceEvalNext closedPrefix2EvalState face = some (nextState, gain) ->
        nextState.Tail rest ->
          StrengthenedSuffixOk rank nextState rest) :
    StrengthenedSuffixOk rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) := by
  rcases topPairingStepScheduleLabels_prefix3 hclosed.schedule with
    htmpm | hyp | hzm
  · rcases htmpm with ⟨rest, hlabels⟩
    exact strengthenedSuffixOk_root_of_closedPrefix2 hlabels
      (strengthenedSuffixOk_closedPrefix2_branch_of_closed
        hclosed hlabels
        (fun nextState gain hnext htailNext =>
          hsuffix Face.tmpm rest nextState gain hlabels hnext htailNext))
  · rcases hyp with ⟨rest, hlabels⟩
    exact strengthenedSuffixOk_root_of_closedPrefix2 hlabels
      (strengthenedSuffixOk_closedPrefix2_branch_of_closed
        hclosed hlabels
        (fun nextState gain hnext htailNext =>
          hsuffix Face.yp rest nextState gain hlabels hnext htailNext))
  · rcases hzm with ⟨rest, hlabels⟩
    exact strengthenedSuffixOk_root_of_closedPrefix2 hlabels
      (strengthenedSuffixOk_closedPrefix2_branch_of_closed
        hclosed hlabels
        (fun nextState gain hnext htailNext =>
          hsuffix Face.zm rest nextState gain hlabels hnext htailNext))

def closedPrefix3TmpmTransducerState : TopPairingTransducerState where
  step := 3
  gap := topPairingNextGap
    (topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym) Face.tmpm
  k := 1
  parity := (SqParity.id.applyPair (pairOfFace Face.xm)).applyPair
    (pairOfFace Face.ym)
  linear := topPairingNextLinear
    (topPairingNextLinear
      (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym)
    Face.tmpm

def closedPrefix3TmpmEvalState : FaceEvalState where
  transducer := closedPrefix3TmpmTransducerState
  graph := (146 : State)

def closedPrefix3YpTransducerState : TopPairingTransducerState where
  step := 3
  gap := topPairingNextGap
    (topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym) Face.yp
  k := 0
  parity := ((SqParity.id.applyPair (pairOfFace Face.xm)).applyPair
    (pairOfFace Face.ym)).applyPair (pairOfFace Face.yp)
  linear := topPairingNextLinear
    (topPairingNextLinear
      (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym)
    Face.yp

def closedPrefix3YpEvalState : FaceEvalState where
  transducer := closedPrefix3YpTransducerState
  graph := (144 : State)

def closedPrefix3ZmTransducerState : TopPairingTransducerState where
  step := 3
  gap := topPairingNextGap
    (topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym) Face.zm
  k := 0
  parity := ((SqParity.id.applyPair (pairOfFace Face.xm)).applyPair
    (pairOfFace Face.ym)).applyPair (pairOfFace Face.zm)
  linear := topPairingNextLinear
    (topPairingNextLinear
      (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym)
    Face.zm

def closedPrefix3ZmEvalState : FaceEvalState where
  transducer := closedPrefix3ZmTransducerState
  graph := (145 : State)

theorem closed_prefix3_tmpm_next :
    faceEvalNext closedPrefix2EvalState Face.tmpm =
      some (closedPrefix3TmpmEvalState, (-124 : Int)) := by
  rfl

theorem closed_prefix3_yp_next :
    faceEvalNext closedPrefix2EvalState Face.yp =
      some (closedPrefix3YpEvalState, (-73 : Int)) := by
  rfl

theorem closed_prefix3_zm_next :
    faceEvalNext closedPrefix2EvalState Face.zm =
      some (closedPrefix3ZmEvalState, (-10 : Int)) := by
  rfl

private theorem closed_prefix3_tmpm_tail
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: Face.tmpm :: rest) :
    closedPrefix3TmpmEvalState.Tail rest := by
  have htail2 : closedPrefix2EvalState.Tail (Face.tmpm :: rest) :=
    closed_prefix2_tail hclosed hlabels
  have hgraph :
      graphSmokeNext closedPrefix2EvalState.graph
          (smokeLabelOfFace Face.tmpm) =
        some ((146 : State), (-124 : Int)) := by
    rfl
  rcases TopPairingTransducerEvalState.next?_tail
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
      htail2 hgraph with
    ⟨nextState, hnext, htailNext, _hgraphNext⟩
  change faceEvalNext closedPrefix2EvalState Face.tmpm =
    some (nextState, (-124 : Int)) at hnext
  rw [closed_prefix3_tmpm_next] at hnext
  cases hnext
  exact htailNext

private theorem closed_prefix3_yp_tail
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: Face.yp :: rest) :
    closedPrefix3YpEvalState.Tail rest := by
  have htail2 : closedPrefix2EvalState.Tail (Face.yp :: rest) :=
    closed_prefix2_tail hclosed hlabels
  have hgraph :
      graphSmokeNext closedPrefix2EvalState.graph
          (smokeLabelOfFace Face.yp) =
        some ((144 : State), (-73 : Int)) := by
    rfl
  rcases TopPairingTransducerEvalState.next?_tail
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
      htail2 hgraph with
    ⟨nextState, hnext, htailNext, _hgraphNext⟩
  change faceEvalNext closedPrefix2EvalState Face.yp =
    some (nextState, (-73 : Int)) at hnext
  rw [closed_prefix3_yp_next] at hnext
  cases hnext
  exact htailNext

private theorem closed_prefix3_zm_tail
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: Face.zm :: rest) :
    closedPrefix3ZmEvalState.Tail rest := by
  have htail2 : closedPrefix2EvalState.Tail (Face.zm :: rest) :=
    closed_prefix2_tail hclosed hlabels
  have hgraph :
      graphSmokeNext closedPrefix2EvalState.graph
          (smokeLabelOfFace Face.zm) =
        some ((145 : State), (-10 : Int)) := by
    rfl
  rcases TopPairingTransducerEvalState.next?_tail
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
      htail2 hgraph with
    ⟨nextState, hnext, htailNext, _hgraphNext⟩
  change faceEvalNext closedPrefix2EvalState Face.zm =
    some (nextState, (-10 : Int)) at hnext
  rw [closed_prefix3_zm_next] at hnext
  cases hnext
  exact htailNext

theorem closed_prefix3_tmpm_branch_faceEval
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {face : Face} {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: Face.tmpm :: face :: rest) :
    ∃ nextState : FaceEvalState, ∃ gain : Int,
      faceEvalNext closedPrefix3TmpmEvalState face =
        some (nextState, gain) ∧
        nextState.Tail rest := by
  have htail : closedPrefix3TmpmEvalState.Tail (face :: rest) :=
    closed_prefix3_tmpm_tail hclosed hlabels
  have htailRaw :
      TopPairingTransducerTail
        closedPrefix3TmpmEvalState.transducer.step
        closedPrefix3TmpmEvalState.transducer.gap
        closedPrefix3TmpmEvalState.transducer.k
        closedPrefix3TmpmEvalState.transducer.parity
        closedPrefix3TmpmEvalState.transducer.linear (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · -- xp
    simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- xm
    simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- yp
    have hsquare := htailRaw.trace.squareGap
    simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingNextGap, TopPairingSquareGapFrom,
      topPairingAllowedSquareFacesAtGap,
      pairOfFace, isSquarePair] at hsquare
  · -- ym
    simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- zp
    have haxis := hcons.2.1
    simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear, topPairingLocalAxis,
      normalQ, matVec,
      matMul, reflM, matSub, scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · -- zm
    have hgraph :
        graphSmokeNext closedPrefix3TmpmEvalState.graph
            (smokeLabelOfFace Face.zm) =
          some ((150 : State), (114 : Int)) := by
      rfl
    rcases TopPairingTransducerEvalState.next?_tail
        (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
        htail hgraph with
      ⟨nextState, hnext, htailNext, _hgraphNext⟩
    exact ⟨nextState, (114 : Int), hnext, htailNext⟩
  · -- tmmm
    simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.xor, SqParity.id,
      pairOfFace,
      topPairingTargetShadow] at hcons
  · -- tmmp
    simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- tmpm
    simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- tmpp
    simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.xor, SqParity.id,
      pairOfFace,
      topPairingTargetShadow] at hcons
  · -- tpmm
    simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- tpmp
    simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- tppm
    have hgraph :
        graphSmokeNext closedPrefix3TmpmEvalState.graph
            (smokeLabelOfFace Face.tppm) =
          some ((152 : State), (96 : Int)) := by
      rfl
    rcases TopPairingTransducerEvalState.next?_tail
        (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
        htail hgraph with
      ⟨nextState, hnext, htailNext, _hgraphNext⟩
    exact ⟨nextState, (96 : Int), hnext, htailNext⟩
  · -- tppp
    simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons

theorem closed_prefix3_yp_branch_faceEval
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {face : Face} {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: Face.yp :: face :: rest) :
    ∃ nextState : FaceEvalState, ∃ gain : Int,
      faceEvalNext closedPrefix3YpEvalState face =
        some (nextState, gain) ∧
        nextState.Tail rest := by
  have htail : closedPrefix3YpEvalState.Tail (face :: rest) :=
    closed_prefix3_yp_tail hclosed hlabels
  have htailRaw :
      TopPairingTransducerTail
        closedPrefix3YpEvalState.transducer.step
        closedPrefix3YpEvalState.transducer.gap
        closedPrefix3YpEvalState.transducer.k
        closedPrefix3YpEvalState.transducer.parity
        closedPrefix3YpEvalState.transducer.linear (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · -- xp
    simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- xm
    simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- yp
    have haxis := hcons.2.1
    simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear, topPairingLocalAxis,
      normalQ, matVec,
      matMul, reflM, matSub, scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · -- ym
    simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- zp
    have haxis := hcons.2.1
    simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear, topPairingLocalAxis,
      normalQ, matVec,
      matMul, reflM, matSub, scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · -- zm
    have hgraph :
        graphSmokeNext closedPrefix3YpEvalState.graph
            (smokeLabelOfFace Face.zm) =
          some ((147 : State), (-10 : Int)) := by
      rfl
    rcases TopPairingTransducerEvalState.next?_tail
        (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
        htail hgraph with
      ⟨nextState, hnext, htailNext, _hgraphNext⟩
    exact ⟨nextState, (-10 : Int), hnext, htailNext⟩
  · -- tmmm
    have hgraph :
        graphSmokeNext closedPrefix3YpEvalState.graph
            (smokeLabelOfFace Face.tmmm) =
          some ((148 : State), (-124 : Int)) := by
      rfl
    rcases TopPairingTransducerEvalState.next?_tail
        (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
        htail hgraph with
      ⟨nextState, hnext, htailNext, _hgraphNext⟩
    exact ⟨nextState, (-124 : Int), hnext, htailNext⟩
  · -- tmmp
    simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- tmpm
    simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- tmpp
    simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.xor, SqParity.id,
      pairOfFace,
      topPairingTargetShadow] at hcons
  · -- tpmm
    simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- tpmp
    simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- tppm
    simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.xor, SqParity.id,
      pairOfFace,
      topPairingTargetShadow] at hcons
  · -- tppp
    simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons

theorem closed_prefix3_zm_branch_faceEval
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {face : Face} {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: Face.zm :: face :: rest) :
    ∃ nextState : FaceEvalState, ∃ gain : Int,
      faceEvalNext closedPrefix3ZmEvalState face =
        some (nextState, gain) ∧
        nextState.Tail rest := by
  have htail : closedPrefix3ZmEvalState.Tail (face :: rest) :=
    closed_prefix3_zm_tail hclosed hlabels
  have htailRaw :
      TopPairingTransducerTail
        closedPrefix3ZmEvalState.transducer.step
        closedPrefix3ZmEvalState.transducer.gap
        closedPrefix3ZmEvalState.transducer.k
        closedPrefix3ZmEvalState.transducer.parity
        closedPrefix3ZmEvalState.transducer.linear (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · -- xp
    simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- xm
    simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- yp
    have hgraph :
        graphSmokeNext closedPrefix3ZmEvalState.graph
            (smokeLabelOfFace Face.yp) =
          some ((147 : State), (-73 : Int)) := by
      rfl
    rcases TopPairingTransducerEvalState.next?_tail
        (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
        htail hgraph with
      ⟨nextState, hnext, htailNext, _hgraphNext⟩
    exact ⟨nextState, (-73 : Int), hnext, htailNext⟩
  · -- ym
    simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- zp
    have hgraph :
        graphSmokeNext closedPrefix3ZmEvalState.graph
            (smokeLabelOfFace Face.zp) =
          some ((149 : State), (-10 : Int)) := by
      rfl
    rcases TopPairingTransducerEvalState.next?_tail
        (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
        htail hgraph with
      ⟨nextState, hnext, htailNext, _hgraphNext⟩
    exact ⟨nextState, (-10 : Int), hnext, htailNext⟩
  · -- zm
    have haxis := hcons.2.1
    simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear, topPairingLocalAxis,
      normalQ, matVec,
      matMul, reflM, matSub, scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · -- tmmm
    have haxis := hcons.2.1
    simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear, topPairingLocalAxis,
      normalQ, matVec,
      matMul, reflM, matSub, scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · -- tmmp
    simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- tmpm
    simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- tmpp
    have hgraph :
        graphSmokeNext closedPrefix3ZmEvalState.graph
            (smokeLabelOfFace Face.tmpp) =
          some ((151 : State), (-124 : Int)) := by
      rfl
    rcases TopPairingTransducerEvalState.next?_tail
        (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
        htail hgraph with
      ⟨nextState, hnext, htailNext, _hgraphNext⟩
    exact ⟨nextState, (-124 : Int), hnext, htailNext⟩
  · -- tpmm
    simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- tpmp
    simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · -- tppm
    have haxis := hcons.2.1
    simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear, topPairingLocalAxis,
      normalQ, matVec,
      matMul, reflM, matSub, scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · -- tppp
    simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons

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

theorem strengthenedSuffixOk_of_graphAcceptedTraceLabels
    (rank : Fin numPairWords) {labels : List Face}
    (haccepted : GraphAcceptedTraceLabels labels) :
    StrengthenedSuffixOk rank
      (TopPairingTransducerEvalState.start rootState) labels := by
  unfold GraphAcceptedTraceLabels at haccepted
  rcases haccepted with
    h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 |
    h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 |
    h22 | h23 | h24 | h25 | h26 | h27 | h28 | h29 | h30 | h31 |
    h32 | h33 | h34 | h35 | h36
  all_goals
    subst labels
    simp only [acceptedFaceTrace_000, acceptedFaceTrace_001,
      acceptedFaceTrace_002, acceptedFaceTrace_003, acceptedFaceTrace_004,
      acceptedFaceTrace_005, acceptedFaceTrace_006, acceptedFaceTrace_007,
      acceptedFaceTrace_008, acceptedFaceTrace_009, acceptedFaceTrace_010,
      acceptedFaceTrace_011, acceptedFaceTrace_012, acceptedFaceTrace_013,
      acceptedFaceTrace_014, acceptedFaceTrace_015, acceptedFaceTrace_016,
      acceptedFaceTrace_017, acceptedFaceTrace_018, acceptedFaceTrace_019,
      acceptedFaceTrace_020, acceptedFaceTrace_021, acceptedFaceTrace_022,
      acceptedFaceTrace_023, acceptedFaceTrace_024, acceptedFaceTrace_025,
      acceptedFaceTrace_026, acceptedFaceTrace_027, acceptedFaceTrace_028,
      acceptedFaceTrace_029, acceptedFaceTrace_030, acceptedFaceTrace_031,
      acceptedFaceTrace_032, acceptedFaceTrace_033, acceptedFaceTrace_034,
      acceptedFaceTrace_035, acceptedFaceTrace_036]
    repeat
      first
      | exact StrengthenedSuffixOk.nil _
      | refine StrengthenedSuffixOk.table (by rfl) ?_

theorem strengthenedSuffixOk_of_strengthenedTerminalOk
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (topPairingRankFaceLabels rank)) :
    StrengthenedSuffixOk rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) :=
  strengthenedSuffixOk_of_graphAcceptedTraceLabels rank
    (graphAcceptedTraceLabels_of_strengthenedTerminalOk hstrengthened hterm)

private theorem start_tail_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    (TopPairingTransducerEvalState.start rootState).Tail
      (topPairingRankFaceLabels rank) := by
  simpa [TopPairingTransducerEvalState.Tail, TopPairingTransducerEvalState.start,
    TopPairingTransducerState.Tail] using
      TopPairingTransducerState.start_tail_of_closed hclosed

theorem eval_exists_of_strengthenedTerminalOk
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (topPairingRankFaceLabels rank)) :
    ∃ finish gain,
      evalLabelStepFn faceEvalNext
        (TopPairingTransducerEvalState.start rootState)
        (topPairingRankFaceLabels rank) =
          some (finish, gain) ∧
        finish.Tail [] ∧ Inv finish ∧ StrengthenedSuffixOk rank finish [] :=
  eval_exists_of_strengthenedSuffixOk
    start_inv
    (start_tail_of_closed hstrengthened.closed)
    (strengthenedSuffixOk_of_strengthenedTerminalOk hstrengthened hterm)

theorem strengthenedLocal1MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLocal1MSmoke
