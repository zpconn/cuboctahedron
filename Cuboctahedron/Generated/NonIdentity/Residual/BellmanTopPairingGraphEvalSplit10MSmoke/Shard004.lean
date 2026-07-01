import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard004

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [32, 40). -/
theorem valid_s0032 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (32 : State) label t gain ->
      gain + graphPotential t <= graphPotential (32 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0032 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0032] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (160 : State) <= graphPotential (32 : State)
    decide
  ·
    simp [graphSmokeNext_s0032, h_l0007] at h

theorem transition_ok_s0032 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (32 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (32 : State) := by
  intro h
  change graphSmokeNext_s0032 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0032] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (160 : State) <= graphPotential (32 : State)
      decide
  ·
    simp [graphSmokeNext_s0032, h_l0007] at h

theorem valid_s0033 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (33 : State) label t gain ->
      gain + graphPotential t <= graphPotential (33 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0033 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0033] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (162 : State) <= graphPotential (33 : State)
    decide
  ·
    simp [graphSmokeNext_s0033, h_l0007] at h

theorem transition_ok_s0033 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (33 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (33 : State) := by
  intro h
  change graphSmokeNext_s0033 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0033] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (162 : State) <= graphPotential (33 : State)
      decide
  ·
    simp [graphSmokeNext_s0033, h_l0007] at h

theorem valid_s0034 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (34 : State) label t gain ->
      gain + graphPotential t <= graphPotential (34 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0034 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0034] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (163 : State) <= graphPotential (34 : State)
    decide
  ·
    simp [graphSmokeNext_s0034, h_l0007] at h

theorem transition_ok_s0034 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (34 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (34 : State) := by
  intro h
  change graphSmokeNext_s0034 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0034] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (163 : State) <= graphPotential (34 : State)
      decide
  ·
    simp [graphSmokeNext_s0034, h_l0007] at h

theorem valid_s0035 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (35 : State) label t gain ->
      gain + graphPotential t <= graphPotential (35 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0035 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0035] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (115 : State) <= graphPotential (35 : State)
    decide
  ·
    simp [graphSmokeNext_s0035, h_l0012] at h

theorem transition_ok_s0035 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (35 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (35 : State) := by
  intro h
  change graphSmokeNext_s0035 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0035] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (115 : State) <= graphPotential (35 : State)
      decide
  ·
    simp [graphSmokeNext_s0035, h_l0012] at h

theorem valid_s0036 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (36 : State) label t gain ->
      gain + graphPotential t <= graphPotential (36 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0036 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0036] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (116 : State) <= graphPotential (36 : State)
    decide
  ·
    simp [graphSmokeNext_s0036, h_l0012] at h

theorem transition_ok_s0036 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (36 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (36 : State) := by
  intro h
  change graphSmokeNext_s0036 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0036] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (116 : State) <= graphPotential (36 : State)
      decide
  ·
    simp [graphSmokeNext_s0036, h_l0012] at h

theorem valid_s0037 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (37 : State) label t gain ->
      gain + graphPotential t <= graphPotential (37 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0037 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0037] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (118 : State) <= graphPotential (37 : State)
    decide
  ·
    simp [graphSmokeNext_s0037, h_l0012] at h

theorem transition_ok_s0037 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (37 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (37 : State) := by
  intro h
  change graphSmokeNext_s0037 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0037] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (118 : State) <= graphPotential (37 : State)
      decide
  ·
    simp [graphSmokeNext_s0037, h_l0012] at h

theorem valid_s0038 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (38 : State) label t gain ->
      gain + graphPotential t <= graphPotential (38 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0038 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0038] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (121 : State) <= graphPotential (38 : State)
    decide
  ·
    simp [graphSmokeNext_s0038, h_l0012] at h

theorem transition_ok_s0038 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (38 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (38 : State) := by
  intro h
  change graphSmokeNext_s0038 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0038] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (121 : State) <= graphPotential (38 : State)
      decide
  ·
    simp [graphSmokeNext_s0038, h_l0012] at h

theorem valid_s0039 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (39 : State) label t gain ->
      gain + graphPotential t <= graphPotential (39 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0039 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0039] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (125 : State) <= graphPotential (39 : State)
    decide
  ·
    simp [graphSmokeNext_s0039, h_l0012] at h

theorem transition_ok_s0039 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (39 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (39 : State) := by
  intro h
  change graphSmokeNext_s0039 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0039] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (125 : State) <= graphPotential (39 : State)
      decide
  ·
    simp [graphSmokeNext_s0039, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 32 <= s) (hhi : s < 40) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0032 h
  · exact valid_s0033 h
  · exact valid_s0034 h
  · exact valid_s0035 h
  · exact valid_s0036 h
  · exact valid_s0037 h
  · exact valid_s0038 h
  · exact valid_s0039 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 32 <= s) (hhi : s < 40) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0032 h
  · exact transition_ok_s0033 h
  · exact transition_ok_s0034 h
  · exact transition_ok_s0035 h
  · exact transition_ok_s0036 h
  · exact transition_ok_s0037 h
  · exact transition_ok_s0038 h
  · exact transition_ok_s0039 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard004
