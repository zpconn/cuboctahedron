import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard004

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [64, 80). -/
theorem valid_s0064 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (64 : State) label t gain ->
      gain + graphPotential t <= graphPotential (64 : State) := by
  intro h
  change graphSmokeNext_s0064 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0064] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (194 : State) <= graphPotential (64 : State)
    decide
  ·
    simp [graphSmokeNext_s0064, h_l0001] at h

theorem valid_s0065 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (65 : State) label t gain ->
      gain + graphPotential t <= graphPotential (65 : State) := by
  intro h
  change graphSmokeNext_s0065 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0065] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (195 : State) <= graphPotential (65 : State)
    decide
  ·
    simp [graphSmokeNext_s0065, h_l0001] at h

theorem valid_s0066 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (66 : State) label t gain ->
      gain + graphPotential t <= graphPotential (66 : State) := by
  intro h
  change graphSmokeNext_s0066 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0066] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (196 : State) <= graphPotential (66 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0066] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (170 : State) <= graphPotential (66 : State)
      decide
    ·
      simp [graphSmokeNext_s0066, h_l0001, h_l0012] at h

theorem valid_s0067 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (67 : State) label t gain ->
      gain + graphPotential t <= graphPotential (67 : State) := by
  intro h
  change graphSmokeNext_s0067 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0067] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (198 : State) <= graphPotential (67 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0067] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (172 : State) <= graphPotential (67 : State)
      decide
    ·
      simp [graphSmokeNext_s0067, h_l0001, h_l0012] at h

theorem valid_s0068 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (68 : State) label t gain ->
      gain + graphPotential t <= graphPotential (68 : State) := by
  intro h
  change graphSmokeNext_s0068 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0068] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (200 : State) <= graphPotential (68 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0068] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (173 : State) <= graphPotential (68 : State)
      decide
    ·
      simp [graphSmokeNext_s0068, h_l0001, h_l0012] at h

theorem valid_s0069 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (69 : State) label t gain ->
      gain + graphPotential t <= graphPotential (69 : State) := by
  intro h
  change graphSmokeNext_s0069 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0069] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (201 : State) <= graphPotential (69 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0069] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (174 : State) <= graphPotential (69 : State)
      decide
    ·
      simp [graphSmokeNext_s0069, h_l0001, h_l0012] at h

theorem valid_s0070 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (70 : State) label t gain ->
      gain + graphPotential t <= graphPotential (70 : State) := by
  intro h
  change graphSmokeNext_s0070 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0070] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (202 : State) <= graphPotential (70 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0070] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (115 : State) <= graphPotential (70 : State)
      decide
    ·
      simp [graphSmokeNext_s0070, h_l0001, h_l0011] at h

theorem valid_s0071 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (71 : State) label t gain ->
      gain + graphPotential t <= graphPotential (71 : State) := by
  intro h
  change graphSmokeNext_s0071 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0071] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (203 : State) <= graphPotential (71 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0071] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (116 : State) <= graphPotential (71 : State)
      decide
    ·
      simp [graphSmokeNext_s0071, h_l0001, h_l0011] at h

theorem valid_s0072 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (72 : State) label t gain ->
      gain + graphPotential t <= graphPotential (72 : State) := by
  intro h
  change graphSmokeNext_s0072 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0072] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (204 : State) <= graphPotential (72 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0072] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (118 : State) <= graphPotential (72 : State)
      decide
    ·
      simp [graphSmokeNext_s0072, h_l0001, h_l0011] at h

theorem valid_s0073 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (73 : State) label t gain ->
      gain + graphPotential t <= graphPotential (73 : State) := by
  intro h
  change graphSmokeNext_s0073 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0073] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (205 : State) <= graphPotential (73 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0073] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (121 : State) <= graphPotential (73 : State)
      decide
    ·
      simp [graphSmokeNext_s0073, h_l0001, h_l0011] at h

theorem valid_s0074 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (74 : State) label t gain ->
      gain + graphPotential t <= graphPotential (74 : State) := by
  intro h
  change graphSmokeNext_s0074 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0074] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (206 : State) <= graphPotential (74 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0074] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (125 : State) <= graphPotential (74 : State)
      decide
    ·
      simp [graphSmokeNext_s0074, h_l0001, h_l0011] at h

theorem valid_s0075 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (75 : State) label t gain ->
      gain + graphPotential t <= graphPotential (75 : State) := by
  intro h
  change graphSmokeNext_s0075 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0075] at h
    rcases h with ⟨rfl, rfl⟩
    change (-117 : Int) + graphPotential (137 : State) <= graphPotential (75 : State)
    decide
  ·
    simp [graphSmokeNext_s0075, h_l0011] at h

theorem valid_s0076 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (76 : State) label t gain ->
      gain + graphPotential t <= graphPotential (76 : State) := by
  intro h
  change graphSmokeNext_s0076 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0076] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (207 : State) <= graphPotential (76 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0076] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (142 : State) <= graphPotential (76 : State)
      decide
    ·
      simp [graphSmokeNext_s0076, h_l0001, h_l0011] at h

theorem valid_s0077 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (77 : State) label t gain ->
      gain + graphPotential t <= graphPotential (77 : State) := by
  intro h
  change graphSmokeNext_s0077 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0077] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (208 : State) <= graphPotential (77 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0077] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (143 : State) <= graphPotential (77 : State)
      decide
    ·
      simp [graphSmokeNext_s0077, h_l0001, h_l0011] at h

theorem valid_s0078 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (78 : State) label t gain ->
      gain + graphPotential t <= graphPotential (78 : State) := by
  intro h
  change graphSmokeNext_s0078 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0078] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (209 : State) <= graphPotential (78 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0078] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (144 : State) <= graphPotential (78 : State)
      decide
    ·
      simp [graphSmokeNext_s0078, h_l0001, h_l0011] at h

theorem valid_s0079 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (79 : State) label t gain ->
      gain + graphPotential t <= graphPotential (79 : State) := by
  intro h
  change graphSmokeNext_s0079 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0079] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (210 : State) <= graphPotential (79 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0079] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (145 : State) <= graphPotential (79 : State)
      decide
    ·
      simp [graphSmokeNext_s0079, h_l0001, h_l0011] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 64 <= s) (hhi : s < 80) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0064 h
  · exact valid_s0065 h
  · exact valid_s0066 h
  · exact valid_s0067 h
  · exact valid_s0068 h
  · exact valid_s0069 h
  · exact valid_s0070 h
  · exact valid_s0071 h
  · exact valid_s0072 h
  · exact valid_s0073 h
  · exact valid_s0074 h
  · exact valid_s0075 h
  · exact valid_s0076 h
  · exact valid_s0077 h
  · exact valid_s0078 h
  · exact valid_s0079 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard004
