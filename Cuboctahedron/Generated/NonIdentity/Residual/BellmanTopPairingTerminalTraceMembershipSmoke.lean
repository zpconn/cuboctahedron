import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket

/-!
Bounded semantic membership smoke for terminal top-pairing traces.

This file tests the next production-facing shape without sampled rank/path
objects: a rank in a semantic terminal prefix state is shown to land in the
terminal trace classifier.  The selected state is intentionally tiny, but the
proof uses closed-language schedule data to force the final label rather than
requiring a stored full path.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalTraceMembershipSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket

def SmokeTerminalPrefix : List Face :=
  (acceptedTraceOfId AcceptedTraceId.t000).take 13

def ClosedRankInSmokeTerminalState (rank : Fin numPairWords) : Prop :=
  TopPairingClosedLanguageAtRank rank Face.ym /\
    ∃ rest : List Face,
      topPairingRankFaceLabels rank = SmokeTerminalPrefix ++ rest

theorem smokeTerminalPrefix_length :
    SmokeTerminalPrefix.length = 13 := by
  rfl

theorem smokeTerminalPrefix_append_xp :
    SmokeTerminalPrefix ++ [Face.xp] =
      acceptedTraceOfId AcceptedTraceId.t000 := by
  rfl

theorem terminalTraceLabels_of_smokeTerminalState
    {rank : Fin numPairWords}
    (hstate : ClosedRankInSmokeTerminalState rank) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) := by
  rcases hstate with ⟨hclosed, rest, hlabels⟩
  cases rest with
  | nil =>
      have hlen : (topPairingRankFaceLabels rank).length = 14 := by
        simpa [topPairingRankFaceLabels] using hclosed.schedule.1
      rw [hlabels] at hlen
      norm_num [SmokeTerminalPrefix, acceptedTraceOfId, acceptedFaceTrace_000] at hlen
  | cons face rest =>
      cases rest with
      | nil =>
          have hfaceMem :
              face ∈ topPairingAllowedFacesAtStep SmokeTerminalPrefix.length :=
            topPairingStepScheduleLabels_allows_next_of_prefix
              hclosed.schedule hlabels
          have hface : face = Face.xp := by
            have hfaceMem13 :
                face ∈ topPairingAllowedFacesAtStep 13 := by
              simpa [smokeTerminalPrefix_length] using hfaceMem
            simpa [topPairingAllowedFacesAtStep] using hfaceMem13
          subst face
          have htrace :
              topPairingRankFaceLabels rank =
                acceptedTraceOfId AcceptedTraceId.t000 := by
            calc
              topPairingRankFaceLabels rank = SmokeTerminalPrefix ++ [Face.xp] := by
                simpa using hlabels
              _ = acceptedTraceOfId AcceptedTraceId.t000 :=
                smokeTerminalPrefix_append_xp
          exact Or.inr
            (Or.inl
              (graphAcceptedTraceLabels_of_id
                AcceptedTraceId.t000 htrace))
      | cons face' rest' =>
          have hlen : (topPairingRankFaceLabels rank).length = 14 := by
            simpa [topPairingRankFaceLabels] using hclosed.schedule.1
          rw [hlabels] at hlen
          norm_num [SmokeTerminalPrefix, acceptedTraceOfId, acceptedFaceTrace_000] at hlen
          omega

theorem terminalDirectClosedFamily_of_smokeTerminalState
    {rank : Fin numPairWords}
    (hstate : ClosedRankInSmokeTerminalState rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym) :
    TerminalDirectClosedFamily rank :=
  ⟨hstate.1, hactual, hbad,
    terminalTraceLabels_of_smokeTerminalState hstate⟩

theorem nonIdentityRankKilled_of_smokeTerminalState
    {rank : Fin numPairWords}
    (hstate : ClosedRankInSmokeTerminalState rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_terminalDirectClosedFamily
    (terminalDirectClosedFamily_of_smokeTerminalState
      hstate hactual hbad)

theorem terminal_trace_membership_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalTraceMembershipSmoke
