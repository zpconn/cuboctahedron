import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard067

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [536, 544). -/
theorem valid_s0536 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (536 : State) label t gain ->
      gain + graphPotential t <= graphPotential (536 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0536 label = some (t, gain) at h
  simp [graphSmokeNext_s0536] at h

theorem transition_ok_s0536 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (536 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (536 : State) := by
  intro h
  change graphSmokeNext_s0536 label = some (t, gain) at h
  simp [graphSmokeNext_s0536] at h

theorem valid_s0537 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (537 : State) label t gain ->
      gain + graphPotential t <= graphPotential (537 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0537 label = some (t, gain) at h
  simp [graphSmokeNext_s0537] at h

theorem transition_ok_s0537 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (537 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (537 : State) := by
  intro h
  change graphSmokeNext_s0537 label = some (t, gain) at h
  simp [graphSmokeNext_s0537] at h

theorem valid_s0538 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (538 : State) label t gain ->
      gain + graphPotential t <= graphPotential (538 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0538 label = some (t, gain) at h
  simp [graphSmokeNext_s0538] at h

theorem transition_ok_s0538 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (538 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (538 : State) := by
  intro h
  change graphSmokeNext_s0538 label = some (t, gain) at h
  simp [graphSmokeNext_s0538] at h

theorem valid_s0539 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (539 : State) label t gain ->
      gain + graphPotential t <= graphPotential (539 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0539 label = some (t, gain) at h
  simp [graphSmokeNext_s0539] at h

theorem transition_ok_s0539 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (539 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (539 : State) := by
  intro h
  change graphSmokeNext_s0539 label = some (t, gain) at h
  simp [graphSmokeNext_s0539] at h

theorem valid_s0540 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (540 : State) label t gain ->
      gain + graphPotential t <= graphPotential (540 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0540 label = some (t, gain) at h
  simp [graphSmokeNext_s0540] at h

theorem transition_ok_s0540 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (540 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (540 : State) := by
  intro h
  change graphSmokeNext_s0540 label = some (t, gain) at h
  simp [graphSmokeNext_s0540] at h

theorem valid_s0541 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (541 : State) label t gain ->
      gain + graphPotential t <= graphPotential (541 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0541 label = some (t, gain) at h
  simp [graphSmokeNext_s0541] at h

theorem transition_ok_s0541 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (541 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (541 : State) := by
  intro h
  change graphSmokeNext_s0541 label = some (t, gain) at h
  simp [graphSmokeNext_s0541] at h

theorem valid_s0542 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (542 : State) label t gain ->
      gain + graphPotential t <= graphPotential (542 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0542 label = some (t, gain) at h
  simp [graphSmokeNext_s0542] at h

theorem transition_ok_s0542 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (542 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (542 : State) := by
  intro h
  change graphSmokeNext_s0542 label = some (t, gain) at h
  simp [graphSmokeNext_s0542] at h

theorem valid_s0543 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (543 : State) label t gain ->
      gain + graphPotential t <= graphPotential (543 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0543 label = some (t, gain) at h
  simp [graphSmokeNext_s0543] at h

theorem transition_ok_s0543 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (543 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (543 : State) := by
  intro h
  change graphSmokeNext_s0543 label = some (t, gain) at h
  simp [graphSmokeNext_s0543] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 536 <= s) (hhi : s < 544) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0536 h
  · exact valid_s0537 h
  · exact valid_s0538 h
  · exact valid_s0539 h
  · exact valid_s0540 h
  · exact valid_s0541 h
  · exact valid_s0542 h
  · exact valid_s0543 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 536 <= s) (hhi : s < 544) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0536 h
  · exact transition_ok_s0537 h
  · exact transition_ok_s0538 h
  · exact transition_ok_s0539 h
  · exact transition_ok_s0540 h
  · exact transition_ok_s0541 h
  · exact transition_ok_s0542 h
  · exact transition_ok_s0543 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard067
