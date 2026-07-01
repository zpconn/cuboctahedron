import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard088

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [704, 712). -/
theorem valid_s0704 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (704 : State) label t gain ->
      gain + graphPotential t <= graphPotential (704 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0704 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0704] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (770 : State) <= graphPotential (704 : State)
    decide
  ·
    simp [graphSmokeNext_s0704, h_l0004] at h

theorem transition_ok_s0704 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (704 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (704 : State) := by
  intro h
  change graphSmokeNext_s0704 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0704] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (770 : State) <= graphPotential (704 : State)
      decide
  ·
    simp [graphSmokeNext_s0704, h_l0004] at h

theorem valid_s0705 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (705 : State) label t gain ->
      gain + graphPotential t <= graphPotential (705 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0705 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0705] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (771 : State) <= graphPotential (705 : State)
    decide
  ·
    simp [graphSmokeNext_s0705, h_l0004] at h

theorem transition_ok_s0705 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (705 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (705 : State) := by
  intro h
  change graphSmokeNext_s0705 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0705] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (771 : State) <= graphPotential (705 : State)
      decide
  ·
    simp [graphSmokeNext_s0705, h_l0004] at h

theorem valid_s0706 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (706 : State) label t gain ->
      gain + graphPotential t <= graphPotential (706 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0706 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0706] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (772 : State) <= graphPotential (706 : State)
    decide
  ·
    simp [graphSmokeNext_s0706, h_l0004] at h

theorem transition_ok_s0706 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (706 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (706 : State) := by
  intro h
  change graphSmokeNext_s0706 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0706] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (772 : State) <= graphPotential (706 : State)
      decide
  ·
    simp [graphSmokeNext_s0706, h_l0004] at h

theorem valid_s0707 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (707 : State) label t gain ->
      gain + graphPotential t <= graphPotential (707 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0707 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0707] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (743 : State) <= graphPotential (707 : State)
    decide
  ·
    simp [graphSmokeNext_s0707, h_l0010] at h

theorem transition_ok_s0707 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (707 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (707 : State) := by
  intro h
  change graphSmokeNext_s0707 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0707] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (743 : State) <= graphPotential (707 : State)
      decide
  ·
    simp [graphSmokeNext_s0707, h_l0010] at h

theorem valid_s0708 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (708 : State) label t gain ->
      gain + graphPotential t <= graphPotential (708 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0708 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0708] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (744 : State) <= graphPotential (708 : State)
    decide
  ·
    simp [graphSmokeNext_s0708, h_l0010] at h

theorem transition_ok_s0708 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (708 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (708 : State) := by
  intro h
  change graphSmokeNext_s0708 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0708] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (744 : State) <= graphPotential (708 : State)
      decide
  ·
    simp [graphSmokeNext_s0708, h_l0010] at h

theorem valid_s0709 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (709 : State) label t gain ->
      gain + graphPotential t <= graphPotential (709 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0709 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0709] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (746 : State) <= graphPotential (709 : State)
    decide
  ·
    simp [graphSmokeNext_s0709, h_l0010] at h

theorem transition_ok_s0709 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (709 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (709 : State) := by
  intro h
  change graphSmokeNext_s0709 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0709] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (746 : State) <= graphPotential (709 : State)
      decide
  ·
    simp [graphSmokeNext_s0709, h_l0010] at h

theorem valid_s0710 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (710 : State) label t gain ->
      gain + graphPotential t <= graphPotential (710 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0710 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0710] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (750 : State) <= graphPotential (710 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0710] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (763 : State) <= graphPotential (710 : State)
      decide
    ·
      simp [graphSmokeNext_s0710, h_l0010, h_l0012] at h

theorem transition_ok_s0710 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (710 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (710 : State) := by
  intro h
  change graphSmokeNext_s0710 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0710] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (750 : State) <= graphPotential (710 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0710] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (763 : State) <= graphPotential (710 : State)
        decide
    ·
      simp [graphSmokeNext_s0710, h_l0010, h_l0012] at h

theorem valid_s0711 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (711 : State) label t gain ->
      gain + graphPotential t <= graphPotential (711 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0711 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0711] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (752 : State) <= graphPotential (711 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0711] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (765 : State) <= graphPotential (711 : State)
      decide
    ·
      simp [graphSmokeNext_s0711, h_l0010, h_l0012] at h

theorem transition_ok_s0711 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (711 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (711 : State) := by
  intro h
  change graphSmokeNext_s0711 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0711] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (752 : State) <= graphPotential (711 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0711] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (765 : State) <= graphPotential (711 : State)
        decide
    ·
      simp [graphSmokeNext_s0711, h_l0010, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 704 <= s) (hhi : s < 712) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0704 h
  · exact valid_s0705 h
  · exact valid_s0706 h
  · exact valid_s0707 h
  · exact valid_s0708 h
  · exact valid_s0709 h
  · exact valid_s0710 h
  · exact valid_s0711 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 704 <= s) (hhi : s < 712) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0704 h
  · exact transition_ok_s0705 h
  · exact transition_ok_s0706 h
  · exact transition_ok_s0707 h
  · exact transition_ok_s0708 h
  · exact transition_ok_s0709 h
  · exact transition_ok_s0710 h
  · exact transition_ok_s0711 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard088
