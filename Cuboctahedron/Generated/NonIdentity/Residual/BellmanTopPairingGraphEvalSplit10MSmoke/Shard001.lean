import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard001

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [8, 16). -/
theorem valid_s0008 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (8 : State) label t gain ->
      gain + graphPotential t <= graphPotential (8 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0008 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0008] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (126 : State) <= graphPotential (8 : State)
    decide
  ·
    simp [graphSmokeNext_s0008, h_l0007] at h

theorem transition_ok_s0008 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (8 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (8 : State) := by
  intro h
  change graphSmokeNext_s0008 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0008] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (126 : State) <= graphPotential (8 : State)
      decide
  ·
    simp [graphSmokeNext_s0008, h_l0007] at h

theorem valid_s0009 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (9 : State) label t gain ->
      gain + graphPotential t <= graphPotential (9 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0009 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0009] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (127 : State) <= graphPotential (9 : State)
    decide
  ·
    simp [graphSmokeNext_s0009, h_l0007] at h

theorem transition_ok_s0009 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (9 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (9 : State) := by
  intro h
  change graphSmokeNext_s0009 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0009] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (127 : State) <= graphPotential (9 : State)
      decide
  ·
    simp [graphSmokeNext_s0009, h_l0007] at h

theorem valid_s0010 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (10 : State) label t gain ->
      gain + graphPotential t <= graphPotential (10 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0010 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0010] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (128 : State) <= graphPotential (10 : State)
    decide
  ·
    simp [graphSmokeNext_s0010, h_l0007] at h

theorem transition_ok_s0010 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (10 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (10 : State) := by
  intro h
  change graphSmokeNext_s0010 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0010] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (128 : State) <= graphPotential (10 : State)
      decide
  ·
    simp [graphSmokeNext_s0010, h_l0007] at h

theorem valid_s0011 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (11 : State) label t gain ->
      gain + graphPotential t <= graphPotential (11 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0011 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0011] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (129 : State) <= graphPotential (11 : State)
    decide
  ·
    simp [graphSmokeNext_s0011, h_l0007] at h

theorem transition_ok_s0011 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (11 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (11 : State) := by
  intro h
  change graphSmokeNext_s0011 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0011] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (129 : State) <= graphPotential (11 : State)
      decide
  ·
    simp [graphSmokeNext_s0011, h_l0007] at h

theorem valid_s0012 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (12 : State) label t gain ->
      gain + graphPotential t <= graphPotential (12 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0012 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0012] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (130 : State) <= graphPotential (12 : State)
    decide
  ·
    simp [graphSmokeNext_s0012, h_l0007] at h

theorem transition_ok_s0012 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (12 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (12 : State) := by
  intro h
  change graphSmokeNext_s0012 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0012] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (130 : State) <= graphPotential (12 : State)
      decide
  ·
    simp [graphSmokeNext_s0012, h_l0007] at h

theorem valid_s0013 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (13 : State) label t gain ->
      gain + graphPotential t <= graphPotential (13 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0013 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0013] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (132 : State) <= graphPotential (13 : State)
    decide
  ·
    simp [graphSmokeNext_s0013, h_l0007] at h

theorem transition_ok_s0013 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (13 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (13 : State) := by
  intro h
  change graphSmokeNext_s0013 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0013] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (132 : State) <= graphPotential (13 : State)
      decide
  ·
    simp [graphSmokeNext_s0013, h_l0007] at h

theorem valid_s0014 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (14 : State) label t gain ->
      gain + graphPotential t <= graphPotential (14 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0014 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0014] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (133 : State) <= graphPotential (14 : State)
    decide
  ·
    simp [graphSmokeNext_s0014, h_l0007] at h

theorem transition_ok_s0014 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (14 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (14 : State) := by
  intro h
  change graphSmokeNext_s0014 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0014] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (133 : State) <= graphPotential (14 : State)
      decide
  ·
    simp [graphSmokeNext_s0014, h_l0007] at h

theorem valid_s0015 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (15 : State) label t gain ->
      gain + graphPotential t <= graphPotential (15 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0015 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0015] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (134 : State) <= graphPotential (15 : State)
    decide
  ·
    simp [graphSmokeNext_s0015, h_l0007] at h

theorem transition_ok_s0015 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (15 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (15 : State) := by
  intro h
  change graphSmokeNext_s0015 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0015] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (134 : State) <= graphPotential (15 : State)
      decide
  ·
    simp [graphSmokeNext_s0015, h_l0007] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 8 <= s) (hhi : s < 16) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0008 h
  · exact valid_s0009 h
  · exact valid_s0010 h
  · exact valid_s0011 h
  · exact valid_s0012 h
  · exact valid_s0013 h
  · exact valid_s0014 h
  · exact valid_s0015 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 8 <= s) (hhi : s < 16) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0008 h
  · exact transition_ok_s0009 h
  · exact transition_ok_s0010 h
  · exact transition_ok_s0011 h
  · exact transition_ok_s0012 h
  · exact transition_ok_s0013 h
  · exact transition_ok_s0014 h
  · exact transition_ok_s0015 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard001
