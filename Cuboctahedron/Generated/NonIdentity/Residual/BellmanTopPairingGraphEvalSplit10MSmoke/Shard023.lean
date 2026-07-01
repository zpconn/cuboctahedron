import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard023

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [184, 192). -/
theorem valid_s0184 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (184 : State) label t gain ->
      gain + graphPotential t <= graphPotential (184 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0184 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0184] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (338 : State) <= graphPotential (184 : State)
    decide
  ·
    simp [graphSmokeNext_s0184, h_l0000] at h

theorem transition_ok_s0184 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (184 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (184 : State) := by
  intro h
  change graphSmokeNext_s0184 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0184] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (338 : State) <= graphPotential (184 : State)
      decide
  ·
    simp [graphSmokeNext_s0184, h_l0000] at h

theorem valid_s0185 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (185 : State) label t gain ->
      gain + graphPotential t <= graphPotential (185 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0185 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0185] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (339 : State) <= graphPotential (185 : State)
    decide
  ·
    simp [graphSmokeNext_s0185, h_l0000] at h

theorem transition_ok_s0185 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (185 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (185 : State) := by
  intro h
  change graphSmokeNext_s0185 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0185] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (339 : State) <= graphPotential (185 : State)
      decide
  ·
    simp [graphSmokeNext_s0185, h_l0000] at h

theorem valid_s0186 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (186 : State) label t gain ->
      gain + graphPotential t <= graphPotential (186 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0186 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0186] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (341 : State) <= graphPotential (186 : State)
    decide
  ·
    simp [graphSmokeNext_s0186, h_l0000] at h

theorem transition_ok_s0186 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (186 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (186 : State) := by
  intro h
  change graphSmokeNext_s0186 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0186] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (341 : State) <= graphPotential (186 : State)
      decide
  ·
    simp [graphSmokeNext_s0186, h_l0000] at h

theorem valid_s0187 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (187 : State) label t gain ->
      gain + graphPotential t <= graphPotential (187 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0187 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0187] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (312 : State) <= graphPotential (187 : State)
    decide
  ·
    simp [graphSmokeNext_s0187, h_l0012] at h

theorem transition_ok_s0187 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (187 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (187 : State) := by
  intro h
  change graphSmokeNext_s0187 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0187] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (312 : State) <= graphPotential (187 : State)
      decide
  ·
    simp [graphSmokeNext_s0187, h_l0012] at h

theorem valid_s0188 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (188 : State) label t gain ->
      gain + graphPotential t <= graphPotential (188 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0188 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0188] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (313 : State) <= graphPotential (188 : State)
    decide
  ·
    simp [graphSmokeNext_s0188, h_l0012] at h

theorem transition_ok_s0188 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (188 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (188 : State) := by
  intro h
  change graphSmokeNext_s0188 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0188] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (313 : State) <= graphPotential (188 : State)
      decide
  ·
    simp [graphSmokeNext_s0188, h_l0012] at h

theorem valid_s0189 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (189 : State) label t gain ->
      gain + graphPotential t <= graphPotential (189 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0189 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0189] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (314 : State) <= graphPotential (189 : State)
    decide
  ·
    simp [graphSmokeNext_s0189, h_l0012] at h

theorem transition_ok_s0189 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (189 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (189 : State) := by
  intro h
  change graphSmokeNext_s0189 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0189] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (314 : State) <= graphPotential (189 : State)
      decide
  ·
    simp [graphSmokeNext_s0189, h_l0012] at h

theorem valid_s0190 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (190 : State) label t gain ->
      gain + graphPotential t <= graphPotential (190 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0190 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0190] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (315 : State) <= graphPotential (190 : State)
    decide
  ·
    simp [graphSmokeNext_s0190, h_l0012] at h

theorem transition_ok_s0190 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (190 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (190 : State) := by
  intro h
  change graphSmokeNext_s0190 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0190] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (315 : State) <= graphPotential (190 : State)
      decide
  ·
    simp [graphSmokeNext_s0190, h_l0012] at h

theorem valid_s0191 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (191 : State) label t gain ->
      gain + graphPotential t <= graphPotential (191 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0191 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0191] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (316 : State) <= graphPotential (191 : State)
    decide
  ·
    simp [graphSmokeNext_s0191, h_l0012] at h

theorem transition_ok_s0191 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (191 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (191 : State) := by
  intro h
  change graphSmokeNext_s0191 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0191] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (316 : State) <= graphPotential (191 : State)
      decide
  ·
    simp [graphSmokeNext_s0191, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 184 <= s) (hhi : s < 192) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0184 h
  · exact valid_s0185 h
  · exact valid_s0186 h
  · exact valid_s0187 h
  · exact valid_s0188 h
  · exact valid_s0189 h
  · exact valid_s0190 h
  · exact valid_s0191 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 184 <= s) (hhi : s < 192) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0184 h
  · exact transition_ok_s0185 h
  · exact transition_ok_s0186 h
  · exact transition_ok_s0187 h
  · exact transition_ok_s0188 h
  · exact transition_ok_s0189 h
  · exact transition_ok_s0190 h
  · exact transition_ok_s0191 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard023
