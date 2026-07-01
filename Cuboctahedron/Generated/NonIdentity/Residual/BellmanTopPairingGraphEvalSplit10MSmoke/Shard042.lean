import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard042

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [336, 344). -/
theorem valid_s0336 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (336 : State) label t gain ->
      gain + graphPotential t <= graphPotential (336 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0336 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0336] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (474 : State) <= graphPotential (336 : State)
    decide
  ·
    simp [graphSmokeNext_s0336, h_l0013] at h

theorem transition_ok_s0336 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (336 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (336 : State) := by
  intro h
  change graphSmokeNext_s0336 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0336] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (474 : State) <= graphPotential (336 : State)
      decide
  ·
    simp [graphSmokeNext_s0336, h_l0013] at h

theorem valid_s0337 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (337 : State) label t gain ->
      gain + graphPotential t <= graphPotential (337 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0337 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0337] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (482 : State) <= graphPotential (337 : State)
    decide
  ·
    simp [graphSmokeNext_s0337, h_l0013] at h

theorem transition_ok_s0337 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (337 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (337 : State) := by
  intro h
  change graphSmokeNext_s0337 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0337] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (482 : State) <= graphPotential (337 : State)
      decide
  ·
    simp [graphSmokeNext_s0337, h_l0013] at h

theorem valid_s0338 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (338 : State) label t gain ->
      gain + graphPotential t <= graphPotential (338 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0338 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0338] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (483 : State) <= graphPotential (338 : State)
    decide
  ·
    simp [graphSmokeNext_s0338, h_l0013] at h

theorem transition_ok_s0338 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (338 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (338 : State) := by
  intro h
  change graphSmokeNext_s0338 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0338] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (483 : State) <= graphPotential (338 : State)
      decide
  ·
    simp [graphSmokeNext_s0338, h_l0013] at h

theorem valid_s0339 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (339 : State) label t gain ->
      gain + graphPotential t <= graphPotential (339 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0339 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0339] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (484 : State) <= graphPotential (339 : State)
    decide
  ·
    simp [graphSmokeNext_s0339, h_l0013] at h

theorem transition_ok_s0339 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (339 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (339 : State) := by
  intro h
  change graphSmokeNext_s0339 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0339] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (484 : State) <= graphPotential (339 : State)
      decide
  ·
    simp [graphSmokeNext_s0339, h_l0013] at h

theorem valid_s0340 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (340 : State) label t gain ->
      gain + graphPotential t <= graphPotential (340 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0340 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0340] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (485 : State) <= graphPotential (340 : State)
    decide
  ·
    simp [graphSmokeNext_s0340, h_l0013] at h

theorem transition_ok_s0340 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (340 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (340 : State) := by
  intro h
  change graphSmokeNext_s0340 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0340] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (485 : State) <= graphPotential (340 : State)
      decide
  ·
    simp [graphSmokeNext_s0340, h_l0013] at h

theorem valid_s0341 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (341 : State) label t gain ->
      gain + graphPotential t <= graphPotential (341 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0341 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0341] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (486 : State) <= graphPotential (341 : State)
    decide
  ·
    simp [graphSmokeNext_s0341, h_l0013] at h

theorem transition_ok_s0341 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (341 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (341 : State) := by
  intro h
  change graphSmokeNext_s0341 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0341] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (486 : State) <= graphPotential (341 : State)
      decide
  ·
    simp [graphSmokeNext_s0341, h_l0013] at h

theorem valid_s0342 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (342 : State) label t gain ->
      gain + graphPotential t <= graphPotential (342 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0342 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0342] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (377 : State) <= graphPotential (342 : State)
    decide
  ·
    simp [graphSmokeNext_s0342, h_l0011] at h

theorem transition_ok_s0342 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (342 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (342 : State) := by
  intro h
  change graphSmokeNext_s0342 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0342] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (377 : State) <= graphPotential (342 : State)
      decide
  ·
    simp [graphSmokeNext_s0342, h_l0011] at h

theorem valid_s0343 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (343 : State) label t gain ->
      gain + graphPotential t <= graphPotential (343 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0343 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0343] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (381 : State) <= graphPotential (343 : State)
    decide
  ·
    simp [graphSmokeNext_s0343, h_l0011] at h

theorem transition_ok_s0343 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (343 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (343 : State) := by
  intro h
  change graphSmokeNext_s0343 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0343] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (381 : State) <= graphPotential (343 : State)
      decide
  ·
    simp [graphSmokeNext_s0343, h_l0011] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 336 <= s) (hhi : s < 344) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0336 h
  · exact valid_s0337 h
  · exact valid_s0338 h
  · exact valid_s0339 h
  · exact valid_s0340 h
  · exact valid_s0341 h
  · exact valid_s0342 h
  · exact valid_s0343 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 336 <= s) (hhi : s < 344) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0336 h
  · exact transition_ok_s0337 h
  · exact transition_ok_s0338 h
  · exact transition_ok_s0339 h
  · exact transition_ok_s0340 h
  · exact transition_ok_s0341 h
  · exact transition_ok_s0342 h
  · exact transition_ok_s0343 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard042
