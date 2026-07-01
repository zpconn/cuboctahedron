import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard100

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [800, 808). -/
theorem valid_s0800 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (800 : State) label t gain ->
      gain + graphPotential t <= graphPotential (800 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0800 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0800] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (882 : State) <= graphPotential (800 : State)
    decide
  ·
    simp [graphSmokeNext_s0800, h_l0005] at h

theorem transition_ok_s0800 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (800 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (800 : State) := by
  intro h
  change graphSmokeNext_s0800 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0800] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (882 : State) <= graphPotential (800 : State)
      decide
  ·
    simp [graphSmokeNext_s0800, h_l0005] at h

theorem valid_s0801 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (801 : State) label t gain ->
      gain + graphPotential t <= graphPotential (801 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0801 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0801] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (884 : State) <= graphPotential (801 : State)
    decide
  ·
    simp [graphSmokeNext_s0801, h_l0005] at h

theorem transition_ok_s0801 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (801 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (801 : State) := by
  intro h
  change graphSmokeNext_s0801 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0801] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (884 : State) <= graphPotential (801 : State)
      decide
  ·
    simp [graphSmokeNext_s0801, h_l0005] at h

theorem valid_s0802 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (802 : State) label t gain ->
      gain + graphPotential t <= graphPotential (802 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0802 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0802] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (886 : State) <= graphPotential (802 : State)
    decide
  ·
    simp [graphSmokeNext_s0802, h_l0005] at h

theorem transition_ok_s0802 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (802 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (802 : State) := by
  intro h
  change graphSmokeNext_s0802 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0802] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (886 : State) <= graphPotential (802 : State)
      decide
  ·
    simp [graphSmokeNext_s0802, h_l0005] at h

theorem valid_s0803 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (803 : State) label t gain ->
      gain + graphPotential t <= graphPotential (803 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0803 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0803] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (888 : State) <= graphPotential (803 : State)
    decide
  ·
    simp [graphSmokeNext_s0803, h_l0005] at h

theorem transition_ok_s0803 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (803 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (803 : State) := by
  intro h
  change graphSmokeNext_s0803 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0803] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (888 : State) <= graphPotential (803 : State)
      decide
  ·
    simp [graphSmokeNext_s0803, h_l0005] at h

theorem valid_s0804 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (804 : State) label t gain ->
      gain + graphPotential t <= graphPotential (804 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0804 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0804] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (889 : State) <= graphPotential (804 : State)
    decide
  ·
    simp [graphSmokeNext_s0804, h_l0005] at h

theorem transition_ok_s0804 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (804 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (804 : State) := by
  intro h
  change graphSmokeNext_s0804 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0804] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (889 : State) <= graphPotential (804 : State)
      decide
  ·
    simp [graphSmokeNext_s0804, h_l0005] at h

theorem valid_s0805 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (805 : State) label t gain ->
      gain + graphPotential t <= graphPotential (805 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0805 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0805] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (890 : State) <= graphPotential (805 : State)
    decide
  ·
    simp [graphSmokeNext_s0805, h_l0005] at h

theorem transition_ok_s0805 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (805 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (805 : State) := by
  intro h
  change graphSmokeNext_s0805 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0805] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (890 : State) <= graphPotential (805 : State)
      decide
  ·
    simp [graphSmokeNext_s0805, h_l0005] at h

theorem valid_s0806 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (806 : State) label t gain ->
      gain + graphPotential t <= graphPotential (806 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0806 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0806] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (892 : State) <= graphPotential (806 : State)
    decide
  ·
    simp [graphSmokeNext_s0806, h_l0005] at h

theorem transition_ok_s0806 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (806 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (806 : State) := by
  intro h
  change graphSmokeNext_s0806 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0806] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (892 : State) <= graphPotential (806 : State)
      decide
  ·
    simp [graphSmokeNext_s0806, h_l0005] at h

theorem valid_s0807 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (807 : State) label t gain ->
      gain + graphPotential t <= graphPotential (807 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0807 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0807] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (893 : State) <= graphPotential (807 : State)
    decide
  ·
    simp [graphSmokeNext_s0807, h_l0005] at h

theorem transition_ok_s0807 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (807 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (807 : State) := by
  intro h
  change graphSmokeNext_s0807 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0807] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (893 : State) <= graphPotential (807 : State)
      decide
  ·
    simp [graphSmokeNext_s0807, h_l0005] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 800 <= s) (hhi : s < 808) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0800 h
  · exact valid_s0801 h
  · exact valid_s0802 h
  · exact valid_s0803 h
  · exact valid_s0804 h
  · exact valid_s0805 h
  · exact valid_s0806 h
  · exact valid_s0807 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 800 <= s) (hhi : s < 808) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0800 h
  · exact transition_ok_s0801 h
  · exact transition_ok_s0802 h
  · exact transition_ok_s0803 h
  · exact transition_ok_s0804 h
  · exact transition_ok_s0805 h
  · exact transition_ok_s0806 h
  · exact transition_ok_s0807 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard100
