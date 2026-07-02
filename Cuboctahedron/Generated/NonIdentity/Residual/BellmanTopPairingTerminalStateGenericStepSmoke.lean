import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePrefix3Socket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket

/-!
Smoke bridge showing that the generic terminal-state step socket can reproduce
the accepted prefix-2 and prefix-3 state slices.

This is a bounded architectural check: future generated terminal classifiers
should apply the generic `contains_squareStep` / `contains_triStep` lemmas to
state IDs rather than re-emitting bespoke prefix-tail proofs for every depth.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateGenericStepSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePrefix2Socket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePrefix3Socket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket

def genericPrefix2State : TerminalStepState :=
  TerminalStepState.squareStep
    (TerminalStepState.squareStep TerminalStepState.initial Face.xm)
    Face.ym

def genericPrefix3TmpmState : TerminalStepState :=
  TerminalStepState.triStep genericPrefix2State Face.tmpm

def genericPrefix3YpState : TerminalStepState :=
  TerminalStepState.squareStep genericPrefix2State Face.yp

def genericPrefix3ZmState : TerminalStepState :=
  TerminalStepState.squareStep genericPrefix2State Face.zm

theorem prefix2Family_of_genericPrefix2State
    {rank : Fin numPairWords}
    (hgeneric : TerminalStepState.Contains genericPrefix2State rank) :
    Prefix2TerminalStateFamily rank := by
  rcases hgeneric with ⟨rest, hlabels, htail⟩
  refine ⟨rest, ?_, ?_⟩
  · simpa [genericPrefix2State, TerminalStepState.squareStep,
      TerminalStepState.initial, List.append_assoc] using hlabels
  · simpa [genericPrefix2State, TerminalStepState.squareStep,
      TerminalStepState.initial] using htail

theorem genericPrefix2State_of_closed
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    TerminalStepState.Contains genericPrefix2State rank := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym hclosed.schedule with
    ⟨rest, hlabels⟩
  have h0 : TerminalStepState.Contains TerminalStepState.initial rank :=
    initial_contains_of_closed hclosed
  have h1 :
      TerminalStepState.Contains
        (TerminalStepState.squareStep TerminalStepState.initial Face.xm)
        rank :=
    contains_squareStep h0
      (rest := Face.ym :: rest)
      (by simpa [TerminalStepState.initial, topPairingRankFaceLabels]
        using hlabels)
      (by decide : triLetterOfFace? Face.xm = none)
  have h2 :
      TerminalStepState.Contains genericPrefix2State rank :=
    contains_squareStep h1
      (rest := rest)
      (by simpa [genericPrefix2State, TerminalStepState.squareStep,
          TerminalStepState.initial, topPairingRankFaceLabels,
          List.append_assoc] using hlabels)
      (by decide : triLetterOfFace? Face.ym = none)
  exact h2

theorem prefix2Family_of_genericSteps
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    Prefix2TerminalStateFamily rank :=
  prefix2Family_of_genericPrefix2State
    (genericPrefix2State_of_closed hclosed)

theorem prefix3Tmpm_of_genericState
    {rank : Fin numPairWords}
    (hgeneric :
      TerminalStepState.Contains genericPrefix3TmpmState rank) :
    TopPairingPrefix3State.Contains TopPairingPrefix3State.afterTmpm rank := by
  rcases hgeneric with ⟨rest, hlabels, htail⟩
  refine ⟨rest, ?_, ?_⟩
  · simpa [genericPrefix3TmpmState, genericPrefix2State,
      TerminalStepState.triStep, TerminalStepState.squareStep,
      TerminalStepState.initial, List.append_assoc] using hlabels
  · simpa [genericPrefix3TmpmState, genericPrefix2State,
      TerminalStepState.triStep, TerminalStepState.squareStep,
      TerminalStepState.initial, prefix2Gap, prefix2Parity, prefix2Linear]
      using htail

theorem prefix3Yp_of_genericState
    {rank : Fin numPairWords}
    (hgeneric :
      TerminalStepState.Contains genericPrefix3YpState rank) :
    TopPairingPrefix3State.Contains TopPairingPrefix3State.afterYp rank := by
  rcases hgeneric with ⟨rest, hlabels, htail⟩
  refine ⟨rest, ?_, ?_⟩
  · simpa [genericPrefix3YpState, genericPrefix2State,
      TerminalStepState.squareStep, TerminalStepState.initial,
      List.append_assoc] using hlabels
  · simpa [genericPrefix3YpState, genericPrefix2State,
      TerminalStepState.squareStep, TerminalStepState.initial,
      prefix2Gap, prefix2Parity, prefix2Linear] using htail

theorem prefix3Zm_of_genericState
    {rank : Fin numPairWords}
    (hgeneric :
      TerminalStepState.Contains genericPrefix3ZmState rank) :
    TopPairingPrefix3State.Contains TopPairingPrefix3State.afterZm rank := by
  rcases hgeneric with ⟨rest, hlabels, htail⟩
  refine ⟨rest, ?_, ?_⟩
  · simpa [genericPrefix3ZmState, genericPrefix2State,
      TerminalStepState.squareStep, TerminalStepState.initial,
      List.append_assoc] using hlabels
  · simpa [genericPrefix3ZmState, genericPrefix2State,
      TerminalStepState.squareStep, TerminalStepState.initial,
      prefix2Gap, prefix2Parity, prefix2Linear] using htail

theorem prefix3Family_of_genericSteps
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    Prefix3TerminalStateFamily rank := by
  have hprefix2 := genericPrefix2State_of_closed hclosed
  rcases topPairingStepScheduleLabels_prefix3 hclosed.schedule with
    htmpm | hyp | hzm
  · rcases htmpm with ⟨rest, hlabels⟩
    have hgeneric :
        TerminalStepState.Contains genericPrefix3TmpmState rank :=
      contains_triStep hprefix2
        (rest := rest)
        (by simpa [genericPrefix2State, TerminalStepState.squareStep,
            TerminalStepState.initial, topPairingRankFaceLabels,
            List.append_assoc] using hlabels)
        (by decide : triLetterOfFace? Face.tmpm = some TriLetter.d1m1)
    exact Or.inl (prefix3Tmpm_of_genericState hgeneric)
  · rcases hyp with ⟨rest, hlabels⟩
    have hgeneric :
        TerminalStepState.Contains genericPrefix3YpState rank :=
      contains_squareStep hprefix2
        (rest := rest)
        (by simpa [genericPrefix2State, TerminalStepState.squareStep,
            TerminalStepState.initial, topPairingRankFaceLabels,
            List.append_assoc] using hlabels)
        (by decide : triLetterOfFace? Face.yp = none)
    exact Or.inr (Or.inl (prefix3Yp_of_genericState hgeneric))
  · rcases hzm with ⟨rest, hlabels⟩
    have hgeneric :
        TerminalStepState.Contains genericPrefix3ZmState rank :=
      contains_squareStep hprefix2
        (rest := rest)
        (by simpa [genericPrefix2State, TerminalStepState.squareStep,
            TerminalStepState.initial, topPairingRankFaceLabels,
            List.append_assoc] using hlabels)
        (by decide : triLetterOfFace? Face.zm = none)
    exact Or.inr (Or.inr (prefix3Zm_of_genericState hgeneric))

theorem prefix3Family_of_genericSteps_strengthened
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    Prefix3TerminalStateFamily rank :=
  prefix3Family_of_genericSteps hstrengthened.closed

theorem terminalStateGenericStepSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateGenericStepSmoke
