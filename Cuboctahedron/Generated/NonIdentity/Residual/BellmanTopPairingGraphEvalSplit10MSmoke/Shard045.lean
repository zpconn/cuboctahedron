import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard045

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [360, 368). -/
theorem valid_s0360 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (360 : State) label t gain ->
      gain + graphPotential t <= graphPotential (360 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0360 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0360] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (451 : State) <= graphPotential (360 : State)
    decide
  ·
    simp [graphSmokeNext_s0360, h_l0011] at h

theorem transition_ok_s0360 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (360 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (360 : State) := by
  intro h
  change graphSmokeNext_s0360 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0360] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (451 : State) <= graphPotential (360 : State)
      decide
  ·
    simp [graphSmokeNext_s0360, h_l0011] at h

theorem valid_s0361 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (361 : State) label t gain ->
      gain + graphPotential t <= graphPotential (361 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0361 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0361] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (472 : State) <= graphPotential (361 : State)
    decide
  ·
    simp [graphSmokeNext_s0361, h_l0011] at h

theorem transition_ok_s0361 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (361 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (361 : State) := by
  intro h
  change graphSmokeNext_s0361 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0361] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (472 : State) <= graphPotential (361 : State)
      decide
  ·
    simp [graphSmokeNext_s0361, h_l0011] at h

theorem valid_s0362 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (362 : State) label t gain ->
      gain + graphPotential t <= graphPotential (362 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0362 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0362] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (474 : State) <= graphPotential (362 : State)
    decide
  ·
    simp [graphSmokeNext_s0362, h_l0011] at h

theorem transition_ok_s0362 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (362 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (362 : State) := by
  intro h
  change graphSmokeNext_s0362 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0362] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (474 : State) <= graphPotential (362 : State)
      decide
  ·
    simp [graphSmokeNext_s0362, h_l0011] at h

theorem valid_s0363 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (363 : State) label t gain ->
      gain + graphPotential t <= graphPotential (363 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0363 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0363] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (485 : State) <= graphPotential (363 : State)
    decide
  ·
    simp [graphSmokeNext_s0363, h_l0011] at h

theorem transition_ok_s0363 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (363 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (363 : State) := by
  intro h
  change graphSmokeNext_s0363 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0363] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (485 : State) <= graphPotential (363 : State)
      decide
  ·
    simp [graphSmokeNext_s0363, h_l0011] at h

theorem valid_s0364 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (364 : State) label t gain ->
      gain + graphPotential t <= graphPotential (364 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0364 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0364] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (487 : State) <= graphPotential (364 : State)
    decide
  ·
    simp [graphSmokeNext_s0364, h_l0011] at h

theorem transition_ok_s0364 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (364 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (364 : State) := by
  intro h
  change graphSmokeNext_s0364 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0364] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (487 : State) <= graphPotential (364 : State)
      decide
  ·
    simp [graphSmokeNext_s0364, h_l0011] at h

theorem valid_s0365 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (365 : State) label t gain ->
      gain + graphPotential t <= graphPotential (365 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0365 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0365] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (454 : State) <= graphPotential (365 : State)
    decide
  ·
    simp [graphSmokeNext_s0365, h_l0008] at h

theorem transition_ok_s0365 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (365 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (365 : State) := by
  intro h
  change graphSmokeNext_s0365 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0365] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (454 : State) <= graphPotential (365 : State)
      decide
  ·
    simp [graphSmokeNext_s0365, h_l0008] at h

theorem valid_s0366 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (366 : State) label t gain ->
      gain + graphPotential t <= graphPotential (366 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0366 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0366] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (455 : State) <= graphPotential (366 : State)
    decide
  ·
    simp [graphSmokeNext_s0366, h_l0008] at h

theorem transition_ok_s0366 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (366 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (366 : State) := by
  intro h
  change graphSmokeNext_s0366 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0366] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (455 : State) <= graphPotential (366 : State)
      decide
  ·
    simp [graphSmokeNext_s0366, h_l0008] at h

theorem valid_s0367 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (367 : State) label t gain ->
      gain + graphPotential t <= graphPotential (367 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0367 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0367] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (456 : State) <= graphPotential (367 : State)
    decide
  ·
    simp [graphSmokeNext_s0367, h_l0008] at h

theorem transition_ok_s0367 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (367 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (367 : State) := by
  intro h
  change graphSmokeNext_s0367 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0367] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (456 : State) <= graphPotential (367 : State)
      decide
  ·
    simp [graphSmokeNext_s0367, h_l0008] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 360 <= s) (hhi : s < 368) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0360 h
  · exact valid_s0361 h
  · exact valid_s0362 h
  · exact valid_s0363 h
  · exact valid_s0364 h
  · exact valid_s0365 h
  · exact valid_s0366 h
  · exact valid_s0367 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 360 <= s) (hhi : s < 368) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0360 h
  · exact transition_ok_s0361 h
  · exact transition_ok_s0362 h
  · exact transition_ok_s0363 h
  · exact transition_ok_s0364 h
  · exact transition_ok_s0365 h
  · exact transition_ok_s0366 h
  · exact transition_ok_s0367 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard045
