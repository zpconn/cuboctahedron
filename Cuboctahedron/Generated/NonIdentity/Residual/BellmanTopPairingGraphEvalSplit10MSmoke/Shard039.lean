import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard039

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [312, 320). -/
theorem valid_s0312 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (312 : State) label t gain ->
      gain + graphPotential t <= graphPotential (312 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0312 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0312] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (379 : State) <= graphPotential (312 : State)
    decide
  ·
    simp [graphSmokeNext_s0312, h_l0013] at h

theorem transition_ok_s0312 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (312 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (312 : State) := by
  intro h
  change graphSmokeNext_s0312 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0312] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (379 : State) <= graphPotential (312 : State)
      decide
  ·
    simp [graphSmokeNext_s0312, h_l0013] at h

theorem valid_s0313 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (313 : State) label t gain ->
      gain + graphPotential t <= graphPotential (313 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0313 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0313] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (381 : State) <= graphPotential (313 : State)
    decide
  ·
    simp [graphSmokeNext_s0313, h_l0013] at h

theorem transition_ok_s0313 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (313 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (313 : State) := by
  intro h
  change graphSmokeNext_s0313 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0313] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (381 : State) <= graphPotential (313 : State)
      decide
  ·
    simp [graphSmokeNext_s0313, h_l0013] at h

theorem valid_s0314 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (314 : State) label t gain ->
      gain + graphPotential t <= graphPotential (314 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0314 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0314] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (382 : State) <= graphPotential (314 : State)
    decide
  ·
    simp [graphSmokeNext_s0314, h_l0013] at h

theorem transition_ok_s0314 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (314 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (314 : State) := by
  intro h
  change graphSmokeNext_s0314 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0314] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (382 : State) <= graphPotential (314 : State)
      decide
  ·
    simp [graphSmokeNext_s0314, h_l0013] at h

theorem valid_s0315 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (315 : State) label t gain ->
      gain + graphPotential t <= graphPotential (315 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0315 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0315] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (383 : State) <= graphPotential (315 : State)
    decide
  ·
    simp [graphSmokeNext_s0315, h_l0013] at h

theorem transition_ok_s0315 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (315 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (315 : State) := by
  intro h
  change graphSmokeNext_s0315 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0315] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (383 : State) <= graphPotential (315 : State)
      decide
  ·
    simp [graphSmokeNext_s0315, h_l0013] at h

theorem valid_s0316 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (316 : State) label t gain ->
      gain + graphPotential t <= graphPotential (316 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0316 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0316] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (387 : State) <= graphPotential (316 : State)
    decide
  ·
    simp [graphSmokeNext_s0316, h_l0013] at h

theorem transition_ok_s0316 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (316 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (316 : State) := by
  intro h
  change graphSmokeNext_s0316 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0316] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (387 : State) <= graphPotential (316 : State)
      decide
  ·
    simp [graphSmokeNext_s0316, h_l0013] at h

theorem valid_s0317 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (317 : State) label t gain ->
      gain + graphPotential t <= graphPotential (317 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0317 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0317] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (392 : State) <= graphPotential (317 : State)
    decide
  ·
    simp [graphSmokeNext_s0317, h_l0013] at h

theorem transition_ok_s0317 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (317 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (317 : State) := by
  intro h
  change graphSmokeNext_s0317 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0317] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (392 : State) <= graphPotential (317 : State)
      decide
  ·
    simp [graphSmokeNext_s0317, h_l0013] at h

theorem valid_s0318 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (318 : State) label t gain ->
      gain + graphPotential t <= graphPotential (318 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0318 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0318] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (398 : State) <= graphPotential (318 : State)
    decide
  ·
    simp [graphSmokeNext_s0318, h_l0013] at h

theorem transition_ok_s0318 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (318 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (318 : State) := by
  intro h
  change graphSmokeNext_s0318 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0318] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (398 : State) <= graphPotential (318 : State)
      decide
  ·
    simp [graphSmokeNext_s0318, h_l0013] at h

theorem valid_s0319 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (319 : State) label t gain ->
      gain + graphPotential t <= graphPotential (319 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0319 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0319] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (405 : State) <= graphPotential (319 : State)
    decide
  ·
    simp [graphSmokeNext_s0319, h_l0013] at h

theorem transition_ok_s0319 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (319 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (319 : State) := by
  intro h
  change graphSmokeNext_s0319 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0319] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (405 : State) <= graphPotential (319 : State)
      decide
  ·
    simp [graphSmokeNext_s0319, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 312 <= s) (hhi : s < 320) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0312 h
  · exact valid_s0313 h
  · exact valid_s0314 h
  · exact valid_s0315 h
  · exact valid_s0316 h
  · exact valid_s0317 h
  · exact valid_s0318 h
  · exact valid_s0319 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 312 <= s) (hhi : s < 320) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0312 h
  · exact transition_ok_s0313 h
  · exact transition_ok_s0314 h
  · exact transition_ok_s0315 h
  · exact transition_ok_s0316 h
  · exact transition_ok_s0317 h
  · exact transition_ok_s0318 h
  · exact transition_ok_s0319 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard039
