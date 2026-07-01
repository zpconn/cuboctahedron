import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard117

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [936, 944). -/
theorem valid_s0936 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (936 : State) label t gain ->
      gain + graphPotential t <= graphPotential (936 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0936 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0936] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (83 : State) <= graphPotential (936 : State)
    decide
  ·
    simp [graphSmokeNext_s0936, h_l0005] at h

theorem transition_ok_s0936 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (936 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (936 : State) := by
  intro h
  change graphSmokeNext_s0936 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0936] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (83 : State) <= graphPotential (936 : State)
      decide
  ·
    simp [graphSmokeNext_s0936, h_l0005] at h

theorem valid_s0937 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (937 : State) label t gain ->
      gain + graphPotential t <= graphPotential (937 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0937 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0937] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (1 : State) <= graphPotential (937 : State)
    decide
  ·
    simp [graphSmokeNext_s0937, h_l0010] at h

theorem transition_ok_s0937 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (937 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (937 : State) := by
  intro h
  change graphSmokeNext_s0937 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0937] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (1 : State) <= graphPotential (937 : State)
      decide
  ·
    simp [graphSmokeNext_s0937, h_l0010] at h

theorem valid_s0938 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (938 : State) label t gain ->
      gain + graphPotential t <= graphPotential (938 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0938 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0938] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (4 : State) <= graphPotential (938 : State)
    decide
  ·
    simp [graphSmokeNext_s0938, h_l0010] at h

theorem transition_ok_s0938 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (938 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (938 : State) := by
  intro h
  change graphSmokeNext_s0938 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0938] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (4 : State) <= graphPotential (938 : State)
      decide
  ·
    simp [graphSmokeNext_s0938, h_l0010] at h

theorem valid_s0939 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (939 : State) label t gain ->
      gain + graphPotential t <= graphPotential (939 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0939 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0939] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (7 : State) <= graphPotential (939 : State)
    decide
  ·
    simp [graphSmokeNext_s0939, h_l0010] at h

theorem transition_ok_s0939 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (939 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (939 : State) := by
  intro h
  change graphSmokeNext_s0939 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0939] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (7 : State) <= graphPotential (939 : State)
      decide
  ·
    simp [graphSmokeNext_s0939, h_l0010] at h

theorem valid_s0940 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (940 : State) label t gain ->
      gain + graphPotential t <= graphPotential (940 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0940 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0940] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (27 : State) <= graphPotential (940 : State)
    decide
  ·
    simp [graphSmokeNext_s0940, h_l0010] at h

theorem transition_ok_s0940 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (940 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (940 : State) := by
  intro h
  change graphSmokeNext_s0940 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0940] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (27 : State) <= graphPotential (940 : State)
      decide
  ·
    simp [graphSmokeNext_s0940, h_l0010] at h

theorem valid_s0941 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (941 : State) label t gain ->
      gain + graphPotential t <= graphPotential (941 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0941 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0941] at h
    rcases h with ⟨rfl, rfl⟩
    change (-117 : Int) + graphPotential (35 : State) <= graphPotential (941 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0941] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (70 : State) <= graphPotential (941 : State)
      decide
    ·
      simp [graphSmokeNext_s0941, h_l0011, h_l0012] at h

theorem transition_ok_s0941 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (941 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (941 : State) := by
  intro h
  change graphSmokeNext_s0941 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0941] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-117 : Int) + graphPotential (35 : State) <= graphPotential (941 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0941] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (70 : State) <= graphPotential (941 : State)
        decide
    ·
      simp [graphSmokeNext_s0941, h_l0011, h_l0012] at h

theorem valid_s0942 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (942 : State) label t gain ->
      gain + graphPotential t <= graphPotential (942 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0942 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0942] at h
    rcases h with ⟨rfl, rfl⟩
    change (-117 : Int) + graphPotential (42 : State) <= graphPotential (942 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0942] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (76 : State) <= graphPotential (942 : State)
      decide
    ·
      simp [graphSmokeNext_s0942, h_l0011, h_l0012] at h

theorem transition_ok_s0942 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (942 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (942 : State) := by
  intro h
  change graphSmokeNext_s0942 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0942] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-117 : Int) + graphPotential (42 : State) <= graphPotential (942 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0942] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (76 : State) <= graphPotential (942 : State)
        decide
    ·
      simp [graphSmokeNext_s0942, h_l0011, h_l0012] at h

theorem valid_s0943 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (943 : State) label t gain ->
      gain + graphPotential t <= graphPotential (943 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0943 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0943] at h
    rcases h with ⟨rfl, rfl⟩
    change (-117 : Int) + graphPotential (45 : State) <= graphPotential (943 : State)
    decide
  ·
    simp [graphSmokeNext_s0943, h_l0011] at h

theorem transition_ok_s0943 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (943 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (943 : State) := by
  intro h
  change graphSmokeNext_s0943 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0943] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-117 : Int) + graphPotential (45 : State) <= graphPotential (943 : State)
      decide
  ·
    simp [graphSmokeNext_s0943, h_l0011] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 936 <= s) (hhi : s < 944) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0936 h
  · exact valid_s0937 h
  · exact valid_s0938 h
  · exact valid_s0939 h
  · exact valid_s0940 h
  · exact valid_s0941 h
  · exact valid_s0942 h
  · exact valid_s0943 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 936 <= s) (hhi : s < 944) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0936 h
  · exact transition_ok_s0937 h
  · exact transition_ok_s0938 h
  · exact transition_ok_s0939 h
  · exact transition_ok_s0940 h
  · exact transition_ok_s0941 h
  · exact transition_ok_s0942 h
  · exact transition_ok_s0943 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard117
