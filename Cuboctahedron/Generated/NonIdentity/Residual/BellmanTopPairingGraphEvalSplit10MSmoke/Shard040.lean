import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard040

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [320, 328). -/
theorem valid_s0320 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (320 : State) label t gain ->
      gain + graphPotential t <= graphPotential (320 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0320 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0320] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (413 : State) <= graphPotential (320 : State)
    decide
  ·
    simp [graphSmokeNext_s0320, h_l0013] at h

theorem transition_ok_s0320 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (320 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (320 : State) := by
  intro h
  change graphSmokeNext_s0320 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0320] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (413 : State) <= graphPotential (320 : State)
      decide
  ·
    simp [graphSmokeNext_s0320, h_l0013] at h

theorem valid_s0321 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (321 : State) label t gain ->
      gain + graphPotential t <= graphPotential (321 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0321 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0321] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (423 : State) <= graphPotential (321 : State)
    decide
  ·
    simp [graphSmokeNext_s0321, h_l0013] at h

theorem transition_ok_s0321 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (321 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (321 : State) := by
  intro h
  change graphSmokeNext_s0321 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0321] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (423 : State) <= graphPotential (321 : State)
      decide
  ·
    simp [graphSmokeNext_s0321, h_l0013] at h

theorem valid_s0322 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (322 : State) label t gain ->
      gain + graphPotential t <= graphPotential (322 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0322 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0322] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (430 : State) <= graphPotential (322 : State)
    decide
  ·
    simp [graphSmokeNext_s0322, h_l0013] at h

theorem transition_ok_s0322 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (322 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (322 : State) := by
  intro h
  change graphSmokeNext_s0322 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0322] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (430 : State) <= graphPotential (322 : State)
      decide
  ·
    simp [graphSmokeNext_s0322, h_l0013] at h

theorem valid_s0323 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (323 : State) label t gain ->
      gain + graphPotential t <= graphPotential (323 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0323 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0323] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (431 : State) <= graphPotential (323 : State)
    decide
  ·
    simp [graphSmokeNext_s0323, h_l0013] at h

theorem transition_ok_s0323 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (323 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (323 : State) := by
  intro h
  change graphSmokeNext_s0323 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0323] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (431 : State) <= graphPotential (323 : State)
      decide
  ·
    simp [graphSmokeNext_s0323, h_l0013] at h

theorem valid_s0324 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (324 : State) label t gain ->
      gain + graphPotential t <= graphPotential (324 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0324 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0324] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (432 : State) <= graphPotential (324 : State)
    decide
  ·
    simp [graphSmokeNext_s0324, h_l0013] at h

theorem transition_ok_s0324 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (324 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (324 : State) := by
  intro h
  change graphSmokeNext_s0324 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0324] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (432 : State) <= graphPotential (324 : State)
      decide
  ·
    simp [graphSmokeNext_s0324, h_l0013] at h

theorem valid_s0325 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (325 : State) label t gain ->
      gain + graphPotential t <= graphPotential (325 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0325 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0325] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (433 : State) <= graphPotential (325 : State)
    decide
  ·
    simp [graphSmokeNext_s0325, h_l0013] at h

theorem transition_ok_s0325 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (325 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (325 : State) := by
  intro h
  change graphSmokeNext_s0325 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0325] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (433 : State) <= graphPotential (325 : State)
      decide
  ·
    simp [graphSmokeNext_s0325, h_l0013] at h

theorem valid_s0326 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (326 : State) label t gain ->
      gain + graphPotential t <= graphPotential (326 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0326 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0326] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (434 : State) <= graphPotential (326 : State)
    decide
  ·
    simp [graphSmokeNext_s0326, h_l0013] at h

theorem transition_ok_s0326 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (326 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (326 : State) := by
  intro h
  change graphSmokeNext_s0326 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0326] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (434 : State) <= graphPotential (326 : State)
      decide
  ·
    simp [graphSmokeNext_s0326, h_l0013] at h

theorem valid_s0327 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (327 : State) label t gain ->
      gain + graphPotential t <= graphPotential (327 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0327 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0327] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (435 : State) <= graphPotential (327 : State)
    decide
  ·
    simp [graphSmokeNext_s0327, h_l0013] at h

theorem transition_ok_s0327 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (327 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (327 : State) := by
  intro h
  change graphSmokeNext_s0327 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0327] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (435 : State) <= graphPotential (327 : State)
      decide
  ·
    simp [graphSmokeNext_s0327, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 320 <= s) (hhi : s < 328) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0320 h
  · exact valid_s0321 h
  · exact valid_s0322 h
  · exact valid_s0323 h
  · exact valid_s0324 h
  · exact valid_s0325 h
  · exact valid_s0326 h
  · exact valid_s0327 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 320 <= s) (hhi : s < 328) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0320 h
  · exact transition_ok_s0321 h
  · exact transition_ok_s0322 h
  · exact transition_ok_s0323 h
  · exact transition_ok_s0324 h
  · exact transition_ok_s0325 h
  · exact transition_ok_s0326 h
  · exact transition_ok_s0327 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard040
