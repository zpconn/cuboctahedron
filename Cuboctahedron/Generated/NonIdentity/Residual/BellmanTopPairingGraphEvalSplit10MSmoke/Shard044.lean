import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard044

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [352, 360). -/
theorem valid_s0352 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (352 : State) label t gain ->
      gain + graphPotential t <= graphPotential (352 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0352 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0352] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (405 : State) <= graphPotential (352 : State)
    decide
  ·
    simp [graphSmokeNext_s0352, h_l0011] at h

theorem transition_ok_s0352 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (352 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (352 : State) := by
  intro h
  change graphSmokeNext_s0352 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0352] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (405 : State) <= graphPotential (352 : State)
      decide
  ·
    simp [graphSmokeNext_s0352, h_l0011] at h

theorem valid_s0353 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (353 : State) label t gain ->
      gain + graphPotential t <= graphPotential (353 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0353 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0353] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (432 : State) <= graphPotential (353 : State)
    decide
  ·
    simp [graphSmokeNext_s0353, h_l0011] at h

theorem transition_ok_s0353 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (353 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (353 : State) := by
  intro h
  change graphSmokeNext_s0353 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0353] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (432 : State) <= graphPotential (353 : State)
      decide
  ·
    simp [graphSmokeNext_s0353, h_l0011] at h

theorem valid_s0354 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (354 : State) label t gain ->
      gain + graphPotential t <= graphPotential (354 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0354 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0354] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (433 : State) <= graphPotential (354 : State)
    decide
  ·
    simp [graphSmokeNext_s0354, h_l0011] at h

theorem transition_ok_s0354 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (354 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (354 : State) := by
  intro h
  change graphSmokeNext_s0354 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0354] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (433 : State) <= graphPotential (354 : State)
      decide
  ·
    simp [graphSmokeNext_s0354, h_l0011] at h

theorem valid_s0355 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (355 : State) label t gain ->
      gain + graphPotential t <= graphPotential (355 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0355 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0355] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (440 : State) <= graphPotential (355 : State)
    decide
  ·
    simp [graphSmokeNext_s0355, h_l0011] at h

theorem transition_ok_s0355 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (355 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (355 : State) := by
  intro h
  change graphSmokeNext_s0355 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0355] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (440 : State) <= graphPotential (355 : State)
      decide
  ·
    simp [graphSmokeNext_s0355, h_l0011] at h

theorem valid_s0356 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (356 : State) label t gain ->
      gain + graphPotential t <= graphPotential (356 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0356 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0356] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (442 : State) <= graphPotential (356 : State)
    decide
  ·
    simp [graphSmokeNext_s0356, h_l0011] at h

theorem transition_ok_s0356 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (356 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (356 : State) := by
  intro h
  change graphSmokeNext_s0356 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0356] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (442 : State) <= graphPotential (356 : State)
      decide
  ·
    simp [graphSmokeNext_s0356, h_l0011] at h

theorem valid_s0357 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (357 : State) label t gain ->
      gain + graphPotential t <= graphPotential (357 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0357 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0357] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (445 : State) <= graphPotential (357 : State)
    decide
  ·
    simp [graphSmokeNext_s0357, h_l0011] at h

theorem transition_ok_s0357 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (357 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (357 : State) := by
  intro h
  change graphSmokeNext_s0357 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0357] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (445 : State) <= graphPotential (357 : State)
      decide
  ·
    simp [graphSmokeNext_s0357, h_l0011] at h

theorem valid_s0358 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (358 : State) label t gain ->
      gain + graphPotential t <= graphPotential (358 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0358 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0358] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (447 : State) <= graphPotential (358 : State)
    decide
  ·
    simp [graphSmokeNext_s0358, h_l0011] at h

theorem transition_ok_s0358 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (358 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (358 : State) := by
  intro h
  change graphSmokeNext_s0358 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0358] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (447 : State) <= graphPotential (358 : State)
      decide
  ·
    simp [graphSmokeNext_s0358, h_l0011] at h

theorem valid_s0359 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (359 : State) label t gain ->
      gain + graphPotential t <= graphPotential (359 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0359 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0359] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (449 : State) <= graphPotential (359 : State)
    decide
  ·
    simp [graphSmokeNext_s0359, h_l0011] at h

theorem transition_ok_s0359 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (359 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (359 : State) := by
  intro h
  change graphSmokeNext_s0359 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0359] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (449 : State) <= graphPotential (359 : State)
      decide
  ·
    simp [graphSmokeNext_s0359, h_l0011] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 352 <= s) (hhi : s < 360) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0352 h
  · exact valid_s0353 h
  · exact valid_s0354 h
  · exact valid_s0355 h
  · exact valid_s0356 h
  · exact valid_s0357 h
  · exact valid_s0358 h
  · exact valid_s0359 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 352 <= s) (hhi : s < 360) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0352 h
  · exact transition_ok_s0353 h
  · exact transition_ok_s0354 h
  · exact transition_ok_s0355 h
  · exact transition_ok_s0356 h
  · exact transition_ok_s0357 h
  · exact transition_ok_s0358 h
  · exact transition_ok_s0359 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard044
