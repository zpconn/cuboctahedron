import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard109

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [872, 880). -/
theorem valid_s0872 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (872 : State) label t gain ->
      gain + graphPotential t <= graphPotential (872 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0872 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0872] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (966 : State) <= graphPotential (872 : State)
    decide
  ·
    simp [graphSmokeNext_s0872, h_l0002] at h

theorem transition_ok_s0872 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (872 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (872 : State) := by
  intro h
  change graphSmokeNext_s0872 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0872] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (966 : State) <= graphPotential (872 : State)
      decide
  ·
    simp [graphSmokeNext_s0872, h_l0002] at h

theorem valid_s0873 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (873 : State) label t gain ->
      gain + graphPotential t <= graphPotential (873 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0873 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0873] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (967 : State) <= graphPotential (873 : State)
    decide
  ·
    simp [graphSmokeNext_s0873, h_l0002] at h

theorem transition_ok_s0873 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (873 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (873 : State) := by
  intro h
  change graphSmokeNext_s0873 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0873] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (967 : State) <= graphPotential (873 : State)
      decide
  ·
    simp [graphSmokeNext_s0873, h_l0002] at h

theorem valid_s0874 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (874 : State) label t gain ->
      gain + graphPotential t <= graphPotential (874 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0874 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0874] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (960 : State) <= graphPotential (874 : State)
    decide
  ·
    simp [graphSmokeNext_s0874, h_l0012] at h

theorem transition_ok_s0874 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (874 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (874 : State) := by
  intro h
  change graphSmokeNext_s0874 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0874] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (960 : State) <= graphPotential (874 : State)
      decide
  ·
    simp [graphSmokeNext_s0874, h_l0012] at h

theorem valid_s0875 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (875 : State) label t gain ->
      gain + graphPotential t <= graphPotential (875 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0875 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0875] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (969 : State) <= graphPotential (875 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0875] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (968 : State) <= graphPotential (875 : State)
      decide
    ·
      simp [graphSmokeNext_s0875, h_l0007, h_l0013] at h

theorem transition_ok_s0875 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (875 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (875 : State) := by
  intro h
  change graphSmokeNext_s0875 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0875] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (969 : State) <= graphPotential (875 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0875] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (968 : State) <= graphPotential (875 : State)
        decide
    ·
      simp [graphSmokeNext_s0875, h_l0007, h_l0013] at h

theorem valid_s0876 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (876 : State) label t gain ->
      gain + graphPotential t <= graphPotential (876 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0876 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0876] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (3 : State) <= graphPotential (876 : State)
    decide
  ·
    simp [graphSmokeNext_s0876, h_l0002] at h

theorem transition_ok_s0876 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (876 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (876 : State) := by
  intro h
  change graphSmokeNext_s0876 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0876] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (3 : State) <= graphPotential (876 : State)
      decide
  ·
    simp [graphSmokeNext_s0876, h_l0002] at h

theorem valid_s0877 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (877 : State) label t gain ->
      gain + graphPotential t <= graphPotential (877 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0877 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0877] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (5 : State) <= graphPotential (877 : State)
    decide
  ·
    simp [graphSmokeNext_s0877, h_l0002] at h

theorem transition_ok_s0877 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (877 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (877 : State) := by
  intro h
  change graphSmokeNext_s0877 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0877] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (5 : State) <= graphPotential (877 : State)
      decide
  ·
    simp [graphSmokeNext_s0877, h_l0002] at h

theorem valid_s0878 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (878 : State) label t gain ->
      gain + graphPotential t <= graphPotential (878 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0878 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0878] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (6 : State) <= graphPotential (878 : State)
    decide
  ·
    simp [graphSmokeNext_s0878, h_l0002] at h

theorem transition_ok_s0878 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (878 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (878 : State) := by
  intro h
  change graphSmokeNext_s0878 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0878] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (6 : State) <= graphPotential (878 : State)
      decide
  ·
    simp [graphSmokeNext_s0878, h_l0002] at h

theorem valid_s0879 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (879 : State) label t gain ->
      gain + graphPotential t <= graphPotential (879 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0879 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0879] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (8 : State) <= graphPotential (879 : State)
    decide
  ·
    simp [graphSmokeNext_s0879, h_l0002] at h

theorem transition_ok_s0879 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (879 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (879 : State) := by
  intro h
  change graphSmokeNext_s0879 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0879] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (8 : State) <= graphPotential (879 : State)
      decide
  ·
    simp [graphSmokeNext_s0879, h_l0002] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 872 <= s) (hhi : s < 880) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0872 h
  · exact valid_s0873 h
  · exact valid_s0874 h
  · exact valid_s0875 h
  · exact valid_s0876 h
  · exact valid_s0877 h
  · exact valid_s0878 h
  · exact valid_s0879 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 872 <= s) (hhi : s < 880) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0872 h
  · exact transition_ok_s0873 h
  · exact transition_ok_s0874 h
  · exact transition_ok_s0875 h
  · exact transition_ok_s0876 h
  · exact transition_ok_s0877 h
  · exact transition_ok_s0878 h
  · exact transition_ok_s0879 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard109
