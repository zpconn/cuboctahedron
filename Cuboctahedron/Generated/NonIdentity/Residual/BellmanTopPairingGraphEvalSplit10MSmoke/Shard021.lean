import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard021

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [336, 352). -/
theorem valid_s0336 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (336 : State) label t gain ->
      gain + graphPotential t <= graphPotential (336 : State) := by
  intro h
  change graphSmokeNext_s0336 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0336] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (474 : State) <= graphPotential (336 : State)
    decide
  ·
    simp [graphSmokeNext_s0336, h_l0013] at h

theorem valid_s0337 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (337 : State) label t gain ->
      gain + graphPotential t <= graphPotential (337 : State) := by
  intro h
  change graphSmokeNext_s0337 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0337] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (482 : State) <= graphPotential (337 : State)
    decide
  ·
    simp [graphSmokeNext_s0337, h_l0013] at h

theorem valid_s0338 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (338 : State) label t gain ->
      gain + graphPotential t <= graphPotential (338 : State) := by
  intro h
  change graphSmokeNext_s0338 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0338] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (483 : State) <= graphPotential (338 : State)
    decide
  ·
    simp [graphSmokeNext_s0338, h_l0013] at h

theorem valid_s0339 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (339 : State) label t gain ->
      gain + graphPotential t <= graphPotential (339 : State) := by
  intro h
  change graphSmokeNext_s0339 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0339] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (484 : State) <= graphPotential (339 : State)
    decide
  ·
    simp [graphSmokeNext_s0339, h_l0013] at h

theorem valid_s0340 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (340 : State) label t gain ->
      gain + graphPotential t <= graphPotential (340 : State) := by
  intro h
  change graphSmokeNext_s0340 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0340] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (485 : State) <= graphPotential (340 : State)
    decide
  ·
    simp [graphSmokeNext_s0340, h_l0013] at h

theorem valid_s0341 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (341 : State) label t gain ->
      gain + graphPotential t <= graphPotential (341 : State) := by
  intro h
  change graphSmokeNext_s0341 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0341] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (486 : State) <= graphPotential (341 : State)
    decide
  ·
    simp [graphSmokeNext_s0341, h_l0013] at h

theorem valid_s0342 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (342 : State) label t gain ->
      gain + graphPotential t <= graphPotential (342 : State) := by
  intro h
  change graphSmokeNext_s0342 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0342] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (377 : State) <= graphPotential (342 : State)
    decide
  ·
    simp [graphSmokeNext_s0342, h_l0011] at h

theorem valid_s0343 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (343 : State) label t gain ->
      gain + graphPotential t <= graphPotential (343 : State) := by
  intro h
  change graphSmokeNext_s0343 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0343] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (381 : State) <= graphPotential (343 : State)
    decide
  ·
    simp [graphSmokeNext_s0343, h_l0011] at h

theorem valid_s0344 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (344 : State) label t gain ->
      gain + graphPotential t <= graphPotential (344 : State) := by
  intro h
  change graphSmokeNext_s0344 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0344] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (382 : State) <= graphPotential (344 : State)
    decide
  ·
    simp [graphSmokeNext_s0344, h_l0011] at h

theorem valid_s0345 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (345 : State) label t gain ->
      gain + graphPotential t <= graphPotential (345 : State) := by
  intro h
  change graphSmokeNext_s0345 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0345] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (383 : State) <= graphPotential (345 : State)
    decide
  ·
    simp [graphSmokeNext_s0345, h_l0011] at h

theorem valid_s0346 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (346 : State) label t gain ->
      gain + graphPotential t <= graphPotential (346 : State) := by
  intro h
  change graphSmokeNext_s0346 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0346] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (385 : State) <= graphPotential (346 : State)
    decide
  ·
    simp [graphSmokeNext_s0346, h_l0011] at h

theorem valid_s0347 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (347 : State) label t gain ->
      gain + graphPotential t <= graphPotential (347 : State) := by
  intro h
  change graphSmokeNext_s0347 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0347] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (387 : State) <= graphPotential (347 : State)
    decide
  ·
    simp [graphSmokeNext_s0347, h_l0011] at h

theorem valid_s0348 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (348 : State) label t gain ->
      gain + graphPotential t <= graphPotential (348 : State) := by
  intro h
  change graphSmokeNext_s0348 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0348] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (390 : State) <= graphPotential (348 : State)
    decide
  ·
    simp [graphSmokeNext_s0348, h_l0011] at h

theorem valid_s0349 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (349 : State) label t gain ->
      gain + graphPotential t <= graphPotential (349 : State) := by
  intro h
  change graphSmokeNext_s0349 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0349] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (396 : State) <= graphPotential (349 : State)
    decide
  ·
    simp [graphSmokeNext_s0349, h_l0011] at h

theorem valid_s0350 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (350 : State) label t gain ->
      gain + graphPotential t <= graphPotential (350 : State) := by
  intro h
  change graphSmokeNext_s0350 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0350] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (398 : State) <= graphPotential (350 : State)
    decide
  ·
    simp [graphSmokeNext_s0350, h_l0011] at h

theorem valid_s0351 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (351 : State) label t gain ->
      gain + graphPotential t <= graphPotential (351 : State) := by
  intro h
  change graphSmokeNext_s0351 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0351] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (403 : State) <= graphPotential (351 : State)
    decide
  ·
    simp [graphSmokeNext_s0351, h_l0011] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 336 <= s) (hhi : s < 352) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0336 h
  · exact valid_s0337 h
  · exact valid_s0338 h
  · exact valid_s0339 h
  · exact valid_s0340 h
  · exact valid_s0341 h
  · exact valid_s0342 h
  · exact valid_s0343 h
  · exact valid_s0344 h
  · exact valid_s0345 h
  · exact valid_s0346 h
  · exact valid_s0347 h
  · exact valid_s0348 h
  · exact valid_s0349 h
  · exact valid_s0350 h
  · exact valid_s0351 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard021
