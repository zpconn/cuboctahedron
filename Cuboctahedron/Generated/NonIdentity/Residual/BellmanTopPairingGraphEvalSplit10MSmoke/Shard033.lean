import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard033

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [264, 272). -/
theorem valid_s0264 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (264 : State) label t gain ->
      gain + graphPotential t <= graphPotential (264 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0264 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0264] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (406 : State) <= graphPotential (264 : State)
    decide
  ·
    simp [graphSmokeNext_s0264, h_l0001] at h

theorem transition_ok_s0264 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (264 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (264 : State) := by
  intro h
  change graphSmokeNext_s0264 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0264] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (406 : State) <= graphPotential (264 : State)
      decide
  ·
    simp [graphSmokeNext_s0264, h_l0001] at h

theorem valid_s0265 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (265 : State) label t gain ->
      gain + graphPotential t <= graphPotential (265 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0265 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0265] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (407 : State) <= graphPotential (265 : State)
    decide
  ·
    simp [graphSmokeNext_s0265, h_l0001] at h

theorem transition_ok_s0265 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (265 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (265 : State) := by
  intro h
  change graphSmokeNext_s0265 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0265] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (407 : State) <= graphPotential (265 : State)
      decide
  ·
    simp [graphSmokeNext_s0265, h_l0001] at h

theorem valid_s0266 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (266 : State) label t gain ->
      gain + graphPotential t <= graphPotential (266 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0266 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0266] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (408 : State) <= graphPotential (266 : State)
    decide
  ·
    simp [graphSmokeNext_s0266, h_l0001] at h

theorem transition_ok_s0266 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (266 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (266 : State) := by
  intro h
  change graphSmokeNext_s0266 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0266] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (408 : State) <= graphPotential (266 : State)
      decide
  ·
    simp [graphSmokeNext_s0266, h_l0001] at h

theorem valid_s0267 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (267 : State) label t gain ->
      gain + graphPotential t <= graphPotential (267 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0267 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0267] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (409 : State) <= graphPotential (267 : State)
    decide
  ·
    simp [graphSmokeNext_s0267, h_l0001] at h

theorem transition_ok_s0267 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (267 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (267 : State) := by
  intro h
  change graphSmokeNext_s0267 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0267] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (409 : State) <= graphPotential (267 : State)
      decide
  ·
    simp [graphSmokeNext_s0267, h_l0001] at h

theorem valid_s0268 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (268 : State) label t gain ->
      gain + graphPotential t <= graphPotential (268 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0268 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0268] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (410 : State) <= graphPotential (268 : State)
    decide
  ·
    simp [graphSmokeNext_s0268, h_l0001] at h

theorem transition_ok_s0268 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (268 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (268 : State) := by
  intro h
  change graphSmokeNext_s0268 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0268] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (410 : State) <= graphPotential (268 : State)
      decide
  ·
    simp [graphSmokeNext_s0268, h_l0001] at h

theorem valid_s0269 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (269 : State) label t gain ->
      gain + graphPotential t <= graphPotential (269 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0269 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0269] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (411 : State) <= graphPotential (269 : State)
    decide
  ·
    simp [graphSmokeNext_s0269, h_l0001] at h

theorem transition_ok_s0269 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (269 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (269 : State) := by
  intro h
  change graphSmokeNext_s0269 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0269] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (411 : State) <= graphPotential (269 : State)
      decide
  ·
    simp [graphSmokeNext_s0269, h_l0001] at h

theorem valid_s0270 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (270 : State) label t gain ->
      gain + graphPotential t <= graphPotential (270 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0270 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0270] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (412 : State) <= graphPotential (270 : State)
    decide
  ·
    simp [graphSmokeNext_s0270, h_l0001] at h

theorem transition_ok_s0270 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (270 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (270 : State) := by
  intro h
  change graphSmokeNext_s0270 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0270] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (412 : State) <= graphPotential (270 : State)
      decide
  ·
    simp [graphSmokeNext_s0270, h_l0001] at h

theorem valid_s0271 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (271 : State) label t gain ->
      gain + graphPotential t <= graphPotential (271 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0271 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0271] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (414 : State) <= graphPotential (271 : State)
    decide
  ·
    simp [graphSmokeNext_s0271, h_l0001] at h

theorem transition_ok_s0271 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (271 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (271 : State) := by
  intro h
  change graphSmokeNext_s0271 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0271] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (414 : State) <= graphPotential (271 : State)
      decide
  ·
    simp [graphSmokeNext_s0271, h_l0001] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 264 <= s) (hhi : s < 272) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0264 h
  · exact valid_s0265 h
  · exact valid_s0266 h
  · exact valid_s0267 h
  · exact valid_s0268 h
  · exact valid_s0269 h
  · exact valid_s0270 h
  · exact valid_s0271 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 264 <= s) (hhi : s < 272) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0264 h
  · exact transition_ok_s0265 h
  · exact transition_ok_s0266 h
  · exact transition_ok_s0267 h
  · exact transition_ok_s0268 h
  · exact transition_ok_s0269 h
  · exact transition_ok_s0270 h
  · exact transition_ok_s0271 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard033
