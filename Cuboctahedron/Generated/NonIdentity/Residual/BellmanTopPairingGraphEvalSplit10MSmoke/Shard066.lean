import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard066

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [528, 536). -/
theorem valid_s0528 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (528 : State) label t gain ->
      gain + graphPotential t <= graphPotential (528 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0528 label = some (t, gain) at h
  simp [graphSmokeNext_s0528] at h

theorem transition_ok_s0528 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (528 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (528 : State) := by
  intro h
  change graphSmokeNext_s0528 label = some (t, gain) at h
  simp [graphSmokeNext_s0528] at h

theorem valid_s0529 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (529 : State) label t gain ->
      gain + graphPotential t <= graphPotential (529 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0529 label = some (t, gain) at h
  simp [graphSmokeNext_s0529] at h

theorem transition_ok_s0529 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (529 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (529 : State) := by
  intro h
  change graphSmokeNext_s0529 label = some (t, gain) at h
  simp [graphSmokeNext_s0529] at h

theorem valid_s0530 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (530 : State) label t gain ->
      gain + graphPotential t <= graphPotential (530 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0530 label = some (t, gain) at h
  simp [graphSmokeNext_s0530] at h

theorem transition_ok_s0530 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (530 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (530 : State) := by
  intro h
  change graphSmokeNext_s0530 label = some (t, gain) at h
  simp [graphSmokeNext_s0530] at h

theorem valid_s0531 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (531 : State) label t gain ->
      gain + graphPotential t <= graphPotential (531 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0531 label = some (t, gain) at h
  simp [graphSmokeNext_s0531] at h

theorem transition_ok_s0531 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (531 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (531 : State) := by
  intro h
  change graphSmokeNext_s0531 label = some (t, gain) at h
  simp [graphSmokeNext_s0531] at h

theorem valid_s0532 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (532 : State) label t gain ->
      gain + graphPotential t <= graphPotential (532 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0532 label = some (t, gain) at h
  simp [graphSmokeNext_s0532] at h

theorem transition_ok_s0532 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (532 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (532 : State) := by
  intro h
  change graphSmokeNext_s0532 label = some (t, gain) at h
  simp [graphSmokeNext_s0532] at h

theorem valid_s0533 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (533 : State) label t gain ->
      gain + graphPotential t <= graphPotential (533 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0533 label = some (t, gain) at h
  simp [graphSmokeNext_s0533] at h

theorem transition_ok_s0533 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (533 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (533 : State) := by
  intro h
  change graphSmokeNext_s0533 label = some (t, gain) at h
  simp [graphSmokeNext_s0533] at h

theorem valid_s0534 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (534 : State) label t gain ->
      gain + graphPotential t <= graphPotential (534 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0534 label = some (t, gain) at h
  simp [graphSmokeNext_s0534] at h

theorem transition_ok_s0534 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (534 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (534 : State) := by
  intro h
  change graphSmokeNext_s0534 label = some (t, gain) at h
  simp [graphSmokeNext_s0534] at h

theorem valid_s0535 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (535 : State) label t gain ->
      gain + graphPotential t <= graphPotential (535 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0535 label = some (t, gain) at h
  simp [graphSmokeNext_s0535] at h

theorem transition_ok_s0535 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (535 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (535 : State) := by
  intro h
  change graphSmokeNext_s0535 label = some (t, gain) at h
  simp [graphSmokeNext_s0535] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 528 <= s) (hhi : s < 536) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0528 h
  · exact valid_s0529 h
  · exact valid_s0530 h
  · exact valid_s0531 h
  · exact valid_s0532 h
  · exact valid_s0533 h
  · exact valid_s0534 h
  · exact valid_s0535 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 528 <= s) (hhi : s < 536) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0528 h
  · exact transition_ok_s0529 h
  · exact transition_ok_s0530 h
  · exact transition_ok_s0531 h
  · exact transition_ok_s0532 h
  · exact transition_ok_s0533 h
  · exact transition_ok_s0534 h
  · exact transition_ok_s0535 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard066
