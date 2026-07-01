import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard094

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [752, 760). -/
theorem valid_s0752 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (752 : State) label t gain ->
      gain + graphPotential t <= graphPotential (752 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0752 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0752] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (801 : State) <= graphPotential (752 : State)
    decide
  ·
    simp [graphSmokeNext_s0752, h_l0012] at h

theorem transition_ok_s0752 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (752 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (752 : State) := by
  intro h
  change graphSmokeNext_s0752 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0752] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (801 : State) <= graphPotential (752 : State)
      decide
  ·
    simp [graphSmokeNext_s0752, h_l0012] at h

theorem valid_s0753 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (753 : State) label t gain ->
      gain + graphPotential t <= graphPotential (753 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0753 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0753] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (803 : State) <= graphPotential (753 : State)
    decide
  ·
    simp [graphSmokeNext_s0753, h_l0012] at h

theorem transition_ok_s0753 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (753 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (753 : State) := by
  intro h
  change graphSmokeNext_s0753 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0753] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (803 : State) <= graphPotential (753 : State)
      decide
  ·
    simp [graphSmokeNext_s0753, h_l0012] at h

theorem valid_s0754 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (754 : State) label t gain ->
      gain + graphPotential t <= graphPotential (754 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0754 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0754] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (806 : State) <= graphPotential (754 : State)
    decide
  ·
    simp [graphSmokeNext_s0754, h_l0012] at h

theorem transition_ok_s0754 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (754 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (754 : State) := by
  intro h
  change graphSmokeNext_s0754 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0754] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (806 : State) <= graphPotential (754 : State)
      decide
  ·
    simp [graphSmokeNext_s0754, h_l0012] at h

theorem valid_s0755 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (755 : State) label t gain ->
      gain + graphPotential t <= graphPotential (755 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0755 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0755] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (809 : State) <= graphPotential (755 : State)
    decide
  ·
    simp [graphSmokeNext_s0755, h_l0012] at h

theorem transition_ok_s0755 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (755 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (755 : State) := by
  intro h
  change graphSmokeNext_s0755 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0755] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (809 : State) <= graphPotential (755 : State)
      decide
  ·
    simp [graphSmokeNext_s0755, h_l0012] at h

theorem valid_s0756 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (756 : State) label t gain ->
      gain + graphPotential t <= graphPotential (756 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0756 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0756] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (833 : State) <= graphPotential (756 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0756] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (818 : State) <= graphPotential (756 : State)
      decide
    ·
      simp [graphSmokeNext_s0756, h_l0002, h_l0013] at h

theorem transition_ok_s0756 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (756 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (756 : State) := by
  intro h
  change graphSmokeNext_s0756 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0756] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (833 : State) <= graphPotential (756 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0756] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (90 : Int) + graphPotential (818 : State) <= graphPotential (756 : State)
        decide
    ·
      simp [graphSmokeNext_s0756, h_l0002, h_l0013] at h

theorem valid_s0757 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (757 : State) label t gain ->
      gain + graphPotential t <= graphPotential (757 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0757 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0757] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (834 : State) <= graphPotential (757 : State)
    decide
  ·
    simp [graphSmokeNext_s0757, h_l0002] at h

theorem transition_ok_s0757 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (757 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (757 : State) := by
  intro h
  change graphSmokeNext_s0757 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0757] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (834 : State) <= graphPotential (757 : State)
      decide
  ·
    simp [graphSmokeNext_s0757, h_l0002] at h

theorem valid_s0758 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (758 : State) label t gain ->
      gain + graphPotential t <= graphPotential (758 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0758 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0758] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (835 : State) <= graphPotential (758 : State)
    decide
  ·
    simp [graphSmokeNext_s0758, h_l0002] at h

theorem transition_ok_s0758 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (758 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (758 : State) := by
  intro h
  change graphSmokeNext_s0758 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0758] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (835 : State) <= graphPotential (758 : State)
      decide
  ·
    simp [graphSmokeNext_s0758, h_l0002] at h

theorem valid_s0759 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (759 : State) label t gain ->
      gain + graphPotential t <= graphPotential (759 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0759 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0759] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (836 : State) <= graphPotential (759 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0759] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (820 : State) <= graphPotential (759 : State)
      decide
    ·
      simp [graphSmokeNext_s0759, h_l0002, h_l0013] at h

theorem transition_ok_s0759 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (759 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (759 : State) := by
  intro h
  change graphSmokeNext_s0759 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0759] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (836 : State) <= graphPotential (759 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0759] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (90 : Int) + graphPotential (820 : State) <= graphPotential (759 : State)
        decide
    ·
      simp [graphSmokeNext_s0759, h_l0002, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 752 <= s) (hhi : s < 760) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0752 h
  · exact valid_s0753 h
  · exact valid_s0754 h
  · exact valid_s0755 h
  · exact valid_s0756 h
  · exact valid_s0757 h
  · exact valid_s0758 h
  · exact valid_s0759 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 752 <= s) (hhi : s < 760) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0752 h
  · exact transition_ok_s0753 h
  · exact transition_ok_s0754 h
  · exact transition_ok_s0755 h
  · exact transition_ok_s0756 h
  · exact transition_ok_s0757 h
  · exact transition_ok_s0758 h
  · exact transition_ok_s0759 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard094
