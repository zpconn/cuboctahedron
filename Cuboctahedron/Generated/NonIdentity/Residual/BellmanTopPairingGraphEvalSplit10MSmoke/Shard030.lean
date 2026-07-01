import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard030

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [240, 248). -/
theorem valid_s0240 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (240 : State) label t gain ->
      gain + graphPotential t <= graphPotential (240 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0240 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0240] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (370 : State) <= graphPotential (240 : State)
    decide
  ·
    simp [graphSmokeNext_s0240, h_l0005] at h

theorem transition_ok_s0240 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (240 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (240 : State) := by
  intro h
  change graphSmokeNext_s0240 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0240] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (370 : State) <= graphPotential (240 : State)
      decide
  ·
    simp [graphSmokeNext_s0240, h_l0005] at h

theorem valid_s0241 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (241 : State) label t gain ->
      gain + graphPotential t <= graphPotential (241 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0241 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0241] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (371 : State) <= graphPotential (241 : State)
    decide
  ·
    simp [graphSmokeNext_s0241, h_l0005] at h

theorem transition_ok_s0241 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (241 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (241 : State) := by
  intro h
  change graphSmokeNext_s0241 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0241] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (371 : State) <= graphPotential (241 : State)
      decide
  ·
    simp [graphSmokeNext_s0241, h_l0005] at h

theorem valid_s0242 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (242 : State) label t gain ->
      gain + graphPotential t <= graphPotential (242 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0242 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0242] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (372 : State) <= graphPotential (242 : State)
    decide
  ·
    simp [graphSmokeNext_s0242, h_l0005] at h

theorem transition_ok_s0242 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (242 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (242 : State) := by
  intro h
  change graphSmokeNext_s0242 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0242] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (372 : State) <= graphPotential (242 : State)
      decide
  ·
    simp [graphSmokeNext_s0242, h_l0005] at h

theorem valid_s0243 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (243 : State) label t gain ->
      gain + graphPotential t <= graphPotential (243 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0243 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0243] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (373 : State) <= graphPotential (243 : State)
    decide
  ·
    simp [graphSmokeNext_s0243, h_l0005] at h

theorem transition_ok_s0243 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (243 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (243 : State) := by
  intro h
  change graphSmokeNext_s0243 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0243] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (373 : State) <= graphPotential (243 : State)
      decide
  ·
    simp [graphSmokeNext_s0243, h_l0005] at h

theorem valid_s0244 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (244 : State) label t gain ->
      gain + graphPotential t <= graphPotential (244 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0244 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0244] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (375 : State) <= graphPotential (244 : State)
    decide
  ·
    simp [graphSmokeNext_s0244, h_l0005] at h

theorem transition_ok_s0244 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (244 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (244 : State) := by
  intro h
  change graphSmokeNext_s0244 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0244] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (375 : State) <= graphPotential (244 : State)
      decide
  ·
    simp [graphSmokeNext_s0244, h_l0005] at h

theorem valid_s0245 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (245 : State) label t gain ->
      gain + graphPotential t <= graphPotential (245 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0245 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0245] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (334 : State) <= graphPotential (245 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0245] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (367 : State) <= graphPotential (245 : State)
      decide
    ·
      simp [graphSmokeNext_s0245, h_l0008, h_l0013] at h

theorem transition_ok_s0245 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (245 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (245 : State) := by
  intro h
  change graphSmokeNext_s0245 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0245] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (334 : State) <= graphPotential (245 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0245] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (367 : State) <= graphPotential (245 : State)
        decide
    ·
      simp [graphSmokeNext_s0245, h_l0008, h_l0013] at h

theorem valid_s0246 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (246 : State) label t gain ->
      gain + graphPotential t <= graphPotential (246 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0246 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0246] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (337 : State) <= graphPotential (246 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0246] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (374 : State) <= graphPotential (246 : State)
      decide
    ·
      simp [graphSmokeNext_s0246, h_l0008, h_l0013] at h

theorem transition_ok_s0246 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (246 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (246 : State) := by
  intro h
  change graphSmokeNext_s0246 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0246] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (337 : State) <= graphPotential (246 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0246] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (374 : State) <= graphPotential (246 : State)
        decide
    ·
      simp [graphSmokeNext_s0246, h_l0008, h_l0013] at h

theorem valid_s0247 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (247 : State) label t gain ->
      gain + graphPotential t <= graphPotential (247 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0247 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0247] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (376 : State) <= graphPotential (247 : State)
    decide
  ·
    simp [graphSmokeNext_s0247, h_l0001] at h

theorem transition_ok_s0247 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (247 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (247 : State) := by
  intro h
  change graphSmokeNext_s0247 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0247] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (376 : State) <= graphPotential (247 : State)
      decide
  ·
    simp [graphSmokeNext_s0247, h_l0001] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 240 <= s) (hhi : s < 248) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0240 h
  · exact valid_s0241 h
  · exact valid_s0242 h
  · exact valid_s0243 h
  · exact valid_s0244 h
  · exact valid_s0245 h
  · exact valid_s0246 h
  · exact valid_s0247 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 240 <= s) (hhi : s < 248) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0240 h
  · exact transition_ok_s0241 h
  · exact transition_ok_s0242 h
  · exact transition_ok_s0243 h
  · exact transition_ok_s0244 h
  · exact transition_ok_s0245 h
  · exact transition_ok_s0246 h
  · exact transition_ok_s0247 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard030
