import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard113

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [904, 912). -/
theorem valid_s0904 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (904 : State) label t gain ->
      gain + graphPotential t <= graphPotential (904 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0904 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0904] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (48 : State) <= graphPotential (904 : State)
    decide
  ·
    simp [graphSmokeNext_s0904, h_l0006] at h

theorem transition_ok_s0904 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (904 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (904 : State) := by
  intro h
  change graphSmokeNext_s0904 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0904] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (48 : State) <= graphPotential (904 : State)
      decide
  ·
    simp [graphSmokeNext_s0904, h_l0006] at h

theorem valid_s0905 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (905 : State) label t gain ->
      gain + graphPotential t <= graphPotential (905 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0905 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0905] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (1 : State) <= graphPotential (905 : State)
    decide
  ·
    simp [graphSmokeNext_s0905, h_l0012] at h

theorem transition_ok_s0905 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (905 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (905 : State) := by
  intro h
  change graphSmokeNext_s0905 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0905] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (1 : State) <= graphPotential (905 : State)
      decide
  ·
    simp [graphSmokeNext_s0905, h_l0012] at h

theorem valid_s0906 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (906 : State) label t gain ->
      gain + graphPotential t <= graphPotential (906 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0906 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0906] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (2 : State) <= graphPotential (906 : State)
    decide
  ·
    simp [graphSmokeNext_s0906, h_l0012] at h

theorem transition_ok_s0906 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (906 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (906 : State) := by
  intro h
  change graphSmokeNext_s0906 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0906] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (2 : State) <= graphPotential (906 : State)
      decide
  ·
    simp [graphSmokeNext_s0906, h_l0012] at h

theorem valid_s0907 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (907 : State) label t gain ->
      gain + graphPotential t <= graphPotential (907 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0907 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0907] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (4 : State) <= graphPotential (907 : State)
    decide
  ·
    simp [graphSmokeNext_s0907, h_l0012] at h

theorem transition_ok_s0907 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (907 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (907 : State) := by
  intro h
  change graphSmokeNext_s0907 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0907] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (4 : State) <= graphPotential (907 : State)
      decide
  ·
    simp [graphSmokeNext_s0907, h_l0012] at h

theorem valid_s0908 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (908 : State) label t gain ->
      gain + graphPotential t <= graphPotential (908 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0908 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0908] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (7 : State) <= graphPotential (908 : State)
    decide
  ·
    simp [graphSmokeNext_s0908, h_l0012] at h

theorem transition_ok_s0908 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (908 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (908 : State) := by
  intro h
  change graphSmokeNext_s0908 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0908] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (7 : State) <= graphPotential (908 : State)
      decide
  ·
    simp [graphSmokeNext_s0908, h_l0012] at h

theorem valid_s0909 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (909 : State) label t gain ->
      gain + graphPotential t <= graphPotential (909 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0909 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0909] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (12 : State) <= graphPotential (909 : State)
    decide
  ·
    simp [graphSmokeNext_s0909, h_l0012] at h

theorem transition_ok_s0909 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (909 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (909 : State) := by
  intro h
  change graphSmokeNext_s0909 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0909] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (12 : State) <= graphPotential (909 : State)
      decide
  ·
    simp [graphSmokeNext_s0909, h_l0012] at h

theorem valid_s0910 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (910 : State) label t gain ->
      gain + graphPotential t <= graphPotential (910 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0910 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0910] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (17 : State) <= graphPotential (910 : State)
    decide
  ·
    simp [graphSmokeNext_s0910, h_l0012] at h

theorem transition_ok_s0910 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (910 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (910 : State) := by
  intro h
  change graphSmokeNext_s0910 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0910] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (17 : State) <= graphPotential (910 : State)
      decide
  ·
    simp [graphSmokeNext_s0910, h_l0012] at h

theorem valid_s0911 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (911 : State) label t gain ->
      gain + graphPotential t <= graphPotential (911 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0911 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0911] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (22 : State) <= graphPotential (911 : State)
    decide
  ·
    simp [graphSmokeNext_s0911, h_l0012] at h

theorem transition_ok_s0911 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (911 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (911 : State) := by
  intro h
  change graphSmokeNext_s0911 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0911] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (22 : State) <= graphPotential (911 : State)
      decide
  ·
    simp [graphSmokeNext_s0911, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 904 <= s) (hhi : s < 912) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0904 h
  · exact valid_s0905 h
  · exact valid_s0906 h
  · exact valid_s0907 h
  · exact valid_s0908 h
  · exact valid_s0909 h
  · exact valid_s0910 h
  · exact valid_s0911 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 904 <= s) (hhi : s < 912) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0904 h
  · exact transition_ok_s0905 h
  · exact transition_ok_s0906 h
  · exact transition_ok_s0907 h
  · exact transition_ok_s0908 h
  · exact transition_ok_s0909 h
  · exact transition_ok_s0910 h
  · exact transition_ok_s0911 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard113
