import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEval1MSmoke
import Cuboctahedron.Search.TopPairingIntLocalAxis

/-!
Lean socket for the sole missing transition in the aligned 1M Bellman graph.

The closure audit for the `with-step-face-linear-tri-source` graph found one
legal transition that is not present in the graph table: state `19` on face
`tmmp`.  Its only completion is the generated sequence-bad-face rejected trace
`rejectedGraphTrace_004`.  This module records that obstruction inside Lean so
the next production membership theorem can use the strengthened bad-face
predicate rather than selected-prefix objects.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingMissingTransition1MSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEval1MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted

def missingState19TmmpPrefix : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm,
    Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp]

def missingState19TmmpCompletion : List Face :=
  missingState19TmmpPrefix ++ [Face.tmmp, Face.tmpp, Face.yp, Face.xp]

theorem missingState19TmmpCompletion_eq_rejectedGraphTrace004 :
    missingState19TmmpCompletion = rejectedGraphTrace_004 := by
  rfl

theorem graph_state19_tmmp_missing :
    graphSmokeNext (19 : State) (smokeLabelOfFace Face.tmmp) = none := by
  rfl

def missingState19TmmpSemanticTransducerState : TopPairingTransducerState where
  step := 10
  gap := 6
  k := 6
  parity := ({ x := true, y := true, z := false } : SqParity)
  linear := topPairingLinearAfterFaces (matId : Mat3 Rat)
    missingState19TmmpPrefix

def missingState19TmmpSemanticEvalState : FaceEvalState where
  transducer := missingState19TmmpSemanticTransducerState
  graph := (19 : State)

def missingState19TmmpPrefixEval : FaceEvalState × Int :=
  match
      evalLabelStepFn faceEvalNext
        (TopPairingTransducerEvalState.start rootState)
        missingState19TmmpPrefix with
  | some result => result
  | none => (TopPairingTransducerEvalState.start rootState, 0)

theorem missingState19TmmpPrefix_eval_eq :
    evalLabelStepFn faceEvalNext
      (TopPairingTransducerEvalState.start rootState)
      missingState19TmmpPrefix =
        some missingState19TmmpPrefixEval := by
  rfl

theorem missingState19TmmpPrefix_eval_graph :
    missingState19TmmpPrefixEval.1.graph = (19 : State) := by
  rfl

theorem missingState19TmmpPrefix_eval_gain :
    missingState19TmmpPrefixEval.2 = (-130 : Int) := by
  rfl

theorem missingState19TmmpPrefix_eval_step :
    missingState19TmmpPrefixEval.1.transducer.step = 10 := by
  rfl

theorem missingState19TmmpPrefix_eval_gap :
    missingState19TmmpPrefixEval.1.transducer.gap = 6 := by
  rfl

theorem missingState19TmmpPrefix_eval_k :
    missingState19TmmpPrefixEval.1.transducer.k = 6 := by
  rfl

theorem missingState19TmmpPrefix_eval_parity :
    missingState19TmmpPrefixEval.1.transducer.parity =
      ({ x := true, y := true, z := false } : SqParity) := by
  rfl

theorem missingState19TmmpPrefix_eval_exists_graph :
    ∃ state gain,
      evalLabelStepFn faceEvalNext
        (TopPairingTransducerEvalState.start rootState)
        missingState19TmmpPrefix = some (state, gain) ∧
        state.graph = (19 : State) := by
  refine ⟨missingState19TmmpPrefixEval.1,
    missingState19TmmpPrefixEval.2, ?_, ?_⟩
  · simpa using missingState19TmmpPrefix_eval_eq
  · exact missingState19TmmpPrefix_eval_graph

private theorem cursor7_after_tmmp_suffix_head_of_schedule
    {f0 f1 : Face}
    (hcursor :
      TopPairingTriCursorFrom 7
        ({ x := true, y := true, z := false } : SqParity)
        [f0, f1, Face.xp])
    (hf0 : f0 ∈ topPairingAllowedFacesAtStep 11)
    (hf1 : f1 ∈ topPairingAllowedFacesAtStep 12)
    (hsquare : TopPairingSquareGapFrom 7 [f0, f1, Face.xp]) :
    f0 = Face.tmpp := by
  have hacted := TopPairingTriCursorFrom.actedTriLetters_eq_drop hcursor
  cases f0 <;> cases f1 <;>
    simp [actedTriLettersFrom, triLetterOfFace?, pairOfFace,
      TriLetter.ofPairId?, TriLetter.act, TriLetter.ofSigns,
      TriLetter.yNeg, TriLetter.zNeg, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor,
      topPairingAllowedFacesAtStep,
      TopPairingSquareGapFrom, topPairingAllowedSquareFacesAtGap,
      isSquarePair, topPairingTargetShadow] at hacted hf0 hf1 hsquare ⊢

def missingState19TmmpTmppPrefix : List Face :=
  missingState19TmmpPrefix ++ [Face.tmmp, Face.tmpp]

def missingState19TmmpTmppScaledLinear : Mat3 Int where
  m00 := 4959
  m01 := -3312
  m02 := 2736
  m10 := 1008
  m11 := 4959
  m12 := 4176
  m20 := -4176
  m21 := -2736
  m22 := 4257

theorem missingState19TmmpTmpp_scaledProduct_eq :
    scaledLinearAfterFaces (matId : Mat3 Int)
      missingState19TmmpTmppPrefix =
        missingState19TmmpTmppScaledLinear := by
  apply Mat3.ext <;>
    norm_num [missingState19TmmpTmppPrefix, missingState19TmmpPrefix,
      missingState19TmmpTmppScaledLinear, scaledLinearAfterFaces,
      faceScaledLinearInt, faceLinearScale, normalInt, matMul, matSub,
      scalarMat, outer, matId, dot]

theorem missingState19TmmpTmpp_scale_eq :
    linearScaleAfterFaces 1 missingState19TmmpTmppPrefix = 6561 := by
  norm_num [missingState19TmmpTmppPrefix, missingState19TmmpPrefix,
    linearScaleAfterFaces, faceLinearScale]

theorem missingState19TmmpTmpp_scaledLinear_cast :
    missingState19TmmpTmppScaledLinear.map (fun z : Int => (z : Rat)) =
      scalarMat (6561 : Rat)
        (topPairingNextLinear
          (topPairingNextLinear
            missingState19TmmpSemanticEvalState.transducer.linear Face.tmmp)
          Face.tmpp) := by
  have h := scaledLinearAfterFaces_from_identity_cast
    missingState19TmmpTmppPrefix
  rw [missingState19TmmpTmpp_scaledProduct_eq,
    missingState19TmmpTmpp_scale_eq] at h
  rw [missingState19TmmpTmppPrefix] at h
  rw [show missingState19TmmpPrefix ++ [Face.tmmp, Face.tmpp] =
      (missingState19TmmpPrefix ++ [Face.tmmp]) ++ [Face.tmpp] by simp] at h
  rw [topPairingLinearAfterFaces_append_singleton] at h
  rw [topPairingLinearAfterFaces_append_singleton] at h
  simpa [missingState19TmmpSemanticEvalState,
    missingState19TmmpSemanticTransducerState, topPairingNextLinear] using h

theorem not_missingState19TmmpTmpp_axis_tmmp :
    ¬ TopPairingLocalAxisAllows
      (topPairingNextLinear
        (topPairingNextLinear
          missingState19TmmpSemanticEvalState.transducer.linear Face.tmmp)
        Face.tmpp)
      Face.tmmp := by
  exact not_localAxisAllows_of_scaled_int_dot_nonpos
    (linear := topPairingNextLinear
      (topPairingNextLinear
        missingState19TmmpSemanticEvalState.transducer.linear Face.tmmp)
      Face.tmpp)
    (scaled := missingState19TmmpTmppScaledLinear)
    (scale := 6561)
    (face := Face.tmmp)
    (by norm_num)
    missingState19TmmpTmpp_scaledLinear_cast
    (by norm_num [intLocalAxisDot, missingState19TmmpTmppScaledLinear,
      normalInt, topPairingLocalAxisInt, matVec, dot])

theorem not_missingState19TmmpTmpp_axis_zp :
    ¬ TopPairingLocalAxisAllows
      (topPairingNextLinear
        (topPairingNextLinear
          missingState19TmmpSemanticEvalState.transducer.linear Face.tmmp)
        Face.tmpp)
      Face.zp := by
  exact not_localAxisAllows_of_scaled_int_dot_nonpos
    (linear := topPairingNextLinear
      (topPairingNextLinear
        missingState19TmmpSemanticEvalState.transducer.linear Face.tmmp)
      Face.tmpp)
    (scaled := missingState19TmmpTmppScaledLinear)
    (scale := 6561)
    (face := Face.zp)
    (by norm_num)
    missingState19TmmpTmpp_scaledLinear_cast
    (by norm_num [intLocalAxisDot, missingState19TmmpTmppScaledLinear,
      normalInt, topPairingLocalAxisInt, matVec, dot])

private theorem localAxis_after_tmmp_tmpp_suffix_second_of_schedule
    {f1 : Face}
    (hlocal :
      TopPairingLocalAxisFrom
        (topPairingNextLinear
          missingState19TmmpSemanticEvalState.transducer.linear Face.tmmp)
        [Face.tmpp, f1, Face.xp])
    (hf1 : f1 ∈ topPairingAllowedFacesAtStep 12) :
    f1 = Face.yp := by
  unfold TopPairingLocalAxisFrom at hlocal
  rcases hlocal with ⟨_hface, htail⟩
  unfold TopPairingLocalAxisFrom at htail
  have hallow := htail.1
  cases f1 <;>
    simp [topPairingAllowedFacesAtStep] at hf1 ⊢
  all_goals
    first
    | rfl
    | exact False.elim
        (not_missingState19TmmpTmpp_axis_tmmp
          (by simpa [topPairingNextLinear] using hallow))
    | exact False.elim
        (not_missingState19TmmpTmpp_axis_zp
          (by simpa [topPairingNextLinear] using hallow))

theorem missingState19TmmpPrefix_tail_tmmp_rest_of_length
    {rest : List Face}
    (htail : missingState19TmmpSemanticEvalState.Tail (Face.tmmp :: rest))
    (hlen : rest.length = 3) :
    rest = [Face.tmpp, Face.yp, Face.xp] := by
  unfold TopPairingTransducerEvalState.Tail TopPairingTransducerState.Tail at htail
  simp [missingState19TmmpSemanticEvalState,
    missingState19TmmpSemanticTransducerState] at htail
  rcases (TopPairingTransducerTail.cons htail).2.2 with
    ⟨_hk, _hletter, hnextTail⟩
  cases rest with
  | nil =>
      simp at hlen
  | cons f0 rest =>
      cases rest with
      | nil =>
          simp at hlen
      | cons f1 rest =>
          cases rest with
          | nil =>
              simp at hlen
          | cons f2 rest =>
              cases rest with
              | cons f3 rest =>
                  simp at hlen
              | nil =>
                  have hsched := hnextTail.trace.schedule
                  unfold TopPairingStepScheduleFrom at hsched
                  rcases hsched with ⟨hf0, hsched⟩
                  unfold TopPairingStepScheduleFrom at hsched
                  rcases hsched with ⟨hf1, hsched⟩
                  unfold TopPairingStepScheduleFrom at hsched
                  rcases hsched with ⟨hf2, _hsched⟩
                  have hf0mem := hf0
                  have hf1mem := hf1
                  simp [topPairingAllowedFacesAtStep] at hf0 hf1 hf2
                  subst f2
                  have hcursor := hnextTail.cursor
                  have hsquare : TopPairingSquareGapFrom 7 [f0, f1, Face.xp] := by
                    simpa [topPairingNextGap, pairOfFace, isSquarePair] using
                      hnextTail.trace.squareGap
                  have hlocal := hnextTail.trace.localAxis
                  have hf0_eq :
                      f0 = Face.tmpp :=
                    cursor7_after_tmmp_suffix_head_of_schedule
                      hcursor hf0mem hf1mem hsquare
                  subst f0
                  have hf1_eq :
                      f1 = Face.yp :=
                    localAxis_after_tmmp_tmpp_suffix_second_of_schedule
                      hlocal hf1mem
                  subst f1
                  rfl

theorem missingState19TmmpCompletion_rejectedBadFace :
    GraphRejectedBadFaceTraceLabels missingState19TmmpCompletion := by
  unfold GraphRejectedBadFaceTraceLabels
  exact missingState19TmmpCompletion_eq_rejectedGraphTrace004

theorem missingState19TmmpCompletion_not_sequenceBadFace :
    ¬ SequenceBadFaceLabels missingState19TmmpCompletion Face.ym := by
  intro hbad
  exact hbad.2 missingState19TmmpCompletion_rejectedBadFace

theorem strengthened_not_missingState19TmmpCompletion
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    topPairingRankFaceLabels rank ≠ missingState19TmmpCompletion := by
  intro hlabels
  have hbad :
      SequenceBadFaceLabels missingState19TmmpCompletion Face.ym := by
    rw [← hlabels]
    exact hstrengthened.sequenceBadFace_ok
  exact missingState19TmmpCompletion_not_sequenceBadFace hbad

theorem strengthened_no_missingState19TmmpSemanticTail
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        missingState19TmmpPrefix ++ (Face.tmmp :: rest))
    (htail : missingState19TmmpSemanticEvalState.Tail (Face.tmmp :: rest))
    (hlen : rest.length = 3) :
    False := by
  have hrest :=
    missingState19TmmpPrefix_tail_tmmp_rest_of_length htail hlen
  have hcompletion :
      topPairingRankFaceLabels rank = missingState19TmmpCompletion := by
    rw [hlabels, hrest]
    rfl
  exact strengthened_not_missingState19TmmpCompletion
    hstrengthened hcompletion

def missingState150TpppPrefix : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm]

def missingState150TpppSemanticTransducerState : TopPairingTransducerState where
  step := 4
  gap := 2
  k := 1
  parity := ({ x := true, y := true, z := true } : SqParity)
  linear := topPairingLinearAfterFaces (matId : Mat3 Rat)
    missingState150TpppPrefix

def missingState150TpppSemanticEvalState : FaceEvalState where
  transducer := missingState150TpppSemanticTransducerState
  graph := (150 : State)

theorem graph_state150_tppp_missing :
    graphSmokeNext (150 : State) (smokeLabelOfFace Face.tppp) = none := by
  rfl

theorem graph_state150_zp_present :
    graphSmokeNext (150 : State) (smokeLabelOfFace Face.zp) =
      some ((157 : State), (114 : Int)) := by
  rfl

private theorem topPairingSquareGapAfter_eq_add_actedTriLetters_length
    (gap : Nat) (parity : SqParity) (labels : List Face) :
    topPairingSquareGapAfter gap labels =
      gap + (actedTriLettersFrom parity labels).length := by
  induction labels generalizing gap parity with
  | nil =>
      simp [topPairingSquareGapAfter, actedTriLettersFrom]
  | cons face rest ih =>
      cases htri : triLetterOfFace? face with
      | none =>
          have hsquare :
              isSquarePair (pairOfFace face) = true :=
            (triLetterOfFace?_eq_none_iff_square face).mp htri
          simp [topPairingSquareGapAfter, actedTriLettersFrom, htri,
            hsquare, ih (gap := gap)
              (parity := parity.applyPair (pairOfFace face))]
      | some tri =>
          have htriPair :
              isSquarePair (pairOfFace face) = false :=
            triLetterOfFace?_eq_some_iff_tri (face := face) (tri := tri) htri
          have hih :=
            ih (gap := gap + 1) (parity := parity)
          simp [topPairingSquareGapAfter, actedTriLettersFrom, htri,
            htriPair, hih, Nat.add_comm, Nat.add_left_comm]

private theorem topPairingSquareGapAfter_eq_eight_of_xp_allowed
    {gap : Nat}
    (hmem : Face.xp ∈ topPairingAllowedSquareFacesAtGap gap) :
    gap = 8 := by
  cases gap with
  | zero =>
      simp [topPairingAllowedSquareFacesAtGap] at hmem
  | succ gap =>
      cases gap with
      | zero =>
          simp [topPairingAllowedSquareFacesAtGap] at hmem
      | succ gap =>
          cases gap with
          | zero =>
              simp [topPairingAllowedSquareFacesAtGap] at hmem
          | succ gap =>
              cases gap with
              | zero =>
                  simp [topPairingAllowedSquareFacesAtGap] at hmem
              | succ gap =>
                  cases gap with
                  | zero =>
                      simp [topPairingAllowedSquareFacesAtGap] at hmem
                  | succ gap =>
                      cases gap with
                      | zero =>
                          simp [topPairingAllowedSquareFacesAtGap] at hmem
                      | succ gap =>
                          cases gap with
                          | zero =>
                              simp [topPairingAllowedSquareFacesAtGap] at hmem
                          | succ gap =>
                              cases gap with
                              | zero =>
                                  simp [topPairingAllowedSquareFacesAtGap] at hmem
                              | succ gap =>
                                  cases gap with
                                  | zero =>
                                      rfl
                                  | succ gap =>
                                      simp [topPairingAllowedSquareFacesAtGap] at hmem

private theorem no_state150_tppp_tail_of_length
    {rest : List Face}
    (htail : missingState150TpppSemanticEvalState.Tail (Face.tppp :: rest))
    (hlen : rest.length = 9) :
    False := by
  unfold TopPairingTransducerEvalState.Tail TopPairingTransducerState.Tail at htail
  simp [missingState150TpppSemanticEvalState,
    missingState150TpppSemanticTransducerState] at htail
  rcases (TopPairingTransducerTail.cons htail).2.2 with
    ⟨_hk, _hletter, hnextTail⟩
  cases rest with
  | nil =>
      simp at hlen
  | cons f0 rest =>
      cases rest with
      | nil =>
          simp at hlen
      | cons f1 rest =>
          cases rest with
          | nil =>
              simp at hlen
          | cons f2 rest =>
              cases rest with
              | nil =>
                  simp at hlen
              | cons f3 rest =>
                  cases rest with
                  | nil =>
                      simp at hlen
                  | cons f4 rest =>
                      cases rest with
                      | nil =>
                          simp at hlen
                      | cons f5 rest =>
                          cases rest with
                          | nil =>
                              simp at hlen
                          | cons f6 rest =>
                              cases rest with
                              | nil =>
                                  simp at hlen
                              | cons f7 rest =>
                                  cases rest with
                                  | nil =>
                                      simp at hlen
                                  | cons f8 rest =>
                                      cases rest with
                                      | cons f9 rest =>
                                          simp at hlen
                                      | nil =>
                                          let pfx : List Face :=
                                            [f0, f1, f2, f3, f4, f5, f6, f7]
                                          have hsched := hnextTail.trace.schedule
                                          have hf8_mem :
                                              f8 ∈ topPairingAllowedFacesAtStep 13 := by
                                            have hnext :=
                                              topPairingStepScheduleAllows_next_of_append
                                                (step := 5) (pfx := pfx)
                                                (rest := ([] : List Face))
                                                (face := f8)
                                                (by simpa [pfx] using hsched)
                                            simpa [pfx] using hnext
                                          have hf8 : f8 = Face.xp := by
                                            simpa [topPairingAllowedFacesAtStep]
                                              using hf8_mem
                                          subst f8
                                          have hsquare := hnextTail.trace.squareGap
                                          have hxpAllowed :
                                              Face.xp ∈
                                                topPairingAllowedSquareFacesAtGap
                                                  (topPairingSquareGapAfter 3 pfx) := by
                                            exact
                                              topPairingSquareGapAllows_next_of_append
                                                (gap := 3) (pfx := pfx)
                                                (rest := ([] : List Face))
                                                (face := Face.xp)
                                                (by
                                                  simpa [pfx, topPairingNextGap,
                                                    pairOfFace, isSquarePair] using
                                                    hsquare)
                                                (by decide)
                                          have hgapPfx :
                                              topPairingSquareGapAfter 3 pfx = 8 :=
                                            topPairingSquareGapAfter_eq_eight_of_xp_allowed
                                              hxpAllowed
                                          have hgapFull :
                                              topPairingSquareGapAfter 3
                                                (pfx ++ [Face.xp]) = 8 := by
                                            simpa [pfx, topPairingSquareGapAfter,
                                              hgapPfx, isSquarePair, pairOfFace]
                                          have hcursor := hnextTail.cursor
                                          have hacted :=
                                            TopPairingTriCursorFrom.actedTriLetters_eq_drop
                                              hcursor
                                          have hactedLen :
                                              (actedTriLettersFrom
                                                ({ x := true, y := true, z := true } :
                                                  SqParity)
                                                (pfx ++ [Face.xp])).length = 6 := by
                                            have hacted' :
                                                actedTriLettersFrom
                                                  ({ x := true, y := true, z := true } :
                                                    SqParity)
                                                  (pfx ++ [Face.xp]) =
                                                    topPairingTargetShadow.drop 2 := by
                                              simpa [pfx] using hacted
                                            rw [hacted']
                                            simp [topPairingTargetShadow]
                                          have hgapFullFromCursor :
                                              topPairingSquareGapAfter 3
                                                (pfx ++ [Face.xp]) = 9 := by
                                            rw [
                                              topPairingSquareGapAfter_eq_add_actedTriLetters_length
                                                (gap := 3)
                                                (parity :=
                                                  ({ x := true, y := true, z := true } :
                                                    SqParity))
                                                (labels := pfx ++ [Face.xp]),
                                              hactedLen]
                                          rw [hgapFull] at hgapFullFromCursor
                                          norm_num at hgapFullFromCursor

theorem strengthened_no_missingState150TpppSemanticTail
    {rank : Fin numPairWords}
    (_hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    {rest : List Face}
    (_hlabels :
      topPairingRankFaceLabels rank =
        missingState150TpppPrefix ++ (Face.tppp :: rest))
    (htail : missingState150TpppSemanticEvalState.Tail (Face.tppp :: rest))
    (hlen : rest.length = 9) :
    False :=
  no_state150_tppp_tail_of_length htail hlen

theorem missingTransition1MSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingMissingTransition1MSocket
