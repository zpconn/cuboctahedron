import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard029

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [232, 240). -/
theorem valid_s0232 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (232 : State) label t gain ->
      gain + graphPotential t <= graphPotential (232 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0232 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0232] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (350 : State) <= graphPotential (232 : State)
    decide
  ·
    simp [graphSmokeNext_s0232, h_l0010] at h

theorem transition_ok_s0232 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (232 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (232 : State) := by
  intro h
  change graphSmokeNext_s0232 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0232] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (350 : State) <= graphPotential (232 : State)
      decide
  ·
    simp [graphSmokeNext_s0232, h_l0010] at h

theorem valid_s0233 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (233 : State) label t gain ->
      gain + graphPotential t <= graphPotential (233 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0233 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0233] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (352 : State) <= graphPotential (233 : State)
    decide
  ·
    simp [graphSmokeNext_s0233, h_l0010] at h

theorem transition_ok_s0233 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (233 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (233 : State) := by
  intro h
  change graphSmokeNext_s0233 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0233] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (352 : State) <= graphPotential (233 : State)
      decide
  ·
    simp [graphSmokeNext_s0233, h_l0010] at h

theorem valid_s0234 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (234 : State) label t gain ->
      gain + graphPotential t <= graphPotential (234 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0234 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0234] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (353 : State) <= graphPotential (234 : State)
    decide
  ·
    simp [graphSmokeNext_s0234, h_l0010] at h

theorem transition_ok_s0234 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (234 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (234 : State) := by
  intro h
  change graphSmokeNext_s0234 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0234] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (353 : State) <= graphPotential (234 : State)
      decide
  ·
    simp [graphSmokeNext_s0234, h_l0010] at h

theorem valid_s0235 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (235 : State) label t gain ->
      gain + graphPotential t <= graphPotential (235 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0235 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0235] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (362 : State) <= graphPotential (235 : State)
    decide
  ·
    simp [graphSmokeNext_s0235, h_l0010] at h

theorem transition_ok_s0235 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (235 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (235 : State) := by
  intro h
  change graphSmokeNext_s0235 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0235] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (362 : State) <= graphPotential (235 : State)
      decide
  ·
    simp [graphSmokeNext_s0235, h_l0010] at h

theorem valid_s0236 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (236 : State) label t gain ->
      gain + graphPotential t <= graphPotential (236 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0236 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0236] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (365 : State) <= graphPotential (236 : State)
    decide
  ·
    simp [graphSmokeNext_s0236, h_l0005] at h

theorem transition_ok_s0236 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (236 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (236 : State) := by
  intro h
  change graphSmokeNext_s0236 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0236] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (365 : State) <= graphPotential (236 : State)
      decide
  ·
    simp [graphSmokeNext_s0236, h_l0005] at h

theorem valid_s0237 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (237 : State) label t gain ->
      gain + graphPotential t <= graphPotential (237 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0237 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0237] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (366 : State) <= graphPotential (237 : State)
    decide
  ·
    simp [graphSmokeNext_s0237, h_l0005] at h

theorem transition_ok_s0237 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (237 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (237 : State) := by
  intro h
  change graphSmokeNext_s0237 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0237] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (366 : State) <= graphPotential (237 : State)
      decide
  ·
    simp [graphSmokeNext_s0237, h_l0005] at h

theorem valid_s0238 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (238 : State) label t gain ->
      gain + graphPotential t <= graphPotential (238 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0238 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0238] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (368 : State) <= graphPotential (238 : State)
    decide
  ·
    simp [graphSmokeNext_s0238, h_l0005] at h

theorem transition_ok_s0238 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (238 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (238 : State) := by
  intro h
  change graphSmokeNext_s0238 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0238] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (368 : State) <= graphPotential (238 : State)
      decide
  ·
    simp [graphSmokeNext_s0238, h_l0005] at h

theorem valid_s0239 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (239 : State) label t gain ->
      gain + graphPotential t <= graphPotential (239 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0239 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0239] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (369 : State) <= graphPotential (239 : State)
    decide
  ·
    simp [graphSmokeNext_s0239, h_l0005] at h

theorem transition_ok_s0239 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (239 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (239 : State) := by
  intro h
  change graphSmokeNext_s0239 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0239] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (369 : State) <= graphPotential (239 : State)
      decide
  ·
    simp [graphSmokeNext_s0239, h_l0005] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 232 <= s) (hhi : s < 240) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0232 h
  · exact valid_s0233 h
  · exact valid_s0234 h
  · exact valid_s0235 h
  · exact valid_s0236 h
  · exact valid_s0237 h
  · exact valid_s0238 h
  · exact valid_s0239 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 232 <= s) (hhi : s < 240) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0232 h
  · exact transition_ok_s0233 h
  · exact transition_ok_s0234 h
  · exact transition_ok_s0235 h
  · exact transition_ok_s0236 h
  · exact transition_ok_s0237 h
  · exact transition_ok_s0238 h
  · exact transition_ok_s0239 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard029
