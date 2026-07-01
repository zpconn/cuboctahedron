import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard010

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [80, 88). -/
theorem valid_s0080 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (80 : State) label t gain ->
      gain + graphPotential t <= graphPotential (80 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0080 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0080] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (211 : State) <= graphPotential (80 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0080] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (146 : State) <= graphPotential (80 : State)
      decide
    ·
      simp [graphSmokeNext_s0080, h_l0001, h_l0011] at h

theorem transition_ok_s0080 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (80 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (80 : State) := by
  intro h
  change graphSmokeNext_s0080 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0080] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (211 : State) <= graphPotential (80 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0080] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (146 : State) <= graphPotential (80 : State)
        decide
    ·
      simp [graphSmokeNext_s0080, h_l0001, h_l0011] at h

theorem valid_s0081 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (81 : State) label t gain ->
      gain + graphPotential t <= graphPotential (81 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0081 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0081] at h
    rcases h with ⟨rfl, rfl⟩
    change (-117 : Int) + graphPotential (147 : State) <= graphPotential (81 : State)
    decide
  ·
    simp [graphSmokeNext_s0081, h_l0011] at h

theorem transition_ok_s0081 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (81 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (81 : State) := by
  intro h
  change graphSmokeNext_s0081 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0081] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-117 : Int) + graphPotential (147 : State) <= graphPotential (81 : State)
      decide
  ·
    simp [graphSmokeNext_s0081, h_l0011] at h

theorem valid_s0082 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (82 : State) label t gain ->
      gain + graphPotential t <= graphPotential (82 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0082 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0082] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (212 : State) <= graphPotential (82 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0082] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (155 : State) <= graphPotential (82 : State)
      decide
    ·
      simp [graphSmokeNext_s0082, h_l0001, h_l0011] at h

theorem transition_ok_s0082 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (82 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (82 : State) := by
  intro h
  change graphSmokeNext_s0082 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0082] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (212 : State) <= graphPotential (82 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0082] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (155 : State) <= graphPotential (82 : State)
        decide
    ·
      simp [graphSmokeNext_s0082, h_l0001, h_l0011] at h

theorem valid_s0083 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (83 : State) label t gain ->
      gain + graphPotential t <= graphPotential (83 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0083 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0083] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (213 : State) <= graphPotential (83 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0083] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (161 : State) <= graphPotential (83 : State)
      decide
    ·
      simp [graphSmokeNext_s0083, h_l0001, h_l0011] at h

theorem transition_ok_s0083 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (83 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (83 : State) := by
  intro h
  change graphSmokeNext_s0083 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0083] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (213 : State) <= graphPotential (83 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0083] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (161 : State) <= graphPotential (83 : State)
        decide
    ·
      simp [graphSmokeNext_s0083, h_l0001, h_l0011] at h

theorem valid_s0084 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (84 : State) label t gain ->
      gain + graphPotential t <= graphPotential (84 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0084 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0084] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (226 : State) <= graphPotential (84 : State)
    decide
  ·
    simp [graphSmokeNext_s0084, h_l0002] at h

theorem transition_ok_s0084 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (84 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (84 : State) := by
  intro h
  change graphSmokeNext_s0084 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0084] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (226 : State) <= graphPotential (84 : State)
      decide
  ·
    simp [graphSmokeNext_s0084, h_l0002] at h

theorem valid_s0085 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (85 : State) label t gain ->
      gain + graphPotential t <= graphPotential (85 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0085 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0085] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (228 : State) <= graphPotential (85 : State)
    decide
  ·
    simp [graphSmokeNext_s0085, h_l0002] at h

theorem transition_ok_s0085 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (85 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (85 : State) := by
  intro h
  change graphSmokeNext_s0085 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0085] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (228 : State) <= graphPotential (85 : State)
      decide
  ·
    simp [graphSmokeNext_s0085, h_l0002] at h

theorem valid_s0086 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (86 : State) label t gain ->
      gain + graphPotential t <= graphPotential (86 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0086 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0086] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (164 : State) <= graphPotential (86 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0086] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (214 : State) <= graphPotential (86 : State)
      decide
    ·
      simp [graphSmokeNext_s0086, h_l0011, h_l0013] at h

theorem transition_ok_s0086 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (86 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (86 : State) := by
  intro h
  change graphSmokeNext_s0086 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0086] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (164 : State) <= graphPotential (86 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0086] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (214 : State) <= graphPotential (86 : State)
        decide
    ·
      simp [graphSmokeNext_s0086, h_l0011, h_l0013] at h

theorem valid_s0087 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (87 : State) label t gain ->
      gain + graphPotential t <= graphPotential (87 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0087 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0087] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (168 : State) <= graphPotential (87 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0087] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (220 : State) <= graphPotential (87 : State)
      decide
    ·
      simp [graphSmokeNext_s0087, h_l0011, h_l0013] at h

theorem transition_ok_s0087 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (87 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (87 : State) := by
  intro h
  change graphSmokeNext_s0087 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0087] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (168 : State) <= graphPotential (87 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0087] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (220 : State) <= graphPotential (87 : State)
        decide
    ·
      simp [graphSmokeNext_s0087, h_l0011, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 80 <= s) (hhi : s < 88) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0080 h
  · exact valid_s0081 h
  · exact valid_s0082 h
  · exact valid_s0083 h
  · exact valid_s0084 h
  · exact valid_s0085 h
  · exact valid_s0086 h
  · exact valid_s0087 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 80 <= s) (hhi : s < 88) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0080 h
  · exact transition_ok_s0081 h
  · exact transition_ok_s0082 h
  · exact transition_ok_s0083 h
  · exact transition_ok_s0084 h
  · exact transition_ok_s0085 h
  · exact transition_ok_s0086 h
  · exact transition_ok_s0087 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard010
