import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard046

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [368, 376). -/
theorem valid_s0368 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (368 : State) label t gain ->
      gain + graphPotential t <= graphPotential (368 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0368 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0368] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (457 : State) <= graphPotential (368 : State)
    decide
  ·
    simp [graphSmokeNext_s0368, h_l0008] at h

theorem transition_ok_s0368 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (368 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (368 : State) := by
  intro h
  change graphSmokeNext_s0368 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0368] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (457 : State) <= graphPotential (368 : State)
      decide
  ·
    simp [graphSmokeNext_s0368, h_l0008] at h

theorem valid_s0369 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (369 : State) label t gain ->
      gain + graphPotential t <= graphPotential (369 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0369 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0369] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (458 : State) <= graphPotential (369 : State)
    decide
  ·
    simp [graphSmokeNext_s0369, h_l0008] at h

theorem transition_ok_s0369 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (369 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (369 : State) := by
  intro h
  change graphSmokeNext_s0369 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0369] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (458 : State) <= graphPotential (369 : State)
      decide
  ·
    simp [graphSmokeNext_s0369, h_l0008] at h

theorem valid_s0370 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (370 : State) label t gain ->
      gain + graphPotential t <= graphPotential (370 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0370 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0370] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (459 : State) <= graphPotential (370 : State)
    decide
  ·
    simp [graphSmokeNext_s0370, h_l0008] at h

theorem transition_ok_s0370 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (370 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (370 : State) := by
  intro h
  change graphSmokeNext_s0370 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0370] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (459 : State) <= graphPotential (370 : State)
      decide
  ·
    simp [graphSmokeNext_s0370, h_l0008] at h

theorem valid_s0371 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (371 : State) label t gain ->
      gain + graphPotential t <= graphPotential (371 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0371 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0371] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (466 : State) <= graphPotential (371 : State)
    decide
  ·
    simp [graphSmokeNext_s0371, h_l0008] at h

theorem transition_ok_s0371 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (371 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (371 : State) := by
  intro h
  change graphSmokeNext_s0371 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0371] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (466 : State) <= graphPotential (371 : State)
      decide
  ·
    simp [graphSmokeNext_s0371, h_l0008] at h

theorem valid_s0372 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (372 : State) label t gain ->
      gain + graphPotential t <= graphPotential (372 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0372 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0372] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (468 : State) <= graphPotential (372 : State)
    decide
  ·
    simp [graphSmokeNext_s0372, h_l0008] at h

theorem transition_ok_s0372 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (372 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (372 : State) := by
  intro h
  change graphSmokeNext_s0372 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0372] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (468 : State) <= graphPotential (372 : State)
      decide
  ·
    simp [graphSmokeNext_s0372, h_l0008] at h

theorem valid_s0373 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (373 : State) label t gain ->
      gain + graphPotential t <= graphPotential (373 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0373 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0373] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (469 : State) <= graphPotential (373 : State)
    decide
  ·
    simp [graphSmokeNext_s0373, h_l0008] at h

theorem transition_ok_s0373 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (373 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (373 : State) := by
  intro h
  change graphSmokeNext_s0373 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0373] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (469 : State) <= graphPotential (373 : State)
      decide
  ·
    simp [graphSmokeNext_s0373, h_l0008] at h

theorem valid_s0374 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (374 : State) label t gain ->
      gain + graphPotential t <= graphPotential (374 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0374 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0374] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (482 : State) <= graphPotential (374 : State)
    decide
  ·
    simp [graphSmokeNext_s0374, h_l0008] at h

theorem transition_ok_s0374 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (374 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (374 : State) := by
  intro h
  change graphSmokeNext_s0374 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0374] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (482 : State) <= graphPotential (374 : State)
      decide
  ·
    simp [graphSmokeNext_s0374, h_l0008] at h

theorem valid_s0375 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (375 : State) label t gain ->
      gain + graphPotential t <= graphPotential (375 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0375 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0375] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (489 : State) <= graphPotential (375 : State)
    decide
  ·
    simp [graphSmokeNext_s0375, h_l0008] at h

theorem transition_ok_s0375 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (375 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (375 : State) := by
  intro h
  change graphSmokeNext_s0375 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0375] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (489 : State) <= graphPotential (375 : State)
      decide
  ·
    simp [graphSmokeNext_s0375, h_l0008] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 368 <= s) (hhi : s < 376) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0368 h
  · exact valid_s0369 h
  · exact valid_s0370 h
  · exact valid_s0371 h
  · exact valid_s0372 h
  · exact valid_s0373 h
  · exact valid_s0374 h
  · exact valid_s0375 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 368 <= s) (hhi : s < 376) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0368 h
  · exact transition_ok_s0369 h
  · exact transition_ok_s0370 h
  · exact transition_ok_s0371 h
  · exact transition_ok_s0372 h
  · exact transition_ok_s0373 h
  · exact transition_ok_s0374 h
  · exact transition_ok_s0375 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard046
