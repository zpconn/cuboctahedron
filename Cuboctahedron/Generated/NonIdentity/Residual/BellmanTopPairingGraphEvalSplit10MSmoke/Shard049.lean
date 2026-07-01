import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard049

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [392, 400). -/
theorem valid_s0392 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (392 : State) label t gain ->
      gain + graphPotential t <= graphPotential (392 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0392 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0392] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (508 : State) <= graphPotential (392 : State)
    decide
  ·
    simp [graphSmokeNext_s0392, h_l0009] at h

theorem transition_ok_s0392 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (392 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (392 : State) := by
  intro h
  change graphSmokeNext_s0392 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0392] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (508 : State) <= graphPotential (392 : State)
      decide
  ·
    simp [graphSmokeNext_s0392, h_l0009] at h

theorem valid_s0393 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (393 : State) label t gain ->
      gain + graphPotential t <= graphPotential (393 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0393 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0393] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (509 : State) <= graphPotential (393 : State)
    decide
  ·
    simp [graphSmokeNext_s0393, h_l0009] at h

theorem transition_ok_s0393 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (393 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (393 : State) := by
  intro h
  change graphSmokeNext_s0393 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0393] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (509 : State) <= graphPotential (393 : State)
      decide
  ·
    simp [graphSmokeNext_s0393, h_l0009] at h

theorem valid_s0394 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (394 : State) label t gain ->
      gain + graphPotential t <= graphPotential (394 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0394 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0394] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (510 : State) <= graphPotential (394 : State)
    decide
  ·
    simp [graphSmokeNext_s0394, h_l0009] at h

theorem transition_ok_s0394 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (394 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (394 : State) := by
  intro h
  change graphSmokeNext_s0394 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0394] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (510 : State) <= graphPotential (394 : State)
      decide
  ·
    simp [graphSmokeNext_s0394, h_l0009] at h

theorem valid_s0395 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (395 : State) label t gain ->
      gain + graphPotential t <= graphPotential (395 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0395 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0395] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (511 : State) <= graphPotential (395 : State)
    decide
  ·
    simp [graphSmokeNext_s0395, h_l0009] at h

theorem transition_ok_s0395 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (395 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (395 : State) := by
  intro h
  change graphSmokeNext_s0395 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0395] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (511 : State) <= graphPotential (395 : State)
      decide
  ·
    simp [graphSmokeNext_s0395, h_l0009] at h

theorem valid_s0396 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (396 : State) label t gain ->
      gain + graphPotential t <= graphPotential (396 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0396 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0396] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (512 : State) <= graphPotential (396 : State)
    decide
  ·
    simp [graphSmokeNext_s0396, h_l0009] at h

theorem transition_ok_s0396 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (396 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (396 : State) := by
  intro h
  change graphSmokeNext_s0396 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0396] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (512 : State) <= graphPotential (396 : State)
      decide
  ·
    simp [graphSmokeNext_s0396, h_l0009] at h

theorem valid_s0397 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (397 : State) label t gain ->
      gain + graphPotential t <= graphPotential (397 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0397 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0397] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (513 : State) <= graphPotential (397 : State)
    decide
  ·
    simp [graphSmokeNext_s0397, h_l0009] at h

theorem transition_ok_s0397 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (397 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (397 : State) := by
  intro h
  change graphSmokeNext_s0397 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0397] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (513 : State) <= graphPotential (397 : State)
      decide
  ·
    simp [graphSmokeNext_s0397, h_l0009] at h

theorem valid_s0398 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (398 : State) label t gain ->
      gain + graphPotential t <= graphPotential (398 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0398 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0398] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (514 : State) <= graphPotential (398 : State)
    decide
  ·
    simp [graphSmokeNext_s0398, h_l0009] at h

theorem transition_ok_s0398 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (398 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (398 : State) := by
  intro h
  change graphSmokeNext_s0398 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0398] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (514 : State) <= graphPotential (398 : State)
      decide
  ·
    simp [graphSmokeNext_s0398, h_l0009] at h

theorem valid_s0399 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (399 : State) label t gain ->
      gain + graphPotential t <= graphPotential (399 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0399 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0399] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (515 : State) <= graphPotential (399 : State)
    decide
  ·
    simp [graphSmokeNext_s0399, h_l0009] at h

theorem transition_ok_s0399 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (399 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (399 : State) := by
  intro h
  change graphSmokeNext_s0399 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0399] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (515 : State) <= graphPotential (399 : State)
      decide
  ·
    simp [graphSmokeNext_s0399, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 392 <= s) (hhi : s < 400) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0392 h
  · exact valid_s0393 h
  · exact valid_s0394 h
  · exact valid_s0395 h
  · exact valid_s0396 h
  · exact valid_s0397 h
  · exact valid_s0398 h
  · exact valid_s0399 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 392 <= s) (hhi : s < 400) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0392 h
  · exact transition_ok_s0393 h
  · exact transition_ok_s0394 h
  · exact transition_ok_s0395 h
  · exact transition_ok_s0396 h
  · exact transition_ok_s0397 h
  · exact transition_ok_s0398 h
  · exact transition_ok_s0399 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard049
