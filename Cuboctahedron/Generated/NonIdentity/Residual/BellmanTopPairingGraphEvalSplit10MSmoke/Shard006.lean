import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard006

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [48, 56). -/
theorem valid_s0048 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (48 : State) label t gain ->
      gain + graphPotential t <= graphPotential (48 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0048 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0048] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (175 : State) <= graphPotential (48 : State)
    decide
  ·
    simp [graphSmokeNext_s0048, h_l0002] at h

theorem transition_ok_s0048 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (48 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (48 : State) := by
  intro h
  change graphSmokeNext_s0048 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0048] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (175 : State) <= graphPotential (48 : State)
      decide
  ·
    simp [graphSmokeNext_s0048, h_l0002] at h

theorem valid_s0049 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (49 : State) label t gain ->
      gain + graphPotential t <= graphPotential (49 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0049 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0049] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (176 : State) <= graphPotential (49 : State)
    decide
  ·
    simp [graphSmokeNext_s0049, h_l0002] at h

theorem transition_ok_s0049 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (49 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (49 : State) := by
  intro h
  change graphSmokeNext_s0049 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0049] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (176 : State) <= graphPotential (49 : State)
      decide
  ·
    simp [graphSmokeNext_s0049, h_l0002] at h

theorem valid_s0050 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (50 : State) label t gain ->
      gain + graphPotential t <= graphPotential (50 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0050 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0050] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (178 : State) <= graphPotential (50 : State)
    decide
  ·
    simp [graphSmokeNext_s0050, h_l0002] at h

theorem transition_ok_s0050 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (50 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (50 : State) := by
  intro h
  change graphSmokeNext_s0050 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0050] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (178 : State) <= graphPotential (50 : State)
      decide
  ·
    simp [graphSmokeNext_s0050, h_l0002] at h

theorem valid_s0051 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (51 : State) label t gain ->
      gain + graphPotential t <= graphPotential (51 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0051 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0051] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (179 : State) <= graphPotential (51 : State)
    decide
  ·
    simp [graphSmokeNext_s0051, h_l0002] at h

theorem transition_ok_s0051 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (51 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (51 : State) := by
  intro h
  change graphSmokeNext_s0051 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0051] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (179 : State) <= graphPotential (51 : State)
      decide
  ·
    simp [graphSmokeNext_s0051, h_l0002] at h

theorem valid_s0052 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (52 : State) label t gain ->
      gain + graphPotential t <= graphPotential (52 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0052 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0052] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (180 : State) <= graphPotential (52 : State)
    decide
  ·
    simp [graphSmokeNext_s0052, h_l0002] at h

theorem transition_ok_s0052 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (52 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (52 : State) := by
  intro h
  change graphSmokeNext_s0052 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0052] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (180 : State) <= graphPotential (52 : State)
      decide
  ·
    simp [graphSmokeNext_s0052, h_l0002] at h

theorem valid_s0053 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (53 : State) label t gain ->
      gain + graphPotential t <= graphPotential (53 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0053 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0053] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (181 : State) <= graphPotential (53 : State)
    decide
  ·
    simp [graphSmokeNext_s0053, h_l0002] at h

theorem transition_ok_s0053 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (53 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (53 : State) := by
  intro h
  change graphSmokeNext_s0053 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0053] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (181 : State) <= graphPotential (53 : State)
      decide
  ·
    simp [graphSmokeNext_s0053, h_l0002] at h

theorem valid_s0054 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (54 : State) label t gain ->
      gain + graphPotential t <= graphPotential (54 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0054 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0054] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (182 : State) <= graphPotential (54 : State)
    decide
  ·
    simp [graphSmokeNext_s0054, h_l0002] at h

theorem transition_ok_s0054 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (54 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (54 : State) := by
  intro h
  change graphSmokeNext_s0054 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0054] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (182 : State) <= graphPotential (54 : State)
      decide
  ·
    simp [graphSmokeNext_s0054, h_l0002] at h

theorem valid_s0055 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (55 : State) label t gain ->
      gain + graphPotential t <= graphPotential (55 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0055 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0055] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (183 : State) <= graphPotential (55 : State)
    decide
  ·
    simp [graphSmokeNext_s0055, h_l0002] at h

theorem transition_ok_s0055 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (55 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (55 : State) := by
  intro h
  change graphSmokeNext_s0055 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0055] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (183 : State) <= graphPotential (55 : State)
      decide
  ·
    simp [graphSmokeNext_s0055, h_l0002] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 48 <= s) (hhi : s < 56) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0048 h
  · exact valid_s0049 h
  · exact valid_s0050 h
  · exact valid_s0051 h
  · exact valid_s0052 h
  · exact valid_s0053 h
  · exact valid_s0054 h
  · exact valid_s0055 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 48 <= s) (hhi : s < 56) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0048 h
  · exact transition_ok_s0049 h
  · exact transition_ok_s0050 h
  · exact transition_ok_s0051 h
  · exact transition_ok_s0052 h
  · exact transition_ok_s0053 h
  · exact transition_ok_s0054 h
  · exact transition_ok_s0055 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard006
