import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard031

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [248, 256). -/
theorem valid_s0248 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (248 : State) label t gain ->
      gain + graphPotential t <= graphPotential (248 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0248 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0248] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (378 : State) <= graphPotential (248 : State)
    decide
  ·
    simp [graphSmokeNext_s0248, h_l0001] at h

theorem transition_ok_s0248 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (248 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (248 : State) := by
  intro h
  change graphSmokeNext_s0248 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0248] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (378 : State) <= graphPotential (248 : State)
      decide
  ·
    simp [graphSmokeNext_s0248, h_l0001] at h

theorem valid_s0249 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (249 : State) label t gain ->
      gain + graphPotential t <= graphPotential (249 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0249 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0249] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (380 : State) <= graphPotential (249 : State)
    decide
  ·
    simp [graphSmokeNext_s0249, h_l0001] at h

theorem transition_ok_s0249 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (249 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (249 : State) := by
  intro h
  change graphSmokeNext_s0249 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0249] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (380 : State) <= graphPotential (249 : State)
      decide
  ·
    simp [graphSmokeNext_s0249, h_l0001] at h

theorem valid_s0250 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (250 : State) label t gain ->
      gain + graphPotential t <= graphPotential (250 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0250 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0250] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (384 : State) <= graphPotential (250 : State)
    decide
  ·
    simp [graphSmokeNext_s0250, h_l0001] at h

theorem transition_ok_s0250 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (250 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (250 : State) := by
  intro h
  change graphSmokeNext_s0250 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0250] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (384 : State) <= graphPotential (250 : State)
      decide
  ·
    simp [graphSmokeNext_s0250, h_l0001] at h

theorem valid_s0251 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (251 : State) label t gain ->
      gain + graphPotential t <= graphPotential (251 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0251 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0251] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (386 : State) <= graphPotential (251 : State)
    decide
  ·
    simp [graphSmokeNext_s0251, h_l0001] at h

theorem transition_ok_s0251 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (251 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (251 : State) := by
  intro h
  change graphSmokeNext_s0251 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0251] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (386 : State) <= graphPotential (251 : State)
      decide
  ·
    simp [graphSmokeNext_s0251, h_l0001] at h

theorem valid_s0252 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (252 : State) label t gain ->
      gain + graphPotential t <= graphPotential (252 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0252 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0252] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (388 : State) <= graphPotential (252 : State)
    decide
  ·
    simp [graphSmokeNext_s0252, h_l0001] at h

theorem transition_ok_s0252 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (252 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (252 : State) := by
  intro h
  change graphSmokeNext_s0252 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0252] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (388 : State) <= graphPotential (252 : State)
      decide
  ·
    simp [graphSmokeNext_s0252, h_l0001] at h

theorem valid_s0253 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (253 : State) label t gain ->
      gain + graphPotential t <= graphPotential (253 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0253 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0253] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (389 : State) <= graphPotential (253 : State)
    decide
  ·
    simp [graphSmokeNext_s0253, h_l0001] at h

theorem transition_ok_s0253 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (253 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (253 : State) := by
  intro h
  change graphSmokeNext_s0253 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0253] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (389 : State) <= graphPotential (253 : State)
      decide
  ·
    simp [graphSmokeNext_s0253, h_l0001] at h

theorem valid_s0254 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (254 : State) label t gain ->
      gain + graphPotential t <= graphPotential (254 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0254 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0254] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (391 : State) <= graphPotential (254 : State)
    decide
  ·
    simp [graphSmokeNext_s0254, h_l0001] at h

theorem transition_ok_s0254 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (254 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (254 : State) := by
  intro h
  change graphSmokeNext_s0254 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0254] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (391 : State) <= graphPotential (254 : State)
      decide
  ·
    simp [graphSmokeNext_s0254, h_l0001] at h

theorem valid_s0255 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (255 : State) label t gain ->
      gain + graphPotential t <= graphPotential (255 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0255 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0255] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (393 : State) <= graphPotential (255 : State)
    decide
  ·
    simp [graphSmokeNext_s0255, h_l0001] at h

theorem transition_ok_s0255 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (255 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (255 : State) := by
  intro h
  change graphSmokeNext_s0255 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0255] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (393 : State) <= graphPotential (255 : State)
      decide
  ·
    simp [graphSmokeNext_s0255, h_l0001] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 248 <= s) (hhi : s < 256) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0248 h
  · exact valid_s0249 h
  · exact valid_s0250 h
  · exact valid_s0251 h
  · exact valid_s0252 h
  · exact valid_s0253 h
  · exact valid_s0254 h
  · exact valid_s0255 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 248 <= s) (hhi : s < 256) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0248 h
  · exact transition_ok_s0249 h
  · exact transition_ok_s0250 h
  · exact transition_ok_s0251 h
  · exact transition_ok_s0252 h
  · exact transition_ok_s0253 h
  · exact transition_ok_s0254 h
  · exact transition_ok_s0255 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard031
