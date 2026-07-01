import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard005

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [40, 48). -/
theorem valid_s0040 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (40 : State) label t gain ->
      gain + graphPotential t <= graphPotential (40 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0040 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0040] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (131 : State) <= graphPotential (40 : State)
    decide
  ·
    simp [graphSmokeNext_s0040, h_l0012] at h

theorem transition_ok_s0040 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (40 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (40 : State) := by
  intro h
  change graphSmokeNext_s0040 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0040] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (131 : State) <= graphPotential (40 : State)
      decide
  ·
    simp [graphSmokeNext_s0040, h_l0012] at h

theorem valid_s0041 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (41 : State) label t gain ->
      gain + graphPotential t <= graphPotential (41 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0041 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0041] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (137 : State) <= graphPotential (41 : State)
    decide
  ·
    simp [graphSmokeNext_s0041, h_l0012] at h

theorem transition_ok_s0041 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (41 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (41 : State) := by
  intro h
  change graphSmokeNext_s0041 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0041] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (137 : State) <= graphPotential (41 : State)
      decide
  ·
    simp [graphSmokeNext_s0041, h_l0012] at h

theorem valid_s0042 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (42 : State) label t gain ->
      gain + graphPotential t <= graphPotential (42 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0042 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0042] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (142 : State) <= graphPotential (42 : State)
    decide
  ·
    simp [graphSmokeNext_s0042, h_l0012] at h

theorem transition_ok_s0042 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (42 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (42 : State) := by
  intro h
  change graphSmokeNext_s0042 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0042] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (142 : State) <= graphPotential (42 : State)
      decide
  ·
    simp [graphSmokeNext_s0042, h_l0012] at h

theorem valid_s0043 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (43 : State) label t gain ->
      gain + graphPotential t <= graphPotential (43 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0043 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0043] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (149 : State) <= graphPotential (43 : State)
    decide
  ·
    simp [graphSmokeNext_s0043, h_l0012] at h

theorem transition_ok_s0043 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (43 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (43 : State) := by
  intro h
  change graphSmokeNext_s0043 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0043] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (149 : State) <= graphPotential (43 : State)
      decide
  ·
    simp [graphSmokeNext_s0043, h_l0012] at h

theorem valid_s0044 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (44 : State) label t gain ->
      gain + graphPotential t <= graphPotential (44 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0044 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0044] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (155 : State) <= graphPotential (44 : State)
    decide
  ·
    simp [graphSmokeNext_s0044, h_l0012] at h

theorem transition_ok_s0044 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (44 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (44 : State) := by
  intro h
  change graphSmokeNext_s0044 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0044] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (155 : State) <= graphPotential (44 : State)
      decide
  ·
    simp [graphSmokeNext_s0044, h_l0012] at h

theorem valid_s0045 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (45 : State) label t gain ->
      gain + graphPotential t <= graphPotential (45 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0045 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0045] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (167 : State) <= graphPotential (45 : State)
    decide
  ·
    simp [graphSmokeNext_s0045, h_l0002] at h

theorem transition_ok_s0045 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (45 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (45 : State) := by
  intro h
  change graphSmokeNext_s0045 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0045] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (167 : State) <= graphPotential (45 : State)
      decide
  ·
    simp [graphSmokeNext_s0045, h_l0002] at h

theorem valid_s0046 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (46 : State) label t gain ->
      gain + graphPotential t <= graphPotential (46 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0046 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0046] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (169 : State) <= graphPotential (46 : State)
    decide
  ·
    simp [graphSmokeNext_s0046, h_l0002] at h

theorem transition_ok_s0046 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (46 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (46 : State) := by
  intro h
  change graphSmokeNext_s0046 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0046] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (169 : State) <= graphPotential (46 : State)
      decide
  ·
    simp [graphSmokeNext_s0046, h_l0002] at h

theorem valid_s0047 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (47 : State) label t gain ->
      gain + graphPotential t <= graphPotential (47 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0047 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0047] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (171 : State) <= graphPotential (47 : State)
    decide
  ·
    simp [graphSmokeNext_s0047, h_l0002] at h

theorem transition_ok_s0047 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (47 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (47 : State) := by
  intro h
  change graphSmokeNext_s0047 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0047] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (171 : State) <= graphPotential (47 : State)
      decide
  ·
    simp [graphSmokeNext_s0047, h_l0002] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 40 <= s) (hhi : s < 48) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0040 h
  · exact valid_s0041 h
  · exact valid_s0042 h
  · exact valid_s0043 h
  · exact valid_s0044 h
  · exact valid_s0045 h
  · exact valid_s0046 h
  · exact valid_s0047 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 40 <= s) (hhi : s < 48) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0040 h
  · exact transition_ok_s0041 h
  · exact transition_ok_s0042 h
  · exact transition_ok_s0043 h
  · exact transition_ok_s0044 h
  · exact transition_ok_s0045 h
  · exact transition_ok_s0046 h
  · exact transition_ok_s0047 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard005
