import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard013

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [104, 112). -/
theorem valid_s0104 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (104 : State) label t gain ->
      gain + graphPotential t <= graphPotential (104 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0104 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0104] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (238 : State) <= graphPotential (104 : State)
    decide
  ·
    simp [graphSmokeNext_s0104, h_l0007] at h

theorem transition_ok_s0104 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (104 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (104 : State) := by
  intro h
  change graphSmokeNext_s0104 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0104] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (238 : State) <= graphPotential (104 : State)
      decide
  ·
    simp [graphSmokeNext_s0104, h_l0007] at h

theorem valid_s0105 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (105 : State) label t gain ->
      gain + graphPotential t <= graphPotential (105 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0105 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0105] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (239 : State) <= graphPotential (105 : State)
    decide
  ·
    simp [graphSmokeNext_s0105, h_l0007] at h

theorem transition_ok_s0105 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (105 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (105 : State) := by
  intro h
  change graphSmokeNext_s0105 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0105] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (239 : State) <= graphPotential (105 : State)
      decide
  ·
    simp [graphSmokeNext_s0105, h_l0007] at h

theorem valid_s0106 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (106 : State) label t gain ->
      gain + graphPotential t <= graphPotential (106 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0106 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0106] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (240 : State) <= graphPotential (106 : State)
    decide
  ·
    simp [graphSmokeNext_s0106, h_l0007] at h

theorem transition_ok_s0106 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (106 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (106 : State) := by
  intro h
  change graphSmokeNext_s0106 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0106] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (240 : State) <= graphPotential (106 : State)
      decide
  ·
    simp [graphSmokeNext_s0106, h_l0007] at h

theorem valid_s0107 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (107 : State) label t gain ->
      gain + graphPotential t <= graphPotential (107 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0107 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0107] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (241 : State) <= graphPotential (107 : State)
    decide
  ·
    simp [graphSmokeNext_s0107, h_l0007] at h

theorem transition_ok_s0107 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (107 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (107 : State) := by
  intro h
  change graphSmokeNext_s0107 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0107] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (241 : State) <= graphPotential (107 : State)
      decide
  ·
    simp [graphSmokeNext_s0107, h_l0007] at h

theorem valid_s0108 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (108 : State) label t gain ->
      gain + graphPotential t <= graphPotential (108 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0108 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0108] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (243 : State) <= graphPotential (108 : State)
    decide
  ·
    simp [graphSmokeNext_s0108, h_l0007] at h

theorem transition_ok_s0108 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (108 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (108 : State) := by
  intro h
  change graphSmokeNext_s0108 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0108] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (243 : State) <= graphPotential (108 : State)
      decide
  ·
    simp [graphSmokeNext_s0108, h_l0007] at h

theorem valid_s0109 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (109 : State) label t gain ->
      gain + graphPotential t <= graphPotential (109 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0109 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0109] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (244 : State) <= graphPotential (109 : State)
    decide
  ·
    simp [graphSmokeNext_s0109, h_l0007] at h

theorem transition_ok_s0109 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (109 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (109 : State) := by
  intro h
  change graphSmokeNext_s0109 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0109] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (244 : State) <= graphPotential (109 : State)
      decide
  ·
    simp [graphSmokeNext_s0109, h_l0007] at h

theorem valid_s0110 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (110 : State) label t gain ->
      gain + graphPotential t <= graphPotential (110 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0110 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0110] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (246 : State) <= graphPotential (110 : State)
    decide
  ·
    simp [graphSmokeNext_s0110, h_l0004] at h

theorem transition_ok_s0110 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (110 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (110 : State) := by
  intro h
  change graphSmokeNext_s0110 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0110] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (246 : State) <= graphPotential (110 : State)
      decide
  ·
    simp [graphSmokeNext_s0110, h_l0004] at h

theorem valid_s0111 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (111 : State) label t gain ->
      gain + graphPotential t <= graphPotential (111 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0111 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0111] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (237 : State) <= graphPotential (111 : State)
    decide
  ·
    simp [graphSmokeNext_s0111, h_l0013] at h

theorem transition_ok_s0111 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (111 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (111 : State) := by
  intro h
  change graphSmokeNext_s0111 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0111] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (237 : State) <= graphPotential (111 : State)
      decide
  ·
    simp [graphSmokeNext_s0111, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 104 <= s) (hhi : s < 112) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0104 h
  · exact valid_s0105 h
  · exact valid_s0106 h
  · exact valid_s0107 h
  · exact valid_s0108 h
  · exact valid_s0109 h
  · exact valid_s0110 h
  · exact valid_s0111 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 104 <= s) (hhi : s < 112) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0104 h
  · exact transition_ok_s0105 h
  · exact transition_ok_s0106 h
  · exact transition_ok_s0107 h
  · exact transition_ok_s0108 h
  · exact transition_ok_s0109 h
  · exact transition_ok_s0110 h
  · exact transition_ok_s0111 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard013
