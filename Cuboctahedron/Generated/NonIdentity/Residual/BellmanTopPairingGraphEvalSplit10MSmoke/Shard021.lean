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

/-- Validity shard for source states [168, 176). -/
theorem valid_s0168 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (168 : State) label t gain ->
      gain + graphPotential t <= graphPotential (168 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0168 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0168] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (276 : State) <= graphPotential (168 : State)
    decide
  ·
    simp [graphSmokeNext_s0168, h_l0013] at h

theorem transition_ok_s0168 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (168 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (168 : State) := by
  intro h
  change graphSmokeNext_s0168 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0168] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (276 : State) <= graphPotential (168 : State)
      decide
  ·
    simp [graphSmokeNext_s0168, h_l0013] at h

theorem valid_s0169 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (169 : State) label t gain ->
      gain + graphPotential t <= graphPotential (169 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0169 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0169] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (277 : State) <= graphPotential (169 : State)
    decide
  ·
    simp [graphSmokeNext_s0169, h_l0013] at h

theorem transition_ok_s0169 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (169 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (169 : State) := by
  intro h
  change graphSmokeNext_s0169 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0169] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (277 : State) <= graphPotential (169 : State)
      decide
  ·
    simp [graphSmokeNext_s0169, h_l0013] at h

theorem valid_s0170 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (170 : State) label t gain ->
      gain + graphPotential t <= graphPotential (170 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0170 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0170] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (280 : State) <= graphPotential (170 : State)
    decide
  ·
    simp [graphSmokeNext_s0170, h_l0013] at h

theorem transition_ok_s0170 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (170 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (170 : State) := by
  intro h
  change graphSmokeNext_s0170 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0170] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (280 : State) <= graphPotential (170 : State)
      decide
  ·
    simp [graphSmokeNext_s0170, h_l0013] at h

theorem valid_s0171 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (171 : State) label t gain ->
      gain + graphPotential t <= graphPotential (171 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0171 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0171] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (284 : State) <= graphPotential (171 : State)
    decide
  ·
    simp [graphSmokeNext_s0171, h_l0013] at h

theorem transition_ok_s0171 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (171 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (171 : State) := by
  intro h
  change graphSmokeNext_s0171 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0171] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (284 : State) <= graphPotential (171 : State)
      decide
  ·
    simp [graphSmokeNext_s0171, h_l0013] at h

theorem valid_s0172 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (172 : State) label t gain ->
      gain + graphPotential t <= graphPotential (172 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0172 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0172] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (287 : State) <= graphPotential (172 : State)
    decide
  ·
    simp [graphSmokeNext_s0172, h_l0013] at h

theorem transition_ok_s0172 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (172 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (172 : State) := by
  intro h
  change graphSmokeNext_s0172 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0172] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (287 : State) <= graphPotential (172 : State)
      decide
  ·
    simp [graphSmokeNext_s0172, h_l0013] at h

theorem valid_s0173 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (173 : State) label t gain ->
      gain + graphPotential t <= graphPotential (173 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0173 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0173] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (295 : State) <= graphPotential (173 : State)
    decide
  ·
    simp [graphSmokeNext_s0173, h_l0013] at h

theorem transition_ok_s0173 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (173 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (173 : State) := by
  intro h
  change graphSmokeNext_s0173 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0173] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (295 : State) <= graphPotential (173 : State)
      decide
  ·
    simp [graphSmokeNext_s0173, h_l0013] at h

theorem valid_s0174 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (174 : State) label t gain ->
      gain + graphPotential t <= graphPotential (174 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0174 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0174] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (302 : State) <= graphPotential (174 : State)
    decide
  ·
    simp [graphSmokeNext_s0174, h_l0013] at h

theorem transition_ok_s0174 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (174 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (174 : State) := by
  intro h
  change graphSmokeNext_s0174 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0174] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (302 : State) <= graphPotential (174 : State)
      decide
  ·
    simp [graphSmokeNext_s0174, h_l0013] at h

theorem valid_s0175 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (175 : State) label t gain ->
      gain + graphPotential t <= graphPotential (175 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0175 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0175] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (307 : State) <= graphPotential (175 : State)
    decide
  ·
    simp [graphSmokeNext_s0175, h_l0013] at h

theorem transition_ok_s0175 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (175 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (175 : State) := by
  intro h
  change graphSmokeNext_s0175 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0175] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (307 : State) <= graphPotential (175 : State)
      decide
  ·
    simp [graphSmokeNext_s0175, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 168 <= s) (hhi : s < 176) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0168 h
  · exact valid_s0169 h
  · exact valid_s0170 h
  · exact valid_s0171 h
  · exact valid_s0172 h
  · exact valid_s0173 h
  · exact valid_s0174 h
  · exact valid_s0175 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 168 <= s) (hhi : s < 176) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0168 h
  · exact transition_ok_s0169 h
  · exact transition_ok_s0170 h
  · exact transition_ok_s0171 h
  · exact transition_ok_s0172 h
  · exact transition_ok_s0173 h
  · exact transition_ok_s0174 h
  · exact transition_ok_s0175 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard021
