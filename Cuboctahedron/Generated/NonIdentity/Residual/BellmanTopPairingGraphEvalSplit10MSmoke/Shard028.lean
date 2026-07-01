import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard028

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [224, 232). -/
theorem valid_s0224 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (224 : State) label t gain ->
      gain + graphPotential t <= graphPotential (224 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0224 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0224] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (314 : State) <= graphPotential (224 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0224] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (344 : State) <= graphPotential (224 : State)
      decide
    ·
      simp [graphSmokeNext_s0224, h_l0011, h_l0013] at h

theorem transition_ok_s0224 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (224 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (224 : State) := by
  intro h
  change graphSmokeNext_s0224 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0224] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (314 : State) <= graphPotential (224 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0224] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (344 : State) <= graphPotential (224 : State)
        decide
    ·
      simp [graphSmokeNext_s0224, h_l0011, h_l0013] at h

theorem valid_s0225 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (225 : State) label t gain ->
      gain + graphPotential t <= graphPotential (225 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0225 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0225] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (324 : State) <= graphPotential (225 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0225] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (353 : State) <= graphPotential (225 : State)
      decide
    ·
      simp [graphSmokeNext_s0225, h_l0011, h_l0013] at h

theorem transition_ok_s0225 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (225 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (225 : State) := by
  intro h
  change graphSmokeNext_s0225 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0225] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (324 : State) <= graphPotential (225 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0225] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (353 : State) <= graphPotential (225 : State)
        decide
    ·
      simp [graphSmokeNext_s0225, h_l0011, h_l0013] at h

theorem valid_s0226 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (226 : State) label t gain ->
      gain + graphPotential t <= graphPotential (226 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0226 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0226] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (325 : State) <= graphPotential (226 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0226] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (354 : State) <= graphPotential (226 : State)
      decide
    ·
      simp [graphSmokeNext_s0226, h_l0011, h_l0013] at h

theorem transition_ok_s0226 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (226 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (226 : State) := by
  intro h
  change graphSmokeNext_s0226 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0226] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (325 : State) <= graphPotential (226 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0226] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (354 : State) <= graphPotential (226 : State)
        decide
    ·
      simp [graphSmokeNext_s0226, h_l0011, h_l0013] at h

theorem valid_s0227 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (227 : State) label t gain ->
      gain + graphPotential t <= graphPotential (227 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0227 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0227] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (332 : State) <= graphPotential (227 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0227] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (356 : State) <= graphPotential (227 : State)
      decide
    ·
      simp [graphSmokeNext_s0227, h_l0011, h_l0013] at h

theorem transition_ok_s0227 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (227 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (227 : State) := by
  intro h
  change graphSmokeNext_s0227 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0227] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (332 : State) <= graphPotential (227 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0227] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (356 : State) <= graphPotential (227 : State)
        decide
    ·
      simp [graphSmokeNext_s0227, h_l0011, h_l0013] at h

theorem valid_s0228 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (228 : State) label t gain ->
      gain + graphPotential t <= graphPotential (228 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0228 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0228] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (340 : State) <= graphPotential (228 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0228] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (363 : State) <= graphPotential (228 : State)
      decide
    ·
      simp [graphSmokeNext_s0228, h_l0011, h_l0013] at h

theorem transition_ok_s0228 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (228 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (228 : State) := by
  intro h
  change graphSmokeNext_s0228 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0228] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (340 : State) <= graphPotential (228 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0228] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (363 : State) <= graphPotential (228 : State)
        decide
    ·
      simp [graphSmokeNext_s0228, h_l0011, h_l0013] at h

theorem valid_s0229 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (229 : State) label t gain ->
      gain + graphPotential t <= graphPotential (229 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0229 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0229] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (343 : State) <= graphPotential (229 : State)
    decide
  ·
    simp [graphSmokeNext_s0229, h_l0010] at h

theorem transition_ok_s0229 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (229 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (229 : State) := by
  intro h
  change graphSmokeNext_s0229 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0229] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (343 : State) <= graphPotential (229 : State)
      decide
  ·
    simp [graphSmokeNext_s0229, h_l0010] at h

theorem valid_s0230 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (230 : State) label t gain ->
      gain + graphPotential t <= graphPotential (230 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0230 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0230] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (345 : State) <= graphPotential (230 : State)
    decide
  ·
    simp [graphSmokeNext_s0230, h_l0010] at h

theorem transition_ok_s0230 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (230 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (230 : State) := by
  intro h
  change graphSmokeNext_s0230 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0230] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (345 : State) <= graphPotential (230 : State)
      decide
  ·
    simp [graphSmokeNext_s0230, h_l0010] at h

theorem valid_s0231 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (231 : State) label t gain ->
      gain + graphPotential t <= graphPotential (231 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0231 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0231] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (347 : State) <= graphPotential (231 : State)
    decide
  ·
    simp [graphSmokeNext_s0231, h_l0010] at h

theorem transition_ok_s0231 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (231 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (231 : State) := by
  intro h
  change graphSmokeNext_s0231 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0231] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (347 : State) <= graphPotential (231 : State)
      decide
  ·
    simp [graphSmokeNext_s0231, h_l0010] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 224 <= s) (hhi : s < 232) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0224 h
  · exact valid_s0225 h
  · exact valid_s0226 h
  · exact valid_s0227 h
  · exact valid_s0228 h
  · exact valid_s0229 h
  · exact valid_s0230 h
  · exact valid_s0231 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 224 <= s) (hhi : s < 232) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0224 h
  · exact transition_ok_s0225 h
  · exact transition_ok_s0226 h
  · exact transition_ok_s0227 h
  · exact transition_ok_s0228 h
  · exact transition_ok_s0229 h
  · exact transition_ok_s0230 h
  · exact transition_ok_s0231 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard028
