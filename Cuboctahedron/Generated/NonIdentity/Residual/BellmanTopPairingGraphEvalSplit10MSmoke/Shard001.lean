import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard001

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [16, 32). -/
theorem valid_s0016 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (16 : State) label t gain ->
      gain + graphPotential t <= graphPotential (16 : State) := by
  intro h
  change graphSmokeNext_s0016 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0016] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (135 : State) <= graphPotential (16 : State)
    decide
  ·
    simp [graphSmokeNext_s0016, h_l0007] at h

theorem valid_s0017 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (17 : State) label t gain ->
      gain + graphPotential t <= graphPotential (17 : State) := by
  intro h
  change graphSmokeNext_s0017 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0017] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (136 : State) <= graphPotential (17 : State)
    decide
  ·
    simp [graphSmokeNext_s0017, h_l0007] at h

theorem valid_s0018 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (18 : State) label t gain ->
      gain + graphPotential t <= graphPotential (18 : State) := by
  intro h
  change graphSmokeNext_s0018 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0018] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (138 : State) <= graphPotential (18 : State)
    decide
  ·
    simp [graphSmokeNext_s0018, h_l0007] at h

theorem valid_s0019 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (19 : State) label t gain ->
      gain + graphPotential t <= graphPotential (19 : State) := by
  intro h
  change graphSmokeNext_s0019 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0019] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (139 : State) <= graphPotential (19 : State)
    decide
  ·
    simp [graphSmokeNext_s0019, h_l0007] at h

theorem valid_s0020 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (20 : State) label t gain ->
      gain + graphPotential t <= graphPotential (20 : State) := by
  intro h
  change graphSmokeNext_s0020 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0020] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (140 : State) <= graphPotential (20 : State)
    decide
  ·
    simp [graphSmokeNext_s0020, h_l0007] at h

theorem valid_s0021 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (21 : State) label t gain ->
      gain + graphPotential t <= graphPotential (21 : State) := by
  intro h
  change graphSmokeNext_s0021 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0021] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (141 : State) <= graphPotential (21 : State)
    decide
  ·
    simp [graphSmokeNext_s0021, h_l0007] at h

theorem valid_s0022 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (22 : State) label t gain ->
      gain + graphPotential t <= graphPotential (22 : State) := by
  intro h
  change graphSmokeNext_s0022 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0022] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (148 : State) <= graphPotential (22 : State)
    decide
  ·
    simp [graphSmokeNext_s0022, h_l0007] at h

theorem valid_s0023 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (23 : State) label t gain ->
      gain + graphPotential t <= graphPotential (23 : State) := by
  intro h
  change graphSmokeNext_s0023 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0023] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (150 : State) <= graphPotential (23 : State)
    decide
  ·
    simp [graphSmokeNext_s0023, h_l0007] at h

theorem valid_s0024 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (24 : State) label t gain ->
      gain + graphPotential t <= graphPotential (24 : State) := by
  intro h
  change graphSmokeNext_s0024 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0024] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (151 : State) <= graphPotential (24 : State)
    decide
  ·
    simp [graphSmokeNext_s0024, h_l0007] at h

theorem valid_s0025 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (25 : State) label t gain ->
      gain + graphPotential t <= graphPotential (25 : State) := by
  intro h
  change graphSmokeNext_s0025 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0025] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (152 : State) <= graphPotential (25 : State)
    decide
  ·
    simp [graphSmokeNext_s0025, h_l0007] at h

theorem valid_s0026 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (26 : State) label t gain ->
      gain + graphPotential t <= graphPotential (26 : State) := by
  intro h
  change graphSmokeNext_s0026 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0026] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (153 : State) <= graphPotential (26 : State)
    decide
  ·
    simp [graphSmokeNext_s0026, h_l0007] at h

theorem valid_s0027 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (27 : State) label t gain ->
      gain + graphPotential t <= graphPotential (27 : State) := by
  intro h
  change graphSmokeNext_s0027 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0027] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (154 : State) <= graphPotential (27 : State)
    decide
  ·
    simp [graphSmokeNext_s0027, h_l0007] at h

theorem valid_s0028 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (28 : State) label t gain ->
      gain + graphPotential t <= graphPotential (28 : State) := by
  intro h
  change graphSmokeNext_s0028 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0028] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (156 : State) <= graphPotential (28 : State)
    decide
  ·
    simp [graphSmokeNext_s0028, h_l0007] at h

theorem valid_s0029 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (29 : State) label t gain ->
      gain + graphPotential t <= graphPotential (29 : State) := by
  intro h
  change graphSmokeNext_s0029 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0029] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (157 : State) <= graphPotential (29 : State)
    decide
  ·
    simp [graphSmokeNext_s0029, h_l0007] at h

theorem valid_s0030 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (30 : State) label t gain ->
      gain + graphPotential t <= graphPotential (30 : State) := by
  intro h
  change graphSmokeNext_s0030 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0030] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (158 : State) <= graphPotential (30 : State)
    decide
  ·
    simp [graphSmokeNext_s0030, h_l0007] at h

theorem valid_s0031 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (31 : State) label t gain ->
      gain + graphPotential t <= graphPotential (31 : State) := by
  intro h
  change graphSmokeNext_s0031 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0031] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (159 : State) <= graphPotential (31 : State)
    decide
  ·
    simp [graphSmokeNext_s0031, h_l0007] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 16 <= s) (hhi : s < 32) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0016 h
  · exact valid_s0017 h
  · exact valid_s0018 h
  · exact valid_s0019 h
  · exact valid_s0020 h
  · exact valid_s0021 h
  · exact valid_s0022 h
  · exact valid_s0023 h
  · exact valid_s0024 h
  · exact valid_s0025 h
  · exact valid_s0026 h
  · exact valid_s0027 h
  · exact valid_s0028 h
  · exact valid_s0029 h
  · exact valid_s0030 h
  · exact valid_s0031 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard001
