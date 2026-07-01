import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard056

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [448, 456). -/
theorem valid_s0448 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (448 : State) label t gain ->
      gain + graphPotential t <= graphPotential (448 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0448 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0448] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (564 : State) <= graphPotential (448 : State)
    decide
  ·
    simp [graphSmokeNext_s0448, h_l0009] at h

theorem transition_ok_s0448 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (448 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (448 : State) := by
  intro h
  change graphSmokeNext_s0448 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0448] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (564 : State) <= graphPotential (448 : State)
      decide
  ·
    simp [graphSmokeNext_s0448, h_l0009] at h

theorem valid_s0449 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (449 : State) label t gain ->
      gain + graphPotential t <= graphPotential (449 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0449 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0449] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (565 : State) <= graphPotential (449 : State)
    decide
  ·
    simp [graphSmokeNext_s0449, h_l0009] at h

theorem transition_ok_s0449 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (449 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (449 : State) := by
  intro h
  change graphSmokeNext_s0449 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0449] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (565 : State) <= graphPotential (449 : State)
      decide
  ·
    simp [graphSmokeNext_s0449, h_l0009] at h

theorem valid_s0450 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (450 : State) label t gain ->
      gain + graphPotential t <= graphPotential (450 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0450 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0450] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (566 : State) <= graphPotential (450 : State)
    decide
  ·
    simp [graphSmokeNext_s0450, h_l0009] at h

theorem transition_ok_s0450 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (450 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (450 : State) := by
  intro h
  change graphSmokeNext_s0450 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0450] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (566 : State) <= graphPotential (450 : State)
      decide
  ·
    simp [graphSmokeNext_s0450, h_l0009] at h

theorem valid_s0451 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (451 : State) label t gain ->
      gain + graphPotential t <= graphPotential (451 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0451 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0451] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (567 : State) <= graphPotential (451 : State)
    decide
  ·
    simp [graphSmokeNext_s0451, h_l0009] at h

theorem transition_ok_s0451 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (451 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (451 : State) := by
  intro h
  change graphSmokeNext_s0451 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0451] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (567 : State) <= graphPotential (451 : State)
      decide
  ·
    simp [graphSmokeNext_s0451, h_l0009] at h

theorem valid_s0452 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (452 : State) label t gain ->
      gain + graphPotential t <= graphPotential (452 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0452 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0452] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (568 : State) <= graphPotential (452 : State)
    decide
  ·
    simp [graphSmokeNext_s0452, h_l0009] at h

theorem transition_ok_s0452 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (452 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (452 : State) := by
  intro h
  change graphSmokeNext_s0452 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0452] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (568 : State) <= graphPotential (452 : State)
      decide
  ·
    simp [graphSmokeNext_s0452, h_l0009] at h

theorem valid_s0453 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (453 : State) label t gain ->
      gain + graphPotential t <= graphPotential (453 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0453 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0453] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (569 : State) <= graphPotential (453 : State)
    decide
  ·
    simp [graphSmokeNext_s0453, h_l0009] at h

theorem transition_ok_s0453 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (453 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (453 : State) := by
  intro h
  change graphSmokeNext_s0453 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0453] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (569 : State) <= graphPotential (453 : State)
      decide
  ·
    simp [graphSmokeNext_s0453, h_l0009] at h

theorem valid_s0454 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (454 : State) label t gain ->
      gain + graphPotential t <= graphPotential (454 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0454 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0454] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (570 : State) <= graphPotential (454 : State)
    decide
  ·
    simp [graphSmokeNext_s0454, h_l0009] at h

theorem transition_ok_s0454 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (454 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (454 : State) := by
  intro h
  change graphSmokeNext_s0454 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0454] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (570 : State) <= graphPotential (454 : State)
      decide
  ·
    simp [graphSmokeNext_s0454, h_l0009] at h

theorem valid_s0455 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (455 : State) label t gain ->
      gain + graphPotential t <= graphPotential (455 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0455 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0455] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (571 : State) <= graphPotential (455 : State)
    decide
  ·
    simp [graphSmokeNext_s0455, h_l0009] at h

theorem transition_ok_s0455 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (455 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (455 : State) := by
  intro h
  change graphSmokeNext_s0455 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0455] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (571 : State) <= graphPotential (455 : State)
      decide
  ·
    simp [graphSmokeNext_s0455, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 448 <= s) (hhi : s < 456) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0448 h
  · exact valid_s0449 h
  · exact valid_s0450 h
  · exact valid_s0451 h
  · exact valid_s0452 h
  · exact valid_s0453 h
  · exact valid_s0454 h
  · exact valid_s0455 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 448 <= s) (hhi : s < 456) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0448 h
  · exact transition_ok_s0449 h
  · exact transition_ok_s0450 h
  · exact transition_ok_s0451 h
  · exact transition_ok_s0452 h
  · exact transition_ok_s0453 h
  · exact transition_ok_s0454 h
  · exact transition_ok_s0455 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard056
