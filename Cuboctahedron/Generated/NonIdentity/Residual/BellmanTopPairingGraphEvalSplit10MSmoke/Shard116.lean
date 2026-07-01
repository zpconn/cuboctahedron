import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard116

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [928, 936). -/
theorem valid_s0928 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (928 : State) label t gain ->
      gain + graphPotential t <= graphPotential (928 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0928 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0928] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (67 : State) <= graphPotential (928 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0928] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (42 : State) <= graphPotential (928 : State)
      decide
    ·
      simp [graphSmokeNext_s0928, h_l0003, h_l0013] at h

theorem transition_ok_s0928 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (928 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (928 : State) := by
  intro h
  change graphSmokeNext_s0928 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0928] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (67 : State) <= graphPotential (928 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0928] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (42 : State) <= graphPotential (928 : State)
        decide
    ·
      simp [graphSmokeNext_s0928, h_l0003, h_l0013] at h

theorem valid_s0929 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (929 : State) label t gain ->
      gain + graphPotential t <= graphPotential (929 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0929 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0929] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (68 : State) <= graphPotential (929 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0929] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (43 : State) <= graphPotential (929 : State)
      decide
    ·
      simp [graphSmokeNext_s0929, h_l0003, h_l0013] at h

theorem transition_ok_s0929 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (929 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (929 : State) := by
  intro h
  change graphSmokeNext_s0929 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0929] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (68 : State) <= graphPotential (929 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0929] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (43 : State) <= graphPotential (929 : State)
        decide
    ·
      simp [graphSmokeNext_s0929, h_l0003, h_l0013] at h

theorem valid_s0930 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (930 : State) label t gain ->
      gain + graphPotential t <= graphPotential (930 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0930 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0930] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (69 : State) <= graphPotential (930 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0930] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (44 : State) <= graphPotential (930 : State)
      decide
    ·
      simp [graphSmokeNext_s0930, h_l0003, h_l0013] at h

theorem transition_ok_s0930 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (930 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (930 : State) := by
  intro h
  change graphSmokeNext_s0930 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0930] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (69 : State) <= graphPotential (930 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0930] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (44 : State) <= graphPotential (930 : State)
        decide
    ·
      simp [graphSmokeNext_s0930, h_l0003, h_l0013] at h

theorem valid_s0931 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (931 : State) label t gain ->
      gain + graphPotential t <= graphPotential (931 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0931 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0931] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (77 : State) <= graphPotential (931 : State)
    decide
  ·
    simp [graphSmokeNext_s0931, h_l0005] at h

theorem transition_ok_s0931 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (931 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (931 : State) := by
  intro h
  change graphSmokeNext_s0931 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0931] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (77 : State) <= graphPotential (931 : State)
      decide
  ·
    simp [graphSmokeNext_s0931, h_l0005] at h

theorem valid_s0932 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (932 : State) label t gain ->
      gain + graphPotential t <= graphPotential (932 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0932 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0932] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (78 : State) <= graphPotential (932 : State)
    decide
  ·
    simp [graphSmokeNext_s0932, h_l0005] at h

theorem transition_ok_s0932 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (932 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (932 : State) := by
  intro h
  change graphSmokeNext_s0932 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0932] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (78 : State) <= graphPotential (932 : State)
      decide
  ·
    simp [graphSmokeNext_s0932, h_l0005] at h

theorem valid_s0933 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (933 : State) label t gain ->
      gain + graphPotential t <= graphPotential (933 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0933 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0933] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (79 : State) <= graphPotential (933 : State)
    decide
  ·
    simp [graphSmokeNext_s0933, h_l0005] at h

theorem transition_ok_s0933 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (933 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (933 : State) := by
  intro h
  change graphSmokeNext_s0933 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0933] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (79 : State) <= graphPotential (933 : State)
      decide
  ·
    simp [graphSmokeNext_s0933, h_l0005] at h

theorem valid_s0934 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (934 : State) label t gain ->
      gain + graphPotential t <= graphPotential (934 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0934 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0934] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (80 : State) <= graphPotential (934 : State)
    decide
  ·
    simp [graphSmokeNext_s0934, h_l0005] at h

theorem transition_ok_s0934 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (934 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (934 : State) := by
  intro h
  change graphSmokeNext_s0934 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0934] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (80 : State) <= graphPotential (934 : State)
      decide
  ·
    simp [graphSmokeNext_s0934, h_l0005] at h

theorem valid_s0935 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (935 : State) label t gain ->
      gain + graphPotential t <= graphPotential (935 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0935 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0935] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (81 : State) <= graphPotential (935 : State)
    decide
  ·
    simp [graphSmokeNext_s0935, h_l0005] at h

theorem transition_ok_s0935 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (935 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (935 : State) := by
  intro h
  change graphSmokeNext_s0935 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0935] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (81 : State) <= graphPotential (935 : State)
      decide
  ·
    simp [graphSmokeNext_s0935, h_l0005] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 928 <= s) (hhi : s < 936) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0928 h
  · exact valid_s0929 h
  · exact valid_s0930 h
  · exact valid_s0931 h
  · exact valid_s0932 h
  · exact valid_s0933 h
  · exact valid_s0934 h
  · exact valid_s0935 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 928 <= s) (hhi : s < 936) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0928 h
  · exact transition_ok_s0929 h
  · exact transition_ok_s0930 h
  · exact transition_ok_s0931 h
  · exact transition_ok_s0932 h
  · exact transition_ok_s0933 h
  · exact transition_ok_s0934 h
  · exact transition_ok_s0935 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard116
