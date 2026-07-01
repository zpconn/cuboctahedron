import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard072

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [576, 584). -/
theorem valid_s0576 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (576 : State) label t gain ->
      gain + graphPotential t <= graphPotential (576 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0576 label = some (t, gain) at h
  simp [graphSmokeNext_s0576] at h

theorem transition_ok_s0576 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (576 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (576 : State) := by
  intro h
  change graphSmokeNext_s0576 label = some (t, gain) at h
  simp [graphSmokeNext_s0576] at h

theorem valid_s0577 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (577 : State) label t gain ->
      gain + graphPotential t <= graphPotential (577 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0577 label = some (t, gain) at h
  simp [graphSmokeNext_s0577] at h

theorem transition_ok_s0577 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (577 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (577 : State) := by
  intro h
  change graphSmokeNext_s0577 label = some (t, gain) at h
  simp [graphSmokeNext_s0577] at h

theorem valid_s0578 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (578 : State) label t gain ->
      gain + graphPotential t <= graphPotential (578 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0578 label = some (t, gain) at h
  simp [graphSmokeNext_s0578] at h

theorem transition_ok_s0578 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (578 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (578 : State) := by
  intro h
  change graphSmokeNext_s0578 label = some (t, gain) at h
  simp [graphSmokeNext_s0578] at h

theorem valid_s0579 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (579 : State) label t gain ->
      gain + graphPotential t <= graphPotential (579 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0579 label = some (t, gain) at h
  simp [graphSmokeNext_s0579] at h

theorem transition_ok_s0579 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (579 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (579 : State) := by
  intro h
  change graphSmokeNext_s0579 label = some (t, gain) at h
  simp [graphSmokeNext_s0579] at h

theorem valid_s0580 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (580 : State) label t gain ->
      gain + graphPotential t <= graphPotential (580 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0580 label = some (t, gain) at h
  simp [graphSmokeNext_s0580] at h

theorem transition_ok_s0580 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (580 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (580 : State) := by
  intro h
  change graphSmokeNext_s0580 label = some (t, gain) at h
  simp [graphSmokeNext_s0580] at h

theorem valid_s0581 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (581 : State) label t gain ->
      gain + graphPotential t <= graphPotential (581 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0581 label = some (t, gain) at h
  simp [graphSmokeNext_s0581] at h

theorem transition_ok_s0581 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (581 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (581 : State) := by
  intro h
  change graphSmokeNext_s0581 label = some (t, gain) at h
  simp [graphSmokeNext_s0581] at h

theorem valid_s0582 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (582 : State) label t gain ->
      gain + graphPotential t <= graphPotential (582 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0582 label = some (t, gain) at h
  simp [graphSmokeNext_s0582] at h

theorem transition_ok_s0582 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (582 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (582 : State) := by
  intro h
  change graphSmokeNext_s0582 label = some (t, gain) at h
  simp [graphSmokeNext_s0582] at h

theorem valid_s0583 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (583 : State) label t gain ->
      gain + graphPotential t <= graphPotential (583 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0583 label = some (t, gain) at h
  simp [graphSmokeNext_s0583] at h

theorem transition_ok_s0583 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (583 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (583 : State) := by
  intro h
  change graphSmokeNext_s0583 label = some (t, gain) at h
  simp [graphSmokeNext_s0583] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 576 <= s) (hhi : s < 584) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0576 h
  · exact valid_s0577 h
  · exact valid_s0578 h
  · exact valid_s0579 h
  · exact valid_s0580 h
  · exact valid_s0581 h
  · exact valid_s0582 h
  · exact valid_s0583 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 576 <= s) (hhi : s < 584) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0576 h
  · exact transition_ok_s0577 h
  · exact transition_ok_s0578 h
  · exact transition_ok_s0579 h
  · exact transition_ok_s0580 h
  · exact transition_ok_s0581 h
  · exact transition_ok_s0582 h
  · exact transition_ok_s0583 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard072
