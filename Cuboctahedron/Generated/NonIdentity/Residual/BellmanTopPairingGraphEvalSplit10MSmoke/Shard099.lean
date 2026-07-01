import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard099

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [792, 800). -/
theorem valid_s0792 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (792 : State) label t gain ->
      gain + graphPotential t <= graphPotential (792 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0792 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0792] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (870 : State) <= graphPotential (792 : State)
    decide
  ·
    simp [graphSmokeNext_s0792, h_l0001] at h

theorem transition_ok_s0792 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (792 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (792 : State) := by
  intro h
  change graphSmokeNext_s0792 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0792] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (870 : State) <= graphPotential (792 : State)
      decide
  ·
    simp [graphSmokeNext_s0792, h_l0001] at h

theorem valid_s0793 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (793 : State) label t gain ->
      gain + graphPotential t <= graphPotential (793 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0793 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0793] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (871 : State) <= graphPotential (793 : State)
    decide
  ·
    simp [graphSmokeNext_s0793, h_l0001] at h

theorem transition_ok_s0793 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (793 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (793 : State) := by
  intro h
  change graphSmokeNext_s0793 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0793] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (871 : State) <= graphPotential (793 : State)
      decide
  ·
    simp [graphSmokeNext_s0793, h_l0001] at h

theorem valid_s0794 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (794 : State) label t gain ->
      gain + graphPotential t <= graphPotential (794 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0794 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0794] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (867 : State) <= graphPotential (794 : State)
    decide
  ·
    simp [graphSmokeNext_s0794, h_l0012] at h

theorem transition_ok_s0794 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (794 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (794 : State) := by
  intro h
  change graphSmokeNext_s0794 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0794] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (90 : Int) + graphPotential (867 : State) <= graphPotential (794 : State)
      decide
  ·
    simp [graphSmokeNext_s0794, h_l0012] at h

theorem valid_s0795 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (795 : State) label t gain ->
      gain + graphPotential t <= graphPotential (795 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0795 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0795] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (872 : State) <= graphPotential (795 : State)
    decide
  ·
    simp [graphSmokeNext_s0795, h_l0007] at h

theorem transition_ok_s0795 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (795 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (795 : State) := by
  intro h
  change graphSmokeNext_s0795 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0795] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (872 : State) <= graphPotential (795 : State)
      decide
  ·
    simp [graphSmokeNext_s0795, h_l0007] at h

theorem valid_s0796 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (796 : State) label t gain ->
      gain + graphPotential t <= graphPotential (796 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0796 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0796] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (873 : State) <= graphPotential (796 : State)
    decide
  ·
    simp [graphSmokeNext_s0796, h_l0007] at h

theorem transition_ok_s0796 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (796 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (796 : State) := by
  intro h
  change graphSmokeNext_s0796 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0796] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (873 : State) <= graphPotential (796 : State)
      decide
  ·
    simp [graphSmokeNext_s0796, h_l0007] at h

theorem valid_s0797 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (797 : State) label t gain ->
      gain + graphPotential t <= graphPotential (797 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0797 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0797] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (875 : State) <= graphPotential (797 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0797] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (874 : State) <= graphPotential (797 : State)
      decide
    ·
      simp [graphSmokeNext_s0797, h_l0003, h_l0013] at h

theorem transition_ok_s0797 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (797 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (797 : State) := by
  intro h
  change graphSmokeNext_s0797 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0797] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (875 : State) <= graphPotential (797 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0797] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (874 : State) <= graphPotential (797 : State)
        decide
    ·
      simp [graphSmokeNext_s0797, h_l0003, h_l0013] at h

theorem valid_s0798 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (798 : State) label t gain ->
      gain + graphPotential t <= graphPotential (798 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0798 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0798] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (878 : State) <= graphPotential (798 : State)
    decide
  ·
    simp [graphSmokeNext_s0798, h_l0005] at h

theorem transition_ok_s0798 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (798 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (798 : State) := by
  intro h
  change graphSmokeNext_s0798 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0798] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (878 : State) <= graphPotential (798 : State)
      decide
  ·
    simp [graphSmokeNext_s0798, h_l0005] at h

theorem valid_s0799 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (799 : State) label t gain ->
      gain + graphPotential t <= graphPotential (799 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0799 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0799] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (880 : State) <= graphPotential (799 : State)
    decide
  ·
    simp [graphSmokeNext_s0799, h_l0005] at h

theorem transition_ok_s0799 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (799 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (799 : State) := by
  intro h
  change graphSmokeNext_s0799 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0799] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (880 : State) <= graphPotential (799 : State)
      decide
  ·
    simp [graphSmokeNext_s0799, h_l0005] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 792 <= s) (hhi : s < 800) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0792 h
  · exact valid_s0793 h
  · exact valid_s0794 h
  · exact valid_s0795 h
  · exact valid_s0796 h
  · exact valid_s0797 h
  · exact valid_s0798 h
  · exact valid_s0799 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 792 <= s) (hhi : s < 800) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0792 h
  · exact transition_ok_s0793 h
  · exact transition_ok_s0794 h
  · exact transition_ok_s0795 h
  · exact transition_ok_s0796 h
  · exact transition_ok_s0797 h
  · exact transition_ok_s0798 h
  · exact transition_ok_s0799 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard099
