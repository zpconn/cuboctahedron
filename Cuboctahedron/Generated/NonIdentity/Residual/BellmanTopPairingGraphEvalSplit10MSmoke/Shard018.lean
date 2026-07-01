import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard018

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [144, 152). -/
theorem valid_s0144 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (144 : State) label t gain ->
      gain + graphPotential t <= graphPotential (144 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0144 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0144] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (289 : State) <= graphPotential (144 : State)
    decide
  ·
    simp [graphSmokeNext_s0144, h_l0003] at h

theorem transition_ok_s0144 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (144 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (144 : State) := by
  intro h
  change graphSmokeNext_s0144 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0144] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (289 : State) <= graphPotential (144 : State)
      decide
  ·
    simp [graphSmokeNext_s0144, h_l0003] at h

theorem valid_s0145 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (145 : State) label t gain ->
      gain + graphPotential t <= graphPotential (145 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0145 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0145] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (290 : State) <= graphPotential (145 : State)
    decide
  ·
    simp [graphSmokeNext_s0145, h_l0003] at h

theorem transition_ok_s0145 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (145 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (145 : State) := by
  intro h
  change graphSmokeNext_s0145 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0145] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (290 : State) <= graphPotential (145 : State)
      decide
  ·
    simp [graphSmokeNext_s0145, h_l0003] at h

theorem valid_s0146 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (146 : State) label t gain ->
      gain + graphPotential t <= graphPotential (146 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0146 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0146] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (291 : State) <= graphPotential (146 : State)
    decide
  ·
    simp [graphSmokeNext_s0146, h_l0003] at h

theorem transition_ok_s0146 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (146 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (146 : State) := by
  intro h
  change graphSmokeNext_s0146 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0146] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (291 : State) <= graphPotential (146 : State)
      decide
  ·
    simp [graphSmokeNext_s0146, h_l0003] at h

theorem valid_s0147 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (147 : State) label t gain ->
      gain + graphPotential t <= graphPotential (147 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0147 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0147] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (292 : State) <= graphPotential (147 : State)
    decide
  ·
    simp [graphSmokeNext_s0147, h_l0003] at h

theorem transition_ok_s0147 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (147 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (147 : State) := by
  intro h
  change graphSmokeNext_s0147 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0147] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (292 : State) <= graphPotential (147 : State)
      decide
  ·
    simp [graphSmokeNext_s0147, h_l0003] at h

theorem valid_s0148 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (148 : State) label t gain ->
      gain + graphPotential t <= graphPotential (148 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0148 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0148] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (293 : State) <= graphPotential (148 : State)
    decide
  ·
    simp [graphSmokeNext_s0148, h_l0003] at h

theorem transition_ok_s0148 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (148 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (148 : State) := by
  intro h
  change graphSmokeNext_s0148 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0148] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (293 : State) <= graphPotential (148 : State)
      decide
  ·
    simp [graphSmokeNext_s0148, h_l0003] at h

theorem valid_s0149 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (149 : State) label t gain ->
      gain + graphPotential t <= graphPotential (149 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0149 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0149] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (294 : State) <= graphPotential (149 : State)
    decide
  ·
    simp [graphSmokeNext_s0149, h_l0003] at h

theorem transition_ok_s0149 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (149 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (149 : State) := by
  intro h
  change graphSmokeNext_s0149 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0149] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (294 : State) <= graphPotential (149 : State)
      decide
  ·
    simp [graphSmokeNext_s0149, h_l0003] at h

theorem valid_s0150 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (150 : State) label t gain ->
      gain + graphPotential t <= graphPotential (150 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0150 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0150] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (296 : State) <= graphPotential (150 : State)
    decide
  ·
    simp [graphSmokeNext_s0150, h_l0003] at h

theorem transition_ok_s0150 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (150 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (150 : State) := by
  intro h
  change graphSmokeNext_s0150 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0150] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (296 : State) <= graphPotential (150 : State)
      decide
  ·
    simp [graphSmokeNext_s0150, h_l0003] at h

theorem valid_s0151 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (151 : State) label t gain ->
      gain + graphPotential t <= graphPotential (151 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0151 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0151] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (297 : State) <= graphPotential (151 : State)
    decide
  ·
    simp [graphSmokeNext_s0151, h_l0003] at h

theorem transition_ok_s0151 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (151 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (151 : State) := by
  intro h
  change graphSmokeNext_s0151 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0151] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (297 : State) <= graphPotential (151 : State)
      decide
  ·
    simp [graphSmokeNext_s0151, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 144 <= s) (hhi : s < 152) :
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

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 144 <= s) (hhi : s < 152) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0144 h
  · exact transition_ok_s0145 h
  · exact transition_ok_s0146 h
  · exact transition_ok_s0147 h
  · exact transition_ok_s0148 h
  · exact transition_ok_s0149 h
  · exact transition_ok_s0150 h
  · exact transition_ok_s0151 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard018
