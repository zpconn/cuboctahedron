import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard019

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [152, 160). -/
theorem valid_s0152 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (152 : State) label t gain ->
      gain + graphPotential t <= graphPotential (152 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0152 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0152] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (298 : State) <= graphPotential (152 : State)
    decide
  ·
    simp [graphSmokeNext_s0152, h_l0003] at h

theorem transition_ok_s0152 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (152 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (152 : State) := by
  intro h
  change graphSmokeNext_s0152 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0152] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (298 : State) <= graphPotential (152 : State)
      decide
  ·
    simp [graphSmokeNext_s0152, h_l0003] at h

theorem valid_s0153 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (153 : State) label t gain ->
      gain + graphPotential t <= graphPotential (153 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0153 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0153] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (299 : State) <= graphPotential (153 : State)
    decide
  ·
    simp [graphSmokeNext_s0153, h_l0003] at h

theorem transition_ok_s0153 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (153 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (153 : State) := by
  intro h
  change graphSmokeNext_s0153 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0153] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (299 : State) <= graphPotential (153 : State)
      decide
  ·
    simp [graphSmokeNext_s0153, h_l0003] at h

theorem valid_s0154 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (154 : State) label t gain ->
      gain + graphPotential t <= graphPotential (154 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0154 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0154] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (300 : State) <= graphPotential (154 : State)
    decide
  ·
    simp [graphSmokeNext_s0154, h_l0003] at h

theorem transition_ok_s0154 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (154 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (154 : State) := by
  intro h
  change graphSmokeNext_s0154 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0154] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (300 : State) <= graphPotential (154 : State)
      decide
  ·
    simp [graphSmokeNext_s0154, h_l0003] at h

theorem valid_s0155 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (155 : State) label t gain ->
      gain + graphPotential t <= graphPotential (155 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0155 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0155] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (301 : State) <= graphPotential (155 : State)
    decide
  ·
    simp [graphSmokeNext_s0155, h_l0003] at h

theorem transition_ok_s0155 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (155 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (155 : State) := by
  intro h
  change graphSmokeNext_s0155 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0155] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (301 : State) <= graphPotential (155 : State)
      decide
  ·
    simp [graphSmokeNext_s0155, h_l0003] at h

theorem valid_s0156 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (156 : State) label t gain ->
      gain + graphPotential t <= graphPotential (156 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0156 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0156] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (303 : State) <= graphPotential (156 : State)
    decide
  ·
    simp [graphSmokeNext_s0156, h_l0003] at h

theorem transition_ok_s0156 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (156 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (156 : State) := by
  intro h
  change graphSmokeNext_s0156 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0156] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (303 : State) <= graphPotential (156 : State)
      decide
  ·
    simp [graphSmokeNext_s0156, h_l0003] at h

theorem valid_s0157 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (157 : State) label t gain ->
      gain + graphPotential t <= graphPotential (157 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0157 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0157] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (304 : State) <= graphPotential (157 : State)
    decide
  ·
    simp [graphSmokeNext_s0157, h_l0003] at h

theorem transition_ok_s0157 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (157 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (157 : State) := by
  intro h
  change graphSmokeNext_s0157 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0157] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (304 : State) <= graphPotential (157 : State)
      decide
  ·
    simp [graphSmokeNext_s0157, h_l0003] at h

theorem valid_s0158 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (158 : State) label t gain ->
      gain + graphPotential t <= graphPotential (158 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0158 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0158] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (305 : State) <= graphPotential (158 : State)
    decide
  ·
    simp [graphSmokeNext_s0158, h_l0003] at h

theorem transition_ok_s0158 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (158 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (158 : State) := by
  intro h
  change graphSmokeNext_s0158 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0158] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (305 : State) <= graphPotential (158 : State)
      decide
  ·
    simp [graphSmokeNext_s0158, h_l0003] at h

theorem valid_s0159 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (159 : State) label t gain ->
      gain + graphPotential t <= graphPotential (159 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0159 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0159] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (306 : State) <= graphPotential (159 : State)
    decide
  ·
    simp [graphSmokeNext_s0159, h_l0003] at h

theorem transition_ok_s0159 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (159 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (159 : State) := by
  intro h
  change graphSmokeNext_s0159 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0159] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (306 : State) <= graphPotential (159 : State)
      decide
  ·
    simp [graphSmokeNext_s0159, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 152 <= s) (hhi : s < 160) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0152 h
  · exact valid_s0153 h
  · exact valid_s0154 h
  · exact valid_s0155 h
  · exact valid_s0156 h
  · exact valid_s0157 h
  · exact valid_s0158 h
  · exact valid_s0159 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 152 <= s) (hhi : s < 160) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0152 h
  · exact transition_ok_s0153 h
  · exact transition_ok_s0154 h
  · exact transition_ok_s0155 h
  · exact transition_ok_s0156 h
  · exact transition_ok_s0157 h
  · exact transition_ok_s0158 h
  · exact transition_ok_s0159 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard019
