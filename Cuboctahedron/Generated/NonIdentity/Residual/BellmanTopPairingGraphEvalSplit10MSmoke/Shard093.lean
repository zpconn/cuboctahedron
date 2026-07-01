import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard093

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [744, 752). -/
theorem valid_s0744 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (744 : State) label t gain ->
      gain + graphPotential t <= graphPotential (744 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0744 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0744] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (824 : State) <= graphPotential (744 : State)
    decide
  ·
    simp [graphSmokeNext_s0744, h_l0004] at h

theorem transition_ok_s0744 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (744 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (744 : State) := by
  intro h
  change graphSmokeNext_s0744 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0744] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (824 : State) <= graphPotential (744 : State)
      decide
  ·
    simp [graphSmokeNext_s0744, h_l0004] at h

theorem valid_s0745 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (745 : State) label t gain ->
      gain + graphPotential t <= graphPotential (745 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0745 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0745] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (825 : State) <= graphPotential (745 : State)
    decide
  ·
    simp [graphSmokeNext_s0745, h_l0004] at h

theorem transition_ok_s0745 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (745 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (745 : State) := by
  intro h
  change graphSmokeNext_s0745 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0745] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (825 : State) <= graphPotential (745 : State)
      decide
  ·
    simp [graphSmokeNext_s0745, h_l0004] at h

theorem valid_s0746 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (746 : State) label t gain ->
      gain + graphPotential t <= graphPotential (746 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0746 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0746] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (826 : State) <= graphPotential (746 : State)
    decide
  ·
    simp [graphSmokeNext_s0746, h_l0004] at h

theorem transition_ok_s0746 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (746 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (746 : State) := by
  intro h
  change graphSmokeNext_s0746 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0746] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (826 : State) <= graphPotential (746 : State)
      decide
  ·
    simp [graphSmokeNext_s0746, h_l0004] at h

theorem valid_s0747 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (747 : State) label t gain ->
      gain + graphPotential t <= graphPotential (747 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0747 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0747] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (827 : State) <= graphPotential (747 : State)
    decide
  ·
    simp [graphSmokeNext_s0747, h_l0004] at h

theorem transition_ok_s0747 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (747 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (747 : State) := by
  intro h
  change graphSmokeNext_s0747 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0747] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (827 : State) <= graphPotential (747 : State)
      decide
  ·
    simp [graphSmokeNext_s0747, h_l0004] at h

theorem valid_s0748 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (748 : State) label t gain ->
      gain + graphPotential t <= graphPotential (748 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0748 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0748] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (830 : State) <= graphPotential (748 : State)
    decide
  ·
    simp [graphSmokeNext_s0748, h_l0004] at h

theorem transition_ok_s0748 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (748 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (748 : State) := by
  intro h
  change graphSmokeNext_s0748 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0748] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (830 : State) <= graphPotential (748 : State)
      decide
  ·
    simp [graphSmokeNext_s0748, h_l0004] at h

theorem valid_s0749 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (749 : State) label t gain ->
      gain + graphPotential t <= graphPotential (749 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0749 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0749] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (831 : State) <= graphPotential (749 : State)
    decide
  ·
    simp [graphSmokeNext_s0749, h_l0004] at h

theorem transition_ok_s0749 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (749 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (749 : State) := by
  intro h
  change graphSmokeNext_s0749 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0749] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (831 : State) <= graphPotential (749 : State)
      decide
  ·
    simp [graphSmokeNext_s0749, h_l0004] at h

theorem valid_s0750 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (750 : State) label t gain ->
      gain + graphPotential t <= graphPotential (750 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0750 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0750] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (798 : State) <= graphPotential (750 : State)
    decide
  ·
    simp [graphSmokeNext_s0750, h_l0012] at h

theorem transition_ok_s0750 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (750 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (750 : State) := by
  intro h
  change graphSmokeNext_s0750 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0750] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (798 : State) <= graphPotential (750 : State)
      decide
  ·
    simp [graphSmokeNext_s0750, h_l0012] at h

theorem valid_s0751 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (751 : State) label t gain ->
      gain + graphPotential t <= graphPotential (751 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0751 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0751] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (799 : State) <= graphPotential (751 : State)
    decide
  ·
    simp [graphSmokeNext_s0751, h_l0012] at h

theorem transition_ok_s0751 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (751 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (751 : State) := by
  intro h
  change graphSmokeNext_s0751 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0751] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (799 : State) <= graphPotential (751 : State)
      decide
  ·
    simp [graphSmokeNext_s0751, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 744 <= s) (hhi : s < 752) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0744 h
  · exact valid_s0745 h
  · exact valid_s0746 h
  · exact valid_s0747 h
  · exact valid_s0748 h
  · exact valid_s0749 h
  · exact valid_s0750 h
  · exact valid_s0751 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 744 <= s) (hhi : s < 752) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0744 h
  · exact transition_ok_s0745 h
  · exact transition_ok_s0746 h
  · exact transition_ok_s0747 h
  · exact transition_ok_s0748 h
  · exact transition_ok_s0749 h
  · exact transition_ok_s0750 h
  · exact transition_ok_s0751 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard093
