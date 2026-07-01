import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard025

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [200, 208). -/
theorem valid_s0200 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (200 : State) label t gain ->
      gain + graphPotential t <= graphPotential (200 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0200 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0200] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (335 : State) <= graphPotential (200 : State)
    decide
  ·
    simp [graphSmokeNext_s0200, h_l0012] at h

theorem transition_ok_s0200 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (200 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (200 : State) := by
  intro h
  change graphSmokeNext_s0200 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0200] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (335 : State) <= graphPotential (200 : State)
      decide
  ·
    simp [graphSmokeNext_s0200, h_l0012] at h

theorem valid_s0201 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (201 : State) label t gain ->
      gain + graphPotential t <= graphPotential (201 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0201 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0201] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (336 : State) <= graphPotential (201 : State)
    decide
  ·
    simp [graphSmokeNext_s0201, h_l0012] at h

theorem transition_ok_s0201 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (201 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (201 : State) := by
  intro h
  change graphSmokeNext_s0201 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0201] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (336 : State) <= graphPotential (201 : State)
      decide
  ·
    simp [graphSmokeNext_s0201, h_l0012] at h

theorem valid_s0202 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (202 : State) label t gain ->
      gain + graphPotential t <= graphPotential (202 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0202 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0202] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (342 : State) <= graphPotential (202 : State)
    decide
  ·
    simp [graphSmokeNext_s0202, h_l0003] at h

theorem transition_ok_s0202 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (202 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (202 : State) := by
  intro h
  change graphSmokeNext_s0202 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0202] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (342 : State) <= graphPotential (202 : State)
      decide
  ·
    simp [graphSmokeNext_s0202, h_l0003] at h

theorem valid_s0203 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (203 : State) label t gain ->
      gain + graphPotential t <= graphPotential (203 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0203 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0203] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (346 : State) <= graphPotential (203 : State)
    decide
  ·
    simp [graphSmokeNext_s0203, h_l0003] at h

theorem transition_ok_s0203 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (203 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (203 : State) := by
  intro h
  change graphSmokeNext_s0203 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0203] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (346 : State) <= graphPotential (203 : State)
      decide
  ·
    simp [graphSmokeNext_s0203, h_l0003] at h

theorem valid_s0204 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (204 : State) label t gain ->
      gain + graphPotential t <= graphPotential (204 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0204 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0204] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (348 : State) <= graphPotential (204 : State)
    decide
  ·
    simp [graphSmokeNext_s0204, h_l0003] at h

theorem transition_ok_s0204 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (204 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (204 : State) := by
  intro h
  change graphSmokeNext_s0204 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0204] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (348 : State) <= graphPotential (204 : State)
      decide
  ·
    simp [graphSmokeNext_s0204, h_l0003] at h

theorem valid_s0205 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (205 : State) label t gain ->
      gain + graphPotential t <= graphPotential (205 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0205 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0205] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (349 : State) <= graphPotential (205 : State)
    decide
  ·
    simp [graphSmokeNext_s0205, h_l0003] at h

theorem transition_ok_s0205 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (205 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (205 : State) := by
  intro h
  change graphSmokeNext_s0205 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0205] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (349 : State) <= graphPotential (205 : State)
      decide
  ·
    simp [graphSmokeNext_s0205, h_l0003] at h

theorem valid_s0206 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (206 : State) label t gain ->
      gain + graphPotential t <= graphPotential (206 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0206 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0206] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (351 : State) <= graphPotential (206 : State)
    decide
  ·
    simp [graphSmokeNext_s0206, h_l0003] at h

theorem transition_ok_s0206 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (206 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (206 : State) := by
  intro h
  change graphSmokeNext_s0206 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0206] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (351 : State) <= graphPotential (206 : State)
      decide
  ·
    simp [graphSmokeNext_s0206, h_l0003] at h

theorem valid_s0207 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (207 : State) label t gain ->
      gain + graphPotential t <= graphPotential (207 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0207 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0207] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (355 : State) <= graphPotential (207 : State)
    decide
  ·
    simp [graphSmokeNext_s0207, h_l0003] at h

theorem transition_ok_s0207 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (207 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (207 : State) := by
  intro h
  change graphSmokeNext_s0207 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0207] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (355 : State) <= graphPotential (207 : State)
      decide
  ·
    simp [graphSmokeNext_s0207, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 200 <= s) (hhi : s < 208) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0200 h
  · exact valid_s0201 h
  · exact valid_s0202 h
  · exact valid_s0203 h
  · exact valid_s0204 h
  · exact valid_s0205 h
  · exact valid_s0206 h
  · exact valid_s0207 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 200 <= s) (hhi : s < 208) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0200 h
  · exact transition_ok_s0201 h
  · exact transition_ok_s0202 h
  · exact transition_ok_s0203 h
  · exact transition_ok_s0204 h
  · exact transition_ok_s0205 h
  · exact transition_ok_s0206 h
  · exact transition_ok_s0207 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard025
