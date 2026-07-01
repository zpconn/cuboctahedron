import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard035

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [280, 288). -/
theorem valid_s0280 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (280 : State) label t gain ->
      gain + graphPotential t <= graphPotential (280 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0280 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0280] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (424 : State) <= graphPotential (280 : State)
    decide
  ·
    simp [graphSmokeNext_s0280, h_l0001] at h

theorem transition_ok_s0280 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (280 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (280 : State) := by
  intro h
  change graphSmokeNext_s0280 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0280] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (424 : State) <= graphPotential (280 : State)
      decide
  ·
    simp [graphSmokeNext_s0280, h_l0001] at h

theorem valid_s0281 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (281 : State) label t gain ->
      gain + graphPotential t <= graphPotential (281 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0281 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0281] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (425 : State) <= graphPotential (281 : State)
    decide
  ·
    simp [graphSmokeNext_s0281, h_l0001] at h

theorem transition_ok_s0281 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (281 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (281 : State) := by
  intro h
  change graphSmokeNext_s0281 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0281] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (425 : State) <= graphPotential (281 : State)
      decide
  ·
    simp [graphSmokeNext_s0281, h_l0001] at h

theorem valid_s0282 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (282 : State) label t gain ->
      gain + graphPotential t <= graphPotential (282 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0282 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0282] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (426 : State) <= graphPotential (282 : State)
    decide
  ·
    simp [graphSmokeNext_s0282, h_l0001] at h

theorem transition_ok_s0282 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (282 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (282 : State) := by
  intro h
  change graphSmokeNext_s0282 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0282] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (426 : State) <= graphPotential (282 : State)
      decide
  ·
    simp [graphSmokeNext_s0282, h_l0001] at h

theorem valid_s0283 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (283 : State) label t gain ->
      gain + graphPotential t <= graphPotential (283 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0283 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0283] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (427 : State) <= graphPotential (283 : State)
    decide
  ·
    simp [graphSmokeNext_s0283, h_l0001] at h

theorem transition_ok_s0283 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (283 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (283 : State) := by
  intro h
  change graphSmokeNext_s0283 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0283] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (427 : State) <= graphPotential (283 : State)
      decide
  ·
    simp [graphSmokeNext_s0283, h_l0001] at h

theorem valid_s0284 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (284 : State) label t gain ->
      gain + graphPotential t <= graphPotential (284 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0284 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0284] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (428 : State) <= graphPotential (284 : State)
    decide
  ·
    simp [graphSmokeNext_s0284, h_l0001] at h

theorem transition_ok_s0284 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (284 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (284 : State) := by
  intro h
  change graphSmokeNext_s0284 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0284] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (428 : State) <= graphPotential (284 : State)
      decide
  ·
    simp [graphSmokeNext_s0284, h_l0001] at h

theorem valid_s0285 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (285 : State) label t gain ->
      gain + graphPotential t <= graphPotential (285 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0285 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0285] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (429 : State) <= graphPotential (285 : State)
    decide
  ·
    simp [graphSmokeNext_s0285, h_l0001] at h

theorem transition_ok_s0285 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (285 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (285 : State) := by
  intro h
  change graphSmokeNext_s0285 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0285] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (429 : State) <= graphPotential (285 : State)
      decide
  ·
    simp [graphSmokeNext_s0285, h_l0001] at h

theorem valid_s0286 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (286 : State) label t gain ->
      gain + graphPotential t <= graphPotential (286 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0286 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0286] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (441 : State) <= graphPotential (286 : State)
    decide
  ·
    simp [graphSmokeNext_s0286, h_l0001] at h

theorem transition_ok_s0286 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (286 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (286 : State) := by
  intro h
  change graphSmokeNext_s0286 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0286] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (441 : State) <= graphPotential (286 : State)
      decide
  ·
    simp [graphSmokeNext_s0286, h_l0001] at h

theorem valid_s0287 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (287 : State) label t gain ->
      gain + graphPotential t <= graphPotential (287 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0287 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0287] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (444 : State) <= graphPotential (287 : State)
    decide
  ·
    simp [graphSmokeNext_s0287, h_l0001] at h

theorem transition_ok_s0287 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (287 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (287 : State) := by
  intro h
  change graphSmokeNext_s0287 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0287] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (444 : State) <= graphPotential (287 : State)
      decide
  ·
    simp [graphSmokeNext_s0287, h_l0001] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 280 <= s) (hhi : s < 288) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0280 h
  · exact valid_s0281 h
  · exact valid_s0282 h
  · exact valid_s0283 h
  · exact valid_s0284 h
  · exact valid_s0285 h
  · exact valid_s0286 h
  · exact valid_s0287 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 280 <= s) (hhi : s < 288) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0280 h
  · exact transition_ok_s0281 h
  · exact transition_ok_s0282 h
  · exact transition_ok_s0283 h
  · exact transition_ok_s0284 h
  · exact transition_ok_s0285 h
  · exact transition_ok_s0286 h
  · exact transition_ok_s0287 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard035
