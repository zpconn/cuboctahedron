import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard038

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [304, 312). -/
theorem valid_s0304 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (304 : State) label t gain ->
      gain + graphPotential t <= graphPotential (304 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0304 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0304] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (477 : State) <= graphPotential (304 : State)
    decide
  ·
    simp [graphSmokeNext_s0304, h_l0001] at h

theorem transition_ok_s0304 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (304 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (304 : State) := by
  intro h
  change graphSmokeNext_s0304 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0304] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (477 : State) <= graphPotential (304 : State)
      decide
  ·
    simp [graphSmokeNext_s0304, h_l0001] at h

theorem valid_s0305 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (305 : State) label t gain ->
      gain + graphPotential t <= graphPotential (305 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0305 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0305] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (478 : State) <= graphPotential (305 : State)
    decide
  ·
    simp [graphSmokeNext_s0305, h_l0001] at h

theorem transition_ok_s0305 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (305 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (305 : State) := by
  intro h
  change graphSmokeNext_s0305 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0305] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (478 : State) <= graphPotential (305 : State)
      decide
  ·
    simp [graphSmokeNext_s0305, h_l0001] at h

theorem valid_s0306 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (306 : State) label t gain ->
      gain + graphPotential t <= graphPotential (306 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0306 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0306] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (479 : State) <= graphPotential (306 : State)
    decide
  ·
    simp [graphSmokeNext_s0306, h_l0001] at h

theorem transition_ok_s0306 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (306 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (306 : State) := by
  intro h
  change graphSmokeNext_s0306 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0306] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (479 : State) <= graphPotential (306 : State)
      decide
  ·
    simp [graphSmokeNext_s0306, h_l0001] at h

theorem valid_s0307 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (307 : State) label t gain ->
      gain + graphPotential t <= graphPotential (307 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0307 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0307] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (480 : State) <= graphPotential (307 : State)
    decide
  ·
    simp [graphSmokeNext_s0307, h_l0001] at h

theorem transition_ok_s0307 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (307 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (307 : State) := by
  intro h
  change graphSmokeNext_s0307 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0307] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (480 : State) <= graphPotential (307 : State)
      decide
  ·
    simp [graphSmokeNext_s0307, h_l0001] at h

theorem valid_s0308 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (308 : State) label t gain ->
      gain + graphPotential t <= graphPotential (308 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0308 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0308] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (481 : State) <= graphPotential (308 : State)
    decide
  ·
    simp [graphSmokeNext_s0308, h_l0001] at h

theorem transition_ok_s0308 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (308 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (308 : State) := by
  intro h
  change graphSmokeNext_s0308 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0308] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (481 : State) <= graphPotential (308 : State)
      decide
  ·
    simp [graphSmokeNext_s0308, h_l0001] at h

theorem valid_s0309 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (309 : State) label t gain ->
      gain + graphPotential t <= graphPotential (309 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0309 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0309] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (488 : State) <= graphPotential (309 : State)
    decide
  ·
    simp [graphSmokeNext_s0309, h_l0001] at h

theorem transition_ok_s0309 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (309 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (309 : State) := by
  intro h
  change graphSmokeNext_s0309 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0309] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (488 : State) <= graphPotential (309 : State)
      decide
  ·
    simp [graphSmokeNext_s0309, h_l0001] at h

theorem valid_s0310 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (310 : State) label t gain ->
      gain + graphPotential t <= graphPotential (310 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0310 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0310] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (490 : State) <= graphPotential (310 : State)
    decide
  ·
    simp [graphSmokeNext_s0310, h_l0001] at h

theorem transition_ok_s0310 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (310 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (310 : State) := by
  intro h
  change graphSmokeNext_s0310 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0310] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (490 : State) <= graphPotential (310 : State)
      decide
  ·
    simp [graphSmokeNext_s0310, h_l0001] at h

theorem valid_s0311 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (311 : State) label t gain ->
      gain + graphPotential t <= graphPotential (311 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0311 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0311] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (491 : State) <= graphPotential (311 : State)
    decide
  ·
    simp [graphSmokeNext_s0311, h_l0001] at h

theorem transition_ok_s0311 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (311 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (311 : State) := by
  intro h
  change graphSmokeNext_s0311 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0311] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (491 : State) <= graphPotential (311 : State)
      decide
  ·
    simp [graphSmokeNext_s0311, h_l0001] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 304 <= s) (hhi : s < 312) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0304 h
  · exact valid_s0305 h
  · exact valid_s0306 h
  · exact valid_s0307 h
  · exact valid_s0308 h
  · exact valid_s0309 h
  · exact valid_s0310 h
  · exact valid_s0311 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 304 <= s) (hhi : s < 312) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0304 h
  · exact transition_ok_s0305 h
  · exact transition_ok_s0306 h
  · exact transition_ok_s0307 h
  · exact transition_ok_s0308 h
  · exact transition_ok_s0309 h
  · exact transition_ok_s0310 h
  · exact transition_ok_s0311 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard038
