import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard041

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [328, 336). -/
theorem valid_s0328 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (328 : State) label t gain ->
      gain + graphPotential t <= graphPotential (328 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0328 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0328] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (436 : State) <= graphPotential (328 : State)
    decide
  ·
    simp [graphSmokeNext_s0328, h_l0013] at h

theorem transition_ok_s0328 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (328 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (328 : State) := by
  intro h
  change graphSmokeNext_s0328 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0328] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (436 : State) <= graphPotential (328 : State)
      decide
  ·
    simp [graphSmokeNext_s0328, h_l0013] at h

theorem valid_s0329 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (329 : State) label t gain ->
      gain + graphPotential t <= graphPotential (329 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0329 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0329] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (437 : State) <= graphPotential (329 : State)
    decide
  ·
    simp [graphSmokeNext_s0329, h_l0013] at h

theorem transition_ok_s0329 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (329 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (329 : State) := by
  intro h
  change graphSmokeNext_s0329 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0329] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (437 : State) <= graphPotential (329 : State)
      decide
  ·
    simp [graphSmokeNext_s0329, h_l0013] at h

theorem valid_s0330 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (330 : State) label t gain ->
      gain + graphPotential t <= graphPotential (330 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0330 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0330] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (438 : State) <= graphPotential (330 : State)
    decide
  ·
    simp [graphSmokeNext_s0330, h_l0013] at h

theorem transition_ok_s0330 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (330 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (330 : State) := by
  intro h
  change graphSmokeNext_s0330 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0330] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (438 : State) <= graphPotential (330 : State)
      decide
  ·
    simp [graphSmokeNext_s0330, h_l0013] at h

theorem valid_s0331 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (331 : State) label t gain ->
      gain + graphPotential t <= graphPotential (331 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0331 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0331] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (439 : State) <= graphPotential (331 : State)
    decide
  ·
    simp [graphSmokeNext_s0331, h_l0013] at h

theorem transition_ok_s0331 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (331 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (331 : State) := by
  intro h
  change graphSmokeNext_s0331 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0331] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (439 : State) <= graphPotential (331 : State)
      decide
  ·
    simp [graphSmokeNext_s0331, h_l0013] at h

theorem valid_s0332 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (332 : State) label t gain ->
      gain + graphPotential t <= graphPotential (332 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0332 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0332] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (442 : State) <= graphPotential (332 : State)
    decide
  ·
    simp [graphSmokeNext_s0332, h_l0013] at h

theorem transition_ok_s0332 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (332 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (332 : State) := by
  intro h
  change graphSmokeNext_s0332 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0332] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (442 : State) <= graphPotential (332 : State)
      decide
  ·
    simp [graphSmokeNext_s0332, h_l0013] at h

theorem valid_s0333 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (333 : State) label t gain ->
      gain + graphPotential t <= graphPotential (333 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0333 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0333] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (443 : State) <= graphPotential (333 : State)
    decide
  ·
    simp [graphSmokeNext_s0333, h_l0013] at h

theorem transition_ok_s0333 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (333 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (333 : State) := by
  intro h
  change graphSmokeNext_s0333 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0333] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (443 : State) <= graphPotential (333 : State)
      decide
  ·
    simp [graphSmokeNext_s0333, h_l0013] at h

theorem valid_s0334 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (334 : State) label t gain ->
      gain + graphPotential t <= graphPotential (334 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0334 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0334] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (456 : State) <= graphPotential (334 : State)
    decide
  ·
    simp [graphSmokeNext_s0334, h_l0013] at h

theorem transition_ok_s0334 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (334 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (334 : State) := by
  intro h
  change graphSmokeNext_s0334 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0334] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (456 : State) <= graphPotential (334 : State)
      decide
  ·
    simp [graphSmokeNext_s0334, h_l0013] at h

theorem valid_s0335 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (335 : State) label t gain ->
      gain + graphPotential t <= graphPotential (335 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0335 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0335] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (462 : State) <= graphPotential (335 : State)
    decide
  ·
    simp [graphSmokeNext_s0335, h_l0013] at h

theorem transition_ok_s0335 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (335 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (335 : State) := by
  intro h
  change graphSmokeNext_s0335 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0335] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (462 : State) <= graphPotential (335 : State)
      decide
  ·
    simp [graphSmokeNext_s0335, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 328 <= s) (hhi : s < 336) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0328 h
  · exact valid_s0329 h
  · exact valid_s0330 h
  · exact valid_s0331 h
  · exact valid_s0332 h
  · exact valid_s0333 h
  · exact valid_s0334 h
  · exact valid_s0335 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 328 <= s) (hhi : s < 336) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0328 h
  · exact transition_ok_s0329 h
  · exact transition_ok_s0330 h
  · exact transition_ok_s0331 h
  · exact transition_ok_s0332 h
  · exact transition_ok_s0333 h
  · exact transition_ok_s0334 h
  · exact transition_ok_s0335 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard041
