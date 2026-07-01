import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard073

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [584, 592). -/
theorem valid_s0584 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (584 : State) label t gain ->
      gain + graphPotential t <= graphPotential (584 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0584 label = some (t, gain) at h
  simp [graphSmokeNext_s0584] at h

theorem transition_ok_s0584 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (584 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (584 : State) := by
  intro h
  change graphSmokeNext_s0584 label = some (t, gain) at h
  simp [graphSmokeNext_s0584] at h

theorem valid_s0585 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (585 : State) label t gain ->
      gain + graphPotential t <= graphPotential (585 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0585 label = some (t, gain) at h
  simp [graphSmokeNext_s0585] at h

theorem transition_ok_s0585 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (585 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (585 : State) := by
  intro h
  change graphSmokeNext_s0585 label = some (t, gain) at h
  simp [graphSmokeNext_s0585] at h

theorem valid_s0586 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (586 : State) label t gain ->
      gain + graphPotential t <= graphPotential (586 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0586 label = some (t, gain) at h
  simp [graphSmokeNext_s0586] at h

theorem transition_ok_s0586 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (586 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (586 : State) := by
  intro h
  change graphSmokeNext_s0586 label = some (t, gain) at h
  simp [graphSmokeNext_s0586] at h

theorem valid_s0587 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (587 : State) label t gain ->
      gain + graphPotential t <= graphPotential (587 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0587 label = some (t, gain) at h
  simp [graphSmokeNext_s0587] at h

theorem transition_ok_s0587 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (587 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (587 : State) := by
  intro h
  change graphSmokeNext_s0587 label = some (t, gain) at h
  simp [graphSmokeNext_s0587] at h

theorem valid_s0588 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (588 : State) label t gain ->
      gain + graphPotential t <= graphPotential (588 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0588 label = some (t, gain) at h
  simp [graphSmokeNext_s0588] at h

theorem transition_ok_s0588 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (588 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (588 : State) := by
  intro h
  change graphSmokeNext_s0588 label = some (t, gain) at h
  simp [graphSmokeNext_s0588] at h

theorem valid_s0589 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (589 : State) label t gain ->
      gain + graphPotential t <= graphPotential (589 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0589 label = some (t, gain) at h
  simp [graphSmokeNext_s0589] at h

theorem transition_ok_s0589 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (589 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (589 : State) := by
  intro h
  change graphSmokeNext_s0589 label = some (t, gain) at h
  simp [graphSmokeNext_s0589] at h

theorem valid_s0590 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (590 : State) label t gain ->
      gain + graphPotential t <= graphPotential (590 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0590 label = some (t, gain) at h
  simp [graphSmokeNext_s0590] at h

theorem transition_ok_s0590 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (590 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (590 : State) := by
  intro h
  change graphSmokeNext_s0590 label = some (t, gain) at h
  simp [graphSmokeNext_s0590] at h

theorem valid_s0591 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (591 : State) label t gain ->
      gain + graphPotential t <= graphPotential (591 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0591 label = some (t, gain) at h
  simp [graphSmokeNext_s0591] at h

theorem transition_ok_s0591 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (591 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (591 : State) := by
  intro h
  change graphSmokeNext_s0591 label = some (t, gain) at h
  simp [graphSmokeNext_s0591] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 584 <= s) (hhi : s < 592) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0584 h
  · exact valid_s0585 h
  · exact valid_s0586 h
  · exact valid_s0587 h
  · exact valid_s0588 h
  · exact valid_s0589 h
  · exact valid_s0590 h
  · exact valid_s0591 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 584 <= s) (hhi : s < 592) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0584 h
  · exact transition_ok_s0585 h
  · exact transition_ok_s0586 h
  · exact transition_ok_s0587 h
  · exact transition_ok_s0588 h
  · exact transition_ok_s0589 h
  · exact transition_ok_s0590 h
  · exact transition_ok_s0591 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard073
