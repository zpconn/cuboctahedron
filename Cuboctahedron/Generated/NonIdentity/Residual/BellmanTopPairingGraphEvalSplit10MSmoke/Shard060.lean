import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard060

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [480, 488). -/
theorem valid_s0480 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (480 : State) label t gain ->
      gain + graphPotential t <= graphPotential (480 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0480 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0480] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (596 : State) <= graphPotential (480 : State)
    decide
  ·
    simp [graphSmokeNext_s0480, h_l0009] at h

theorem transition_ok_s0480 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (480 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (480 : State) := by
  intro h
  change graphSmokeNext_s0480 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0480] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (596 : State) <= graphPotential (480 : State)
      decide
  ·
    simp [graphSmokeNext_s0480, h_l0009] at h

theorem valid_s0481 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (481 : State) label t gain ->
      gain + graphPotential t <= graphPotential (481 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0481 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0481] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (597 : State) <= graphPotential (481 : State)
    decide
  ·
    simp [graphSmokeNext_s0481, h_l0009] at h

theorem transition_ok_s0481 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (481 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (481 : State) := by
  intro h
  change graphSmokeNext_s0481 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0481] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (597 : State) <= graphPotential (481 : State)
      decide
  ·
    simp [graphSmokeNext_s0481, h_l0009] at h

theorem valid_s0482 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (482 : State) label t gain ->
      gain + graphPotential t <= graphPotential (482 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0482 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0482] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (598 : State) <= graphPotential (482 : State)
    decide
  ·
    simp [graphSmokeNext_s0482, h_l0009] at h

theorem transition_ok_s0482 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (482 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (482 : State) := by
  intro h
  change graphSmokeNext_s0482 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0482] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (598 : State) <= graphPotential (482 : State)
      decide
  ·
    simp [graphSmokeNext_s0482, h_l0009] at h

theorem valid_s0483 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (483 : State) label t gain ->
      gain + graphPotential t <= graphPotential (483 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0483 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0483] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (599 : State) <= graphPotential (483 : State)
    decide
  ·
    simp [graphSmokeNext_s0483, h_l0009] at h

theorem transition_ok_s0483 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (483 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (483 : State) := by
  intro h
  change graphSmokeNext_s0483 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0483] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (599 : State) <= graphPotential (483 : State)
      decide
  ·
    simp [graphSmokeNext_s0483, h_l0009] at h

theorem valid_s0484 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (484 : State) label t gain ->
      gain + graphPotential t <= graphPotential (484 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0484 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0484] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (600 : State) <= graphPotential (484 : State)
    decide
  ·
    simp [graphSmokeNext_s0484, h_l0009] at h

theorem transition_ok_s0484 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (484 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (484 : State) := by
  intro h
  change graphSmokeNext_s0484 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0484] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (600 : State) <= graphPotential (484 : State)
      decide
  ·
    simp [graphSmokeNext_s0484, h_l0009] at h

theorem valid_s0485 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (485 : State) label t gain ->
      gain + graphPotential t <= graphPotential (485 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0485 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0485] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (601 : State) <= graphPotential (485 : State)
    decide
  ·
    simp [graphSmokeNext_s0485, h_l0009] at h

theorem transition_ok_s0485 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (485 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (485 : State) := by
  intro h
  change graphSmokeNext_s0485 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0485] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (601 : State) <= graphPotential (485 : State)
      decide
  ·
    simp [graphSmokeNext_s0485, h_l0009] at h

theorem valid_s0486 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (486 : State) label t gain ->
      gain + graphPotential t <= graphPotential (486 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0486 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0486] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (602 : State) <= graphPotential (486 : State)
    decide
  ·
    simp [graphSmokeNext_s0486, h_l0009] at h

theorem transition_ok_s0486 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (486 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (486 : State) := by
  intro h
  change graphSmokeNext_s0486 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0486] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (602 : State) <= graphPotential (486 : State)
      decide
  ·
    simp [graphSmokeNext_s0486, h_l0009] at h

theorem valid_s0487 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (487 : State) label t gain ->
      gain + graphPotential t <= graphPotential (487 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0487 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0487] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (603 : State) <= graphPotential (487 : State)
    decide
  ·
    simp [graphSmokeNext_s0487, h_l0009] at h

theorem transition_ok_s0487 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (487 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (487 : State) := by
  intro h
  change graphSmokeNext_s0487 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0487] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (603 : State) <= graphPotential (487 : State)
      decide
  ·
    simp [graphSmokeNext_s0487, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 480 <= s) (hhi : s < 488) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0480 h
  · exact valid_s0481 h
  · exact valid_s0482 h
  · exact valid_s0483 h
  · exact valid_s0484 h
  · exact valid_s0485 h
  · exact valid_s0486 h
  · exact valid_s0487 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 480 <= s) (hhi : s < 488) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0480 h
  · exact transition_ok_s0481 h
  · exact transition_ok_s0482 h
  · exact transition_ok_s0483 h
  · exact transition_ok_s0484 h
  · exact transition_ok_s0485 h
  · exact transition_ok_s0486 h
  · exact transition_ok_s0487 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard060
