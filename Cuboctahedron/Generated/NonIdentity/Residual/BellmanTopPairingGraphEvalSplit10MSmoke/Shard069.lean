import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard069

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [552, 560). -/
theorem valid_s0552 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (552 : State) label t gain ->
      gain + graphPotential t <= graphPotential (552 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0552 label = some (t, gain) at h
  simp [graphSmokeNext_s0552] at h

theorem transition_ok_s0552 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (552 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (552 : State) := by
  intro h
  change graphSmokeNext_s0552 label = some (t, gain) at h
  simp [graphSmokeNext_s0552] at h

theorem valid_s0553 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (553 : State) label t gain ->
      gain + graphPotential t <= graphPotential (553 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0553 label = some (t, gain) at h
  simp [graphSmokeNext_s0553] at h

theorem transition_ok_s0553 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (553 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (553 : State) := by
  intro h
  change graphSmokeNext_s0553 label = some (t, gain) at h
  simp [graphSmokeNext_s0553] at h

theorem valid_s0554 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (554 : State) label t gain ->
      gain + graphPotential t <= graphPotential (554 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0554 label = some (t, gain) at h
  simp [graphSmokeNext_s0554] at h

theorem transition_ok_s0554 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (554 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (554 : State) := by
  intro h
  change graphSmokeNext_s0554 label = some (t, gain) at h
  simp [graphSmokeNext_s0554] at h

theorem valid_s0555 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (555 : State) label t gain ->
      gain + graphPotential t <= graphPotential (555 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0555 label = some (t, gain) at h
  simp [graphSmokeNext_s0555] at h

theorem transition_ok_s0555 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (555 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (555 : State) := by
  intro h
  change graphSmokeNext_s0555 label = some (t, gain) at h
  simp [graphSmokeNext_s0555] at h

theorem valid_s0556 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (556 : State) label t gain ->
      gain + graphPotential t <= graphPotential (556 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0556 label = some (t, gain) at h
  simp [graphSmokeNext_s0556] at h

theorem transition_ok_s0556 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (556 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (556 : State) := by
  intro h
  change graphSmokeNext_s0556 label = some (t, gain) at h
  simp [graphSmokeNext_s0556] at h

theorem valid_s0557 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (557 : State) label t gain ->
      gain + graphPotential t <= graphPotential (557 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0557 label = some (t, gain) at h
  simp [graphSmokeNext_s0557] at h

theorem transition_ok_s0557 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (557 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (557 : State) := by
  intro h
  change graphSmokeNext_s0557 label = some (t, gain) at h
  simp [graphSmokeNext_s0557] at h

theorem valid_s0558 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (558 : State) label t gain ->
      gain + graphPotential t <= graphPotential (558 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0558 label = some (t, gain) at h
  simp [graphSmokeNext_s0558] at h

theorem transition_ok_s0558 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (558 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (558 : State) := by
  intro h
  change graphSmokeNext_s0558 label = some (t, gain) at h
  simp [graphSmokeNext_s0558] at h

theorem valid_s0559 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (559 : State) label t gain ->
      gain + graphPotential t <= graphPotential (559 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0559 label = some (t, gain) at h
  simp [graphSmokeNext_s0559] at h

theorem transition_ok_s0559 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (559 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (559 : State) := by
  intro h
  change graphSmokeNext_s0559 label = some (t, gain) at h
  simp [graphSmokeNext_s0559] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 552 <= s) (hhi : s < 560) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0552 h
  · exact valid_s0553 h
  · exact valid_s0554 h
  · exact valid_s0555 h
  · exact valid_s0556 h
  · exact valid_s0557 h
  · exact valid_s0558 h
  · exact valid_s0559 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 552 <= s) (hhi : s < 560) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0552 h
  · exact transition_ok_s0553 h
  · exact transition_ok_s0554 h
  · exact transition_ok_s0555 h
  · exact transition_ok_s0556 h
  · exact transition_ok_s0557 h
  · exact transition_ok_s0558 h
  · exact transition_ok_s0559 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard069
