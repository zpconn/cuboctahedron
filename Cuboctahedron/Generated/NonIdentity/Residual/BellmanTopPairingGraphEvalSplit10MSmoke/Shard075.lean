import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard075

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [600, 608). -/
theorem valid_s0600 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (600 : State) label t gain ->
      gain + graphPotential t <= graphPotential (600 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0600 label = some (t, gain) at h
  simp [graphSmokeNext_s0600] at h

theorem transition_ok_s0600 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (600 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (600 : State) := by
  intro h
  change graphSmokeNext_s0600 label = some (t, gain) at h
  simp [graphSmokeNext_s0600] at h

theorem valid_s0601 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (601 : State) label t gain ->
      gain + graphPotential t <= graphPotential (601 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0601 label = some (t, gain) at h
  simp [graphSmokeNext_s0601] at h

theorem transition_ok_s0601 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (601 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (601 : State) := by
  intro h
  change graphSmokeNext_s0601 label = some (t, gain) at h
  simp [graphSmokeNext_s0601] at h

theorem valid_s0602 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (602 : State) label t gain ->
      gain + graphPotential t <= graphPotential (602 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0602 label = some (t, gain) at h
  simp [graphSmokeNext_s0602] at h

theorem transition_ok_s0602 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (602 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (602 : State) := by
  intro h
  change graphSmokeNext_s0602 label = some (t, gain) at h
  simp [graphSmokeNext_s0602] at h

theorem valid_s0603 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (603 : State) label t gain ->
      gain + graphPotential t <= graphPotential (603 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0603 label = some (t, gain) at h
  simp [graphSmokeNext_s0603] at h

theorem transition_ok_s0603 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (603 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (603 : State) := by
  intro h
  change graphSmokeNext_s0603 label = some (t, gain) at h
  simp [graphSmokeNext_s0603] at h

theorem valid_s0604 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (604 : State) label t gain ->
      gain + graphPotential t <= graphPotential (604 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0604 label = some (t, gain) at h
  simp [graphSmokeNext_s0604] at h

theorem transition_ok_s0604 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (604 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (604 : State) := by
  intro h
  change graphSmokeNext_s0604 label = some (t, gain) at h
  simp [graphSmokeNext_s0604] at h

theorem valid_s0605 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (605 : State) label t gain ->
      gain + graphPotential t <= graphPotential (605 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0605 label = some (t, gain) at h
  simp [graphSmokeNext_s0605] at h

theorem transition_ok_s0605 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (605 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (605 : State) := by
  intro h
  change graphSmokeNext_s0605 label = some (t, gain) at h
  simp [graphSmokeNext_s0605] at h

theorem valid_s0606 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (606 : State) label t gain ->
      gain + graphPotential t <= graphPotential (606 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0606 label = some (t, gain) at h
  simp [graphSmokeNext_s0606] at h

theorem transition_ok_s0606 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (606 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (606 : State) := by
  intro h
  change graphSmokeNext_s0606 label = some (t, gain) at h
  simp [graphSmokeNext_s0606] at h

theorem valid_s0607 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (607 : State) label t gain ->
      gain + graphPotential t <= graphPotential (607 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0607 label = some (t, gain) at h
  simp [graphSmokeNext_s0607] at h

theorem transition_ok_s0607 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (607 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (607 : State) := by
  intro h
  change graphSmokeNext_s0607 label = some (t, gain) at h
  simp [graphSmokeNext_s0607] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 600 <= s) (hhi : s < 608) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0600 h
  · exact valid_s0601 h
  · exact valid_s0602 h
  · exact valid_s0603 h
  · exact valid_s0604 h
  · exact valid_s0605 h
  · exact valid_s0606 h
  · exact valid_s0607 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 600 <= s) (hhi : s < 608) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0600 h
  · exact transition_ok_s0601 h
  · exact transition_ok_s0602 h
  · exact transition_ok_s0603 h
  · exact transition_ok_s0604 h
  · exact transition_ok_s0605 h
  · exact transition_ok_s0606 h
  · exact transition_ok_s0607 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard075
