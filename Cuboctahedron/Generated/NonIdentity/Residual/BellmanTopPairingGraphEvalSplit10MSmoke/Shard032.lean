import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard032

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [256, 264). -/
theorem valid_s0256 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (256 : State) label t gain ->
      gain + graphPotential t <= graphPotential (256 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0256 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0256] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (394 : State) <= graphPotential (256 : State)
    decide
  ·
    simp [graphSmokeNext_s0256, h_l0001] at h

theorem transition_ok_s0256 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (256 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (256 : State) := by
  intro h
  change graphSmokeNext_s0256 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0256] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (394 : State) <= graphPotential (256 : State)
      decide
  ·
    simp [graphSmokeNext_s0256, h_l0001] at h

theorem valid_s0257 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (257 : State) label t gain ->
      gain + graphPotential t <= graphPotential (257 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0257 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0257] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (395 : State) <= graphPotential (257 : State)
    decide
  ·
    simp [graphSmokeNext_s0257, h_l0001] at h

theorem transition_ok_s0257 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (257 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (257 : State) := by
  intro h
  change graphSmokeNext_s0257 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0257] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (395 : State) <= graphPotential (257 : State)
      decide
  ·
    simp [graphSmokeNext_s0257, h_l0001] at h

theorem valid_s0258 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (258 : State) label t gain ->
      gain + graphPotential t <= graphPotential (258 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0258 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0258] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (397 : State) <= graphPotential (258 : State)
    decide
  ·
    simp [graphSmokeNext_s0258, h_l0001] at h

theorem transition_ok_s0258 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (258 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (258 : State) := by
  intro h
  change graphSmokeNext_s0258 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0258] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (397 : State) <= graphPotential (258 : State)
      decide
  ·
    simp [graphSmokeNext_s0258, h_l0001] at h

theorem valid_s0259 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (259 : State) label t gain ->
      gain + graphPotential t <= graphPotential (259 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0259 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0259] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (399 : State) <= graphPotential (259 : State)
    decide
  ·
    simp [graphSmokeNext_s0259, h_l0001] at h

theorem transition_ok_s0259 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (259 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (259 : State) := by
  intro h
  change graphSmokeNext_s0259 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0259] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (399 : State) <= graphPotential (259 : State)
      decide
  ·
    simp [graphSmokeNext_s0259, h_l0001] at h

theorem valid_s0260 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (260 : State) label t gain ->
      gain + graphPotential t <= graphPotential (260 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0260 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0260] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (400 : State) <= graphPotential (260 : State)
    decide
  ·
    simp [graphSmokeNext_s0260, h_l0001] at h

theorem transition_ok_s0260 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (260 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (260 : State) := by
  intro h
  change graphSmokeNext_s0260 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0260] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (400 : State) <= graphPotential (260 : State)
      decide
  ·
    simp [graphSmokeNext_s0260, h_l0001] at h

theorem valid_s0261 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (261 : State) label t gain ->
      gain + graphPotential t <= graphPotential (261 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0261 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0261] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (401 : State) <= graphPotential (261 : State)
    decide
  ·
    simp [graphSmokeNext_s0261, h_l0001] at h

theorem transition_ok_s0261 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (261 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (261 : State) := by
  intro h
  change graphSmokeNext_s0261 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0261] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (401 : State) <= graphPotential (261 : State)
      decide
  ·
    simp [graphSmokeNext_s0261, h_l0001] at h

theorem valid_s0262 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (262 : State) label t gain ->
      gain + graphPotential t <= graphPotential (262 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0262 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0262] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (402 : State) <= graphPotential (262 : State)
    decide
  ·
    simp [graphSmokeNext_s0262, h_l0001] at h

theorem transition_ok_s0262 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (262 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (262 : State) := by
  intro h
  change graphSmokeNext_s0262 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0262] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (402 : State) <= graphPotential (262 : State)
      decide
  ·
    simp [graphSmokeNext_s0262, h_l0001] at h

theorem valid_s0263 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (263 : State) label t gain ->
      gain + graphPotential t <= graphPotential (263 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0263 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0263] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (404 : State) <= graphPotential (263 : State)
    decide
  ·
    simp [graphSmokeNext_s0263, h_l0001] at h

theorem transition_ok_s0263 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (263 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (263 : State) := by
  intro h
  change graphSmokeNext_s0263 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0263] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (404 : State) <= graphPotential (263 : State)
      decide
  ·
    simp [graphSmokeNext_s0263, h_l0001] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 256 <= s) (hhi : s < 264) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0256 h
  · exact valid_s0257 h
  · exact valid_s0258 h
  · exact valid_s0259 h
  · exact valid_s0260 h
  · exact valid_s0261 h
  · exact valid_s0262 h
  · exact valid_s0263 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 256 <= s) (hhi : s < 264) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0256 h
  · exact transition_ok_s0257 h
  · exact transition_ok_s0258 h
  · exact transition_ok_s0259 h
  · exact transition_ok_s0260 h
  · exact transition_ok_s0261 h
  · exact transition_ok_s0262 h
  · exact transition_ok_s0263 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard032
