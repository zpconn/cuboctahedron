import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard119

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [952, 960). -/
theorem valid_s0952 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (952 : State) label t gain ->
      gain + graphPotential t <= graphPotential (952 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0952 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0952] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (96 : State) <= graphPotential (952 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0952] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (73 : State) <= graphPotential (952 : State)
      decide
    ·
      simp [graphSmokeNext_s0952, h_l0003, h_l0010] at h

theorem transition_ok_s0952 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (952 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (952 : State) := by
  intro h
  change graphSmokeNext_s0952 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0952] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (96 : State) <= graphPotential (952 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0952] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (73 : State) <= graphPotential (952 : State)
        decide
    ·
      simp [graphSmokeNext_s0952, h_l0003, h_l0010] at h

theorem valid_s0953 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (953 : State) label t gain ->
      gain + graphPotential t <= graphPotential (953 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0953 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0953] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (97 : State) <= graphPotential (953 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0953] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (74 : State) <= graphPotential (953 : State)
      decide
    ·
      simp [graphSmokeNext_s0953, h_l0003, h_l0010] at h

theorem transition_ok_s0953 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (953 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (953 : State) := by
  intro h
  change graphSmokeNext_s0953 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0953] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (97 : State) <= graphPotential (953 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0953] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (74 : State) <= graphPotential (953 : State)
        decide
    ·
      simp [graphSmokeNext_s0953, h_l0003, h_l0010] at h

theorem valid_s0954 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (954 : State) label t gain ->
      gain + graphPotential t <= graphPotential (954 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0954 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0954] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (99 : State) <= graphPotential (954 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0954] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (75 : State) <= graphPotential (954 : State)
      decide
    ·
      simp [graphSmokeNext_s0954, h_l0003, h_l0010] at h

theorem transition_ok_s0954 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (954 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (954 : State) := by
  intro h
  change graphSmokeNext_s0954 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0954] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (99 : State) <= graphPotential (954 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0954] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (75 : State) <= graphPotential (954 : State)
        decide
    ·
      simp [graphSmokeNext_s0954, h_l0003, h_l0010] at h

theorem valid_s0955 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (955 : State) label t gain ->
      gain + graphPotential t <= graphPotential (955 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0955 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0955] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (100 : State) <= graphPotential (955 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0955] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (82 : State) <= graphPotential (955 : State)
      decide
    ·
      simp [graphSmokeNext_s0955, h_l0003, h_l0010] at h

theorem transition_ok_s0955 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (955 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (955 : State) := by
  intro h
  change graphSmokeNext_s0955 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0955] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (100 : State) <= graphPotential (955 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0955] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (82 : State) <= graphPotential (955 : State)
        decide
    ·
      simp [graphSmokeNext_s0955, h_l0003, h_l0010] at h

theorem valid_s0956 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (956 : State) label t gain ->
      gain + graphPotential t <= graphPotential (956 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0956 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0956] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (86 : State) <= graphPotential (956 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0956] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (92 : State) <= graphPotential (956 : State)
      decide
    ·
      simp [graphSmokeNext_s0956, h_l0010, h_l0013] at h

theorem transition_ok_s0956 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (956 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (956 : State) := by
  intro h
  change graphSmokeNext_s0956 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0956] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (86 : State) <= graphPotential (956 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0956] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (92 : State) <= graphPotential (956 : State)
        decide
    ·
      simp [graphSmokeNext_s0956, h_l0010, h_l0013] at h

theorem valid_s0957 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (957 : State) label t gain ->
      gain + graphPotential t <= graphPotential (957 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0957 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0957] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (87 : State) <= graphPotential (957 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0957] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (98 : State) <= graphPotential (957 : State)
      decide
    ·
      simp [graphSmokeNext_s0957, h_l0010, h_l0013] at h

theorem transition_ok_s0957 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (957 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (957 : State) := by
  intro h
  change graphSmokeNext_s0957 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0957] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (87 : State) <= graphPotential (957 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0957] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (98 : State) <= graphPotential (957 : State)
        decide
    ·
      simp [graphSmokeNext_s0957, h_l0010, h_l0013] at h

theorem valid_s0958 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (958 : State) label t gain ->
      gain + graphPotential t <= graphPotential (958 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0958 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0958] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (102 : State) <= graphPotential (958 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0958] at h
      rcases h with ⟨rfl, rfl⟩
      change (-21 : Int) + graphPotential (88 : State) <= graphPotential (958 : State)
      decide
    ·
      simp [graphSmokeNext_s0958, h_l0000, h_l0010] at h

theorem transition_ok_s0958 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (958 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (958 : State) := by
  intro h
  change graphSmokeNext_s0958 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0958] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (102 : State) <= graphPotential (958 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0958] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-21 : Int) + graphPotential (88 : State) <= graphPotential (958 : State)
        decide
    ·
      simp [graphSmokeNext_s0958, h_l0000, h_l0010] at h

theorem valid_s0959 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (959 : State) label t gain ->
      gain + graphPotential t <= graphPotential (959 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0959 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0959] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (89 : State) <= graphPotential (959 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0959] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (101 : State) <= graphPotential (959 : State)
      decide
    ·
      simp [graphSmokeNext_s0959, h_l0010, h_l0012] at h

theorem transition_ok_s0959 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (959 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (959 : State) := by
  intro h
  change graphSmokeNext_s0959 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0959] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (89 : State) <= graphPotential (959 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0959] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (101 : State) <= graphPotential (959 : State)
        decide
    ·
      simp [graphSmokeNext_s0959, h_l0010, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 952 <= s) (hhi : s < 960) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0952 h
  · exact valid_s0953 h
  · exact valid_s0954 h
  · exact valid_s0955 h
  · exact valid_s0956 h
  · exact valid_s0957 h
  · exact valid_s0958 h
  · exact valid_s0959 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 952 <= s) (hhi : s < 960) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0952 h
  · exact transition_ok_s0953 h
  · exact transition_ok_s0954 h
  · exact transition_ok_s0955 h
  · exact transition_ok_s0956 h
  · exact transition_ok_s0957 h
  · exact transition_ok_s0958 h
  · exact transition_ok_s0959 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard119
