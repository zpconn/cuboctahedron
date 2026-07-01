import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard062

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [496, 504). -/
theorem valid_s0496 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (496 : State) label t gain ->
      gain + graphPotential t <= graphPotential (496 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0496 label = some (t, gain) at h
  simp [graphSmokeNext_s0496] at h

theorem transition_ok_s0496 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (496 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (496 : State) := by
  intro h
  change graphSmokeNext_s0496 label = some (t, gain) at h
  simp [graphSmokeNext_s0496] at h

theorem valid_s0497 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (497 : State) label t gain ->
      gain + graphPotential t <= graphPotential (497 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0497 label = some (t, gain) at h
  simp [graphSmokeNext_s0497] at h

theorem transition_ok_s0497 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (497 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (497 : State) := by
  intro h
  change graphSmokeNext_s0497 label = some (t, gain) at h
  simp [graphSmokeNext_s0497] at h

theorem valid_s0498 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (498 : State) label t gain ->
      gain + graphPotential t <= graphPotential (498 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0498 label = some (t, gain) at h
  simp [graphSmokeNext_s0498] at h

theorem transition_ok_s0498 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (498 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (498 : State) := by
  intro h
  change graphSmokeNext_s0498 label = some (t, gain) at h
  simp [graphSmokeNext_s0498] at h

theorem valid_s0499 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (499 : State) label t gain ->
      gain + graphPotential t <= graphPotential (499 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0499 label = some (t, gain) at h
  simp [graphSmokeNext_s0499] at h

theorem transition_ok_s0499 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (499 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (499 : State) := by
  intro h
  change graphSmokeNext_s0499 label = some (t, gain) at h
  simp [graphSmokeNext_s0499] at h

theorem valid_s0500 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (500 : State) label t gain ->
      gain + graphPotential t <= graphPotential (500 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0500 label = some (t, gain) at h
  simp [graphSmokeNext_s0500] at h

theorem transition_ok_s0500 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (500 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (500 : State) := by
  intro h
  change graphSmokeNext_s0500 label = some (t, gain) at h
  simp [graphSmokeNext_s0500] at h

theorem valid_s0501 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (501 : State) label t gain ->
      gain + graphPotential t <= graphPotential (501 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0501 label = some (t, gain) at h
  simp [graphSmokeNext_s0501] at h

theorem transition_ok_s0501 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (501 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (501 : State) := by
  intro h
  change graphSmokeNext_s0501 label = some (t, gain) at h
  simp [graphSmokeNext_s0501] at h

theorem valid_s0502 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (502 : State) label t gain ->
      gain + graphPotential t <= graphPotential (502 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0502 label = some (t, gain) at h
  simp [graphSmokeNext_s0502] at h

theorem transition_ok_s0502 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (502 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (502 : State) := by
  intro h
  change graphSmokeNext_s0502 label = some (t, gain) at h
  simp [graphSmokeNext_s0502] at h

theorem valid_s0503 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (503 : State) label t gain ->
      gain + graphPotential t <= graphPotential (503 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0503 label = some (t, gain) at h
  simp [graphSmokeNext_s0503] at h

theorem transition_ok_s0503 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (503 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (503 : State) := by
  intro h
  change graphSmokeNext_s0503 label = some (t, gain) at h
  simp [graphSmokeNext_s0503] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 496 <= s) (hhi : s < 504) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0496 h
  · exact valid_s0497 h
  · exact valid_s0498 h
  · exact valid_s0499 h
  · exact valid_s0500 h
  · exact valid_s0501 h
  · exact valid_s0502 h
  · exact valid_s0503 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 496 <= s) (hhi : s < 504) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0496 h
  · exact transition_ok_s0497 h
  · exact transition_ok_s0498 h
  · exact transition_ok_s0499 h
  · exact transition_ok_s0500 h
  · exact transition_ok_s0501 h
  · exact transition_ok_s0502 h
  · exact transition_ok_s0503 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard062
