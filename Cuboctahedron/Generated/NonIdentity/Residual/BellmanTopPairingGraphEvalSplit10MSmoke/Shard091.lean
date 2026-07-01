import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard091

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [728, 736). -/
theorem valid_s0728 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (728 : State) label t gain ->
      gain + graphPotential t <= graphPotential (728 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0728 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0728] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (790 : State) <= graphPotential (728 : State)
    decide
  ·
    simp [graphSmokeNext_s0728, h_l0012] at h

theorem transition_ok_s0728 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (728 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (728 : State) := by
  intro h
  change graphSmokeNext_s0728 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0728] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (790 : State) <= graphPotential (728 : State)
      decide
  ·
    simp [graphSmokeNext_s0728, h_l0012] at h

theorem valid_s0729 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (729 : State) label t gain ->
      gain + graphPotential t <= graphPotential (729 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0729 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0729] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (795 : State) <= graphPotential (729 : State)
    decide
  ·
    simp [graphSmokeNext_s0729, h_l0000] at h

theorem transition_ok_s0729 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (729 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (729 : State) := by
  intro h
  change graphSmokeNext_s0729 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0729] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (795 : State) <= graphPotential (729 : State)
      decide
  ·
    simp [graphSmokeNext_s0729, h_l0000] at h

theorem valid_s0730 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (730 : State) label t gain ->
      gain + graphPotential t <= graphPotential (730 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0730 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0730] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (796 : State) <= graphPotential (730 : State)
    decide
  ·
    simp [graphSmokeNext_s0730, h_l0000] at h

theorem transition_ok_s0730 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (730 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (730 : State) := by
  intro h
  change graphSmokeNext_s0730 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0730] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (796 : State) <= graphPotential (730 : State)
      decide
  ·
    simp [graphSmokeNext_s0730, h_l0000] at h

theorem valid_s0731 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (731 : State) label t gain ->
      gain + graphPotential t <= graphPotential (731 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0731 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0731] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (797 : State) <= graphPotential (731 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0731] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (794 : State) <= graphPotential (731 : State)
      decide
    ·
      simp [graphSmokeNext_s0731, h_l0006, h_l0013] at h

theorem transition_ok_s0731 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (731 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (731 : State) := by
  intro h
  change graphSmokeNext_s0731 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0731] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (797 : State) <= graphPotential (731 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0731] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (90 : Int) + graphPotential (794 : State) <= graphPotential (731 : State)
        decide
    ·
      simp [graphSmokeNext_s0731, h_l0006, h_l0013] at h

theorem valid_s0732 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (732 : State) label t gain ->
      gain + graphPotential t <= graphPotential (732 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0732 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0732] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (800 : State) <= graphPotential (732 : State)
    decide
  ·
    simp [graphSmokeNext_s0732, h_l0006] at h

theorem transition_ok_s0732 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (732 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (732 : State) := by
  intro h
  change graphSmokeNext_s0732 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0732] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (800 : State) <= graphPotential (732 : State)
      decide
  ·
    simp [graphSmokeNext_s0732, h_l0006] at h

theorem valid_s0733 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (733 : State) label t gain ->
      gain + graphPotential t <= graphPotential (733 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0733 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0733] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (804 : State) <= graphPotential (733 : State)
    decide
  ·
    simp [graphSmokeNext_s0733, h_l0006] at h

theorem transition_ok_s0733 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (733 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (733 : State) := by
  intro h
  change graphSmokeNext_s0733 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0733] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (804 : State) <= graphPotential (733 : State)
      decide
  ·
    simp [graphSmokeNext_s0733, h_l0006] at h

theorem valid_s0734 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (734 : State) label t gain ->
      gain + graphPotential t <= graphPotential (734 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0734 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0734] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (805 : State) <= graphPotential (734 : State)
    decide
  ·
    simp [graphSmokeNext_s0734, h_l0006] at h

theorem transition_ok_s0734 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (734 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (734 : State) := by
  intro h
  change graphSmokeNext_s0734 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0734] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (805 : State) <= graphPotential (734 : State)
      decide
  ·
    simp [graphSmokeNext_s0734, h_l0006] at h

theorem valid_s0735 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (735 : State) label t gain ->
      gain + graphPotential t <= graphPotential (735 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0735 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0735] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (807 : State) <= graphPotential (735 : State)
    decide
  ·
    simp [graphSmokeNext_s0735, h_l0006] at h

theorem transition_ok_s0735 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (735 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (735 : State) := by
  intro h
  change graphSmokeNext_s0735 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0735] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (807 : State) <= graphPotential (735 : State)
      decide
  ·
    simp [graphSmokeNext_s0735, h_l0006] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 728 <= s) (hhi : s < 736) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0728 h
  · exact valid_s0729 h
  · exact valid_s0730 h
  · exact valid_s0731 h
  · exact valid_s0732 h
  · exact valid_s0733 h
  · exact valid_s0734 h
  · exact valid_s0735 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 728 <= s) (hhi : s < 736) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0728 h
  · exact transition_ok_s0729 h
  · exact transition_ok_s0730 h
  · exact transition_ok_s0731 h
  · exact transition_ok_s0732 h
  · exact transition_ok_s0733 h
  · exact transition_ok_s0734 h
  · exact transition_ok_s0735 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard091
