import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard017

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [272, 288). -/
theorem valid_s0272 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (272 : State) label t gain ->
      gain + graphPotential t <= graphPotential (272 : State) := by
  intro h
  change graphSmokeNext_s0272 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0272] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (415 : State) <= graphPotential (272 : State)
    decide
  ·
    simp [graphSmokeNext_s0272, h_l0001] at h

theorem valid_s0273 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (273 : State) label t gain ->
      gain + graphPotential t <= graphPotential (273 : State) := by
  intro h
  change graphSmokeNext_s0273 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0273] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (416 : State) <= graphPotential (273 : State)
    decide
  ·
    simp [graphSmokeNext_s0273, h_l0001] at h

theorem valid_s0274 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (274 : State) label t gain ->
      gain + graphPotential t <= graphPotential (274 : State) := by
  intro h
  change graphSmokeNext_s0274 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0274] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (417 : State) <= graphPotential (274 : State)
    decide
  ·
    simp [graphSmokeNext_s0274, h_l0001] at h

theorem valid_s0275 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (275 : State) label t gain ->
      gain + graphPotential t <= graphPotential (275 : State) := by
  intro h
  change graphSmokeNext_s0275 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0275] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (418 : State) <= graphPotential (275 : State)
    decide
  ·
    simp [graphSmokeNext_s0275, h_l0001] at h

theorem valid_s0276 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (276 : State) label t gain ->
      gain + graphPotential t <= graphPotential (276 : State) := by
  intro h
  change graphSmokeNext_s0276 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0276] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (419 : State) <= graphPotential (276 : State)
    decide
  ·
    simp [graphSmokeNext_s0276, h_l0001] at h

theorem valid_s0277 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (277 : State) label t gain ->
      gain + graphPotential t <= graphPotential (277 : State) := by
  intro h
  change graphSmokeNext_s0277 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0277] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (420 : State) <= graphPotential (277 : State)
    decide
  ·
    simp [graphSmokeNext_s0277, h_l0001] at h

theorem valid_s0278 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (278 : State) label t gain ->
      gain + graphPotential t <= graphPotential (278 : State) := by
  intro h
  change graphSmokeNext_s0278 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0278] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (421 : State) <= graphPotential (278 : State)
    decide
  ·
    simp [graphSmokeNext_s0278, h_l0001] at h

theorem valid_s0279 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (279 : State) label t gain ->
      gain + graphPotential t <= graphPotential (279 : State) := by
  intro h
  change graphSmokeNext_s0279 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0279] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (422 : State) <= graphPotential (279 : State)
    decide
  ·
    simp [graphSmokeNext_s0279, h_l0001] at h

theorem valid_s0280 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (280 : State) label t gain ->
      gain + graphPotential t <= graphPotential (280 : State) := by
  intro h
  change graphSmokeNext_s0280 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0280] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (424 : State) <= graphPotential (280 : State)
    decide
  ·
    simp [graphSmokeNext_s0280, h_l0001] at h

theorem valid_s0281 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (281 : State) label t gain ->
      gain + graphPotential t <= graphPotential (281 : State) := by
  intro h
  change graphSmokeNext_s0281 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0281] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (425 : State) <= graphPotential (281 : State)
    decide
  ·
    simp [graphSmokeNext_s0281, h_l0001] at h

theorem valid_s0282 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (282 : State) label t gain ->
      gain + graphPotential t <= graphPotential (282 : State) := by
  intro h
  change graphSmokeNext_s0282 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0282] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (426 : State) <= graphPotential (282 : State)
    decide
  ·
    simp [graphSmokeNext_s0282, h_l0001] at h

theorem valid_s0283 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (283 : State) label t gain ->
      gain + graphPotential t <= graphPotential (283 : State) := by
  intro h
  change graphSmokeNext_s0283 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0283] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (427 : State) <= graphPotential (283 : State)
    decide
  ·
    simp [graphSmokeNext_s0283, h_l0001] at h

theorem valid_s0284 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (284 : State) label t gain ->
      gain + graphPotential t <= graphPotential (284 : State) := by
  intro h
  change graphSmokeNext_s0284 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0284] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (428 : State) <= graphPotential (284 : State)
    decide
  ·
    simp [graphSmokeNext_s0284, h_l0001] at h

theorem valid_s0285 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (285 : State) label t gain ->
      gain + graphPotential t <= graphPotential (285 : State) := by
  intro h
  change graphSmokeNext_s0285 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0285] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (429 : State) <= graphPotential (285 : State)
    decide
  ·
    simp [graphSmokeNext_s0285, h_l0001] at h

theorem valid_s0286 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (286 : State) label t gain ->
      gain + graphPotential t <= graphPotential (286 : State) := by
  intro h
  change graphSmokeNext_s0286 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0286] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (441 : State) <= graphPotential (286 : State)
    decide
  ·
    simp [graphSmokeNext_s0286, h_l0001] at h

theorem valid_s0287 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (287 : State) label t gain ->
      gain + graphPotential t <= graphPotential (287 : State) := by
  intro h
  change graphSmokeNext_s0287 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0287] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (444 : State) <= graphPotential (287 : State)
    decide
  ·
    simp [graphSmokeNext_s0287, h_l0001] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 272 <= s) (hhi : s < 288) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0272 h
  · exact valid_s0273 h
  · exact valid_s0274 h
  · exact valid_s0275 h
  · exact valid_s0276 h
  · exact valid_s0277 h
  · exact valid_s0278 h
  · exact valid_s0279 h
  · exact valid_s0280 h
  · exact valid_s0281 h
  · exact valid_s0282 h
  · exact valid_s0283 h
  · exact valid_s0284 h
  · exact valid_s0285 h
  · exact valid_s0286 h
  · exact valid_s0287 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard017
