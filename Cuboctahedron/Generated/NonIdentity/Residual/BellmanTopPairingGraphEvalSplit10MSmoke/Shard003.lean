import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard003

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [24, 32). -/
theorem valid_s0024 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (24 : State) label t gain ->
      gain + graphPotential t <= graphPotential (24 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0024 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0024] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (151 : State) <= graphPotential (24 : State)
    decide
  ·
    simp [graphSmokeNext_s0024, h_l0007] at h

theorem transition_ok_s0024 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (24 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (24 : State) := by
  intro h
  change graphSmokeNext_s0024 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0024] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (151 : State) <= graphPotential (24 : State)
      decide
  ·
    simp [graphSmokeNext_s0024, h_l0007] at h

theorem valid_s0025 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (25 : State) label t gain ->
      gain + graphPotential t <= graphPotential (25 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0025 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0025] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (152 : State) <= graphPotential (25 : State)
    decide
  ·
    simp [graphSmokeNext_s0025, h_l0007] at h

theorem transition_ok_s0025 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (25 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (25 : State) := by
  intro h
  change graphSmokeNext_s0025 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0025] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (152 : State) <= graphPotential (25 : State)
      decide
  ·
    simp [graphSmokeNext_s0025, h_l0007] at h

theorem valid_s0026 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (26 : State) label t gain ->
      gain + graphPotential t <= graphPotential (26 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0026 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0026] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (153 : State) <= graphPotential (26 : State)
    decide
  ·
    simp [graphSmokeNext_s0026, h_l0007] at h

theorem transition_ok_s0026 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (26 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (26 : State) := by
  intro h
  change graphSmokeNext_s0026 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0026] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (153 : State) <= graphPotential (26 : State)
      decide
  ·
    simp [graphSmokeNext_s0026, h_l0007] at h

theorem valid_s0027 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (27 : State) label t gain ->
      gain + graphPotential t <= graphPotential (27 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0027 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0027] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (154 : State) <= graphPotential (27 : State)
    decide
  ·
    simp [graphSmokeNext_s0027, h_l0007] at h

theorem transition_ok_s0027 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (27 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (27 : State) := by
  intro h
  change graphSmokeNext_s0027 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0027] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (154 : State) <= graphPotential (27 : State)
      decide
  ·
    simp [graphSmokeNext_s0027, h_l0007] at h

theorem valid_s0028 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (28 : State) label t gain ->
      gain + graphPotential t <= graphPotential (28 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0028 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0028] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (156 : State) <= graphPotential (28 : State)
    decide
  ·
    simp [graphSmokeNext_s0028, h_l0007] at h

theorem transition_ok_s0028 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (28 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (28 : State) := by
  intro h
  change graphSmokeNext_s0028 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0028] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (156 : State) <= graphPotential (28 : State)
      decide
  ·
    simp [graphSmokeNext_s0028, h_l0007] at h

theorem valid_s0029 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (29 : State) label t gain ->
      gain + graphPotential t <= graphPotential (29 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0029 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0029] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (157 : State) <= graphPotential (29 : State)
    decide
  ·
    simp [graphSmokeNext_s0029, h_l0007] at h

theorem transition_ok_s0029 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (29 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (29 : State) := by
  intro h
  change graphSmokeNext_s0029 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0029] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (157 : State) <= graphPotential (29 : State)
      decide
  ·
    simp [graphSmokeNext_s0029, h_l0007] at h

theorem valid_s0030 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (30 : State) label t gain ->
      gain + graphPotential t <= graphPotential (30 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0030 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0030] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (158 : State) <= graphPotential (30 : State)
    decide
  ·
    simp [graphSmokeNext_s0030, h_l0007] at h

theorem transition_ok_s0030 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (30 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (30 : State) := by
  intro h
  change graphSmokeNext_s0030 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0030] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (158 : State) <= graphPotential (30 : State)
      decide
  ·
    simp [graphSmokeNext_s0030, h_l0007] at h

theorem valid_s0031 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (31 : State) label t gain ->
      gain + graphPotential t <= graphPotential (31 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0031 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0031] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (159 : State) <= graphPotential (31 : State)
    decide
  ·
    simp [graphSmokeNext_s0031, h_l0007] at h

theorem transition_ok_s0031 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (31 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (31 : State) := by
  intro h
  change graphSmokeNext_s0031 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0031] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (159 : State) <= graphPotential (31 : State)
      decide
  ·
    simp [graphSmokeNext_s0031, h_l0007] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 24 <= s) (hhi : s < 32) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0024 h
  · exact valid_s0025 h
  · exact valid_s0026 h
  · exact valid_s0027 h
  · exact valid_s0028 h
  · exact valid_s0029 h
  · exact valid_s0030 h
  · exact valid_s0031 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 24 <= s) (hhi : s < 32) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0024 h
  · exact transition_ok_s0025 h
  · exact transition_ok_s0026 h
  · exact transition_ok_s0027 h
  · exact transition_ok_s0028 h
  · exact transition_ok_s0029 h
  · exact transition_ok_s0030 h
  · exact transition_ok_s0031 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard003
