import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard022

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [176, 184). -/
theorem valid_s0176 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (176 : State) label t gain ->
      gain + graphPotential t <= graphPotential (176 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0176 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0176] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (322 : State) <= graphPotential (176 : State)
    decide
  ·
    simp [graphSmokeNext_s0176, h_l0000] at h

theorem transition_ok_s0176 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (176 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (176 : State) := by
  intro h
  change graphSmokeNext_s0176 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0176] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (322 : State) <= graphPotential (176 : State)
      decide
  ·
    simp [graphSmokeNext_s0176, h_l0000] at h

theorem valid_s0177 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (177 : State) label t gain ->
      gain + graphPotential t <= graphPotential (177 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0177 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0177] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (323 : State) <= graphPotential (177 : State)
    decide
  ·
    simp [graphSmokeNext_s0177, h_l0000] at h

theorem transition_ok_s0177 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (177 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (177 : State) := by
  intro h
  change graphSmokeNext_s0177 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0177] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (323 : State) <= graphPotential (177 : State)
      decide
  ·
    simp [graphSmokeNext_s0177, h_l0000] at h

theorem valid_s0178 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (178 : State) label t gain ->
      gain + graphPotential t <= graphPotential (178 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0178 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0178] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (326 : State) <= graphPotential (178 : State)
    decide
  ·
    simp [graphSmokeNext_s0178, h_l0000] at h

theorem transition_ok_s0178 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (178 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (178 : State) := by
  intro h
  change graphSmokeNext_s0178 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0178] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (326 : State) <= graphPotential (178 : State)
      decide
  ·
    simp [graphSmokeNext_s0178, h_l0000] at h

theorem valid_s0179 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (179 : State) label t gain ->
      gain + graphPotential t <= graphPotential (179 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0179 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0179] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (327 : State) <= graphPotential (179 : State)
    decide
  ·
    simp [graphSmokeNext_s0179, h_l0000] at h

theorem transition_ok_s0179 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (179 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (179 : State) := by
  intro h
  change graphSmokeNext_s0179 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0179] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (327 : State) <= graphPotential (179 : State)
      decide
  ·
    simp [graphSmokeNext_s0179, h_l0000] at h

theorem valid_s0180 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (180 : State) label t gain ->
      gain + graphPotential t <= graphPotential (180 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0180 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0180] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (328 : State) <= graphPotential (180 : State)
    decide
  ·
    simp [graphSmokeNext_s0180, h_l0000] at h

theorem transition_ok_s0180 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (180 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (180 : State) := by
  intro h
  change graphSmokeNext_s0180 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0180] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (328 : State) <= graphPotential (180 : State)
      decide
  ·
    simp [graphSmokeNext_s0180, h_l0000] at h

theorem valid_s0181 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (181 : State) label t gain ->
      gain + graphPotential t <= graphPotential (181 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0181 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0181] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (329 : State) <= graphPotential (181 : State)
    decide
  ·
    simp [graphSmokeNext_s0181, h_l0000] at h

theorem transition_ok_s0181 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (181 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (181 : State) := by
  intro h
  change graphSmokeNext_s0181 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0181] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (329 : State) <= graphPotential (181 : State)
      decide
  ·
    simp [graphSmokeNext_s0181, h_l0000] at h

theorem valid_s0182 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (182 : State) label t gain ->
      gain + graphPotential t <= graphPotential (182 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0182 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0182] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (330 : State) <= graphPotential (182 : State)
    decide
  ·
    simp [graphSmokeNext_s0182, h_l0000] at h

theorem transition_ok_s0182 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (182 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (182 : State) := by
  intro h
  change graphSmokeNext_s0182 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0182] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (330 : State) <= graphPotential (182 : State)
      decide
  ·
    simp [graphSmokeNext_s0182, h_l0000] at h

theorem valid_s0183 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (183 : State) label t gain ->
      gain + graphPotential t <= graphPotential (183 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0183 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0183] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (331 : State) <= graphPotential (183 : State)
    decide
  ·
    simp [graphSmokeNext_s0183, h_l0000] at h

theorem transition_ok_s0183 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (183 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (183 : State) := by
  intro h
  change graphSmokeNext_s0183 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0183] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (331 : State) <= graphPotential (183 : State)
      decide
  ·
    simp [graphSmokeNext_s0183, h_l0000] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 176 <= s) (hhi : s < 184) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0176 h
  · exact valid_s0177 h
  · exact valid_s0178 h
  · exact valid_s0179 h
  · exact valid_s0180 h
  · exact valid_s0181 h
  · exact valid_s0182 h
  · exact valid_s0183 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 176 <= s) (hhi : s < 184) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0176 h
  · exact transition_ok_s0177 h
  · exact transition_ok_s0178 h
  · exact transition_ok_s0179 h
  · exact transition_ok_s0180 h
  · exact transition_ok_s0181 h
  · exact transition_ok_s0182 h
  · exact transition_ok_s0183 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard022
