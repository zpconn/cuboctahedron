import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard070

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [560, 568). -/
theorem valid_s0560 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (560 : State) label t gain ->
      gain + graphPotential t <= graphPotential (560 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0560 label = some (t, gain) at h
  simp [graphSmokeNext_s0560] at h

theorem transition_ok_s0560 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (560 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (560 : State) := by
  intro h
  change graphSmokeNext_s0560 label = some (t, gain) at h
  simp [graphSmokeNext_s0560] at h

theorem valid_s0561 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (561 : State) label t gain ->
      gain + graphPotential t <= graphPotential (561 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0561 label = some (t, gain) at h
  simp [graphSmokeNext_s0561] at h

theorem transition_ok_s0561 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (561 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (561 : State) := by
  intro h
  change graphSmokeNext_s0561 label = some (t, gain) at h
  simp [graphSmokeNext_s0561] at h

theorem valid_s0562 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (562 : State) label t gain ->
      gain + graphPotential t <= graphPotential (562 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0562 label = some (t, gain) at h
  simp [graphSmokeNext_s0562] at h

theorem transition_ok_s0562 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (562 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (562 : State) := by
  intro h
  change graphSmokeNext_s0562 label = some (t, gain) at h
  simp [graphSmokeNext_s0562] at h

theorem valid_s0563 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (563 : State) label t gain ->
      gain + graphPotential t <= graphPotential (563 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0563 label = some (t, gain) at h
  simp [graphSmokeNext_s0563] at h

theorem transition_ok_s0563 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (563 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (563 : State) := by
  intro h
  change graphSmokeNext_s0563 label = some (t, gain) at h
  simp [graphSmokeNext_s0563] at h

theorem valid_s0564 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (564 : State) label t gain ->
      gain + graphPotential t <= graphPotential (564 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0564 label = some (t, gain) at h
  simp [graphSmokeNext_s0564] at h

theorem transition_ok_s0564 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (564 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (564 : State) := by
  intro h
  change graphSmokeNext_s0564 label = some (t, gain) at h
  simp [graphSmokeNext_s0564] at h

theorem valid_s0565 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (565 : State) label t gain ->
      gain + graphPotential t <= graphPotential (565 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0565 label = some (t, gain) at h
  simp [graphSmokeNext_s0565] at h

theorem transition_ok_s0565 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (565 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (565 : State) := by
  intro h
  change graphSmokeNext_s0565 label = some (t, gain) at h
  simp [graphSmokeNext_s0565] at h

theorem valid_s0566 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (566 : State) label t gain ->
      gain + graphPotential t <= graphPotential (566 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0566 label = some (t, gain) at h
  simp [graphSmokeNext_s0566] at h

theorem transition_ok_s0566 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (566 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (566 : State) := by
  intro h
  change graphSmokeNext_s0566 label = some (t, gain) at h
  simp [graphSmokeNext_s0566] at h

theorem valid_s0567 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (567 : State) label t gain ->
      gain + graphPotential t <= graphPotential (567 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0567 label = some (t, gain) at h
  simp [graphSmokeNext_s0567] at h

theorem transition_ok_s0567 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (567 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (567 : State) := by
  intro h
  change graphSmokeNext_s0567 label = some (t, gain) at h
  simp [graphSmokeNext_s0567] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 560 <= s) (hhi : s < 568) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0560 h
  · exact valid_s0561 h
  · exact valid_s0562 h
  · exact valid_s0563 h
  · exact valid_s0564 h
  · exact valid_s0565 h
  · exact valid_s0566 h
  · exact valid_s0567 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 560 <= s) (hhi : s < 568) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0560 h
  · exact transition_ok_s0561 h
  · exact transition_ok_s0562 h
  · exact transition_ok_s0563 h
  · exact transition_ok_s0564 h
  · exact transition_ok_s0565 h
  · exact transition_ok_s0566 h
  · exact transition_ok_s0567 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard070
