import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard103

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [824, 832). -/
theorem valid_s0824 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (824 : State) label t gain ->
      gain + graphPotential t <= graphPotential (824 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0824 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0824] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (915 : State) <= graphPotential (824 : State)
    decide
  ·
    simp [graphSmokeNext_s0824, h_l0003] at h

theorem transition_ok_s0824 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (824 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (824 : State) := by
  intro h
  change graphSmokeNext_s0824 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0824] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (915 : State) <= graphPotential (824 : State)
      decide
  ·
    simp [graphSmokeNext_s0824, h_l0003] at h

theorem valid_s0825 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (825 : State) label t gain ->
      gain + graphPotential t <= graphPotential (825 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0825 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0825] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (916 : State) <= graphPotential (825 : State)
    decide
  ·
    simp [graphSmokeNext_s0825, h_l0003] at h

theorem transition_ok_s0825 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (825 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (825 : State) := by
  intro h
  change graphSmokeNext_s0825 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0825] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (916 : State) <= graphPotential (825 : State)
      decide
  ·
    simp [graphSmokeNext_s0825, h_l0003] at h

theorem valid_s0826 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (826 : State) label t gain ->
      gain + graphPotential t <= graphPotential (826 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0826 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0826] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (917 : State) <= graphPotential (826 : State)
    decide
  ·
    simp [graphSmokeNext_s0826, h_l0003] at h

theorem transition_ok_s0826 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (826 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (826 : State) := by
  intro h
  change graphSmokeNext_s0826 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0826] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (917 : State) <= graphPotential (826 : State)
      decide
  ·
    simp [graphSmokeNext_s0826, h_l0003] at h

theorem valid_s0827 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (827 : State) label t gain ->
      gain + graphPotential t <= graphPotential (827 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0827 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0827] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (918 : State) <= graphPotential (827 : State)
    decide
  ·
    simp [graphSmokeNext_s0827, h_l0003] at h

theorem transition_ok_s0827 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (827 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (827 : State) := by
  intro h
  change graphSmokeNext_s0827 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0827] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (918 : State) <= graphPotential (827 : State)
      decide
  ·
    simp [graphSmokeNext_s0827, h_l0003] at h

theorem valid_s0828 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (828 : State) label t gain ->
      gain + graphPotential t <= graphPotential (828 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0828 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0828] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (891 : State) <= graphPotential (828 : State)
    decide
  ·
    simp [graphSmokeNext_s0828, h_l0012] at h

theorem transition_ok_s0828 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (828 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (828 : State) := by
  intro h
  change graphSmokeNext_s0828 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0828] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (90 : Int) + graphPotential (891 : State) <= graphPotential (828 : State)
      decide
  ·
    simp [graphSmokeNext_s0828, h_l0012] at h

theorem valid_s0829 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (829 : State) label t gain ->
      gain + graphPotential t <= graphPotential (829 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0829 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0829] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (895 : State) <= graphPotential (829 : State)
    decide
  ·
    simp [graphSmokeNext_s0829, h_l0012] at h

theorem transition_ok_s0829 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (829 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (829 : State) := by
  intro h
  change graphSmokeNext_s0829 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0829] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (90 : Int) + graphPotential (895 : State) <= graphPotential (829 : State)
      decide
  ·
    simp [graphSmokeNext_s0829, h_l0012] at h

theorem valid_s0830 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (830 : State) label t gain ->
      gain + graphPotential t <= graphPotential (830 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0830 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0830] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (919 : State) <= graphPotential (830 : State)
    decide
  ·
    simp [graphSmokeNext_s0830, h_l0003] at h

theorem transition_ok_s0830 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (830 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (830 : State) := by
  intro h
  change graphSmokeNext_s0830 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0830] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (919 : State) <= graphPotential (830 : State)
      decide
  ·
    simp [graphSmokeNext_s0830, h_l0003] at h

theorem valid_s0831 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (831 : State) label t gain ->
      gain + graphPotential t <= graphPotential (831 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0831 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0831] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (920 : State) <= graphPotential (831 : State)
    decide
  ·
    simp [graphSmokeNext_s0831, h_l0003] at h

theorem transition_ok_s0831 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (831 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (831 : State) := by
  intro h
  change graphSmokeNext_s0831 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0831] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (920 : State) <= graphPotential (831 : State)
      decide
  ·
    simp [graphSmokeNext_s0831, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 824 <= s) (hhi : s < 832) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0824 h
  · exact valid_s0825 h
  · exact valid_s0826 h
  · exact valid_s0827 h
  · exact valid_s0828 h
  · exact valid_s0829 h
  · exact valid_s0830 h
  · exact valid_s0831 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 824 <= s) (hhi : s < 832) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0824 h
  · exact transition_ok_s0825 h
  · exact transition_ok_s0826 h
  · exact transition_ok_s0827 h
  · exact transition_ok_s0828 h
  · exact transition_ok_s0829 h
  · exact transition_ok_s0830 h
  · exact transition_ok_s0831 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard103
