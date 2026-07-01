import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard009

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [144, 160). -/
theorem valid_s0144 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (144 : State) label t gain ->
      gain + graphPotential t <= graphPotential (144 : State) := by
  intro h
  change graphSmokeNext_s0144 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0144] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (289 : State) <= graphPotential (144 : State)
    decide
  ·
    simp [graphSmokeNext_s0144, h_l0003] at h

theorem valid_s0145 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (145 : State) label t gain ->
      gain + graphPotential t <= graphPotential (145 : State) := by
  intro h
  change graphSmokeNext_s0145 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0145] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (290 : State) <= graphPotential (145 : State)
    decide
  ·
    simp [graphSmokeNext_s0145, h_l0003] at h

theorem valid_s0146 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (146 : State) label t gain ->
      gain + graphPotential t <= graphPotential (146 : State) := by
  intro h
  change graphSmokeNext_s0146 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0146] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (291 : State) <= graphPotential (146 : State)
    decide
  ·
    simp [graphSmokeNext_s0146, h_l0003] at h

theorem valid_s0147 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (147 : State) label t gain ->
      gain + graphPotential t <= graphPotential (147 : State) := by
  intro h
  change graphSmokeNext_s0147 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0147] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (292 : State) <= graphPotential (147 : State)
    decide
  ·
    simp [graphSmokeNext_s0147, h_l0003] at h

theorem valid_s0148 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (148 : State) label t gain ->
      gain + graphPotential t <= graphPotential (148 : State) := by
  intro h
  change graphSmokeNext_s0148 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0148] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (293 : State) <= graphPotential (148 : State)
    decide
  ·
    simp [graphSmokeNext_s0148, h_l0003] at h

theorem valid_s0149 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (149 : State) label t gain ->
      gain + graphPotential t <= graphPotential (149 : State) := by
  intro h
  change graphSmokeNext_s0149 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0149] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (294 : State) <= graphPotential (149 : State)
    decide
  ·
    simp [graphSmokeNext_s0149, h_l0003] at h

theorem valid_s0150 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (150 : State) label t gain ->
      gain + graphPotential t <= graphPotential (150 : State) := by
  intro h
  change graphSmokeNext_s0150 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0150] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (296 : State) <= graphPotential (150 : State)
    decide
  ·
    simp [graphSmokeNext_s0150, h_l0003] at h

theorem valid_s0151 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (151 : State) label t gain ->
      gain + graphPotential t <= graphPotential (151 : State) := by
  intro h
  change graphSmokeNext_s0151 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0151] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (297 : State) <= graphPotential (151 : State)
    decide
  ·
    simp [graphSmokeNext_s0151, h_l0003] at h

theorem valid_s0152 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (152 : State) label t gain ->
      gain + graphPotential t <= graphPotential (152 : State) := by
  intro h
  change graphSmokeNext_s0152 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0152] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (298 : State) <= graphPotential (152 : State)
    decide
  ·
    simp [graphSmokeNext_s0152, h_l0003] at h

theorem valid_s0153 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (153 : State) label t gain ->
      gain + graphPotential t <= graphPotential (153 : State) := by
  intro h
  change graphSmokeNext_s0153 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0153] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (299 : State) <= graphPotential (153 : State)
    decide
  ·
    simp [graphSmokeNext_s0153, h_l0003] at h

theorem valid_s0154 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (154 : State) label t gain ->
      gain + graphPotential t <= graphPotential (154 : State) := by
  intro h
  change graphSmokeNext_s0154 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0154] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (300 : State) <= graphPotential (154 : State)
    decide
  ·
    simp [graphSmokeNext_s0154, h_l0003] at h

theorem valid_s0155 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (155 : State) label t gain ->
      gain + graphPotential t <= graphPotential (155 : State) := by
  intro h
  change graphSmokeNext_s0155 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0155] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (301 : State) <= graphPotential (155 : State)
    decide
  ·
    simp [graphSmokeNext_s0155, h_l0003] at h

theorem valid_s0156 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (156 : State) label t gain ->
      gain + graphPotential t <= graphPotential (156 : State) := by
  intro h
  change graphSmokeNext_s0156 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0156] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (303 : State) <= graphPotential (156 : State)
    decide
  ·
    simp [graphSmokeNext_s0156, h_l0003] at h

theorem valid_s0157 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (157 : State) label t gain ->
      gain + graphPotential t <= graphPotential (157 : State) := by
  intro h
  change graphSmokeNext_s0157 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0157] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (304 : State) <= graphPotential (157 : State)
    decide
  ·
    simp [graphSmokeNext_s0157, h_l0003] at h

theorem valid_s0158 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (158 : State) label t gain ->
      gain + graphPotential t <= graphPotential (158 : State) := by
  intro h
  change graphSmokeNext_s0158 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0158] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (305 : State) <= graphPotential (158 : State)
    decide
  ·
    simp [graphSmokeNext_s0158, h_l0003] at h

theorem valid_s0159 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (159 : State) label t gain ->
      gain + graphPotential t <= graphPotential (159 : State) := by
  intro h
  change graphSmokeNext_s0159 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0159] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (306 : State) <= graphPotential (159 : State)
    decide
  ·
    simp [graphSmokeNext_s0159, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 144 <= s) (hhi : s < 160) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0144 h
  · exact valid_s0145 h
  · exact valid_s0146 h
  · exact valid_s0147 h
  · exact valid_s0148 h
  · exact valid_s0149 h
  · exact valid_s0150 h
  · exact valid_s0151 h
  · exact valid_s0152 h
  · exact valid_s0153 h
  · exact valid_s0154 h
  · exact valid_s0155 h
  · exact valid_s0156 h
  · exact valid_s0157 h
  · exact valid_s0158 h
  · exact valid_s0159 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard009
