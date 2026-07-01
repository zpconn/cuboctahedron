import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard008

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [64, 72). -/
theorem valid_s0064 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (64 : State) label t gain ->
      gain + graphPotential t <= graphPotential (64 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0064 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0064] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (194 : State) <= graphPotential (64 : State)
    decide
  ·
    simp [graphSmokeNext_s0064, h_l0001] at h

theorem transition_ok_s0064 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (64 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (64 : State) := by
  intro h
  change graphSmokeNext_s0064 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0064] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (194 : State) <= graphPotential (64 : State)
      decide
  ·
    simp [graphSmokeNext_s0064, h_l0001] at h

theorem valid_s0065 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (65 : State) label t gain ->
      gain + graphPotential t <= graphPotential (65 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0065 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0065] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (195 : State) <= graphPotential (65 : State)
    decide
  ·
    simp [graphSmokeNext_s0065, h_l0001] at h

theorem transition_ok_s0065 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (65 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (65 : State) := by
  intro h
  change graphSmokeNext_s0065 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0065] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (195 : State) <= graphPotential (65 : State)
      decide
  ·
    simp [graphSmokeNext_s0065, h_l0001] at h

theorem valid_s0066 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (66 : State) label t gain ->
      gain + graphPotential t <= graphPotential (66 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0066 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (66 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (66 : State) := by
  intro h
  change graphSmokeNext_s0066 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0066] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (196 : State) <= graphPotential (66 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0066] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (170 : State) <= graphPotential (66 : State)
        decide
    ·
      simp [graphSmokeNext_s0066, h_l0001, h_l0012] at h

theorem valid_s0067 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (67 : State) label t gain ->
      gain + graphPotential t <= graphPotential (67 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0067 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (67 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (67 : State) := by
  intro h
  change graphSmokeNext_s0067 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0067] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (198 : State) <= graphPotential (67 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0067] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (172 : State) <= graphPotential (67 : State)
        decide
    ·
      simp [graphSmokeNext_s0067, h_l0001, h_l0012] at h

theorem valid_s0068 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (68 : State) label t gain ->
      gain + graphPotential t <= graphPotential (68 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0068 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (68 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (68 : State) := by
  intro h
  change graphSmokeNext_s0068 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0068] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (200 : State) <= graphPotential (68 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0068] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (173 : State) <= graphPotential (68 : State)
        decide
    ·
      simp [graphSmokeNext_s0068, h_l0001, h_l0012] at h

theorem valid_s0069 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (69 : State) label t gain ->
      gain + graphPotential t <= graphPotential (69 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0069 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (69 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (69 : State) := by
  intro h
  change graphSmokeNext_s0069 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0069] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (201 : State) <= graphPotential (69 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0069] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (174 : State) <= graphPotential (69 : State)
        decide
    ·
      simp [graphSmokeNext_s0069, h_l0001, h_l0012] at h

theorem valid_s0070 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (70 : State) label t gain ->
      gain + graphPotential t <= graphPotential (70 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0070 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (70 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (70 : State) := by
  intro h
  change graphSmokeNext_s0070 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0070] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (202 : State) <= graphPotential (70 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0070] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (115 : State) <= graphPotential (70 : State)
        decide
    ·
      simp [graphSmokeNext_s0070, h_l0001, h_l0011] at h

theorem valid_s0071 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (71 : State) label t gain ->
      gain + graphPotential t <= graphPotential (71 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0071 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (71 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (71 : State) := by
  intro h
  change graphSmokeNext_s0071 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0071] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (203 : State) <= graphPotential (71 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0071] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (116 : State) <= graphPotential (71 : State)
        decide
    ·
      simp [graphSmokeNext_s0071, h_l0001, h_l0011] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 64 <= s) (hhi : s < 72) :
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

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 64 <= s) (hhi : s < 72) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0064 h
  · exact transition_ok_s0065 h
  · exact transition_ok_s0066 h
  · exact transition_ok_s0067 h
  · exact transition_ok_s0068 h
  · exact transition_ok_s0069 h
  · exact transition_ok_s0070 h
  · exact transition_ok_s0071 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard008
