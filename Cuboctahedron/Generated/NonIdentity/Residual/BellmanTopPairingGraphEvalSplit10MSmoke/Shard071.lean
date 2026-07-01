import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard071

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [568, 576). -/
theorem valid_s0568 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (568 : State) label t gain ->
      gain + graphPotential t <= graphPotential (568 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0568 label = some (t, gain) at h
  simp [graphSmokeNext_s0568] at h

theorem transition_ok_s0568 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (568 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (568 : State) := by
  intro h
  change graphSmokeNext_s0568 label = some (t, gain) at h
  simp [graphSmokeNext_s0568] at h

theorem valid_s0569 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (569 : State) label t gain ->
      gain + graphPotential t <= graphPotential (569 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0569 label = some (t, gain) at h
  simp [graphSmokeNext_s0569] at h

theorem transition_ok_s0569 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (569 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (569 : State) := by
  intro h
  change graphSmokeNext_s0569 label = some (t, gain) at h
  simp [graphSmokeNext_s0569] at h

theorem valid_s0570 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (570 : State) label t gain ->
      gain + graphPotential t <= graphPotential (570 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0570 label = some (t, gain) at h
  simp [graphSmokeNext_s0570] at h

theorem transition_ok_s0570 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (570 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (570 : State) := by
  intro h
  change graphSmokeNext_s0570 label = some (t, gain) at h
  simp [graphSmokeNext_s0570] at h

theorem valid_s0571 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (571 : State) label t gain ->
      gain + graphPotential t <= graphPotential (571 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0571 label = some (t, gain) at h
  simp [graphSmokeNext_s0571] at h

theorem transition_ok_s0571 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (571 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (571 : State) := by
  intro h
  change graphSmokeNext_s0571 label = some (t, gain) at h
  simp [graphSmokeNext_s0571] at h

theorem valid_s0572 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (572 : State) label t gain ->
      gain + graphPotential t <= graphPotential (572 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0572 label = some (t, gain) at h
  simp [graphSmokeNext_s0572] at h

theorem transition_ok_s0572 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (572 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (572 : State) := by
  intro h
  change graphSmokeNext_s0572 label = some (t, gain) at h
  simp [graphSmokeNext_s0572] at h

theorem valid_s0573 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (573 : State) label t gain ->
      gain + graphPotential t <= graphPotential (573 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0573 label = some (t, gain) at h
  simp [graphSmokeNext_s0573] at h

theorem transition_ok_s0573 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (573 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (573 : State) := by
  intro h
  change graphSmokeNext_s0573 label = some (t, gain) at h
  simp [graphSmokeNext_s0573] at h

theorem valid_s0574 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (574 : State) label t gain ->
      gain + graphPotential t <= graphPotential (574 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0574 label = some (t, gain) at h
  simp [graphSmokeNext_s0574] at h

theorem transition_ok_s0574 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (574 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (574 : State) := by
  intro h
  change graphSmokeNext_s0574 label = some (t, gain) at h
  simp [graphSmokeNext_s0574] at h

theorem valid_s0575 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (575 : State) label t gain ->
      gain + graphPotential t <= graphPotential (575 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0575 label = some (t, gain) at h
  simp [graphSmokeNext_s0575] at h

theorem transition_ok_s0575 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (575 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (575 : State) := by
  intro h
  change graphSmokeNext_s0575 label = some (t, gain) at h
  simp [graphSmokeNext_s0575] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 568 <= s) (hhi : s < 576) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0568 h
  · exact valid_s0569 h
  · exact valid_s0570 h
  · exact valid_s0571 h
  · exact valid_s0572 h
  · exact valid_s0573 h
  · exact valid_s0574 h
  · exact valid_s0575 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 568 <= s) (hhi : s < 576) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0568 h
  · exact transition_ok_s0569 h
  · exact transition_ok_s0570 h
  · exact transition_ok_s0571 h
  · exact transition_ok_s0572 h
  · exact transition_ok_s0573 h
  · exact transition_ok_s0574 h
  · exact transition_ok_s0575 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard071
