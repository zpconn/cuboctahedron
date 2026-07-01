import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard047

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [376, 384). -/
theorem valid_s0376 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (376 : State) label t gain ->
      gain + graphPotential t <= graphPotential (376 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0376 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0376] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (492 : State) <= graphPotential (376 : State)
    decide
  ·
    simp [graphSmokeNext_s0376, h_l0009] at h

theorem transition_ok_s0376 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (376 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (376 : State) := by
  intro h
  change graphSmokeNext_s0376 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0376] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (492 : State) <= graphPotential (376 : State)
      decide
  ·
    simp [graphSmokeNext_s0376, h_l0009] at h

theorem valid_s0377 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (377 : State) label t gain ->
      gain + graphPotential t <= graphPotential (377 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0377 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0377] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (493 : State) <= graphPotential (377 : State)
    decide
  ·
    simp [graphSmokeNext_s0377, h_l0009] at h

theorem transition_ok_s0377 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (377 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (377 : State) := by
  intro h
  change graphSmokeNext_s0377 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0377] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (493 : State) <= graphPotential (377 : State)
      decide
  ·
    simp [graphSmokeNext_s0377, h_l0009] at h

theorem valid_s0378 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (378 : State) label t gain ->
      gain + graphPotential t <= graphPotential (378 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0378 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0378] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (494 : State) <= graphPotential (378 : State)
    decide
  ·
    simp [graphSmokeNext_s0378, h_l0009] at h

theorem transition_ok_s0378 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (378 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (378 : State) := by
  intro h
  change graphSmokeNext_s0378 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0378] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (494 : State) <= graphPotential (378 : State)
      decide
  ·
    simp [graphSmokeNext_s0378, h_l0009] at h

theorem valid_s0379 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (379 : State) label t gain ->
      gain + graphPotential t <= graphPotential (379 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0379 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0379] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (495 : State) <= graphPotential (379 : State)
    decide
  ·
    simp [graphSmokeNext_s0379, h_l0009] at h

theorem transition_ok_s0379 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (379 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (379 : State) := by
  intro h
  change graphSmokeNext_s0379 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0379] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (495 : State) <= graphPotential (379 : State)
      decide
  ·
    simp [graphSmokeNext_s0379, h_l0009] at h

theorem valid_s0380 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (380 : State) label t gain ->
      gain + graphPotential t <= graphPotential (380 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0380 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0380] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (496 : State) <= graphPotential (380 : State)
    decide
  ·
    simp [graphSmokeNext_s0380, h_l0009] at h

theorem transition_ok_s0380 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (380 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (380 : State) := by
  intro h
  change graphSmokeNext_s0380 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0380] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (496 : State) <= graphPotential (380 : State)
      decide
  ·
    simp [graphSmokeNext_s0380, h_l0009] at h

theorem valid_s0381 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (381 : State) label t gain ->
      gain + graphPotential t <= graphPotential (381 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0381 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0381] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (497 : State) <= graphPotential (381 : State)
    decide
  ·
    simp [graphSmokeNext_s0381, h_l0009] at h

theorem transition_ok_s0381 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (381 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (381 : State) := by
  intro h
  change graphSmokeNext_s0381 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0381] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (497 : State) <= graphPotential (381 : State)
      decide
  ·
    simp [graphSmokeNext_s0381, h_l0009] at h

theorem valid_s0382 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (382 : State) label t gain ->
      gain + graphPotential t <= graphPotential (382 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0382 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0382] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (498 : State) <= graphPotential (382 : State)
    decide
  ·
    simp [graphSmokeNext_s0382, h_l0009] at h

theorem transition_ok_s0382 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (382 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (382 : State) := by
  intro h
  change graphSmokeNext_s0382 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0382] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (498 : State) <= graphPotential (382 : State)
      decide
  ·
    simp [graphSmokeNext_s0382, h_l0009] at h

theorem valid_s0383 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (383 : State) label t gain ->
      gain + graphPotential t <= graphPotential (383 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0383 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0383] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (499 : State) <= graphPotential (383 : State)
    decide
  ·
    simp [graphSmokeNext_s0383, h_l0009] at h

theorem transition_ok_s0383 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (383 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (383 : State) := by
  intro h
  change graphSmokeNext_s0383 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0383] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (499 : State) <= graphPotential (383 : State)
      decide
  ·
    simp [graphSmokeNext_s0383, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 376 <= s) (hhi : s < 384) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0376 h
  · exact valid_s0377 h
  · exact valid_s0378 h
  · exact valid_s0379 h
  · exact valid_s0380 h
  · exact valid_s0381 h
  · exact valid_s0382 h
  · exact valid_s0383 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 376 <= s) (hhi : s < 384) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0376 h
  · exact transition_ok_s0377 h
  · exact transition_ok_s0378 h
  · exact transition_ok_s0379 h
  · exact transition_ok_s0380 h
  · exact transition_ok_s0381 h
  · exact transition_ok_s0382 h
  · exact transition_ok_s0383 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard047
