import Cuboctahedron.Search.TopPairingTransducerTail

/-!
Reusable local state-step socket for the top-pairing terminal classifier.

This module factors the prefix-2/prefix-3 proof pattern into a small semantic
state API.  A state carries a consumed face prefix and the corresponding
`TopPairingTransducerTail` invariant for the remaining suffix.  Local square
and triangular transitions consume exactly one face.

The intended generated terminal classifier should case-split on these state
constructors and local faces, not on sampled ranks or accepted trace ids.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket

open Cuboctahedron

structure TerminalStepState where
  pfx : List Face
  step : Nat
  gap : Nat
  k : Nat
  parity : SqParity
  linear : Mat3 Rat

namespace TerminalStepState

def Contains (state : TerminalStepState)
    (rank : Fin numPairWords) : Prop :=
  ∃ rest : List Face,
    topPairingRankFaceLabels rank = state.pfx ++ rest ∧
      TopPairingTransducerTail state.step state.gap state.k
        state.parity state.linear rest

def initial : TerminalStepState where
  pfx := []
  step := 0
  gap := 0
  k := 0
  parity := SqParity.id
  linear := matId

def squareStep (state : TerminalStepState) (face : Face) :
    TerminalStepState where
  pfx := state.pfx ++ [face]
  step := state.step + 1
  gap := topPairingNextGap state.gap face
  k := state.k
  parity := state.parity.applyPair (pairOfFace face)
  linear := topPairingNextLinear state.linear face

def triStep (state : TerminalStepState) (face : Face) :
    TerminalStepState where
  pfx := state.pfx ++ [face]
  step := state.step + 1
  gap := topPairingNextGap state.gap face
  k := state.k + 1
  parity := state.parity
  linear := topPairingNextLinear state.linear face

def nextStep (state : TerminalStepState) (face : Face) :
    TerminalStepState :=
  match triLetterOfFace? face with
  | none => state.squareStep face
  | some _tri => state.triStep face

theorem nextStep_eq_squareStep
    (state : TerminalStepState) {face : Face}
    (hsquare : triLetterOfFace? face = none) :
    state.nextStep face = state.squareStep face := by
  simp [nextStep, hsquare]

theorem nextStep_eq_triStep
    (state : TerminalStepState) {face : Face} {tri : TriLetter}
    (htri : triLetterOfFace? face = some tri) :
    state.nextStep face = state.triStep face := by
  simp [nextStep, htri]

end TerminalStepState

private theorem append_left_cancel_face
    {pfx rest₀ rest : List Face} {face : Face}
    (h : pfx ++ rest₀ = pfx ++ face :: rest) :
    rest₀ = face :: rest := by
  exact List.append_cancel_left h

theorem initial_contains_of_closed
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    TerminalStepState.Contains TerminalStepState.initial rank := by
  refine ⟨topPairingRankFaceLabels rank, ?_, ?_⟩
  · simp [TerminalStepState.initial]
  · simpa [TerminalStepState.initial] using
      TopPairingTransducerTail.ofClosedRank hclosed

theorem contains_squareStep
    {rank : Fin numPairWords}
    {state : TerminalStepState} {face : Face} {rest : List Face}
    (hcontains : TerminalStepState.Contains state rank)
    (hlabels :
      topPairingRankFaceLabels rank = state.pfx ++ face :: rest)
    (hsquare : triLetterOfFace? face = none) :
    TerminalStepState.Contains
      (TerminalStepState.squareStep state face) rank := by
  rcases hcontains with ⟨rest₀, hlabels₀, htail⟩
  have hrest₀ : rest₀ = face :: rest := by
    apply append_left_cancel_face (pfx := state.pfx)
    rw [← hlabels₀, hlabels]
  subst rest₀
  refine ⟨rest, ?_, ?_⟩
  · simpa [TerminalStepState.squareStep, List.append_assoc] using hlabels
  · simpa [TerminalStepState.squareStep] using
      TopPairingTransducerTail.cons_square_tail htail hsquare

theorem contains_triStep
    {rank : Fin numPairWords}
    {state : TerminalStepState} {face : Face} {rest : List Face}
    {tri : TriLetter}
    (hcontains : TerminalStepState.Contains state rank)
    (hlabels :
      topPairingRankFaceLabels rank = state.pfx ++ face :: rest)
    (htri : triLetterOfFace? face = some tri) :
    TerminalStepState.Contains
      (TerminalStepState.triStep state face) rank := by
  rcases hcontains with ⟨rest₀, hlabels₀, htail⟩
  have hrest₀ : rest₀ = face :: rest := by
    apply append_left_cancel_face (pfx := state.pfx)
    rw [← hlabels₀, hlabels]
  subst rest₀
  refine ⟨rest, ?_, ?_⟩
  · simpa [TerminalStepState.triStep, List.append_assoc] using hlabels
  ·
    rcases TopPairingTransducerTail.cons_tri_tail htail htri with
      ⟨_hk, _hletter, htail'⟩
    simpa [TerminalStepState.triStep] using htail'

theorem contains_nextStep
    {rank : Fin numPairWords}
    {state : TerminalStepState} {face : Face} {rest : List Face}
    (hcontains : TerminalStepState.Contains state rank)
    (hlabels :
      topPairingRankFaceLabels rank = state.pfx ++ face :: rest) :
    TerminalStepState.Contains
      (TerminalStepState.nextStep state face) rank := by
  unfold TerminalStepState.nextStep
  cases htri : triLetterOfFace? face with
  | none =>
      exact contains_squareStep hcontains hlabels htri
  | some tri =>
      exact contains_triStep hcontains hlabels htri

theorem terminalStateStepSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket
