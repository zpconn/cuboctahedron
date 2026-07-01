import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard000

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [0, 8). -/
theorem valid_s0000 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (0 : State) label t gain ->
      gain + graphPotential t <= graphPotential (0 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0000 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0000] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (608 : State) <= graphPotential (0 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0000] at h
      rcases h with ⟨rfl, rfl⟩
      change (-73 : Int) + graphPotential (609 : State) <= graphPotential (0 : State)
      decide
    ·
      simp [graphSmokeNext_s0000, h_l0008, h_l0010] at h

theorem transition_ok_s0000 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (0 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (0 : State) := by
  intro h
  change graphSmokeNext_s0000 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0000] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (608 : State) <= graphPotential (0 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0000] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-73 : Int) + graphPotential (609 : State) <= graphPotential (0 : State)
        decide
    ·
      simp [graphSmokeNext_s0000, h_l0008, h_l0010] at h

theorem valid_s0001 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (1 : State) label t gain ->
      gain + graphPotential t <= graphPotential (1 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0001 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0001] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (114 : State) <= graphPotential (1 : State)
    decide
  ·
    simp [graphSmokeNext_s0001, h_l0007] at h

theorem transition_ok_s0001 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (1 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (1 : State) := by
  intro h
  change graphSmokeNext_s0001 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0001] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (114 : State) <= graphPotential (1 : State)
      decide
  ·
    simp [graphSmokeNext_s0001, h_l0007] at h

theorem valid_s0002 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (2 : State) label t gain ->
      gain + graphPotential t <= graphPotential (2 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0002 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0002] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (117 : State) <= graphPotential (2 : State)
    decide
  ·
    simp [graphSmokeNext_s0002, h_l0007] at h

theorem transition_ok_s0002 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (2 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (2 : State) := by
  intro h
  change graphSmokeNext_s0002 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0002] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (117 : State) <= graphPotential (2 : State)
      decide
  ·
    simp [graphSmokeNext_s0002, h_l0007] at h

theorem valid_s0003 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (3 : State) label t gain ->
      gain + graphPotential t <= graphPotential (3 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0003 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0003] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (119 : State) <= graphPotential (3 : State)
    decide
  ·
    simp [graphSmokeNext_s0003, h_l0007] at h

theorem transition_ok_s0003 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (3 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (3 : State) := by
  intro h
  change graphSmokeNext_s0003 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0003] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (119 : State) <= graphPotential (3 : State)
      decide
  ·
    simp [graphSmokeNext_s0003, h_l0007] at h

theorem valid_s0004 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (4 : State) label t gain ->
      gain + graphPotential t <= graphPotential (4 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0004 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0004] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (120 : State) <= graphPotential (4 : State)
    decide
  ·
    simp [graphSmokeNext_s0004, h_l0007] at h

theorem transition_ok_s0004 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (4 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (4 : State) := by
  intro h
  change graphSmokeNext_s0004 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0004] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (120 : State) <= graphPotential (4 : State)
      decide
  ·
    simp [graphSmokeNext_s0004, h_l0007] at h

theorem valid_s0005 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (5 : State) label t gain ->
      gain + graphPotential t <= graphPotential (5 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0005 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0005] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (122 : State) <= graphPotential (5 : State)
    decide
  ·
    simp [graphSmokeNext_s0005, h_l0007] at h

theorem transition_ok_s0005 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (5 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (5 : State) := by
  intro h
  change graphSmokeNext_s0005 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0005] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (122 : State) <= graphPotential (5 : State)
      decide
  ·
    simp [graphSmokeNext_s0005, h_l0007] at h

theorem valid_s0006 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (6 : State) label t gain ->
      gain + graphPotential t <= graphPotential (6 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0006 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0006] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (123 : State) <= graphPotential (6 : State)
    decide
  ·
    simp [graphSmokeNext_s0006, h_l0007] at h

theorem transition_ok_s0006 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (6 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (6 : State) := by
  intro h
  change graphSmokeNext_s0006 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0006] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (123 : State) <= graphPotential (6 : State)
      decide
  ·
    simp [graphSmokeNext_s0006, h_l0007] at h

theorem valid_s0007 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (7 : State) label t gain ->
      gain + graphPotential t <= graphPotential (7 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0007 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0007] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (124 : State) <= graphPotential (7 : State)
    decide
  ·
    simp [graphSmokeNext_s0007, h_l0007] at h

theorem transition_ok_s0007 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (7 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (7 : State) := by
  intro h
  change graphSmokeNext_s0007 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0007] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (124 : State) <= graphPotential (7 : State)
      decide
  ·
    simp [graphSmokeNext_s0007, h_l0007] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 0 <= s) (hhi : s < 8) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0000 h
  · exact valid_s0001 h
  · exact valid_s0002 h
  · exact valid_s0003 h
  · exact valid_s0004 h
  · exact valid_s0005 h
  · exact valid_s0006 h
  · exact valid_s0007 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 0 <= s) (hhi : s < 8) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0000 h
  · exact transition_ok_s0001 h
  · exact transition_ok_s0002 h
  · exact transition_ok_s0003 h
  · exact transition_ok_s0004 h
  · exact transition_ok_s0005 h
  · exact transition_ok_s0006 h
  · exact transition_ok_s0007 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard000
