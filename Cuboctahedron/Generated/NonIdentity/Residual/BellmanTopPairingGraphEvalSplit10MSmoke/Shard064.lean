import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard064

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [512, 520). -/
theorem valid_s0512 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (512 : State) label t gain ->
      gain + graphPotential t <= graphPotential (512 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0512 label = some (t, gain) at h
  simp [graphSmokeNext_s0512] at h

theorem transition_ok_s0512 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (512 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (512 : State) := by
  intro h
  change graphSmokeNext_s0512 label = some (t, gain) at h
  simp [graphSmokeNext_s0512] at h

theorem valid_s0513 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (513 : State) label t gain ->
      gain + graphPotential t <= graphPotential (513 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0513 label = some (t, gain) at h
  simp [graphSmokeNext_s0513] at h

theorem transition_ok_s0513 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (513 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (513 : State) := by
  intro h
  change graphSmokeNext_s0513 label = some (t, gain) at h
  simp [graphSmokeNext_s0513] at h

theorem valid_s0514 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (514 : State) label t gain ->
      gain + graphPotential t <= graphPotential (514 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0514 label = some (t, gain) at h
  simp [graphSmokeNext_s0514] at h

theorem transition_ok_s0514 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (514 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (514 : State) := by
  intro h
  change graphSmokeNext_s0514 label = some (t, gain) at h
  simp [graphSmokeNext_s0514] at h

theorem valid_s0515 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (515 : State) label t gain ->
      gain + graphPotential t <= graphPotential (515 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0515 label = some (t, gain) at h
  simp [graphSmokeNext_s0515] at h

theorem transition_ok_s0515 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (515 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (515 : State) := by
  intro h
  change graphSmokeNext_s0515 label = some (t, gain) at h
  simp [graphSmokeNext_s0515] at h

theorem valid_s0516 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (516 : State) label t gain ->
      gain + graphPotential t <= graphPotential (516 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0516 label = some (t, gain) at h
  simp [graphSmokeNext_s0516] at h

theorem transition_ok_s0516 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (516 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (516 : State) := by
  intro h
  change graphSmokeNext_s0516 label = some (t, gain) at h
  simp [graphSmokeNext_s0516] at h

theorem valid_s0517 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (517 : State) label t gain ->
      gain + graphPotential t <= graphPotential (517 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0517 label = some (t, gain) at h
  simp [graphSmokeNext_s0517] at h

theorem transition_ok_s0517 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (517 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (517 : State) := by
  intro h
  change graphSmokeNext_s0517 label = some (t, gain) at h
  simp [graphSmokeNext_s0517] at h

theorem valid_s0518 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (518 : State) label t gain ->
      gain + graphPotential t <= graphPotential (518 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0518 label = some (t, gain) at h
  simp [graphSmokeNext_s0518] at h

theorem transition_ok_s0518 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (518 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (518 : State) := by
  intro h
  change graphSmokeNext_s0518 label = some (t, gain) at h
  simp [graphSmokeNext_s0518] at h

theorem valid_s0519 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (519 : State) label t gain ->
      gain + graphPotential t <= graphPotential (519 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0519 label = some (t, gain) at h
  simp [graphSmokeNext_s0519] at h

theorem transition_ok_s0519 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (519 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (519 : State) := by
  intro h
  change graphSmokeNext_s0519 label = some (t, gain) at h
  simp [graphSmokeNext_s0519] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 512 <= s) (hhi : s < 520) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0512 h
  · exact valid_s0513 h
  · exact valid_s0514 h
  · exact valid_s0515 h
  · exact valid_s0516 h
  · exact valid_s0517 h
  · exact valid_s0518 h
  · exact valid_s0519 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 512 <= s) (hhi : s < 520) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0512 h
  · exact transition_ok_s0513 h
  · exact transition_ok_s0514 h
  · exact transition_ok_s0515 h
  · exact transition_ok_s0516 h
  · exact transition_ok_s0517 h
  · exact transition_ok_s0518 h
  · exact transition_ok_s0519 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard064
