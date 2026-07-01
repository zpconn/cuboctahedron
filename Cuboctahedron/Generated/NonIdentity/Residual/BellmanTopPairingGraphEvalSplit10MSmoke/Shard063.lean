import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard063

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [504, 512). -/
theorem valid_s0504 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (504 : State) label t gain ->
      gain + graphPotential t <= graphPotential (504 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0504 label = some (t, gain) at h
  simp [graphSmokeNext_s0504] at h

theorem transition_ok_s0504 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (504 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (504 : State) := by
  intro h
  change graphSmokeNext_s0504 label = some (t, gain) at h
  simp [graphSmokeNext_s0504] at h

theorem valid_s0505 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (505 : State) label t gain ->
      gain + graphPotential t <= graphPotential (505 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0505 label = some (t, gain) at h
  simp [graphSmokeNext_s0505] at h

theorem transition_ok_s0505 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (505 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (505 : State) := by
  intro h
  change graphSmokeNext_s0505 label = some (t, gain) at h
  simp [graphSmokeNext_s0505] at h

theorem valid_s0506 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (506 : State) label t gain ->
      gain + graphPotential t <= graphPotential (506 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0506 label = some (t, gain) at h
  simp [graphSmokeNext_s0506] at h

theorem transition_ok_s0506 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (506 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (506 : State) := by
  intro h
  change graphSmokeNext_s0506 label = some (t, gain) at h
  simp [graphSmokeNext_s0506] at h

theorem valid_s0507 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (507 : State) label t gain ->
      gain + graphPotential t <= graphPotential (507 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0507 label = some (t, gain) at h
  simp [graphSmokeNext_s0507] at h

theorem transition_ok_s0507 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (507 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (507 : State) := by
  intro h
  change graphSmokeNext_s0507 label = some (t, gain) at h
  simp [graphSmokeNext_s0507] at h

theorem valid_s0508 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (508 : State) label t gain ->
      gain + graphPotential t <= graphPotential (508 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0508 label = some (t, gain) at h
  simp [graphSmokeNext_s0508] at h

theorem transition_ok_s0508 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (508 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (508 : State) := by
  intro h
  change graphSmokeNext_s0508 label = some (t, gain) at h
  simp [graphSmokeNext_s0508] at h

theorem valid_s0509 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (509 : State) label t gain ->
      gain + graphPotential t <= graphPotential (509 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0509 label = some (t, gain) at h
  simp [graphSmokeNext_s0509] at h

theorem transition_ok_s0509 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (509 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (509 : State) := by
  intro h
  change graphSmokeNext_s0509 label = some (t, gain) at h
  simp [graphSmokeNext_s0509] at h

theorem valid_s0510 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (510 : State) label t gain ->
      gain + graphPotential t <= graphPotential (510 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0510 label = some (t, gain) at h
  simp [graphSmokeNext_s0510] at h

theorem transition_ok_s0510 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (510 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (510 : State) := by
  intro h
  change graphSmokeNext_s0510 label = some (t, gain) at h
  simp [graphSmokeNext_s0510] at h

theorem valid_s0511 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (511 : State) label t gain ->
      gain + graphPotential t <= graphPotential (511 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0511 label = some (t, gain) at h
  simp [graphSmokeNext_s0511] at h

theorem transition_ok_s0511 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (511 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (511 : State) := by
  intro h
  change graphSmokeNext_s0511 label = some (t, gain) at h
  simp [graphSmokeNext_s0511] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 504 <= s) (hhi : s < 512) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0504 h
  · exact valid_s0505 h
  · exact valid_s0506 h
  · exact valid_s0507 h
  · exact valid_s0508 h
  · exact valid_s0509 h
  · exact valid_s0510 h
  · exact valid_s0511 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 504 <= s) (hhi : s < 512) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0504 h
  · exact transition_ok_s0505 h
  · exact transition_ok_s0506 h
  · exact transition_ok_s0507 h
  · exact transition_ok_s0508 h
  · exact transition_ok_s0509 h
  · exact transition_ok_s0510 h
  · exact transition_ok_s0511 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard063
