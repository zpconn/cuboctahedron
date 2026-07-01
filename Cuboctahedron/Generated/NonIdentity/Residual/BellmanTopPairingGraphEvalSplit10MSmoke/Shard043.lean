import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard043

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [344, 352). -/
theorem valid_s0344 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (344 : State) label t gain ->
      gain + graphPotential t <= graphPotential (344 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0344 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0344] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (382 : State) <= graphPotential (344 : State)
    decide
  ·
    simp [graphSmokeNext_s0344, h_l0011] at h

theorem transition_ok_s0344 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (344 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (344 : State) := by
  intro h
  change graphSmokeNext_s0344 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0344] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (382 : State) <= graphPotential (344 : State)
      decide
  ·
    simp [graphSmokeNext_s0344, h_l0011] at h

theorem valid_s0345 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (345 : State) label t gain ->
      gain + graphPotential t <= graphPotential (345 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0345 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0345] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (383 : State) <= graphPotential (345 : State)
    decide
  ·
    simp [graphSmokeNext_s0345, h_l0011] at h

theorem transition_ok_s0345 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (345 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (345 : State) := by
  intro h
  change graphSmokeNext_s0345 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0345] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (383 : State) <= graphPotential (345 : State)
      decide
  ·
    simp [graphSmokeNext_s0345, h_l0011] at h

theorem valid_s0346 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (346 : State) label t gain ->
      gain + graphPotential t <= graphPotential (346 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0346 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0346] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (385 : State) <= graphPotential (346 : State)
    decide
  ·
    simp [graphSmokeNext_s0346, h_l0011] at h

theorem transition_ok_s0346 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (346 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (346 : State) := by
  intro h
  change graphSmokeNext_s0346 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0346] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (385 : State) <= graphPotential (346 : State)
      decide
  ·
    simp [graphSmokeNext_s0346, h_l0011] at h

theorem valid_s0347 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (347 : State) label t gain ->
      gain + graphPotential t <= graphPotential (347 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0347 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0347] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (387 : State) <= graphPotential (347 : State)
    decide
  ·
    simp [graphSmokeNext_s0347, h_l0011] at h

theorem transition_ok_s0347 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (347 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (347 : State) := by
  intro h
  change graphSmokeNext_s0347 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0347] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (387 : State) <= graphPotential (347 : State)
      decide
  ·
    simp [graphSmokeNext_s0347, h_l0011] at h

theorem valid_s0348 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (348 : State) label t gain ->
      gain + graphPotential t <= graphPotential (348 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0348 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0348] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (390 : State) <= graphPotential (348 : State)
    decide
  ·
    simp [graphSmokeNext_s0348, h_l0011] at h

theorem transition_ok_s0348 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (348 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (348 : State) := by
  intro h
  change graphSmokeNext_s0348 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0348] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (390 : State) <= graphPotential (348 : State)
      decide
  ·
    simp [graphSmokeNext_s0348, h_l0011] at h

theorem valid_s0349 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (349 : State) label t gain ->
      gain + graphPotential t <= graphPotential (349 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0349 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0349] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (396 : State) <= graphPotential (349 : State)
    decide
  ·
    simp [graphSmokeNext_s0349, h_l0011] at h

theorem transition_ok_s0349 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (349 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (349 : State) := by
  intro h
  change graphSmokeNext_s0349 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0349] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (396 : State) <= graphPotential (349 : State)
      decide
  ·
    simp [graphSmokeNext_s0349, h_l0011] at h

theorem valid_s0350 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (350 : State) label t gain ->
      gain + graphPotential t <= graphPotential (350 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0350 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0350] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (398 : State) <= graphPotential (350 : State)
    decide
  ·
    simp [graphSmokeNext_s0350, h_l0011] at h

theorem transition_ok_s0350 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (350 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (350 : State) := by
  intro h
  change graphSmokeNext_s0350 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0350] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (398 : State) <= graphPotential (350 : State)
      decide
  ·
    simp [graphSmokeNext_s0350, h_l0011] at h

theorem valid_s0351 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (351 : State) label t gain ->
      gain + graphPotential t <= graphPotential (351 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0351 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0351] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (403 : State) <= graphPotential (351 : State)
    decide
  ·
    simp [graphSmokeNext_s0351, h_l0011] at h

theorem transition_ok_s0351 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (351 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (351 : State) := by
  intro h
  change graphSmokeNext_s0351 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0351] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (403 : State) <= graphPotential (351 : State)
      decide
  ·
    simp [graphSmokeNext_s0351, h_l0011] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 344 <= s) (hhi : s < 352) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0344 h
  · exact valid_s0345 h
  · exact valid_s0346 h
  · exact valid_s0347 h
  · exact valid_s0348 h
  · exact valid_s0349 h
  · exact valid_s0350 h
  · exact valid_s0351 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 344 <= s) (hhi : s < 352) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0344 h
  · exact transition_ok_s0345 h
  · exact transition_ok_s0346 h
  · exact transition_ok_s0347 h
  · exact transition_ok_s0348 h
  · exact transition_ok_s0349 h
  · exact transition_ok_s0350 h
  · exact transition_ok_s0351 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard043
