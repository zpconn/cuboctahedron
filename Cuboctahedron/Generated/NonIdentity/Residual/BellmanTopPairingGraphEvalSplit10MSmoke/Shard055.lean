import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard055

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [440, 448). -/
theorem valid_s0440 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (440 : State) label t gain ->
      gain + graphPotential t <= graphPotential (440 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0440 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0440] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (556 : State) <= graphPotential (440 : State)
    decide
  ·
    simp [graphSmokeNext_s0440, h_l0009] at h

theorem transition_ok_s0440 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (440 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (440 : State) := by
  intro h
  change graphSmokeNext_s0440 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0440] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (556 : State) <= graphPotential (440 : State)
      decide
  ·
    simp [graphSmokeNext_s0440, h_l0009] at h

theorem valid_s0441 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (441 : State) label t gain ->
      gain + graphPotential t <= graphPotential (441 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0441 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0441] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (557 : State) <= graphPotential (441 : State)
    decide
  ·
    simp [graphSmokeNext_s0441, h_l0009] at h

theorem transition_ok_s0441 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (441 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (441 : State) := by
  intro h
  change graphSmokeNext_s0441 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0441] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (557 : State) <= graphPotential (441 : State)
      decide
  ·
    simp [graphSmokeNext_s0441, h_l0009] at h

theorem valid_s0442 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (442 : State) label t gain ->
      gain + graphPotential t <= graphPotential (442 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0442 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0442] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (558 : State) <= graphPotential (442 : State)
    decide
  ·
    simp [graphSmokeNext_s0442, h_l0009] at h

theorem transition_ok_s0442 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (442 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (442 : State) := by
  intro h
  change graphSmokeNext_s0442 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0442] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (558 : State) <= graphPotential (442 : State)
      decide
  ·
    simp [graphSmokeNext_s0442, h_l0009] at h

theorem valid_s0443 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (443 : State) label t gain ->
      gain + graphPotential t <= graphPotential (443 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0443 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0443] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (559 : State) <= graphPotential (443 : State)
    decide
  ·
    simp [graphSmokeNext_s0443, h_l0009] at h

theorem transition_ok_s0443 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (443 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (443 : State) := by
  intro h
  change graphSmokeNext_s0443 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0443] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (559 : State) <= graphPotential (443 : State)
      decide
  ·
    simp [graphSmokeNext_s0443, h_l0009] at h

theorem valid_s0444 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (444 : State) label t gain ->
      gain + graphPotential t <= graphPotential (444 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0444 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0444] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (560 : State) <= graphPotential (444 : State)
    decide
  ·
    simp [graphSmokeNext_s0444, h_l0009] at h

theorem transition_ok_s0444 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (444 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (444 : State) := by
  intro h
  change graphSmokeNext_s0444 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0444] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (560 : State) <= graphPotential (444 : State)
      decide
  ·
    simp [graphSmokeNext_s0444, h_l0009] at h

theorem valid_s0445 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (445 : State) label t gain ->
      gain + graphPotential t <= graphPotential (445 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0445 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0445] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (561 : State) <= graphPotential (445 : State)
    decide
  ·
    simp [graphSmokeNext_s0445, h_l0009] at h

theorem transition_ok_s0445 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (445 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (445 : State) := by
  intro h
  change graphSmokeNext_s0445 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0445] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (561 : State) <= graphPotential (445 : State)
      decide
  ·
    simp [graphSmokeNext_s0445, h_l0009] at h

theorem valid_s0446 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (446 : State) label t gain ->
      gain + graphPotential t <= graphPotential (446 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0446 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0446] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (562 : State) <= graphPotential (446 : State)
    decide
  ·
    simp [graphSmokeNext_s0446, h_l0009] at h

theorem transition_ok_s0446 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (446 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (446 : State) := by
  intro h
  change graphSmokeNext_s0446 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0446] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (562 : State) <= graphPotential (446 : State)
      decide
  ·
    simp [graphSmokeNext_s0446, h_l0009] at h

theorem valid_s0447 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (447 : State) label t gain ->
      gain + graphPotential t <= graphPotential (447 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0447 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0447] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (563 : State) <= graphPotential (447 : State)
    decide
  ·
    simp [graphSmokeNext_s0447, h_l0009] at h

theorem transition_ok_s0447 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (447 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (447 : State) := by
  intro h
  change graphSmokeNext_s0447 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0447] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (563 : State) <= graphPotential (447 : State)
      decide
  ·
    simp [graphSmokeNext_s0447, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 440 <= s) (hhi : s < 448) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0440 h
  · exact valid_s0441 h
  · exact valid_s0442 h
  · exact valid_s0443 h
  · exact valid_s0444 h
  · exact valid_s0445 h
  · exact valid_s0446 h
  · exact valid_s0447 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 440 <= s) (hhi : s < 448) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0440 h
  · exact transition_ok_s0441 h
  · exact transition_ok_s0442 h
  · exact transition_ok_s0443 h
  · exact transition_ok_s0444 h
  · exact transition_ok_s0445 h
  · exact transition_ok_s0446 h
  · exact transition_ok_s0447 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard055
