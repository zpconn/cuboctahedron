import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket
import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.TerminalOk

/-!
Terminal-state producer socket for the top-pairing route.

This module is the next generic bridge from compact semantic terminal states to
the terminal trace producer premise.  A generated
terminal classifier can advance states with `TerminalStepState.nextStep`; once a
state has consumed thirteen labels and its completed fourteen-label trace is in
the terminal classifier, this socket proves that every closed rank contained in
that state has `TerminalTraceLabels`.

The theorem surface is rank-parametric but does not expose sampled ranks,
selected-prefix ids, accepted trace ids, exact affine RHS keys, or Bellman path
ids.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket

/--
The terminal certificate expected from a generated semantic state.

The state has consumed thirteen labels; the closed schedule forces the only
remaining label to be `xp`.  The generated terminal classifier then only needs
to prove the completed state prefix lands in `TerminalTraceLabels`.
-/
structure TerminalStepStateProducer
    (state : TerminalStepState) : Prop where
  prefix_length : state.pfx.length = 13
  terminalTrace :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (state.pfx ++ [Face.xp])

theorem terminalTraceLabels_of_terminalStepStateProducer
    {rank : Fin numPairWords} {badFace : Face}
    {state : TerminalStepState}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hcontains : TerminalStepState.Contains state rank)
    (hproducer : TerminalStepStateProducer state) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) := by
  rcases hcontains with ⟨rest, hlabels, _htail⟩
  cases rest with
  | nil =>
      have hlen : (topPairingRankFaceLabels rank).length = 14 := by
        simpa [topPairingRankFaceLabels] using hclosed.schedule.1
      rw [hlabels] at hlen
      simp [hproducer.prefix_length] at hlen
  | cons face rest =>
      cases rest with
      | nil =>
          have hfaceMem :
              face ∈ topPairingAllowedFacesAtStep state.pfx.length :=
            topPairingStepScheduleLabels_allows_next_of_prefix
              hclosed.schedule hlabels
          have hfaceMem13 :
              face ∈ topPairingAllowedFacesAtStep 13 := by
            simpa [hproducer.prefix_length] using hfaceMem
          have hface : face = Face.xp := by
            simpa [topPairingAllowedFacesAtStep] using hfaceMem13
          subst face
          have htrace :
              topPairingRankFaceLabels rank = state.pfx ++ [Face.xp] := by
            simpa using hlabels
          rw [htrace]
          exact hproducer.terminalTrace
      | cons _face' _rest' =>
          have hlen : (topPairingRankFaceLabels rank).length = 14 := by
            simpa [topPairingRankFaceLabels] using hclosed.schedule.1
          rw [hlabels] at hlen
          simp [hproducer.prefix_length] at hlen
          omega

theorem terminalStateProducerSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSocket
