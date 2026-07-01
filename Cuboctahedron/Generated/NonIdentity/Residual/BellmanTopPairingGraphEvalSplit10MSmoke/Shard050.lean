import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard050

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [400, 408). -/
theorem valid_s0400 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (400 : State) label t gain ->
      gain + graphPotential t <= graphPotential (400 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0400 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0400] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (516 : State) <= graphPotential (400 : State)
    decide
  ·
    simp [graphSmokeNext_s0400, h_l0009] at h

theorem transition_ok_s0400 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (400 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (400 : State) := by
  intro h
  change graphSmokeNext_s0400 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0400] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (516 : State) <= graphPotential (400 : State)
      decide
  ·
    simp [graphSmokeNext_s0400, h_l0009] at h

theorem valid_s0401 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (401 : State) label t gain ->
      gain + graphPotential t <= graphPotential (401 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0401 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0401] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (517 : State) <= graphPotential (401 : State)
    decide
  ·
    simp [graphSmokeNext_s0401, h_l0009] at h

theorem transition_ok_s0401 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (401 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (401 : State) := by
  intro h
  change graphSmokeNext_s0401 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0401] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (517 : State) <= graphPotential (401 : State)
      decide
  ·
    simp [graphSmokeNext_s0401, h_l0009] at h

theorem valid_s0402 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (402 : State) label t gain ->
      gain + graphPotential t <= graphPotential (402 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0402 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0402] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (518 : State) <= graphPotential (402 : State)
    decide
  ·
    simp [graphSmokeNext_s0402, h_l0009] at h

theorem transition_ok_s0402 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (402 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (402 : State) := by
  intro h
  change graphSmokeNext_s0402 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0402] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (518 : State) <= graphPotential (402 : State)
      decide
  ·
    simp [graphSmokeNext_s0402, h_l0009] at h

theorem valid_s0403 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (403 : State) label t gain ->
      gain + graphPotential t <= graphPotential (403 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0403 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0403] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (519 : State) <= graphPotential (403 : State)
    decide
  ·
    simp [graphSmokeNext_s0403, h_l0009] at h

theorem transition_ok_s0403 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (403 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (403 : State) := by
  intro h
  change graphSmokeNext_s0403 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0403] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (519 : State) <= graphPotential (403 : State)
      decide
  ·
    simp [graphSmokeNext_s0403, h_l0009] at h

theorem valid_s0404 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (404 : State) label t gain ->
      gain + graphPotential t <= graphPotential (404 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0404 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0404] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (520 : State) <= graphPotential (404 : State)
    decide
  ·
    simp [graphSmokeNext_s0404, h_l0009] at h

theorem transition_ok_s0404 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (404 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (404 : State) := by
  intro h
  change graphSmokeNext_s0404 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0404] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (520 : State) <= graphPotential (404 : State)
      decide
  ·
    simp [graphSmokeNext_s0404, h_l0009] at h

theorem valid_s0405 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (405 : State) label t gain ->
      gain + graphPotential t <= graphPotential (405 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0405 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0405] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (521 : State) <= graphPotential (405 : State)
    decide
  ·
    simp [graphSmokeNext_s0405, h_l0009] at h

theorem transition_ok_s0405 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (405 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (405 : State) := by
  intro h
  change graphSmokeNext_s0405 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0405] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (521 : State) <= graphPotential (405 : State)
      decide
  ·
    simp [graphSmokeNext_s0405, h_l0009] at h

theorem valid_s0406 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (406 : State) label t gain ->
      gain + graphPotential t <= graphPotential (406 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0406 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0406] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (522 : State) <= graphPotential (406 : State)
    decide
  ·
    simp [graphSmokeNext_s0406, h_l0009] at h

theorem transition_ok_s0406 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (406 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (406 : State) := by
  intro h
  change graphSmokeNext_s0406 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0406] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (522 : State) <= graphPotential (406 : State)
      decide
  ·
    simp [graphSmokeNext_s0406, h_l0009] at h

theorem valid_s0407 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (407 : State) label t gain ->
      gain + graphPotential t <= graphPotential (407 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0407 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0407] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (523 : State) <= graphPotential (407 : State)
    decide
  ·
    simp [graphSmokeNext_s0407, h_l0009] at h

theorem transition_ok_s0407 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (407 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (407 : State) := by
  intro h
  change graphSmokeNext_s0407 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0407] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (523 : State) <= graphPotential (407 : State)
      decide
  ·
    simp [graphSmokeNext_s0407, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 400 <= s) (hhi : s < 408) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0400 h
  · exact valid_s0401 h
  · exact valid_s0402 h
  · exact valid_s0403 h
  · exact valid_s0404 h
  · exact valid_s0405 h
  · exact valid_s0406 h
  · exact valid_s0407 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 400 <= s) (hhi : s < 408) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0400 h
  · exact transition_ok_s0401 h
  · exact transition_ok_s0402 h
  · exact transition_ok_s0403 h
  · exact transition_ok_s0404 h
  · exact transition_ok_s0405 h
  · exact transition_ok_s0406 h
  · exact transition_ok_s0407 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard050
