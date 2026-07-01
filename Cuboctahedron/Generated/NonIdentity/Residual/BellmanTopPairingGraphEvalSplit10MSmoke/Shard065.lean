import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard065

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [520, 528). -/
theorem valid_s0520 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (520 : State) label t gain ->
      gain + graphPotential t <= graphPotential (520 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0520 label = some (t, gain) at h
  simp [graphSmokeNext_s0520] at h

theorem transition_ok_s0520 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (520 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (520 : State) := by
  intro h
  change graphSmokeNext_s0520 label = some (t, gain) at h
  simp [graphSmokeNext_s0520] at h

theorem valid_s0521 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (521 : State) label t gain ->
      gain + graphPotential t <= graphPotential (521 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0521 label = some (t, gain) at h
  simp [graphSmokeNext_s0521] at h

theorem transition_ok_s0521 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (521 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (521 : State) := by
  intro h
  change graphSmokeNext_s0521 label = some (t, gain) at h
  simp [graphSmokeNext_s0521] at h

theorem valid_s0522 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (522 : State) label t gain ->
      gain + graphPotential t <= graphPotential (522 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0522 label = some (t, gain) at h
  simp [graphSmokeNext_s0522] at h

theorem transition_ok_s0522 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (522 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (522 : State) := by
  intro h
  change graphSmokeNext_s0522 label = some (t, gain) at h
  simp [graphSmokeNext_s0522] at h

theorem valid_s0523 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (523 : State) label t gain ->
      gain + graphPotential t <= graphPotential (523 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0523 label = some (t, gain) at h
  simp [graphSmokeNext_s0523] at h

theorem transition_ok_s0523 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (523 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (523 : State) := by
  intro h
  change graphSmokeNext_s0523 label = some (t, gain) at h
  simp [graphSmokeNext_s0523] at h

theorem valid_s0524 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (524 : State) label t gain ->
      gain + graphPotential t <= graphPotential (524 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0524 label = some (t, gain) at h
  simp [graphSmokeNext_s0524] at h

theorem transition_ok_s0524 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (524 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (524 : State) := by
  intro h
  change graphSmokeNext_s0524 label = some (t, gain) at h
  simp [graphSmokeNext_s0524] at h

theorem valid_s0525 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (525 : State) label t gain ->
      gain + graphPotential t <= graphPotential (525 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0525 label = some (t, gain) at h
  simp [graphSmokeNext_s0525] at h

theorem transition_ok_s0525 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (525 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (525 : State) := by
  intro h
  change graphSmokeNext_s0525 label = some (t, gain) at h
  simp [graphSmokeNext_s0525] at h

theorem valid_s0526 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (526 : State) label t gain ->
      gain + graphPotential t <= graphPotential (526 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0526 label = some (t, gain) at h
  simp [graphSmokeNext_s0526] at h

theorem transition_ok_s0526 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (526 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (526 : State) := by
  intro h
  change graphSmokeNext_s0526 label = some (t, gain) at h
  simp [graphSmokeNext_s0526] at h

theorem valid_s0527 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (527 : State) label t gain ->
      gain + graphPotential t <= graphPotential (527 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0527 label = some (t, gain) at h
  simp [graphSmokeNext_s0527] at h

theorem transition_ok_s0527 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (527 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (527 : State) := by
  intro h
  change graphSmokeNext_s0527 label = some (t, gain) at h
  simp [graphSmokeNext_s0527] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 520 <= s) (hhi : s < 528) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0520 h
  · exact valid_s0521 h
  · exact valid_s0522 h
  · exact valid_s0523 h
  · exact valid_s0524 h
  · exact valid_s0525 h
  · exact valid_s0526 h
  · exact valid_s0527 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 520 <= s) (hhi : s < 528) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0520 h
  · exact transition_ok_s0521 h
  · exact transition_ok_s0522 h
  · exact transition_ok_s0523 h
  · exact transition_ok_s0524 h
  · exact transition_ok_s0525 h
  · exact transition_ok_s0526 h
  · exact transition_ok_s0527 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard065
