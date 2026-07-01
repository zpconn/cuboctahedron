import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard074

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [592, 600). -/
theorem valid_s0592 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (592 : State) label t gain ->
      gain + graphPotential t <= graphPotential (592 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0592 label = some (t, gain) at h
  simp [graphSmokeNext_s0592] at h

theorem transition_ok_s0592 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (592 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (592 : State) := by
  intro h
  change graphSmokeNext_s0592 label = some (t, gain) at h
  simp [graphSmokeNext_s0592] at h

theorem valid_s0593 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (593 : State) label t gain ->
      gain + graphPotential t <= graphPotential (593 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0593 label = some (t, gain) at h
  simp [graphSmokeNext_s0593] at h

theorem transition_ok_s0593 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (593 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (593 : State) := by
  intro h
  change graphSmokeNext_s0593 label = some (t, gain) at h
  simp [graphSmokeNext_s0593] at h

theorem valid_s0594 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (594 : State) label t gain ->
      gain + graphPotential t <= graphPotential (594 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0594 label = some (t, gain) at h
  simp [graphSmokeNext_s0594] at h

theorem transition_ok_s0594 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (594 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (594 : State) := by
  intro h
  change graphSmokeNext_s0594 label = some (t, gain) at h
  simp [graphSmokeNext_s0594] at h

theorem valid_s0595 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (595 : State) label t gain ->
      gain + graphPotential t <= graphPotential (595 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0595 label = some (t, gain) at h
  simp [graphSmokeNext_s0595] at h

theorem transition_ok_s0595 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (595 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (595 : State) := by
  intro h
  change graphSmokeNext_s0595 label = some (t, gain) at h
  simp [graphSmokeNext_s0595] at h

theorem valid_s0596 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (596 : State) label t gain ->
      gain + graphPotential t <= graphPotential (596 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0596 label = some (t, gain) at h
  simp [graphSmokeNext_s0596] at h

theorem transition_ok_s0596 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (596 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (596 : State) := by
  intro h
  change graphSmokeNext_s0596 label = some (t, gain) at h
  simp [graphSmokeNext_s0596] at h

theorem valid_s0597 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (597 : State) label t gain ->
      gain + graphPotential t <= graphPotential (597 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0597 label = some (t, gain) at h
  simp [graphSmokeNext_s0597] at h

theorem transition_ok_s0597 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (597 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (597 : State) := by
  intro h
  change graphSmokeNext_s0597 label = some (t, gain) at h
  simp [graphSmokeNext_s0597] at h

theorem valid_s0598 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (598 : State) label t gain ->
      gain + graphPotential t <= graphPotential (598 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0598 label = some (t, gain) at h
  simp [graphSmokeNext_s0598] at h

theorem transition_ok_s0598 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (598 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (598 : State) := by
  intro h
  change graphSmokeNext_s0598 label = some (t, gain) at h
  simp [graphSmokeNext_s0598] at h

theorem valid_s0599 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (599 : State) label t gain ->
      gain + graphPotential t <= graphPotential (599 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0599 label = some (t, gain) at h
  simp [graphSmokeNext_s0599] at h

theorem transition_ok_s0599 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (599 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (599 : State) := by
  intro h
  change graphSmokeNext_s0599 label = some (t, gain) at h
  simp [graphSmokeNext_s0599] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 592 <= s) (hhi : s < 600) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0592 h
  · exact valid_s0593 h
  · exact valid_s0594 h
  · exact valid_s0595 h
  · exact valid_s0596 h
  · exact valid_s0597 h
  · exact valid_s0598 h
  · exact valid_s0599 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 592 <= s) (hhi : s < 600) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0592 h
  · exact transition_ok_s0593 h
  · exact transition_ok_s0594 h
  · exact transition_ok_s0595 h
  · exact transition_ok_s0596 h
  · exact transition_ok_s0597 h
  · exact transition_ok_s0598 h
  · exact transition_ok_s0599 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard074
