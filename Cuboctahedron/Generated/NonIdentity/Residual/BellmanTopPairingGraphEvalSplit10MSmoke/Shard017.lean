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

/-- Validity shard for source states [136, 144). -/
theorem valid_s0136 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (136 : State) label t gain ->
      gain + graphPotential t <= graphPotential (136 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0136 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0136] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (278 : State) <= graphPotential (136 : State)
    decide
  ·
    simp [graphSmokeNext_s0136, h_l0003] at h

theorem transition_ok_s0136 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (136 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (136 : State) := by
  intro h
  change graphSmokeNext_s0136 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0136] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (278 : State) <= graphPotential (136 : State)
      decide
  ·
    simp [graphSmokeNext_s0136, h_l0003] at h

theorem valid_s0137 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (137 : State) label t gain ->
      gain + graphPotential t <= graphPotential (137 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0137 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0137] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (279 : State) <= graphPotential (137 : State)
    decide
  ·
    simp [graphSmokeNext_s0137, h_l0003] at h

theorem transition_ok_s0137 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (137 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (137 : State) := by
  intro h
  change graphSmokeNext_s0137 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0137] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (279 : State) <= graphPotential (137 : State)
      decide
  ·
    simp [graphSmokeNext_s0137, h_l0003] at h

theorem valid_s0138 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (138 : State) label t gain ->
      gain + graphPotential t <= graphPotential (138 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0138 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0138] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (281 : State) <= graphPotential (138 : State)
    decide
  ·
    simp [graphSmokeNext_s0138, h_l0003] at h

theorem transition_ok_s0138 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (138 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (138 : State) := by
  intro h
  change graphSmokeNext_s0138 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0138] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (281 : State) <= graphPotential (138 : State)
      decide
  ·
    simp [graphSmokeNext_s0138, h_l0003] at h

theorem valid_s0139 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (139 : State) label t gain ->
      gain + graphPotential t <= graphPotential (139 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0139 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0139] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (282 : State) <= graphPotential (139 : State)
    decide
  ·
    simp [graphSmokeNext_s0139, h_l0003] at h

theorem transition_ok_s0139 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (139 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (139 : State) := by
  intro h
  change graphSmokeNext_s0139 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0139] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (282 : State) <= graphPotential (139 : State)
      decide
  ·
    simp [graphSmokeNext_s0139, h_l0003] at h

theorem valid_s0140 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (140 : State) label t gain ->
      gain + graphPotential t <= graphPotential (140 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0140 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0140] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (283 : State) <= graphPotential (140 : State)
    decide
  ·
    simp [graphSmokeNext_s0140, h_l0003] at h

theorem transition_ok_s0140 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (140 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (140 : State) := by
  intro h
  change graphSmokeNext_s0140 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0140] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (283 : State) <= graphPotential (140 : State)
      decide
  ·
    simp [graphSmokeNext_s0140, h_l0003] at h

theorem valid_s0141 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (141 : State) label t gain ->
      gain + graphPotential t <= graphPotential (141 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0141 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0141] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (285 : State) <= graphPotential (141 : State)
    decide
  ·
    simp [graphSmokeNext_s0141, h_l0003] at h

theorem transition_ok_s0141 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (141 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (141 : State) := by
  intro h
  change graphSmokeNext_s0141 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0141] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (285 : State) <= graphPotential (141 : State)
      decide
  ·
    simp [graphSmokeNext_s0141, h_l0003] at h

theorem valid_s0142 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (142 : State) label t gain ->
      gain + graphPotential t <= graphPotential (142 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0142 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0142] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (286 : State) <= graphPotential (142 : State)
    decide
  ·
    simp [graphSmokeNext_s0142, h_l0003] at h

theorem transition_ok_s0142 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (142 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (142 : State) := by
  intro h
  change graphSmokeNext_s0142 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0142] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (286 : State) <= graphPotential (142 : State)
      decide
  ·
    simp [graphSmokeNext_s0142, h_l0003] at h

theorem valid_s0143 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (143 : State) label t gain ->
      gain + graphPotential t <= graphPotential (143 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0143 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0143] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (288 : State) <= graphPotential (143 : State)
    decide
  ·
    simp [graphSmokeNext_s0143, h_l0003] at h

theorem transition_ok_s0143 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (143 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (143 : State) := by
  intro h
  change graphSmokeNext_s0143 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0143] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (288 : State) <= graphPotential (143 : State)
      decide
  ·
    simp [graphSmokeNext_s0143, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 136 <= s) (hhi : s < 144) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0136 h
  · exact valid_s0137 h
  · exact valid_s0138 h
  · exact valid_s0139 h
  · exact valid_s0140 h
  · exact valid_s0141 h
  · exact valid_s0142 h
  · exact valid_s0143 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 136 <= s) (hhi : s < 144) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0136 h
  · exact transition_ok_s0137 h
  · exact transition_ok_s0138 h
  · exact transition_ok_s0139 h
  · exact transition_ok_s0140 h
  · exact transition_ok_s0141 h
  · exact transition_ok_s0142 h
  · exact transition_ok_s0143 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard017
