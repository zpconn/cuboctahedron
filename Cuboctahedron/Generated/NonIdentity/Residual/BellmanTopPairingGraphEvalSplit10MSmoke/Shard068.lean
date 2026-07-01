import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard068

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [544, 552). -/
theorem valid_s0544 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (544 : State) label t gain ->
      gain + graphPotential t <= graphPotential (544 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0544 label = some (t, gain) at h
  simp [graphSmokeNext_s0544] at h

theorem transition_ok_s0544 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (544 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (544 : State) := by
  intro h
  change graphSmokeNext_s0544 label = some (t, gain) at h
  simp [graphSmokeNext_s0544] at h

theorem valid_s0545 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (545 : State) label t gain ->
      gain + graphPotential t <= graphPotential (545 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0545 label = some (t, gain) at h
  simp [graphSmokeNext_s0545] at h

theorem transition_ok_s0545 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (545 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (545 : State) := by
  intro h
  change graphSmokeNext_s0545 label = some (t, gain) at h
  simp [graphSmokeNext_s0545] at h

theorem valid_s0546 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (546 : State) label t gain ->
      gain + graphPotential t <= graphPotential (546 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0546 label = some (t, gain) at h
  simp [graphSmokeNext_s0546] at h

theorem transition_ok_s0546 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (546 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (546 : State) := by
  intro h
  change graphSmokeNext_s0546 label = some (t, gain) at h
  simp [graphSmokeNext_s0546] at h

theorem valid_s0547 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (547 : State) label t gain ->
      gain + graphPotential t <= graphPotential (547 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0547 label = some (t, gain) at h
  simp [graphSmokeNext_s0547] at h

theorem transition_ok_s0547 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (547 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (547 : State) := by
  intro h
  change graphSmokeNext_s0547 label = some (t, gain) at h
  simp [graphSmokeNext_s0547] at h

theorem valid_s0548 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (548 : State) label t gain ->
      gain + graphPotential t <= graphPotential (548 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0548 label = some (t, gain) at h
  simp [graphSmokeNext_s0548] at h

theorem transition_ok_s0548 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (548 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (548 : State) := by
  intro h
  change graphSmokeNext_s0548 label = some (t, gain) at h
  simp [graphSmokeNext_s0548] at h

theorem valid_s0549 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (549 : State) label t gain ->
      gain + graphPotential t <= graphPotential (549 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0549 label = some (t, gain) at h
  simp [graphSmokeNext_s0549] at h

theorem transition_ok_s0549 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (549 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (549 : State) := by
  intro h
  change graphSmokeNext_s0549 label = some (t, gain) at h
  simp [graphSmokeNext_s0549] at h

theorem valid_s0550 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (550 : State) label t gain ->
      gain + graphPotential t <= graphPotential (550 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0550 label = some (t, gain) at h
  simp [graphSmokeNext_s0550] at h

theorem transition_ok_s0550 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (550 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (550 : State) := by
  intro h
  change graphSmokeNext_s0550 label = some (t, gain) at h
  simp [graphSmokeNext_s0550] at h

theorem valid_s0551 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (551 : State) label t gain ->
      gain + graphPotential t <= graphPotential (551 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0551 label = some (t, gain) at h
  simp [graphSmokeNext_s0551] at h

theorem transition_ok_s0551 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (551 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (551 : State) := by
  intro h
  change graphSmokeNext_s0551 label = some (t, gain) at h
  simp [graphSmokeNext_s0551] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 544 <= s) (hhi : s < 552) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0544 h
  · exact valid_s0545 h
  · exact valid_s0546 h
  · exact valid_s0547 h
  · exact valid_s0548 h
  · exact valid_s0549 h
  · exact valid_s0550 h
  · exact valid_s0551 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 544 <= s) (hhi : s < 552) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0544 h
  · exact transition_ok_s0545 h
  · exact transition_ok_s0546 h
  · exact transition_ok_s0547 h
  · exact transition_ok_s0548 h
  · exact transition_ok_s0549 h
  · exact transition_ok_s0550 h
  · exact transition_ok_s0551 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard068
