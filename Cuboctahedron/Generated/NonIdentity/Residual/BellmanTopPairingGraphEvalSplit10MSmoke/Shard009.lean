import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard009

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [72, 80). -/
theorem valid_s0072 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (72 : State) label t gain ->
      gain + graphPotential t <= graphPotential (72 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0072 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0072] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (204 : State) <= graphPotential (72 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0072] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (118 : State) <= graphPotential (72 : State)
      decide
    ·
      simp [graphSmokeNext_s0072, h_l0001, h_l0011] at h

theorem transition_ok_s0072 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (72 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (72 : State) := by
  intro h
  change graphSmokeNext_s0072 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0072] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (204 : State) <= graphPotential (72 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0072] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (118 : State) <= graphPotential (72 : State)
        decide
    ·
      simp [graphSmokeNext_s0072, h_l0001, h_l0011] at h

theorem valid_s0073 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (73 : State) label t gain ->
      gain + graphPotential t <= graphPotential (73 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0073 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0073] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (205 : State) <= graphPotential (73 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0073] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (121 : State) <= graphPotential (73 : State)
      decide
    ·
      simp [graphSmokeNext_s0073, h_l0001, h_l0011] at h

theorem transition_ok_s0073 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (73 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (73 : State) := by
  intro h
  change graphSmokeNext_s0073 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0073] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (205 : State) <= graphPotential (73 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0073] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (121 : State) <= graphPotential (73 : State)
        decide
    ·
      simp [graphSmokeNext_s0073, h_l0001, h_l0011] at h

theorem valid_s0074 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (74 : State) label t gain ->
      gain + graphPotential t <= graphPotential (74 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0074 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0074] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (206 : State) <= graphPotential (74 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0074] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (125 : State) <= graphPotential (74 : State)
      decide
    ·
      simp [graphSmokeNext_s0074, h_l0001, h_l0011] at h

theorem transition_ok_s0074 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (74 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (74 : State) := by
  intro h
  change graphSmokeNext_s0074 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0074] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (206 : State) <= graphPotential (74 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0074] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (125 : State) <= graphPotential (74 : State)
        decide
    ·
      simp [graphSmokeNext_s0074, h_l0001, h_l0011] at h

theorem valid_s0075 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (75 : State) label t gain ->
      gain + graphPotential t <= graphPotential (75 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0075 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0075] at h
    rcases h with ⟨rfl, rfl⟩
    change (-117 : Int) + graphPotential (137 : State) <= graphPotential (75 : State)
    decide
  ·
    simp [graphSmokeNext_s0075, h_l0011] at h

theorem transition_ok_s0075 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (75 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (75 : State) := by
  intro h
  change graphSmokeNext_s0075 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0075] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-117 : Int) + graphPotential (137 : State) <= graphPotential (75 : State)
      decide
  ·
    simp [graphSmokeNext_s0075, h_l0011] at h

theorem valid_s0076 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (76 : State) label t gain ->
      gain + graphPotential t <= graphPotential (76 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0076 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0076] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (207 : State) <= graphPotential (76 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0076] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (142 : State) <= graphPotential (76 : State)
      decide
    ·
      simp [graphSmokeNext_s0076, h_l0001, h_l0011] at h

theorem transition_ok_s0076 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (76 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (76 : State) := by
  intro h
  change graphSmokeNext_s0076 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0076] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (207 : State) <= graphPotential (76 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0076] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (142 : State) <= graphPotential (76 : State)
        decide
    ·
      simp [graphSmokeNext_s0076, h_l0001, h_l0011] at h

theorem valid_s0077 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (77 : State) label t gain ->
      gain + graphPotential t <= graphPotential (77 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0077 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0077] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (208 : State) <= graphPotential (77 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0077] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (143 : State) <= graphPotential (77 : State)
      decide
    ·
      simp [graphSmokeNext_s0077, h_l0001, h_l0011] at h

theorem transition_ok_s0077 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (77 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (77 : State) := by
  intro h
  change graphSmokeNext_s0077 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0077] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (208 : State) <= graphPotential (77 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0077] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (143 : State) <= graphPotential (77 : State)
        decide
    ·
      simp [graphSmokeNext_s0077, h_l0001, h_l0011] at h

theorem valid_s0078 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (78 : State) label t gain ->
      gain + graphPotential t <= graphPotential (78 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0078 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0078] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (209 : State) <= graphPotential (78 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0078] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (144 : State) <= graphPotential (78 : State)
      decide
    ·
      simp [graphSmokeNext_s0078, h_l0001, h_l0011] at h

theorem transition_ok_s0078 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (78 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (78 : State) := by
  intro h
  change graphSmokeNext_s0078 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0078] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (209 : State) <= graphPotential (78 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0078] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (144 : State) <= graphPotential (78 : State)
        decide
    ·
      simp [graphSmokeNext_s0078, h_l0001, h_l0011] at h

theorem valid_s0079 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (79 : State) label t gain ->
      gain + graphPotential t <= graphPotential (79 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0079 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0079] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (210 : State) <= graphPotential (79 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0079] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (145 : State) <= graphPotential (79 : State)
      decide
    ·
      simp [graphSmokeNext_s0079, h_l0001, h_l0011] at h

theorem transition_ok_s0079 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (79 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (79 : State) := by
  intro h
  change graphSmokeNext_s0079 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0079] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (210 : State) <= graphPotential (79 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0079] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (145 : State) <= graphPotential (79 : State)
        decide
    ·
      simp [graphSmokeNext_s0079, h_l0001, h_l0011] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 72 <= s) (hhi : s < 80) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0072 h
  · exact valid_s0073 h
  · exact valid_s0074 h
  · exact valid_s0075 h
  · exact valid_s0076 h
  · exact valid_s0077 h
  · exact valid_s0078 h
  · exact valid_s0079 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 72 <= s) (hhi : s < 80) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0072 h
  · exact transition_ok_s0073 h
  · exact transition_ok_s0074 h
  · exact transition_ok_s0075 h
  · exact transition_ok_s0076 h
  · exact transition_ok_s0077 h
  · exact transition_ok_s0078 h
  · exact transition_ok_s0079 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard009
