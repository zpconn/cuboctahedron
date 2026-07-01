import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard036

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [288, 296). -/
theorem valid_s0288 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (288 : State) label t gain ->
      gain + graphPotential t <= graphPotential (288 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0288 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0288] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (446 : State) <= graphPotential (288 : State)
    decide
  ·
    simp [graphSmokeNext_s0288, h_l0001] at h

theorem transition_ok_s0288 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (288 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (288 : State) := by
  intro h
  change graphSmokeNext_s0288 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0288] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (446 : State) <= graphPotential (288 : State)
      decide
  ·
    simp [graphSmokeNext_s0288, h_l0001] at h

theorem valid_s0289 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (289 : State) label t gain ->
      gain + graphPotential t <= graphPotential (289 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0289 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0289] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (448 : State) <= graphPotential (289 : State)
    decide
  ·
    simp [graphSmokeNext_s0289, h_l0001] at h

theorem transition_ok_s0289 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (289 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (289 : State) := by
  intro h
  change graphSmokeNext_s0289 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0289] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (448 : State) <= graphPotential (289 : State)
      decide
  ·
    simp [graphSmokeNext_s0289, h_l0001] at h

theorem valid_s0290 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (290 : State) label t gain ->
      gain + graphPotential t <= graphPotential (290 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0290 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0290] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (450 : State) <= graphPotential (290 : State)
    decide
  ·
    simp [graphSmokeNext_s0290, h_l0001] at h

theorem transition_ok_s0290 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (290 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (290 : State) := by
  intro h
  change graphSmokeNext_s0290 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0290] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (450 : State) <= graphPotential (290 : State)
      decide
  ·
    simp [graphSmokeNext_s0290, h_l0001] at h

theorem valid_s0291 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (291 : State) label t gain ->
      gain + graphPotential t <= graphPotential (291 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0291 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0291] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (452 : State) <= graphPotential (291 : State)
    decide
  ·
    simp [graphSmokeNext_s0291, h_l0001] at h

theorem transition_ok_s0291 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (291 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (291 : State) := by
  intro h
  change graphSmokeNext_s0291 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0291] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (452 : State) <= graphPotential (291 : State)
      decide
  ·
    simp [graphSmokeNext_s0291, h_l0001] at h

theorem valid_s0292 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (292 : State) label t gain ->
      gain + graphPotential t <= graphPotential (292 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0292 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0292] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (453 : State) <= graphPotential (292 : State)
    decide
  ·
    simp [graphSmokeNext_s0292, h_l0001] at h

theorem transition_ok_s0292 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (292 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (292 : State) := by
  intro h
  change graphSmokeNext_s0292 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0292] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (453 : State) <= graphPotential (292 : State)
      decide
  ·
    simp [graphSmokeNext_s0292, h_l0001] at h

theorem valid_s0293 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (293 : State) label t gain ->
      gain + graphPotential t <= graphPotential (293 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0293 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0293] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (460 : State) <= graphPotential (293 : State)
    decide
  ·
    simp [graphSmokeNext_s0293, h_l0001] at h

theorem transition_ok_s0293 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (293 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (293 : State) := by
  intro h
  change graphSmokeNext_s0293 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0293] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (460 : State) <= graphPotential (293 : State)
      decide
  ·
    simp [graphSmokeNext_s0293, h_l0001] at h

theorem valid_s0294 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (294 : State) label t gain ->
      gain + graphPotential t <= graphPotential (294 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0294 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0294] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (461 : State) <= graphPotential (294 : State)
    decide
  ·
    simp [graphSmokeNext_s0294, h_l0001] at h

theorem transition_ok_s0294 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (294 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (294 : State) := by
  intro h
  change graphSmokeNext_s0294 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0294] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (461 : State) <= graphPotential (294 : State)
      decide
  ·
    simp [graphSmokeNext_s0294, h_l0001] at h

theorem valid_s0295 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (295 : State) label t gain ->
      gain + graphPotential t <= graphPotential (295 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0295 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0295] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (463 : State) <= graphPotential (295 : State)
    decide
  ·
    simp [graphSmokeNext_s0295, h_l0001] at h

theorem transition_ok_s0295 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (295 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (295 : State) := by
  intro h
  change graphSmokeNext_s0295 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0295] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (463 : State) <= graphPotential (295 : State)
      decide
  ·
    simp [graphSmokeNext_s0295, h_l0001] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 288 <= s) (hhi : s < 296) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0288 h
  · exact valid_s0289 h
  · exact valid_s0290 h
  · exact valid_s0291 h
  · exact valid_s0292 h
  · exact valid_s0293 h
  · exact valid_s0294 h
  · exact valid_s0295 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 288 <= s) (hhi : s < 296) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0288 h
  · exact transition_ok_s0289 h
  · exact transition_ok_s0290 h
  · exact transition_ok_s0291 h
  · exact transition_ok_s0292 h
  · exact transition_ok_s0293 h
  · exact transition_ok_s0294 h
  · exact transition_ok_s0295 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard036
