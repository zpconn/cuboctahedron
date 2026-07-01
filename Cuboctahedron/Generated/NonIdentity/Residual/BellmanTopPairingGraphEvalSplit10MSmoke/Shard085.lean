import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard085

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [680, 688). -/
theorem valid_s0680 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (680 : State) label t gain ->
      gain + graphPotential t <= graphPotential (680 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0680 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0680] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (731 : State) <= graphPotential (680 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0680] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (728 : State) <= graphPotential (680 : State)
      decide
    ·
      simp [graphSmokeNext_s0680, h_l0001, h_l0013] at h

theorem transition_ok_s0680 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (680 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (680 : State) := by
  intro h
  change graphSmokeNext_s0680 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0680] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (731 : State) <= graphPotential (680 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0680] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (728 : State) <= graphPotential (680 : State)
        decide
    ·
      simp [graphSmokeNext_s0680, h_l0001, h_l0013] at h

theorem valid_s0681 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (681 : State) label t gain ->
      gain + graphPotential t <= graphPotential (681 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0681 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0681] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (734 : State) <= graphPotential (681 : State)
    decide
  ·
    simp [graphSmokeNext_s0681, h_l0004] at h

theorem transition_ok_s0681 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (681 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (681 : State) := by
  intro h
  change graphSmokeNext_s0681 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0681] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (734 : State) <= graphPotential (681 : State)
      decide
  ·
    simp [graphSmokeNext_s0681, h_l0004] at h

theorem valid_s0682 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (682 : State) label t gain ->
      gain + graphPotential t <= graphPotential (682 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0682 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0682] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (738 : State) <= graphPotential (682 : State)
    decide
  ·
    simp [graphSmokeNext_s0682, h_l0004] at h

theorem transition_ok_s0682 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (682 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (682 : State) := by
  intro h
  change graphSmokeNext_s0682 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0682] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (738 : State) <= graphPotential (682 : State)
      decide
  ·
    simp [graphSmokeNext_s0682, h_l0004] at h

theorem valid_s0683 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (683 : State) label t gain ->
      gain + graphPotential t <= graphPotential (683 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0683 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0683] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (740 : State) <= graphPotential (683 : State)
    decide
  ·
    simp [graphSmokeNext_s0683, h_l0004] at h

theorem transition_ok_s0683 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (683 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (683 : State) := by
  intro h
  change graphSmokeNext_s0683 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0683] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (740 : State) <= graphPotential (683 : State)
      decide
  ·
    simp [graphSmokeNext_s0683, h_l0004] at h

theorem valid_s0684 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (684 : State) label t gain ->
      gain + graphPotential t <= graphPotential (684 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0684 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0684] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (741 : State) <= graphPotential (684 : State)
    decide
  ·
    simp [graphSmokeNext_s0684, h_l0007] at h

theorem transition_ok_s0684 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (684 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (684 : State) := by
  intro h
  change graphSmokeNext_s0684 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0684] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (741 : State) <= graphPotential (684 : State)
      decide
  ·
    simp [graphSmokeNext_s0684, h_l0007] at h

theorem valid_s0685 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (685 : State) label t gain ->
      gain + graphPotential t <= graphPotential (685 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0685 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0685] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (742 : State) <= graphPotential (685 : State)
    decide
  ·
    simp [graphSmokeNext_s0685, h_l0007] at h

theorem transition_ok_s0685 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (685 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (685 : State) := by
  intro h
  change graphSmokeNext_s0685 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0685] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (742 : State) <= graphPotential (685 : State)
      decide
  ·
    simp [graphSmokeNext_s0685, h_l0007] at h

theorem valid_s0686 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (686 : State) label t gain ->
      gain + graphPotential t <= graphPotential (686 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0686 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0686] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (732 : State) <= graphPotential (686 : State)
    decide
  ·
    simp [graphSmokeNext_s0686, h_l0012] at h

theorem transition_ok_s0686 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (686 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (686 : State) := by
  intro h
  change graphSmokeNext_s0686 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0686] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (732 : State) <= graphPotential (686 : State)
      decide
  ·
    simp [graphSmokeNext_s0686, h_l0012] at h

theorem valid_s0687 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (687 : State) label t gain ->
      gain + graphPotential t <= graphPotential (687 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0687 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0687] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (733 : State) <= graphPotential (687 : State)
    decide
  ·
    simp [graphSmokeNext_s0687, h_l0012] at h

theorem transition_ok_s0687 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (687 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (687 : State) := by
  intro h
  change graphSmokeNext_s0687 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0687] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (733 : State) <= graphPotential (687 : State)
      decide
  ·
    simp [graphSmokeNext_s0687, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 680 <= s) (hhi : s < 688) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0680 h
  · exact valid_s0681 h
  · exact valid_s0682 h
  · exact valid_s0683 h
  · exact valid_s0684 h
  · exact valid_s0685 h
  · exact valid_s0686 h
  · exact valid_s0687 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 680 <= s) (hhi : s < 688) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0680 h
  · exact transition_ok_s0681 h
  · exact transition_ok_s0682 h
  · exact transition_ok_s0683 h
  · exact transition_ok_s0684 h
  · exact transition_ok_s0685 h
  · exact transition_ok_s0686 h
  · exact transition_ok_s0687 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard085
