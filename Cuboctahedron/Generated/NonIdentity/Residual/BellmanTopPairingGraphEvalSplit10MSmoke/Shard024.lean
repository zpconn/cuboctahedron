import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard024

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [192, 200). -/
theorem valid_s0192 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (192 : State) label t gain ->
      gain + graphPotential t <= graphPotential (192 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0192 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0192] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (317 : State) <= graphPotential (192 : State)
    decide
  ·
    simp [graphSmokeNext_s0192, h_l0012] at h

theorem transition_ok_s0192 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (192 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (192 : State) := by
  intro h
  change graphSmokeNext_s0192 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0192] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (317 : State) <= graphPotential (192 : State)
      decide
  ·
    simp [graphSmokeNext_s0192, h_l0012] at h

theorem valid_s0193 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (193 : State) label t gain ->
      gain + graphPotential t <= graphPotential (193 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0193 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0193] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (318 : State) <= graphPotential (193 : State)
    decide
  ·
    simp [graphSmokeNext_s0193, h_l0012] at h

theorem transition_ok_s0193 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (193 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (193 : State) := by
  intro h
  change graphSmokeNext_s0193 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0193] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (318 : State) <= graphPotential (193 : State)
      decide
  ·
    simp [graphSmokeNext_s0193, h_l0012] at h

theorem valid_s0194 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (194 : State) label t gain ->
      gain + graphPotential t <= graphPotential (194 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0194 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0194] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (319 : State) <= graphPotential (194 : State)
    decide
  ·
    simp [graphSmokeNext_s0194, h_l0012] at h

theorem transition_ok_s0194 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (194 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (194 : State) := by
  intro h
  change graphSmokeNext_s0194 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0194] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (319 : State) <= graphPotential (194 : State)
      decide
  ·
    simp [graphSmokeNext_s0194, h_l0012] at h

theorem valid_s0195 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (195 : State) label t gain ->
      gain + graphPotential t <= graphPotential (195 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0195 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0195] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (320 : State) <= graphPotential (195 : State)
    decide
  ·
    simp [graphSmokeNext_s0195, h_l0012] at h

theorem transition_ok_s0195 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (195 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (195 : State) := by
  intro h
  change graphSmokeNext_s0195 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0195] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (320 : State) <= graphPotential (195 : State)
      decide
  ·
    simp [graphSmokeNext_s0195, h_l0012] at h

theorem valid_s0196 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (196 : State) label t gain ->
      gain + graphPotential t <= graphPotential (196 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0196 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0196] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (321 : State) <= graphPotential (196 : State)
    decide
  ·
    simp [graphSmokeNext_s0196, h_l0012] at h

theorem transition_ok_s0196 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (196 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (196 : State) := by
  intro h
  change graphSmokeNext_s0196 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0196] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (321 : State) <= graphPotential (196 : State)
      decide
  ·
    simp [graphSmokeNext_s0196, h_l0012] at h

theorem valid_s0197 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (197 : State) label t gain ->
      gain + graphPotential t <= graphPotential (197 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0197 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0197] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (332 : State) <= graphPotential (197 : State)
    decide
  ·
    simp [graphSmokeNext_s0197, h_l0012] at h

theorem transition_ok_s0197 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (197 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (197 : State) := by
  intro h
  change graphSmokeNext_s0197 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0197] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (332 : State) <= graphPotential (197 : State)
      decide
  ·
    simp [graphSmokeNext_s0197, h_l0012] at h

theorem valid_s0198 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (198 : State) label t gain ->
      gain + graphPotential t <= graphPotential (198 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0198 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0198] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (333 : State) <= graphPotential (198 : State)
    decide
  ·
    simp [graphSmokeNext_s0198, h_l0012] at h

theorem transition_ok_s0198 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (198 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (198 : State) := by
  intro h
  change graphSmokeNext_s0198 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0198] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (333 : State) <= graphPotential (198 : State)
      decide
  ·
    simp [graphSmokeNext_s0198, h_l0012] at h

theorem valid_s0199 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (199 : State) label t gain ->
      gain + graphPotential t <= graphPotential (199 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0199 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0199] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (334 : State) <= graphPotential (199 : State)
    decide
  ·
    simp [graphSmokeNext_s0199, h_l0012] at h

theorem transition_ok_s0199 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (199 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (199 : State) := by
  intro h
  change graphSmokeNext_s0199 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0199] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (334 : State) <= graphPotential (199 : State)
      decide
  ·
    simp [graphSmokeNext_s0199, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 192 <= s) (hhi : s < 200) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0192 h
  · exact valid_s0193 h
  · exact valid_s0194 h
  · exact valid_s0195 h
  · exact valid_s0196 h
  · exact valid_s0197 h
  · exact valid_s0198 h
  · exact valid_s0199 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 192 <= s) (hhi : s < 200) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0192 h
  · exact transition_ok_s0193 h
  · exact transition_ok_s0194 h
  · exact transition_ok_s0195 h
  · exact transition_ok_s0196 h
  · exact transition_ok_s0197 h
  · exact transition_ok_s0198 h
  · exact transition_ok_s0199 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard024
